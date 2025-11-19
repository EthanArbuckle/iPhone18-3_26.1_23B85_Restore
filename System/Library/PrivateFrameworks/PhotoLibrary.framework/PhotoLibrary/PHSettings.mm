@interface PHSettings
+ (id)_signatureDictionary;
+ (id)_userDefaults;
+ (id)createSharedSettings;
+ (id)sharedSettings;
+ (void)setSuiteName:(id)a3;
- (id)parentSettings;
- (void)save;
@end

@implementation PHSettings

+ (id)_signatureDictionary
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [objc_alloc(objc_opt_class()) initWithDefaultValues];
  v4 = [v3 archiveDictionary];
  [v2 setObject:v4 forKey:@"__defaultValues"];

  return v2;
}

+ (id)_userDefaults
{
  v2 = [a1 suiteName];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v2];
  }

  else
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v4 = v3;

  return v4;
}

+ (id)createSharedSettings
{
  if (MEMORY[0x21CEE19C0](a1, a2))
  {
    v3 = [a1 _userDefaults];
    v4 = [a1 _defaultsKey];
    v5 = [v3 objectForKey:v4];

    v6 = [v5 objectForKeyedSubscript:@"archive"];
    v7 = [v5 objectForKeyedSubscript:@"signature"];
    v8 = [a1 _signatureDictionary];
    v9 = [v7 isEqualToDictionary:v8];

    if (!v9)
    {
      v10 = 0;
LABEL_6:

      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v6)
    {
      v10 = [a1 settingsFromArchiveDictionary:v6];
      goto LABEL_6;
    }
  }

LABEL_9:
  v10 = [[a1 alloc] initWithDefaultValues];
LABEL_10:

  return v10;
}

+ (id)sharedSettings
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PHSettings.m" lineNumber:30 description:@"Concrete subclass must implement. Use either PHSettingsImplementRootSettings() or PHSettingsImplementChildSettings() macro for this."];

  return 0;
}

+ (void)setSuiteName:(id)a3
{
  _suiteName = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)save
{
  v3 = [(PHSettings *)self parentSettings];
  v9 = v3;
  if (v3)
  {
    [v3 save];
  }

  else
  {
    v4 = [objc_opt_class() _userDefaults];
    v5 = [objc_opt_class() _defaultsKey];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v7 = [(PTSettings *)self archiveDictionary];
    [v6 setObject:v7 forKeyedSubscript:@"archive"];

    v8 = [objc_opt_class() _signatureDictionary];
    [v6 setObject:v8 forKeyedSubscript:@"signature"];

    [v4 setObject:v6 forKey:v5];
    [v4 synchronize];
  }
}

- (id)parentSettings
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PHSettings.m" lineNumber:35 description:@"Concrete subclass must implement. Use either PHSettingsImplementRootSettings() or PHSettingsImplementChildSettings() macro for this."];

  return 0;
}

@end