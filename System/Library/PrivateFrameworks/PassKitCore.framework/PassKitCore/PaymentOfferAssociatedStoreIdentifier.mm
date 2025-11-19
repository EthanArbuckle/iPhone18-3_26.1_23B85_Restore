@interface PaymentOfferAssociatedStoreIdentifier
+ (id)_associatedStoreIdentifiersWithQuery:(id)a3;
+ (id)_commonDictionaryAssociatedStoreIdentifier:(id)a3;
+ (id)_predicateForInstallmentCriteriaPID:(int64_t)a3;
+ (id)associatedStoreIdentifiersForInstallmentCriteriaPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePaymentOfferCurrencyAmountForInstallmentCriteriaPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateAssociatedStoreIdentifiers:(id)a3 forInstallmentCriteriaPID:(int64_t)a4 inDatabase:(id)a5;
@end

@implementation PaymentOfferAssociatedStoreIdentifier

+ (void)insertOrUpdateAssociatedStoreIdentifiers:(id)a3 forInstallmentCriteriaPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a1 deletePaymentOfferCurrencyAmountForInstallmentCriteriaPID:a4 inDatabase:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [objc_opt_class() _commonDictionaryAssociatedStoreIdentifier:*(*(&v17 + 1) + 8 * v13)];
        v15 = [NSNumber numberWithLongLong:a4];
        [v14 safelySetObject:v15 forKey:@"i_pid"];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)deletePaymentOfferCurrencyAmountForInstallmentCriteriaPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForInstallmentCriteriaPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)associatedStoreIdentifiersForInstallmentCriteriaPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForInstallmentCriteriaPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _associatedStoreIdentifiersWithQuery:v8];

  return v9;
}

+ (id)_associatedStoreIdentifiersWithQuery:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v11 = @"a";
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F5050;
  v9[3] = &unk_100840B08;
  v6 = v4;
  v10 = v6;
  [v3 enumeratePersistentIDsAndProperties:v5 usingBlock:v9];

  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_predicateForInstallmentCriteriaPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"i_pid" equalToValue:v3];

  return v4;
}

+ (id)_commonDictionaryAssociatedStoreIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObjectOrNull:v3 forKey:@"a"];

  return v4;
}

@end