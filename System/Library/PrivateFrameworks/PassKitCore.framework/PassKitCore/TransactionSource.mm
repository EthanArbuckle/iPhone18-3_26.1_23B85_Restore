@interface TransactionSource
+ (id)_predicateForAccountPersistentID:(int64_t)d;
+ (id)_predicateForAccountUserPersistentID:(int64_t)d;
+ (id)_predicateForPaymentApplicationPersistentID:(int64_t)d;
+ (id)_predicateForPeerPaymentAccountPersistentID:(int64_t)d;
+ (id)_predicateForPersistentID:(int64_t)d;
+ (id)_predicateForType:(unint64_t)type;
+ (id)anyInDatabase:(id)database withIdentifier:(id)identifier;
+ (id)anyInDatabase:(id)database withPersistentID:(int64_t)d;
+ (id)insertTransactionSourceWithType:(unint64_t)type inDatabase:(id)database;
+ (id)transactionSourceIdentifiersInDatabase:(id)database ofType:(unint64_t)type;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)associateTransactionSourcesToPaymentTransactions:(id)transactions inDatabase:(id)database;
+ (void)deleteEntitiesInDatabase:(id)database forAccount:(id)account;
+ (void)deleteEntitiesInDatabase:(id)database forAccountUser:(id)user;
+ (void)deleteEntitiesInDatabase:(id)database forPaymentApplication:(id)application;
+ (void)deleteEntitiesInDatabase:(id)database forPeerPaymentAccount:(id)account;
+ (void)updateTransactionSourceIdentifier:(id)identifier toNewTransactionSourceIdentifier:(id)sourceIdentifier inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (TransactionSource)initWithTransactionSourceType:(unint64_t)type inDatabase:(id)database;
- (id)_commonDictionary;
- (unint64_t)type;
@end

@implementation TransactionSource

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  v7 = propertyCopy;
  v19 = v7;
  if (v7 == @"payment_application.pid")
  {
    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [@"payment_application.pid" isEqualToString:v7];

  if (v8)
  {
LABEL_4:
    v9 = @"JOIN payment_application ON payment_application.transaction_source_pid = transaction_source.pid";
LABEL_5:
    [joinsCopy addObject:v9];
    goto LABEL_6;
  }

  v10 = v19;
  if (v10 == @"peer_payment_account.pid" || (v11 = v10, v12 = [@"peer_payment_account.pid" isEqualToString:v10], v11, (v12 & 1) != 0))
  {
    v9 = @"JOIN peer_payment_account ON peer_payment_account.transaction_source_pid = transaction_source.pid";
    goto LABEL_5;
  }

  v13 = v11;
  if (v13 == @"gooseberry.pid" || (v14 = v13, v15 = [@"gooseberry.pid" isEqualToString:v13], v14, (v15 & 1) != 0))
  {
    v9 = @"JOIN gooseberry ON gooseberry.transaction_source_pid = transaction_source.pid";
    goto LABEL_5;
  }

  v16 = v14;
  if (v16 == @"pears.pid" || (v17 = v16, v18 = [@"pears.pid" isEqualToString:v16], v17, v18))
  {
    v9 = @"JOIN pears ON pears.transaction_source_pid = transaction_source.pid";
    goto LABEL_5;
  }

LABEL_6:
}

- (TransactionSource)initWithTransactionSourceType:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  _commonDictionary = [(TransactionSource *)self _commonDictionary];
  v8 = [NSNumber numberWithUnsignedInteger:type];
  [_commonDictionary setObjectOrNull:v8 forKey:@"type"];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:_commonDictionary inDatabase:databaseCopy];
  return v9;
}

+ (id)insertTransactionSourceWithType:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [[self alloc] initWithTransactionSourceType:type inDatabase:databaseCopy];

  return v7;
}

- (id)_commonDictionary
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];

  [v2 setObjectOrNull:uUIDString forKey:@"identifier"];

  return v2;
}

+ (id)anyInDatabase:(id)database withIdentifier:(id)identifier
{
  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withPersistentID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPersistentID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)transactionSourceIdentifiersInDatabase:(id)database ofType:(unint64_t)type
{
  databaseCopy = database;
  v7 = [self _predicateForType:type];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = objc_alloc_init(NSMutableSet);
  v16 = @"identifier";
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007A28C;
  v14[3] = &unk_100840B08;
  v15 = v9;
  v11 = v9;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:v14];

  v12 = [v11 copy];

  return v12;
}

