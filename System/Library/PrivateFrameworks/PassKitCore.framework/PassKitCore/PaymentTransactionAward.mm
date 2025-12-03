@interface PaymentTransactionAward
+ (id)_postProcessedAmountForDecimalAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent;
+ (id)_predicateForPaymentTransactionPID:(int64_t)d;
+ (id)_propertySettersForPaymentTransactionAward;
+ (id)insertPaymentTransactionAward:(id)award forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (id)insertPaymentTransactionAwards:(id)awards forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (id)paymentTransactionAwardsInDatabase:(id)database forPaymentTransactionPID:(int64_t)d;
+ (void)associateAwardsToPaymentTransactions:(id)transactions inDatabase:(id)database;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (void)updateWithPaymentTransactionAwards:(id)awards forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (PaymentTransactionAward)initWithPaymentTransactionAward:(id)award forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (id)_valuesDictionaryForPaymentTransactionAward:(id)award forPaymentTransactionPID:(int64_t)d;
@end

@implementation PaymentTransactionAward

- (PaymentTransactionAward)initWithPaymentTransactionAward:(id)award forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [(PaymentTransactionAward *)self _valuesDictionaryForPaymentTransactionAward:award forPaymentTransactionPID:d];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];

  return v10;
}

+ (id)insertPaymentTransactionAward:(id)award forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  awardCopy = award;
  v10 = [[self alloc] initWithPaymentTransactionAward:awardCopy forPaymentTransactionPID:d inDatabase:databaseCopy];

  return v10;
}

+ (id)insertPaymentTransactionAwards:(id)awards forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  awardsCopy = awards;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023A60;
  v13[3] = &unk_10083C970;
  v15 = objc_alloc_init(NSMutableArray);
  dCopy = d;
  v14 = databaseCopy;
  v9 = v15;
  v10 = databaseCopy;
  [awardsCopy enumerateObjectsUsingBlock:v13];

  v11 = [v9 copy];

  return v11;
}

+ (void)updateWithPaymentTransactionAwards:(id)awards forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  awardsCopy = awards;
  databaseCopy = database;
  if (awardsCopy && [awardsCopy count])
  {
    [PaymentTransactionAward deleteEntitiesForPaymentTransactionPID:d inDatabase:databaseCopy];
    v8 = [PaymentTransactionAward insertPaymentTransactionAwards:awardsCopy forPaymentTransactionPID:d inDatabase:databaseCopy];
  }
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentTransactionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)paymentTransactionAwardsInDatabase:(id)database forPaymentTransactionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentTransactionPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  _propertySettersForPaymentTransactionAward = [self _propertySettersForPaymentTransactionAward];
  v10 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySettersForPaymentTransactionAward allKeys];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023DE8;
  v18[3] = &unk_10083C998;
  v20 = v10;
  selfCopy = self;
  v19 = _propertySettersForPaymentTransactionAward;
  v12 = v10;
  v13 = _propertySettersForPaymentTransactionAward;
  [v8 enumeratePersistentIDsAndProperties:allKeys usingBlock:v18];

  v14 = [NSSortDescriptor sortDescriptorWithKey:@"order" ascending:1];
  v22 = v14;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  [v12 sortUsingDescriptors:v15];

  v16 = [v12 copy];

  return v16;
}

