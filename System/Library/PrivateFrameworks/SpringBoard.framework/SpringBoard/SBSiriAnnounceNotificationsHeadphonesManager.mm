@interface SBSiriAnnounceNotificationsHeadphonesManager
+ (id)sharedInstance;
- (BOOL)canAnnounce;
- (SBSiriAnnounceNotificationsHeadphonesManager)init;
- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)dealloc;
@end

@implementation SBSiriAnnounceNotificationsHeadphonesManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SBSiriAnnounceNotificationsHeadphonesManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

void __62__SBSiriAnnounceNotificationsHeadphonesManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v1;
}

- (SBSiriAnnounceNotificationsHeadphonesManager)init
{
  v9.receiver = self;
  v9.super_class = SBSiriAnnounceNotificationsHeadphonesManager;
  v2 = [(SBSiriAnnounceNotificationsHeadphonesManager *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CEF3D0]) initWithPlatform:1];
    capabilityManager = v2->_capabilityManager;
    v2->_capabilityManager = v3;

    [(AFSiriAnnouncementRequestCapabilityManager *)v2->_capabilityManager addObserver:v2];
    v5 = v2->_capabilityManager;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SBSiriAnnounceNotificationsHeadphonesManager_init__block_invoke;
    v7[3] = &unk_2783AD9C8;
    v8 = v2;
    [(AFSiriAnnouncementRequestCapabilityManager *)v5 fetchAvailableAnnouncementRequestTypesWithCompletion:v7];
  }

  return v2;
}

- (void)dealloc
{
  [(AFSiriAnnouncementRequestCapabilityManager *)self->_capabilityManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBSiriAnnounceNotificationsHeadphonesManager;
  [(SBSiriAnnounceNotificationsHeadphonesManager *)&v3 dealloc];
}

- (BOOL)canAnnounce
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v3 isUILocked];

  v5 = +[SBTelephonyManager sharedTelephonyManager];
  inCall = [v5 inCall];

  v7 = +[SBConferenceManager sharedInstance];
  inFaceTime = [v7 inFaceTime];

  headphonesNotificationAnnouncementsAvailable = [(SBSiriAnnounceNotificationsHeadphonesManager *)self headphonesNotificationAnnouncementsAvailable];
  v10 = headphonesNotificationAnnouncementsAvailable;
  v11 = isUILocked & (inCall ^ 1) & (inFaceTime ^ 1) & headphonesNotificationAnnouncementsAvailable;
  v12 = SBLogSiri();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67110144;
    v14[1] = v11;
    v15 = 1024;
    v16 = isUILocked;
    v17 = 1024;
    v18 = inCall & 1;
    v19 = 1024;
    v20 = inFaceTime & 1;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Notification/LiveActivityAlert can be spoken: %{BOOL}u [ isUILocked: %{BOOL}u inCall: %{BOOL}u inFaceTime: %{BOOL}u headphonesNotificationAnnouncementsAvailable: %{BOOL}u ]", v14, 0x20u);
  }

  return v11;
}

- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  v13 = *MEMORY[0x277D85DE8];
  if (platform == 1)
  {
    changedCopy = changed;
    if ([(SBSiriAnnounceNotificationsHeadphonesManager *)self headphonesNotificationAnnouncementsAvailable]!= (changed & 1))
    {
      v6 = changedCopy & 1;
      v7 = SBLogSiri();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = AFSiriAnnouncementPlatformGetName();
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Available announcements on %@ changed to %{BOOL}u", &v9, 0x12u);
      }

      [(SBSiriAnnounceNotificationsHeadphonesManager *)self setHeadphonesNotificationAnnouncementsAvailable:v6];
    }
  }
}

@end