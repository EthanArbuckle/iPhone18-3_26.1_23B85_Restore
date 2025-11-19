@interface PaymentTransactionAward
+ (id)_postProcessedAmountForDecimalAmount:(id)a3 currency:(id)a4 exponent:(int64_t)a5;
+ (id)_predicateForPaymentTransactionPID:(int64_t)a3;
+ (id)_propertySettersForPaymentTransactionAward;
+ (id)insertPaymentTransactionAward:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)insertPaymentTransactionAwards:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)paymentTransactionAwardsInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4;
+ (void)associateAwardsToPaymentTransactions:(id)a3 inDatabase:(id)a4;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updateWithPaymentTransactionAwards:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
- (PaymentTransactionAward)initWithPaymentTransactionAward:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
- (id)_valuesDictionaryForPaymentTransactionAward:(id)a3 forPaymentTransactionPID:(int64_t)a4;
@end

@implementation PaymentTransactionAward

- (PaymentTransactionAward)initWithPaymentTransactionAward:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [(PaymentTransactionAward *)self _valuesDictionaryForPaymentTransactionAward:a3 forPaymentTransactionPID:a4];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:v8];

  return v10;
}

+ (id)insertPaymentTransactionAward:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithPaymentTransactionAward:v9 forPaymentTransactionPID:a4 inDatabase:v8];

  return v10;
}

+ (id)insertPaymentTransactionAwards:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023A60;
  v13[3] = &unk_10083C970;
  v15 = objc_alloc_init(NSMutableArray);
  v16 = a4;
  v14 = v7;
  v9 = v15;
  v10 = v7;
  [v8 enumerateObjectsUsingBlock:v13];

  v11 = [v9 copy];

  return v11;
}

+ (void)updateWithPaymentTransactionAwards:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v9 = a3;
  v7 = a5;
  if (v9 && [v9 count])
  {
    [PaymentTransactionAward deleteEntitiesForPaymentTransactionPID:a4 inDatabase:v7];
    v8 = [PaymentTransactionAward insertPaymentTransactionAwards:v9 forPaymentTransactionPID:a4 inDatabase:v7];
  }
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPaymentTransactionPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)paymentTransactionAwardsInDatabase:(id)a3 forPaymentTransactionPID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPaymentTransactionPID:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _propertySettersForPaymentTransactionAward];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [v9 allKeys];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023DE8;
  v18[3] = &unk_10083C998;
  v20 = v10;
  v21 = a1;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  [v8 enumeratePersistentIDsAndProperties:v11 usingBlock:v18];

  v14 = [NSSortDescriptor sortDescriptorWithKey:@"order" ascending:1];
  v22 = v14;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  [v12 sortUsingDescriptors:v15];

  v16 = [v12 copy];

  return v16;
}

+ (void)associateAwardsToPaymentTransactions:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 allKeys];
  v9 = [a1 _predicateForPaymentTransactionPIDs:v8];

  v30 = v9;
  v31 = v7;
  v10 = [a1 queryWithDatabase:v7 predicate:v9];
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [a1 _propertySettersForPaymentTransactionAward];
  v13 = [v12 allKeys];
  v14 = [v13 arrayByAddingObject:@"payment_transaction_pid"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000241DC;
  v36[3] = &unk_10083C998;
  v39 = a1;
  v28 = v12;
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
        v22 = [v6 objectForKey:{v21, v28}];
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

+ (id)_predicateForPaymentTransactionPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_transaction_pid" equalToValue:v3];

  return v4;
}

- (id)_valuesDictionaryForPaymentTransactionAward:(id)a3 forPaymentTransactionPID:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 amount];
  v8 = [v7 amount];
  v9 = [v8 exponent];

  v10 = [v7 amount];
  v11 = [v10 currency];

  LOBYTE(v10) = [v11 isEqualToString:PKNoCurrencyCode];
  v12 = [v7 amount];
  v13 = [v12 amount];
  v14 = v13;
  if (v10)
  {
    v15 = [v13 decimalNumberByMultiplyingByPowerOf10:v9];
    v16 = [v15 longLongValue];
  }

  else
  {
    v16 = PKCurrencyDecimalToStorageInteger();
  }

  v17 = [NSNumber numberWithLongLong:a4];
  [v6 setObjectOrNull:v17 forKey:@"payment_transaction_pid"];

  v18 = [v5 identifier];
  [v6 setObjectOrNull:v18 forKey:@"award_identifier"];

  v19 = [v5 typeString];
  [v6 setObjectOrNull:v19 forKey:@"award_type"];

  v20 = [v5 subtype];
  [v6 setObjectOrNull:v20 forKey:@"award_subtype"];

  v21 = [v5 awardDescription];
  [v6 setObjectOrNull:v21 forKey:@"award_description"];

  [v6 setInteger:objc_msgSend(v5 forKey:{"order"), @"award_order"}];
  v22 = [v5 relevantAccountName];
  [v6 setObjectOrNull:v22 forKey:@"relevant_account_name"];

  v23 = [v5 localizedAmount];
  [v6 setObjectOrNull:v23 forKey:@"localized_amount"];

  [v6 setBool:objc_msgSend(v5 forKey:{"hasDeepLink"), @"has_deep_link"}];
  [v6 setObjectOrNull:v11 forKey:@"currency"];
  [v6 setInteger:v9 forKey:@"exponent"];
  [v6 setLongLong:v16 forKey:@"amount"];
  [v6 setBool:objc_msgSend(v5 forKey:{"claimExpired"), @"claim_expired"}];
  [v6 setBool:objc_msgSend(v5 forKey:{"redeemExpired"), @"redeem_expired"}];
  v24 = [v5 claimExpiryDate];
  [v6 setObjectOrNull:v24 forKey:@"claim_expiry_date"];

  v25 = [v5 redeemExpiryDate];
  [v6 setObjectOrNull:v25 forKey:@"redeem_expiry_date"];

  v26 = [v6 copy];

  return v26;
}

+ (id)_postProcessedAmountForDecimalAmount:(id)a3 currency:(id)a4 exponent:(int64_t)a5
{
  v7 = a3;
  v8 = 0;
  v9 = v7;
  if (v7 && a4)
  {
    v10 = PKNoCurrencyCode;
    v11 = a4;
    if ([v11 isEqualToString:v10])
    {
      v12 = [[NSDecimalNumber alloc] initWithLongLong:{objc_msgSend(v7, "longLongValue")}];
      v9 = [v12 decimalNumberByMultiplyingByPowerOf10:-a5];
    }

    else
    {
      v9 = PKCurrencyStorageNumberToCurrencyDecimal();
      v12 = v7;
    }

    v13 = [[PKCurrencyAmount alloc] initWithAmount:v9 currency:v11 exponent:a5];
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