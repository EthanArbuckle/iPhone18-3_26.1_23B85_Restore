@interface PassShareTimeSchedule
+ (id)_passShareTimeSchedulesWithQuery:(id)a3;
+ (id)_predicateForTimeConfigurationPID:(int64_t)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesForObject:(id)a3;
+ (id)passShareTimeSchedulesForTimeConfigurationPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePassShareTimeSchedulesForTimeConfigurationPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdatePassShareTimeSchedules:(id)a3 forTimeConfigurationPID:(int64_t)a4 inDatabase:(id)a5;
- (PassShareTimeSchedule)initWithPassShareTimeSchedule:(id)a3 forTimeConfigurationPID:(int64_t)a4 inDatabase:(id)a5;
- (id)passShareTimeSchedule;
@end

@implementation PassShareTimeSchedule

- (PassShareTimeSchedule)initWithPassShareTimeSchedule:(id)a3 forTimeConfigurationPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesForObject:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

+ (void)insertOrUpdatePassShareTimeSchedules:(id)a3 forTimeConfigurationPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a1 deletePassShareTimeSchedulesForTimeConfigurationPID:a4 inDatabase:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = [PassShareTimeSchedule alloc];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

+ (id)passShareTimeSchedulesForTimeConfigurationPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForTimeConfigurationPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _passShareTimeSchedulesWithQuery:v8];

  return v9;
}

+ (void)deletePassShareTimeSchedulesForTimeConfigurationPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForTimeConfigurationPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_passShareTimeSchedulesWithQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySetters];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100105360;
  v12[3] = &unk_10083C998;
  v15 = a1;
  v13 = v5;
  v8 = v6;
  v14 = v8;
  v9 = v5;
  [v4 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  if ([v8 count])
  {
    v10 = [v8 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)passShareTimeSchedule
{
  v3 = objc_alloc_init(PKPassShareTimeSchedule);
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001054E0;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForTimeConfigurationPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 hoursOfDay];
  v6 = _SQLValueForIntegerArray(v5);
  [v4 setObjectOrNull:v6 forKey:@"b"];

  v7 = [v3 daysOfWeek];
  v8 = _SQLValueForIntegerArray(v7);
  [v4 setObjectOrNull:v8 forKey:@"c"];

  v9 = [v3 daysOfMonth];
  v10 = _SQLValueForIntegerArray(v9);
  [v4 setObjectOrNull:v10 forKey:@"d"];

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 interval]);
  [v4 setObjectOrNull:v11 forKey:@"e"];

  [v3 frequency];
  v12 = PKPassShareTimeScheduleFrequencyToString();
  [v4 setObjectOrNull:v12 forKey:@"f"];

  return v4;
}

+ (id)_propertySetters
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_100846620;
  v5[1] = &stru_100846640;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100846660;
  v5[3] = &stru_100846680;
  v4[4] = @"f";
  v5[4] = &stru_1008466A0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end