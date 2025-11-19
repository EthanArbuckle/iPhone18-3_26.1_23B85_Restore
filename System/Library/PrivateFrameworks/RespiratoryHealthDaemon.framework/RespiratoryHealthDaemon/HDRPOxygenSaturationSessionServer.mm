@interface HDRPOxygenSaturationSessionServer
+ (id)requiredEntitlements;
- (HDRPOxygenSaturationSessionServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_abortSensorSession;
- (void)_queue_abortWithCompletion:(id)a3;
- (void)_queue_notifyClientDidEndWithReason:(int64_t)a3 saturation:(id)a4 barometricPressure:(id)a5 averageHeartRate:(id)a6 averageHeartRateUUID:(id)a7 error:(id)a8;
- (void)_queue_notifyClientDidSendFeedback:(unint64_t)a3;
- (void)_queue_notifyClientDidStartWithStartTime:(double)a3 expectedDuration:(double)a4;
- (void)_queue_startWithCompletion:(id)a3;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)oxygenSaturationSession:(id)a3 didBeginWithStartTime:(double)a4 expectedDuration:(double)a5;
- (void)oxygenSaturationSession:(id)a3 didEndForReason:(unint64_t)a4 measurement:(id)a5;
- (void)oxygenSaturationSession:(id)a3 feedbackDidChange:(unint64_t)a4;
- (void)remote_abortWithCompletion:(id)a3;
- (void)remote_startWithCompletion:(id)a3;
@end

@implementation HDRPOxygenSaturationSessionServer

- (HDRPOxygenSaturationSessionServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v14.receiver = self;
  v14.super_class = HDRPOxygenSaturationSessionServer;
  v6 = [(HDStandardTaskServer *)&v14 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueueWithQOSClass();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [(HDStandardTaskServer *)v6 profile];
    v10 = [v9 respiratoryExtension];
    v11 = [v10 oxygenSaturationSessionWithDelegate:v6 queue:v6->_queue];
    sensorSession = v6->_sensorSession;
    v6->_sensorSession = v11;
  }

  return v6;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)connectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDRPOxygenSaturationSessionServer_connectionInvalidated__block_invoke;
  block[3] = &unk_279B0E280;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connectionInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDRPOxygenSaturationSessionServer_connectionInterrupted__block_invoke;
  block[3] = &unk_279B0E280;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)remote_startWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HDRPOxygenSaturationSessionServer_remote_startWithCompletion___block_invoke;
  v7[3] = &unk_279B0E368;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)remote_abortWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HDRPOxygenSaturationSessionServer_remote_abortWithCompletion___block_invoke;
  v7[3] = &unk_279B0E368;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_startWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_262086000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session start", buf, 0xCu);
  }

  sessionState = self->_sessionState;
  if (sessionState)
  {
    if (sessionState > 3)
    {
      v8 = @"Not Started";
    }

    else
    {
      v8 = off_279B0E3B0[sessionState - 1];
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Cannot start session in state: %@", v8}];
    v4[2](v4, 0, v9);
  }

  else
  {
    [(HLOxygenSaturationSession *)self->_sensorSession begin];
    self->_sessionState = 1;
    v4[2](v4, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_abortWithCompletion:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&dword_262086000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session abort", buf, 0xCu);
  }

  if (self->_sessionState)
  {
    [(HDRPOxygenSaturationSessionServer *)self _queue_abortSensorSession];
    self->_sessionState = 3;
    v4[2](v4, 1, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Cannot abort session in state: %@", @"Not Started"}];
    (v4)[2](v4, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_abortSensorSession
{
  dispatch_assert_queue_V2(self->_queue);
  [(HLOxygenSaturationSession *)self->_sensorSession abort];
  sensorSession = self->_sensorSession;
  self->_sensorSession = 0;
}

- (void)_queue_notifyClientDidSendFeedback:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HDRPOxygenSaturationSessionServer__queue_notifyClientDidSendFeedback___block_invoke;
  v6[3] = &unk_279B0E390;
  v6[4] = self;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v6];
  [v5 clientRemote_didSendFeedback:a3];
}

void __72__HDRPOxygenSaturationSessionServer__queue_notifyClientDidSendFeedback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__HDRPOxygenSaturationSessionServer__queue_notifyClientDidSendFeedback___block_invoke_cold_1(a1);
  }
}

- (void)_queue_notifyClientDidStartWithStartTime:(double)a3 expectedDuration:(double)a4
{
  dispatch_assert_queue_V2(self->_queue);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__HDRPOxygenSaturationSessionServer__queue_notifyClientDidStartWithStartTime_expectedDuration___block_invoke;
  v8[3] = &unk_279B0E390;
  v8[4] = self;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 clientRemote_didStartWithStartTime:a3 expectedDuration:a4];
}

void __95__HDRPOxygenSaturationSessionServer__queue_notifyClientDidStartWithStartTime_expectedDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__HDRPOxygenSaturationSessionServer__queue_notifyClientDidStartWithStartTime_expectedDuration___block_invoke_cold_1(a1);
  }
}

