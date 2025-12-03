@interface ATXModeClassifier
+ (id)updateModeWithUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originAnchorType:(id)anchorType originBundleId:(id)id uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3 currentMode:(id)self4 stream:(id)self5;
+ (void)provideModeClassifierWhenReadyWithBlock:(id)block;
+ (void)provideModeClassifierWhenReadyWithDuetHelper:(id)helper block:(id)block;
- (ATXModeClassifier)init;
- (BOOL)_isModeType:(int)type uuid:(id)uuid sameAsModeFromEvent:(id)event;
- (BOOL)_shouldUpdateMode:(int)mode currentModeScore:(id)score newModeOrigin:(int)origin newModeScore:(id)modeScore;
- (BOOL)allowSmartEntryWithModeUUID:(id)d;
- (id)currentMode;
- (void)_expireMode;
- (void)_setUpModeExpirationTimerIfNeededWithModeOrigin:(int)origin;
- (void)_updateWithNewModeUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3;
- (void)_updateWithNewModeUUIDIfNeeded:(id)needed userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score serializedTriggers:(id)self0;
- (void)init;
@end

@implementation ATXModeClassifier

+ (void)provideModeClassifierWhenReadyWithDuetHelper:(id)helper block:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x277D42598];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXModeClassifier_provideModeClassifierWhenReadyWithDuetHelper_block___block_invoke;
  v7[3] = &unk_279AB8030;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 runBlockWhenDeviceIsClassCUnlocked:v7];
}

void __72__ATXModeClassifier_provideModeClassifierWhenReadyWithDuetHelper_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

+ (void)provideModeClassifierWhenReadyWithBlock:(id)block
{
  blockCopy = block;
  v4 = MEMORY[0x277D42598];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ATXModeClassifier_provideModeClassifierWhenReadyWithBlock___block_invoke;
  v6[3] = &unk_279AB8030;
  v7 = blockCopy;
  v5 = blockCopy;
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
    uTF8String = [v9 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    queue = v3->_queue;
    v3->_queue = v13;

    v15 = BiomeLibrary();
    userFocus = [v15 UserFocus];
    inferredMode = [userFocus InferredMode];
    inferredModeStream = v3->_inferredModeStream;
    v3->_inferredModeStream = inferredMode;

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
    currentMode = [(ATXUserFocusInferredMode *)v31 currentMode];
    v33 = v29[1];
    v29[1] = currentMode;

    v34 = __atxlog_handle_modes();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      modeIdentifier = [v29[1] modeIdentifier];
      *buf = 138412290;
      v49 = modeIdentifier;
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

- (BOOL)_isModeType:(int)type uuid:(id)uuid sameAsModeFromEvent:(id)event
{
  uuidCopy = uuid;
  eventCopy = event;
  modeIdentifier = [eventCopy modeIdentifier];
  v10 = modeIdentifier;
  if (uuidCopy && modeIdentifier && ([uuidCopy isEqualToString:modeIdentifier] & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    modeType = [eventCopy modeType];
    if (uuidCopy | v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = modeType == type;
    }

    v11 = v13;
  }

  return v11;
}

+ (id)updateModeWithUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originAnchorType:(id)anchorType originBundleId:(id)id uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3 currentMode:(id)self4 stream:(id)self5
{
  dCopy = d;
  nameCopy = name;
  anchorTypeCopy = anchorType;
  idCopy = id;
  triggersCopy = triggers;
  streamCopy = stream;
  v54 = nameCopy;
  if (mode)
  {
    v20 = MEMORY[0x277CF16E8];
    modeCopy = mode;
    v22 = [v20 alloc];
    v45 = objc_opt_new();
    modeIdentifier = [modeCopy modeIdentifier];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modeCopy, "isAutomationEnabled")}];
    uuid = [modeCopy uuid];
    v25 = uuid;
    if (uuid)
    {
      v26 = uuid;
    }

    else
    {
      v26 = &stru_287331708;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(modeCopy, "uiLocation")}];
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:score];
    modeType = [modeCopy modeType];
    userModeName = [modeCopy userModeName];

    LODWORD(v43) = modeType;
    v31 = [v22 initWithAbsoluteTimestamp:v45 modeIdentifier:modeIdentifier origin:1 originBundleID:0 isAutomationEnabled:v23 isStart:v26 uuid:0 originAnchorType:v27 uiLocation:v28 confidenceScore:MEMORY[0x277CBEBF8] serializedTriggers:v43 modeType:MEMORY[0x277CBEC28] shouldSuggestTriggers:userModeName userModeName:?];

    nameCopy = v54;
    source = [streamCopy source];
    [source sendEvent:v31];
  }

  v33 = objc_opt_new();
  uUIDString = [v33 UUIDString];

  v34 = objc_alloc(MEMORY[0x277CF16E8]);
  v35 = objc_opt_new();
  v36 = [MEMORY[0x277CCABB0] numberWithBool:entry];
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:suggestTriggers];
  LODWORD(v43) = type;
  v40 = [v34 initWithAbsoluteTimestamp:v35 modeIdentifier:dCopy origin:origin originBundleID:idCopy isAutomationEnabled:v36 isStart:MEMORY[0x277CBEC38] uuid:uUIDString originAnchorType:anchorTypeCopy uiLocation:v37 confidenceScore:v38 serializedTriggers:triggersCopy modeType:v43 shouldSuggestTriggers:v39 userModeName:nameCopy];

  source2 = [streamCopy source];
  [source2 sendEvent:v40];

  return v40;
}

