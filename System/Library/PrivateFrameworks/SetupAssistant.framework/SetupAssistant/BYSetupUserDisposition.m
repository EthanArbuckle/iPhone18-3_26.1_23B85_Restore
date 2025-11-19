@interface BYSetupUserDisposition
+ (id)current;
- (BYSetupUserDisposition)init;
- (BYSetupUserDisposition)initWithPreferences:(id)a3;
- (BYSetupUserDisposition)initWithProductVersion:(id)a3 buildVersion:(id)a4 date:(id)a5;
- (id)_dictionaryRepresentation;
- (void)_loadDataFromPreferences:(id)a3;
- (void)persistUsingPreferences:(id)a3;
@end

@implementation BYSetupUserDisposition

- (BYSetupUserDisposition)init
{
  v3 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  v4 = [(BYSetupUserDisposition *)self initWithPreferences:v3];

  return v4;
}

- (BYSetupUserDisposition)initWithPreferences:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BYSetupUserDisposition;
  v5 = [(BYSetupUserDisposition *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYSetupUserDisposition *)v5 _loadDataFromPreferences:v4];
  }

  return v6;
}

- (BYSetupUserDisposition)initWithProductVersion:(id)a3 buildVersion:(id)a4 date:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BYSetupUserDisposition;
  v12 = [(BYSetupUserDisposition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_productVersion, a3);
    objc_storeStrong(&v13->_buildVersion, a4);
    objc_storeStrong(&v13->_date, a5);
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

- (void)persistUsingPreferences:(id)a3
{
  v4 = a3;
  v5 = [(BYSetupUserDisposition *)self _dictionaryRepresentation];
  [v4 setObject:v5 forKey:@"disposition" persistImmediately:1];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.purplebuddy.userdisposition.updated", 0, 0, 1u);
}

- (void)_loadDataFromPreferences:(id)a3
{
  v4 = [a3 objectForKey:@"disposition"];
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
  v4 = [(BYSetupUserDisposition *)self date];

  if (v4)
  {
    v5 = [(BYSetupUserDisposition *)self date];
    [v3 setObject:v5 forKeyedSubscript:@"date"];
  }

  v6 = [(BYSetupUserDisposition *)self productVersion];

  if (v6)
  {
    v7 = [(BYSetupUserDisposition *)self productVersion];
    [v3 setObject:v7 forKeyedSubscript:@"productVersion"];
  }

  v8 = [(BYSetupUserDisposition *)self buildVersion];

  if (v8)
  {
    v9 = [(BYSetupUserDisposition *)self buildVersion];
    [v3 setObject:v9 forKeyedSubscript:@"buildVersion"];
  }

  v10 = [(BYSetupUserDisposition *)self isChild];

  if (v10)
  {
    v11 = [(BYSetupUserDisposition *)self isChild];
    [v3 setObject:v11 forKeyedSubscript:@"child"];
  }

  v12 = [(BYSetupUserDisposition *)self isNewUser];

  if (v12)
  {
    v13 = [(BYSetupUserDisposition *)self isNewUser];
    [v3 setObject:v13 forKeyedSubscript:@"newUser"];
  }

  return v3;
}

@end