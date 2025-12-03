@interface PaymentTransactionToDeleteFromFinance
+ (BOOL)deletePaymentTransactionToDeleteFromFinanceWithPID:(int64_t)d inDatabase:(id)database;
+ (id)_propertySettersForPaymentTransactionToDeleteFromFinance;
+ (id)transactionsToDeleteFromFinanceWithLimit:(int64_t)limit inDatabase:(id)database;
+ (void)insertPaymentTransactionToDeleteFromFinance:(id)finance inDatabase:(id)database;
@end

@implementation PaymentTransactionToDeleteFromFinance

+ (id)transactionsToDeleteFromFinanceWithLimit:(int64_t)limit inDatabase:(id)database
{
  databaseCopy = database;
  _propertySettersForPaymentTransactionToDeleteFromFinance = [self _propertySettersForPaymentTransactionToDeleteFromFinance];
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [(SQLiteEntity *)PaymentTransactionToDeleteFromFinance queryWithDatabase:databaseCopy predicate:0 orderingProperties:0 orderingDirections:0 limit:limit];

  allKeys = [_propertySettersForPaymentTransactionToDeleteFromFinance allKeys];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100106F8C;
  v15[3] = &unk_10083C998;
  v17 = v8;
  selfCopy = self;
  v16 = _propertySettersForPaymentTransactionToDeleteFromFinance;
  v11 = v8;
  v12 = _propertySettersForPaymentTransactionToDeleteFromFinance;
  [v9 enumeratePersistentIDsAndProperties:allKeys usingBlock:v15];

  v13 = [v11 copy];

  return v13;
}

+ (void)insertPaymentTransactionToDeleteFromFinance:(id)finance inDatabase:(id)database
{
  databaseCopy = database;
  financeCopy = finance;
  v11 = objc_alloc_init(NSMutableDictionary);
  transactionIdentifier = [financeCopy transactionIdentifier];
  [v11 setObject:transactionIdentifier forKey:@"transaction_identifier"];

  accountIdentifier = [financeCopy accountIdentifier];

  [v11 setObject:accountIdentifier forKey:@"account_identifier"];
  v10 = [[self alloc] initWithPropertyValues:v11 inDatabase:databaseCopy];
}

+ (BOOL)deletePaymentTransactionToDeleteFromFinanceWithPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v6 = [(SQLiteEntity *)[PaymentTransactionToDeleteFromFinance alloc] initWithPersistentID:d inDatabase:databaseCopy];

  deleteFromDatabase = [(SQLiteEntity *)v6 deleteFromDatabase];
  return deleteFromDatabase;
}

+ (id)_propertySettersForPaymentTransactionToDeleteFromFinance
{
  v4[0] = @"transaction_identifier";
  v4[1] = @"account_identifier";
  v5[0] = &stru_100846940;
  v5[1] = &stru_100846960;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end