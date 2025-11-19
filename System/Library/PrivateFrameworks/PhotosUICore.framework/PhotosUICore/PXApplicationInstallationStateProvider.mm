@interface PXApplicationInstallationStateProvider
+ (BOOL)isAppInstalled:(int64_t)a3;
+ (id)shared;
- (PXApplicationInstallationStateProvider)init;
- (int64_t)_isAppInstalled_cached:(int64_t)a3;
- (void)_registerForNotifications;
- (void)_updateCachedInstallationState:(id)a3 value:(int64_t)a4;
@end

@implementation PXApplicationInstallationStateProvider

- (void)_registerForNotifications
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, self, PXApplicationInstallationStateProviderApplicationCallback, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterAddObserver(v4, self, PXApplicationInstallationStateProviderApplicationCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_updateCachedInstallationState:(id)a3 value:(int64_t)a4
{
  v7 = a3;
  if (([v7 isEqualToString:@"com.apple.mobileslideshow"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.camera"))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)self->_installationCache setObject:v6 forKeyedSubscript:v7];
  }
}

- (int64_t)_isAppInstalled_cached:(int64_t)a3
{
  v4 = &stru_1F1741150;
  if (a3)
  {
    if (a3 != 2)
    {
      if (a3 == 1)
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
  v5 = [(PXApplicationInstallationStateProvider *)self installationCache];
  v6 = [v5 objectForKeyedSubscript:v4];

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

+ (BOOL)isAppInstalled:(int64_t)a3
{
  v4 = +[PXApplicationInstallationStateProvider shared];
  v5 = [v4 _isAppInstalled_cached:a3];

  if (!v5)
  {
    if (a3)
    {
      if (a3 != 2)
      {
        if (a3 == 1)
        {
          a3 = @"com.apple.mobileslideshow";
        }

        else
        {
          a3 = 0;
        }

LABEL_11:
        v7 = [MEMORY[0x1E6963608] defaultWorkspace];
        v6 = [v7 applicationIsInstalled:a3];

        return v6;
      }

      a3 = @"com.apple.camera";
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
  block[4] = a1;
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