+ (void)associateTransactionSourcesToPaymentTransactions:(id)transactions inDatabase:(id)database
{
  transactionsCopy = transactions;
  databaseCopy = database;
  allKeys = [transactionsCopy allKeys];
  v9 = [self _predicateForPIDs:allKeys];
  v10 = [(SQLiteEntity *)TransactionSource queryWithDatabase:databaseCopy predicate:v9];

  v17 = @"identifier";
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007A484;
  v14[3] = &unk_10083CBC0;
  v15 = transactionsCopy;
  v16 = databaseCopy;
  v12 = databaseCopy;
  v13 = transactionsCopy;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v14];
}

+ (void)updateTransactionSourceIdentifier:(id)identifier toNewTransactionSourceIdentifier:(id)sourceIdentifier inDatabase:(id)database
{
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  databaseCopy = database;
  v11 = [self anyInDatabase:databaseCopy withIdentifier:identifierCopy];
  v12 = [self anyInDatabase:databaseCopy withIdentifier:sourceIdentifierCopy];
  if (identifierCopy && sourceIdentifierCopy)
  {
    type = [v11 type];
    if (type == [v12 type])
    {
      if (identifierCopy != sourceIdentifierCopy && ![identifierCopy isEqualToString:sourceIdentifierCopy])
      {
        [PaymentTransaction updateTransactionsWithTransactionSource:v11 toTransactionSource:v12 inDatabase:databaseCopy];
        goto LABEL_15;
      }

      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v15 = "The new and old transaction source identifiers match, no need to migrate.";
LABEL_12:
        v16 = v14;
        v17 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v15 = "The new and old transaction source types do not match";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413058;
      v19 = sourceIdentifierCopy;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = v11;
      v15 = "A transaction source does not exist for newTransactionSourceIdentifier %@, %@ or oldTransactionSourceIdentifier %@, %@";
      v16 = v14;
      v17 = 42;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v18, v17);
    }
  }

LABEL_15:
}

+ (void)deleteEntitiesInDatabase:(id)database forPaymentApplication:(id)application
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentApplicationPersistentID:{objc_msgSend(application, "persistentID")}];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteEntitiesInDatabase:(id)database forPeerPaymentAccount:(id)account
{
  databaseCopy = database;
  v8 = [self _predicateForPeerPaymentAccountPersistentID:{objc_msgSend(account, "persistentID")}];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteEntitiesInDatabase:(id)database forAccountUser:(id)user
{
  databaseCopy = database;
  v8 = [self _predicateForAccountUserPersistentID:{objc_msgSend(user, "persistentID")}];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteEntitiesInDatabase:(id)database forAccount:(id)account
{
  databaseCopy = database;
  v8 = [self _predicateForAccountPersistentID:{objc_msgSend(account, "persistentID")}];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  database = [(SQLiteEntity *)self database];
  [PaymentTransaction deleteEntitiesForTransactionSource:self inDatabase:database];

  persistentID = [(SQLiteEntity *)self persistentID];
  database2 = [(SQLiteEntity *)self database];
  [CloudStoreRecordFetchTask deleteAllEntriesForTransactionSourcePID:persistentID inDatabase:database2];

  v7.receiver = self;
  v7.super_class = TransactionSource;
  return [(SQLiteEntity *)&v7 deleteFromDatabase];
}

+ (id)_predicateForType:(unint64_t)type
{
  v3 = [NSNumber numberWithUnsignedInteger:type];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPaymentApplicationPersistentID:(int64_t)d
{
  v4 = [NSNumber numberWithLongLong:d];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [self _predicateForType:0];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForPeerPaymentAccountPersistentID:(int64_t)d
{
  v4 = [NSNumber numberWithLongLong:d];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"peer_payment_account.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [self _predicateForType:1];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForAccountUserPersistentID:(int64_t)d
{
  v4 = [NSNumber numberWithLongLong:d];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"gooseberry.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [self _predicateForType:2];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForAccountPersistentID:(int64_t)d
{
  v4 = [NSNumber numberWithLongLong:d];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"pears.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [self _predicateForType:3];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForPersistentID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

- (unint64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end