@interface PaymentTransactionAuthentication
+ (id)_predicateForPaymentTransactionPID:(int64_t)a3;
+ (id)anyInDatabase:(id)a3 withPaymentTransactionPID:(int64_t)a4;
+ (id)createIfNotExistInDatabase:(id)a3 withPaymentTransactionPID:(int64_t)a4;
- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)a3;
- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)a3;
- (BOOL)reset;
- (BOOL)updateAuthenticationComplete:(BOOL)a3;
@end

@implementation PaymentTransactionAuthentication

+ (id)anyInDatabase:(id)a3 withPaymentTransactionPID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPaymentTransactionPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)createIfNotExistInDatabase:(id)a3 withPaymentTransactionPID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 anyInDatabase:v6 withPaymentTransactionPID:a4];
  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setLongLong:a4 forKey:@"payment_transaction_pid"];
    v9 = [PaymentTransactionAuthentication alloc];
    v10 = [v8 copy];
    v7 = [(SQLiteEntity *)v9 initWithPropertyValues:v10 inDatabase:v6];
  }

  return v7;
}

- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)a3
{
  v4 = self;
  v5 = [(SQLiteEntity *)self valueForProperty:@"processed_auth_mechanisms"];
  v6 = [v5 integerValue];

  v7 = [NSNumber numberWithUnsignedInteger:v6 | a3];
  LOBYTE(v4) = [(SQLiteEntity *)v4 setValue:v7 forProperty:@"processed_auth_mechanisms"];

  return v4;
}

- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)a3
{
  v4 = self;
  v5 = [(SQLiteEntity *)self valueForProperty:@"data_collected_auth_mechanisms"];
  v6 = [v5 integerValue];

  v7 = [NSNumber numberWithUnsignedInteger:v6 | a3];
  LOBYTE(v4) = [(SQLiteEntity *)v4 setValue:v7 forProperty:@"data_collected_auth_mechanisms"];

  return v4;
}

- (BOOL)updateAuthenticationComplete:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  LOBYTE(self) = [(SQLiteEntity *)self setValue:v4 forProperty:@"complete"];

  return self;
}

- (BOOL)reset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  database = self->super._database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C000;
  v5[3] = &unk_10083EC18;
  v5[4] = self;
  v5[5] = &v6;
  sub_1005D4424(database, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_transaction_pid" equalToValue:v3];

  return v4;
}

@end