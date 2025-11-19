@interface SBDeviceStationaryMotionDetector
+ (int64_t)stateFromTimeSinceLastStationary:(double)a3 timeSinceLastNonStationary:(double)a4 stationaryThreshold:(double)a5 pickUpBuffer:(double)a6;
- (SBDeviceStationaryMotionDetector)init;
- (void)queryWithStationaryThresholdTime:(double)a3 pickUpBufferTime:(double)a4 callbackOnMainQueue:(id)a5;
@end

@implementation SBDeviceStationaryMotionDetector

- (SBDeviceStationaryMotionDetector)init
{
  v6.receiver = self;
  v6.super_class = SBDeviceStationaryMotionDetector;
  v2 = [(SBDeviceStationaryMotionDetector *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    activityManager = v2->_activityManager;
    v2->_activityManager = v3;
  }

  return v2;
}

- (void)queryWithStationaryThresholdTime:(double)a3 pickUpBufferTime:(double)a4 callbackOnMainQueue:(id)a5
{
  v9 = a5;
  if (a3 <= 0.0)
  {
    [SBDeviceStationaryMotionDetector queryWithStationaryThresholdTime:a2 pickUpBufferTime:self callbackOnMainQueue:?];
  }

  if (a4 <= 0.0)
  {
    [SBDeviceStationaryMotionDetector queryWithStationaryThresholdTime:a2 pickUpBufferTime:self callbackOnMainQueue:?];
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    [SBDeviceStationaryMotionDetector queryWithStationaryThresholdTime:a2 pickUpBufferTime:self callbackOnMainQueue:?];
    goto LABEL_5;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v10 dateByAddingTimeInterval:-(a3 + a4 + 1.0)];
  activityManager = self->_activityManager;
  v13 = [MEMORY[0x277CCABD8] mainQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__SBDeviceStationaryMotionDetector_queryWithStationaryThresholdTime_pickUpBufferTime_callbackOnMainQueue___block_invoke;
  v16[3] = &unk_2783B0BA0;
  v19 = a3;
  v20 = a4;
  v17 = v10;
  v18 = v9;
  v14 = v9;
  v15 = v10;
  [(CMMotionActivityManager *)activityManager queryActivityStartingFromDate:v11 toDate:v15 toQueue:v13 withHandler:v16];
}

void __106__SBDeviceStationaryMotionDetector_queryWithStationaryThresholdTime_pickUpBufferTime_callbackOnMainQueue___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSince1970];
  v6 = v5;
  [*(a1 + 32) timeIntervalSince1970];
  v8 = v7;

  v9 = SBLogStationaryMotionDetector();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v6 - v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "CMMotionActivityManager responded in %0.2f seconds.", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v3;
  v10 = [v3 reverseObjectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    v14 = 1.79769313e308;
    v15 = 1.79769313e308;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v28 + 1) + 8 * v16);
      v18 = SBLogStationaryMotionDetector();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = *&v17;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Processing Activity %{public}@", buf, 0xCu);
      }

      if (v15 != 1.79769313e308 && v14 != 1.79769313e308)
      {
        break;
      }

      [*(a1 + 32) timeIntervalSince1970];
      v20 = v19;
      v21 = [(__CFString *)v17 startDate];
      [v21 timeIntervalSince1970];
      v23 = v20 - v22;

      if (([(__CFString *)v17 stationary]& 1) != 0 || v14 != 1.79769313e308)
      {
        if (([(__CFString *)v17 stationary]& (v15 == 1.79769313e308)) != 0)
        {
          v15 = v23;
        }
      }

      else
      {
        v14 = v23;
      }

      if (v12 == ++v16)
      {
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 1.79769313e308;
    v15 = 1.79769313e308;
  }

  v24 = [SBDeviceStationaryMotionDetector stateFromTimeSinceLastStationary:v15 timeSinceLastNonStationary:v14 stationaryThreshold:*(a1 + 48) pickUpBuffer:*(a1 + 56)];
  v25 = SBLogStationaryMotionDetector();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (v24 > 2)
    {
      *&v26 = COERCE_DOUBLE(@"No Description");
    }

    else
    {
      v26 = off_2783B0BC0[v24];
    }

    *buf = 138543362;
    v34 = *&v26;
    _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Resolved state %{public}@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))(v15, v14);
}

+ (int64_t)stateFromTimeSinceLastStationary:(double)a3 timeSinceLastNonStationary:(double)a4 stationaryThreshold:(double)a5 pickUpBuffer:(double)a6
{
  if (a3 == a4)
  {
    return 0;
  }

  if (a4 <= a6)
  {
    return 1;
  }

  if (a3 >= a5 && a3 < a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)queryWithStationaryThresholdTime:(uint64_t)a1 pickUpBufferTime:(uint64_t)a2 callbackOnMainQueue:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceStationaryMotionDetector.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"stationaryThreshold > 0"}];
}

- (void)queryWithStationaryThresholdTime:(uint64_t)a1 pickUpBufferTime:(uint64_t)a2 callbackOnMainQueue:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceStationaryMotionDetector.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"pickUpBufferTime > 0"}];
}

- (void)queryWithStationaryThresholdTime:(uint64_t)a1 pickUpBufferTime:(uint64_t)a2 callbackOnMainQueue:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceStationaryMotionDetector.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"callback != nil"}];
}

@end