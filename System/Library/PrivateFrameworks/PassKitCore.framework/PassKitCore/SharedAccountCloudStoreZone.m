@interface SharedAccountCloudStoreZone
+ (id)_predicateForSharedAccountCloudStorePID:(int64_t)a3;
+ (id)_predicateForSharedAccountCloudStoreZoneWithAccountIdentifier:(id)a3 zoneName:(id)a4 access:(unint64_t)a5 sharedAccountCloudStorePID:(int64_t)a6;
+ (id)_propertySettersForSharedAccountCloudStoreZone;
+ (id)_sharedAccountCloudStoreZoneWithAccountIdentifier:(id)a3 zoneName:(id)a4 access:(unint64_t)a5 sharedAccountCloudStorePID:(int64_t)a6 inDatabase:(id)a7;
+ (id)_sharedAccountCloudStoreZonesWithQuery:(id)a3;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertOrUpdateSharedAccountCloudStoreZones:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4 inDatabase:(id)a5;
+ (id)sharedAccountCloudStoreZonesForSharedAccountCloudStorePID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteEntitiesForSharedAccountCloudStore:(id)a3 inDatabase:(id)a4;
- (SharedAccountCloudStoreZone)initWithSharedAccountCloudStoreZone:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4 inDatabase:(id)a5;
- (id)_commonDictionaryForSharedAccountCloudStoreZone:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4;
- (id)sharedAccountCloudStoreZone;
- (void)updateSharedAccountCloudStoreZone:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4;
@end

@implementation SharedAccountCloudStoreZone

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"peanuts_pid";
  }

  else
  {
    return 0;
  }
}

+ (id)insertOrUpdateSharedAccountCloudStoreZones:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
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
        v15 = [v14 accountIdentifier];
        v16 = [v14 zoneName];
        v17 = [a1 _sharedAccountCloudStoreZoneWithAccountIdentifier:v15 zoneName:v16 access:objc_msgSend(v14 sharedAccountCloudStorePID:"access") inDatabase:{a4, v9}];

        if (v17)
        {
          [v17 updateSharedAccountCloudStoreZone:v14 forSharedAccountCloudStorePID:a4];
        }

        else
        {
          v17 = [[a1 alloc] initWithSharedAccountCloudStoreZone:v14 forSharedAccountCloudStorePID:a4 inDatabase:v9];
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

- (SharedAccountCloudStoreZone)initWithSharedAccountCloudStoreZone:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [(SharedAccountCloudStoreZone *)self _commonDictionaryForSharedAccountCloudStoreZone:a3 forSharedAccountCloudStorePID:a4];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:v8];

  return v10;
}

- (void)updateSharedAccountCloudStoreZone:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4
{
  v5 = [(SharedAccountCloudStoreZone *)self _commonDictionaryForSharedAccountCloudStoreZone:a3 forSharedAccountCloudStorePID:a4];
  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)_predicateForSharedAccountCloudStoreZoneWithAccountIdentifier:(id)a3 zoneName:(id)a4 access:(unint64_t)a5 sharedAccountCloudStorePID:(int64_t)a6
{
  v10 = a4;
  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"account_identifier" equalToValue:a3];
  v19[0] = v11;
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"zone_name" equalToValue:v10];

  v19[1] = v12;
  v13 = [NSNumber numberWithUnsignedInteger:a5];
  v14 = [SQLiteComparisonPredicate predicateWithProperty:@"access" equalToValue:v13];
  v19[2] = v14;
  v15 = [a1 _predicateForSharedAccountCloudStorePID:a6];
  v19[3] = v15;
  v16 = [NSArray arrayWithObjects:v19 count:4];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  return v17;
}

+ (id)_predicateForSharedAccountCloudStorePID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"peanuts_pid" equalToValue:v3];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (void)deleteEntitiesForSharedAccountCloudStore:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForSharedAccountCloudStorePID:{objc_msgSend(a3, "persistentID")}];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)sharedAccountCloudStoreZonesForSharedAccountCloudStorePID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForSharedAccountCloudStorePID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _sharedAccountCloudStoreZonesWithQuery:v8];

  return v9;
}

+ (id)_sharedAccountCloudStoreZoneWithAccountIdentifier:(id)a3 zoneName:(id)a4 access:(unint64_t)a5 sharedAccountCloudStorePID:(int64_t)a6 inDatabase:(id)a7
{
  v12 = a7;
  v13 = [a1 _predicateForSharedAccountCloudStoreZoneWithAccountIdentifier:a3 zoneName:a4 access:a5 sharedAccountCloudStorePID:a6];
  v14 = [a1 anyInDatabase:v12 predicate:v13];

  return v14;
}

- (id)sharedAccountCloudStoreZone
{
  v3 = objc_alloc_init(PKSharedAccountCloudStoreZone);
  v4 = [objc_opt_class() _propertySettersForSharedAccountCloudStoreZone];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CDA70;
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

+ (id)_sharedAccountCloudStoreZonesWithQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySettersForSharedAccountCloudStoreZone];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CDBF8;
  v12[3] = &unk_10083C998;
  v14 = v6;
  v15 = a1;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  [v4 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

- (id)_commonDictionaryForSharedAccountCloudStoreZone:(id)a3 forSharedAccountCloudStorePID:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:a4];
  [v6 setObjectOrNull:v7 forKey:@"peanuts_pid"];

  v8 = [v5 zoneName];
  [v6 setObjectOrNull:v8 forKey:@"zone_name"];

  v9 = [v5 accountIdentifier];
  [v6 setObjectOrNull:v9 forKey:@"account_identifier"];

  [v6 setInteger:objc_msgSend(v5 forKey:{"accountType"), @"account_type"}];
  [v6 setInteger:objc_msgSend(v5 forKey:{"access"), @"access"}];
  [v6 setInteger:objc_msgSend(v5 forKey:{"mode"), @"mode"}];
  v10 = [v5 originatorAltDSID];
  [v6 setObjectOrNull:v10 forKey:@"a"];

  v11 = [v5 sharedUsersAltDSIDs];

  v12 = [v11 allObjects];
  v13 = [v12 componentsJoinedByString:{@", "}];
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