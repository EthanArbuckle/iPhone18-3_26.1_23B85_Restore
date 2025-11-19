@interface ATXModeClassifier
+ (id)updateModeWithUUID:(id)a3 userModeName:(id)a4 modeType:(int)a5 modeOrigin:(int)a6 originAnchorType:(id)a7 originBundleId:(id)a8 uiLocation:(unint64_t)a9 confidenceScore:(double)a10 serializedTriggers:(id)a11 allowsSmartEntry:(BOOL)a12 shouldSuggestTriggers:(BOOL)a13 currentMode:(id)a14 stream:(id)a15;
+ (void)provideModeClassifierWhenReadyWithBlock:(id)a3;
+ (void)provideModeClassifierWhenReadyWithDuetHelper:(id)a3 block:(id)a4;
- (ATXModeClassifier)init;
- (BOOL)_isModeType:(int)a3 uuid:(id)a4 sameAsModeFromEvent:(id)a5;
- (BOOL)_shouldUpdateMode:(int)a3 currentModeScore:(id)a4 newModeOrigin:(int)a5 newModeScore:(id)a6;
- (BOOL)allowSmartEntryWithModeUUID:(id)a3;
- (id)currentMode;
- (void)_expireMode;
- (void)_setUpModeExpirationTimerIfNeededWithModeOrigin:(int)a3;
- (void)_updateWithNewModeUUID:(id)a3 userModeName:(id)a4 modeType:(int)a5 modeOrigin:(int)a6 originBundleId:(id)a7 originAnchorType:(id)a8 uiLocation:(unint64_t)a9 confidenceScore:(double)a10 serializedTriggers:(id)a11 allowsSmartEntry:(BOOL)a12 shouldSuggestTriggers:(BOOL)a13;
- (void)_updateWithNewModeUUIDIfNeeded:(id)a3 userModeName:(id)a4 modeType:(int)a5 modeOrigin:(int)a6 originBundleId:(id)a7 originAnchorType:(id)a8 confidenceScore:(double)a9 serializedTriggers:(id)a10;
- (void)init;
@end

@implementation ATXModeClassifier

+ (void)provideModeClassifierWhenReadyWithDuetHelper:(id)a3 block:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D42598];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXModeClassifier_provideModeClassifierWhenReadyWithDuetHelper_block___block_invoke;
  v7[3] = &unk_279AB8030;
  v8 = v4;
  v6 = v4;
  [v5 runBlockWhenDeviceIsClassCUnlocked:v7];
}

void __72__ATXModeClassifier_provideModeClassifierWhenReadyWithDuetHelper_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

+ (void)provideModeClassifierWhenReadyWithBlock:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D42598];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ATXModeClassifier_provideModeClassifierWhenReadyWithBlock___block_invoke;
  v6[3] = &unk_279AB8030;
  v7 = v3;
  v5 = v3;
  [v4 runBlockWhenDeviceIsClassCUnlocked:v6];
}

void __61__ATXModeClassifier_provideModeClassifierWhenReadyWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

