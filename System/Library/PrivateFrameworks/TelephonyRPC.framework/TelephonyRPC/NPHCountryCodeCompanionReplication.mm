@interface NPHCountryCodeCompanionReplication
- (NPHCountryCodeCompanionReplication)init;
- (void)_updateAndBroadcastCodeWithKey:(id)a3 usingFunction:(void *)a4;
- (void)dealloc;
@end

@implementation NPHCountryCodeCompanionReplication

- (NPHCountryCodeCompanionReplication)init
{
  v7.receiver = self;
  v7.super_class = NPHCountryCodeCompanionReplication;
  v2 = [(NPHCountryCodeCompanionReplication *)&v7 init];
  if (v2)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _NPHActiveCountryCodeDidChange, *MEMORY[0x277CEC528], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(LocalCenter, v2, _NPHHomeCountryCodeDidChange, *MEMORY[0x277CEC548], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(LocalCenter, v2, _NPHNetworkCountryCodeDidChange, *MEMORY[0x277CEC550], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v4;

    [(NPHCountryCodeCompanionReplication *)v2 _updateActiveCountryCode];
    [(NPHCountryCodeCompanionReplication *)v2 _updateHomeCountryCode];
    [(NPHCountryCodeCompanionReplication *)v2 _updateNetworkCountryCode];
  }

  return v2;
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v4.receiver = self;
  v4.super_class = NPHCountryCodeCompanionReplication;
  [(NPHCountryCodeCompanionReplication *)&v4 dealloc];
}

- (void)_updateAndBroadcastCodeWithKey:(id)a3 usingFunction:(void *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = (a4)();
  CFPreferencesSetAppValue(v6, v7, @"com.apple.mobilephone");
  CFPreferencesAppSynchronize(@"com.apple.mobilephone");
  npsManager = self->_npsManager;
  v9 = MEMORY[0x277CBEB98];
  v13[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v9 setWithArray:v10];
  [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.mobilephone" keys:v11];

  if (v7)
  {
    CFRelease(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end