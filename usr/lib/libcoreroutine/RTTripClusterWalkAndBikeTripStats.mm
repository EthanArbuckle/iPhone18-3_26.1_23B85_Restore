@interface RTTripClusterWalkAndBikeTripStats
- (BOOL)hasValidData;
- (RTTripClusterWalkAndBikeTripStats)init;
- (int64_t)transportModeAfterDrive;
- (int64_t)transportModeBeforeDrive;
- (int64_t)transportModeNoDrive;
- (void)updateWalkAndBikeStats:(id)stats isTripSegmentBeforeDriving:(BOOL)driving;
@end

@implementation RTTripClusterWalkAndBikeTripStats

- (RTTripClusterWalkAndBikeTripStats)init
{
  v3.receiver = self;
  v3.super_class = RTTripClusterWalkAndBikeTripStats;
  result = [(RTTripClusterWalkAndBikeTripStats *)&v3 init];
  if (result)
  {
    *&result->_isWalkSegmentBeforeDrivePresent = 0;
    *&result->_walkTimeDurationBeforeDrive_sec = 0u;
    *&result->_bikeTimeDurationBeforeDrive_sec = 0u;
    *&result->_walkDistanceBeforeDrive_m = 0u;
    *&result->_bikeDistanceBeforeDrive_m = 0u;
  }

  return result;
}

- (void)updateWalkAndBikeStats:(id)stats isTripSegmentBeforeDriving:(BOOL)driving
{
  drivingCopy = driving;
  v23 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if (!statsCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[RTTripClusterWalkAndBikeTripStats updateWalkAndBikeStats:isTripSegmentBeforeDriving:]";
      v21 = 1024;
      LODWORD(v22) = 39;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegment (in %s:%d)", &v19, 0x12u);
    }
  }

  if ([statsCopy modeOfTransportation] == 1 || objc_msgSend(statsCopy, "modeOfTransportation") == 3)
  {
    dateInterval = [statsCopy dateInterval];
    [dateInterval duration];
    v10 = v9;

    if ([statsCopy modeOfTransportation] == 1)
    {
      if (drivingCopy)
      {
        self->_isWalkSegmentBeforeDrivePresent = 1;
        self->_walkTimeDurationBeforeDrive_sec = v10 + self->_walkTimeDurationBeforeDrive_sec;
        [statsCopy tripDistance];
        self->_walkDistanceBeforeDrive_m = v11 + self->_walkDistanceBeforeDrive_m;
      }

      else
      {
        self->_isWalkSegmentAfterDrivePresent = 1;
        self->_walkTimeDurationAfterDrive_sec = v10 + self->_walkTimeDurationAfterDrive_sec;
        [statsCopy tripDistance];
        self->_walkDistanceAfterDrive_m = v13 + self->_walkDistanceAfterDrive_m;
      }
    }

    else if ([statsCopy modeOfTransportation] == 3)
    {
      if (drivingCopy)
      {
        self->_isBikeSegmentBeforeDrivePresent = 1;
        self->_bikeTimeDurationBeforeDrive_sec = v10 + self->_bikeTimeDurationBeforeDrive_sec;
        [statsCopy tripDistance];
        self->_bikeDistanceBeforeDrive_m = v12 + self->_bikeDistanceBeforeDrive_m;
      }

      else
      {
        self->_isBikeSegmentAfterDrivePresent = 1;
        self->_bikeTimeDurationAfterDrive_sec = v10 + self->_bikeTimeDurationAfterDrive_sec;
        [statsCopy tripDistance];
        self->_bikeDistanceAfterDrive_m = v18 + self->_bikeDistanceAfterDrive_m;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        modeOfTransportation = [statsCopy modeOfTransportation];
        v19 = 138412546;
        v20 = v16;
        v21 = 2048;
        v22 = modeOfTransportation;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Warning,unsupported transport mode,%ld,ignoring", &v19, 0x16u);
      }
    }
  }
}

- (BOOL)hasValidData
{
  if ([(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentBeforeDrivePresent]|| [(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentAfterDrivePresent]|| [(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentBeforeDrivePresent])
  {
    return 1;
  }

  return [(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentAfterDrivePresent];
}

- (int64_t)transportModeBeforeDrive
{
  if ([(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentBeforeDrivePresent]&& [(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentBeforeDrivePresent])
  {
    [(RTTripClusterWalkAndBikeTripStats *)self walkTimeDurationBeforeDrive_sec];
    v4 = v3;
    [(RTTripClusterWalkAndBikeTripStats *)self bikeTimeDurationBeforeDrive_sec];
    if (v4 > v5)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if ([(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentBeforeDrivePresent])
  {
    return 3;
  }

  else
  {
    return [(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentBeforeDrivePresent];
  }
}

- (int64_t)transportModeAfterDrive
{
  if ([(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentAfterDrivePresent]&& [(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentAfterDrivePresent])
  {
    [(RTTripClusterWalkAndBikeTripStats *)self walkTimeDurationAfterDrive_sec];
    v4 = v3;
    [(RTTripClusterWalkAndBikeTripStats *)self bikeTimeDurationAfterDrive_sec];
    if (v4 > v5)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if ([(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentAfterDrivePresent])
  {
    return 3;
  }

  else
  {
    return [(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentAfterDrivePresent];
  }
}

- (int64_t)transportModeNoDrive
{
  v9 = *MEMORY[0x277D85DE8];
  if (([(RTTripClusterWalkAndBikeTripStats *)self isWalkSegmentAfterDrivePresent]|| [(RTTripClusterWalkAndBikeTripStats *)self isBikeSegmentAfterDrivePresent]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@,Warning, non-driving mode has after drive stats present, ignoring...", &v7, 0xCu);
    }
  }

  return [(RTTripClusterWalkAndBikeTripStats *)self transportModeBeforeDrive];
}

@end