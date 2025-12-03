@interface PaymentOfferRewardsCriteria
+ (BOOL)hasCriteriaForPassSerialNumber:(id)number passTypeIdentifier:(id)identifier catalogPID:(int64_t)d inDatabase:(id)database;
+ (id)_commonDictionaryForRewardsCriteria:(id)criteria;
+ (id)_predicateForCatalogPID:(int64_t)d;
+ (id)_predicateForEligibleCriteriaWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number;
+ (id)_propertySetters;
+ (id)anyEligiblePaymentOfferRewardsCriteriaInDatabase:(id)database withPassTypeIdentifier:(id)identifier passSerialNumber:(id)number;
+ (id)rewardsCriteriaForCatalogPID:(int64_t)d inDatabase:(id)database;
+ (unint64_t)criteriaTypeForIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)d criteria:(id)criteria inDatabase:(id)database;
+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateRewardsCriteria:(id)criteria forCatalogPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (unint64_t)type;
@end

@implementation PaymentOfferRewardsCriteria

+ (void)insertOrUpdateRewardsCriteria:(id)criteria forCatalogPID:(int64_t)d inDatabase:(id)database
{
  criteriaCopy = criteria;
  databaseCopy = database;
  [self deletePaymentOfferRewardsCriteriaForCatalogPID:d criteria:criteriaCopy inDatabase:databaseCopy];
  v10 = [self _commonDictionaryForRewardsCriteria:criteriaCopy];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 safelySetObject:v11 forKey:@"c_pid"];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019CDD8;
  v15[3] = &unk_100843068;
  v16 = v10;
  v17 = databaseCopy;
  v18 = criteriaCopy;
  selfCopy = self;
  v12 = criteriaCopy;
  v13 = databaseCopy;
  v14 = v10;
  sub_1005D4424(v13, v15);
}

+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCatalogPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (void)deletePaymentOfferRewardsCriteriaForCatalogPID:(int64_t)d criteria:(id)criteria inDatabase:(id)database
{
  databaseCopy = database;
  criteriaCopy = criteria;
  identifier = [criteriaCopy identifier];
  v10 = [self _predicateForIdentifier:identifier];
  v20[0] = v10;
  passTypeIdentifier = [criteriaCopy passTypeIdentifier];
  v12 = [self _predicateForPassTypeIdentifier:passTypeIdentifier];
  v20[1] = v12;
  passSerialNumber = [criteriaCopy passSerialNumber];

  v14 = [self _predicateForPassSerialNumber:passSerialNumber];
  v20[2] = v14;
  v15 = [self _predicateForCatalogPID:d];
  v20[3] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:4];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v18 = [self queryWithDatabase:databaseCopy predicate:v17];

  [v18 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [PaymentOfferCurrencyAmount deletePaymentOfferCurrencyAmountForRewardsCriteriaPID:persistentID inDatabase:database];
  [PaymentOfferDynamicContent deleteDynamicContentForTablePID:persistentID type:3 inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = PaymentOfferRewardsCriteria;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (unint64_t)criteriaTypeForIdentifier:(id)identifier inDatabase:(id)database
{
  if (!identifier)
  {
    return 0;
  }

  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  type = [v8 type];
  return type;
}

+ (id)rewardsCriteriaForCatalogPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCatalogPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  _propertySetters = [self _propertySetters];
  v10 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySetters allKeys];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10019D3E0;
  v20 = &unk_10083BF08;
  v21 = _propertySetters;
  v22 = databaseCopy;
  v23 = v10;
  selfCopy = self;
  v12 = v10;
  v13 = databaseCopy;
  v14 = _propertySetters;
  [v8 enumeratePersistentIDsAndProperties:allKeys usingBlock:&v17];

  v15 = [v12 copy];

  return v15;
}

