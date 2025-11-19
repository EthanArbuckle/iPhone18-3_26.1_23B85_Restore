@interface PowerUIBatteryData
+ (id)batteryLevelByTimeSlot:(unint64_t)a3 dayType:(unint64_t)a4;
+ (id)log;
+ (id)sharedInstance;
- (PowerUIBatteryData)init;
- (id)medianBatteryLevelByTimeSlot:(unint64_t)a3 dayType:(unint64_t)a4;
- (id)midnightDateFrom:(id)a3;
@end

@implementation PowerUIBatteryData

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PowerUIBatteryData_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __36__PowerUIBatteryData_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PowerUIBatteryData)init
{
  v10.receiver = self;
  v10.super_class = PowerUIBatteryData;
  v2 = [(PowerUIBatteryData *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    dateToWeekdayMedian = v2->_dateToWeekdayMedian;
    v2->_dateToWeekdayMedian = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    dateToWeekendMedian = v2->_dateToWeekendMedian;
    v2->_dateToWeekendMedian = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    yesterdayReference = v2->_yesterdayReference;
    v2->_yesterdayReference = v7;
  }

  return v2;
}

+ (id)log
{
  v2 = log_log_2;
  if (!log_log_2)
  {
    v3 = os_log_create("com.apple.powerui", "batteryData");
    v4 = log_log_2;
    log_log_2 = v3;

    v2 = log_log_2;
  }

  return v2;
}

- (id)medianBatteryLevelByTimeSlot:(unint64_t)a3 dayType:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = v8;
  if (a4 == 2)
  {
    v11 = 16;
    v10 = [v8 dateBySettingUnit:16 value:2 ofDate:v7 options:4];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v10 = [(PowerUIBatteryData *)self midnightDateFrom:v7];
    v11 = 8;
LABEL_5:
    v12 = *(&self->super.isa + v11);
    goto LABEL_7;
  }

  v10 = 0;
  v12 = 0;
LABEL_7:
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:v10];
  }

  else
  {
    v15 = [PowerUIBatteryData batteryLevelByTimeSlot:a3 dayType:a4];
    v14 = [MEMORY[0x277CBEB18] array];
    if ([v15 count])
    {
      v16 = 0;
      do
      {
        v17 = [v15 objectAtIndexedSubscript:v16];
        v18 = MEMORY[0x277CCABB0];
        [v17 percentile:0.5];
        v19 = [v18 numberWithDouble:?];
        [v14 setObject:v19 atIndexedSubscript:v16];

        ++v16;
      }

      while ([v15 count] > v16);
    }

    if ([v14 count])
    {
      v20 = 0;
      while (1)
      {
        v21 = [v14 objectAtIndexedSubscript:v20];
        v22 = [v21 integerValue];

        if (v22)
        {
          break;
        }

        if ([v14 count] <= ++v20)
        {
          goto LABEL_18;
        }
      }

      v23 = [v14 copy];
      [v12 setObject:v23 forKeyedSubscript:v10];
    }

LABEL_18:
  }

  return v14;
}

- (id)midnightDateFrom:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:540 fromDate:v4];

  v7 = [v5 dateFromComponents:v6];

  return v7;
}

+ (id)batteryLevelByTimeSlot:(unint64_t)a3 dayType:(unint64_t)a4
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__4;
  v42 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (a3 <= 0x5A0)
  {
    v8 = 0;
    do
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [v38[5] addObject:v9];

      ++v8;
    }

    while (0x5A0 / a3 > v8);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__4;
  v35[4] = __Block_byref_object_dispose__4;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__4;
  v33[4] = __Block_byref_object_dispose__4;
  v34 = [MEMORY[0x277CBEB18] array];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = -1;
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = BiomeLibrary();
  v12 = [v11 Device];
  v13 = [v12 Power];
  v14 = [v13 BatteryLevel];
  v15 = [v14 publisher];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke;
  v31[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
  v31[4] = a1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10;
  v21[3] = &unk_2782D48B0;
  v27 = a1;
  v16 = v10;
  v22 = v16;
  v23 = v35;
  v24 = v33;
  v25 = v32;
  v28 = a4;
  v29 = a3;
  v26 = &v37;
  v30 = 0x5A0 / a3;
  v17 = [v15 sinkWithCompletion:v31 receiveInput:v21];

  v18 = v38[5];
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);

  return v18;
}

