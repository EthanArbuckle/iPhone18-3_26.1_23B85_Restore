@interface ICQOfferManager(ICQUI)
- (void)_getCachedLinkData:()ICQUI completion:;
- (void)fetchAndPresentUpsellForBundleIdentifier:()ICQUI event:completion:;
- (void)upgradeFlowManagerDidCancel:()ICQUI;
- (void)upgradeFlowManagerDidComplete:()ICQUI;
@end

@implementation ICQOfferManager(ICQUI)

- (void)fetchAndPresentUpsellForBundleIdentifier:()ICQUI event:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICQOfferManager(ICQUI) fetchAndPresentUpsellForBundleIdentifier:v11 event:? completion:?];
  }

  v12 = objc_alloc(MEMORY[0x277CBEAA8]);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"lastiCloudAppLaunchCheck"];
  v14 = [v12 initWithTimeIntervalSince1970:?];

  [v14 timeIntervalSinceNow];
  if (v15 <= -172800.0)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSince1970];
    [standardUserDefaults2 setDouble:@"lastiCloudAppLaunchCheck" forKey:?];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke;
    v19[3] = &unk_27A65C0F8;
    v20 = v9;
    v21 = v8;
    selfCopy = self;
    v23 = v10;
    [self getOfferForBundleIdentifier:v21 completion:v19];
  }

  else
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "Last app launch link check was <48h ago, skipping check", buf, 2u);
    }

    (*(v10 + 2))(v10, 0);
  }
}

- (void)upgradeFlowManagerDidCancel:()ICQUI
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  flowManager = [self flowManager];

  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (flowManager == v4)
  {
    if (v7)
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v11 = v14;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did cancel", &v13, 0xCu);
    }

    flowManager2 = [self flowManager];
    [flowManager2 setDelegate:0];

    [self setFlowManager:0];
  }

  else
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = v8;
      flowManager3 = [self flowManager];
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = flowManager3;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did cancel for manager %@ instead of %@", &v13, 0x20u);
    }
  }
}

- (void)upgradeFlowManagerDidComplete:()ICQUI
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  flowManager = [self flowManager];

  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (flowManager == v4)
  {
    if (v7)
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v11 = v13;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did complete", &v12, 0xCu);
    }

    [self setFlowManager:0];
  }

  else
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = v8;
      flowManager2 = [self flowManager];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = flowManager2;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did complete for manager %@ instead of %@", &v12, 0x20u);
    }
  }
}

- (void)_getCachedLinkData:()ICQUI completion:
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = getINDaemonConnectionClass_softClass_4;
  v14 = getINDaemonConnectionClass_softClass_4;
  if (!getINDaemonConnectionClass_softClass_4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getINDaemonConnectionClass_block_invoke_4;
    v10[3] = &unk_27A65A9F8;
    v10[4] = &v11;
    __getINDaemonConnectionClass_block_invoke_4(v10);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  v9 = objc_alloc_init(v7);
  [v9 getCacheDataForLink:v5 completion:v6];
}

@end