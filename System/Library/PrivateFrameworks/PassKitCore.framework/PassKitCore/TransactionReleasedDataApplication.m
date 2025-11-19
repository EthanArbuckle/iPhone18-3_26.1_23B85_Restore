@interface TransactionReleasedDataApplication
+ (id)_predicateForReleasedDataPID:(int64_t)a3;
+ (id)_propertySettersForReleasedData;
+ (id)_releasedDataElementsFromQuery:(id)a3;
+ (id)releasedDataElementsForPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteEntitiesForPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertReleasedDataApplication:(id)a3 forPID:(int64_t)a4 inDatabase:(id)a5;
@end

@implementation TransactionReleasedDataApplication

+ (void)insertReleasedDataApplication:(id)a3 forPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  [a1 deleteEntitiesForPID:a4 inDatabase:v8];
  v15 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithLongLong:a4];
  [v15 setObject:v10 forKey:@"a"];

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 client]);
  [v15 setObjectOrNull:v11 forKey:@"b"];

  v12 = [v9 bundleIdentifier];
  [v15 setObjectOrNull:v12 forKey:@"c"];

  v13 = [v9 usageDescription];

  [v15 setObjectOrNull:v13 forKey:@"d"];
  v14 = [[a1 alloc] initWithPropertyValues:v15 inDatabase:v8];
}

+ (id)releasedDataElementsForPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForReleasedDataPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _releasedDataElementsFromQuery:v8];

  return v9;
}

+ (id)_releasedDataElementsFromQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySettersForReleasedData];
  v6 = objc_alloc_init(PKTransactionReleasedDataApplication);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001901A0;
  v12[3] = &unk_10083C998;
  v15 = a1;
  v13 = v5;
  v8 = v6;
  v14 = v8;
  v9 = v5;
  [v4 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  if ([v8 client])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)deleteEntitiesForPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForReleasedDataPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForReleasedDataPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForReleasedData
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_10084A870;
  v5[1] = &stru_10084A890;
  v4[2] = @"d";
  v5[2] = &stru_10084A8B0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end