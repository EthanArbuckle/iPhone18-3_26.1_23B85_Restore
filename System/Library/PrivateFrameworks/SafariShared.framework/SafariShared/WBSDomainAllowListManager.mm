@interface WBSDomainAllowListManager
- (WBSDomainAllowListManager)init;
- (WBSDomainAllowListManager)initWithBuiltInAllowListURL:(id)l downloadsDirectoryURL:(id)rL resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval;
- (void)isDomainAllowed:(id)allowed completionHandler:(id)handler;
@end

@implementation WBSDomainAllowListManager

- (WBSDomainAllowListManager)init
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"DebugAutoplayWhitelistConfigurationUpdateInterval"];
  v5 = v4;

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"SitesAllowedToAutoplay" withExtension:@"plist"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v10 = 86400.0;
  if (v5 != 0.0)
  {
    v10 = v5;
  }

  v11 = [(WBSDomainAllowListManager *)self initWithBuiltInAllowListURL:v7 downloadsDirectoryURL:safari_settingsDirectoryURL resourceName:@"SitesAllowedToAutoplay" resourceVersion:@"1" updateDateDefaultsKey:@"AutoplayPolicyWhitelistConfigurationUpdateDate" updateInterval:v10];

  return v11;
}

- (WBSDomainAllowListManager)initWithBuiltInAllowListURL:(id)l downloadsDirectoryURL:(id)rL resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  versionCopy = version;
  keyCopy = key;
  v26.receiver = self;
  v26.super_class = WBSDomainAllowListManager;
  v19 = [(WBSDomainAllowListManager *)&v26 init];
  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E69C89E0]);
    v21 = objc_opt_class();
    v22 = [v20 initWithDataFormat:0 builtInListURL:lCopy downloadsDirectoryURL:rLCopy resourceName:nameCopy resourceVersion:versionCopy updateDateDefaultsKey:keyCopy updateInterval:interval snapshotClass:v21 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v19->_remotelyUpdatableDataController;
    v19->_remotelyUpdatableDataController = v22;

    if (interval != 0.0)
    {
      [(WBSRemotelyUpdatableDataController *)v19->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
    }

    v24 = v19;
  }

  return v19;
}

- (void)isDomainAllowed:(id)allowed completionHandler:(id)handler
{
  allowedCopy = allowed;
  handlerCopy = handler;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__WBSDomainAllowListManager_isDomainAllowed_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5598;
  v12 = allowedCopy;
  v13 = handlerCopy;
  v9 = allowedCopy;
  v10 = handlerCopy;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v11];
}

uint64_t __63__WBSDomainAllowListManager_isDomainAllowed_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 isDomainAllowed:*(a1 + 32)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end