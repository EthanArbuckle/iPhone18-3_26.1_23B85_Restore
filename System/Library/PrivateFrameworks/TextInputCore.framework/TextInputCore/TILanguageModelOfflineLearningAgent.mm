@interface TILanguageModelOfflineLearningAgent
+ (id)sharedLearningAgent;
- (BOOL)continueLearningTaskWithStrategy:(id)strategy;
- (TILanguageModelOfflineLearningAgent)init;
- (void)handleRemovalOfLearnedModels;
- (void)performLearningIfNecessaryWithStrategy:(id)strategy lastAdaptationTime:(double)time;
@end

@implementation TILanguageModelOfflineLearningAgent

- (void)handleRemovalOfLearnedModels
{
  v10 = *MEMORY[0x277D85DE8];
  currentLearningTask = [(TILanguageModelOfflineLearningAgent *)self currentLearningTask];

  if (currentLearningTask)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Canceling learning due to a Reset Keyboard Dictionary event.", "-[TILanguageModelOfflineLearningAgent handleRemovalOfLearnedModels]"];
        *buf = 138412290;
        v9 = v7;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    currentLearningTask2 = [(TILanguageModelOfflineLearningAgent *)self currentLearningTask];
    [currentLearningTask2 setCancelled:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performLearningIfNecessaryWithStrategy:(id)strategy lastAdaptationTime:(double)time
{
  v25 = *MEMORY[0x277D85DE8];
  strategyCopy = strategy;
  v7 = strategyCopy;
  if (time == 0.0)
  {
    learningTask = [strategyCopy learningTask];

    if (learningTask)
    {
      v9 = +[TIKeyboardAssertionManager sharedAssertionManager];
      [v9 retainBackgroundActivityAssertion];

      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__23529;
      v21 = __Block_byref_object_dispose__23530;
      v22 = v7;
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v10 = TIOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = MEMORY[0x277CCACA8];
        learningTask2 = [v18[5] learningTask];
        clientIdentifier = [learningTask2 clientIdentifier];
        v16 = [v13 stringWithFormat:@"%s Beginning offline learing task for client '%@'", "-[TILanguageModelOfflineLearningAgent performLearningIfNecessaryWithStrategy:lastAdaptationTime:]", clientIdentifier];
        *buf = 138412290;
        v24 = v16;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      dispatchQueue = [(TILanguageModelOfflineLearningAgent *)self dispatchQueue];
      TIDispatchAsync();

      _Block_object_dispose(&v17, 8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __97__TILanguageModelOfflineLearningAgent_performLearningIfNecessaryWithStrategy_lastAdaptationTime___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) learningTask];
  v7 = *(a1 + 32);
  v3 = v2;
  TIDispatchSync();
  v4 = [v3 dataSource];

  if (v4)
  {
      ;
    }
  }

  v6 = *(a1 + 32);
  v5 = MEMORY[0x277D85CD0];
  TIDispatchSync();
}

uint64_t __97__TILanguageModelOfflineLearningAgent_performLearningIfNecessaryWithStrategy_lastAdaptationTime___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v2 = TIOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [*(*(*(a1 + 40) + 8) + 40) learningTask];
    v10 = [v9 clientIdentifier];
    v11 = [v8 stringWithFormat:@"%s Finished offline learing task for client '%@'", "-[TILanguageModelOfflineLearningAgent performLearningIfNecessaryWithStrategy:lastAdaptationTime:]_block_invoke_3", v10];
    *buf = 138412290;
    v13 = v11;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v5 releaseBackgroundActivityAssertion];

  result = [*(a1 + 32) setCurrentLearningTask:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)continueLearningTaskWithStrategy:(id)strategy
{
  v40 = *MEMORY[0x277D85DE8];
  strategyCopy = strategy;
  v5 = objc_autoreleasePoolPush();
  currentLearningTask = [(TILanguageModelOfflineLearningAgent *)self currentLearningTask];
  dataSource = [currentLearningTask dataSource];
  nextOutgoingMessageBatch = [dataSource nextOutgoingMessageBatch];

  if (nextOutgoingMessageBatch)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = [nextOutgoingMessageBatch count];
        clientIdentifier = [currentLearningTask clientIdentifier];
        v29 = [v26 stringWithFormat:@"%s Retrieved %lu messages from %@ for %@", "-[TILanguageModelOfflineLearningAgent continueLearningTaskWithStrategy:]", v27, currentLearningTask, clientIdentifier];
        *buf = 138412290;
        v39 = v29;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v10 = [strategyCopy filterMessages:nextOutgoingMessageBatch];

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    currentLearningTask3 = v10;
    v13 = [currentLearningTask3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(currentLearningTask3);
          }

          recipient = [*(*(&v33 + 1) + 8 * i) recipient];
          v18 = [recipient copy];

          if ([v18 length])
          {
            [v11 addObject:v18];
          }
        }

        v14 = [currentLearningTask3 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
    }

    v19 = [TILanguageModelOfflineLearningAgent contactRecordsForRecipients:v11];
    v20 = [strategyCopy learnMessages:currentLearningTask3 withRecipientRecords:v19];
  }

  else
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v21 = TIOSLogFacility();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v30 = MEMORY[0x277CCACA8];
        clientIdentifier2 = [currentLearningTask clientIdentifier];
        v32 = [v30 stringWithFormat:@"%s Finished importing data for %@", "-[TILanguageModelOfflineLearningAgent continueLearningTaskWithStrategy:]", clientIdentifier2];
        *buf = 138412290;
        v39 = v32;
        _os_log_debug_impl(&dword_22CA55000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [strategyCopy didFinishLearning];
    currentLearningTask2 = [(TILanguageModelOfflineLearningAgent *)self currentLearningTask];
    [currentLearningTask2 didFinishLearning];

    v23 = objc_opt_class();
    currentLearningTask3 = [(TILanguageModelOfflineLearningAgent *)self currentLearningTask];
    [v23 didFinishLearningWithAgent:self task:currentLearningTask3];
    v20 = 0;
  }

  objc_autoreleasePoolPop(v5);
  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (TILanguageModelOfflineLearningAgent)init
{
  v7.receiver = self;
  v7.super_class = TILanguageModelOfflineLearningAgent;
  v2 = [(TILanguageModelOfflineLearningAgent *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.language-model.offline-learning", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

+ (id)sharedLearningAgent
{
  if (+[TILanguageModelOfflineLearningAgent sharedLearningAgent]::onceToken != -1)
  {
    dispatch_once(&+[TILanguageModelOfflineLearningAgent sharedLearningAgent]::onceToken, &__block_literal_global_23559);
  }

  v3 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent]::__sharedInstance;

  return v3;
}

uint64_t __58__TILanguageModelOfflineLearningAgent_sharedLearningAgent__block_invoke()
{
  v0 = objc_alloc_init(TILanguageModelOfflineLearningAgent);
  v1 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent]::__sharedInstance;
  +[TILanguageModelOfflineLearningAgent sharedLearningAgent]::__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end