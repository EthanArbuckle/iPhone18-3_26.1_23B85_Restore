@interface PMMPredictor
+ (BOOL)_predictionPopulatesContinuity:(id)continuity;
+ (BOOL)_predictionPopulatesSpringboard:(id)springboard;
+ (BOOL)_predictionPopulatesStark:(id)stark;
+ (BOOL)bundleSupportsINPlayMediaIntentForBundleId:(id)id fromUnitTest:(BOOL)test;
+ (id)sharedInstance;
- (BOOL)_recommendingAudioWhileAlreadyPlaying:(id)playing;
- (PMMPredictor)init;
- (id)expirationForReason:(int64_t)reason;
- (id)notifyNonNowPlayingConsumersOfPredictionItem:(id)item;
- (id)preprocessPrediction:(id)prediction predictionSource:(unint64_t)source mmReason:(int64_t)reason decReason:(int64_t)decReason reasonSingle:(int64_t)single reasonMetadata:(id)metadata;
- (void)_clearAllRecommendations;
- (void)_clearAllRecommendationsExceptAppPredictions;
- (void)_handleNowPlayingInfoDidChange;
- (void)_notifyAppPredictionAboutMMUpdate:(id)update;
- (void)_updatePredictionBasedOnPreviousDataProtectionStatus:(int64_t)status previousEncryptedDataAvailability:(int64_t)availability;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)dataProtectionMonitor:(id)monitor dataProtectionStatusDidChange:(int64_t)change;
- (void)dataProtectionMonitor:(id)monitor encryptedDataAvailbilityDidChange:(int64_t)change;
- (void)dataProtectionMonitor:(id)monitor unlockedSinceBoot:(BOOL)boot;
- (void)fetchMediaRemoteNowPlayingApplicationBundleId:(id)id;
- (void)fetchMediaRemoteNowPlayingApplicationPlaybackState:(id)state;
- (void)handleNowPlayingInfoDidChange;
- (void)handlePredictedApplications:(id)applications;
- (void)logPrediction:(id)prediction predictionSource:(unint64_t)source mmReason:(int64_t)reason decReason:(int64_t)decReason reasonSingle:(int64_t)single reasonMetadata:(id)metadata;
- (void)notifyNowPlayingConsumerOfPredictionItem:(id)item;
@end

