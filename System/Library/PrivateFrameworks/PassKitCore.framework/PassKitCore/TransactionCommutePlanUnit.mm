@interface TransactionCommutePlanUnit
+ (id)_predicateForPaymentTransactionPID:(int64_t)d;
+ (id)_propertySettersForCommutePlanUnit;
+ (id)anyInDatabase:(id)database forPaymentTransactionPID:(int64_t)d;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertCommutePlanUnit:(id)unit forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (id)insertCommutePlanUnits:(id)units forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (id)pk_transactionCommutePlanUnitsInDatabase:(id)database forPaymentTransactionPID:(int64_t)d;
+ (id)transactionCommutePlanUnitsInDatabase:(id)database forPaymentTransactionPID:(int64_t)d;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (void)updateWithCommutePlanUnits:(id)units forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (TransactionCommutePlanUnit)initWithCommutePlanUnit:(id)unit forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (id)_valuesDictionaryForCommutePlanUnit:(id)unit forPaymentTransactionPID:(int64_t)d;
- (id)transactionCommutePlanUnit;
@end

@implementation TransactionCommutePlanUnit

- (TransactionCommutePlanUnit)initWithCommutePlanUnit:(id)unit forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [(TransactionCommutePlanUnit *)self _valuesDictionaryForCommutePlanUnit:unit forPaymentTransactionPID:d];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];

  return v10;
}

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

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  joinsCopy = joins;
  if ([property isEqualToString:@"payment_transaction.pid"])
  {
    [joinsCopy addObject:@"JOIN payment_transaction ON payment_transaction.pid = ice_cream_banana.a"];
  }
}

+ (id)insertCommutePlanUnit:(id)unit forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  unitCopy = unit;
  v10 = [[self alloc] initWithCommutePlanUnit:unitCopy forPaymentTransactionPID:d inDatabase:databaseCopy];

  return v10;
}

+ (id)insertCommutePlanUnits:(id)units forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  unitsCopy = units;
  databaseCopy = database;
  v9 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = unitsCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [TransactionCommutePlanUnit insertCommutePlanUnit:*(*(&v18 + 1) + 8 * i) forPaymentTransactionPID:d inDatabase:databaseCopy, v18];
        [v9 safelyAddObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];

  return v16;
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentTransactionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)anyInDatabase:(id)database forPaymentTransactionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentTransactionPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)transactionCommutePlanUnitsInDatabase:(id)database forPaymentTransactionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [self _predicateForPaymentTransactionPID:d];
  v9 = [(SQLiteEntity *)TransactionCommutePlanUnit queryWithDatabase:databaseCopy predicate:v8];
  v22[0] = @"a";
  v22[1] = @"payment_transaction.pid";
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100178690;
  v18 = &unk_10083C998;
  v20 = v7;
  selfCopy = self;
  v19 = databaseCopy;
  v11 = v7;
  v12 = databaseCopy;
  [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)pk_transactionCommutePlanUnitsInDatabase:(id)database forPaymentTransactionPID:(int64_t)d
{
  v4 = [self transactionCommutePlanUnitsInDatabase:database forPaymentTransactionPID:d];
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        transactionCommutePlanUnit = [*(*(&v14 + 1) + 8 * i) transactionCommutePlanUnit];
        [v5 safelyAddObject:transactionCommutePlanUnit];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)updateWithCommutePlanUnits:(id)units forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  unitsCopy = units;
  databaseCopy = database;
  if (unitsCopy && [unitsCopy count])
  {
    [TransactionCommutePlanUnit deleteEntitiesForPaymentTransactionPID:d inDatabase:databaseCopy];
    v8 = [TransactionCommutePlanUnit insertCommutePlanUnits:unitsCopy forPaymentTransactionPID:d inDatabase:databaseCopy];
  }
}

- (id)transactionCommutePlanUnit
{
  v3 = objc_alloc_init(TransientUnit);
  v4 = +[TransactionCommutePlanUnit _propertySettersForCommutePlanUnit];
  allKeys = [v4 allKeys];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001789FC;
  v13 = &unk_10083C240;
  v14 = v4;
  v15 = v3;
  v6 = v3;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:&v10];

  v8 = [(TransientUnit *)v6 commutePlanUnit:v10];

  return v8;
}

- (id)_valuesDictionaryForCommutePlanUnit:(id)unit forPaymentTransactionPID:(int64_t)d
{
  unitCopy = unit;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:d];
  [v6 setObjectOrNull:v7 forKey:@"a"];

  valueCount = [unitCopy valueCount];
  currency = [valueCount currency];
  [v6 setObjectOrNull:currency forKey:@"d"];

  label = [unitCopy label];
  [v6 setObjectOrNull:label forKey:@"c"];

  identifier = [unitCopy identifier];
  [v6 setObjectOrNull:identifier forKey:@"b"];

  [v6 setInteger:objc_msgSend(unitCopy forKey:{"planType"), @"f"}];
  valueCount2 = [unitCopy valueCount];

  amount = [valueCount2 amount];
  v14 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v14 forKey:@"e"];

  v15 = [v6 copy];

  return v15;
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForCommutePlanUnit
{
  v4[0] = @"b";
  v4[1] = @"d";
  v5[0] = &stru_1008492B0;
  v5[1] = &stru_1008492D0;
  v4[2] = @"c";
  v4[3] = @"e";
  v5[2] = &stru_1008492F0;
  v5[3] = &stru_100849310;
  v4[4] = @"f";
  v5[4] = &stru_100849330;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end