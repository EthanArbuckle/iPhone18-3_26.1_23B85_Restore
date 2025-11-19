@interface SBBulletinSpokenObserverGateway
+ (id)sharedInstance;
- (SBBulletinSpokenObserverGateway)init;
- (void)availableAnnouncementRequestTypesChanged:(unint64_t)a3 onPlatform:(int64_t)a4;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7;
@end

@implementation SBBulletinSpokenObserverGateway

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SBBulletinSpokenObserverGateway_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __49__SBBulletinSpokenObserverGateway_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (SBBulletinSpokenObserverGateway)init
{
  v13.receiver = self;
  v13.super_class = SBBulletinSpokenObserverGateway;
  v2 = [(SBBulletinSpokenObserverGateway *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CEF3D0]) initWithPlatform:1];
    announcementRequestCapabilityManager = v2->_announcementRequestCapabilityManager;
    v2->_announcementRequestCapabilityManager = v3;

    [(AFSiriAnnouncementRequestCapabilityManager *)v2->_announcementRequestCapabilityManager addObserver:v2];
    v5 = v2->_announcementRequestCapabilityManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__SBBulletinSpokenObserverGateway_init__block_invoke;
    v11[3] = &unk_2783AD9C8;
    v6 = v2;
    v12 = v6;
    [(AFSiriAnnouncementRequestCapabilityManager *)v5 fetchAvailableAnnouncementRequestTypesWithCompletion:v11];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.springboard.SBBulletinSpokenObserverGateway", v7);
    queue = v6->_queue;
    v6->_queue = v8;
  }

  return v2;
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7
{
  v8 = a6;
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = MEMORY[0x277D77DB8];
  v15 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v12 publisherMatchID];
    [v19 un_logDigest];
    v21 = v20 = v11;
    v22 = [v12 sectionID];
    *buf = 138413314;
    v49 = v18;
    v50 = 2114;
    *v51 = v21;
    *&v51[8] = 2048;
    v52 = a5;
    *v53 = 2114;
    *&v53[2] = v22;
    v54 = 1024;
    v55 = v8;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%@ adding bulletin %{public}@ for feed %lu in section %{public}@ playLightsAndSirens: %{BOOL}u", buf, 0x30u);

    v14 = MEMORY[0x277D77DB8];
    v11 = v20;
  }

  if (!v8)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v36 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [v12 publisherMatchID];
      v39 = [v38 un_logDigest];
      *buf = 138543362;
      v49 = v39;
      _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ cannot be spoken because BulletinBoard suppressed it", buf, 0xCu);
    }

LABEL_15:
    v13[2](v13, 0);
    goto LABEL_16;
  }

  v23 = +[SBLockScreenManager sharedInstance];
  v24 = [v23 isUILocked];

  v25 = +[SBTelephonyManager sharedTelephonyManager];
  v26 = [v25 inCall];

  v27 = +[SBConferenceManager sharedInstance];
  v28 = [v27 inFaceTime];

  canAnnounceNotifications = 0;
  if (v24 && (v26 & 1) == 0 && (v28 & 1) == 0)
  {
    canAnnounceNotifications = self->_canAnnounceNotifications;
  }

  v30 = *v14;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = [v12 publisherMatchID];
    [v32 un_logDigest];
    v33 = v40 = v11;
    v34 = self->_canAnnounceNotifications;
    *buf = 138544642;
    v49 = v33;
    v50 = 1024;
    *v51 = canAnnounceNotifications;
    *&v51[4] = 1024;
    *&v51[6] = v24;
    LOWORD(v52) = 1024;
    *(&v52 + 2) = v26;
    HIWORD(v52) = 1024;
    *v53 = v28;
    *&v53[4] = 1024;
    *&v53[6] = v34;
    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ should be spoken: %{BOOL}u [ isUILocked: %{BOOL}u inCall: %{BOOL}u inFaceTime: %{BOOL}u canAnnounce: %{BOOL}u ]", buf, 0x2Au);

    v11 = v40;
  }

  if (!canAnnounceNotifications)
  {
    goto LABEL_15;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke;
  block[3] = &unk_2783AA4F8;
  v43 = v12;
  v47 = a5;
  v44 = v11;
  v45 = self;
  v46 = v13;
  dispatch_async(queue, block);

LABEL_16:
}