@implementation PMMPredictor

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken8 != -1)
  {
    +[PMMPredictor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __30__PMMPredictor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v1;

  objc_autoreleasePoolPop(v0);
}

- (PMMPredictor)init
{
  v53[3] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = PMMPredictor;
  v2 = [(PMMPredictor *)&v51 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataProtectionMonitor = v2->_dataProtectionMonitor;
    v2->_dataProtectionMonitor = v3;

    [(PMMDataProtectionMonitor *)v2->_dataProtectionMonitor setDelegate:v2];
    v2->_encryptedDataAvailability = [(PMMDataProtectionMonitor *)v2->_dataProtectionMonitor encryptedDataAvailability];
    v2->_unlockedSinceBoot = [(PMMDataProtectionMonitor *)v2->_dataProtectionMonitor unlockedSinceBoot];
    v2->_dataProtectionStatus = [(PMMDataProtectionMonitor *)v2->_dataProtectionMonitor dataProtectionStatus];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v10 stringByAppendingString:@"NowPlayingStatus"];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    nowPlayingStatusQueue = v2->_nowPlayingStatusQueue;
    v2->_nowPlayingStatusQueue = v12;

    v2->_callInProgress = 0;
    v14 = objc_opt_new();
    callObserver = v2->_callObserver;
    v2->_callObserver = v14;

    [(CXCallObserver *)v2->_callObserver setDelegate:v2 queue:v2->_queue];
    nowPlayingStatusQueue = [(PMMPredictor *)v2 nowPlayingStatusQueue];
    MRMediaRemoteRegisterForNowPlayingNotifications();

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, onNowPlayingInfoChange, *MEMORY[0x277D27B38], 0, CFNotificationSuspensionBehaviorDrop);
    v18 = +[PMMMusicStateProcessor shared];
    musicStateProcessor = v2->_musicStateProcessor;
    v2->_musicStateProcessor = v18;

    v20 = [PMMAudioDisconnectListener alloc];
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __20__PMMPredictor_init__block_invoke;
    v49 = &unk_2785922B8;
    v21 = v2;
    v50 = v21;
    v22 = [(PMMAudioDisconnectListener *)v20 initWithHandler:&v46];
    disconnectListener = v21->_disconnectListener;
    v21->_disconnectListener = v22;

    v24 = objc_opt_new();
    ctConnection = v21->_ctConnection;
    v21->_ctConnection = v24;

    v26 = MEMORY[0x277D41DA0];
    mmConsumerMapping = [MEMORY[0x277CEB628] mmConsumerMapping];
    v28 = [v26 propertyWithName:@"consumer" enumMapping:mmConsumerMapping autoSanitizeValues:1];

    v29 = MEMORY[0x277D41DA0];
    mmEventTypeMapping = [MEMORY[0x277CEB628] mmEventTypeMapping];
    v31 = [v29 propertyWithName:@"event" enumMapping:mmEventTypeMapping autoSanitizeValues:1];

    v32 = MEMORY[0x277D41DA0];
    predictionReasonMapping = [MEMORY[0x277CEB628] predictionReasonMapping];
    v34 = [v32 propertyWithName:@"reason" enumMapping:predictionReasonMapping autoSanitizeValues:1];

    v35 = [MEMORY[0x277D41DA0] propertyWithName:@"category" possibleValues:&unk_28398B510 autoSanitizeValues:1];
    v36 = objc_alloc(MEMORY[0x277D41DB8]);
    v53[0] = v28;
    v53[1] = v34;
    v53[2] = v31;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
    v38 = [v36 initWithFeatureId:@"MM" event:@"MMAppSuggestion" registerProperties:v37];
    mmAppSuggestion = v21->_mmAppSuggestion;
    v21->_mmAppSuggestion = v38;

    v40 = objc_alloc(MEMORY[0x277D41DB8]);
    v52[0] = v35;
    v52[1] = v28;
    v52[2] = v31;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    v42 = [v40 initWithFeatureId:@"MM" event:@"HeroAppSuggestion" registerProperties:v41];
    heroAppSuggestion = v21->_heroAppSuggestion;
    v21->_heroAppSuggestion = v42;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v2;
}

void __20__PMMPredictor_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__PMMPredictor_init__block_invoke_2;
  block[3] = &unk_2785922B8;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __20__PMMPredictor_init__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mostRecentPrediction];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) mostRecentPrediction];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "reason")}];
  if ([&unk_28398B4F8 containsObject:v5])
  {

LABEL_6:
    v12 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) mostRecentPrediction];
      v14 = [*(a1 + 32) mostRecentNowPlayingPrediction];
      v21 = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_22639A000, v12, OS_LOG_TYPE_DEFAULT, "Got headphone/BT disconnect from Duet. Clearing all recommendations. Most recent prediction: %@. Most recent NowPlaying prediction: %@", &v21, 0x16u);
    }

    [*(a1 + 32) _clearAllRecommendations];
    goto LABEL_14;
  }

  v6 = [*(a1 + 32) mostRecentNowPlayingPrediction];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CCABB0];
    v9 = [*(a1 + 32) mostRecentNowPlayingPrediction];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "reason")}];
    v11 = [&unk_28398B4F8 containsObject:v10];

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = [*(a1 + 32) mostRecentPrediction];
  v16 = [v15 reason];

  if (v16 == 512)
  {
    v17 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) mostRecentPrediction];
      v19 = [*(a1 + 32) mostRecentNowPlayingPrediction];
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_22639A000, v17, OS_LOG_TYPE_DEFAULT, "Got headphone/BT disconnect from Duet and reason of new prediction was 'other'. Clearing all recommendations except those for app predictions. Most recent prediction: %@. Most recent NowPlaying prediction: %@", &v21, 0x16u);
    }

    [*(a1 + 32) _clearAllRecommendationsExceptAppPredictions];
  }

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)handlePredictedApplications:(id)applications
{
  applicationsCopy = applications;
  queue = [(PMMPredictor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PMMPredictor_handlePredictedApplications___block_invoke;
  v7[3] = &unk_2785922E0;
  v8 = applicationsCopy;
  selfCopy = self;
  v6 = applicationsCopy;
  dispatch_async(queue, v7);
}

void __44__PMMPredictor_handlePredictedApplications___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PMMPredictor_handlePredictedApplications___block_invoke_67;
    block[3] = &unk_2785922E0;
    v6 = *(a1 + 32);
    v4 = v6.i64[0];
    v8 = vextq_s8(v6, v6, 8uLL);
    dispatch_async(v3, block);
  }

  else
  {
    v5 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "nil predictions or zero count applications. Clearing all recommendations (just in case) and exiting.", buf, 2u);
    }

    [*(a1 + 40) _clearAllRecommendations];
  }
}

