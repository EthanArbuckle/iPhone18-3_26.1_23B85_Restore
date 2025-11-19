@interface TransactionCommutePlanUnit
+ (id)_predicateForPaymentTransactionPID:(int64_t)a3;
+ (id)_propertySettersForCommutePlanUnit;
+ (id)anyInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertCommutePlanUnit:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)insertCommutePlanUnits:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)pk_transactionCommutePlanUnitsInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4;
+ (id)transactionCommutePlanUnitsInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updateWithCommutePlanUnits:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
- (TransactionCommutePlanUnit)initWithCommutePlanUnit:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
- (id)_valuesDictionaryForCommutePlanUnit:(id)a3 forPaymentTransactionPID:(int64_t)a4;
- (id)transactionCommutePlanUnit;
@end

@implementation TransactionCommutePlanUnit

- (TransactionCommutePlanUnit)initWithCommutePlanUnit:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [(TransactionCommutePlanUnit *)self _valuesDictionaryForCommutePlanUnit:a3 forPaymentTransactionPID:a4];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:v8];

  return v10;
}

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

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"payment_transaction.pid"])
  {
    [v5 addObject:@"JOIN payment_transaction ON payment_transaction.pid = ice_cream_banana.a"];
  }
}

+ (id)insertCommutePlanUnit:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithCommutePlanUnit:v9 forPaymentTransactionPID:a4 inDatabase:v8];

  return v10;
}

+ (id)insertCommutePlanUnits:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
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

        v15 = [TransactionCommutePlanUnit insertCommutePlanUnit:*(*(&v18 + 1) + 8 * i) forPaymentTransactionPID:a4 inDatabase:v8, v18];
        [v9 safelyAddObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];

  return v16;
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPaymentTransactionPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)anyInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPaymentTransactionPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)transactionCommutePlanUnitsInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [a1 _predicateForPaymentTransactionPID:a4];
  v9 = [(SQLiteEntity *)TransactionCommutePlanUnit queryWithDatabase:v6 predicate:v8];
  v22[0] = @"a";
  v22[1] = @"payment_transaction.pid";
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100178690;
  v18 = &unk_10083C998;
  v20 = v7;
  v21 = a1;
  v19 = v6;
  v11 = v7;
  v12 = v6;
  [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)pk_transactionCommutePlanUnitsInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4
{
  v4 = [a1 transactionCommutePlanUnitsInDatabase:a3 forPaymentTransactionPID:a4];
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

        v11 = [*(*(&v14 + 1) + 8 * i) transactionCommutePlanUnit];
        [v5 safelyAddObject:v11];
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

+ (void)updateWithCommutePlanUnits:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v9 = a3;
  v7 = a5;
  if (v9 && [v9 count])
  {
    [TransactionCommutePlanUnit deleteEntitiesForPaymentTransactionPID:a4 inDatabase:v7];
    v8 = [TransactionCommutePlanUnit insertCommutePlanUnits:v9 forPaymentTransactionPID:a4 inDatabase:v7];
  }
}

- (id)transactionCommutePlanUnit
{
  v3 = objc_alloc_init(TransientUnit);
  v4 = +[TransactionCommutePlanUnit _propertySettersForCommutePlanUnit];
  v5 = [v4 allKeys];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001789FC;
  v13 = &unk_10083C240;
  v14 = v4;
  v15 = v3;
  v6 = v3;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:&v10];

  v8 = [(TransientUnit *)v6 commutePlanUnit:v10];

  return v8;
}

- (id)_valuesDictionaryForCommutePlanUnit:(id)a3 forPaymentTransactionPID:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:a4];
  [v6 setObjectOrNull:v7 forKey:@"a"];

  v8 = [v5 valueCount];
  v9 = [v8 currency];
  [v6 setObjectOrNull:v9 forKey:@"d"];

  v10 = [v5 label];
  [v6 setObjectOrNull:v10 forKey:@"c"];

  v11 = [v5 identifier];
  [v6 setObjectOrNull:v11 forKey:@"b"];

  [v6 setInteger:objc_msgSend(v5 forKey:{"planType"), @"f"}];
  v12 = [v5 valueCount];

  v13 = [v12 amount];
  v14 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v14 forKey:@"e"];

  v15 = [v6 copy];

  return v15;
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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