void __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_cold_1(v3);
    }
  }
}

void __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 eventBody];
  [v5 batteryPercentage];
  v7 = v6;

  if (v7 < 0x65)
  {
    v9 = MEMORY[0x277CBEAA8];
    [v4 timestamp];
    v8 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v10 = [*(a1 + 32) components:540 fromDate:v8];
    if (!*(a1 + 80))
    {
      goto LABEL_8;
    }

    v11 = [PowerUISmartChargeUtilities isWeekend:v8];
    v12 = 1;
    if (!v11)
    {
      v12 = 2;
    }

    if (*(a1 + 80) != v12)
    {
LABEL_8:
      v13 = [*(a1 + 32) dateFromComponents:v10];
      [v8 timeIntervalSinceDate:v13];
      v15 = (v14 / (60 * *(a1 + 88)));
      v16 = [*(a1 + 72) log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10_cold_1();
      }

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        v46 = v13;
        if (*(*(*(a1 + 56) + 8) + 24) != v15)
        {
          v17 = *(*(*(a1 + 64) + 8) + 40);
          if (v17)
          {
            v18 = [v17 objectAtIndexedSubscript:?];

            if (!v18)
            {
              v19 = [MEMORY[0x277CBEB18] array];
              [*(*(*(a1 + 64) + 8) + 40) setObject:v19 atIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
            }
          }

          [*(*(*(a1 + 48) + 8) + 40) median];
          v21 = v20;
          v22 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
          [v22 addObject:v23];

          v24 = [*(a1 + 72) log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10_cold_2();
          }

          [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
          v25 = *(*(*(a1 + 56) + 8) + 24);
          v26 = v15 - v25;
          if (v15 < v25)
          {
            v26 += *(a1 + 96);
          }

          if (v26 != 1)
          {
            v27 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
            [v27 batteryPercentage];
            v29 = v28;

            v31 = *(*(*(a1 + 56) + 8) + 24) + 1;
            if (v31 < v15)
            {
              v32 = (v7 - v29) / v26;
              *&v30 = 134218240;
              v45 = v30;
              do
              {
                v33 = v31 % *(a1 + 96);
                v34 = *(*(*(a1 + 64) + 8) + 40);
                if (v34)
                {
                  v35 = [v34 objectAtIndexedSubscript:v33];

                  if (!v35)
                  {
                    v36 = [MEMORY[0x277CBEB18] array];
                    [*(*(*(a1 + 64) + 8) + 40) setObject:v36 atIndexedSubscript:v33];
                  }
                }

                v37 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:{v33, v45}];
                v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
                [v37 addObject:v38];

                v39 = [*(a1 + 72) log];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v45;
                  v48 = v15;
                  v49 = 2048;
                  v50 = v7;
                  _os_log_debug_impl(&dword_21B766000, v39, OS_LOG_TYPE_DEBUG, "Added Slot %ld, battery level %ld", buf, 0x16u);
                }

                v29 = v32 + v29;
                ++v31;
              }

              while (v15 != v31);
            }
          }
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *(*(*(a1 + 56) + 8) + 24) = v15;
        v40 = *(*(*(a1 + 48) + 8) + 40);
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
        [v40 addObject:v41];

        v13 = v46;
      }

      else
      {
        v42 = *(*(*(a1 + 48) + 8) + 40);
        v43 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
        [v42 addObject:v43];

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *(*(*(a1 + 56) + 8) + 24) = v15;
      }
    }
  }

  else
  {
    v8 = [*(a1 + 72) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10_cold_3(v7);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting battery stream in batteryLevelDurations: %s", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_21B766000, v0, v1, "Slot %ld, battery level %ld", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_21B766000, v0, v1, "Added Slot %ld, battery level %ld", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__PowerUIBatteryData_batteryLevelByTimeSlot_dayType___block_invoke_10_cold_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v2, v3, "Skipping battery level %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end