void __44__PMMPredictor_handlePredictedApplications___block_invoke_67(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "A user is busy now. Keep it in silence.", v5, 2u);
    }
  }

  else
  {
    v4 = [v2 _publishPredictionWithPredictedApplication:*(a1 + 40) fromUnitTest:0];
  }
}

- (void)_notifyAppPredictionAboutMMUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  queue = [(PMMPredictor *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([updateCopy count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:300.0];
    v7 = [[PMMPrediction alloc] initWithPredictedItems:updateCopy expirationDate:v6];
    v8 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22639A000, v8, OS_LOG_TYPE_DEFAULT, "populating app prediction expert with MM prediction, %@", &v10, 0xCu);
    }

    [PMMPredictionNotification postPredictionUpdate:v7 consumer:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logPrediction:(id)prediction predictionSource:(unint64_t)source mmReason:(int64_t)reason decReason:(int64_t)decReason reasonSingle:(int64_t)single reasonMetadata:(id)metadata
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22639A000, v11, OS_LOG_TYPE_DEFAULT, "prediction type was magical moments", buf, 2u);
  }

  v12 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CEB628] stringForMMConsumerType:0];
    v14 = [MEMORY[0x277CEB628] stringForPredictionReason:single];
    *buf = 138412802;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    decReasonCopy = decReason;
    _os_log_impl(&dword_22639A000, v12, OS_LOG_TYPE_DEFAULT, "com.apple.MagicalMoments metrics: MM, consumer %@, reasonSingle %@, reason %ld, suggested", buf, 0x20u);
  }

  mmAppSuggestion = [(PMMPredictor *)self mmAppSuggestion];
  v19[0] = &unk_28398B480;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:single];
  v19[1] = v16;
  v19[2] = &unk_28398B480;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [mmAppSuggestion trackEventWithPropertyValues:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)preprocessPrediction:(id)prediction predictionSource:(unint64_t)source mmReason:(int64_t)reason decReason:(int64_t)decReason reasonSingle:(int64_t)single reasonMetadata:(id)metadata
{
  v19[3] = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  if ([(PMMPredictor *)self _recommendingAudioWhileAlreadyPlaying:predictionCopy])
  {
    v11 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_22639A000, v11, OS_LOG_TYPE_DEFAULT, "suppressing suggestion since audio is already playing", v18, 2u);
    }

    mmAppSuggestion = [(PMMPredictor *)self mmAppSuggestion];
    v19[0] = &unk_28398B480;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:single];
    v19[1] = v13;
    v19[2] = &unk_28398B498;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    [mmAppSuggestion trackEventWithPropertyValues:v14];

    v15 = 0;
  }

  else
  {
    v15 = predictionCopy;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)notifyNonNowPlayingConsumersOfPredictionItem:(id)item
{
  v24[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = objc_opt_new();
  if ([PMMPredictor _predictionPopulatesContinuity:itemCopy])
  {
    v6 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v6, OS_LOG_TYPE_DEFAULT, "prediction populates continuity", buf, 2u);
    }

    v7 = -[PMMPredictor expirationForReason:](self, "expirationForReason:", [itemCopy reason]);
    v8 = [PMMPrediction alloc];
    v24[0] = itemCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v10 = [(PMMPrediction *)v8 initWithPredictedItems:v9 expirationDate:v7];

    if ([PMMPredictor _predictionPopulatesSpringboard:itemCopy])
    {
      v11 = __atxlog_handle_pmm();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_22639A000, v11, OS_LOG_TYPE_DEFAULT, "prediction populates springboard, %@", buf, 0xCu);
      }

      [PMMPredictionNotification postPredictionUpdate:v10 consumer:5];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB628], "mmConsumerTypeOfConsumerType:consumerSubType:", 1, 1)}];
      [v5 addObject:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB628], "mmConsumerTypeOfConsumerType:consumerSubType:", 1, 2)}];
      [v5 addObject:v13];
    }
  }

  if ([PMMPredictor _predictionPopulatesStark:itemCopy])
  {
    v14 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v14, OS_LOG_TYPE_DEFAULT, "Prediction populates carplay", buf, 2u);
    }

    v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:30.0];
    v16 = [PMMPrediction alloc];
    v21 = itemCopy;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v18 = [(PMMPrediction *)v16 initWithPredictedItems:v17 expirationDate:v15];

    [PMMPredictionNotification postPredictionUpdate:v18 consumer:3];
    [v5 addObject:&unk_28398B4B0];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)notifyNowPlayingConsumerOfPredictionItem:(id)item
{
  v12[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(PMMPredictor *)self setMostRecentNowPlayingPrediction:itemCopy];
  v5 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "Prediction populates now playing.", v11, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:30.0];
  v7 = [PMMPrediction alloc];
  v12[0] = itemCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [(PMMPrediction *)v7 initWithPredictedItems:v8 expirationDate:v6];

  [PMMPredictionNotification postPredictionUpdate:v9 consumer:2];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_clearAllRecommendationsExceptAppPredictions
{
  v3 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all recommendations, except App Predictions.", v4, 2u);
  }

  [PMMPredictionNotification postPredictionUpdate:0 consumer:5];
  [PMMPredictionNotification postPredictionUpdate:0 consumer:3];
  [PMMPredictionNotification postPredictionUpdate:0 consumer:2];
  [(PMMPredictor *)self setMostRecentNowPlayingPrediction:0];
}

