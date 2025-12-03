@interface SBApplicationService
+ (id)sharedInstance;
- (id)_initWithApplicationController:(id)controller;
- (void)applicationServer:(id)server client:(id)client deleteSnapshotsForApplicationIdentifier:(id)identifier;
@end

@implementation SBApplicationService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[SBApplicationService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_4;

  return v3;
}

void __38__SBApplicationService_sharedInstance__block_invoke()
{
  v0 = [SBApplicationService alloc];
  v3 = +[SBApplicationController sharedInstance];
  v1 = [(SBApplicationService *)v0 _initWithApplicationController:v3];
  v2 = sharedInstance___sharedInstance_4;
  sharedInstance___sharedInstance_4 = v1;
}

- (id)_initWithApplicationController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBApplicationService;
  v6 = [(SBApplicationService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationController, controller);
    v8 = +[SBApplicationServer sharedInstance];
    [v8 setMiscDelegate:v7];
  }

  return v7;
}

- (void)applicationServer:(id)server client:(id)client deleteSnapshotsForApplicationIdentifier:(id)identifier
{
  clientCopy = client;
  identifierCopy = identifier;
  processHandle = [clientCopy processHandle];
  if (([processHandle hasEntitlement:@"com.apple.frontboard.delete-application-snapshots"] & 1) != 0 || objc_msgSend(processHandle, "hasEntitlement:", @"com.apple.springboard.delete-application-snapshots"))
  {
    v10 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:identifierCopy];
    v11 = v10;
    if (v10)
    {
      [v10 deleteAllSnapshots];
      [v11 _clearSceneTitles];
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationService applicationServer:identifierCopy client:clientCopy deleteSnapshotsForApplicationIdentifier:v11];
    }
  }
}

- (void)applicationServer:(uint64_t)a1 client:(uint64_t)a2 deleteSnapshotsForApplicationIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Unable to delete snapshots for bundle identifier: %{public}@ because client: %{public}@ does not have the proper authorization permissions required.", &v3, 0x16u);
}

@end