+ (void)associateAwardsToPaymentTransactions:(id)transactions inDatabase:(id)database
{
  transactionsCopy = transactions;
  databaseCopy = database;
  allKeys = [transactionsCopy allKeys];
  v9 = [self _predicateForPaymentTransactionPIDs:allKeys];

  v30 = v9;
  v31 = databaseCopy;
  v10 = [self queryWithDatabase:databaseCopy predicate:v9];
  v11 = objc_alloc_init(NSMutableDictionary);
  _propertySettersForPaymentTransactionAward = [self _propertySettersForPaymentTransactionAward];
  allKeys2 = [_propertySettersForPaymentTransactionAward allKeys];
  v14 = [allKeys2 arrayByAddingObject:@"payment_transaction_pid"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000241DC;
  v36[3] = &unk_10083C998;
  selfCopy = self;
  v28 = _propertySettersForPaymentTransactionAward;
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

          [v22 setAwards:v27];
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

- (id)_valuesDictionaryForPaymentTransactionAward:(id)award forPaymentTransactionPID:(int64_t)d
{
  awardCopy = award;
  v6 = +[NSMutableDictionary dictionary];
  amount = [awardCopy amount];
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

  identifier = [awardCopy identifier];
  [v6 setObjectOrNull:identifier forKey:@"award_identifier"];

  typeString = [awardCopy typeString];
  [v6 setObjectOrNull:typeString forKey:@"award_type"];

  subtype = [awardCopy subtype];
  [v6 setObjectOrNull:subtype forKey:@"award_subtype"];

  awardDescription = [awardCopy awardDescription];
  [v6 setObjectOrNull:awardDescription forKey:@"award_description"];

  [v6 setInteger:objc_msgSend(awardCopy forKey:{"order"), @"award_order"}];
  relevantAccountName = [awardCopy relevantAccountName];
  [v6 setObjectOrNull:relevantAccountName forKey:@"relevant_account_name"];

  localizedAmount = [awardCopy localizedAmount];
  [v6 setObjectOrNull:localizedAmount forKey:@"localized_amount"];

  [v6 setBool:objc_msgSend(awardCopy forKey:{"hasDeepLink"), @"has_deep_link"}];
  [v6 setObjectOrNull:currency forKey:@"currency"];
  [v6 setInteger:exponent forKey:@"exponent"];
  [v6 setLongLong:longLongValue forKey:@"amount"];
  [v6 setBool:objc_msgSend(awardCopy forKey:{"claimExpired"), @"claim_expired"}];
  [v6 setBool:objc_msgSend(awardCopy forKey:{"redeemExpired"), @"redeem_expired"}];
  claimExpiryDate = [awardCopy claimExpiryDate];
  [v6 setObjectOrNull:claimExpiryDate forKey:@"claim_expiry_date"];

  redeemExpiryDate = [awardCopy redeemExpiryDate];
  [v6 setObjectOrNull:redeemExpiryDate forKey:@"redeem_expiry_date"];

  v26 = [v6 copy];

  return v26;
}

+ (id)_postProcessedAmountForDecimalAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent
{
  amountCopy = amount;
  v8 = 0;
  v9 = amountCopy;
  if (amountCopy && currency)
  {
    v10 = PKNoCurrencyCode;
    currencyCopy = currency;
    if ([currencyCopy isEqualToString:v10])
    {
      v12 = [[NSDecimalNumber alloc] initWithLongLong:{objc_msgSend(amountCopy, "longLongValue")}];
      v9 = [v12 decimalNumberByMultiplyingByPowerOf10:-exponent];
    }

    else
    {
      v9 = PKCurrencyStorageNumberToCurrencyDecimal();
      v12 = amountCopy;
    }

    v13 = [[PKCurrencyAmount alloc] initWithAmount:v9 currency:currencyCopy exponent:exponent];
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

+ (id)_propertySettersForPaymentTransactionAward
{
  v4[0] = @"award_type";
  v4[1] = @"award_description";
  v5[0] = &stru_10083C9D8;
  v5[1] = &stru_10083C9F8;
  v4[2] = @"award_order";
  v4[3] = @"relevant_account_name";
  v5[2] = &stru_10083CA18;
  v5[3] = &stru_10083CA38;
  v4[4] = @"award_identifier";
  v4[5] = @"award_subtype";
  v5[4] = &stru_10083CA58;
  v5[5] = &stru_10083CA78;
  v4[6] = @"localized_amount";
  v4[7] = @"has_deep_link";
  v5[6] = &stru_10083CA98;
  v5[7] = &stru_10083CAB8;
  v4[8] = @"claim_expired";
  v4[9] = @"redeem_expired";
  v5[8] = &stru_10083CAD8;
  v5[9] = &stru_10083CAF8;
  v4[10] = @"claim_expiry_date";
  v4[11] = @"redeem_expiry_date";
  v5[10] = &stru_10083CB18;
  v5[11] = &stru_10083CB38;
  v4[12] = @"amount";
  v4[13] = @"currency";
  v5[12] = &stru_10083CB58;
  v5[13] = &stru_10083CB78;
  v4[14] = @"exponent";
  v5[14] = &stru_10083CB98;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:15];

  return v2;
}

@end