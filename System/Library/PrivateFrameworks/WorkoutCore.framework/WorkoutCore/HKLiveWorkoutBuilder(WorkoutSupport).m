@interface HKLiveWorkoutBuilder(WorkoutSupport)
- (id)nl_currentActivityStartDate;
- (id)nl_dateForElapsedTime:()WorkoutSupport;
- (id)nl_lastUnbalancedPauseEvent;
@end

@implementation HKLiveWorkoutBuilder(WorkoutSupport)

- (id)nl_lastUnbalancedPauseEvent
{
  location[2] = a1;
  location[1] = a2;
  v5 = [a1 workoutEvents];
  v4 = [v5 nl_filteredArrayUsingBlock:&__block_literal_global_6];
  location[0] = [v4 lastObject];
  MEMORY[0x277D82BD8](v4);
  if ([location[0] type] == 1)
  {
    v7 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)nl_currentActivityStartDate
{
  v15 = a1;
  v14[1] = a2;
  v14[0] = 0;
  v10 = [a1 workoutConfiguration];
  v12 = 0;
  v11 = 0;
  if ([v10 activityType] == 82)
  {
    v13 = [v15 currentWorkoutActivity];
    v12 = 1;
    v11 = v13 != 0;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [v15 currentWorkoutActivity];
    v3 = [v9 startDate];
    v4 = v14[0];
    v14[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v5 = [v15 startDate];
    v6 = v14[0];
    v14[0] = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v8;
}

- (id)nl_dateForElapsedTime:()WorkoutSupport
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = [a1 nl_currentActivityStartDate];
  if (v41)
  {
    v22 = [v44 workoutEvents];
    v36 = [v22 nl_filteredArrayUsingBlock:&__block_literal_global_294_0];
    MEMORY[0x277D82BD8](v22);
    v35 = MEMORY[0x277D82BE0](v41);
    v34 = v42;
    v33 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v36);
    v24 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
    if (v24)
    {
      v19 = *__b[2];
      v20 = 0;
      v21 = v24;
      while (1)
      {
        v18 = v20;
        if (*__b[2] != v19)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(__b[1] + 8 * v20);
        if (v33)
        {
          if ([v32 type] == 2)
          {
            v17 = [v32 dateInterval];
            v3 = [v17 startDate];
            v4 = v35;
            v35 = v3;
            MEMORY[0x277D82BD8](v4);
            MEMORY[0x277D82BD8](v17);
            v33 = 0;
          }

          else
          {
            _HKInitializeLogging();
            oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
            v29 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v15 = oslog;
              v16 = v29;
              __os_log_helper_16_0_1_4_0(v47, [v32 type]);
              _os_log_error_impl(&dword_20AEA4000, v15, v16, "Expected a resume event but got %d", v47, 8u);
            }

            objc_storeStrong(&oslog, 0);
          }
        }

        else
        {
          v13 = [v32 dateInterval];
          v12 = [v13 startDate];
          [v12 timeIntervalSinceDate:v35];
          v14 = v5;
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v13);
          v28 = v14;
          if (v14 >= v34)
          {
            v37 = 4;
            goto LABEL_25;
          }

          v11 = [v32 dateInterval];
          v6 = [v11 startDate];
          v7 = v35;
          v35 = v6;
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v11);
          v34 = v34 - v28;
          if ([v32 type] == 1)
          {
            v33 = 1;
          }

          else
          {
            _HKInitializeLogging();
            v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v10 = v27;
              __os_log_helper_16_0_1_4_0(v46, [v32 type]);
              _os_log_error_impl(&dword_20AEA4000, v10, OS_LOG_TYPE_ERROR, "Expected a pause event but got %d", v46, 8u);
            }

            objc_storeStrong(&v27, 0);
          }
        }

        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
          if (!v21)
          {
            break;
          }
        }
      }
    }

    v37 = 0;
LABEL_25:
    MEMORY[0x277D82BD8](obj);
    v45 = [v35 dateByAddingTimeInterval:v34];
    v37 = 1;
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v39 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_error_impl(&dword_20AEA4000, log, type, "Tried to get dateForElapsedTime but collection has not started yet. Returning 'now'.", v38, 2u);
    }

    objc_storeStrong(&location, 0);
    v45 = [MEMORY[0x277CBEAA8] date];
    v37 = 1;
  }

  objc_storeStrong(&v41, 0);
  *MEMORY[0x277D85DE8];
  v8 = v45;

  return v8;
}

@end