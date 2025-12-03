@interface SSLogConfig
+ (BOOL)_deviceIsRunningInternalOrSeedBuild;
+ (id)_createLogConfigWithBaseConfig:(id)config subystem:(id)subystem category:(id)category;
+ (id)_logFileDirectoryPathForSubsystem:(id)subsystem category:(id)category;
+ (id)_logFilenameForSubsystem:(id)subsystem category:(id)category;
+ (id)sharedAccountsAuthenticationConfig;
+ (id)sharedAccountsConfig;
+ (id)sharedAccountsCookiesConfig;
+ (id)sharedAccountsLogoutConfig;
+ (id)sharedAccountsMigrationConfig;
+ (id)sharedAccountsMigrationConfigOversize;
+ (id)sharedAccountsStorefrontConfig;
+ (id)sharedAskPermissionExtensionConfig;
+ (id)sharedBagCacheConfig;
+ (id)sharedBagConfig;
+ (id)sharedConfig;
+ (id)sharedDaemonConfig;
+ (id)sharedDaemonConfigOversize;
+ (id)sharedFairPlayAnisetteConfig;
+ (id)sharedFeatureEnablerMigrationConfig;
+ (id)sharedFollowUpConfig;
+ (id)sharedPrivacyConfig;
+ (id)sharedPushNotificationConfig;
+ (id)sharedStoreServicesConfig;
+ (id)sharedStoreServicesConfigOversize;
+ (id)sharedWriteToDiskConfig;
+ (id)sharediTunesStoreConfig;
+ (id)sharediTunesStoreConfigOversize;
- (BOOL)debugLogsEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldLog;
- (BOOL)shouldLogToDisk;
- (NSString)outputDirectory;
- (NSString)outputFilename;
- (OS_os_log)OSLogObject;
- (SSLogConfig)init;
- (SSLogFileOptions)logFileOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SSLogConfig

+ (id)sharedAccountsConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSLogConfig_sharedAccountsConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAccountsConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAccountsConfig_ss_once_object___COUNTER__;

  return v2;
}

void __35__SSLogConfig_sharedAccountsConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices.accounts" category:0];
  v2 = sharedAccountsConfig_ss_once_object___COUNTER__;
  sharedAccountsConfig_ss_once_object___COUNTER__ = v1;
}

void __26__SSLogConfig_OSLogObject__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backingOSLogObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id *__26__SSLogConfig_OSLogObject__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backingOSLogObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 40);
  result = (v5 + 40);
  if (v7)
  {
    return result;
  }

  objc_storeStrong(result, MEMORY[0x1E69E9C10]);
  v8 = [*(a1 + 32) subsystem];
  if (![v8 length])
  {
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) category];
  v10 = [v9 length];

  if (v10)
  {
    v8 = [*(a1 + 32) subsystem];
    v11 = [v8 UTF8String];
    v12 = [*(a1 + 32) category];
    v13 = os_log_create(v11, [v12 UTF8String]);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_5:
  }

  v16 = *(a1 + 32);
  v17 = *(*(*(a1 + 40) + 8) + 40);

  return [v16 setBackingOSLogObject:v17];
}

- (SSLogConfig)init
{
  v7.receiver = self;
  v7.super_class = SSLogConfig;
  v2 = [(SSLogConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_environment = 0;
    v4 = dispatch_queue_create("com.apple.StoreServices.SSLogConfig", MEMORY[0x1E69E96A8]);
    propertyAccessQueue = v3->_propertyAccessQueue;
    v3->_propertyAccessQueue = v4;
  }

  return v3;
}

+ (id)sharedStoreServicesConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSLogConfig_sharedStoreServicesConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStoreServicesConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedStoreServicesConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedStoreServicesConfig_ss_once_object___COUNTER__;

  return v2;
}

void __40__SSLogConfig_sharedStoreServicesConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"StoreServices"];
  v2 = sharedStoreServicesConfig_ss_once_object___COUNTER__;
  sharedStoreServicesConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharediTunesStoreConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SSLogConfig_sharediTunesStoreConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharediTunesStoreConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharediTunesStoreConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharediTunesStoreConfig_ss_once_object___COUNTER__;

  return v2;
}

- (BOOL)shouldLog
{
  if (![(SSLogConfig *)self environment]|| +[SSLogConfig _deviceIsRunningInternalBuild](SSLogConfig, "_deviceIsRunningInternalBuild") && [(SSLogConfig *)self environment]< 3 || +[SSLogConfig _deviceIsRunningSeedBuild]&& [(SSLogConfig *)self environment]< 2)
  {
    return 1;
  }

  return [(SSLogConfig *)self debugLogsEnabled];
}

