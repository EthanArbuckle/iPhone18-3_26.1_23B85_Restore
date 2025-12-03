@interface SWScriptsSetupTask
- (SWScriptsSetupTask)initWithScriptsManager:(id)manager;
- (void)performSetup;
@end

@implementation SWScriptsSetupTask

- (SWScriptsSetupTask)initWithScriptsManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SWScriptsSetupTask;
  v6 = [(SWScriptsSetupTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scriptsManager, manager);
  }

  return v7;
}

- (void)performSetup
{
  v4 = objc_alloc_init(SWSetupScript);
  scriptsManager = [(SWScriptsSetupTask *)self scriptsManager];
  [scriptsManager addScript:v4];
}

@end