+ (id)anyEligiblePaymentOfferRewardsCriteriaInDatabase:(id)database withPassTypeIdentifier:(id)identifier passSerialNumber:(id)number
{
  databaseCopy = database;
  v9 = [self _predicateForEligibleCriteriaWithPassTypeIdentifier:identifier passSerialNumber:number];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    _propertySetters = [self _propertySetters];
    v12 = objc_alloc_init(PKPaymentOfferRewardsCriteria);
    allKeys = [_propertySetters allKeys];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019D6C4;
    v19[3] = &unk_10084AF78;
    selfCopy = self;
    v20 = _propertySetters;
    v14 = v12;
    v21 = v14;
    v15 = _propertySetters;
    [v10 getValuesForProperties:allKeys withApplier:v19];

    v16 = v21;
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)hasCriteriaForPassSerialNumber:(id)number passTypeIdentifier:(id)identifier catalogPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  numberCopy = number;
  v13 = [self _predicateForCatalogPID:d];
  v14 = [self _predicateForPassSerialNumber:{numberCopy, v13}];

  v20[1] = v14;
  v15 = [self _predicateForPassTypeIdentifier:identifierCopy];

  v20[2] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:3];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  v18 = [self anyInDatabase:databaseCopy predicate:v17];

  return v18 != 0;
}

+ (id)_predicateForCatalogPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"c_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForEligibleCriteriaWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number
{
  numberCopy = number;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"e" equalToValue:identifier];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"d" equalToValue:numberCopy];

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
  integerValue = [v2 integerValue];

  return integerValue;
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

+ (id)_commonDictionaryForRewardsCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [criteriaCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"a"];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [criteriaCopy eligibility]);
  [v4 setObjectOrNull:v6 forKey:@"b"];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [criteriaCopy type]);
  [v4 setObjectOrNull:v7 forKey:@"c"];

  passSerialNumber = [criteriaCopy passSerialNumber];
  [v4 setObjectOrNull:passSerialNumber forKey:@"d"];

  passTypeIdentifier = [criteriaCopy passTypeIdentifier];
  [v4 setObjectOrNull:passTypeIdentifier forKey:@"e"];

  fpanIdentifier = [criteriaCopy fpanIdentifier];
  [v4 setObjectOrNull:fpanIdentifier forKey:@"i"];

  redemptionTermsURL = [criteriaCopy redemptionTermsURL];
  v12 = _SQLValueForURL();
  [v4 setObjectOrNull:v12 forKey:@"h"];

  supportedCurrencyCodes = [criteriaCopy supportedCurrencyCodes];
  allObjects = [supportedCurrencyCodes allObjects];
  v15 = [allObjects componentsJoinedByString:{@", "}];
  [v4 setObjectOrNull:v15 forKey:@"f"];

  supportedMerchantCountryCodes = [criteriaCopy supportedMerchantCountryCodes];
  allObjects2 = [supportedMerchantCountryCodes allObjects];
  v18 = [allObjects2 componentsJoinedByString:{@", "}];
  [v4 setObjectOrNull:v18 forKey:@"supported_merchant_country_codes"];

  [v4 setBool:objc_msgSend(criteriaCopy forKey:{"supportedDeferredPayments"), @"ma"}];
  [v4 setBool:objc_msgSend(criteriaCopy forKey:{"supportedRecurringPayments"), @"mb"}];
  instoreCapabilitiesString = [criteriaCopy instoreCapabilitiesString];
  [v4 setObjectOrNull:instoreCapabilitiesString forKey:@"instore_capabilities"];

  [criteriaCopy selectedOfferStickyDuration];
  v20 = [NSNumber numberWithDouble:?];
  [v4 setObjectOrNull:v20 forKey:@"selected_offer_sticky_duration"];

  [criteriaCopy selectedOfferActiveDuration];
  v22 = v21;

  v23 = [NSNumber numberWithDouble:v22];
  [v4 setObjectOrNull:v23 forKey:@"selected_offer_active_duration"];

  return v4;
}

@end