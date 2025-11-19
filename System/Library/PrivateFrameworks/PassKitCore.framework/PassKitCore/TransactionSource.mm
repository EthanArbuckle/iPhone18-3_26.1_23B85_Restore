@interface TransactionSource
+ (id)_predicateForAccountPersistentID:(int64_t)a3;
+ (id)_predicateForAccountUserPersistentID:(int64_t)a3;
+ (id)_predicateForPaymentApplicationPersistentID:(int64_t)a3;
+ (id)_predicateForPeerPaymentAccountPersistentID:(int64_t)a3;
+ (id)_predicateForPersistentID:(int64_t)a3;
+ (id)_predicateForType:(unint64_t)a3;
+ (id)anyInDatabase:(id)a3 withIdentifier:(id)a4;
+ (id)anyInDatabase:(id)a3 withPersistentID:(int64_t)a4;
+ (id)insertTransactionSourceWithType:(unint64_t)a3 inDatabase:(id)a4;
+ (id)transactionSourceIdentifiersInDatabase:(id)a3 ofType:(unint64_t)a4;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)associateTransactionSourcesToPaymentTransactions:(id)a3 inDatabase:(id)a4;
+ (void)deleteEntitiesInDatabase:(id)a3 forAccount:(id)a4;
+ (void)deleteEntitiesInDatabase:(id)a3 forAccountUser:(id)a4;
+ (void)deleteEntitiesInDatabase:(id)a3 forPaymentApplication:(id)a4;
+ (void)deleteEntitiesInDatabase:(id)a3 forPeerPaymentAccount:(id)a4;
+ (void)updateTransactionSourceIdentifier:(id)a3 toNewTransactionSourceIdentifier:(id)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (TransactionSource)initWithTransactionSourceType:(unint64_t)a3 inDatabase:(id)a4;
- (id)_commonDictionary;
- (unint64_t)type;
@end

@implementation TransactionSource

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
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
    [v6 addObject:v9];
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

- (TransactionSource)initWithTransactionSourceType:(unint64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [(TransactionSource *)self _commonDictionary];
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  [v7 setObjectOrNull:v8 forKey:@"type"];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v7 inDatabase:v6];
  return v9;
}

+ (id)insertTransactionSourceWithType:(unint64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithTransactionSourceType:a3 inDatabase:v6];

  return v7;
}

- (id)_commonDictionary
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  [v2 setObjectOrNull:v4 forKey:@"identifier"];

  return v2;
}

+ (id)anyInDatabase:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForIdentifier:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withPersistentID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPersistentID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)transactionSourceIdentifiersInDatabase:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForType:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

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

+ (void)associateTransactionSourcesToPaymentTransactions:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 allKeys];
  v9 = [a1 _predicateForPIDs:v8];
  v10 = [(SQLiteEntity *)TransactionSource queryWithDatabase:v7 predicate:v9];

  v17 = @"identifier";
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007A484;
  v14[3] = &unk_10083CBC0;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v14];
}

+ (void)updateTransactionSourceIdentifier:(id)a3 toNewTransactionSourceIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 anyInDatabase:v10 withIdentifier:v8];
  v12 = [a1 anyInDatabase:v10 withIdentifier:v9];
  if (v8 && v9)
  {
    v13 = [v11 type];
    if (v13 == [v12 type])
    {
      if (v8 != v9 && ![v8 isEqualToString:v9])
      {
        [PaymentTransaction updateTransactionsWithTransactionSource:v11 toTransactionSource:v12 inDatabase:v10];
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
      v19 = v9;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
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

+ (void)deleteEntitiesInDatabase:(id)a3 forPaymentApplication:(id)a4
{
  v6 = a3;
  v8 = [a1 _predicateForPaymentApplicationPersistentID:{objc_msgSend(a4, "persistentID")}];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteEntitiesInDatabase:(id)a3 forPeerPaymentAccount:(id)a4
{
  v6 = a3;
  v8 = [a1 _predicateForPeerPaymentAccountPersistentID:{objc_msgSend(a4, "persistentID")}];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteEntitiesInDatabase:(id)a3 forAccountUser:(id)a4
{
  v6 = a3;
  v8 = [a1 _predicateForAccountUserPersistentID:{objc_msgSend(a4, "persistentID")}];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteEntitiesInDatabase:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v8 = [a1 _predicateForAccountPersistentID:{objc_msgSend(a4, "persistentID")}];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v3 = [(SQLiteEntity *)self database];
  [PaymentTransaction deleteEntitiesForTransactionSource:self inDatabase:v3];

  v4 = [(SQLiteEntity *)self persistentID];
  v5 = [(SQLiteEntity *)self database];
  [CloudStoreRecordFetchTask deleteAllEntriesForTransactionSourcePID:v4 inDatabase:v5];

  v7.receiver = self;
  v7.super_class = TransactionSource;
  return [(SQLiteEntity *)&v7 deleteFromDatabase];
}

+ (id)_predicateForType:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPaymentApplicationPersistentID:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [a1 _predicateForType:0];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForPeerPaymentAccountPersistentID:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"peer_payment_account.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [a1 _predicateForType:1];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForAccountUserPersistentID:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"gooseberry.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [a1 _predicateForType:2];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForAccountPersistentID:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"pears.pid" equalToValue:v4];
  v10[0] = v5;
  v6 = [a1 _predicateForType:3];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForPersistentID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

- (unint64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  v3 = [v2 integerValue];

  return v3;
}

@end