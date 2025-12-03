@interface WBSOfflineSearchRemoteDisablementManager
+ (WBSOfflineSearchRemoteDisablementManager)sharedManager;
- (WBSOfflineSearchRemoteDisablementManager)init;
- (void)areOfflineSearchSuggestionsDisabled:(id)disabled;
@end

@implementation WBSOfflineSearchRemoteDisablementManager

+ (WBSOfflineSearchRemoteDisablementManager)sharedManager
{
  if (sharedManager_onceToken_3 != -1)
  {
    +[WBSOfflineSearchRemoteDisablementManager sharedManager];
  }

  v3 = sharedManager_sharedManager_1;

  return v3;
}

void __57__WBSOfflineSearchRemoteDisablementManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSOfflineSearchRemoteDisablementManager);
  v1 = sharedManager_sharedManager_1;
  sharedManager_sharedManager_1 = v0;
}

- (WBSOfflineSearchRemoteDisablementManager)init
{
  v13.receiver = self;
  v13.super_class = WBSOfflineSearchRemoteDisablementManager;
  v2 = [(WBSOfflineSearchRemoteDisablementManager *)&v13 init];
  if (v2)
  {
    safari_safariSharedBundle = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
    v4 = [safari_safariSharedBundle URLForResource:@"WBSOfflineSearchRemoteDisablementDefaultConfig" withExtension:@"plist"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];

    v7 = objc_alloc(MEMORY[0x1E69C89E0]);
    v8 = objc_opt_class();
    v9 = [v7 initWithDataFormat:0 builtInListURL:v4 downloadsDirectoryURL:safari_settingsDirectoryURL resourceName:@"OfflineSearchRemoteDisablement" resourceVersion:@"1" updateDateDefaultsKey:@"WBSOfflineSearchDisablementKey" updateInterval:86400.0 snapshotClass:v8 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v2->_remotelyUpdatableDataController;
    v2->_remotelyUpdatableDataController = v9;

    [(WBSRemotelyUpdatableDataController *)v2->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
    v11 = v2;
  }

  return v2;
}

- (void)areOfflineSearchSuggestionsDisabled:(id)disabled
{
  disabledCopy = disabled;
  mEMORY[0x1E69C8A48] = [MEMORY[0x1E69C8A48] sharedObserver];
  isGoogleEnabledSearchEngine = [mEMORY[0x1E69C8A48] isGoogleEnabledSearchEngine];

  if ((isGoogleEnabledSearchEngine & 1) == 0)
  {
    disabledCopy[2](disabledCopy, 0);
  }

  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__WBSOfflineSearchRemoteDisablementManager_areOfflineSearchSuggestionsDisabled___block_invoke;
  v9[3] = &unk_1E7FC87F8;
  v10 = disabledCopy;
  v8 = disabledCopy;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v9];
}

void __80__WBSOfflineSearchRemoteDisablementManager_areOfflineSearchSuggestionsDisabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69C8A48];
  v4 = a2;
  v7 = [v3 sharedObserver];
  v5 = [v7 defaultSearchEngineShortName];
  v6 = [v4 areOfflineSearchSuggestionsDisabledRemotelyForSearchProvider:v5];

  (*(v2 + 16))(v2, v6);
}

@end