- (ATXModeClassifier)init
{
  v50 = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = ATXModeClassifier;
  v3 = [(ATXModeClassifier *)&v47 init];
  if (v3)
  {
    if ([MEMORY[0x277D42598] isClassCLocked])
    {
      [(ATXModeClassifier *)a2 init];
    }

    v4 = objc_opt_new();
    modeService = v3->_modeService;
    v3->_modeService = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBFC10]);
    locationManager = v3->_locationManager;
    v3->_locationManager = v6;

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = [v9 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v3->_queue;
    v3->_queue = v13;

    v15 = BiomeLibrary();
    v16 = [v15 UserFocus];
    v17 = [v16 InferredMode];
    inferredModeStream = v3->_inferredModeStream;
    v3->_inferredModeStream = v17;

    v19 = [[ATXMiloProvider alloc] initWithInferredModeStream:v3->_inferredModeStream];
    miloProvider = v3->_miloProvider;
    v3->_miloProvider = v19;

    v21 = [[ATXModeHeuristicClassifier alloc] initWithConfiguredModeService:v3->_modeService locationManager:v3->_locationManager miloProvider:v3->_miloProvider];
    heuristicModeClassifier = v3->_heuristicModeClassifier;
    v3->_heuristicModeClassifier = v21;

    [(ATXModeHeuristicClassifier *)v3->_heuristicModeClassifier setDelegate:v3];
    [(ATXModeHeuristicClassifier *)v3->_heuristicModeClassifier update];
    v23 = [[ATXModeAnchorModelSuggestionServer alloc] initWithConfiguredModeService:v3->_modeService];
    anchorModelSuggestionServer = v3->_anchorModelSuggestionServer;
    v3->_anchorModelSuggestionServer = v23;

    [(ATXModeAnchorModelSuggestionServer *)v3->_anchorModelSuggestionServer setDelegate:v3];
    objc_initWeak(&location, v3);
    v25 = objc_alloc(MEMORY[0x277D42628]);
    v26 = MEMORY[0x277D85CD0];
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __25__ATXModeClassifier_init__block_invoke;
    v44 = &unk_279AB7B90;
    objc_copyWeak(&v45, &location);
    v27 = [v25 initWithQueue:MEMORY[0x277D85CD0] operation:&v41];
    modeExpirationTimer = v3->_modeExpirationTimer;
    v3->_modeExpirationTimer = v27;

    v29 = objc_opt_new();
    v30 = [ATXUserFocusInferredMode alloc];
    v31 = [(ATXUserFocusInferredMode *)v30 initWithStream:v3->_inferredModeStream, v41, v42, v43, v44];
    v32 = [(ATXUserFocusInferredMode *)v31 currentMode];
    v33 = v29[1];
    v29[1] = v32;

    v34 = __atxlog_handle_modes();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v29[1] modeIdentifier];
      *buf = 138412290;
      v49 = v35;
      _os_log_impl(&dword_260C9F000, v34, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier initing with current mode: %@", buf, 0xCu);
    }

    -[ATXModeClassifier _setUpModeExpirationTimerIfNeededWithModeOrigin:](v3, "_setUpModeExpirationTimerIfNeededWithModeOrigin:", [v29[1] origin]);
    v36 = [objc_alloc(MEMORY[0x277D42610]) initWithGuardedData:v29 serialQueue:v3->_queue];

    lock = v3->_lock;
    v3->_lock = v36;

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  v38 = __atxlog_handle_modes();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [(ATXModeClassifier *)v38 init];
  }

  v39 = *MEMORY[0x277D85DE8];
  return v3;
}

void __25__ATXModeClassifier_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _expireMode];
}

- (id)currentMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ATXModeClassifier_currentMode__block_invoke;
  v5[3] = &unk_279AB8058;
  v5[4] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__ATXModeClassifier_currentMode__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) modeIdentifier];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isModeType:(int)a3 uuid:(id)a4 sameAsModeFromEvent:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 modeIdentifier];
  v10 = v9;
  if (v7 && v9 && ([v7 isEqualToString:v9] & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v8 modeType];
    if (v7 | v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == a3;
    }

    v11 = v13;
  }

  return v11;
}

+ (id)updateModeWithUUID:(id)a3 userModeName:(id)a4 modeType:(int)a5 modeOrigin:(int)a6 originAnchorType:(id)a7 originBundleId:(id)a8 uiLocation:(unint64_t)a9 confidenceScore:(double)a10 serializedTriggers:(id)a11 allowsSmartEntry:(BOOL)a12 shouldSuggestTriggers:(BOOL)a13 currentMode:(id)a14 stream:(id)a15
{
  v52 = a3;
  v19 = a4;
  v51 = a7;
  v50 = a8;
  v49 = a11;
  v53 = a15;
  v54 = v19;
  if (a14)
  {
    v20 = MEMORY[0x277CF16E8];
    v21 = a14;
    v22 = [v20 alloc];
    v45 = objc_opt_new();
    v44 = [v21 modeIdentifier];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v21, "isAutomationEnabled")}];
    v24 = [v21 uuid];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_287331708;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v21, "uiLocation")}];
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:a10];
    v29 = [v21 modeType];
    v30 = [v21 userModeName];

    LODWORD(v43) = v29;
    v31 = [v22 initWithAbsoluteTimestamp:v45 modeIdentifier:v44 origin:1 originBundleID:0 isAutomationEnabled:v23 isStart:v26 uuid:0 originAnchorType:v27 uiLocation:v28 confidenceScore:MEMORY[0x277CBEBF8] serializedTriggers:v43 modeType:MEMORY[0x277CBEC28] shouldSuggestTriggers:v30 userModeName:?];

    v19 = v54;
    v32 = [v53 source];
    [v32 sendEvent:v31];
  }

  v33 = objc_opt_new();
  v46 = [v33 UUIDString];

  v34 = objc_alloc(MEMORY[0x277CF16E8]);
  v35 = objc_opt_new();
  v36 = [MEMORY[0x277CCABB0] numberWithBool:a12];
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a9];
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:a10];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:a13];
  LODWORD(v43) = a5;
  v40 = [v34 initWithAbsoluteTimestamp:v35 modeIdentifier:v52 origin:a6 originBundleID:v50 isAutomationEnabled:v36 isStart:MEMORY[0x277CBEC38] uuid:v46 originAnchorType:v51 uiLocation:v37 confidenceScore:v38 serializedTriggers:v49 modeType:v43 shouldSuggestTriggers:v39 userModeName:v19];

  v41 = [v53 source];
  [v41 sendEvent:v40];

  return v40;
}