- (void)_clearAllRecommendations
{
  v3 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all recommendations. (1) Clear recommendations for SpringBoard, Stark, and NowPlaying. (2) Clear recommendations for App Predictions.", buf, 2u);
  }

  [(PMMPredictor *)self _clearAllRecommendationsExceptAppPredictions];
  v4 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_DEFAULT, "Clearing recommendations for App Predictions.", v5, 2u);
  }

  [PMMPredictionNotification postPredictionUpdate:0 consumer:1];
  [(PMMPredictor *)self setMostRecentPrediction:0];
}

- (id)expirationForReason:(int64_t)reason
{
  reasonCopy = reason;
  v11 = *MEMORY[0x277D85DE8];
  queue = [(PMMPredictor *)self queue];
  dispatch_assert_queue_V2(queue);

  if ((reasonCopy & 0x10) == 0 && (reasonCopy & 8) != 0)
  {
    v5 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = 300;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "Received a prediction for FirstWakeupOfDay. Setting the expiration date to %lu seconds from now.", &v9, 0xCu);
    }
  }

  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:300.0];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_predictionPopulatesSpringboard:(id)springboard
{
  springboardCopy = springboard;
  keyPathForAppDataDictionary = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v5 = +[PMMContextHelper sharedInstance];
  v6 = [v5 fetchDataDictionaryForKeyPath:keyPathForAppDataDictionary];

  if (v6)
  {
    appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
    v8 = [v6 objectForKeyedSubscript:appBundleIdKey];
  }

  else
  {
    v8 = 0;
  }

  bundleId = [springboardCopy bundleId];
  v10 = [v8 isEqualToString:bundleId];

  return v10 ^ 1;
}

+ (BOOL)_predictionPopulatesContinuity:(id)continuity
{
  continuityCopy = continuity;
  if ([continuityCopy reason] == 8 || !objc_msgSend(continuityCopy, "reason") || objc_msgSend(continuityCopy, "reason") == 512)
  {
    goto LABEL_4;
  }

  [continuityCopy confidence];
  if (v6 >= 0.25)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (([continuityCopy reason] & 0x86) == 0)
  {
LABEL_4:
    v4 = 0;
  }

  else
  {
    v7 = objc_opt_class();
    bundleId = [continuityCopy bundleId];
    v4 = [v7 bundleSupportsINPlayMediaIntentForBundleId:bundleId fromUnitTest:0];
  }

LABEL_5:

  return v4;
}

+ (BOOL)bundleSupportsINPlayMediaIntentForBundleId:(id)id fromUnitTest:(BOOL)test
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CEB3B8] appInfoForBundle:id];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  supportedActions = [v5 supportedActions];
  v9 = [supportedActions containsObject:v7];

  if (v9)
  {
    if (test || ([v5 actionsRestrictedWhileLocked], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v7), v10, !v11))
    {
      v14 = 1;
      goto LABEL_11;
    }

    v12 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      v13 = "Prediction does not support %@ handling while device is locked.";
