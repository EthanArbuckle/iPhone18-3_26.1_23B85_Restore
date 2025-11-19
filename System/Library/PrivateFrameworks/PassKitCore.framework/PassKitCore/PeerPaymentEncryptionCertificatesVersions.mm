@interface PeerPaymentEncryptionCertificatesVersions
+ (id)_predicateForAccountPID:(int64_t)a3;
+ (id)_propertySettersForEncryptionCertificatesVersions;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertPeerPaymentEncryptionCertificatesVersions:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)peerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePeerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updatePeerPaymentEncryptionCertificatesVersions:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (PeerPaymentEncryptionCertificatesVersions)initWithPeerPaymentEncryptionCertificatesVersions:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (id)_commonDictionaryForEncryptionCertificatesVersions:(id)a3;
- (id)peerPaymentEncryptionCertificatesVersions;
- (void)updatePeerPaymentEncryptionCertificatesVersions:(id)a3;
@end

@implementation PeerPaymentEncryptionCertificatesVersions

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"a";
  }

  else
  {
    return 0;
  }
}

+ (id)peerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 peerPaymentEncryptionCertificatesVersions];

  return v9;
}

- (PeerPaymentEncryptionCertificatesVersions)initWithPeerPaymentEncryptionCertificatesVersions:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [(PeerPaymentEncryptionCertificatesVersions *)self _commonDictionaryForEncryptionCertificatesVersions:a3];
  v10 = [NSNumber numberWithLongLong:a4];
  [v9 setObjectOrNull:v10 forKey:@"a"];

  v11 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:v8];
  return v11;
}

+ (id)insertPeerPaymentEncryptionCertificatesVersions:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithPeerPaymentEncryptionCertificatesVersions:v9 forPeerPaymentAccountPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deletePeerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

+ (void)updatePeerPaymentEncryptionCertificatesVersions:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _predicateForAccountPID:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    [v10 updatePeerPaymentEncryptionCertificatesVersions:v12];
  }

  else
  {
    v11 = [PeerPaymentEncryptionCertificatesVersions insertPeerPaymentEncryptionCertificatesVersions:v12 forPeerPaymentAccountPID:a4 inDatabase:v8];
  }
}

- (void)updatePeerPaymentEncryptionCertificatesVersions:(id)a3
{
  v4 = [(PeerPaymentEncryptionCertificatesVersions *)self _commonDictionaryForEncryptionCertificatesVersions:a3];
  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (id)_predicateForAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

- (id)_commonDictionaryForEncryptionCertificatesVersions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 recipientData];

  v6 = [NSNumber numberWithInteger:v5];
  [v4 setObjectOrNull:v6 forKey:@"b"];

  return v4;
}

+ (id)_propertySettersForEncryptionCertificatesVersions
{
  v4 = @"b";
  v5 = &stru_1008455B8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (id)peerPaymentEncryptionCertificatesVersions
{
  v3 = objc_alloc_init(PKPeerPaymentEncryptionCertificatesVersions);
  v4 = [objc_opt_class() _propertySettersForEncryptionCertificatesVersions];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F580C;
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

@end