@interface INManagedDefaults
+ (id)sharedInstance;
- (id)_readManagedDefaults;
- (id)valueForManagedDefault:(id)default;
- (void)_writeManagedDefaults:(id)defaults;
- (void)setValue:(id)value forManagedDefault:(id)default;
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

- (void)_writeManagedDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = _INLogSystem();
  v5 = v4;
  if (defaultsCopy)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(INManagedDefaults *)defaultsCopy _writeManagedDefaults:v5];
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

- (id)valueForManagedDefault:(id)default
{
  defaultCopy = default;
  _readManagedDefaults = [(INManagedDefaults *)self _readManagedDefaults];
  v6 = [_readManagedDefaults objectForKey:defaultCopy];

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

- (void)setValue:(id)value forManagedDefault:(id)default
{
  defaultCopy = default;
  valueCopy = value;
  _readManagedDefaults = [(INManagedDefaults *)self _readManagedDefaults];
  v9 = [_readManagedDefaults mutableCopy];

  [v9 setValue:valueCopy forKey:defaultCopy];
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