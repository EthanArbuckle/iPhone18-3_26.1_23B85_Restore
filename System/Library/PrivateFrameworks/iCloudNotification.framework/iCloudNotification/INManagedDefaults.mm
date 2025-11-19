@interface INManagedDefaults
+ (id)sharedInstance;
- (id)_readManagedDefaults;
- (id)valueForManagedDefault:(id)a3;
- (void)_writeManagedDefaults:(id)a3;
- (void)setValue:(id)a3 forManagedDefault:(id)a4;
@end

@implementation INManagedDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[INManagedDefaults sharedInstance];
  }

  v3 = sharedInstance___sManagedDefaults;

  return v3;
}

uint64_t __35__INManagedDefaults_sharedInstance__block_invoke()
{
  sharedInstance___sManagedDefaults = objc_alloc_init(INManagedDefaults);

  return MEMORY[0x2821F96F8]();
}

- (id)_readManagedDefaults
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/.GlobalPreferences.plist"];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v2;
}

- (void)_writeManagedDefaults:(id)a3
{
  v3 = a3;
  v4 = _INLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(INManagedDefaults *)v3 _writeManagedDefaults:v5];
    }

    _CFPreferencesWriteManagedDomainForUser();
    _CFPreferencesPostValuesChangedInDomains();
    _CFPreferencesManagementStatusChangedForDomains();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [INManagedDefaults _writeManagedDefaults:v5];
    }
  }
}

- (id)valueForManagedDefault:(id)a3
{
  v4 = a3;
  v5 = [(INManagedDefaults *)self _readManagedDefaults];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    if ([v6 isNSNumber])
    {
      v7 = v6;
LABEL_6:
      v8 = v7;
      goto LABEL_8;
    }

    if ([v6 isNSString])
    {
      v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{objc_msgSend(v6, "intValue")}];
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)setValue:(id)a3 forManagedDefault:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(INManagedDefaults *)self _readManagedDefaults];
  v9 = [v8 mutableCopy];

  [v9 setValue:v7 forKey:v6];
  [(INManagedDefaults *)self _writeManagedDefaults:v9];
}

- (void)_writeManagedDefaults:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_275568000, a2, OS_LOG_TYPE_DEBUG, "Writing new set of managed defaults: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end