@interface PassShareTimeConfiguration
+ (id)_passShareTimeConfigurationsWithQuery:(id)a3 inDatabase:(id)a4;
+ (id)_predicateForPassEntitlementPID:(int64_t)a3;
+ (id)_predicateForPassSharedEntitlementPID:(int64_t)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesForObject:(id)a3;
+ (id)passShareTimeConfigurationsForPassEntitlementPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)passShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)_deletePassShareTimeConfigurationsForQuery:(id)a3 inDatabase:(id)a4;
+ (void)_insertOrUpdatePassShareTimeConfigurations:(id)a3 forPassSharedEntitlementPID:(int64_t)a4 forPassEntitlementPID:(int64_t)a5 inDatabase:(id)a6;
+ (void)deletePassShareTimeConfigurationsForPassEntitlementPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePassShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdatePassShareTimeConfiguration:(id)a3 forPassEntitlementPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)insertOrUpdatePassShareTimeConfiguration:(id)a3 forPassSharedEntitlementPID:(int64_t)a4 inDatabase:(id)a5;
- (PassShareTimeConfiguration)initWithPassShareTimeConfiguration:(id)a3 forPassSharedEntitlementPID:(int64_t)a4 forPassEntitlementPID:(int64_t)a5 inDatabase:(id)a6;
- (id)passShareTimeConfiguration;
- (void)updateWithPassShareTimeConfiguration:(id)a3;
@end

@implementation PassShareTimeConfiguration

- (PassShareTimeConfiguration)initWithPassShareTimeConfiguration:(id)a3 forPassSharedEntitlementPID:(int64_t)a4 forPassEntitlementPID:(int64_t)a5 inDatabase:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [objc_opt_class() _propertyValuesForObject:v11];

  if (a4)
  {
    v13 = [NSNumber numberWithLongLong:a4];
    [v12 setObjectOrNull:v13 forKey:@"a"];
  }

  if (a5)
  {
    v14 = [NSNumber numberWithLongLong:a5];
    [v12 setObjectOrNull:v14 forKey:@"b"];
  }

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v12 inDatabase:v10];

  return v15;
}

- (void)updateWithPassShareTimeConfiguration:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesForObject:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (void)insertOrUpdatePassShareTimeConfiguration:(id)a3 forPassSharedEntitlementPID:(int64_t)a4 inDatabase:(id)a5
{
  if (a3)
  {
    v11 = a3;
    v8 = a5;
    v9 = a3;
    v10 = [NSArray arrayWithObjects:&v11 count:1];

    [a1 _insertOrUpdatePassShareTimeConfigurations:v10 forPassSharedEntitlementPID:a4 forPassEntitlementPID:0 inDatabase:{v8, v11}];
  }
}

+ (void)insertOrUpdatePassShareTimeConfiguration:(id)a3 forPassEntitlementPID:(int64_t)a4 inDatabase:(id)a5
{
  if (a3)
  {
    v11 = a3;
    v8 = a5;
    v9 = a3;
    v10 = [NSArray arrayWithObjects:&v11 count:1];

    [a1 _insertOrUpdatePassShareTimeConfigurations:v10 forPassSharedEntitlementPID:0 forPassEntitlementPID:a4 inDatabase:{v8, v11}];
  }
}

+ (void)_insertOrUpdatePassShareTimeConfigurations:(id)a3 forPassSharedEntitlementPID:(int64_t)a4 forPassEntitlementPID:(int64_t)a5 inDatabase:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a4)
  {
    [a1 deletePassShareTimeConfigurationsForPassSharedEntitlementPID:a4 inDatabase:v11];
  }

  if (a5)
  {
    [a1 deletePassShareTimeConfigurationsForPassEntitlementPID:a5 inDatabase:v11];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v10;
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
        v17 = [[PassShareTimeConfiguration alloc] initWithPassShareTimeConfiguration:v16 forPassSharedEntitlementPID:a4 forPassEntitlementPID:a5 inDatabase:v11];
        v18 = [v16 schedules];
        [PassShareTimeSchedule insertOrUpdatePassShareTimeSchedules:v18 forTimeConfigurationPID:[(SQLiteEntity *)v17 persistentID] inDatabase:v11];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

+ (id)passShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassSharedEntitlementPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _passShareTimeConfigurationsWithQuery:v8 inDatabase:v6];

  return v9;
}

+ (id)passShareTimeConfigurationsForPassEntitlementPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassEntitlementPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _passShareTimeConfigurationsWithQuery:v8 inDatabase:v6];

  return v9;
}

+ (void)deletePassShareTimeConfigurationsForPassSharedEntitlementPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPassSharedEntitlementPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];
  [a1 _deletePassShareTimeConfigurationsForQuery:v7 inDatabase:v6];
}

+ (void)deletePassShareTimeConfigurationsForPassEntitlementPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPassEntitlementPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];
  [a1 _deletePassShareTimeConfigurationsForQuery:v7 inDatabase:v6];
}

+ (void)_deletePassShareTimeConfigurationsForQuery:(id)a3 inDatabase:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001079D4;
  v7[3] = &unk_10083EF38;
  v8 = a4;
  v5 = v8;
  v6 = a3;
  [v6 enumeratePersistentIDsUsingBlock:v7];
  [v6 deleteAllEntities];
}

+ (id)_passShareTimeConfigurationsWithQuery:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _propertySetters];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = [v8 allKeys];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100107B40;
  v19 = &unk_10083BF08;
  v23 = a1;
  v20 = v8;
  v21 = v6;
  v11 = v9;
  v22 = v11;
  v12 = v6;
  v13 = v8;
  [v7 enumeratePersistentIDsAndProperties:v10 usingBlock:&v16];

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
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100107D3C;
  v12[3] = &unk_10083BEE0;
  v12[4] = self;
  v13 = v4;
  v6 = v3;
  v14 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v12];

  v8 = [PassShareTimeSchedule passShareTimeSchedulesForTimeConfigurationPID:[(SQLiteEntity *)self persistentID] inDatabase:self->super._database];
  [v6 setSchedules:v8];

  v9 = v14;
  v10 = v6;

  return v6;
}

+ (id)_predicateForPassSharedEntitlementPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPassEntitlementPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 startDate];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"c"];

  v7 = [v3 expirationDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"d"];

  [v3 support];
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