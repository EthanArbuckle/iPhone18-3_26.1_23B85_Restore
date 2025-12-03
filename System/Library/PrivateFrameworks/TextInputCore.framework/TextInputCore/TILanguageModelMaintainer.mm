@interface TILanguageModelMaintainer
+ (id)sharedLanguageModelMaintainer;
- (BOOL)isMaintenanceDue;
- (TILanguageModelMaintainer)init;
- (void)dealloc;
- (void)dynamicLearningCacheTimerFired:(id)fired;
- (void)keyboardActivityDidTransition:(id)transition;
- (void)performMaintenanceIfNecessary;
- (void)touchDynamicLearningCacheTimer;
@end

@implementation TILanguageModelMaintainer

- (void)dynamicLearningCacheTimerFired:(id)fired
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TILanguageModelMaintainer dynamicLearningCacheTimerFired:]";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Clearing dynamic learning caches", &v4, 0xCu);
  }

  +[TILanguageModelLoaderManager clearDynamicLearningCaches];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)performMaintenanceIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(TILanguageModelMaintainer *)self isMaintenanceDue])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v3 = TIOSLogFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Perform language model maintenance", "-[TILanguageModelMaintainer performMaintenanceIfNecessary]"];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1800.0];
    [(TILanguageModelMaintainer *)self setNextEligibleMaintenanceDate:v4];

    +[TILanguageModelLoaderManager performMaintenance];
    if (_os_feature_enabled_impl())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[TILanguageModelMaintainer performMaintenanceIfNecessary]";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Performing transient lexicon maintenance (reloading named entities)", buf, 0xCu);
      }

      v5 = +[TITransientLexiconManager sharedInstance];
      [v5 performMaintenance];

      v6 = +[TIKeyboardInputManagerLoader sharedLoader];
      [v6 releaseAllLanguageModelBuffers];

      v7 = +[TIKeyboardInputManagerLoader sharedLoader];
      [v7 releaseAllInputManagers];
    }

    mEMORY[0x277D46BD8] = [MEMORY[0x277D46BD8] sharedManager];
    [mEMORY[0x277D46BD8] flushDynamicData];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TILanguageModelPerformBackgroundMaintenanceNotification" object:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMaintenanceDue
{
  nextEligibleMaintenanceDate = [(TILanguageModelMaintainer *)self nextEligibleMaintenanceDate];
  if (nextEligibleMaintenanceDate)
  {
    nextEligibleMaintenanceDate2 = [(TILanguageModelMaintainer *)self nextEligibleMaintenanceDate];
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [nextEligibleMaintenanceDate2 compare:date] == -1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)touchDynamicLearningCacheTimer
{
  dynamicLearningCacheTimer = [(TILanguageModelMaintainer *)self dynamicLearningCacheTimer];
  isValid = [dynamicLearningCacheTimer isValid];

  if (isValid)
  {
    dynamicLearningCacheTimer2 = [(TILanguageModelMaintainer *)self dynamicLearningCacheTimer];
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:900.0];
    [dynamicLearningCacheTimer2 setFireDate:v5];
  }

  else
  {
    dynamicLearningCacheTimer2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_dynamicLearningCacheTimerFired_ selector:0 userInfo:0 repeats:900.0];
    [(TILanguageModelMaintainer *)self setDynamicLearningCacheTimer:?];
  }
}

- (void)keyboardActivityDidTransition:(id)transition
{
  v10 = *MEMORY[0x277D85DE8];
  toState = [transition toState];
  if (toState == 3)
  {
    v7 = *MEMORY[0x277D85DE8];

    [(TILanguageModelMaintainer *)self performMaintenanceIfNecessary];
  }

  else
  {
    if (toState == 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[TILanguageModelMaintainer keyboardActivityDidTransition:]";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Setting dynamic learning cache timer", &v8, 0xCu);
      }

      [(TILanguageModelMaintainer *)self touchDynamicLearningCacheTimer];
    }

    else if (toState == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[TILanguageModelMaintainer keyboardActivityDidTransition:]";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Invalidating dynamic learning cache timer", &v8, 0xCu);
      }

      dynamicLearningCacheTimer = [(TILanguageModelMaintainer *)self dynamicLearningCacheTimer];
      [dynamicLearningCacheTimer invalidate];
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (TILanguageModelMaintainer)init
{
  v7.receiver = self;
  v7.super_class = TILanguageModelMaintainer;
  v2 = [(TILanguageModelMaintainer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    nextEligibleMaintenanceDate = v2->_nextEligibleMaintenanceDate;
    v2->_nextEligibleMaintenanceDate = v3;

    v5 = +[TIKeyboardActivityController sharedController];
    [v5 addActivityObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[TIKeyboardActivityController sharedController];
  [v3 removeActivityObserver:self];

  v4.receiver = self;
  v4.super_class = TILanguageModelMaintainer;
  [(TILanguageModelMaintainer *)&v4 dealloc];
}

+ (id)sharedLanguageModelMaintainer
{
  if (sharedLanguageModelMaintainer_onceToken != -1)
  {
    dispatch_once(&sharedLanguageModelMaintainer_onceToken, &__block_literal_global_19633);
  }

  v3 = sharedLanguageModelMaintainer___sharedInstance;

  return v3;
}

uint64_t __58__TILanguageModelMaintainer_sharedLanguageModelMaintainer__block_invoke()
{
  v0 = objc_alloc_init(TILanguageModelMaintainer);
  v1 = sharedLanguageModelMaintainer___sharedInstance;
  sharedLanguageModelMaintainer___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end