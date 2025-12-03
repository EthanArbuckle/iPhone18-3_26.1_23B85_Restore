@interface SBTipsHomeScreenUsageObserver
- (SBHIconManager)iconManager;
- (SBTipsHomeScreenUsageObserver)initWithIconManager:(id)manager;
- (void)homeScreenUsageAggregatorDidNoteEditingModeEntered:(id)entered;
@end

@implementation SBTipsHomeScreenUsageObserver

- (SBTipsHomeScreenUsageObserver)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBTipsHomeScreenUsageObserver;
  v5 = [(SBTipsHomeScreenUsageObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    [managerCopy setUsageMonitoringEnabled:1];
    usageMonitor = [managerCopy usageMonitor];
    [usageMonitor addObserver:v6];
  }

  return v6;
}

- (void)homeScreenUsageAggregatorDidNoteEditingModeEntered:(id)entered
{
  v3 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v3, &__block_literal_global_230);
}

void __84__SBTipsHomeScreenUsageObserver_homeScreenUsageAggregatorDidNoteEditingModeEntered___block_invoke()
{
  v2 = [MEMORY[0x277CF1B58] discoverabilitySignal];
  v0 = [v2 source];
  v1 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:@"com.apple.springboard.homescreen.didEnterEditMode" bundleID:@"com.apple.springboard" context:0 userInfo:0];
  [v0 sendEvent:v1];
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

@end