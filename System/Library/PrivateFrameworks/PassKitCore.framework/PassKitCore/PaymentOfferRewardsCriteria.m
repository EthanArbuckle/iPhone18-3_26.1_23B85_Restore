@interface PaymentOfferRewardsCriteria
+ (BOOL)hasCriteriaForPassSerialNumber:(id)a3 passTypeIdentifier:(id)a4 catalogPID:(int64_t)a5 inDatabase:(id)a6;
+ (id)_commonDictionaryForRewardsCriteria:(id)a3;
+ (id)_predicateForCatalogPID:(int64_t)a3;
+ (id)_predicateForEligibleCriteriaWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4;
+ (id)_propertySetters;
+ (id)anyEligiblePaymentOfferRewardsCriteriaInDatabase:(id)a3 withPassTypeIdentifier:(id)a4 passSerialNumber:(id)a5;
+ (id)rewardsCriteriaForCatalogPID:(int64_t)a3 inDatabase:(id)a4;
+ (unint64_t)criteriaTypeForIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)a3 criteria:(id)a4 inDatabase:(id)a5;
+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateRewardsCriteria:(id)a3 forCatalogPID:(int64_t)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (unint64_t)type;
@end

@implementation PaymentOfferRewardsCriteria

+ (void)insertOrUpdateRewardsCriteria:(id)a3 forCatalogPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a1 deletePaymentOfferRewardsCriteriaForCatalogPID:a4 criteria:v8 inDatabase:v9];
  v10 = [a1 _commonDictionaryForRewardsCriteria:v8];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 safelySetObject:v11 forKey:@"c_pid"];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019CDD8;
  v15[3] = &unk_100843068;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = a1;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_1005D4424(v13, v15);
}

+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCatalogPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)a3 criteria:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v19 = [v9 identifier];
  v10 = [a1 _predicateForIdentifier:v19];
  v20[0] = v10;
  v11 = [v9 passTypeIdentifier];
  v12 = [a1 _predicateForPassTypeIdentifier:v11];
  v20[1] = v12;
  v13 = [v9 passSerialNumber];

  v14 = [a1 _predicateForPassSerialNumber:v13];
  v20[2] = v14;
  v15 = [a1 _predicateForCatalogPID:a3];
  v20[3] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:4];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v18 = [a1 queryWithDatabase:v8 predicate:v17];

  [v18 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [PaymentOfferCurrencyAmount deletePaymentOfferCurrencyAmountForRewardsCriteriaPID:v3 inDatabase:v4];
  [PaymentOfferDynamicContent deleteDynamicContentForTablePID:v3 type:3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = PaymentOfferRewardsCriteria;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (unint64_t)criteriaTypeForIdentifier:(id)a3 inDatabase:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = a4;
  v7 = [a1 _predicateForIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 type];
  return v9;
}

+ (id)rewardsCriteriaForCatalogPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCatalogPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _propertySetters];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [v9 allKeys];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10019D3E0;
  v20 = &unk_10083BF08;
  v21 = v9;
  v22 = v6;
  v23 = v10;
  v24 = a1;
  v12 = v10;
  v13 = v6;
  v14 = v9;
  [v8 enumeratePersistentIDsAndProperties:v11 usingBlock:&v17];

  v15 = [v12 copy];

  return v15;
}

+ (id)anyEligiblePaymentOfferRewardsCriteriaInDatabase:(id)a3 withPassTypeIdentifier:(id)a4 passSerialNumber:(id)a5
{
  v8 = a3;
  v9 = [a1 _predicateForEligibleCriteriaWithPassTypeIdentifier:a4 passSerialNumber:a5];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    v11 = [a1 _propertySetters];
    v12 = objc_alloc_init(PKPaymentOfferRewardsCriteria);
    v13 = [v11 allKeys];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019D6C4;
    v19[3] = &unk_10084AF78;
    v22 = a1;
    v20 = v11;
    v14 = v12;
    v21 = v14;
    v15 = v11;
    [v10 getValuesForProperties:v13 withApplier:v19];

    v16 = v21;
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)hasCriteriaForPassSerialNumber:(id)a3 passTypeIdentifier:(id)a4 catalogPID:(int64_t)a5 inDatabase:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [a1 _predicateForCatalogPID:a5];
  v14 = [a1 _predicateForPassSerialNumber:{v12, v13}];

  v20[1] = v14;
  v15 = [a1 _predicateForPassTypeIdentifier:v11];

  v20[2] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:3];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  v18 = [a1 anyInDatabase:v10 predicate:v17];

  return v18 != 0;
}

