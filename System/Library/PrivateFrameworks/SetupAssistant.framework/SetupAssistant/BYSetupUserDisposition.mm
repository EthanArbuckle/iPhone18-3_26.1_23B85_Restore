@interface BYSetupUserDisposition
+ (id)current;
- (BYSetupUserDisposition)init;
- (BYSetupUserDisposition)initWithPreferences:(id)preferences;
- (BYSetupUserDisposition)initWithProductVersion:(id)version buildVersion:(id)buildVersion date:(id)date;
- (id)_dictionaryRepresentation;
- (void)_loadDataFromPreferences:(id)preferences;
- (void)persistUsingPreferences:(id)preferences;
@end

@implementation BYSetupUserDisposition

- (BYSetupUserDisposition)init
{
  v3 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  v4 = [(BYSetupUserDisposition *)self initWithPreferences:v3];

  return v4;
}

- (BYSetupUserDisposition)initWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v8.receiver = self;
  v8.super_class = BYSetupUserDisposition;
  v5 = [(BYSetupUserDisposition *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYSetupUserDisposition *)v5 _loadDataFromPreferences:preferencesCopy];
  }

  return v6;
}

- (BYSetupUserDisposition)initWithProductVersion:(id)version buildVersion:(id)buildVersion date:(id)date
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = BYSetupUserDisposition;
  v12 = [(BYSetupUserDisposition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_productVersion, version);
    objc_storeStrong(&v13->_buildVersion, buildVersion);
    objc_storeStrong(&v13->_date, date);
  }

  return v13;
}

+ (id)current
{
  if (current_onceToken != -1)
  {
    +[BYSetupUserDisposition current];
  }

  v3 = current_disposition;

  return v3;
}

uint64_t __33__BYSetupUserDisposition_current__block_invoke()
{
  current_disposition = objc_alloc_init(BYSetupUserDisposition);

  return MEMORY[0x1EEE66BB8]();
}

- (void)persistUsingPreferences:(id)preferences
{
  preferencesCopy = preferences;
  _dictionaryRepresentation = [(BYSetupUserDisposition *)self _dictionaryRepresentation];
  [preferencesCopy setObject:_dictionaryRepresentation forKey:@"disposition" persistImmediately:1];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.purplebuddy.userdisposition.updated", 0, 0, 1u);
}

- (void)_loadDataFromPreferences:(id)preferences
{
  v4 = [preferences objectForKey:@"disposition"];
  if (v4)
  {
    v10 = v4;
    v5 = [v4 valueForKey:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BYSetupUserDisposition *)self setDate:v5];
    }

    v6 = [v10 valueForKey:@"productVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BYSetupUserDisposition *)self setProductVersion:v6];
    }

    v7 = [v10 valueForKey:@"buildVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BYSetupUserDisposition *)self setBuildVersion:v7];
    }

    v8 = [v10 valueForKey:@"child"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BYSetupUserDisposition *)self setChild:v8];
    }

    v9 = [v10 valueForKey:@"newUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BYSetupUserDisposition *)self setNewUser:v9];
    }

    v4 = v10;
  }
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  date = [(BYSetupUserDisposition *)self date];

  if (date)
  {
    date2 = [(BYSetupUserDisposition *)self date];
    [v3 setObject:date2 forKeyedSubscript:@"date"];
  }

  productVersion = [(BYSetupUserDisposition *)self productVersion];

  if (productVersion)
  {
    productVersion2 = [(BYSetupUserDisposition *)self productVersion];
    [v3 setObject:productVersion2 forKeyedSubscript:@"productVersion"];
  }

  buildVersion = [(BYSetupUserDisposition *)self buildVersion];

  if (buildVersion)
  {
    buildVersion2 = [(BYSetupUserDisposition *)self buildVersion];
    [v3 setObject:buildVersion2 forKeyedSubscript:@"buildVersion"];
  }

  isChild = [(BYSetupUserDisposition *)self isChild];

  if (isChild)
  {
    isChild2 = [(BYSetupUserDisposition *)self isChild];
    [v3 setObject:isChild2 forKeyedSubscript:@"child"];
  }

  isNewUser = [(BYSetupUserDisposition *)self isNewUser];

  if (isNewUser)
  {
    isNewUser2 = [(BYSetupUserDisposition *)self isNewUser];
    [v3 setObject:isNewUser2 forKeyedSubscript:@"newUser"];
  }

  return v3;
}

@end