void __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D77E48];
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = (a1 + 32);
  v6 = objc_alloc_init(MEMORY[0x277CF3568]);
  v7 = [v2 notificationRequestForBulletin:v3 observer:v5 sectionInfo:v6 feed:v4[4]];

  if ([*(v4[2] + 2) nc_shouldSuppressNotificationRequest:v7])
  {
    v8 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v4;
      v10 = v8;
      v11 = [v9 publisherMatchID];
      v12 = [v11 un_logDigest];
      *buf = 138543362;
      v29 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ cannot be spoken because DND suppressed it", buf, 0xCu);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CE1F78] notificationForBulletin:*v4];
    v15 = *MEMORY[0x277D77DB8];
    if (v14)
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v4;
        v17 = v15;
        v18 = [v16 publisherMatchID];
        v19 = [v18 un_logDigest];
        *buf = 138543362;
        v29 = v19;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Speak notification %{public}@", buf, 0xCu);
      }

      v20 = [*(a1 + 32) sectionID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke_10;
      v23[3] = &unk_2783A8EB0;
      v24 = *(a1 + 32);
      v25 = v14;
      v26 = v20;
      v27 = *(a1 + 56);
      v21 = v20;
      dispatch_async(MEMORY[0x277D85CD0], v23);
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke_cold_1(v4, v15);
      }

      v22 = *(a1 + 56);
      if (v22)
      {
        (*(v22 + 16))(v22, 0);
      }
    }
  }
}

void __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) summary];
  v3 = [v2 string];

  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x277CEF418]) initWithSummary:v3 summaryType:2 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_alloc(MEMORY[0x277CEF410]) initWithUserNotification:*(a1 + 40) sourceAppId:*(a1 + 48) platform:1 summaryDecision:1 summary:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke_2;
  v6[3] = &unk_2783A9C98;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  [v5 performRequestWithCompletion:v6];
}

uint64_t __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 publisherMatchID];
    v8 = [v7 un_logDigest];
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Did speak notification %{public}@: %{BOOL}u", &v10, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)availableAnnouncementRequestTypesChanged:(unint64_t)a3 onPlatform:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v5 = a3 & 1;
    if (v5 != self->_canAnnounceNotifications)
    {
      v6 = *MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = AFSiriAnnouncementPlatformGetName();
        v16 = 138412546;
        v17 = v8;
        v18 = 1024;
        v19 = v5;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Notification announcements on %@ changed to %{BOOL}d", &v16, 0x12u);
      }

      self->_canAnnounceNotifications = v5;
      bbObserver = self->_bbObserver;
      if (v5)
      {
        if (!bbObserver)
        {
          v12 = MEMORY[0x277D85CD0];
          v13 = [MEMORY[0x277CF3550] gatewayWithQueue:MEMORY[0x277D85CD0] calloutQueue:MEMORY[0x277D85CD0] name:@"SpokenGateway" priority:1];
          v14 = self->_bbObserver;
          self->_bbObserver = v13;

          [(BBObserver *)self->_bbObserver setDelegate:self];
          [(BBObserver *)self->_bbObserver setObserverFeed:256];
        }

        if (!self->_dndEventBehaviorResolutionService)
        {
          v15 = [MEMORY[0x277D05908] serviceForClientIdentifier:@"com.apple.springboard.SBBulletinSpokenObserverGateway"];
          dndEventBehaviorResolutionService = self->_dndEventBehaviorResolutionService;
          self->_dndEventBehaviorResolutionService = v15;
          goto LABEL_14;
        }
      }

      else
      {
        if (bbObserver)
        {
          [(BBObserver *)bbObserver invalidate];
          v10 = self->_bbObserver;
          self->_bbObserver = 0;
        }

        dndEventBehaviorResolutionService = self->_dndEventBehaviorResolutionService;
        if (dndEventBehaviorResolutionService)
        {
          self->_dndEventBehaviorResolutionService = 0;
LABEL_14:
        }
      }
    }
  }
}

void __94__SBBulletinSpokenObserverGateway_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke_cold_1(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 publisherMatchID];
  v5 = [v4 un_logDigest];
  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_ERROR, "Notification %{public}@ cannot be spoken because notification is nil", &v6, 0xCu);
}

@end