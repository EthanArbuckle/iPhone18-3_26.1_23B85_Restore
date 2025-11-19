@interface WBSDomainAllowListManager
- (WBSDomainAllowListManager)init;
- (WBSDomainAllowListManager)initWithBuiltInAllowListURL:(id)a3 downloadsDirectoryURL:(id)a4 resourceName:(id)a5 resourceVersion:(id)a6 updateDateDefaultsKey:(id)a7 updateInterval:(double)a8;
- (void)isDomainAllowed:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSDomainAllowListManager

- (WBSDomainAllowListManager)init
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 doubleForKey:@"DebugAutoplayWhitelistConfigurationUpdateInterval"];
  v5 = v4;

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"SitesAllowedToAutoplay" withExtension:@"plist"];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 safari_settingsDirectoryURL];
  v10 = 86400.0;
  if (v5 != 0.0)
  {
    v10 = v5;
  }

  v11 = [(WBSDomainAllowListManager *)self initWithBuiltInAllowListURL:v7 downloadsDirectoryURL:v9 resourceName:@"SitesAllowedToAutoplay" resourceVersion:@"1" updateDateDefaultsKey:@"AutoplayPolicyWhitelistConfigurationUpdateDate" updateInterval:v10];

  return v11;
}

- (WBSDomainAllowListManager)initWithBuiltInAllowListURL:(id)a3 downloadsDirectoryURL:(id)a4 resourceName:(id)a5 resourceVersion:(id)a6 updateDateDefaultsKey:(id)a7 updateInterval:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v26.receiver = self;
  v26.super_class = WBSDomainAllowListManager;
  v19 = [(WBSDomainAllowListManager *)&v26 init];
  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E69C89E0]);
    v21 = objc_opt_class();
    v22 = [v20 initWithDataFormat:0 builtInListURL:v14 downloadsDirectoryURL:v15 resourceName:v16 resourceVersion:v17 updateDateDefaultsKey:v18 updateInterval:a8 snapshotClass:v21 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v19->_remotelyUpdatableDataController;
    v19->_remotelyUpdatableDataController = v22;

    if (a8 != 0.0)
    {
      [(WBSRemotelyUpdatableDataController *)v19->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
    }

    v24 = v19;
  }

  return v19;
}

- (void)isDomainAllowed:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__WBSDomainAllowListManager_isDomainAllowed_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5598;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
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