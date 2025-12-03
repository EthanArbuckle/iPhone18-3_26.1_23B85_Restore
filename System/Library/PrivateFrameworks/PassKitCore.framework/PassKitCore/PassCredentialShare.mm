@interface PassCredentialShare
+ (BOOL)deletePassCredentialShareForIdentifier:(id)identifier inDatabase:(id)database;
+ (id)_passCredentialSharesWithQuery:(id)query inDatabase:(id)database;
+ (id)_predicateForSharePID:(int64_t)d;
+ (id)_propertySettersForPassCredentialShare;
+ (id)_propertyValuesForPassCredentialShare:(id)share;
+ (id)dbPassCredentialShareForCredentialShareIdentifier:(id)identifier inDatabase:(id)database;
+ (id)passCredentialShareForCredentialShareIdentifier:(id)identifier inDatabase:(id)database;
+ (id)passCredentialShareForIdentifier:(id)identifier sharePIDs:(id)ds inDatabase:(id)database;
+ (id)passCredentialShareForTransportIdentifier:(id)identifier inDatabase:(id)database;
+ (id)passCredentialSharesForSharePID:(int64_t)d inDatabase:(id)database;
+ (void)deletePassCredentialShareForSharePID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdatePassCredentialShares:(id)shares sharePID:(int64_t)d inDatabase:(id)database;
+ (void)mergeInCredentialShares:(id)shares sharePID:(int64_t)d inDatabase:(id)database;
- (PassCredentialShare)initWithPassCredentialShare:(id)share sharePID:(int64_t)d inDatabase:(id)database;
- (id)passCredentialShare;
- (void)setStatus:(unint64_t)status;
- (void)updateWithPassCredentialShare:(id)share;
- (void)updateWithPassCredentialShare:(id)share mergingInCredentialShare:(id)credentialShare;
@end

@implementation PassCredentialShare

- (PassCredentialShare)initWithPassCredentialShare:(id)share sharePID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  shareCopy = share;
  v10 = [objc_opt_class() _propertyValuesForPassCredentialShare:shareCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"b"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

- (void)updateWithPassCredentialShare:(id)share
{
  shareCopy = share;
  v5 = [objc_opt_class() _propertyValuesForPassCredentialShare:shareCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (void)updateWithPassCredentialShare:(id)share mergingInCredentialShare:(id)credentialShare
{
  credentialShareCopy = credentialShare;
  v9 = [share copy];
  targetDevice = [credentialShareCopy targetDevice];

  if ((targetDevice & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [v9 setTargetDevice:targetDevice];
  }

  v8 = [objc_opt_class() _propertyValuesForPassCredentialShare:v9];
  [(SQLiteEntity *)self setValuesWithDictionary:v8];
}

+ (void)insertOrUpdatePassCredentialShares:(id)shares sharePID:(int64_t)d inDatabase:(id)database
{
  sharesCopy = shares;
  databaseCopy = database;
  v26 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = sharesCopy;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    dCopy = d;
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
        identifier = [v10 identifier];
        v12 = [self _predicateForCredentialShareIdentifier:identifier];
        v33[0] = v12;
        v13 = [self _predicateForSharePID:d];
        v33[1] = v13;
        v14 = [NSArray arrayWithObjects:v33 count:2];
        v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
        v16 = [self anyInDatabase:databaseCopy predicate:v15];

        if (v16)
        {
          [(PassCredentialShare *)v16 updateWithPassCredentialShare:v10];
          d = dCopy;
        }

        else
        {
          d = dCopy;
          v16 = [[PassCredentialShare alloc] initWithPassCredentialShare:v10 sharePID:dCopy inDatabase:databaseCopy];
        }

        [v26 addObject:identifier];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"a" values:v26];
  v32[0] = v17;
  v18 = [self _predicateForSharePID:d];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [self queryWithDatabase:databaseCopy predicate:v20];
  [v21 deleteAllEntities];
}

+ (void)mergeInCredentialShares:(id)shares sharePID:(int64_t)d inDatabase:(id)database
{
  sharesCopy = shares;
  databaseCopy = database;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = sharesCopy;
  v20 = [sharesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
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
        identifier = [v10 identifier];
        v11 = [self _predicateForCredentialShareIdentifier:?];
        v26[0] = v11;
        v12 = [self _predicateForSharePID:d];
        v26[1] = v12;
        v13 = [NSArray arrayWithObjects:v26 count:2];
        v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];
        v15 = [self anyInDatabase:databaseCopy predicate:v14];

        if (v15)
        {
          passCredentialShare = [(PassCredentialShare *)v15 passCredentialShare];
          [(PassCredentialShare *)v15 updateWithPassCredentialShare:v10 mergingInCredentialShare:passCredentialShare];
        }

        else
        {
          v15 = [[PassCredentialShare alloc] initWithPassCredentialShare:v10 sharePID:d inDatabase:databaseCopy];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v20);
  }
}

+ (id)passCredentialSharesForSharePID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForSharePID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _passCredentialSharesWithQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)passCredentialShareForCredentialShareIdentifier:(id)identifier inDatabase:(id)database
{
  v4 = [self dbPassCredentialShareForCredentialShareIdentifier:identifier inDatabase:database];
  passCredentialShare = [v4 passCredentialShare];

  return passCredentialShare;
}

+ (id)passCredentialShareForTransportIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForTransportIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  passCredentialShare = [v8 passCredentialShare];

  return passCredentialShare;
}

