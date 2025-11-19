@interface SBBulletinLocalObserverGateway
+ (id)sharedInstance;
- (SBBulletinLocalObserverGateway)init;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7;
@end

@implementation SBBulletinLocalObserverGateway

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBBulletinLocalObserverGateway_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_34 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_34, block);
  }

  v2 = sharedInstance_sharedInstance_5;

  return v2;
}

void __48__SBBulletinLocalObserverGateway_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v1;
}

- (SBBulletinLocalObserverGateway)init
{
  v7.receiver = self;
  v7.super_class = SBBulletinLocalObserverGateway;
  v2 = [(SBBulletinLocalObserverGateway *)&v7 init];
  if (v2)
  {
    SBGuidedAccessPrepare();
    Serial = BSDispatchQueueCreateSerial();
    v4 = [MEMORY[0x277CF3550] gatewayWithQueue:Serial calloutQueue:MEMORY[0x277D85CD0] name:*MEMORY[0x277CF34F8] priority:3];
    bbObserver = v2->_bbObserver;
    v2->_bbObserver = v4;

    [(BBObserver *)v2->_bbObserver setDelegate:v2];
    [(BBObserver *)v2->_bbObserver setObserverFeed:65023];
  }

  return v2;
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7
{
  v8 = a6;
  v47 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v11 = a4;
  v12 = a7;
  v13 = MEMORY[0x277D77DB8];
  v14 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v11 publisherMatchID];
    v19 = [v18 un_logDigest];
    v20 = [v11 sectionID];
    *buf = 138413314;
    v40 = v17;
    v41 = 2114;
    *v42 = v19;
    *&v42[8] = 2048;
    v43 = a5;
    *v44 = 2114;
    *&v44[2] = v20;
    v45 = 1024;
    v46 = v8;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%@ adding bulletin %{public}@ for feed %lu in section %{public}@ playLightsAndSirens: %{BOOL}u", buf, 0x30u);
  }

  v21 = +[SBBacklightController sharedInstance];
  v22 = [v21 screenIsOn];

  v23 = +[SBLockScreenManager sharedInstance];
  v24 = [v23 isUILocked];

  v25 = v22 & (v24 ^ 1);
  v26 = +[SBConferenceManager sharedInstance];
  v27 = [v26 inFaceTime];

  LOBYTE(v26) = SBGuidedAccessIsActive();
  v28 = [MEMORY[0x277D759A0] mainScreen];
  v29 = [v28 isCaptured];

  v30 = v29 & ([MEMORY[0x277D759A0] _isProbablyBeingRecorded] ^ 1);
  if (v26)
  {
    v30 = 1;
  }

  if (v27)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = [SBApp notificationDispatcher];
  v33 = [v32 isCarDestinationActive];

  v34 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v34;
    v36 = [v11 publisherMatchID];
    v37 = [v36 un_logDigest];
    *buf = 138544386;
    v40 = v37;
    v41 = 1024;
    *v42 = (v25 & (v31 ^ 1) | v33) & 1;
    *&v42[4] = 1024;
    *&v42[6] = v25;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = v31;
    HIWORD(v43) = 1024;
    *v44 = v33 & 1;
    _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ should alert: %{BOOL}u [ isDeviceInUse = %{BOOL}u isDeviceBusy = %{BOOL}u isCarPlayActive = %{BOOL}u ]", buf, 0x24u);
  }

  v12[2](v12, (v25 & (v31 ^ 1) | v33) & 1);
}

@end