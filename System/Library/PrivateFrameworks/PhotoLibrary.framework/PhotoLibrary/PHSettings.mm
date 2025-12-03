@interface PHSettings
+ (id)_signatureDictionary;
+ (id)_userDefaults;
+ (id)createSharedSettings;
+ (id)sharedSettings;
+ (void)setSuiteName:(id)name;
- (id)parentSettings;
- (void)save;
@end

@implementation PHSettings

+ (id)_signatureDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  initWithDefaultValues = [objc_alloc(objc_opt_class()) initWithDefaultValues];
  archiveDictionary = [initWithDefaultValues archiveDictionary];
  [dictionary setObject:archiveDictionary forKey:@"__defaultValues"];

  return dictionary;
}

+ (id)_userDefaults
{
  suiteName = [self suiteName];
  if (suiteName)
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:suiteName];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v4 = standardUserDefaults;

  return v4;
}

+ (id)createSharedSettings
{
  if (MEMORY[0x21CEE19C0](self, a2))
  {
    _userDefaults = [self _userDefaults];
    _defaultsKey = [self _defaultsKey];
    v5 = [_userDefaults objectForKey:_defaultsKey];

    v6 = [v5 objectForKeyedSubscript:@"archive"];
    v7 = [v5 objectForKeyedSubscript:@"signature"];
    _signatureDictionary = [self _signatureDictionary];
    v9 = [v7 isEqualToDictionary:_signatureDictionary];

    if (!v9)
    {
      initWithDefaultValues = 0;
LABEL_6:

      if (initWithDefaultValues)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v6)
    {
      initWithDefaultValues = [self settingsFromArchiveDictionary:v6];
      goto LABEL_6;
    }
  }

LABEL_9:
  initWithDefaultValues = [[self alloc] initWithDefaultValues];
LABEL_10:

  return initWithDefaultValues;
}

+ (id)sharedSettings
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHSettings.m" lineNumber:30 description:@"Concrete subclass must implement. Use either PHSettingsImplementRootSettings() or PHSettingsImplementChildSettings() macro for this."];

  return 0;
}

+ (void)setSuiteName:(id)name
{
  _suiteName = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)save
{
  parentSettings = [(PHSettings *)self parentSettings];
  v9 = parentSettings;
  if (parentSettings)
  {
    [parentSettings save];
  }

  else
  {
    _userDefaults = [objc_opt_class() _userDefaults];
    _defaultsKey = [objc_opt_class() _defaultsKey];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    archiveDictionary = [(PTSettings *)self archiveDictionary];
    [v6 setObject:archiveDictionary forKeyedSubscript:@"archive"];

    _signatureDictionary = [objc_opt_class() _signatureDictionary];
    [v6 setObject:_signatureDictionary forKeyedSubscript:@"signature"];

    [_userDefaults setObject:v6 forKey:_defaultsKey];
    [_userDefaults synchronize];
  }
}

- (id)parentSettings
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHSettings.m" lineNumber:35 description:@"Concrete subclass must implement. Use either PHSettingsImplementRootSettings() or PHSettingsImplementChildSettings() macro for this."];

  return 0;
}

@end