- (BOOL)shouldLogToDisk
{
  shouldLog = [(SSLogConfig *)self shouldLog];
  if (shouldLog)
  {
    if ([(SSLogConfig *)self writeToDisk]&& +[SSLogConfig _deviceIsRunningInternalOrSeedBuild])
    {
      LOBYTE(shouldLog) = 1;
    }

    else
    {

      LOBYTE(shouldLog) = [(SSLogConfig *)self debugLogsEnabled];
    }
  }

  return shouldLog;
}

- (OS_os_log)OSLogObject
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__44;
  v14 = __Block_byref_object_dispose__44;
  v15 = 0;
  propertyAccessQueue = [(SSLogConfig *)self propertyAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SSLogConfig_OSLogObject__block_invoke;
  block[3] = &unk_1E84ABF40;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(propertyAccessQueue, block);

  v4 = v11[5];
  if (!v4)
  {
    propertyAccessQueue2 = [(SSLogConfig *)self propertyAccessQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __26__SSLogConfig_OSLogObject__block_invoke_2;
    v8[3] = &unk_1E84ABF40;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_barrier_sync(propertyAccessQueue2, v8);

    v4 = v11[5];
  }

  v6 = v4;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (BOOL)debugLogsEnabled
{
  oSLogObject = [(SSLogConfig *)self OSLogObject];
  v3 = [SSLogConfig _debugLogsEnabled:oSLogObject];

  return v3;
}

+ (id)sharedDaemonConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSLogConfig_sharedDaemonConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDaemonConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedDaemonConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedDaemonConfig_ss_once_object___COUNTER__;

  return v2;
}

+ (id)sharedConfig
{
  if (sharedConfig_ss_once_token___COUNTER__ != -1)
  {
    +[SSLogConfig sharedConfig];
  }

  v3 = sharedConfig_ss_once_object___COUNTER__;

  return v3;
}

void __27__SSLogConfig_sharedConfig__block_invoke()
{
  v0 = objc_alloc_init(SSLogConfig);
  v1 = sharedConfig_ss_once_object___COUNTER__;
  sharedConfig_ss_once_object___COUNTER__ = v0;
}

+ (id)sharedAccountsAuthenticationConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SSLogConfig_sharedAccountsAuthenticationConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsAuthenticationConfig_onceToken != -1)
  {
    dispatch_once(&sharedAccountsAuthenticationConfig_onceToken, block);
  }

  v2 = sharedAccountsAuthenticationConfig_authenticationConfig;

  return v2;
}

void __49__SSLogConfig_sharedAccountsAuthenticationConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedAccountsConfig];
  v4 = [v1 mutableCopy];

  [v4 setCategory:@"authentication"];
  v2 = [v4 copy];
  v3 = sharedAccountsAuthenticationConfig_authenticationConfig;
  sharedAccountsAuthenticationConfig_authenticationConfig = v2;
}

+ (id)sharedAccountsCookiesConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SSLogConfig_sharedAccountsCookiesConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsCookiesConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAccountsCookiesConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAccountsCookiesConfig_ss_once_object___COUNTER__;

  return v2;
}

void __42__SSLogConfig_sharedAccountsCookiesConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedAccountsConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"cookies"];
  v3 = sharedAccountsCookiesConfig_ss_once_object___COUNTER__;
  sharedAccountsCookiesConfig_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedAccountsLogoutConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSLogConfig_sharedAccountsLogoutConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsLogoutConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAccountsLogoutConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAccountsLogoutConfig_ss_once_object___COUNTER__;

  return v2;
}

void __41__SSLogConfig_sharedAccountsLogoutConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedAccountsConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"logout"];
  v3 = sharedAccountsLogoutConfig_ss_once_object___COUNTER__;
  sharedAccountsLogoutConfig_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedAccountsMigrationConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SSLogConfig_sharedAccountsMigrationConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsMigrationConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAccountsMigrationConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAccountsMigrationConfig_ss_once_object___COUNTER__;

  return v2;
}

