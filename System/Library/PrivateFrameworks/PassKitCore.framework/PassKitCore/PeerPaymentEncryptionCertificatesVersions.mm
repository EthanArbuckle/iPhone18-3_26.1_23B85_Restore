@interface PeerPaymentEncryptionCertificatesVersions
+ (id)_predicateForAccountPID:(int64_t)d;
+ (id)_propertySettersForEncryptionCertificatesVersions;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertPeerPaymentEncryptionCertificatesVersions:(id)versions forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)peerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePeerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)updatePeerPaymentEncryptionCertificatesVersions:(id)versions forAccountPID:(int64_t)d inDatabase:(id)database;
- (PeerPaymentEncryptionCertificatesVersions)initWithPeerPaymentEncryptionCertificatesVersions:(id)versions forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
- (id)_commonDictionaryForEncryptionCertificatesVersions:(id)versions;
- (id)peerPaymentEncryptionCertificatesVersions;
- (void)updatePeerPaymentEncryptionCertificatesVersions:(id)versions;
@end

@implementation PeerPaymentEncryptionCertificatesVersions

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"a";
  }

  else
  {
    return 0;
  }
}

+ (id)peerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  peerPaymentEncryptionCertificatesVersions = [v8 peerPaymentEncryptionCertificatesVersions];

  return peerPaymentEncryptionCertificatesVersions;
}

- (PeerPaymentEncryptionCertificatesVersions)initWithPeerPaymentEncryptionCertificatesVersions:(id)versions forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [(PeerPaymentEncryptionCertificatesVersions *)self _commonDictionaryForEncryptionCertificatesVersions:versions];
  v10 = [NSNumber numberWithLongLong:d];
  [v9 setObjectOrNull:v10 forKey:@"a"];

  v11 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];
  return v11;
}

+ (id)insertPeerPaymentEncryptionCertificatesVersions:(id)versions forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  versionsCopy = versions;
  v10 = [[self alloc] initWithPeerPaymentEncryptionCertificatesVersions:versionsCopy forPeerPaymentAccountPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deletePeerPaymentEncryptionCertificatesVersionsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

+ (void)updatePeerPaymentEncryptionCertificatesVersions:(id)versions forAccountPID:(int64_t)d inDatabase:(id)database
{
  versionsCopy = versions;
  databaseCopy = database;
  v9 = [self _predicateForAccountPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    [v10 updatePeerPaymentEncryptionCertificatesVersions:versionsCopy];
  }

  else
  {
    v11 = [PeerPaymentEncryptionCertificatesVersions insertPeerPaymentEncryptionCertificatesVersions:versionsCopy forPeerPaymentAccountPID:d inDatabase:databaseCopy];
  }
}

- (void)updatePeerPaymentEncryptionCertificatesVersions:(id)versions
{
  v4 = [(PeerPaymentEncryptionCertificatesVersions *)self _commonDictionaryForEncryptionCertificatesVersions:versions];
  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (id)_predicateForAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

- (id)_commonDictionaryForEncryptionCertificatesVersions:(id)versions
{
  versionsCopy = versions;
  v4 = objc_alloc_init(NSMutableDictionary);
  recipientData = [versionsCopy recipientData];

  v6 = [NSNumber numberWithInteger:recipientData];
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
  _propertySettersForEncryptionCertificatesVersions = [objc_opt_class() _propertySettersForEncryptionCertificatesVersions];
  allKeys = [_propertySettersForEncryptionCertificatesVersions allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F580C;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForEncryptionCertificatesVersions;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForEncryptionCertificatesVersions;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end