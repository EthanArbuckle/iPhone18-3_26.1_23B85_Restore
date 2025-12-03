@interface PeerPaymentPaymentModeIdentifiers
+ (id)_predicateForAccountPID:(int64_t)d;
+ (id)_propertySettersForPeerPaymentPaymentModeIdentifiers;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertPeerPaymentPaymentModeIdentifiers:(id)identifiers forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)peerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePeerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)updatePeerPaymentPaymentModeIdentifiers:(id)identifiers forAccountPID:(int64_t)d inDatabase:(id)database;
- (PeerPaymentPaymentModeIdentifiers)initWithPeerPaymentPaymentModeIdentifiers:(id)identifiers forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database;
- (id)_commonDictionaryForPaymentModeIdentifiers:(id)identifiers;
- (id)peerPaymentPaymentModeIdentifiers;
- (void)updatePeerPaymentPaymentModeIdentifiers:(id)identifiers;
@end

@implementation PeerPaymentPaymentModeIdentifiers

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

+ (id)peerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  peerPaymentPaymentModeIdentifiers = [v8 peerPaymentPaymentModeIdentifiers];

  return peerPaymentPaymentModeIdentifiers;
}

- (PeerPaymentPaymentModeIdentifiers)initWithPeerPaymentPaymentModeIdentifiers:(id)identifiers forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [(PeerPaymentPaymentModeIdentifiers *)self _commonDictionaryForPaymentModeIdentifiers:identifiers];
  v10 = [NSNumber numberWithLongLong:d];
  [v9 setObjectOrNull:v10 forKey:@"a"];

  v11 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];
  return v11;
}

+ (id)insertPeerPaymentPaymentModeIdentifiers:(id)identifiers forPeerPaymentAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  identifiersCopy = identifiers;
  v10 = [[self alloc] initWithPeerPaymentPaymentModeIdentifiers:identifiersCopy forPeerPaymentAccountPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deletePeerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

+ (void)updatePeerPaymentPaymentModeIdentifiers:(id)identifiers forAccountPID:(int64_t)d inDatabase:(id)database
{
  identifiersCopy = identifiers;
  databaseCopy = database;
  v9 = [self _predicateForAccountPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    [v10 updatePeerPaymentPaymentModeIdentifiers:identifiersCopy];
  }

  else
  {
    v11 = [PeerPaymentPaymentModeIdentifiers insertPeerPaymentPaymentModeIdentifiers:identifiersCopy forPeerPaymentAccountPID:d inDatabase:databaseCopy];
  }
}

- (void)updatePeerPaymentPaymentModeIdentifiers:(id)identifiers
{
  v4 = [(PeerPaymentPaymentModeIdentifiers *)self _commonDictionaryForPaymentModeIdentifiers:identifiers];
  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (id)_predicateForAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

- (id)_commonDictionaryForPaymentModeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(NSMutableDictionary);
  deviceTap = [identifiersCopy deviceTap];

  [v4 setObjectOrNull:deviceTap forKey:@"b"];

  return v4;
}

+ (id)_propertySettersForPeerPaymentPaymentModeIdentifiers
{
  v4 = @"b";
  v5 = &stru_100847368;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (id)peerPaymentPaymentModeIdentifiers
{
  v3 = objc_alloc_init(PKPeerPaymentPaymentModeIdentifiers);
  _propertySettersForPeerPaymentPaymentModeIdentifiers = [objc_opt_class() _propertySettersForPeerPaymentPaymentModeIdentifiers];
  allKeys = [_propertySettersForPeerPaymentPaymentModeIdentifiers allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100118FB0;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForPeerPaymentPaymentModeIdentifiers;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForPeerPaymentPaymentModeIdentifiers;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end