void __44__SSLogConfig_sharedAccountsMigrationConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedAccountsConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"migration"];
  v3 = sharedAccountsMigrationConfig_ss_once_object___COUNTER__;
  sharedAccountsMigrationConfig_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedAccountsMigrationConfigOversize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SSLogConfig_sharedAccountsMigrationConfigOversize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsMigrationConfigOversize_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAccountsMigrationConfigOversize_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAccountsMigrationConfigOversize_ss_once_object___COUNTER__;

  return v2;
}

void __52__SSLogConfig_sharedAccountsMigrationConfigOversize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedAccountsMigrationConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"migration-oversize"];
  v3 = sharedAccountsMigrationConfigOversize_ss_once_object___COUNTER__;
  sharedAccountsMigrationConfigOversize_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedAccountsStorefrontConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSLogConfig_sharedAccountsStorefrontConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountsStorefrontConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAccountsStorefrontConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAccountsStorefrontConfig_ss_once_object___COUNTER__;

  return v2;
}

void __45__SSLogConfig_sharedAccountsStorefrontConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedAccountsConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"storefront"];
  v3 = sharedAccountsStorefrontConfig_ss_once_object___COUNTER__;
  sharedAccountsStorefrontConfig_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedAskPermissionExtensionConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SSLogConfig_sharedAskPermissionExtensionConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAskPermissionExtensionConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedAskPermissionExtensionConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedAskPermissionExtensionConfig_ss_once_object___COUNTER__;

  return v2;
}

void __49__SSLogConfig_sharedAskPermissionExtensionConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"askpermission"];
  v2 = sharedAskPermissionExtensionConfig_ss_once_object___COUNTER__;
  sharedAskPermissionExtensionConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharedBagConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSLogConfig_sharedBagConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBagConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedBagConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedBagConfig_ss_once_object___COUNTER__;

  return v2;
}

void __30__SSLogConfig_sharedBagConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices.bag" category:0];
  v2 = sharedBagConfig_ss_once_object___COUNTER__;
  sharedBagConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharedBagCacheConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSLogConfig_sharedBagCacheConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBagCacheConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedBagCacheConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedBagCacheConfig_ss_once_object___COUNTER__;

  return v2;
}

void __35__SSLogConfig_sharedBagCacheConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedBagConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"cache"];
  v3 = sharedBagCacheConfig_ss_once_object___COUNTER__;
  sharedBagCacheConfig_ss_once_object___COUNTER__ = v2;
}

void __33__SSLogConfig_sharedDaemonConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"Daemon"];
  v2 = sharedDaemonConfig_ss_once_object___COUNTER__;
  sharedDaemonConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharedDaemonConfigOversize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSLogConfig_sharedDaemonConfigOversize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDaemonConfigOversize_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedDaemonConfigOversize_ss_once_token___COUNTER__, block);
  }

  v2 = sharedDaemonConfigOversize_ss_once_object___COUNTER__;

  return v2;
}

void __41__SSLogConfig_sharedDaemonConfigOversize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedDaemonConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"Daemon-Oversize"];
  v3 = sharedDaemonConfigOversize_ss_once_object___COUNTER__;
  sharedDaemonConfigOversize_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedFairPlayAnisetteConfig
{
  if (sharedFairPlayAnisetteConfig_onceToken != -1)
  {
    +[SSLogConfig sharedFairPlayAnisetteConfig];
  }

  v3 = sharedFairPlayAnisetteConfig_config;

  return v3;
}

uint64_t __43__SSLogConfig_sharedFairPlayAnisetteConfig__block_invoke()
{
  v0 = objc_alloc_init(SSLogConfig);
  v1 = sharedFairPlayAnisetteConfig_config;
  sharedFairPlayAnisetteConfig_config = v0;

  [sharedFairPlayAnisetteConfig_config setSubsystem:@"com.apple.StoreServices.FairPlay"];
  [sharedFairPlayAnisetteConfig_config setCategory:@"anisette"];
  v2 = sharedFairPlayAnisetteConfig_config;

  return [v2 setEnvironment:2];
}

+ (id)sharedFeatureEnablerMigrationConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSLogConfig_sharedFeatureEnablerMigrationConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedFeatureEnablerMigrationConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedFeatureEnablerMigrationConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedFeatureEnablerMigrationConfig_ss_once_object___COUNTER__;

  return v2;
}

void __50__SSLogConfig_sharedFeatureEnablerMigrationConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices.FeatureEnabler" category:@"migration"];
  v2 = sharedFeatureEnablerMigrationConfig_ss_once_object___COUNTER__;
  sharedFeatureEnablerMigrationConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharedFollowUpConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSLogConfig_sharedFollowUpConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedFollowUpConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedFollowUpConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedFollowUpConfig_ss_once_object___COUNTER__;

  return v2;
}

