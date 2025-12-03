@interface TIKeyboardAssertionManager
+ (id)sharedAssertionManager;
+ (id)singletonInstance;
+ (void)setSharedAssertionManager:(id)manager;
- (TIKeyboardAssertionManager)init;
- (void)addAssertionForObject:(id)object;
- (void)performBackgroundActivityUpdate;
- (void)performUpdate;
- (void)releaseBackgroundActivityAssertion;
- (void)removeAssertionForObject:(id)object;
- (void)retainBackgroundActivityAssertion;
- (void)scheduleUpdate;
@end

@implementation TIKeyboardAssertionManager

- (void)scheduleUpdate
{
  if (![(TIKeyboardAssertionManager *)self pendingUpdate])
  {
    [(TIKeyboardAssertionManager *)self setPendingUpdate:1];

    [(TIKeyboardAssertionManager *)self performSelectorOnMainThread:sel_performUpdate withObject:0 waitUntilDone:0];
  }
}

+ (id)sharedAssertionManager
{
  if (__testingInstance_21834)
  {
    v2 = __testingInstance_21834;
  }

  else
  {
    v2 = +[TIKeyboardAssertionManager singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_21829 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_21829, &__block_literal_global_21830);
  }

  v3 = singletonInstance_singletonInstance_21831;

  return v3;
}

- (void)performUpdate
{
  [(TIKeyboardAssertionManager *)self setPendingUpdate:0];
  assertions = [(TIKeyboardAssertionManager *)self assertions];
  v4 = [assertions count];

  if ((v4 != 0) != [(TIKeyboardAssertionManager *)self hasAssertions])
  {
    [(TIKeyboardAssertionManager *)self setHasAssertions:v4 != 0];
    delegate = [(TIKeyboardAssertionManager *)self delegate];
    [delegate keyboardAssertionsDidChange];
  }
}

- (void)releaseBackgroundActivityAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(TIKeyboardAssertionManager *)self backgroundActivityAssertions]>= 1)
    {
      [(TIKeyboardAssertionManager *)self setBackgroundActivityAssertions:[(TIKeyboardAssertionManager *)self backgroundActivityAssertions]- 1];
    }

    [(TIKeyboardAssertionManager *)self performBackgroundActivityUpdate];
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s decrement background activity assertions (count=%ld)", "-[TIKeyboardAssertionManager releaseBackgroundActivityAssertion]", -[TIKeyboardAssertionManager backgroundActivityAssertions](self, "backgroundActivityAssertions")];
        *buf = 138412290;
        v9 = v7;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    [(TIKeyboardAssertionManager *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)retainBackgroundActivityAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(TIKeyboardAssertionManager *)self setBackgroundActivityAssertions:[(TIKeyboardAssertionManager *)self backgroundActivityAssertions]+ 1];
    [(TIKeyboardAssertionManager *)self performBackgroundActivityUpdate];
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s increment background activity assertions (count=%ld)", "-[TIKeyboardAssertionManager retainBackgroundActivityAssertion]", -[TIKeyboardAssertionManager backgroundActivityAssertions](self, "backgroundActivityAssertions")];
        *buf = 138412290;
        v9 = v7;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    [(TIKeyboardAssertionManager *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:1];
  }
}

- (void)removeAssertionForObject:(id)object
{
  objectCopy = object;
  assertions = [(TIKeyboardAssertionManager *)self assertions];
  [assertions removeObject:objectCopy];

  [(TIKeyboardAssertionManager *)self scheduleUpdate];
}

- (void)addAssertionForObject:(id)object
{
  objectCopy = object;
  assertions = [(TIKeyboardAssertionManager *)self assertions];
  [assertions addObject:objectCopy];

  [(TIKeyboardAssertionManager *)self scheduleUpdate];
}

- (void)performBackgroundActivityUpdate
{
  backgroundActivityAssertions = [(TIKeyboardAssertionManager *)self backgroundActivityAssertions];
  if ([(TIKeyboardAssertionManager *)self hasBackgroundActivityAssertions]!= backgroundActivityAssertions > 0)
  {
    [(TIKeyboardAssertionManager *)self setHasBackgroundActivityAssertions:backgroundActivityAssertions > 0];
    delegate = [(TIKeyboardAssertionManager *)self delegate];
    [delegate backgroundActivityAssertionsDidChange];
  }
}

- (TIKeyboardAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = TIKeyboardAssertionManager;
  v2 = [(TIKeyboardAssertionManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

uint64_t __47__TIKeyboardAssertionManager_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TIKeyboardAssertionManager);
  v1 = singletonInstance_singletonInstance_21831;
  singletonInstance_singletonInstance_21831 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setSharedAssertionManager:(id)manager
{
  managerCopy = manager;
  if (__testingInstance_21834 != managerCopy)
  {
    v5 = managerCopy;
    objc_storeStrong(&__testingInstance_21834, manager);
    managerCopy = v5;
  }
}

@end