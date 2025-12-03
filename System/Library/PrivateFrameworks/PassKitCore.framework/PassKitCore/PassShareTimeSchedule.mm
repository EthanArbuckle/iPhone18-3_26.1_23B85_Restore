@interface PassShareTimeSchedule
+ (id)_passShareTimeSchedulesWithQuery:(id)query;
+ (id)_predicateForTimeConfigurationPID:(int64_t)d;
+ (id)_propertySetters;
+ (id)_propertyValuesForObject:(id)object;
+ (id)passShareTimeSchedulesForTimeConfigurationPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePassShareTimeSchedulesForTimeConfigurationPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdatePassShareTimeSchedules:(id)schedules forTimeConfigurationPID:(int64_t)d inDatabase:(id)database;
- (PassShareTimeSchedule)initWithPassShareTimeSchedule:(id)schedule forTimeConfigurationPID:(int64_t)d inDatabase:(id)database;
- (id)passShareTimeSchedule;
@end

@implementation PassShareTimeSchedule

- (PassShareTimeSchedule)initWithPassShareTimeSchedule:(id)schedule forTimeConfigurationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  scheduleCopy = schedule;
  v10 = [objc_opt_class() _propertyValuesForObject:scheduleCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

+ (void)insertOrUpdatePassShareTimeSchedules:(id)schedules forTimeConfigurationPID:(int64_t)d inDatabase:(id)database
{
  schedulesCopy = schedules;
  databaseCopy = database;
  [self deletePassShareTimeSchedulesForTimeConfigurationPID:d inDatabase:databaseCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = schedulesCopy;
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

+ (id)passShareTimeSchedulesForTimeConfigurationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForTimeConfigurationPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _passShareTimeSchedulesWithQuery:v8];

  return v9;
}

+ (void)deletePassShareTimeSchedulesForTimeConfigurationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForTimeConfigurationPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_passShareTimeSchedulesWithQuery:(id)query
{
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v6 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySetters allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100105360;
  v12[3] = &unk_10083C998;
  selfCopy = self;
  v13 = _propertySetters;
  v8 = v6;
  v14 = v8;
  v9 = _propertySetters;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

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
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001054E0;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySetters;
  v6 = v3;
  v13 = v6;
  v7 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForTimeConfigurationPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(NSMutableDictionary);
  hoursOfDay = [objectCopy hoursOfDay];
  v6 = _SQLValueForIntegerArray(hoursOfDay);
  [v4 setObjectOrNull:v6 forKey:@"b"];

  daysOfWeek = [objectCopy daysOfWeek];
  v8 = _SQLValueForIntegerArray(daysOfWeek);
  [v4 setObjectOrNull:v8 forKey:@"c"];

  daysOfMonth = [objectCopy daysOfMonth];
  v10 = _SQLValueForIntegerArray(daysOfMonth);
  [v4 setObjectOrNull:v10 forKey:@"d"];

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [objectCopy interval]);
  [v4 setObjectOrNull:v11 forKey:@"e"];

  [objectCopy frequency];
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