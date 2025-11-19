@interface SWScriptsSetupTask
- (SWScriptsSetupTask)initWithScriptsManager:(id)a3;
- (void)performSetup;
@end

@implementation SWScriptsSetupTask

- (SWScriptsSetupTask)initWithScriptsManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWScriptsSetupTask;
  v6 = [(SWScriptsSetupTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scriptsManager, a3);
  }

  return v7;
}

- (void)performSetup
{
  v4 = objc_alloc_init(SWSetupScript);
  v3 = [(SWScriptsSetupTask *)self scriptsManager];
  [v3 addScript:v4];
}

@end