+ (id)dbPassCredentialShareForCredentialShareIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCredentialShareIdentifier:identifier];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  return v10;
}

+ (id)passCredentialShareForIdentifier:(id)identifier sharePIDs:(id)ds inDatabase:(id)database
{
  databaseCopy = database;
  dsCopy = ds;
  v10 = [self _predicateForCredentialShareIdentifier:identifier];
  v17[0] = v10;
  v11 = [self _predicateForSharePIDs:dsCopy];

  v17[1] = v11;
  v12 = [NSArray arrayWithObjects:v17 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [self anyInDatabase:databaseCopy predicate:v13];

  passCredentialShare = [v14 passCredentialShare];

  return passCredentialShare;
}

+ (void)deletePassCredentialShareForSharePID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForSharePID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (BOOL)deletePassCredentialShareForIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCredentialShareIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  LOBYTE(databaseCopy) = [v8 deleteAllEntities];
  return databaseCopy;
}

+ (id)_passCredentialSharesWithQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
  _propertySettersForPassCredentialShare = [self _propertySettersForPassCredentialShare];
  v7 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySettersForPassCredentialShare allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DBE38;
  v13[3] = &unk_10083C998;
  selfCopy = self;
  v14 = _propertySettersForPassCredentialShare;
  v9 = v7;
  v15 = v9;
  v10 = _propertySettersForPassCredentialShare;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v13];

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
  _propertySettersForPassCredentialShare = [objc_opt_class() _propertySettersForPassCredentialShare];
  allKeys = [_propertySettersForPassCredentialShare allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DBFB8;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForPassCredentialShare;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForPassCredentialShare;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)setStatus:(unint64_t)status
{
  v4 = PKShareStatusToString();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"e"];
}

+ (id)_predicateForSharePID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForPassCredentialShare:(id)share
{
  shareCopy = share;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [shareCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"a"];

  channelTransportIdentifier = [shareCopy channelTransportIdentifier];
  [v4 setObjectOrNull:channelTransportIdentifier forKey:@"c"];

  [shareCopy targetDevice];
  v7 = PKPassCredentialShareTargetDeviceToString();
  [v4 setObjectOrNull:v7 forKey:@"d"];

  [shareCopy status];
  v8 = PKShareStatusToString();
  [v4 setObjectOrNull:v8 forKey:@"e"];

  senderKeyIdentifier = [shareCopy senderKeyIdentifier];

  [v4 setObjectOrNull:senderKeyIdentifier forKey:@"f"];

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