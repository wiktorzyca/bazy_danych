-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 01:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bands`
--

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE `band` (
  `id_band` int(11) NOT NULL,
  `name_band` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `found_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `musician`
--

CREATE TABLE `musician` (
  `id_musician` int(11) NOT NULL,
  `name_musician` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `surname_musician` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `id_band` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `musician_band`
--

CREATE TABLE `musician_band` (
  `musician_band_id` int(11) NOT NULL,
  `id_musician` int(11) NOT NULL,
  `id_band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`id_band`);

--
-- Indexes for table `musician`
--
ALTER TABLE `musician`
  ADD PRIMARY KEY (`id_musician`);

--
-- Indexes for table `musician_band`
--
ALTER TABLE `musician_band`
  ADD PRIMARY KEY (`musician_band_id`),
  ADD KEY `id_band` (`id_band`),
  ADD KEY `id_musician` (`id_musician`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `band`
--
ALTER TABLE `band`
  MODIFY `id_band` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `musician`
--
ALTER TABLE `musician`
  MODIFY `id_musician` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `musician_band`
--
ALTER TABLE `musician_band`
  MODIFY `musician_band_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `musician_band`
--
ALTER TABLE `musician_band`
  ADD CONSTRAINT `musician_band_ibfk_1` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_band`),
  ADD CONSTRAINT `musician_band_ibfk_2` FOREIGN KEY (`id_musician`) REFERENCES `musician` (`id_musician`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