- (void)_updateWithNewModeUUID:(id)a3 userModeName:(id)a4 modeType:(int)a5 modeOrigin:(int)a6 originBundleId:(id)a7 originAnchorType:(id)a8 uiLocation:(unint64_t)a9 confidenceScore:(double)a10 serializedTriggers:(id)a11 allowsSmartEntry:(BOOL)a12 shouldSuggestTriggers:(BOOL)a13
{
  v20 = a3;
  v21 = a4;
  v22 = a7;
  v23 = a8;
  v24 = a11;
  lock = self->_lock;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __194__ATXModeClassifier__updateWithNewModeUUID_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_uiLocation_confidenceScore_serializedTriggers_allowsSmartEntry_shouldSuggestTriggers___block_invoke;
  v31[3] = &unk_279AB8080;
  v31[4] = self;
  v32 = v20;
  v39 = a5;
  v40 = a6;
  v33 = v21;
  v34 = v22;
  v36 = v24;
  v37 = a9;
  v38 = a10;
  v35 = v23;
  v41 = a12;
  v42 = a13;
  v26 = v24;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v31];
}

- (void)_updateWithNewModeUUIDIfNeeded:(id)a3 userModeName:(id)a4 modeType:(int)a5 modeOrigin:(int)a6 originBundleId:(id)a7 originAnchorType:(id)a8 confidenceScore:(double)a9 serializedTriggers:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  objc_initWeak(&location, self);
  lock = self->_lock;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke;
  v28[3] = &unk_279AB80F8;
  objc_copyWeak(v34, &location);
  v35 = a5;
  v23 = v17;
  v29 = v23;
  v36 = a6;
  v24 = v19;
  v30 = v24;
  v25 = v20;
  v31 = v25;
  v34[1] = *&a9;
  v26 = v21;
  v32 = v26;
  v27 = v18;
  v33 = v27;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v28];

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _isModeType:*(a1 + 88) uuid:*(a1 + 32) sameAsModeFromEvent:v3[1]];
    v7 = __atxlog_handle_modes();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 88);
        v11 = [v3[1] modeIdentifier];
        v12 = [v3[1] modeType];
        *buf = 138544130;
        v35 = v9;
        v36 = 2048;
        v37 = v10;
        v38 = 2114;
        v39 = v11;
        v40 = 2048;
        v41 = v12;
        _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: not updating because new mode (%{public}@, %lu) is same as current mode (%{public}@, %lu)", buf, 0x2Au);
      }
    }

    else
    {
      if (v8)
      {
        v14 = [v3[1] modeIdentifier];
        v15 = [v3[1] modeType];
        v16 = *(a1 + 32);
        v17 = *(a1 + 88);
        *buf = 138544130;
        v35 = v14;
        v36 = 2048;
        v37 = v15;
        v38 = 2114;
        v39 = v16;
        v40 = 2048;
        v41 = v17;
        _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: fetching combined score for current mode (uuid: %{public}@, type:%lu) and new mode (uuid: %{public}@, type:%lu) to see if we should update", buf, 0x2Au);
      }

      v18 = v5[5];
      v19 = v3[1];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_41;
      v27[3] = &unk_279AB80D0;
      v27[4] = v5;
      v20 = *(a1 + 32);
      v33 = *(a1 + 88);
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v32 = *(a1 + 80);
      v23 = *(a1 + 56);
      *&v24 = v22;
      *(&v24 + 1) = v23;
      *&v25 = v20;
      *(&v25 + 1) = v21;
      v28 = v25;
      v29 = v24;
      v30 = v3;
      v31 = *(a1 + 64);
      [v18 fetchCombinedSuggestionScoreForModeEvent:v19 completionHandler:v27];
    }
  }

  else
  {
    v13 = __atxlog_handle_modes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_cold_1(v13);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_41(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: fetched score for current mode: %@. Fetching score and flags for new mode.", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 40);
  v7 = *(a1 + 96);
  v8 = *(a1 + 100);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 88);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42;
  v17[3] = &unk_279AB80A8;
  v12 = *(a1 + 64);
  v18 = *(a1 + 72);
  v19 = v3;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v20 = v13;
  v21 = v14;
  v27 = *(a1 + 100);
  v22 = *(a1 + 80);
  v28 = *(a1 + 96);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v26 = *(a1 + 88);
  v25 = *(a1 + 64);
  v15 = v3;
  [v6 fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:v5 modeType:v7 origin:v8 originBundleId:v9 originAnchorType:v10 confidenceScore:v12 secondsSinceSuggested:v11 serializedTriggers:0.0 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42(uint64_t a1, void *a2, int a3, char a4, char a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = __atxlog_handle_modes();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(a1 + 32) + 8) modeIdentifier];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *buf = 138544130;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_260C9F000, v10, OS_LOG_TYPE_DEFAULT, "Comparing current mode: %{public}@ (combinedScore: %{public}@, with new mode: %{public}@ (combinedScore: %{public}@)", buf, 0x2Au);
  }

  if (!v9 || !*(a1 + 40))
  {
    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42_cold_1(a1, v9, v14);
    }
  }

  if ([*(a1 + 56) _shouldUpdateMode:objc_msgSend(*(*(a1 + 32) + 8) currentModeScore:"origin") newModeOrigin:*(a1 + 40) newModeScore:{*(a1 + 104), v9}])
  {
    v15 = 3;
    if (!a3)
    {
      v15 = 1;
    }

    BYTE1(v17) = a4;
    LOBYTE(v17) = a5;
    [*(a1 + 56) _updateWithNewModeUUID:*(a1 + 48) userModeName:*(a1 + 64) modeType:*(a1 + 108) modeOrigin:*(a1 + 104) originBundleId:*(a1 + 72) originAnchorType:*(a1 + 80) uiLocation:*(a1 + 96) confidenceScore:v15 serializedTriggers:*(a1 + 88) allowsSmartEntry:v17 shouldSuggestTriggers:?];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowSmartEntryWithModeUUID:(id)a3
{
  v3 = [(ATXConfiguredModeService *)self->_modeService DNDModeConfigurationForActivityWithUUID:a3];
  v4 = [v3 allowSmartEntry] == 2;

  return v4;
}

- (BOOL)_shouldUpdateMode:(int)a3 currentModeScore:(id)a4 newModeOrigin:(int)a5 newModeScore:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (BMUserFocusInferredModeOriginIsHeuristic(a3) && (BMUserFocusInferredModeOriginIsHeuristic(a5) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    [v10 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    v11 = v13 >= v14;
  }

  return v11;
}

- (void)_setUpModeExpirationTimerIfNeededWithModeOrigin:(int)a3
{
  if (a3 == 11)
  {
    [(_PASSimpleCoalescingTimer *)self->_modeExpirationTimer runAfterDelaySeconds:1 coalescingBehavior:7200.0];
  }
}

- (void)_expireMode
{
  v14 = 0;
  v13 = 0;
  heuristicModeClassifier = self->_heuristicModeClassifier;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [(ATXModeHeuristicClassifier *)heuristicModeClassifier currentModeUUID:&v12 userModeName:&v11 modeType:&v14 + 4 confidenceScore:0 origin:&v14 originBundleId:&v10 serializedTrigger:&v9 allowsSmartEntry:&v13];
  v4 = v12;
  v5 = v11;
  v6 = v10;
  v7 = v9;
  LOWORD(v8) = v13;
  [(ATXModeClassifier *)self _updateWithNewModeUUID:v4 userModeName:v5 modeType:HIDWORD(v14) modeOrigin:v14 originBundleId:v6 originAnchorType:0 uiLocation:-1.0 confidenceScore:1 serializedTriggers:v7 allowsSmartEntry:v8 shouldSuggestTriggers:?];
}

- (void)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXModeClassifier.m" lineNumber:71 description:@"ATXModeClassifier must not be initialized when the device is Class C locked"];
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_260C9F000, log, OS_LOG_TYPE_ERROR, "ATXModeClassifer: something went wrong fetching widget scores! currentModeScore: %@, newModeScore: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end