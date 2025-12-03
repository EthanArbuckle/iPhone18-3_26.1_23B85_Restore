@interface PassRelevancyDates
+ (BOOL)hasRelevancyDatesForPassPID:(unint64_t)d inDatabase:(id)database;
+ (id)_predicateForPassPID:(int64_t)d;
+ (id)_propertyValuesForPassRelevancyDates:(id)dates passPID:(int64_t)d;
+ (id)_relevantDatesInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)relevancyDatesForPassPID:(unint64_t)d inDatabase:(id)database;
+ (void)deleteEntitiesForPassPID:(int64_t)d inDatabase:(id)database;
+ (void)insertPassRelevancyDates:(id)dates forPassPID:(int64_t)d inDatabase:(id)database;
@end

@implementation PassRelevancyDates

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"pass_pid";
  }

  else
  {
    return 0;
  }
}

+ (void)insertPassRelevancyDates:(id)dates forPassPID:(int64_t)d inDatabase:(id)database
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F5978;
  v8[3] = &unk_10083F170;
  selfCopy = self;
  dCopy = d;
  datesCopy = dates;
  databaseCopy = database;
  v6 = databaseCopy;
  v7 = datesCopy;
  sub_1005D4424(v6, v8);
}

+ (BOOL)hasRelevancyDatesForPassPID:(unint64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8 != 0;
}

+ (id)relevancyDatesForPassPID:(unint64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v8 = [self _relevantDatesInDatabase:databaseCopy matchingPredicate:v7];

  return v8;
}

+ (void)deleteEntitiesForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPassPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForPassPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v3];

  return v4;
}

+ (id)_relevantDatesInDatabase:(id)database matchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  databaseCopy = database;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(SQLiteEntity *)PassRelevancyDates queryWithDatabase:databaseCopy predicate:predicateCopy];

  v17[0] = @"relevant_date";
  v17[1] = @"start_date";
  v17[2] = @"end_date";
  v9 = [NSArray arrayWithObjects:v17 count:3];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F5E30;
  v15[3] = &unk_100840B08;
  v16 = v7;
  v10 = v7;
  [v8 enumeratePersistentIDsAndProperties:v9 usingBlock:v15];

  v11 = [v10 sortedArrayUsingComparator:&stru_1008455F8];
  if ([v11 count])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (id)_propertyValuesForPassRelevancyDates:(id)dates passPID:(int64_t)d
{
  datesCopy = dates;
  v6 = +[NSMutableDictionary dictionary];
  effectiveStartDate = [datesCopy effectiveStartDate];
  v8 = _SQLValueForDate();
  [v6 setObjectOrNull:v8 forKey:@"start_date"];

  effectiveEndDate = [datesCopy effectiveEndDate];
  v10 = _SQLValueForDate();
  [v6 setObjectOrNull:v10 forKey:@"end_date"];

  date = [datesCopy date];

  v12 = _SQLValueForDate();
  [v6 setObjectOrNull:v12 forKey:@"relevant_date"];

  v13 = [NSNumber numberWithLongLong:d];
  [v6 setObject:v13 forKey:@"pass_pid"];

  v14 = [v6 copy];

  return v14;
}

@end