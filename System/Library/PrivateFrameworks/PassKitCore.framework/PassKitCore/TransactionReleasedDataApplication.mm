@interface TransactionReleasedDataApplication
+ (id)_predicateForReleasedDataPID:(int64_t)d;
+ (id)_propertySettersForReleasedData;
+ (id)_releasedDataElementsFromQuery:(id)query;
+ (id)releasedDataElementsForPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteEntitiesForPID:(int64_t)d inDatabase:(id)database;
+ (void)insertReleasedDataApplication:(id)application forPID:(int64_t)d inDatabase:(id)database;
@end

@implementation TransactionReleasedDataApplication

+ (void)insertReleasedDataApplication:(id)application forPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  applicationCopy = application;
  [self deleteEntitiesForPID:d inDatabase:databaseCopy];
  v15 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithLongLong:d];
  [v15 setObject:v10 forKey:@"a"];

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [applicationCopy client]);
  [v15 setObjectOrNull:v11 forKey:@"b"];

  bundleIdentifier = [applicationCopy bundleIdentifier];
  [v15 setObjectOrNull:bundleIdentifier forKey:@"c"];

  usageDescription = [applicationCopy usageDescription];

  [v15 setObjectOrNull:usageDescription forKey:@"d"];
  v14 = [[self alloc] initWithPropertyValues:v15 inDatabase:databaseCopy];
}

+ (id)releasedDataElementsForPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForReleasedDataPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _releasedDataElementsFromQuery:v8];

  return v9;
}

+ (id)_releasedDataElementsFromQuery:(id)query
{
  queryCopy = query;
  _propertySettersForReleasedData = [self _propertySettersForReleasedData];
  v6 = objc_alloc_init(PKTransactionReleasedDataApplication);
  allKeys = [_propertySettersForReleasedData allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001901A0;
  v12[3] = &unk_10083C998;
  selfCopy = self;
  v13 = _propertySettersForReleasedData;
  v8 = v6;
  v14 = v8;
  v9 = _propertySettersForReleasedData;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

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

+ (void)deleteEntitiesForPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForReleasedDataPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForReleasedDataPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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