+ (id)_predicateForCatalogPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"c_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForEligibleCriteriaWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4
{
  v5 = a4;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"e" equalToValue:a3];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"d" equalToValue:v5];

  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:&off_1008A2F90];
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:3];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

- (unint64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"c"];
  v3 = [v2 integerValue];

  return v3;
}

+ (id)_propertySetters
{
  v4[0] = @"a";
  v4[1] = @"b";
  v5[0] = &stru_10084AFB8;
  v5[1] = &stru_10084AFD8;
  v4[2] = @"c";
  v4[3] = @"d";
  v5[2] = &stru_10084AFF8;
  v5[3] = &stru_10084B018;
  v4[4] = @"e";
  v4[5] = @"i";
  v5[4] = &stru_10084B038;
  v5[5] = &stru_10084B058;
  v4[6] = @"h";
  v4[7] = @"f";
  v5[6] = &stru_10084B078;
  v5[7] = &stru_10084B098;
  v4[8] = @"ma";
  v4[9] = @"mb";
  v5[8] = &stru_10084B0B8;
  v5[9] = &stru_10084B0D8;
  v4[10] = @"instore_capabilities";
  v4[11] = @"selected_offer_sticky_duration";
  v5[10] = &stru_10084B0F8;
  v5[11] = &stru_10084B118;
  v4[12] = @"selected_offer_active_duration";
  v4[13] = @"supported_merchant_country_codes";
  v5[12] = &stru_10084B138;
  v5[13] = &stru_10084B158;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:14];

  return v2;
}

+ (id)_commonDictionaryForRewardsCriteria:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"a"];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 eligibility]);
  [v4 setObjectOrNull:v6 forKey:@"b"];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 type]);
  [v4 setObjectOrNull:v7 forKey:@"c"];

  v8 = [v3 passSerialNumber];
  [v4 setObjectOrNull:v8 forKey:@"d"];

  v9 = [v3 passTypeIdentifier];
  [v4 setObjectOrNull:v9 forKey:@"e"];

  v10 = [v3 fpanIdentifier];
  [v4 setObjectOrNull:v10 forKey:@"i"];

  v11 = [v3 redemptionTermsURL];
  v12 = _SQLValueForURL();
  [v4 setObjectOrNull:v12 forKey:@"h"];

  v13 = [v3 supportedCurrencyCodes];
  v14 = [v13 allObjects];
  v15 = [v14 componentsJoinedByString:{@", "}];
  [v4 setObjectOrNull:v15 forKey:@"f"];

  v16 = [v3 supportedMerchantCountryCodes];
  v17 = [v16 allObjects];
  v18 = [v17 componentsJoinedByString:{@", "}];
  [v4 setObjectOrNull:v18 forKey:@"supported_merchant_country_codes"];

  [v4 setBool:objc_msgSend(v3 forKey:{"supportedDeferredPayments"), @"ma"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"supportedRecurringPayments"), @"mb"}];
  v19 = [v3 instoreCapabilitiesString];
  [v4 setObjectOrNull:v19 forKey:@"instore_capabilities"];

  [v3 selectedOfferStickyDuration];
  v20 = [NSNumber numberWithDouble:?];
  [v4 setObjectOrNull:v20 forKey:@"selected_offer_sticky_duration"];

  [v3 selectedOfferActiveDuration];
  v22 = v21;

  v23 = [NSNumber numberWithDouble:v22];
  [v4 setObjectOrNull:v23 forKey:@"selected_offer_active_duration"];

  return v4;
}

@end