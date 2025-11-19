@interface RCAppGroupStorage
+ (RCAppGroupStorage)sharedInstance;
- (BOOL)enableOverdubForAllDevices;
- (RCAppGroupStorage)init;
- (void)init;
@end

@implementation RCAppGroupStorage

+ (RCAppGroupStorage)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[RCAppGroupStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __35__RCAppGroupStorage_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(RCAppGroupStorage);

  return MEMORY[0x2821F96F8]();
}

- (RCAppGroupStorage)init
{
  v7.receiver = self;
  v7.super_class = RCAppGroupStorage;
  v2 = [(RCAppGroupStorage *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"group.com.apple.VoiceMemos.shared"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    if (!v2->_userDefaults)
    {
      v5 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(RCAppGroupStorage *)v5 init];
      }
    }
  }

  return v2;
}

- (BOOL)enableOverdubForAllDevices
{
  v3 = RCIsInternalInstall();
  if (v3)
  {
    userDefaults = self->_userDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)userDefaults BOOLForKey:@"RCEnableOverdubForAllDevices"];
  }

  return v3;
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[RCAppGroupStorage init]";
  _os_log_fault_impl(&dword_272442000, log, OS_LOG_TYPE_FAULT, "%s -- app group user defaults are nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end