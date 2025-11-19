@interface PeerPaymentPaymentModeIdentifiers
+ (id)_predicateForAccountPID:(int64_t)a3;
+ (id)_propertySettersForPeerPaymentPaymentModeIdentifiers;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertPeerPaymentPaymentModeIdentifiers:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)peerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePeerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updatePeerPaymentPaymentModeIdentifiers:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (PeerPaymentPaymentModeIdentifiers)initWithPeerPaymentPaymentModeIdentifiers:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (id)_commonDictionaryForPaymentModeIdentifiers:(id)a3;
- (id)peerPaymentPaymentModeIdentifiers;
- (void)updatePeerPaymentPaymentModeIdentifiers:(id)a3;
@end

@implementation PeerPaymentPaymentModeIdentifiers

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

+ (id)peerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 peerPaymentPaymentModeIdentifiers];

  return v9;
}

- (PeerPaymentPaymentModeIdentifiers)initWithPeerPaymentPaymentModeIdentifiers:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [(PeerPaymentPaymentModeIdentifiers *)self _commonDictionaryForPaymentModeIdentifiers:a3];
  v10 = [NSNumber numberWithLongLong:a4];
  [v9 setObjectOrNull:v10 forKey:@"a"];

  v11 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:v8];
  return v11;
}

+ (id)insertPeerPaymentPaymentModeIdentifiers:(id)a3 forPeerPaymentAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithPeerPaymentPaymentModeIdentifiers:v9 forPeerPaymentAccountPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deletePeerPaymentPaymentModeIdentifiersForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

+ (void)updatePeerPaymentPaymentModeIdentifiers:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _predicateForAccountPID:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    [v10 updatePeerPaymentPaymentModeIdentifiers:v12];
  }

  else
  {
    v11 = [PeerPaymentPaymentModeIdentifiers insertPeerPaymentPaymentModeIdentifiers:v12 forPeerPaymentAccountPID:a4 inDatabase:v8];
  }
}

- (void)updatePeerPaymentPaymentModeIdentifiers:(id)a3
{
  v4 = [(PeerPaymentPaymentModeIdentifiers *)self _commonDictionaryForPaymentModeIdentifiers:a3];
  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (id)_predicateForAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

- (id)_commonDictionaryForPaymentModeIdentifiers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 deviceTap];

  [v4 setObjectOrNull:v5 forKey:@"b"];

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
  v4 = [objc_opt_class() _propertySettersForPeerPaymentPaymentModeIdentifiers];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100118FB0;
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