@interface PaymentTransactionAuthentication
+ (id)_predicateForPaymentTransactionPID:(int64_t)d;
+ (id)anyInDatabase:(id)database withPaymentTransactionPID:(int64_t)d;
+ (id)createIfNotExistInDatabase:(id)database withPaymentTransactionPID:(int64_t)d;
- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)mechanisms;
- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)mechanisms;
- (BOOL)reset;
- (BOOL)updateAuthenticationComplete:(BOOL)complete;
@end

@implementation PaymentTransactionAuthentication

+ (id)anyInDatabase:(id)database withPaymentTransactionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentTransactionPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)createIfNotExistInDatabase:(id)database withPaymentTransactionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self anyInDatabase:databaseCopy withPaymentTransactionPID:d];
  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setLongLong:d forKey:@"payment_transaction_pid"];
    v9 = [PaymentTransactionAuthentication alloc];
    v10 = [v8 copy];
    v7 = [(SQLiteEntity *)v9 initWithPropertyValues:v10 inDatabase:databaseCopy];
  }

  return v7;
}

- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)mechanisms
{
  selfCopy = self;
  v5 = [(SQLiteEntity *)self valueForProperty:@"processed_auth_mechanisms"];
  integerValue = [v5 integerValue];

  mechanisms = [NSNumber numberWithUnsignedInteger:integerValue | mechanisms];
  LOBYTE(selfCopy) = [(SQLiteEntity *)selfCopy setValue:mechanisms forProperty:@"processed_auth_mechanisms"];

  return selfCopy;
}

- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)mechanisms
{
  selfCopy = self;
  v5 = [(SQLiteEntity *)self valueForProperty:@"data_collected_auth_mechanisms"];
  integerValue = [v5 integerValue];

  mechanisms = [NSNumber numberWithUnsignedInteger:integerValue | mechanisms];
  LOBYTE(selfCopy) = [(SQLiteEntity *)selfCopy setValue:mechanisms forProperty:@"data_collected_auth_mechanisms"];

  return selfCopy;
}

- (BOOL)updateAuthenticationComplete:(BOOL)complete
{
  v4 = [NSNumber numberWithBool:complete];
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

+ (id)_predicateForPaymentTransactionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_transaction_pid" equalToValue:v3];

  return v4;
}

@end