void __35__SSLogConfig_sharedFollowUpConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"followup"];
  v2 = sharedFollowUpConfig_ss_once_object___COUNTER__;
  sharedFollowUpConfig_ss_once_object___COUNTER__ = v1;
}

void __38__SSLogConfig_sharediTunesStoreConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"iTunesStore"];
  v2 = sharediTunesStoreConfig_ss_once_object___COUNTER__;
  sharediTunesStoreConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharediTunesStoreConfigOversize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SSLogConfig_sharediTunesStoreConfigOversize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharediTunesStoreConfigOversize_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharediTunesStoreConfigOversize_ss_once_token___COUNTER__, block);
  }

  v2 = sharediTunesStoreConfigOversize_ss_once_object___COUNTER__;

  return v2;
}

void __46__SSLogConfig_sharediTunesStoreConfigOversize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharediTunesStoreConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"iTunesStore-Oversize"];
  v3 = sharediTunesStoreConfigOversize_ss_once_object___COUNTER__;
  sharediTunesStoreConfigOversize_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedPrivacyConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSLogConfig_sharedPrivacyConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPrivacyConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedPrivacyConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedPrivacyConfig_ss_once_object___COUNTER__;

  return v2;
}

void __34__SSLogConfig_sharedPrivacyConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"privacy"];
  v2 = sharedPrivacyConfig_ss_once_object___COUNTER__;
  sharedPrivacyConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharedPushNotificationConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSLogConfig_sharedPushNotificationConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPushNotificationConfig_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedPushNotificationConfig_ss_once_token___COUNTER__, block);
  }

  v2 = sharedPushNotificationConfig_ss_once_object___COUNTER__;

  return v2;
}

void __43__SSLogConfig_sharedPushNotificationConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.StoreServices" category:@"pushnotification"];
  v2 = sharedPushNotificationConfig_ss_once_object___COUNTER__;
  sharedPushNotificationConfig_ss_once_object___COUNTER__ = v1;
}

+ (id)sharedStoreServicesConfigOversize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSLogConfig_sharedStoreServicesConfigOversize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStoreServicesConfigOversize_ss_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedStoreServicesConfigOversize_ss_once_token___COUNTER__, block);
  }

  v2 = sharedStoreServicesConfigOversize_ss_once_object___COUNTER__;

  return v2;
}

void __48__SSLogConfig_sharedStoreServicesConfigOversize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedStoreServicesConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"StoreServices-Oversize"];
  v3 = sharedStoreServicesConfigOversize_ss_once_object___COUNTER__;
  sharedStoreServicesConfigOversize_ss_once_object___COUNTER__ = v2;
}

+ (id)sharedWriteToDiskConfig
{
  if (sharedWriteToDiskConfig_onceToken != -1)
  {
    +[SSLogConfig sharedWriteToDiskConfig];
  }

  v3 = sharedWriteToDiskConfig_writeToDiskConfig;

  return v3;
}

void __38__SSLogConfig_sharedWriteToDiskConfig__block_invoke()
{
  v2 = objc_alloc_init(SSMutableLogConfig);
  [(SSLogConfig *)v2 setEnvironment:2];
  [(SSLogConfig *)v2 setSubsystem:@"com.apple.StoreServices"];
  [(SSLogConfig *)v2 setWriteToDisk:1];
  v0 = [(SSMutableLogConfig *)v2 copy];
  v1 = sharedWriteToDiskConfig_writeToDiskConfig;
  sharedWriteToDiskConfig_writeToDiskConfig = v0;
}

- (SSLogFileOptions)logFileOptions
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__44;
  v14 = __Block_byref_object_dispose__44;
  v15 = 0;
  propertyAccessQueue = [(SSLogConfig *)self propertyAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SSLogConfig_logFileOptions__block_invoke;
  block[3] = &unk_1E84ABF40;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(propertyAccessQueue, block);

  v4 = v11[5];
  if (!v4)
  {
    propertyAccessQueue2 = [(SSLogConfig *)self propertyAccessQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__SSLogConfig_logFileOptions__block_invoke_2;
    v8[3] = &unk_1E84ABF40;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_barrier_sync(propertyAccessQueue2, v8);

    v4 = v11[5];
  }

  v6 = v4;
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __29__SSLogConfig_logFileOptions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backingLogFileOptions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __29__SSLogConfig_logFileOptions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backingLogFileOptions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) backingLogFileOptions];

    if (!v5)
    {
      v6 = objc_alloc_init(SSLogFileOptions);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = [*(a1 + 32) outputDirectory];
      [v9 setLogDirectoryPath:v10];

      v11 = *(*(*(a1 + 40) + 8) + 40);
      v12 = [*(a1 + 32) outputFilename];
      [v11 setLogFileBaseName:v12];

      v13 = *(a1 + 32);
      v14 = *(*(*(a1 + 40) + 8) + 40);

      [v13 setBackingLogFileOptions:v14];
    }
  }
}

