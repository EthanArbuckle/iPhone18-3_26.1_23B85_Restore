@interface PassRelevancyDates
+ (BOOL)hasRelevancyDatesForPassPID:(unint64_t)a3 inDatabase:(id)a4;
+ (id)_predicateForPassPID:(int64_t)a3;
+ (id)_propertyValuesForPassRelevancyDates:(id)a3 passPID:(int64_t)a4;
+ (id)_relevantDatesInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)relevancyDatesForPassPID:(unint64_t)a3 inDatabase:(id)a4;
+ (void)deleteEntitiesForPassPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertPassRelevancyDates:(id)a3 forPassPID:(int64_t)a4 inDatabase:(id)a5;
@end

@implementation PassRelevancyDates

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"pass_pid";
  }

  else
  {
    return 0;
  }
}

+ (void)insertPassRelevancyDates:(id)a3 forPassPID:(int64_t)a4 inDatabase:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F5978;
  v8[3] = &unk_10083F170;
  v11 = a1;
  v12 = a4;
  v9 = a3;
  v10 = a5;
  v6 = v10;
  v7 = v9;
  sub_1005D4424(v6, v8);
}

+ (BOOL)hasRelevancyDatesForPassPID:(unint64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8 != 0;
}

+ (id)relevancyDatesForPassPID:(unint64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassPID:a3];
  v8 = [a1 _relevantDatesInDatabase:v6 matchingPredicate:v7];

  return v8;
}

+ (void)deleteEntitiesForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPassPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForPassPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v3];

  return v4;
}

+ (id)_relevantDatesInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(SQLiteEntity *)PassRelevancyDates queryWithDatabase:v6 predicate:v5];

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

+ (id)_propertyValuesForPassRelevancyDates:(id)a3 passPID:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 effectiveStartDate];
  v8 = _SQLValueForDate();
  [v6 setObjectOrNull:v8 forKey:@"start_date"];

  v9 = [v5 effectiveEndDate];
  v10 = _SQLValueForDate();
  [v6 setObjectOrNull:v10 forKey:@"end_date"];

  v11 = [v5 date];

  v12 = _SQLValueForDate();
  [v6 setObjectOrNull:v12 forKey:@"relevant_date"];

  v13 = [NSNumber numberWithLongLong:a4];
  [v6 setObject:v13 forKey:@"pass_pid"];

  v14 = [v6 copy];

  return v14;
}

@end