LABEL_8:
      _os_log_impl(&dword_22639A000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
    }
  }

  else
  {
    v12 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      v13 = "Prediction does not support %@.";
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_recommendingAudioWhileAlreadyPlaying:(id)playing
{
  v22 = *MEMORY[0x277D85DE8];
  playingCopy = playing;
  if (([playingCopy reason] & 0x86) != 0)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v5 = dispatch_semaphore_create(0);
    nowPlayingStatusQueue = [(PMMPredictor *)self nowPlayingStatusQueue];
    v15 = MEMORY[0x277D85DD0];
    v7 = v5;
    MRMediaRemoteGetNowPlayingApplicationPlaybackState();

    if ([MEMORY[0x277D425A0] waitForSemaphore:v7 timeoutSeconds:{5.0, v15, 3221225472, __54__PMMPredictor__recommendingAudioWhileAlreadyPlaying___block_invoke, &unk_278592308}] == 1)
    {
      v8 = __atxlog_handle_pmm();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PMMPredictor _recommendingAudioWhileAlreadyPlaying:v8];
      }

      v9 = 0;
    }

    else
    {
      v11 = __atxlog_handle_pmm();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v17[24];
        *v20 = 67109120;
        v21 = v12;
        _os_log_impl(&dword_22639A000, v11, OS_LOG_TYPE_DEFAULT, "recommending while audio playing, %d", v20, 8u);
      }

      v9 = v17[24];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v10, OS_LOG_TYPE_DEFAULT, "prediction is not audio, BT or stark but it wants to populate NP", buf, 2u);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

+ (BOOL)_predictionPopulatesStark:(id)stark
{
  reason = [stark reason];
  v4 = __atxlog_handle_pmm();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((reason & 0x80) != 0)
  {
    if (v5)
    {
      v10 = 0;
      v6 = "prediction does populate stark";
      v7 = &v10;
LABEL_6:
      _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "prediction does not populate stark because reason is not stark";
    v7 = buf;
    goto LABEL_6;
  }

  return (reason >> 7) & 1;
}

- (void)_updatePredictionBasedOnPreviousDataProtectionStatus:(int64_t)status previousEncryptedDataAvailability:(int64_t)availability
{
  v5 = [(PMMPredictor *)self queue:status];
  dispatch_assert_queue_V2(v5);

  mostRecentPrediction = [(PMMPredictor *)self mostRecentPrediction];
  reason = [mostRecentPrediction reason];

  if ((reason & 8) != 0)
  {
    v8 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v8, OS_LOG_TYPE_DEFAULT, "prediction is first wake up", buf, 2u);
    }

    if ([(PMMPredictor *)self encryptedDataAvailability]== 3)
    {
      v9 = __atxlog_handle_pmm();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_22639A000, v9, OS_LOG_TYPE_DEFAULT, "clearing recommendation based on lock status", v12, 2u);
      }

      [(PMMPredictor *)self _clearAllRecommendations];
    }
  }

  if ([(PMMPredictor *)self encryptedDataAvailability]== 3)
  {
    v10 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22639A000, v10, OS_LOG_TYPE_DEFAULT, "locking, clearing any now playing recommendations", v11, 2u);
    }

    [PMMPredictionNotification postPredictionUpdate:0 consumer:2];
  }
}

- (void)dataProtectionMonitor:(id)monitor encryptedDataAvailbilityDidChange:(int64_t)change
{
  queue = [(PMMPredictor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__PMMPredictor_dataProtectionMonitor_encryptedDataAvailbilityDidChange___block_invoke;
  v7[3] = &unk_278592330;
  v7[4] = self;
  v7[5] = change;
  dispatch_async(queue, v7);
}

uint64_t __72__PMMPredictor_dataProtectionMonitor_encryptedDataAvailbilityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) encryptedDataAvailability];
  [*(a1 + 32) setEncryptedDataAvailability:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [v3 dataProtectionStatus];

  return [v3 _updatePredictionBasedOnPreviousDataProtectionStatus:v4 previousEncryptedDataAvailability:v2];
}