- (NSString)outputDirectory
{
  outputDirectory = self->_outputDirectory;
  if (outputDirectory)
  {
    v3 = outputDirectory;
  }

  else
  {
    v5 = objc_opt_class();
    subsystem = [(SSLogConfig *)self subsystem];
    category = [(SSLogConfig *)self category];
    v3 = [v5 _logFileDirectoryPathForSubsystem:subsystem category:category];
  }

  return v3;
}

- (NSString)outputFilename
{
  outputFilename = self->_outputFilename;
  if (outputFilename)
  {
    v3 = outputFilename;
  }

  else
  {
    v5 = objc_opt_class();
    subsystem = [(SSLogConfig *)self subsystem];
    category = [(SSLogConfig *)self category];
    v3 = [v5 _logFilenameForSubsystem:subsystem category:category];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v13.receiver = self;
  v13.super_class = SSLogConfig;
  v4 = [(SSLogConfig *)&v13 description];
  v5 = [v3 stringWithFormat:@"%@: {\n", v4];

  category = [(SSLogConfig *)self category];
  [v5 appendFormat:@"  category: %@\n", category];

  [v5 appendFormat:@"  environment: %ld\n", -[SSLogConfig environment](self, "environment")];
  outputDirectory = [(SSLogConfig *)self outputDirectory];
  [v5 appendFormat:@"  outputDirectory: %@\n", outputDirectory];

  outputFilename = [(SSLogConfig *)self outputFilename];
  [v5 appendFormat:@"  outputFilename: %@\n", outputFilename];

  subsystem = [(SSLogConfig *)self subsystem];
  [v5 appendFormat:@"  subsystem: %@\n", subsystem];

  writeToDisk = [(SSLogConfig *)self writeToDisk];
  v11 = @"NO";
  if (writeToDisk)
  {
    v11 = @"YES";
  }

  [v5 appendFormat:@"  writeToDisk: %@\n", v11];
  [v5 appendString:@"}"];

  return v5;
}

- (unint64_t)hash
{
  category = [(SSLogConfig *)self category];
  v4 = [category hash];
  v5 = [(SSLogConfig *)self environment]^ v4;
  subsystem = [(SSLogConfig *)self subsystem];
  v7 = v5 ^ [subsystem hash];
  v8 = v7 ^ [(SSLogConfig *)self writeToDisk];

  outputDirectory = self->_outputDirectory;
  if (outputDirectory)
  {
    v8 ^= [(NSString *)outputDirectory hash];
  }

  outputFilename = self->_outputFilename;
  if (outputFilename)
  {
    v8 ^= [(NSString *)outputFilename hash];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
    goto LABEL_5;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    category = [(SSLogConfig *)self category];
    if (category || ([(SSLogConfig *)equalCopy category], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      category2 = [(SSLogConfig *)self category];
      category3 = [(SSLogConfig *)equalCopy category];
      v12 = [category2 isEqual:category3];

      if (category)
      {

        if (!v12)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v12 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    environment = [(SSLogConfig *)self environment];
    if (environment != [(SSLogConfig *)equalCopy environment])
    {
      goto LABEL_3;
    }

    outputFilename = self->_outputFilename;
    if (outputFilename | equalCopy->_outputFilename)
    {
      if (![(NSString *)outputFilename isEqual:?])
      {
        goto LABEL_3;
      }
    }

    outputDirectory = self->_outputDirectory;
    if (outputDirectory | equalCopy->_outputDirectory)
    {
      if (![(NSString *)outputDirectory isEqual:?])
      {
        goto LABEL_3;
      }
    }

    subsystem = [(SSLogConfig *)self subsystem];
    if (subsystem || ([(SSLogConfig *)equalCopy subsystem], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subsystem2 = [(SSLogConfig *)self subsystem];
      subsystem3 = [(SSLogConfig *)equalCopy subsystem];
      v19 = [subsystem2 isEqual:subsystem3];

      if (subsystem)
      {

        if (!v19)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v19 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    writeToDisk = [(SSLogConfig *)self writeToDisk];
    v7 = writeToDisk ^ [(SSLogConfig *)equalCopy writeToDisk]^ 1;
    goto LABEL_5;
  }

LABEL_3:
  LOBYTE(v7) = 0;
LABEL_5:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[SSLogConfig allocWithZone:](SSLogConfig init];
  category = [(SSLogConfig *)self category];
  v7 = [category copyWithZone:zone];
  category = v5->_category;
  v5->_category = v7;

  v5->_environment = [(SSLogConfig *)self environment];
  objc_storeStrong(&v5->_outputDirectory, self->_outputDirectory);
  objc_storeStrong(&v5->_outputFilename, self->_outputFilename);
  subsystem = [(SSLogConfig *)self subsystem];
  v10 = [subsystem copyWithZone:zone];
  subsystem = v5->_subsystem;
  v5->_subsystem = v10;

  v5->_writeToDisk = [(SSLogConfig *)self writeToDisk];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [(SSLogConfig *)+[SSMutableLogConfig allocWithZone:](SSMutableLogConfig init];
  category = [(SSLogConfig *)self category];
  v7 = [category copyWithZone:zone];
  [(SSLogConfig *)v5 setCategory:v7];

  [(SSLogConfig *)v5 setEnvironment:[(SSLogConfig *)self environment]];
  [(SSLogConfig *)v5 setOutputDirectory:self->_outputDirectory];
  [(SSLogConfig *)v5 setOutputFilename:self->_outputFilename];
  subsystem = [(SSLogConfig *)self subsystem];
  v9 = [subsystem copyWithZone:zone];
  [(SSLogConfig *)v5 setSubsystem:v9];

  [(SSLogConfig *)v5 setWriteToDisk:[(SSLogConfig *)self writeToDisk]];
  return v5;
}

+ (id)_createLogConfigWithBaseConfig:(id)config subystem:(id)subystem category:(id)category
{
  configCopy = config;
  subystemCopy = subystem;
  categoryCopy = category;
  if (configCopy)
  {
    v10 = [configCopy mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(SSMutableLogConfig);
  }

  v11 = v10;
  if (subystemCopy)
  {
    [(SSLogConfig *)v10 setSubsystem:subystemCopy];
  }

  if (categoryCopy)
  {
    [(SSLogConfig *)v11 setCategory:categoryCopy];
  }

  v12 = [(SSMutableLogConfig *)v11 copy];

  return v12;
}

+ (BOOL)_deviceIsRunningInternalOrSeedBuild
{
  if ([self _deviceIsRunningInternalBuild])
  {
    return 1;
  }

  return [self _deviceIsRunningSeedBuild];
}

+ (id)_logFileDirectoryPathForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  if (_logFileDirectoryPathForSubsystem_category__ss_once_token___COUNTER__ != -1)
  {
    +[SSLogConfig _logFileDirectoryPathForSubsystem:category:];
  }

  v7 = _logFileDirectoryPathForSubsystem_category__ss_once_object___COUNTER__;
  if ([subsystemCopy length])
  {
    v8 = [subsystemCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];

    v9 = [v7 stringByAppendingPathComponent:v8];

    if ([categoryCopy length])
    {
      v10 = [categoryCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];

      v7 = [v9 stringByAppendingPathComponent:v10];

      categoryCopy = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v8 = subsystemCopy;
  }

  return v7;
}

void __58__SSLogConfig__logFileDirectoryPathForSubsystem_category___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEC0];
  v4[0] = CPSharedResourcesDirectory();
  v4[1] = @"Library";
  v4[2] = @"Logs";
  v4[3] = @"com.apple.StoreServices";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 pathWithComponents:v1];
  v3 = _logFileDirectoryPathForSubsystem_category__ss_once_object___COUNTER__;
  _logFileDirectoryPathForSubsystem_category__ss_once_object___COUNTER__ = v2;
}

+ (id)_logFilenameForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  if ([subsystemCopy length])
  {
    if ([categoryCopy length])
    {
      categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", subsystemCopy, categoryCopy];
    }

    else
    {
      categoryCopy = subsystemCopy;
    }

    v9 = categoryCopy;
    v8 = [categoryCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  }

  else
  {
    v8 = @"storeservices";
  }

  return v8;
}

@end