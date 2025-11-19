@interface ATXMiloProvider
- (ATXMiloProvider)initWithInferredModeStream:(id)a3;
- (BOOL)_isInferredModeEventEligibleForHistoricalLabelDonations:(id)a3;
- (BOOL)_isInferredModeEventEligibleForMicrolocationLabelDonation:(id)a3;
- (BOOL)_isUserFocusComputedModeEventEligibleForHistoricalLabelDonations:(id)a3;
- (BOOL)_isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:(id)a3;
- (id)_schedulerForStreamName:(id)a3;
- (id)_truthLabelForMode:(int)a3;
- (void)_subscribeToModeChanges;
- (void)_subscribeToStreamWithPublisher:(id)a3 scheduler:(id)a4 sink:(id)a5;
- (void)_triggerHistoricalLabelDonationAtModeEndWithStoreEvent:(id)a3;
- (void)_triggerMicroLocationHistoricalLabelDonationWithStartDate:(id)a3 endDate:(id)a4;
- (void)_triggerMicrolocationLabelingAtModeStartWithStoreEvent:(id)a3;
- (void)_triggerPredictionRequest;
- (void)_userDidEnterModeOrModeWasPredicted;
- (void)_userDidExitModeOrModeWasNoLongerPredicted;
- (void)dealloc;
- (void)requestPrediction;
@end

@implementation ATXMiloProvider

- (ATXMiloProvider)initWithInferredModeStream:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = ATXMiloProvider;
  v6 = [(ATXMiloProvider *)&v36 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.proactive.ProactiveContextClient.ATXMiloProvider.queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_alloc(MEMORY[0x277D42628]);
    v11 = v6->_queue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__ATXMiloProvider_initWithInferredModeStream___block_invoke;
    v33[3] = &unk_279AB7B90;
    objc_copyWeak(&v34, &location);
    v12 = [v10 initWithQueue:v11 operation:v33];
    coalescingTimerForLabelDonation = v6->_coalescingTimerForLabelDonation;
    v6->_coalescingTimerForLabelDonation = v12;

    v14 = objc_alloc(MEMORY[0x277D42628]);
    v15 = v6->_queue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_2;
    v31[3] = &unk_279AB7B90;
    objc_copyWeak(&v32, &location);
    v16 = [v14 initWithQueue:v15 operation:v31];
    coalescingTimerForHistoricalLabelDonations = v6->_coalescingTimerForHistoricalLabelDonations;
    v6->_coalescingTimerForHistoricalLabelDonations = v16;

    v18 = objc_alloc(MEMORY[0x277D42628]);
    v19 = v6->_queue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_3;
    v29 = &unk_279AB7B90;
    objc_copyWeak(&v30, &location);
    v20 = [v18 initWithQueue:v19 operation:&v26];
    coalescingTimerForPrediction = v6->_coalescingTimerForPrediction;
    v6->_coalescingTimerForPrediction = v20;

    objc_storeStrong(&v6->_inferredModeStream, a3);
    v22 = objc_alloc(MEMORY[0x277CBEBD0]);
    v23 = [v22 initWithSuiteName:{@"com.apple.DuetExpertCenter.AppPredictionExpert", v26, v27, v28, v29}];
    [v23 doubleForKey:@"ATXMiloProviderTimeBufferKey"];
    if (v24 <= 0.0)
    {
      v24 = 300.0;
    }

    v6->_timeBuffer = v24;
    [(ATXMiloProvider *)v6 _subscribeToModeChanges];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __46__ATXMiloProvider_initWithInferredModeStream___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _userDidEnterModeOrModeWasPredicted];
}

void __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _userDidExitModeOrModeWasNoLongerPredicted];
}

void __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerPredictionRequest];
}

