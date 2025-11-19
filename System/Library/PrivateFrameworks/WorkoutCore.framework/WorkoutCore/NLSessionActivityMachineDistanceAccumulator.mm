@interface NLSessionActivityMachineDistanceAccumulator
- (void)update;
- (void)updateDistance:(double)a3 distanceEndDate:(id)a4;
@end

@implementation NLSessionActivityMachineDistanceAccumulator

- (void)updateDistance:(double)a3 distanceEndDate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  *&v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (*(v17 + 3) <= *&v15)
  {
    v6 = [v17 distanceEndDate];
    v9 = 0;
    v7 = 0;
    if (v6)
    {
      v5 = location;
      v10 = [v17 distanceEndDate];
      v9 = 1;
      v7 = [v5 hk_isBeforeDate:?];
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [v17 distanceEndDate];
        __os_log_helper_16_2_2_8_64_8_64(v18, v4, location);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Received distance update with distanceEndDate=%@ before existing distanceEndDate=%@, not updating", v18, 0x16u);
        MEMORY[0x277D82BD8](v4);
      }

      objc_storeStrong(&oslog, 0);
      v11 = 1;
    }

    else
    {
      [v17 setDistance:*&v15];
      [v17 setDistanceEndDate:location];
      [v17 update];
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
      __os_log_helper_16_0_2_8_0_8_0(v19, v15, v17[3]);
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
  v3 = [(NLSessionActivityDataAccumulator *)self updateHandler];
  MEMORY[0x277D82BD8](v3);
  if (v3)
  {
    v2 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    v2[2]();
    MEMORY[0x277D82BD8](v2);
  }
}

@end