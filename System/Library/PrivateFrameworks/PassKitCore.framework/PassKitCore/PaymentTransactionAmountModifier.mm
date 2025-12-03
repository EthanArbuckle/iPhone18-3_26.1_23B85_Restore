@interface PaymentTransactionAmountModifier
+ (id)_postProcessedAmountForDecimalAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent;
+ (id)_predicateForPaymentTransactionPID:(int64_t)d;
+ (id)_propertySettersForPaymentTransactionAmountModifier;
+ (id)insertPaymentTransactionAmountModifier:(id)modifier forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (id)insertPaymentTransactionAmountModifiers:(id)modifiers forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (id)paymentTransactionAmountModifiersInDatabase:(id)database forPaymentTransactionPID:(int64_t)d;
+ (void)associateAmountModifiersToPaymentTransactions:(id)transactions inDatabase:(id)database;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (void)updateWithPaymentTransactionAmountModifiers:(id)modifiers forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (PaymentTransactionAmountModifier)initWithPaymentTransactionAmountModifier:(id)modifier forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (id)_valuesDictionaryForPaymentTransactionAmountModifier:(id)modifier forPaymentTransactionPID:(int64_t)d;
@end

@implementation PaymentTransactionAmountModifier

- (PaymentTransactionAmountModifier)initWithPaymentTransactionAmountModifier:(id)modifier forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [(PaymentTransactionAmountModifier *)self _valuesDictionaryForPaymentTransactionAmountModifier:modifier forPaymentTransactionPID:d];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];

  return v10;
}

+ (id)insertPaymentTransactionAmountModifier:(id)modifier forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  modifierCopy = modifier;
  v10 = [[self alloc] initWithPaymentTransactionAmountModifier:modifierCopy forPaymentTransactionPID:d inDatabase:databaseCopy];

  return v10;
}

+ (id)insertPaymentTransactionAmountModifiers:(id)modifiers forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  modifiersCopy = modifiers;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009CA48;
  v13[3] = &unk_100841848;
  v15 = objc_alloc_init(NSMutableArray);
  dCopy = d;
  v14 = databaseCopy;
  v9 = v15;
  v10 = databaseCopy;
  [modifiersCopy enumerateObjectsUsingBlock:v13];

  v11 = [v9 copy];

  return v11;
}

+ (void)updateWithPaymentTransactionAmountModifiers:(id)modifiers forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  modifiersCopy = modifiers;
  databaseCopy = database;
  if (modifiersCopy && [modifiersCopy count])
  {
    [PaymentTransactionAmountModifier deleteEntitiesForPaymentTransactionPID:d inDatabase:databaseCopy];
    v8 = [PaymentTransactionAmountModifier insertPaymentTransactionAmountModifiers:modifiersCopy forPaymentTransactionPID:d inDatabase:databaseCopy];
  }
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentTransactionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)paymentTransactionAmountModifiersInDatabase:(id)database forPaymentTransactionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentTransactionPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  _propertySettersForPaymentTransactionAmountModifier = [self _propertySettersForPaymentTransactionAmountModifier];
  v10 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySettersForPaymentTransactionAmountModifier allKeys];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009CDD0;
  v18[3] = &unk_10083C998;
  v20 = v10;
  selfCopy = self;
  v19 = _propertySettersForPaymentTransactionAmountModifier;
  v12 = v10;
  v13 = _propertySettersForPaymentTransactionAmountModifier;
  [v8 enumeratePersistentIDsAndProperties:allKeys usingBlock:v18];

  v14 = [NSSortDescriptor sortDescriptorWithKey:@"order" ascending:1];
  v22 = v14;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  [v12 sortUsingDescriptors:v15];

  v16 = [v12 copy];

  return v16;
}