- (void)requestPrediction
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    v14 = 0x4082C00000000000;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@] Initiating prediction scan in %f seconds", &v9, 0x20u);
  }

  [(_PASSimpleCoalescingTimer *)self->_coalescingTimerForPrediction runAfterDelaySeconds:1 coalescingBehavior:600.0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_triggerPredictionRequest
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_3();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v4, v5, "[%@][%@] ULConnection unavilable", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToModeChanges
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = BiomeLibrary();
  v5 = [v4 UserFocus];
  v6 = [v5 ComputedMode];
  userFocusComputedModeStream = self->_userFocusComputedModeStream;
  self->_userFocusComputedModeStream = v6;

  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v12 = [(BMStream *)self->_inferredModeStream identifier];
    v13 = [(BMStream *)self->_userFocusComputedModeStream identifier];
    v23 = 138413058;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "[%@][%@] subscribing to %@ and %@ streams", &v23, 0x2Au);
  }

  v14 = [(BMStream *)self->_inferredModeStream identifier];
  v15 = [(ATXMiloProvider *)self _schedulerForStreamName:v14];
  inferredModeScheduler = self->_inferredModeScheduler;
  self->_inferredModeScheduler = v15;

  v17 = [(BMStream *)self->_userFocusComputedModeStream identifier];
  v18 = [(ATXMiloProvider *)self _schedulerForStreamName:v17];
  userComputedModeScheduler = self->_userComputedModeScheduler;
  self->_userComputedModeScheduler = v18;

  v20 = [(BMStream *)self->_inferredModeStream DSLPublisher];
  [(ATXMiloProvider *)self _subscribeToStreamWithPublisher:v20 scheduler:self->_inferredModeScheduler sink:self->_inferredModeStreamSink];

  v21 = [(BMStream *)self->_userFocusComputedModeStream DSLPublisher];
  [(ATXMiloProvider *)self _subscribeToStreamWithPublisher:v21 scheduler:self->_userComputedModeScheduler sink:self->_userComputedModeStreamSink];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(BPSSink *)self->_inferredModeStreamSink cancel];
  [(BPSSink *)self->_userComputedModeStreamSink cancel];
  v3.receiver = self;
  v3.super_class = ATXMiloProvider;
  [(ATXMiloProvider *)&v3 dealloc];
}

