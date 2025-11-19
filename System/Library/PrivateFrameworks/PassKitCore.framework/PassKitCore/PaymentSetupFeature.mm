@interface PaymentSetupFeature
+ (id)_propertySettersForPaymentSetupFeature;
+ (id)insertOrUpdatePaymentSetupFeature:(id)a3 inDatabase:(id)a4;
+ (id)paymentSetupFeatureWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)paymentSetupFeaturesInDatabase:(id)a3;
+ (void)deleteAllPaymentSetupFeaturesInDatabase:(id)a3;
+ (void)deletePaymentSetupFeatureWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deletePaymentSetupFeaturesNotIncludingIdentifiers:(id)a3 inDatabase:(id)a4;
- (PaymentSetupFeature)initWithPaymentSetupFeature:(id)a3 inDatabase:(id)a4;
- (id)paymentSetupFeature;
- (void)updateWithPaymentSetupFeature:(id)a3;
@end

@implementation PaymentSetupFeature

+ (id)paymentSetupFeaturesInDatabase:(id)a3
{
  v4 = a3;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [a1 queryWithDatabase:v4 predicate:v5];

  v7 = objc_alloc_init(NSMutableSet);
  v19 = @"pid";
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001ACE18;
  v16 = &unk_10083CBC0;
  v17 = v4;
  v18 = v7;
  v9 = v7;
  v10 = v4;
  [v6 enumeratePersistentIDsAndProperties:v8 usingBlock:&v13];

  v11 = [v9 copy];

  return v11;
}

+ (id)paymentSetupFeatureWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForProductIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)insertOrUpdatePaymentSetupFeature:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 productIdentifier];
  v9 = [a1 paymentSetupFeatureWithIdentifier:v8 inDatabase:v7];

  if (v9)
  {
    [v9 updateWithPaymentSetupFeature:v6];
  }

  else
  {
    v9 = [[a1 alloc] initWithPaymentSetupFeature:v6 inDatabase:v7];
  }

  return v9;
}

- (PaymentSetupFeature)initWithPaymentSetupFeature:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v7 identifiers];
  v10 = _SQLValueForIdentifiers(v9);
  [v8 setObjectOrNull:v10 forKey:@"identifiers"];

  v11 = [v7 localizedDisplayName];
  [v8 setObjectOrNull:v11 forKey:@"localized_display_name"];

  [v8 setInteger:objc_msgSend(v7 forKey:{"type"), @"feature_type"}];
  [v8 setInteger:objc_msgSend(v7 forKey:{"state"), @"feature_state"}];
  [v8 setInteger:objc_msgSend(v7 forKey:{"supportedOptions"), @"supported_options"}];
  [v8 setInteger:objc_msgSend(v7 forKey:{"supportedDevices"), @"supported_devices"}];
  v12 = [v7 productIdentifier];
  [v8 setObjectOrNull:v12 forKey:@"product_identifier"];

  v13 = [v7 partnerIdentifier];
  [v8 setObjectOrNull:v13 forKey:@"partner_identifier"];

  [v8 setInteger:objc_msgSend(v7 forKey:{"featureIdentifier"), @"feature_identifier"}];
  v14 = [v7 dirtyStateIdentifier];
  [v8 setObjectOrNull:v14 forKey:@"dirty_state_identifier"];

  v15 = [v7 lastUpdated];
  v16 = _SQLValueForDate();
  [v8 setObjectOrNull:v16 forKey:@"last_updated_date"];

  v17 = [v7 expiry];
  v18 = _SQLValueForDate();
  [v8 setObjectOrNull:v18 forKey:@"expiry_date"];

  [v8 setInteger:objc_msgSend(v7 forKey:{"productType"), @"product_type"}];
  [v8 setInteger:objc_msgSend(v7 forKey:{"productState"), @"product_state"}];
  v19 = [v7 notificationTitle];
  [v8 setObjectOrNull:v19 forKey:@"notification_title"];

  v20 = [v7 notificationMessage];
  [v8 setObjectOrNull:v20 forKey:@"notification_message"];

  v21 = [v7 discoveryCardIdentifier];

  [v8 setObjectOrNull:v21 forKey:@"discovery_card_identitifer"];
  v22 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];

  v23 = v22;
  return v23;
}

