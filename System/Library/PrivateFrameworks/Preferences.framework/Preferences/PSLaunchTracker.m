@interface PSLaunchTracker
+ (id)sharedInstance;
- (void)setLaunchHasCompleted;
@end

@implementation PSLaunchTracker

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PSLaunchTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

void __33__PSLaunchTracker_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;
}

- (void)setLaunchHasCompleted
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_launchHasCompleted)
  {
    v3 = _PSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[PSLaunchTracker setLaunchHasCompleted]";
      _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
    }

    self->_launchHasCompleted = 1;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"PSLaunchHasCompletedNotification" object:0];
  }
}

@end