+ (void)associateAmountModifiersToPaymentTransactions:(id)transactions inDatabase:(id)database
{
  transactionsCopy = transactions;
  databaseCopy = database;
  allKeys = [transactionsCopy allKeys];
  v9 = [self _predicateForPaymentTransactionPIDs:allKeys];

  v30 = v9;
  v31 = databaseCopy;
  v10 = [self queryWithDatabase:databaseCopy predicate:v9];
  v11 = objc_alloc_init(NSMutableDictionary);
  _propertySettersForPaymentTransactionAmountModifier = [self _propertySettersForPaymentTransactionAmountModifier];
  allKeys2 = [_propertySettersForPaymentTransactionAmountModifier allKeys];
  v14 = [allKeys2 arrayByAddingObject:@"payment_transaction_pid"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10009D1C4;
  v36[3] = &unk_10083C998;
  selfCopy = self;
  v28 = _propertySettersForPaymentTransactionAmountModifier;
  v37 = v28;
  v15 = v11;
  v38 = v15;
  v29 = v10;
  [v10 enumeratePersistentIDsAndProperties:v14 usingBlock:v36];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [transactionsCopy objectForKey:{v21, v28}];
        v23 = [v16 objectForKey:v21];
        if (v23)
        {
          v24 = v23;
          v25 = [NSSortDescriptor sortDescriptorWithKey:@"order" ascending:1];
          v40 = v25;
          v26 = [NSArray arrayWithObjects:&v40 count:1];
          v27 = [v24 sortedArrayUsingDescriptors:v26];

          [v22 setAmountModifiers:v27];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v18);
  }
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_transaction_pid" equalToValue:v3];

  return v4;
}

- (id)_valuesDictionaryForPaymentTransactionAmountModifier:(id)modifier forPaymentTransactionPID:(int64_t)d
{
  modifierCopy = modifier;
  v6 = +[NSMutableDictionary dictionary];
  amount = [modifierCopy amount];
  v7Amount = [amount amount];
  exponent = [v7Amount exponent];

  v7Amount2 = [amount amount];
  currency = [v7Amount2 currency];

  LOBYTE(v7Amount2) = [currency isEqualToString:PKNoCurrencyCode];
  v7Amount3 = [amount amount];
  v12Amount = [v7Amount3 amount];
  v14 = v12Amount;
  if (v7Amount2)
  {
    v15 = [v12Amount decimalNumberByMultiplyingByPowerOf10:exponent];
    longLongValue = [v15 longLongValue];
  }

  else
  {
    longLongValue = PKCurrencyDecimalToStorageInteger();
  }

  v17 = [NSNumber numberWithLongLong:d];
  [v6 setObjectOrNull:v17 forKey:@"payment_transaction_pid"];

  typeString = [modifierCopy typeString];
  [v6 setObjectOrNull:typeString forKey:@"modifier_type"];

  modifierDescription = [modifierCopy modifierDescription];
  [v6 setObjectOrNull:modifierDescription forKey:@"modifier_description"];

  [v6 setInteger:objc_msgSend(modifierCopy forKey:{"order"), @"modifier_order"}];
  [v6 setObjectOrNull:currency forKey:@"currency"];
  [v6 setInteger:exponent forKey:@"exponent"];
  v20 = [NSNumber numberWithUnsignedLongLong:longLongValue];
  [v6 setObjectOrNull:v20 forKey:@"amount"];

  v21 = [v6 copy];

  return v21;
}

+ (id)_postProcessedAmountForDecimalAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent
{
  amountCopy = amount;
  v8 = 0;
  if (amountCopy && currency)
  {
    v9 = PKNoCurrencyCode;
    currencyCopy = currency;
    if ([currencyCopy isEqualToString:v9])
    {
      v11 = [[NSDecimalNumber alloc] initWithLongLong:{objc_msgSend(amountCopy, "longLongValue")}];
      v12 = [v11 decimalNumberByMultiplyingByPowerOf10:-exponent];
    }

    else
    {
      v12 = PKCurrencyStorageNumberToCurrencyDecimal();
    }

    v13 = [[PKCurrencyAmount alloc] initWithAmount:v12 currency:currencyCopy exponent:exponent];

    if (v13)
    {
      v8 = [[PKTransactionAmount alloc] initWithCurrencyAmount:v13];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)_propertySettersForPaymentTransactionAmountModifier
{
  v4[0] = @"modifier_type";
  v4[1] = @"modifier_description";
  v5[0] = &stru_100841888;
  v5[1] = &stru_1008418A8;
  v4[2] = @"modifier_order";
  v4[3] = @"amount";
  v5[2] = &stru_1008418C8;
  v5[3] = &stru_1008418E8;
  v4[4] = @"currency";
  v4[5] = @"exponent";
  v5[4] = &stru_100841908;
  v5[5] = &stru_100841928;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

@end