- (void)updateWithPaymentSetupFeature:(id)a3
{
  v4 = a3;
  v18 = objc_alloc_init(NSMutableDictionary);
  v5 = [v4 identifiers];
  v6 = _SQLValueForIdentifiers(v5);
  [v18 setObjectOrNull:v6 forKey:@"identifiers"];

  v7 = [v4 localizedDisplayName];
  [v18 setObjectOrNull:v7 forKey:@"localized_display_name"];

  [v18 setInteger:objc_msgSend(v4 forKey:{"type"), @"feature_type"}];
  [v18 setInteger:objc_msgSend(v4 forKey:{"state"), @"feature_state"}];
  [v18 setInteger:objc_msgSend(v4 forKey:{"supportedOptions"), @"supported_options"}];
  [v18 setInteger:objc_msgSend(v4 forKey:{"supportedDevices"), @"supported_devices"}];
  v8 = [v4 productIdentifier];
  [v18 setObjectOrNull:v8 forKey:@"product_identifier"];

  v9 = [v4 partnerIdentifier];
  [v18 setObjectOrNull:v9 forKey:@"partner_identifier"];

  [v18 setInteger:objc_msgSend(v4 forKey:{"featureIdentifier"), @"feature_identifier"}];
  v10 = [v4 dirtyStateIdentifier];
  [v18 setObjectOrNull:v10 forKey:@"dirty_state_identifier"];

  v11 = [v4 lastUpdated];
  v12 = _SQLValueForDate();
  [v18 setObjectOrNull:v12 forKey:@"last_updated_date"];

  v13 = [v4 expiry];
  v14 = _SQLValueForDate();
  [v18 setObjectOrNull:v14 forKey:@"expiry_date"];

  [v18 setInteger:objc_msgSend(v4 forKey:{"productType"), @"product_type"}];
  [v18 setInteger:objc_msgSend(v4 forKey:{"productState"), @"product_state"}];
  v15 = [v4 notificationTitle];
  [v18 setObjectOrNull:v15 forKey:@"notification_title"];

  v16 = [v4 notificationMessage];
  [v18 setObjectOrNull:v16 forKey:@"notification_message"];

  v17 = [v4 discoveryCardIdentifier];

  [v18 setObjectOrNull:v17 forKey:@"discovery_card_identitifer"];
  [(SQLiteEntity *)self setValuesWithDictionary:v18];
}

- (id)paymentSetupFeature
{
  v3 = objc_alloc_init(PKPaymentSetupFeature);
  v4 = +[PaymentSetupFeature _propertySettersForPaymentSetupFeature];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AD6AC;
  v11[3] = &unk_10083C240;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (void)deletePaymentSetupFeaturesNotIncludingIdentifiers:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"product_identifier" values:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllPaymentSetupFeaturesInDatabase:(id)a3
{
  v4 = a3;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [a1 queryWithDatabase:v4 predicate:v5];

  [v6 deleteAllEntities];
}

+ (void)deletePaymentSetupFeatureWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [objc_opt_class() _predicateForProductIdentifier:v7];

  v8 = [a1 queryWithDatabase:v6 predicate:v9];

  [v8 deleteAllEntities];
}

+ (id)_propertySettersForPaymentSetupFeature
{
  v4[0] = @"identifiers";
  v4[1] = @"localized_display_name";
  v5[0] = &stru_10084BD20;
  v5[1] = &stru_10084BD40;
  v4[2] = @"feature_type";
  v4[3] = @"feature_state";
  v5[2] = &stru_10084BD60;
  v5[3] = &stru_10084BD80;
  v4[4] = @"supported_options";
  v4[5] = @"supported_devices";
  v5[4] = &stru_10084BDA0;
  v5[5] = &stru_10084BDC0;
  v4[6] = @"product_identifier";
  v4[7] = @"partner_identifier";
  v5[6] = &stru_10084BDE0;
  v5[7] = &stru_10084BE00;
  v4[8] = @"feature_identifier";
  v4[9] = @"dirty_state_identifier";
  v5[8] = &stru_10084BE20;
  v5[9] = &stru_10084BE40;
  v4[10] = @"last_updated_date";
  v4[11] = @"expiry_date";
  v5[10] = &stru_10084BE60;
  v5[11] = &stru_10084BE80;
  v4[12] = @"product_type";
  v4[13] = @"product_state";
  v5[12] = &stru_10084BEA0;
  v5[13] = &stru_10084BEC0;
  v4[14] = @"notification_title";
  v4[15] = @"notification_message";
  v5[14] = &stru_10084BEE0;
  v5[15] = &stru_10084BF00;
  v4[16] = @"discovery_card_identitifer";
  v5[16] = &stru_10084BF20;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:17];

  return v2;
}

@end