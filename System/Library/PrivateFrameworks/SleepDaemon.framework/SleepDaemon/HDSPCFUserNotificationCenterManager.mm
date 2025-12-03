@interface HDSPCFUserNotificationCenterManager
+ (id)sharedManager;
- (HDSPCFUserNotificationCenterManager)init;
- (void)_withLock:(id)lock;
- (void)cancelNotification:(id)notification fromCenter:(id)center;
- (void)postNotification:(id)notification fromCenter:(id)center;
@end

@implementation HDSPCFUserNotificationCenterManager

+ (id)sharedManager
{
  if (qword_2814C0E38 != -1)
  {
    dispatch_once(&qword_2814C0E38, &__block_literal_global_9);
  }

  v3 = _MergedGlobals_14;

  return v3;
}

uint64_t __52__HDSPCFUserNotificationCenterManager_sharedManager__block_invoke()
{
  _MergedGlobals_14 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (HDSPCFUserNotificationCenterManager)init
{
  v8.receiver = self;
  v8.super_class = HDSPCFUserNotificationCenterManager;
  v2 = [(HDSPCFUserNotificationCenterManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_registrationLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registrations = v3->_registrations;
    v3->_registrations = v4;

    v6 = v3;
  }

  return v3;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_registrationLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_registrationLock);
}

- (void)postNotification:(id)notification fromCenter:(id)center
{
  centerCopy = center;
  notificationCopy = notification;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, [notificationCopy notification], _CFUserNotificationCallback, 0);
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
  CFRelease(RunLoopSource);
  v10 = objc_alloc_init(_HDSPCFUserNotificationCenterRegistration);
  [(_HDSPCFUserNotificationCenterRegistration *)v10 setNotification:notificationCopy];

  [(_HDSPCFUserNotificationCenterRegistration *)v10 setNotificationCenter:centerCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HDSPCFUserNotificationCenterManager_postNotification_fromCenter___block_invoke;
  v12[3] = &unk_279C7B2D0;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(HDSPCFUserNotificationCenterManager *)self _withLock:v12];
}

- (void)cancelNotification:(id)notification fromCenter:(id)center
{
  notificationCopy = notification;
  v6 = notificationCopy;
  if (notificationCopy)
  {
    CFUserNotificationCancel([notificationCopy notification]);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__HDSPCFUserNotificationCenterManager_cancelNotification_fromCenter___block_invoke;
    v7[3] = &unk_279C7B2D0;
    v7[4] = self;
    v8 = v6;
    [(HDSPCFUserNotificationCenterManager *)self _withLock:v7];
  }
}

void __69__HDSPCFUserNotificationCenterManager_cancelNotification_fromCenter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HDSPCFUserNotificationCenterManager_cancelNotification_fromCenter___block_invoke_2;
  v4[3] = &unk_279C7C218;
  v5 = *(a1 + 40);
  v3 = [v2 na_firstObjectPassingTest:v4];
  if (v3)
  {
    [*(*(a1 + 32) + 16) removeObject:v3];
  }
}

BOOL __69__HDSPCFUserNotificationCenterManager_cancelNotification_fromCenter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 notification];
  v4 = v3 == *(a1 + 32);

  return v4;
}

@end