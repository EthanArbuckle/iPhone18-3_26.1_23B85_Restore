@interface PeerPaymentAssociatedAccountRemovalRecord
+ (id)_peerPaymentAssociatedAccountRemovalRecordWithQuery:(id)a3;
+ (id)_predicateForPeerPaymentAccountPID:(int64_t)a3;
+ (id)_propertySettersForPeerPaymentAssociatedAccountRemovalRecord;
+ (id)associatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertAssociatedAccountRemovalRecords:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteAssociatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)a3 inDatabase:(id)a4;
- (PeerPaymentAssociatedAccountRemovalRecord)initWithPreviousAccountUser:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (id)associatedAccountRemovalRecord;
@end

@implementation PeerPaymentAssociatedAccountRemovalRecord

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"peer_payment_account_pid";
  }

  else
  {
    return 0;
  }
}

+ (id)insertAssociatedAccountRemovalRecords:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [a1 alloc];
        v18 = [v17 initWithPreviousAccountUser:v16 forPeerPaymentAccountPID:a4 inDatabase:{v9, v22}];
        v19 = [v18 associatedAccountRemovalRecord];

        if (v19)
        {
          [v10 addObject:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];

  return v20;
}

+ (void)deleteAssociatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPeerPaymentAccountPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)associatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPeerPaymentAccountPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _peerPaymentAssociatedAccountRemovalRecordWithQuery:v8];

  return v9;
}

- (PeerPaymentAssociatedAccountRemovalRecord)initWithPreviousAccountUser:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"peer_payment_account_pid"];

  v12 = [v9 altDSID];
  [v10 setObjectOrNull:v12 forKey:@"alt_dsid"];

  [v10 setInteger:objc_msgSend(v9 forKey:{"reason"), @"reason"}];
  v13 = [v9 date];
  v14 = _SQLValueForDate();
  [v10 setObjectOrNull:v14 forKey:@"date"];

  v15 = [v9 hasPresentedNotification];
  [v10 setBool:v15 forKey:@"has_presented_notification"];
  v16 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];

  return v16;
}

+ (id)_predicateForPeerPaymentAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"peer_payment_account_pid" equalToValue:v3];

  return v4;
}

- (id)associatedAccountRemovalRecord
{
  v3 = objc_alloc_init(PKPeerPaymentAssociatedAccountRemovalRecord);
  v4 = [objc_opt_class() _propertySettersForPeerPaymentAssociatedAccountRemovalRecord];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A245C;
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

+ (id)_peerPaymentAssociatedAccountRemovalRecordWithQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySettersForPeerPaymentAssociatedAccountRemovalRecord];
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A25E4;
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

+ (id)_propertySettersForPeerPaymentAssociatedAccountRemovalRecord
{
  v4[0] = @"alt_dsid";
  v4[1] = @"reason";
  v5[0] = &stru_10084B2E8;
  v5[1] = &stru_10084B308;
  v4[2] = @"date";
  v4[3] = @"has_presented_notification";
  v5[2] = &stru_10084B328;
  v5[3] = &stru_10084B348;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end