@interface PeerPaymentAssociatedAccountRemovalRecord
+ (id)_peerPaymentAssociatedAccountRemovalRecordWithQuery:(id)query;
+ (id)_predicateForPeerPaymentAccountPID:(int64_t)d;
+ (id)_propertySettersForPeerPaymentAssociatedAccountRemovalRecord;
+ (id)associatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertAssociatedAccountRemovalRecords:(id)records forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAssociatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
- (PeerPaymentAssociatedAccountRemovalRecord)initWithPreviousAccountUser:(id)user forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
- (id)associatedAccountRemovalRecord;
@end

@implementation PeerPaymentAssociatedAccountRemovalRecord

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"peer_payment_account_pid";
  }

  else
  {
    return 0;
  }
}

+ (id)insertAssociatedAccountRemovalRecords:(id)records forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  recordsCopy = records;
  databaseCopy = database;
  v10 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = recordsCopy;
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
        v17 = [self alloc];
        v18 = [v17 initWithPreviousAccountUser:v16 forPeerPaymentAccountPID:d inDatabase:{databaseCopy, v22}];
        associatedAccountRemovalRecord = [v18 associatedAccountRemovalRecord];

        if (associatedAccountRemovalRecord)
        {
          [v10 addObject:associatedAccountRemovalRecord];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];

  return v20;
}

+ (void)deleteAssociatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPeerPaymentAccountPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)associatedAccountRemovalRecordsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPeerPaymentAccountPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _peerPaymentAssociatedAccountRemovalRecordWithQuery:v8];

  return v9;
}

- (PeerPaymentAssociatedAccountRemovalRecord)initWithPreviousAccountUser:(id)user forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  userCopy = user;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"peer_payment_account_pid"];

  altDSID = [userCopy altDSID];
  [v10 setObjectOrNull:altDSID forKey:@"alt_dsid"];

  [v10 setInteger:objc_msgSend(userCopy forKey:{"reason"), @"reason"}];
  date = [userCopy date];
  v14 = _SQLValueForDate();
  [v10 setObjectOrNull:v14 forKey:@"date"];

  hasPresentedNotification = [userCopy hasPresentedNotification];
  [v10 setBool:hasPresentedNotification forKey:@"has_presented_notification"];
  v16 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v16;
}

+ (id)_predicateForPeerPaymentAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"peer_payment_account_pid" equalToValue:v3];

  return v4;
}

- (id)associatedAccountRemovalRecord
{
  v3 = objc_alloc_init(PKPeerPaymentAssociatedAccountRemovalRecord);
  _propertySettersForPeerPaymentAssociatedAccountRemovalRecord = [objc_opt_class() _propertySettersForPeerPaymentAssociatedAccountRemovalRecord];
  allKeys = [_propertySettersForPeerPaymentAssociatedAccountRemovalRecord allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A245C;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForPeerPaymentAssociatedAccountRemovalRecord;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForPeerPaymentAssociatedAccountRemovalRecord;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_peerPaymentAssociatedAccountRemovalRecordWithQuery:(id)query
{
  queryCopy = query;
  _propertySettersForPeerPaymentAssociatedAccountRemovalRecord = [self _propertySettersForPeerPaymentAssociatedAccountRemovalRecord];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySettersForPeerPaymentAssociatedAccountRemovalRecord allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A25E4;
  v12[3] = &unk_10083C998;
  v14 = v6;
  selfCopy = self;
  v13 = _propertySettersForPeerPaymentAssociatedAccountRemovalRecord;
  v8 = v6;
  v9 = _propertySettersForPeerPaymentAssociatedAccountRemovalRecord;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

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