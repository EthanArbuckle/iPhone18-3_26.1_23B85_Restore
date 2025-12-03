@interface NLSessionActivityMachineDistanceAccumulator
- (void)update;
- (void)updateDistance:(double)distance distanceEndDate:(id)date;
@end

@implementation NLSessionActivityMachineDistanceAccumulator

- (void)updateDistance:(double)distance distanceEndDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  *&v15 = distance;
  location = 0;
  objc_storeStrong(&location, date);
  if (*(selfCopy + 3) <= *&v15)
  {
    distanceEndDate = [selfCopy distanceEndDate];
    v9 = 0;
    v7 = 0;
    if (distanceEndDate)
    {
      v5 = location;
      distanceEndDate2 = [selfCopy distanceEndDate];
      v9 = 1;
      v7 = [v5 hk_isBeforeDate:?];
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](distanceEndDate2);
    }

    MEMORY[0x277D82BD8](distanceEndDate);
    if (v7)
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        distanceEndDate3 = [selfCopy distanceEndDate];
        __os_log_helper_16_2_2_8_64_8_64(v18, distanceEndDate3, location);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Received distance update with distanceEndDate=%@ before existing distanceEndDate=%@, not updating", v18, 0x16u);
        MEMORY[0x277D82BD8](distanceEndDate3);
      }

      objc_storeStrong(&oslog, 0);
      v11 = 1;
    }

    else
    {
      [selfCopy setDistance:*&v15];
      [selfCopy setDistanceEndDate:location];
      [selfCopy update];
      v11 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v19, v15, selfCopy[3]);
      _os_log_impl(&dword_20AEA4000, v13, v12, "Received distance update (%f) less than known total distance (%f), catching up.", v19, 0x16u);
    }

    objc_storeStrong(&v13, 0);
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)update
{
  updateHandler = [(NLSessionActivityDataAccumulator *)self updateHandler];
  MEMORY[0x277D82BD8](updateHandler);
  if (updateHandler)
  {
    updateHandler2 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    updateHandler2[2]();
    MEMORY[0x277D82BD8](updateHandler2);
  }
}

@end