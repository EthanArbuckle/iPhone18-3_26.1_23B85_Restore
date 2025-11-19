@interface SBHTrialClientManager
- (BOOL)widgetDiscoverabilityGoSwitchEnabled;
- (SBHTrialClientManager)init;
- (void)immediatelyFetchSpringBoardHomeNamespace;
@end

@implementation SBHTrialClientManager

- (SBHTrialClientManager)init
{
  v6.receiver = self;
  v6.super_class = SBHTrialClientManager;
  v2 = [(SBHTrialClientManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DB518] client];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;
  }

  return v2;
}

- (void)immediatelyFetchSpringBoardHomeNamespace
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v14[0] = @"SPRINGBOARD_HOME";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v5 = [v3 setWithArray:v4];

  v6 = [(SBHTrialClientManager *)self trialClient];
  v11 = 0;
  v7 = [v6 immediateDownloadForNamespaceNames:v5 allowExpensiveNetworking:1 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Immediate download onboarding factor error: %@", buf, 0xCu);
    }
  }

  if ((v7 & 1) == 0)
  {
    v10 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Immediate download onboarding factor failed.", buf, 2u);
    }
  }
}

- (BOOL)widgetDiscoverabilityGoSwitchEnabled
{
  v2 = [(SBHTrialClientManager *)self trialClient];
  v3 = [v2 levelForFactor:@"goSwitch" withNamespaceName:@"SPRINGBOARD_HOME"];

  LOBYTE(v2) = [v3 BOOLeanValue];
  return v2;
}

@end