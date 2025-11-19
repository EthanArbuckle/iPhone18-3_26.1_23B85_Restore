@interface PaymentApplicationAssociatedReaderCA
+ (id)_predicateForAssociatedReaderPID:(int64_t)a3;
+ (id)_predicateForScheme:(unint64_t)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)a3;
+ (id)_readerCAsWithPredicate:(id)a3 inDatabase:(id)a4;
+ (id)readerCAsForAssociatedReaderPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)setReaderCAs:(id)a3 forReader:(id)a4 inDatabase:(id)a5;
+ (void)deleteReaderCAForAssociatedReaderPID:(int64_t)a3 inDatabase:(id)a4;
- (PaymentApplicationAssociatedReaderCA)initWithReaderCA:(id)a3 forAssociatedReaderPID:(int64_t)a4 inDatabase:(id)a5;
- (id)readerCA;
- (void)updateWithReaderCA:(id)a3 andOrderIndex:(int64_t)a4;
@end

@implementation PaymentApplicationAssociatedReaderCA

- (PaymentApplicationAssociatedReaderCA)initWithReaderCA:(id)a3 forAssociatedReaderPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesFor:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"associated_reader_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

- (void)updateWithReaderCA:(id)a3 andOrderIndex:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() _propertyValuesFor:v5];

  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

+ (id)readerCAsForAssociatedReaderPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAssociatedReaderPID:a3];
  v8 = [a1 _readerCAsWithPredicate:v7 inDatabase:v6];

  return v8;
}

+ (void)deleteReaderCAForAssociatedReaderPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForAssociatedReaderPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)setReaderCAs:(id)a3 forReader:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019C36C;
  v15[3] = &unk_100844490;
  v16 = a4;
  v17 = v8;
  v20 = a1;
  v18 = a5;
  v9 = objc_alloc_init(NSMutableSet);
  v19 = v9;
  v10 = v18;
  v11 = v8;
  v12 = v16;
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

+ (id)_readerCAsWithPredicate:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _propertySetters];
  v10 = objc_alloc_init(NSMutableSet);
  v11 = [v9 allKeys];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10019C808;
  v16[3] = &unk_10083C998;
  v19 = a1;
  v17 = v9;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  [v8 enumeratePersistentIDsAndProperties:v11 usingBlock:v16];

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
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019C98C;
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

+ (id)_predicateForAssociatedReaderPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"associated_reader_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForScheme:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"scheme" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v3 scheme];
  v5 = PKTerminalPublicKeySchemeToString();
  [v4 setObjectOrNull:v5 forKey:@"scheme"];

  v6 = [v3 publicKey];

  [v4 setObjectOrNull:v6 forKey:@"public_key"];

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