- (void)_subscribeToStreamWithPublisher:(id)a3 scheduler:(id)a4 sink:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v12 = __atxlog_handle_modes();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = NSStringFromSelector(a2);
        v17 = [v9 rootStreamIdentifiers];
        *buf = 138412802;
        v27 = v14;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_DEFAULT, "[%@][%@] listening to stream %@ for mode start events", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v18 = [v9 subscribeOn:v10];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke;
      v24[3] = &unk_279AB7F08;
      objc_copyWeak(v25, buf);
      v25[1] = a2;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22;
      v21[3] = &unk_279AB7F30;
      objc_copyWeak(v23, buf);
      v23[1] = a2;
      v22 = v9;
      v11 = [v18 sinkWithCompletion:v24 receiveInput:v21];

      if (!v11)
      {
        v19 = __atxlog_handle_modes();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [ATXMiloProvider _subscribeToStreamWithPublisher:v19 scheduler:? sink:?];
        }
      }

      objc_destroyWeak(v23);
      objc_destroyWeak(v25);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXMiloProvider _subscribeToStreamWithPublisher:a2 scheduler:v13 sink:?];
      }

      v11 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = NSStringFromSelector(v8);
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "[%@][%@] successfully completed listening to mode events", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = __atxlog_handle_modes();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 48);
      v9 = v7;
      v10 = NSStringFromSelector(v8);
      v11 = [*(a1 + 32) rootStreamIdentifiers];
      v13 = 138412802;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "[%@][%@] mode event received from %@", &v13, 0x20u);
    }

    [WeakRetained _triggerHistoricalLabelDonationAtModeEndWithStoreEvent:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22_cold_1(a1);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_triggerMicrolocationLabelingAtModeStartWithStoreEvent:(id)a3
{
  v11 = a3;
  v4 = [v11 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v11 eventBody];
  if (isKindOfClass)
  {
    v7 = [(ATXMiloProvider *)self _isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:v6];

    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(_PASSimpleCoalescingTimer *)self->_coalescingTimerForLabelDonation runAfterDelaySeconds:1 coalescingBehavior:self->_timeBuffer];
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = [v11 eventBody];
  v10 = [(ATXMiloProvider *)self _isInferredModeEventEligibleForMicrolocationLabelDonation:v9];

  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_triggerHistoricalLabelDonationAtModeEndWithStoreEvent:(id)a3
{
  v11 = a3;
  v4 = [v11 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v11 eventBody];
  if (isKindOfClass)
  {
    v7 = [(ATXMiloProvider *)self _isUserFocusComputedModeEventEligibleForHistoricalLabelDonations:v6];

    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(_PASSimpleCoalescingTimer *)self->_coalescingTimerForHistoricalLabelDonations runAfterDelaySeconds:1 coalescingBehavior:5.0];
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = [v11 eventBody];
  v10 = [(ATXMiloProvider *)self _isInferredModeEventEligibleForHistoricalLabelDonations:v9];

  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)_isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:(id)a3
{
  v3 = a3;
  if ([v3 starting])
  {
    v4 = [v3 semanticType] == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isUserFocusComputedModeEventEligibleForHistoricalLabelDonations:(id)a3
{
  v3 = a3;
  v4 = ([v3 starting] & 1) == 0 && objc_msgSend(v3, "semanticType") == 6;

  return v4;
}

- (BOOL)_isInferredModeEventEligibleForMicrolocationLabelDonation:(id)a3
{
  v3 = a3;
  if ([v3 isStart])
  {
    v4 = [v3 modeType] == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isInferredModeEventEligibleForHistoricalLabelDonations:(id)a3
{
  v3 = a3;
  v4 = ([v3 isStart] & 1) == 0 && objc_msgSend(v3, "modeType") == 4;

  return v4;
}

- (id)_schedulerForStreamName:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCAC38];
  v7 = a3;
  v8 = [v6 processInfo];
  v9 = [v8 processName];
  v10 = [v5 stringWithFormat:@"ATXMiloProvider.Modes.%@.%@", v9, v7];

  v11 = __atxlog_handle_modes();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138412802;
    v25 = v12;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_INFO, "[%@][%@] scheduler identifier: %@", buf, 0x20u);
  }

  v15 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v10 targetQueue:self->_queue];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = __atxlog_handle_modes();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = v21;
      v26 = 2112;
      v27 = v23;
      v28 = 2112;
      v29 = v10;
      _os_log_error_impl(&dword_260C9F000, v18, OS_LOG_TYPE_ERROR, "[%@][%@] unable to initialize Biome Scheduler: %@", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_userDidEnterModeOrModeWasPredicted
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v41 = 138412546;
    v42 = v5;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_INFO, "[%@][%@] Starting Microlocation Labeling", &v41, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v8 = self->_timeBuffer + 1.0;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [[ATXUserFocusComputedMode alloc] initWithStream:self->_userFocusComputedModeStream];
  v11 = [(ATXUserFocusComputedMode *)v10 currentModeEvent];

  v12 = [v11 eventBody];
  if ([(ATXMiloProvider *)self _isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:v12])
  {
    [v9 timeIntervalSinceReferenceDate];
    v14 = v13;
    [v11 timestamp];
    v16 = v14 - v15;

    if (v16 < v8)
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = [v11 eventBody];
      v19 = BMUserFocusInferredModeTypeFromBMUserFocusModeComputedSemanticType([v18 semanticType]);
LABEL_10:
      v26 = [v17 numberWithInt:v19];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v20 = [[ATXUserFocusInferredMode alloc] initWithStream:self->_inferredModeStream];
  v18 = [(ATXUserFocusInferredMode *)v20 currentMode];

  if ([(ATXMiloProvider *)self _isInferredModeEventEligibleForMicrolocationLabelDonation:v18])
  {
    [v9 timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = [v18 absoluteTimestamp];
    [v23 timeIntervalSinceReferenceDate];
    v25 = v22 - v24;

    if (v25 < v8)
    {
      v17 = MEMORY[0x277CCABB0];
      v19 = [v18 modeType];
      goto LABEL_10;
    }
  }

  v26 = 0;
LABEL_12:

  if (v26)
  {
    v27 = [v26 integerValue];
    v28 = __atxlog_handle_modes();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = v29;
      v31 = NSStringFromSelector(a2);
      v32 = BMUserFocusInferredModeTypeAsString();
      v41 = 138412802;
      v42 = v29;
      v43 = 2112;
      v44 = v31;
      v45 = 2114;
      v46 = *&v32;
      _os_log_impl(&dword_260C9F000, v28, OS_LOG_TYPE_DEFAULT, "[%@][%@] user entered mode: %{public}@", &v41, 0x20u);
    }

    v33 = objc_alloc(MEMORY[0x277D287A0]);
    v34 = [(ATXMiloProvider *)self _truthLabelForMode:v27];
    v35 = [v33 initWithName:v34];

    v36 = [(ATXMiloProvider *)self connection];
    [v36 addLabel:v35];
  }

  else
  {
    v35 = __atxlog_handle_modes();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = v38;
      v40 = NSStringFromSelector(a2);
      v41 = 138412802;
      v42 = v38;
      v43 = 2112;
      v44 = v40;
      v45 = 2048;
      v46 = v8;
      _os_log_error_impl(&dword_260C9F000, v35, OS_LOG_TYPE_ERROR, "[%@][%@] Unable to find an inferred mode event or user focus computed mode event in the past %f seconds", &v41, 0x20u);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_userDidExitModeOrModeWasNoLongerPredicted
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_3();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v4, v5, "[%@][%@] Error: Expected to see at least two events in either the inferred mode stream or the user computed stream", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_truthLabelForMode:(int)a3
{
  if (a3 == 4)
  {
    return @"C9FC4298-DE04-494A-9791-71AB71B52E27";
  }

  else
  {
    return @"75BF0CD2-AB18-4E42-AD01-3D5CAADFDFF1";
  }
}

- (void)_triggerMicroLocationHistoricalLabelDonationWithStartDate:(id)a3 endDate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_modes();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v17 = 138413058;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "[%@][%@] Labeling scans between startDate: %@ and endDate: %@ with work label", &v17, 0x2Au);
  }

  v13 = [(ATXMiloProvider *)self connection];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D287A0]) initWithName:@"C9FC4298-DE04-494A-9791-71AB71B52E27"];
    v15 = [(ATXMiloProvider *)self connection];
    [v15 addLabel:v14 betweenStartDate:v7 andEndDate:v8];
  }

  else
  {
    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXMiloProvider _triggerMicroLocationHistoricalLabelDonationWithStartDate:endDate:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToStreamWithPublisher:(uint64_t)a1 scheduler:(const char *)a2 sink:(NSObject *)a3 .cold.2(uint64_t a1, const char *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_260C9F000, a3, OS_LOG_TYPE_ERROR, "[%@][%@] Publisher was unexpectedly nil", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_cold_1(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v7, v8, "[%@][%@] Error encountered while listening to mode events", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22_cold_1(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = *(a1 + 48);
  v5 = v3;
  v6 = OUTLINED_FUNCTION_3();
  v7 = NSStringFromSelector(v6);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v8, v9, "[%@][%@] self is nil", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_triggerMicroLocationHistoricalLabelDonationWithStartDate:endDate:.cold.1()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_3();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v4, v5, "[%@][%@] Connection unavilable, Unable to label scans between dates", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end