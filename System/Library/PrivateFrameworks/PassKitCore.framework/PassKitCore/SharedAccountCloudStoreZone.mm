@interface SharedAccountCloudStoreZone
+ (id)_predicateForSharedAccountCloudStorePID:(int64_t)d;
+ (id)_predicateForSharedAccountCloudStoreZoneWithAccountIdentifier:(id)identifier zoneName:(id)name access:(unint64_t)access sharedAccountCloudStorePID:(int64_t)d;
+ (id)_propertySettersForSharedAccountCloudStoreZone;
+ (id)_sharedAccountCloudStoreZoneWithAccountIdentifier:(id)identifier zoneName:(id)name access:(unint64_t)access sharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database;
+ (id)_sharedAccountCloudStoreZonesWithQuery:(id)query;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertOrUpdateSharedAccountCloudStoreZones:(id)zones forSharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database;
+ (id)sharedAccountCloudStoreZonesForSharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database;
+ (void)deleteEntitiesForSharedAccountCloudStore:(id)store inDatabase:(id)database;
- (SharedAccountCloudStoreZone)initWithSharedAccountCloudStoreZone:(id)zone forSharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database;
- (id)_commonDictionaryForSharedAccountCloudStoreZone:(id)zone forSharedAccountCloudStorePID:(int64_t)d;
- (id)sharedAccountCloudStoreZone;
- (void)updateSharedAccountCloudStoreZone:(id)zone forSharedAccountCloudStorePID:(int64_t)d;
@end

@implementation SharedAccountCloudStoreZone

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"peanuts_pid";
  }

  else
  {
    return 0;
  }
}

+ (id)insertOrUpdateSharedAccountCloudStoreZones:(id)zones forSharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database
{
  zonesCopy = zones;
  databaseCopy = database;
  v21 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = zonesCopy;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        accountIdentifier = [v14 accountIdentifier];
        zoneName = [v14 zoneName];
        v17 = [self _sharedAccountCloudStoreZoneWithAccountIdentifier:accountIdentifier zoneName:zoneName access:objc_msgSend(v14 sharedAccountCloudStorePID:"access") inDatabase:{d, databaseCopy}];

        if (v17)
        {
          [v17 updateSharedAccountCloudStoreZone:v14 forSharedAccountCloudStorePID:d];
        }

        else
        {
          v17 = [[self alloc] initWithSharedAccountCloudStoreZone:v14 forSharedAccountCloudStorePID:d inDatabase:databaseCopy];
        }

        [v21 addObject:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [v21 copy];

  return v18;
}

- (SharedAccountCloudStoreZone)initWithSharedAccountCloudStoreZone:(id)zone forSharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [(SharedAccountCloudStoreZone *)self _commonDictionaryForSharedAccountCloudStoreZone:zone forSharedAccountCloudStorePID:d];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];

  return v10;
}

- (void)updateSharedAccountCloudStoreZone:(id)zone forSharedAccountCloudStorePID:(int64_t)d
{
  v5 = [(SharedAccountCloudStoreZone *)self _commonDictionaryForSharedAccountCloudStoreZone:zone forSharedAccountCloudStorePID:d];
  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)_predicateForSharedAccountCloudStoreZoneWithAccountIdentifier:(id)identifier zoneName:(id)name access:(unint64_t)access sharedAccountCloudStorePID:(int64_t)d
{
  nameCopy = name;
  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"account_identifier" equalToValue:identifier];
  v19[0] = v11;
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"zone_name" equalToValue:nameCopy];

  v19[1] = v12;
  v13 = [NSNumber numberWithUnsignedInteger:access];
  v14 = [SQLiteComparisonPredicate predicateWithProperty:@"access" equalToValue:v13];
  v19[2] = v14;
  v15 = [self _predicateForSharedAccountCloudStorePID:d];
  v19[3] = v15;
  v16 = [NSArray arrayWithObjects:v19 count:4];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  return v17;
}