- (void)dataProtectionMonitor:(id)monitor unlockedSinceBoot:(BOOL)boot
{
  queue = [(PMMPredictor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__PMMPredictor_dataProtectionMonitor_unlockedSinceBoot___block_invoke;
  v7[3] = &unk_278592358;
  v7[4] = self;
  bootCopy = boot;
  dispatch_async(queue, v7);
}

- (void)dataProtectionMonitor:(id)monitor dataProtectionStatusDidChange:(int64_t)change
{
  queue = [(PMMPredictor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__PMMPredictor_dataProtectionMonitor_dataProtectionStatusDidChange___block_invoke;
  v7[3] = &unk_278592330;
  v7[4] = self;
  v7[5] = change;
  dispatch_async(queue, v7);
}

uint64_t __68__PMMPredictor_dataProtectionMonitor_dataProtectionStatusDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataProtectionStatus];
  v3 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v7 = 134218240;
    v8 = v2;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "data protection status did change from %ld to %ld", &v7, 0x16u);
  }

  [*(a1 + 32) setDataProtectionStatus:*(a1 + 40)];
  result = [*(a1 + 32) _updatePredictionBasedOnPreviousDataProtectionStatus:v2 previousEncryptedDataAvailability:{objc_msgSend(*(a1 + 32), "encryptedDataAvailability")}];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleNowPlayingInfoDidChange
{
  objc_initWeak(&location, self);
  nowPlayingStatusQueue = [(PMMPredictor *)self nowPlayingStatusQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__PMMPredictor_handleNowPlayingInfoDidChange__block_invoke;
  v4[3] = &unk_278592380;
  objc_copyWeak(&v5, &location);
  dispatch_async(nowPlayingStatusQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__PMMPredictor_handleNowPlayingInfoDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNowPlayingInfoDidChange];
}

- (void)_handleNowPlayingInfoDidChange
{
  nowPlayingStatusQueue = [(PMMPredictor *)self nowPlayingStatusQueue];
  dispatch_assert_queue_V2(nowPlayingStatusQueue);

  v4 = dispatch_group_create();
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  v12 = 0;
  dispatch_group_enter(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PMMPredictor__handleNowPlayingInfoDidChange__block_invoke;
  v8[3] = &unk_2785923A8;
  v10 = v11;
  v5 = v4;
  v9 = v5;
  [(PMMPredictor *)self fetchMediaRemoteNowPlayingApplicationBundleId:v8];
  queue = [(PMMPredictor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PMMPredictor__handleNowPlayingInfoDidChange__block_invoke_2;
  v7[3] = &unk_2785923D0;
  v7[4] = self;
  v7[5] = v11;
  dispatch_group_notify(v5, queue, v7);

  _Block_object_dispose(v11, 8);
}

void __46__PMMPredictor__handleNowPlayingInfoDidChange__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __46__PMMPredictor__handleNowPlayingInfoDidChange__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"duetexpertd"] & 1) == 0)
  {
    [*(a1 + 32) setMostRecentNowPlayingApp:*(*(*(a1 + 40) + 8) + 40)];
    v2 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setDateOfLastNowPlayingEvent:v2];

    v3 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) mostRecentNowPlayingApp];
      v5 = [*(a1 + 32) dateOfLastNowPlayingEvent];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "now playing info did change: %@, %@, ", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchMediaRemoteNowPlayingApplicationPlaybackState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    nowPlayingStatusQueue = [(PMMPredictor *)self nowPlayingStatusQueue];
    v6 = stateCopy;
    MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  }
}

- (void)fetchMediaRemoteNowPlayingApplicationBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    nowPlayingStatusQueue = [(PMMPredictor *)self nowPlayingStatusQueue];
    v6 = idCopy;
    MRMediaRemoteGetClientProperties();
  }
}

uint64_t __62__PMMPredictor_fetchMediaRemoteNowPlayingApplicationBundleId___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
  v3 = *(v1 + 16);

  return v3(v1, BundleIdentifier);
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  observerCopy = observer;
  queue = [(PMMPredictor *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__PMMPredictor_callObserver_callChanged___block_invoke;
  v8[3] = &unk_2785922E0;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_async(queue, v8);
}

void __41__PMMPredictor_callObserver_callChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) calls];
  *(*(a1 + 32) + 8) = [v2 count] != 0;
}

- (void)_publishPredictionWithPredictedApplication:(uint64_t)a1 fromUnitTest:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PMMPredictor.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"predictedApplications"}];
}

@end