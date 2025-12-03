@interface SBLockdownManager
+ (id)sharedInstance;
- (SBLockdownManager)init;
- (int)lockdownState;
- (void)_resetActivationState;
- (void)_setupActivationState;
@end

@implementation SBLockdownManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[SBLockdownManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_3;

  return v3;
}

void __35__SBLockdownManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBLockdownManager);
  v1 = sharedInstance___sharedInstance_3;
  sharedInstance___sharedInstance_3 = v0;
}

- (SBLockdownManager)init
{
  v6.receiver = self;
  v6.super_class = SBLockdownManager;
  v2 = [(SBLockdownManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, lockdownActivationChanged, *MEMORY[0x277D288E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)_resetActivationState
{
  self->_state = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBLockdownDeviceActivatedChangedNotification" object:self];
}

- (void)_setupActivationState
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138543618;
  selfCopy = self;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "MobileActivation says the device is: [%{public}@], state is %d", &v4, 0x12u);
}

- (int)lockdownState
{
  result = self->_state;
  if (!result)
  {
    [(SBLockdownManager *)self _setupActivationState];
    return self->_state;
  }

  return result;
}

@end