+ (id)_predicateForSharedAccountCloudStorePID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"peanuts_pid" equalToValue:v3];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (void)deleteEntitiesForSharedAccountCloudStore:(id)store inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForSharedAccountCloudStorePID:{objc_msgSend(store, "persistentID")}];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)sharedAccountCloudStoreZonesForSharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForSharedAccountCloudStorePID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _sharedAccountCloudStoreZonesWithQuery:v8];

  return v9;
}

+ (id)_sharedAccountCloudStoreZoneWithAccountIdentifier:(id)identifier zoneName:(id)name access:(unint64_t)access sharedAccountCloudStorePID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v13 = [self _predicateForSharedAccountCloudStoreZoneWithAccountIdentifier:identifier zoneName:name access:access sharedAccountCloudStorePID:d];
  v14 = [self anyInDatabase:databaseCopy predicate:v13];

  return v14;
}

- (id)sharedAccountCloudStoreZone
{
  v3 = objc_alloc_init(PKSharedAccountCloudStoreZone);
  _propertySettersForSharedAccountCloudStoreZone = [objc_opt_class() _propertySettersForSharedAccountCloudStoreZone];
  allKeys = [_propertySettersForSharedAccountCloudStoreZone allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CDA70;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForSharedAccountCloudStoreZone;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForSharedAccountCloudStoreZone;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_sharedAccountCloudStoreZonesWithQuery:(id)query
{
  queryCopy = query;
  _propertySettersForSharedAccountCloudStoreZone = [self _propertySettersForSharedAccountCloudStoreZone];
  v6 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySettersForSharedAccountCloudStoreZone allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CDBF8;
  v12[3] = &unk_10083C998;
  v14 = v6;
  selfCopy = self;
  v13 = _propertySettersForSharedAccountCloudStoreZone;
  v8 = v6;
  v9 = _propertySettersForSharedAccountCloudStoreZone;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

- (id)_commonDictionaryForSharedAccountCloudStoreZone:(id)zone forSharedAccountCloudStorePID:(int64_t)d
{
  zoneCopy = zone;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:d];
  [v6 setObjectOrNull:v7 forKey:@"peanuts_pid"];

  zoneName = [zoneCopy zoneName];
  [v6 setObjectOrNull:zoneName forKey:@"zone_name"];

  accountIdentifier = [zoneCopy accountIdentifier];
  [v6 setObjectOrNull:accountIdentifier forKey:@"account_identifier"];

  [v6 setInteger:objc_msgSend(zoneCopy forKey:{"accountType"), @"account_type"}];
  [v6 setInteger:objc_msgSend(zoneCopy forKey:{"access"), @"access"}];
  [v6 setInteger:objc_msgSend(zoneCopy forKey:{"mode"), @"mode"}];
  originatorAltDSID = [zoneCopy originatorAltDSID];
  [v6 setObjectOrNull:originatorAltDSID forKey:@"a"];

  sharedUsersAltDSIDs = [zoneCopy sharedUsersAltDSIDs];

  allObjects = [sharedUsersAltDSIDs allObjects];
  v13 = [allObjects componentsJoinedByString:{@", "}];
  [v6 setObjectOrNull:v13 forKey:@"b"];

  return v6;
}

+ (id)_propertySettersForSharedAccountCloudStoreZone
{
  v4[0] = @"zone_name";
  v4[1] = @"account_identifier";
  v5[0] = &stru_100842DD8;
  v5[1] = &stru_100842DF8;
  v4[2] = @"account_type";
  v4[3] = @"access";
  v5[2] = &stru_100842E18;
  v5[3] = &stru_100842E38;
  v4[4] = @"mode";
  v4[5] = @"a";
  v5[4] = &stru_100842E58;
  v5[5] = &stru_100842E78;
  v4[6] = @"b";
  v5[6] = &stru_100842E98;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

@end