@interface PowerUISleepBasedPredictor
+ (BOOL)shouldUseSleepPredictorWithLog:(id)a3;
- (PowerUISleepBasedPredictor)initWithLog:(id)a3;
- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)a3;
@end

@implementation PowerUISleepBasedPredictor

- (PowerUISleepBasedPredictor)initWithLog:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PowerUISleepBasedPredictor;
  v6 = [(PowerUISleepBasedPredictor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
  }

  return v7;
}

- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"com.apple.das.smartcharging"];
  v5 = [v4 currentSleepScheduleWithError:0];
  if (v5)
  {
    v6 = [v4 currentSleepScheduleStateWithError:0];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v4 nextEventDueAfterDate:v7 error:0];

    if (v6 == 3)
    {
      v9 = [v8 dueDate];
      [v9 timeIntervalSinceNow];
      v11 = v10;

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134217984;
        v24 = v11;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Currently in winddown, offset until sleep starts: %f", &v23, 0xCu);
      }

      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
      v14 = [v4 nextEventDueAfterDate:v13 error:0];

      v8 = v14;
    }

    v15 = [v8 dueDate];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 dateByAddingTimeInterval:-1800.0];
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = *&v16;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Wake up time set to: %@ - Target (adjusted) deadline: %@", &v23, 0x16u);
      }
    }

    else
    {
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [PowerUISleepBasedPredictor predictFullChargeDateWithBatteryLevel:v20];
      }

      v17 = [MEMORY[0x277CBEAA8] distantPast];
    }
  }

  else
  {
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [PowerUISleepBasedPredictor predictFullChargeDateWithBatteryLevel:v19];
    }

    v17 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (BOOL)shouldUseSleepPredictorWithLog:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"com.apple.das.smartcharging"];
  v15 = 0;
  v5 = [v4 currentSleepScheduleWithError:&v15];
  v6 = v15;
  if (!v5)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      v10 = "No sleep schedule found, use regular model. Error: %@";
      v11 = v3;
      v12 = 12;
LABEL_9:
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [v4 currentSleepScheduleStateWithError:0] & 0xFFFFFFFFFFFFFFFELL;
  v8 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v7 != 2)
  {
    if (v8)
    {
      *buf = 0;
      v10 = "Not in winddown or sleep schedule, use regular model.";
      v11 = v3;
      v12 = 2;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v8)
  {
    *buf = 0;
    v9 = 1;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_INFO, "In winddown or sleep schedule, use sleep schedule for OBC.", buf, 2u);
  }

  else
  {
    v9 = 1;
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

@end