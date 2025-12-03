@interface PXApplicationInstallationStateProvider
+ (BOOL)isAppInstalled:(int64_t)installed;
+ (id)shared;
- (PXApplicationInstallationStateProvider)init;
- (int64_t)_isAppInstalled_cached:(int64_t)installed_cached;
- (void)_registerForNotifications;
- (void)_updateCachedInstallationState:(id)state value:(int64_t)value;
@end

@implementation PXApplicationInstallationStateProvider

- (void)_registerForNotifications
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, self, PXApplicationInstallationStateProviderApplicationCallback, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterAddObserver(v4, self, PXApplicationInstallationStateProviderApplicationCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_updateCachedInstallationState:(id)state value:(int64_t)value
{
  stateCopy = state;
  if (([stateCopy isEqualToString:@"com.apple.mobileslideshow"] & 1) != 0 || objc_msgSend(stateCopy, "isEqualToString:", @"com.apple.camera"))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    [(NSMutableDictionary *)self->_installationCache setObject:v6 forKeyedSubscript:stateCopy];
  }
}

- (int64_t)_isAppInstalled_cached:(int64_t)installed_cached
{
  v4 = &stru_1F1741150;
  if (installed_cached)
  {
    if (installed_cached != 2)
    {
      if (installed_cached == 1)
      {
        v4 = @"com.apple.mobileslideshow";
      }

      goto LABEL_9;
    }

    v4 = @"com.apple.camera";
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "App Installation State Provider was given an unknown app option.", v9, 2u);
  }

LABEL_9:
  installationCache = [(PXApplicationInstallationStateProvider *)self installationCache];
  v6 = [installationCache objectForKeyedSubscript:v4];

  if (v6)
  {
    if ([v6 isEqual:&unk_1F190B4A0])
    {
      v7 = 1;
    }

    else if ([v6 isEqual:&unk_1F190B4B8])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXApplicationInstallationStateProvider)init
{
  v5.receiver = self;
  v5.super_class = PXApplicationInstallationStateProvider;
  v2 = [(PXApplicationInstallationStateProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXApplicationInstallationStateProvider *)v2 _registerForNotifications];
  }

  return v3;
}

+ (BOOL)isAppInstalled:(int64_t)installed
{
  v4 = +[PXApplicationInstallationStateProvider shared];
  v5 = [v4 _isAppInstalled_cached:installed];

  if (!v5)
  {
    if (installed)
    {
      if (installed != 2)
      {
        if (installed == 1)
        {
          installed = @"com.apple.mobileslideshow";
        }

        else
        {
          installed = 0;
        }

LABEL_11:
        defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
        v6 = [defaultWorkspace applicationIsInstalled:installed];

        return v6;
      }

      installed = @"com.apple.camera";
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "App Installation State Provider was given an unknown app option.", v9, 2u);
    }

    goto LABEL_11;
  }

  return v5 != 2;
}

+ (id)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PXApplicationInstallationStateProvider_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_sharedObject;

  return v2;
}

void __48__PXApplicationInstallationStateProvider_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = shared_sharedObject;
  shared_sharedObject = v1;
}

@end