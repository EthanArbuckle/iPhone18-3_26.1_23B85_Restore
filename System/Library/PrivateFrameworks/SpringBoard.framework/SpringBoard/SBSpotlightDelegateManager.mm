@interface SBSpotlightDelegateManager
+ (SBSpotlightDelegateManager)sharedInstance;
- (SBSpotlightDelegateManager)init;
- (id)activeDelegate;
- (void)_modifyDelegatesWithBlock:(id)a3;
- (void)addSpotlightDelegate:(id)a3 forLevel:(unint64_t)a4;
- (void)dismissSearchView;
- (void)removeSpotlightDelegate:(id)a3 forLevel:(unint64_t)a4;
- (void)searchViewContentAvailabilityDidChange;
- (void)searchViewKeyboardPresentationStateDidChange;
- (void)spotlightActivationRequestServerDidRequestSpotlightActivation:(id)a3;
@end

@implementation SBSpotlightDelegateManager

+ (SBSpotlightDelegateManager)sharedInstance
{
  if (sharedInstance_onceToken_33 != -1)
  {
    +[SBSpotlightDelegateManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_4;

  return v3;
}

void __44__SBSpotlightDelegateManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBSpotlightDelegateManager);
  v1 = sharedInstance_sharedInstance_4;
  sharedInstance_sharedInstance_4 = v0;
}

- (SBSpotlightDelegateManager)init
{
  v6.receiver = self;
  v6.super_class = SBSpotlightDelegateManager;
  v2 = [(SBSpotlightDelegateManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D66C38]) initWithDelegate:v2];
    activationRequestServer = v2->_activationRequestServer;
    v2->_activationRequestServer = v3;

    [(SBSSpotlightActivationRequestServer *)v2->_activationRequestServer startServer];
  }

  return v2;
}

- (void)addSpotlightDelegate:(id)a3 forLevel:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a4 >= 4)
  {
    [SBSpotlightDelegateManager addSpotlightDelegate:a2 forLevel:self];
  }

  v8 = SBLogSpotlight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a4;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Adding Spotlight delegate at level %ld: %{public}@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SBSpotlightDelegateManager_addSpotlightDelegate_forLevel___block_invoke;
  v10[3] = &unk_2783AB2A8;
  v11 = v7;
  v12 = a4;
  v10[4] = self;
  v9 = v7;
  [(SBSpotlightDelegateManager *)self _modifyDelegatesWithBlock:v10];
}

void __60__SBSpotlightDelegateManager_addSpotlightDelegate_forLevel___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = a1[4];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1[4] + 16);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v9 = [v2 objectForKey:v6];

  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1[4] + 16);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    [v7 setObject:v9 forKey:v8];
  }

  [v9 addObject:a1[5]];
}

- (void)removeSpotlightDelegate:(id)a3 forLevel:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a4 >= 4)
  {
    [SBSpotlightDelegateManager removeSpotlightDelegate:a2 forLevel:self];
  }

  v8 = SBLogSpotlight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a4;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Removing Spotlight delegate at level %ld: %{public}@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBSpotlightDelegateManager_removeSpotlightDelegate_forLevel___block_invoke;
  v10[3] = &unk_2783AB2A8;
  v11 = v7;
  v12 = a4;
  v10[4] = self;
  v9 = v7;
  [(SBSpotlightDelegateManager *)self _modifyDelegatesWithBlock:v10];
}

void __63__SBSpotlightDelegateManager_removeSpotlightDelegate_forLevel___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v6 = [v2 objectForKey:v3];

  [v6 removeObject:a1[5]];
  if (![v6 count])
  {
    v4 = *(a1[4] + 16);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    [v4 removeObjectForKey:v5];
  }
}

- (id)activeDelegate
{
  v3 = 3;
  do
  {
    delegatesForLevel = self->_delegatesForLevel;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v6 = [(NSMutableDictionary *)delegatesForLevel objectForKey:v5];

    v7 = [v6 lastObject];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3 == 0;
    }

    --v3;
  }

  while (!v8);

  return v7;
}

- (void)_modifyDelegatesWithBlock:(id)a3
{
  v4 = a3;
  v6 = [(SBSpotlightDelegateManager *)self activeDelegate];
  v4[2](v4);

  v5 = [(SBSpotlightDelegateManager *)self activeDelegate];
  if (v6 != v5)
  {
    [v5 didBecomeActiveDelegate];
    [v6 didResignActiveDelegate:v5 == 0];
  }
}

- (void)dismissSearchView
{
  v2 = [(SBSpotlightDelegateManager *)self activeDelegate];
  [v2 dismissSearchView];
}

- (void)searchViewKeyboardPresentationStateDidChange
{
  v2 = [(SBSpotlightDelegateManager *)self activeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 searchViewKeyboardPresentationStateDidChange];
  }
}

- (void)searchViewContentAvailabilityDidChange
{
  v2 = [(SBSpotlightDelegateManager *)self activeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 searchViewContentAvailabilityDidChange];
  }
}

- (void)spotlightActivationRequestServerDidRequestSpotlightActivation:(id)a3
{
  if (!SBSpotlightIsVisible())
  {
    v3 = SBApp;

    [v3 toggleSearchOnWindowScene:0 fromBreadcrumbSource:0 withWillBeginHandler:&__block_literal_global_70_1 completionHandler:&__block_literal_global_72_0];
  }
}

- (void)addSpotlightDelegate:(uint64_t)a1 forLevel:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSpotlightMultiplexingViewController.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"level < SBSpotlightMultiplexingLevelCount"}];
}

- (void)removeSpotlightDelegate:(uint64_t)a1 forLevel:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSpotlightMultiplexingViewController.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"level < SBSpotlightMultiplexingLevelCount"}];
}

@end