- (void)_updateWithNewModeUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3
{
  dCopy = d;
  nameCopy = name;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  lock = self->_lock;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __194__ATXModeClassifier__updateWithNewModeUUID_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_uiLocation_confidenceScore_serializedTriggers_allowsSmartEntry_shouldSuggestTriggers___block_invoke;
  v31[3] = &unk_279AB8080;
  v31[4] = self;
  v32 = dCopy;
  typeCopy = type;
  originCopy = origin;
  v33 = nameCopy;
  v34 = idCopy;
  v36 = triggersCopy;
  locationCopy = location;
  scoreCopy = score;
  v35 = anchorTypeCopy;
  entryCopy = entry;
  suggestTriggersCopy = suggestTriggers;
  v26 = triggersCopy;
  v27 = anchorTypeCopy;
  v28 = idCopy;
  v29 = nameCopy;
  v30 = dCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v31];
}

- (void)_updateWithNewModeUUIDIfNeeded:(id)needed userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score serializedTriggers:(id)self0
{
  neededCopy = needed;
  nameCopy = name;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  objc_initWeak(&location, self);
  lock = self->_lock;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke;
  v28[3] = &unk_279AB80F8;
  objc_copyWeak(v34, &location);
  typeCopy = type;
  v23 = neededCopy;
  v29 = v23;
  originCopy = origin;
  v24 = idCopy;
  v30 = v24;
  v25 = anchorTypeCopy;
  v31 = v25;
  v34[1] = *&score;
  v26 = triggersCopy;
  v32 = v26;
  v27 = nameCopy;
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

- (BOOL)allowSmartEntryWithModeUUID:(id)d
{
  v3 = [(ATXConfiguredModeService *)self->_modeService DNDModeConfigurationForActivityWithUUID:d];
  v4 = [v3 allowSmartEntry] == 2;

  return v4;
}

- (BOOL)_shouldUpdateMode:(int)mode currentModeScore:(id)score newModeOrigin:(int)origin newModeScore:(id)modeScore
{
  scoreCopy = score;
  modeScoreCopy = modeScore;
  if (BMUserFocusInferredModeOriginIsHeuristic(mode) && (BMUserFocusInferredModeOriginIsHeuristic(origin) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    [modeScoreCopy doubleValue];
    v13 = v12;
    [scoreCopy doubleValue];
    v11 = v13 >= v14;
  }

  return v11;
}

- (void)_setUpModeExpirationTimerIfNeededWithModeOrigin:(int)origin
{
  if (origin == 11)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ATXModeClassifier.m" lineNumber:71 description:@"ATXModeClassifier must not be initialized when the device is Class C locked"];
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