@interface WBSPasswordBreachConfigurationBagLoader
+ (WBSPasswordBreachConfigurationBagLoader)sharedLoader;
- (WBSPasswordBreachConfigurationBagLoader)init;
- (void)dealloc;
@end

@implementation WBSPasswordBreachConfigurationBagLoader

- (WBSPasswordBreachConfigurationBagLoader)init
{
  v13.receiver = self;
  v13.super_class = WBSPasswordBreachConfigurationBagLoader;
  v2 = [(WBSPasswordBreachConfigurationBagLoader *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
    v4 = [v3 URLForResource:@"WBSPasswordBreachConfigurationBag" withExtension:@"plist"];

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 safari_settingsDirectoryURL];

    v7 = objc_alloc(MEMORY[0x1E69C89E0]);
    v8 = objc_opt_class();
    v9 = [v7 initWithDataFormat:0 builtInListURL:v4 downloadsDirectoryURL:v6 resourceName:@"PasswordBreachAwarenessConfigurationBag" resourceVersion:@"1" updateDateDefaultsKey:@"WBSPasswordBreachConfigurationBagLastUpdate" updateInterval:86400.0 snapshotClass:v8 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v2->_remotelyUpdatableDataController;
    v2->_remotelyUpdatableDataController = v9;

    [(WBSRemotelyUpdatableDataController *)v2->_remotelyUpdatableDataController setDelegate:v2];
    [(WBSRemotelyUpdatableDataController *)v2->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController prepareForTermination];
  v3.receiver = self;
  v3.super_class = WBSPasswordBreachConfigurationBagLoader;
  [(WBSPasswordBreachConfigurationBagLoader *)&v3 dealloc];
}

+ (WBSPasswordBreachConfigurationBagLoader)sharedLoader
{
  if (sharedLoader_onceToken != -1)
  {
    +[WBSPasswordBreachConfigurationBagLoader sharedLoader];
  }

  v3 = sharedLoader_loader;

  return v3;
}

void __55__WBSPasswordBreachConfigurationBagLoader_sharedLoader__block_invoke()
{
  v0 = objc_alloc_init(WBSPasswordBreachConfigurationBagLoader);
  v1 = sharedLoader_loader;
  sharedLoader_loader = v0;
}

@end