- (void)_queue_notifyClientDidEndWithReason:(int64_t)a3 saturation:(id)a4 barometricPressure:(id)a5 averageHeartRate:(id)a6 averageHeartRateUUID:(id)a7 error:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v28 = a7;
  v16 = a8;
  dispatch_assert_queue_V2(self->_queue);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __147__HDRPOxygenSaturationSessionServer__queue_notifyClientDidEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke;
  v30[3] = &unk_279B0E390;
  v30[4] = self;
  v17 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v30];
  if (v13)
  {
    v18 = MEMORY[0x277CCD7E8];
    v19 = [MEMORY[0x277CCDAB0] percentUnit];
    [v13 doubleValue];
    v21 = [v18 quantityWithUnit:v19 doubleValue:v20 / 100.0];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_8;
  }

  v21 = 0;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = MEMORY[0x277CCD7E8];
  v23 = [MEMORY[0x277CCDAB0] pascalUnitWithMetricPrefix:9];
  [v14 doubleValue];
  v24 = [v22 quantityWithUnit:v23 doubleValue:?];

  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_4:
  v25 = MEMORY[0x277CCD7E8];
  v26 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
  [v15 doubleValue];
  v27 = [v25 quantityWithUnit:v26 doubleValue:?];

LABEL_8:
  [v17 clientRemote_didEndWithReason:a3 saturation:v21 barometricPressure:v24 averageHeartRate:v27 averageHeartRateUUID:v28 error:v16];
}

void __147__HDRPOxygenSaturationSessionServer__queue_notifyClientDidEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __147__HDRPOxygenSaturationSessionServer__queue_notifyClientDidEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke_cold_1(a1);
  }
}

- (void)oxygenSaturationSession:(id)a3 didBeginWithStartTime:(double)a4 expectedDuration:(double)a5
{
  v24 = *MEMORY[0x277D85DE8];
  [(HDRPOxygenSaturationSessionServer *)self setStartTime:a3];
  [(HDRPOxygenSaturationSessionServer *)self setExpectedDuration:a5];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [v8 dateByAddingTimeInterval:-(CACurrentMediaTime() - a4)];
  v10 = [v9 dateByAddingTimeInterval:a5];
  [(HDRPOxygenSaturationSessionServer *)self setExpectedEndDate:v10];

  _HKInitializeLogging();
  v11 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [(HDRPOxygenSaturationSessionServer *)self expectedEndDate];
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v9;
    v20 = 2050;
    v21 = a5;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_262086000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session did begin with Start date: %{public}@, Duration: %{public}.1f sec, Expected end date: %{public}@", &v16, 0x2Au);
  }

  self->_sessionState = 2;
  [(HDRPOxygenSaturationSessionServer *)self _queue_notifyClientDidStartWithStartTime:a4 expectedDuration:a5];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)oxygenSaturationSession:(id)a3 feedbackDidChange:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  [(HDRPOxygenSaturationSessionServer *)self startTime];
  v7 = v6;
  [(HDRPOxygenSaturationSessionServer *)self expectedDuration];
  v9 = v8;
  v10 = CACurrentMediaTime();
  _HKInitializeLogging();
  v11 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 + v9 - v10 >= 0.0)
    {
      v12 = v7 + v9 - v10;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = objc_opt_class();
    if (a4)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = v14;
      if (a4)
      {
        [v14 addObject:@"Motion"];
      }

      if ((a4 & 2) != 0)
      {
        [v15 addObject:@"Posture"];
      }

      v16 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v15];
    }

    else
    {
      v16 = @"None";
    }

    v18 = 138543874;
    v19 = v13;
    v20 = 2114;
    v21 = v16;
    v22 = 2050;
    v23 = v12;
    _os_log_impl(&dword_262086000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session feedback did change: (%{public}@) at %{public}.1f sec", &v18, 0x20u);
  }

  [(HDRPOxygenSaturationSessionServer *)self _queue_notifyClientDidSendFeedback:a4 & 3];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)oxygenSaturationSession:(id)a3 didEndForReason:(unint64_t)a4 measurement:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a5;
  _HKInitializeLogging();
  v8 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    if (a4 - 1 > 4)
    {
      v10 = @"Success";
    }

    else
    {
      v10 = off_279B0E3C8[a4 - 1];
    }

    *v21 = 138543618;
    *&v21[4] = v9;
    *&v21[12] = 2114;
    *&v21[14] = v10;
    v11 = v9;
    _os_log_impl(&dword_262086000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session did end with reason: %{public}@", v21, 0x16u);
  }

  if (a4 > 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = qword_262090740[a4];
  }

  self->_sessionState = 3;
  v13 = [v7 oxygenSaturationPercentage];
  v14 = [v7 pressureInKilopascals];
  v15 = MEMORY[0x277CCABB0];
  v16 = [v7 averageHeartRateData];
  [v16 heartRate];
  v17 = [v15 numberWithDouble:?];
  v18 = [v7 averageHeartRateData];

  v19 = [v18 uuid];
  [(HDRPOxygenSaturationSessionServer *)self _queue_notifyClientDidEndWithReason:v12 saturation:v13 barometricPressure:v14 averageHeartRate:v17 averageHeartRateUUID:v19 error:0];

  v20 = *MEMORY[0x277D85DE8];
}

void __72__HDRPOxygenSaturationSessionServer__queue_notifyClientDidSendFeedback___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_262086000, v4, v5, "[%{public}@] Error notifying Oxygen Saturation Session client of feedback update: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __95__HDRPOxygenSaturationSessionServer__queue_notifyClientDidStartWithStartTime_expectedDuration___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_262086000, v4, v5, "[%{public}@] Error notifying Oxygen Saturation Session client of session start with expected end date: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __147__HDRPOxygenSaturationSessionServer__queue_notifyClientDidEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_262086000, v4, v5, "[%{public}@] Error notifying Oxygen Saturation Session client of session end: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end