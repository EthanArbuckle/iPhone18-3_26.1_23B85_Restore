@interface PSGraphSettings
+ (id)currentSettings;
- (PSGraphSettings)init;
@end

@implementation PSGraphSettings

- (PSGraphSettings)init
{
  v6.receiver = self;
  v6.super_class = PSGraphSettings;
  v2 = [(PSGraphSettings *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.polaris"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

+ (id)currentSettings
{
  if (currentSettings_once != -1)
  {
    +[PSGraphSettings currentSettings];
  }

  v3 = currentSettings_currentSettings;

  return v3;
}

uint64_t __34__PSGraphSettings_currentSettings__block_invoke()
{
  currentSettings_currentSettings = objc_alloc_init(PSGraphSettings);

  return MEMORY[0x2821F96F8]();
}

@end