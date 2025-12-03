@interface PassShareTimeConfiguration
+ (id)_passShareTimeConfigurationsWithQuery:(id)query inDatabase:(id)database;
+ (id)_predicateForPassEntitlementPID:(int64_t)d;
+ (id)_predicateForPassSharedEntitlementPID:(int64_t)d;
+ (id)_propertySetters;
+ (id)_propertyValuesForObject:(id)object;
+ (id)passShareTimeConfigurationsForPassEntitlementPID:(int64_t)d inDatabase:(id)database;
+ (id)passShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)d inDatabase:(id)database;
+ (void)_deletePassShareTimeConfigurationsForQuery:(id)query inDatabase:(id)database;
+ (void)_insertOrUpdatePassShareTimeConfigurations:(id)configurations forPassSharedEntitlementPID:(int64_t)d forPassEntitlementPID:(int64_t)iD inDatabase:(id)database;
+ (void)deletePassShareTimeConfigurationsForPassEntitlementPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePassShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdatePassShareTimeConfiguration:(id)configuration forPassEntitlementPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdatePassShareTimeConfiguration:(id)configuration forPassSharedEntitlementPID:(int64_t)d inDatabase:(id)database;
- (PassShareTimeConfiguration)initWithPassShareTimeConfiguration:(id)configuration forPassSharedEntitlementPID:(int64_t)d forPassEntitlementPID:(int64_t)iD inDatabase:(id)database;
- (id)passShareTimeConfiguration;
- (void)updateWithPassShareTimeConfiguration:(id)configuration;
@end

@implementation PassShareTimeConfiguration

- (PassShareTimeConfiguration)initWithPassShareTimeConfiguration:(id)configuration forPassSharedEntitlementPID:(int64_t)d forPassEntitlementPID:(int64_t)iD inDatabase:(id)database
{
  databaseCopy = database;
  configurationCopy = configuration;
  v12 = [objc_opt_class() _propertyValuesForObject:configurationCopy];

  if (d)
  {
    v13 = [NSNumber numberWithLongLong:d];
    [v12 setObjectOrNull:v13 forKey:@"a"];
  }

  if (iD)
  {
    v14 = [NSNumber numberWithLongLong:iD];
    [v12 setObjectOrNull:v14 forKey:@"b"];
  }

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v12 inDatabase:databaseCopy];

  return v15;
}

- (void)updateWithPassShareTimeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [objc_opt_class() _propertyValuesForObject:configurationCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (void)insertOrUpdatePassShareTimeConfiguration:(id)configuration forPassSharedEntitlementPID:(int64_t)d inDatabase:(id)database
{
  if (configuration)
  {
    configurationCopy = configuration;
    databaseCopy = database;
    configurationCopy2 = configuration;
    v10 = [NSArray arrayWithObjects:&configurationCopy count:1];

    [self _insertOrUpdatePassShareTimeConfigurations:v10 forPassSharedEntitlementPID:d forPassEntitlementPID:0 inDatabase:{databaseCopy, configurationCopy}];
  }
}

+ (void)insertOrUpdatePassShareTimeConfiguration:(id)configuration forPassEntitlementPID:(int64_t)d inDatabase:(id)database
{
  if (configuration)
  {
    configurationCopy = configuration;
    databaseCopy = database;
    configurationCopy2 = configuration;
    v10 = [NSArray arrayWithObjects:&configurationCopy count:1];

    [self _insertOrUpdatePassShareTimeConfigurations:v10 forPassSharedEntitlementPID:0 forPassEntitlementPID:d inDatabase:{databaseCopy, configurationCopy}];
  }
}

+ (void)_insertOrUpdatePassShareTimeConfigurations:(id)configurations forPassSharedEntitlementPID:(int64_t)d forPassEntitlementPID:(int64_t)iD inDatabase:(id)database
{
  configurationsCopy = configurations;
  databaseCopy = database;
  if (d)
  {
    [self deletePassShareTimeConfigurationsForPassSharedEntitlementPID:d inDatabase:databaseCopy];
  }

  if (iD)
  {
    [self deletePassShareTimeConfigurationsForPassEntitlementPID:iD inDatabase:databaseCopy];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = configurationsCopy;
  v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = [[PassShareTimeConfiguration alloc] initWithPassShareTimeConfiguration:v16 forPassSharedEntitlementPID:d forPassEntitlementPID:iD inDatabase:databaseCopy];
        schedules = [v16 schedules];
        [PassShareTimeSchedule insertOrUpdatePassShareTimeSchedules:schedules forTimeConfigurationPID:[(SQLiteEntity *)v17 persistentID] inDatabase:databaseCopy];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

+ (id)passShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassSharedEntitlementPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _passShareTimeConfigurationsWithQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)passShareTimeConfigurationsForPassEntitlementPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassEntitlementPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _passShareTimeConfigurationsWithQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (void)deletePassShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPassSharedEntitlementPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];
  [self _deletePassShareTimeConfigurationsForQuery:v7 inDatabase:databaseCopy];
}

+ (void)deletePassShareTimeConfigurationsForPassEntitlementPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPassEntitlementPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];
  [self _deletePassShareTimeConfigurationsForQuery:v7 inDatabase:databaseCopy];
}

+ (void)_deletePassShareTimeConfigurationsForQuery:(id)query inDatabase:(id)database
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001079D4;
  v7[3] = &unk_10083EF38;
  databaseCopy = database;
  v5 = databaseCopy;
  queryCopy = query;
  [queryCopy enumeratePersistentIDsUsingBlock:v7];
  [queryCopy deleteAllEntities];
}

+ (id)_passShareTimeConfigurationsWithQuery:(id)query inDatabase:(id)database
{
  databaseCopy = database;
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v9 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySetters allKeys];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100107B40;
  v19 = &unk_10083BF08;
  selfCopy = self;
  v20 = _propertySetters;
  v21 = databaseCopy;
  v11 = v9;
  v22 = v11;
  v12 = databaseCopy;
  v13 = _propertySetters;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:&v16];

  if ([v11 count])
  {
    v14 = [v11 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)passShareTimeConfiguration
{
  v3 = objc_alloc_init(PKPassShareTimeConfiguration);
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100107D3C;
  v12[3] = &unk_10083BEE0;
  v12[4] = self;
  v13 = _propertySetters;
  v6 = v3;
  v14 = v6;
  v7 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v12];

  v8 = [PassShareTimeSchedule passShareTimeSchedulesForTimeConfigurationPID:[(SQLiteEntity *)self persistentID] inDatabase:self->super._database];
  [v6 setSchedules:v8];

  v9 = v14;
  v10 = v6;

  return v6;
}

+ (id)_predicateForPassSharedEntitlementPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPassEntitlementPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(NSMutableDictionary);
  startDate = [objectCopy startDate];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"c"];

  expirationDate = [objectCopy expirationDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"d"];

  [objectCopy support];
  v9 = PKPassShareTimeConfigurationSupportToString();
  [v4 setObjectOrNull:v9 forKey:@"e"];

  return v4;
}

+ (id)_propertySetters
{
  v4[0] = @"c";
  v4[1] = @"d";
  v5[0] = &stru_1008469A0;
  v5[1] = &stru_1008469C0;
  v4[2] = @"e";
  v5[2] = &stru_1008469E0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end