@interface PassCredentialShare
+ (BOOL)deletePassCredentialShareForIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)_passCredentialSharesWithQuery:(id)a3 inDatabase:(id)a4;
+ (id)_predicateForSharePID:(int64_t)a3;
+ (id)_propertySettersForPassCredentialShare;
+ (id)_propertyValuesForPassCredentialShare:(id)a3;
+ (id)dbPassCredentialShareForCredentialShareIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)passCredentialShareForCredentialShareIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)passCredentialShareForIdentifier:(id)a3 sharePIDs:(id)a4 inDatabase:(id)a5;
+ (id)passCredentialShareForTransportIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)passCredentialSharesForSharePID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePassCredentialShareForSharePID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdatePassCredentialShares:(id)a3 sharePID:(int64_t)a4 inDatabase:(id)a5;
+ (void)mergeInCredentialShares:(id)a3 sharePID:(int64_t)a4 inDatabase:(id)a5;
- (PassCredentialShare)initWithPassCredentialShare:(id)a3 sharePID:(int64_t)a4 inDatabase:(id)a5;
- (id)passCredentialShare;
- (void)setStatus:(unint64_t)a3;
- (void)updateWithPassCredentialShare:(id)a3;
- (void)updateWithPassCredentialShare:(id)a3 mergingInCredentialShare:(id)a4;
@end

@implementation PassCredentialShare

- (PassCredentialShare)initWithPassCredentialShare:(id)a3 sharePID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesForPassCredentialShare:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"b"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

- (void)updateWithPassCredentialShare:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesForPassCredentialShare:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (void)updateWithPassCredentialShare:(id)a3 mergingInCredentialShare:(id)a4
{
  v6 = a4;
  v9 = [a3 copy];
  v7 = [v6 targetDevice];

  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [v9 setTargetDevice:v7];
  }

  v8 = [objc_opt_class() _propertyValuesForPassCredentialShare:v9];
  [(SQLiteEntity *)self setValuesWithDictionary:v8];
}

+ (void)insertOrUpdatePassCredentialShares:(id)a3 sharePID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v26 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v23 = a4;
    v24 = *v29;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [a1 _predicateForCredentialShareIdentifier:v11];
        v33[0] = v12;
        v13 = [a1 _predicateForSharePID:a4];
        v33[1] = v13;
        v14 = [NSArray arrayWithObjects:v33 count:2];
        v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
        v16 = [a1 anyInDatabase:v8 predicate:v15];

        if (v16)
        {
          [(PassCredentialShare *)v16 updateWithPassCredentialShare:v10];
          a4 = v23;
        }

        else
        {
          a4 = v23;
          v16 = [[PassCredentialShare alloc] initWithPassCredentialShare:v10 sharePID:v23 inDatabase:v8];
        }

        [v26 addObject:v11];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"a" values:v26];
  v32[0] = v17;
  v18 = [a1 _predicateForSharePID:a4];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [a1 queryWithDatabase:v8 predicate:v20];
  [v21 deleteAllEntities];
}

+ (void)mergeInCredentialShares:(id)a3 sharePID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v20 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v20)
  {
    v18 = *v23;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v21 = [v10 identifier];
        v11 = [a1 _predicateForCredentialShareIdentifier:?];
        v26[0] = v11;
        v12 = [a1 _predicateForSharePID:a4];
        v26[1] = v12;
        v13 = [NSArray arrayWithObjects:v26 count:2];
        v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];
        v15 = [a1 anyInDatabase:v8 predicate:v14];

        if (v15)
        {
          v16 = [(PassCredentialShare *)v15 passCredentialShare];
          [(PassCredentialShare *)v15 updateWithPassCredentialShare:v10 mergingInCredentialShare:v16];
        }

        else
        {
          v15 = [[PassCredentialShare alloc] initWithPassCredentialShare:v10 sharePID:a4 inDatabase:v8];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v20);
  }
}

+ (id)passCredentialSharesForSharePID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForSharePID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _passCredentialSharesWithQuery:v8 inDatabase:v6];

  return v9;
}

+ (id)passCredentialShareForCredentialShareIdentifier:(id)a3 inDatabase:(id)a4
{
  v4 = [a1 dbPassCredentialShareForCredentialShareIdentifier:a3 inDatabase:a4];
  v5 = [v4 passCredentialShare];

  return v5;
}

+ (id)passCredentialShareForTransportIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForTransportIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 passCredentialShare];

  return v9;
}

+ (id)dbPassCredentialShareForCredentialShareIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCredentialShareIdentifier:a3];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  v10 = [a1 anyInDatabase:v6 predicate:v9];

  return v10;
}

+ (id)passCredentialShareForIdentifier:(id)a3 sharePIDs:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _predicateForCredentialShareIdentifier:a3];
  v17[0] = v10;
  v11 = [a1 _predicateForSharePIDs:v9];

  v17[1] = v11;
  v12 = [NSArray arrayWithObjects:v17 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [a1 anyInDatabase:v8 predicate:v13];

  v15 = [v14 passCredentialShare];

  return v15;
}

+ (void)deletePassCredentialShareForSharePID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForSharePID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (BOOL)deletePassCredentialShareForIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCredentialShareIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  LOBYTE(v6) = [v8 deleteAllEntities];
  return v6;
}

+ (id)_passCredentialSharesWithQuery:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = [a1 _propertySettersForPassCredentialShare];
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v6 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DBE38;
  v13[3] = &unk_10083C998;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  [v5 enumeratePersistentIDsAndProperties:v8 usingBlock:v13];

  if ([v9 count])
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)passCredentialShare
{
  v3 = objc_alloc_init(PKPassCredentialShare);
  v4 = [objc_opt_class() _propertySettersForPassCredentialShare];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DBFB8;
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

- (void)setStatus:(unint64_t)a3
{
  v4 = PKShareStatusToString();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"e"];
}

+ (id)_predicateForSharePID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForPassCredentialShare:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"a"];

  v6 = [v3 channelTransportIdentifier];
  [v4 setObjectOrNull:v6 forKey:@"c"];

  [v3 targetDevice];
  v7 = PKPassCredentialShareTargetDeviceToString();
  [v4 setObjectOrNull:v7 forKey:@"d"];

  [v3 status];
  v8 = PKShareStatusToString();
  [v4 setObjectOrNull:v8 forKey:@"e"];

  v9 = [v3 senderKeyIdentifier];

  [v4 setObjectOrNull:v9 forKey:@"f"];

  return v4;
}

+ (id)_propertySettersForPassCredentialShare
{
  v4[0] = @"a";
  v4[1] = @"c";
  v5[0] = &stru_100844108;
  v5[1] = &stru_100844128;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100844148;
  v5[3] = &stru_100844168;
  v4[4] = @"f";
  v5[4] = &stru_100844188;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end