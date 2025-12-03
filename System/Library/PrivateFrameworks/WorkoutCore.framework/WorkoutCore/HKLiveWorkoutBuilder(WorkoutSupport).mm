@interface HKLiveWorkoutBuilder(WorkoutSupport)
- (id)nl_currentActivityStartDate;
- (id)nl_dateForElapsedTime:()WorkoutSupport;
- (id)nl_lastUnbalancedPauseEvent;
@end

@implementation HKLiveWorkoutBuilder(WorkoutSupport)

- (id)nl_lastUnbalancedPauseEvent
{
  location[2] = self;
  location[1] = a2;
  workoutEvents = [self workoutEvents];
  v4 = [workoutEvents nl_filteredArrayUsingBlock:&__block_literal_global_6];
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
  selfCopy = self;
  v14[1] = a2;
  v14[0] = 0;
  workoutConfiguration = [self workoutConfiguration];
  v12 = 0;
  v11 = 0;
  if ([workoutConfiguration activityType] == 82)
  {
    currentWorkoutActivity = [selfCopy currentWorkoutActivity];
    v12 = 1;
    v11 = currentWorkoutActivity != 0;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](currentWorkoutActivity);
  }

  *&v2 = MEMORY[0x277D82BD8](workoutConfiguration).n128_u64[0];
  if (v11)
  {
    currentWorkoutActivity2 = [selfCopy currentWorkoutActivity];
    startDate = [currentWorkoutActivity2 startDate];
    v4 = v14[0];
    v14[0] = startDate;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](currentWorkoutActivity2);
  }

  else
  {
    startDate2 = [selfCopy startDate];
    v6 = v14[0];
    v14[0] = startDate2;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v8;
}

- (id)nl_dateForElapsedTime:()WorkoutSupport
{
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v43 = a2;
  v42 = a3;
  nl_currentActivityStartDate = [self nl_currentActivityStartDate];
  if (nl_currentActivityStartDate)
  {
    workoutEvents = [selfCopy workoutEvents];
    v36 = [workoutEvents nl_filteredArrayUsingBlock:&__block_literal_global_294_0];
    MEMORY[0x277D82BD8](workoutEvents);
    v35 = MEMORY[0x277D82BE0](nl_currentActivityStartDate);
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
            dateInterval = [v32 dateInterval];
            startDate = [dateInterval startDate];
            v4 = v35;
            v35 = startDate;
            MEMORY[0x277D82BD8](v4);
            MEMORY[0x277D82BD8](dateInterval);
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
          dateInterval2 = [v32 dateInterval];
          startDate2 = [dateInterval2 startDate];
          [startDate2 timeIntervalSinceDate:v35];
          v14 = v5;
          MEMORY[0x277D82BD8](startDate2);
          MEMORY[0x277D82BD8](dateInterval2);
          v28 = v14;
          if (v14 >= v34)
          {
            v37 = 4;
            goto LABEL_25;
          }

          dateInterval3 = [v32 dateInterval];
          startDate3 = [dateInterval3 startDate];
          v7 = v35;
          v35 = startDate3;
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](dateInterval3);
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
    date = [v35 dateByAddingTimeInterval:v34];
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
    date = [MEMORY[0x277CBEAA8] date];
    v37 = 1;
  }

  objc_storeStrong(&nl_currentActivityStartDate, 0);
  *MEMORY[0x277D85DE8];
  v8 = date;

  return v8;
}

@end