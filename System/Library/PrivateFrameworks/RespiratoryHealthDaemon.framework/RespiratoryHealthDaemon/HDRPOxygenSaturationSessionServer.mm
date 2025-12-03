@interface HDRPOxygenSaturationSessionServer
+ (id)requiredEntitlements;
- (HDRPOxygenSaturationSessionServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_abortSensorSession;
- (void)_queue_abortWithCompletion:(id)completion;
- (void)_queue_notifyClientDidEndWithReason:(int64_t)reason saturation:(id)saturation barometricPressure:(id)pressure averageHeartRate:(id)rate averageHeartRateUUID:(id)d error:(id)error;
- (void)_queue_notifyClientDidSendFeedback:(unint64_t)feedback;
- (void)_queue_notifyClientDidStartWithStartTime:(double)time expectedDuration:(double)duration;
- (void)_queue_startWithCompletion:(id)completion;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)oxygenSaturationSession:(id)session didBeginWithStartTime:(double)time expectedDuration:(double)duration;
- (void)oxygenSaturationSession:(id)session didEndForReason:(unint64_t)reason measurement:(id)measurement;
- (void)oxygenSaturationSession:(id)session feedbackDidChange:(unint64_t)change;
- (void)remote_abortWithCompletion:(id)completion;
- (void)remote_startWithCompletion:(id)completion;
@end

@implementation HDRPOxygenSaturationSessionServer

- (HDRPOxygenSaturationSessionServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v14.receiver = self;
  v14.super_class = HDRPOxygenSaturationSessionServer;
  v6 = [(HDStandardTaskServer *)&v14 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueueWithQOSClass();
    queue = v6->_queue;
    v6->_queue = v7;

    profile = [(HDStandardTaskServer *)v6 profile];
    respiratoryExtension = [profile respiratoryExtension];
    v11 = [respiratoryExtension oxygenSaturationSessionWithDelegate:v6 queue:v6->_queue];
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

- (void)remote_startWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HDRPOxygenSaturationSessionServer_remote_startWithCompletion___block_invoke;
  v7[3] = &unk_279B0E368;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)remote_abortWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HDRPOxygenSaturationSessionServer_remote_abortWithCompletion___block_invoke;
  v7[3] = &unk_279B0E368;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_startWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    [(HLOxygenSaturationSession *)self->_sensorSession begin];
    self->_sessionState = 1;
    completionCopy[2](completionCopy, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_abortWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Cannot abort session in state: %@", @"Not Started"}];
    (completionCopy)[2](completionCopy, 0, v7);
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

- (void)_queue_notifyClientDidSendFeedback:(unint64_t)feedback
{
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HDRPOxygenSaturationSessionServer__queue_notifyClientDidSendFeedback___block_invoke;
  v6[3] = &unk_279B0E390;
  v6[4] = self;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v6];
  [v5 clientRemote_didSendFeedback:feedback];
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

- (void)_queue_notifyClientDidStartWithStartTime:(double)time expectedDuration:(double)duration
{
  dispatch_assert_queue_V2(self->_queue);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__HDRPOxygenSaturationSessionServer__queue_notifyClientDidStartWithStartTime_expectedDuration___block_invoke;
  v8[3] = &unk_279B0E390;
  v8[4] = self;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 clientRemote_didStartWithStartTime:time expectedDuration:duration];
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

- (void)_queue_notifyClientDidEndWithReason:(int64_t)reason saturation:(id)saturation barometricPressure:(id)pressure averageHeartRate:(id)rate averageHeartRateUUID:(id)d error:(id)error
{
  saturationCopy = saturation;
  pressureCopy = pressure;
  rateCopy = rate;
  dCopy = d;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __147__HDRPOxygenSaturationSessionServer__queue_notifyClientDidEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke;
  v30[3] = &unk_279B0E390;
  v30[4] = self;
  v17 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v30];
  if (saturationCopy)
  {
    v18 = MEMORY[0x277CCD7E8];
    percentUnit = [MEMORY[0x277CCDAB0] percentUnit];
    [saturationCopy doubleValue];
    v21 = [v18 quantityWithUnit:percentUnit doubleValue:v20 / 100.0];

    if (pressureCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if (rateCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_8;
  }

  v21 = 0;
  if (!pressureCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = MEMORY[0x277CCD7E8];
  v23 = [MEMORY[0x277CCDAB0] pascalUnitWithMetricPrefix:9];
  [pressureCopy doubleValue];
  v24 = [v22 quantityWithUnit:v23 doubleValue:?];

  if (!rateCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v25 = MEMORY[0x277CCD7E8];
  _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
  [rateCopy doubleValue];
  v27 = [v25 quantityWithUnit:_countPerMinuteUnit doubleValue:?];

LABEL_8:
  [v17 clientRemote_didEndWithReason:reason saturation:v21 barometricPressure:v24 averageHeartRate:v27 averageHeartRateUUID:dCopy error:errorCopy];
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

- (void)oxygenSaturationSession:(id)session didBeginWithStartTime:(double)time expectedDuration:(double)duration
{
  v24 = *MEMORY[0x277D85DE8];
  [(HDRPOxygenSaturationSessionServer *)self setStartTime:session];
  [(HDRPOxygenSaturationSessionServer *)self setExpectedDuration:duration];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [v8 dateByAddingTimeInterval:-(CACurrentMediaTime() - time)];
  v10 = [v9 dateByAddingTimeInterval:duration];
  [(HDRPOxygenSaturationSessionServer *)self setExpectedEndDate:v10];

  _HKInitializeLogging();
  v11 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    expectedEndDate = [(HDRPOxygenSaturationSessionServer *)self expectedEndDate];
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v9;
    v20 = 2050;
    durationCopy = duration;
    v22 = 2114;
    v23 = expectedEndDate;
    _os_log_impl(&dword_262086000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session did begin with Start date: %{public}@, Duration: %{public}.1f sec, Expected end date: %{public}@", &v16, 0x2Au);
  }

  self->_sessionState = 2;
  [(HDRPOxygenSaturationSessionServer *)self _queue_notifyClientDidStartWithStartTime:time expectedDuration:duration];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)oxygenSaturationSession:(id)session feedbackDidChange:(unint64_t)change
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
    if (change)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = v14;
      if (change)
      {
        [v14 addObject:@"Motion"];
      }

      if ((change & 2) != 0)
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

  [(HDRPOxygenSaturationSessionServer *)self _queue_notifyClientDidSendFeedback:change & 3];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)oxygenSaturationSession:(id)session didEndForReason:(unint64_t)reason measurement:(id)measurement
{
  v22 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  _HKInitializeLogging();
  v8 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    if (reason - 1 > 4)
    {
      v10 = @"Success";
    }

    else
    {
      v10 = off_279B0E3C8[reason - 1];
    }

    *v21 = 138543618;
    *&v21[4] = v9;
    *&v21[12] = 2114;
    *&v21[14] = v10;
    v11 = v9;
    _os_log_impl(&dword_262086000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session did end with reason: %{public}@", v21, 0x16u);
  }

  if (reason > 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = qword_262090740[reason];
  }

  self->_sessionState = 3;
  oxygenSaturationPercentage = [measurementCopy oxygenSaturationPercentage];
  pressureInKilopascals = [measurementCopy pressureInKilopascals];
  v15 = MEMORY[0x277CCABB0];
  averageHeartRateData = [measurementCopy averageHeartRateData];
  [averageHeartRateData heartRate];
  v17 = [v15 numberWithDouble:?];
  averageHeartRateData2 = [measurementCopy averageHeartRateData];

  uuid = [averageHeartRateData2 uuid];
  [(HDRPOxygenSaturationSessionServer *)self _queue_notifyClientDidEndWithReason:v12 saturation:oxygenSaturationPercentage barometricPressure:pressureInKilopascals averageHeartRate:v17 averageHeartRateUUID:uuid error:0];

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