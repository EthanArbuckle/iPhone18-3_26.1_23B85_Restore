@interface PaymentApplicationAssociatedReaderCA
+ (id)_predicateForAssociatedReaderPID:(int64_t)d;
+ (id)_predicateForScheme:(unint64_t)scheme;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)for;
+ (id)_readerCAsWithPredicate:(id)predicate inDatabase:(id)database;
+ (id)readerCAsForAssociatedReaderPID:(int64_t)d inDatabase:(id)database;
+ (id)setReaderCAs:(id)as forReader:(id)reader inDatabase:(id)database;
+ (void)deleteReaderCAForAssociatedReaderPID:(int64_t)d inDatabase:(id)database;
- (PaymentApplicationAssociatedReaderCA)initWithReaderCA:(id)a forAssociatedReaderPID:(int64_t)d inDatabase:(id)database;
- (id)readerCA;
- (void)updateWithReaderCA:(id)a andOrderIndex:(int64_t)index;
@end

@implementation PaymentApplicationAssociatedReaderCA

- (PaymentApplicationAssociatedReaderCA)initWithReaderCA:(id)a forAssociatedReaderPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  aCopy = a;
  v10 = [objc_opt_class() _propertyValuesFor:aCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"associated_reader_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

- (void)updateWithReaderCA:(id)a andOrderIndex:(int64_t)index
{
  aCopy = a;
  v6 = [objc_opt_class() _propertyValuesFor:aCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

+ (id)readerCAsForAssociatedReaderPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAssociatedReaderPID:d];
  v8 = [self _readerCAsWithPredicate:v7 inDatabase:databaseCopy];

  return v8;
}

+ (void)deleteReaderCAForAssociatedReaderPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForAssociatedReaderPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)setReaderCAs:(id)as forReader:(id)reader inDatabase:(id)database
{
  asCopy = as;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019C36C;
  v15[3] = &unk_100844490;
  readerCopy = reader;
  v17 = asCopy;
  selfCopy = self;
  databaseCopy = database;
  v9 = objc_alloc_init(NSMutableSet);
  v19 = v9;
  v10 = databaseCopy;
  v11 = asCopy;
  v12 = readerCopy;
  sub_1005D4424(v10, v15);
  if ([v9 count])
  {
    v13 = [v9 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_readerCAsWithPredicate:(id)predicate inDatabase:(id)database
{
  databaseCopy = database;
  predicateCopy = predicate;
  v8 = [objc_opt_class() queryWithDatabase:databaseCopy predicate:predicateCopy];

  _propertySetters = [self _propertySetters];
  v10 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySetters allKeys];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10019C808;
  v16[3] = &unk_10083C998;
  selfCopy = self;
  v17 = _propertySetters;
  v12 = v10;
  v18 = v12;
  v13 = _propertySetters;
  [v8 enumeratePersistentIDsAndProperties:allKeys usingBlock:v16];

  if ([v12 count])
  {
    v14 = [v12 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)readerCA
{
  v3 = objc_alloc_init(PKPaymentApplicationAssociatedReaderCA);
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019C98C;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySetters;
  v6 = v3;
  v13 = v6;
  v7 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForAssociatedReaderPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"associated_reader_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForScheme:(unint64_t)scheme
{
  v3 = [NSNumber numberWithUnsignedInteger:scheme];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"scheme" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  [forCopy scheme];
  v5 = PKTerminalPublicKeySchemeToString();
  [v4 setObjectOrNull:v5 forKey:@"scheme"];

  publicKey = [forCopy publicKey];

  [v4 setObjectOrNull:publicKey forKey:@"public_key"];

  return v4;
}

+ (id)_propertySetters
{
  v4[0] = @"scheme";
  v4[1] = @"public_key";
  v5[0] = &stru_10084AF30;
  v5[1] = &stru_10084AF50;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end