@interface HDSPCDInBedDetector
+ (double)hoursOfSleepForResult:(id)a3;
+ (id)inBedDetector;
- (id)detectInBedTimesDuringInterval:(id)a3;
@end

@implementation HDSPCDInBedDetector

+ (id)inBedDetector
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (double)hoursOfSleepForResult:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) duration];
        v7 = v7 + v9 / 3600.0;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)detectInBedTimesDuringInterval:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFE0A0];
  v4 = a3;
  v5 = [v3 inBedDetector];
  v6 = [v4 startDate];
  v7 = [v4 endDate];

  v19 = 0;
  v8 = [v5 detectInBedBetweenBedtimeDate:v6 wakupDate:v7 error:&v19];
  v9 = v19;

  v10 = [v8 hk_map:&__block_literal_global_10];
  if (v9)
  {
    v11 = [MEMORY[0x277D2C900] futureWithError:v9];
  }

  else
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      [objc_opt_class() hoursOfSleepForResult:v10];
      *buf = 138543618;
      v21 = v13;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] calculated time in bed hours: %f", buf, 0x16u);
    }

    v11 = [MEMORY[0x277D2C900] futureWithResult:v10];
  }

  v16 = v11;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __54__HDSPCDInBedDetector_detectInBedTimesDuringInterval___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA970];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 startDate];
  v6 = [v3 endDate];

  v7 = [v4 initWithStartDate:v5 endDate:v6];

  return v7;
}

@end