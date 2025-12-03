@interface WBSUserAgentQuirksManager
- (WBSUserAgentQuirksManager)init;
- (WBSUserAgentQuirksManager)initWithBuiltInQuirkListURL:(id)l downloadsDirectoryURL:(id)rL resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval;
- (void)getQuirksForURLString:(id)string withDefaultUserAgent:(id)agent completionHandler:(id)handler;
@end

@implementation WBSUserAgentQuirksManager

- (WBSUserAgentQuirksManager)init
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"DebugUserAgentQuirksConfigurationUpdateInterval"];
  v5 = v4;

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"UserAgentQuirks" withExtension:@"plist"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v10 = 86400.0;
  if (v5 != 0.0)
  {
    v10 = v5;
  }

  v11 = [(WBSUserAgentQuirksManager *)self initWithBuiltInQuirkListURL:v7 downloadsDirectoryURL:safari_settingsDirectoryURL resourceName:@"UserAgentQuirks" resourceVersion:@"1" updateDateDefaultsKey:@"UserAgentQuirksConfigurationUpdateDate" updateInterval:v10];

  return v11;
}

- (WBSUserAgentQuirksManager)initWithBuiltInQuirkListURL:(id)l downloadsDirectoryURL:(id)rL resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  versionCopy = version;
  keyCopy = key;
  v26.receiver = self;
  v26.super_class = WBSUserAgentQuirksManager;
  v19 = [(WBSUserAgentQuirksManager *)&v26 init];
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

- (void)getQuirksForURLString:(id)string withDefaultUserAgent:(id)agent completionHandler:(id)handler
{
  stringCopy = string;
  agentCopy = agent;
  handlerCopy = handler;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__WBSUserAgentQuirksManager_getQuirksForURLString_withDefaultUserAgent_completionHandler___block_invoke;
  v15[3] = &unk_1E7FCB2F8;
  v17 = agentCopy;
  v18 = handlerCopy;
  v16 = stringCopy;
  v12 = agentCopy;
  v13 = stringCopy;
  v14 = handlerCopy;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v15];
}

void __90__WBSUserAgentQuirksManager_getQuirksForURLString_withDefaultUserAgent_completionHandler___block_invoke(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = [a2 quirkTypeForURLString:a1[4] withDefaultUserAgent:a1[5]];
  (*(v2 + 16))(v2, v3);
}

@end