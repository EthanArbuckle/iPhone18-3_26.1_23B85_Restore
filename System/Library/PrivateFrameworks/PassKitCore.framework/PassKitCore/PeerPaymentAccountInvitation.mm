@interface PeerPaymentAccountInvitation
+ (id)_peerPaymentAccountInvitationsWithQuery:(id)query;
+ (id)_predicateForPeerPaymentAccountPID:(int64_t)d;
+ (id)_propertySettersForPeerPaymentAccountInvitation;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertInvitations:(id)invitations forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)invitationsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteInvitationsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
- (PeerPaymentAccountInvitation)initWithInvitation:(id)invitation forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
- (id)peerPaymentAccountInvitation;
@end

@implementation PeerPaymentAccountInvitation

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

+ (id)insertInvitations:(id)invitations forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  invitationsCopy = invitations;
  databaseCopy = database;
  v10 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = invitationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [self alloc];
        v18 = [v17 initWithInvitation:v16 forPeerPaymentAccountPID:d inDatabase:{databaseCopy, v21}];
        if (v18)
        {
          [v10 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = [v10 copy];

  return v19;
}

+ (void)deleteInvitationsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPeerPaymentAccountPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)invitationsForPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPeerPaymentAccountPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _peerPaymentAccountInvitationsWithQuery:v8];

  return v9;
}

- (PeerPaymentAccountInvitation)initWithInvitation:(id)invitation forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  invitationCopy = invitation;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"peer_payment_account_pid"];

  altDSID = [invitationCopy altDSID];
  [v10 setObjectOrNull:altDSID forKey:@"alt_dsid"];

  [v10 setInteger:objc_msgSend(invitationCopy forKey:{"status"), @"status"}];
  [v10 setInteger:objc_msgSend(invitationCopy forKey:{"registrationResult"), @"registration_result"}];
  remoteRegistrationRequestLevel = [invitationCopy remoteRegistrationRequestLevel];

  [v10 setInteger:remoteRegistrationRequestLevel forKey:@"remote_registration_request_level"];
  v14 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v14;
}

+ (id)_predicateForPeerPaymentAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"peer_payment_account_pid" equalToValue:v3];

  return v4;
}

- (id)peerPaymentAccountInvitation
{
  v3 = objc_alloc_init(PKPeerPaymentAccountInvitation);
  _propertySettersForPeerPaymentAccountInvitation = [objc_opt_class() _propertySettersForPeerPaymentAccountInvitation];
  allKeys = [_propertySettersForPeerPaymentAccountInvitation allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004FAE8;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForPeerPaymentAccountInvitation;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForPeerPaymentAccountInvitation;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_peerPaymentAccountInvitationsWithQuery:(id)query
{
  queryCopy = query;
  _propertySettersForPeerPaymentAccountInvitation = [self _propertySettersForPeerPaymentAccountInvitation];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySettersForPeerPaymentAccountInvitation allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004FC70;
  v12[3] = &unk_10083C998;
  v14 = v6;
  selfCopy = self;
  v13 = _propertySettersForPeerPaymentAccountInvitation;
  v8 = v6;
  v9 = _propertySettersForPeerPaymentAccountInvitation;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

+ (id)_propertySettersForPeerPaymentAccountInvitation
{
  v4[0] = @"alt_dsid";
  v4[1] = @"status";
  v5[0] = &stru_10083F078;
  v5[1] = &stru_10083F098;
  v4[2] = @"registration_result";
  v4[3] = @"remote_registration_request_level";
  v5[2] = &stru_10083F0B8;
  v5[3] = &stru_10083F0D8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end