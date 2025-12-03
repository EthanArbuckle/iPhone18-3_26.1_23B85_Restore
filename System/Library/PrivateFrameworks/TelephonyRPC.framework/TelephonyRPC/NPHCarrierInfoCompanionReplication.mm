@interface NPHCarrierInfoCompanionReplication
+ (id)sharedInstance;
- (NPHCarrierInfoCompanionReplication)init;
- (void)_updateHasCarrierVoicemailAccountsKey;
- (void)_updateIsVisualVoicemailServiceSubscribed;
- (void)_visualVMSubscriptionStateStatusChanged:(id)changed;
- (void)dealloc;
@end

@implementation NPHCarrierInfoCompanionReplication

+ (id)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[NPHCarrierInfoCompanionReplication sharedInstance];
  }

  v3 = sharedInstance_sSharedCarrierInfoCompanionReplication;

  return v3;
}

uint64_t __52__NPHCarrierInfoCompanionReplication_sharedInstance__block_invoke()
{
  sharedInstance_sSharedCarrierInfoCompanionReplication = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NPHCarrierInfoCompanionReplication)init
{
  v13.receiver = self;
  v13.super_class = NPHCarrierInfoCompanionReplication;
  v2 = [(NPHCarrierInfoCompanionReplication *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobilephone"];
    mobilePhoneUserDefaults = v2->_mobilePhoneUserDefaults;
    v2->_mobilePhoneUserDefaults = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoPhone"];
    nanoPhoneUserDefaults = v2->_nanoPhoneUserDefaults;
    v2->_nanoPhoneUserDefaults = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D79790];
    mEMORY[0x277D79778] = [MEMORY[0x277D79778] shared];
    [defaultCenter addObserver:v2 selector:sel__visualVMSubscriptionStateStatusChanged_ name:v10 object:mEMORY[0x277D79778]];

    [(NPHCarrierInfoCompanionReplication *)v2 _updateIsVisualVoicemailServiceSubscribed];
    [(NPHCarrierInfoCompanionReplication *)v2 _updateHasCarrierVoicemailAccountsKey];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D79790];
  mEMORY[0x277D79778] = [MEMORY[0x277D79778] shared];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x277D79778]];

  v6.receiver = self;
  v6.super_class = NPHCarrierInfoCompanionReplication;
  [(NPHCarrierInfoCompanionReplication *)&v6 dealloc];
}

- (void)_visualVMSubscriptionStateStatusChanged:(id)changed
{
  [(NPHCarrierInfoCompanionReplication *)self _updateIsVisualVoicemailServiceSubscribed];

  [(NPHCarrierInfoCompanionReplication *)self _updateHasCarrierVoicemailAccountsKey];
}

- (void)_updateIsVisualVoicemailServiceSubscribed
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D79778] = [MEMORY[0x277D79778] shared];
  isSubscribed = [mEMORY[0x277D79778] isSubscribed];

  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NPHCarrierInfoCompanionReplication _updateIsVisualVoicemailServiceSubscribed]";
    v11 = 1024;
    v12 = isSubscribed;
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: %d", &v9, 0x12u);
  }

  [(NSUserDefaults *)self->_mobilePhoneUserDefaults setBool:isSubscribed forKey:@"NPHIsVisualVoicemailServiceSubscribedKey"];
  npsManager = self->_npsManager;
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"NPHIsVisualVoicemailServiceSubscribedKey"];
  [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.mobilephone" keys:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateHasCarrierVoicemailAccountsKey
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D79778] = [MEMORY[0x277D79778] shared];
  accounts = [mEMORY[0x277D79778] accounts];
  v5 = [accounts count];

  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[NPHCarrierInfoCompanionReplication _updateHasCarrierVoicemailAccountsKey]";
    v12 = 1024;
    v13 = v5 != 0;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: %d", &v10, 0x12u);
  }

  [(NSUserDefaults *)self->_mobilePhoneUserDefaults setBool:v5 != 0 forKey:@"NPHHasCarrierVoicemailAccountsKey"];
  npsManager = self->_npsManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"NPHHasCarrierVoicemailAccountsKey"];
  [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.mobilephone" keys:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end