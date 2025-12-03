@interface PaymentSetupFeature
+ (id)_propertySettersForPaymentSetupFeature;
+ (id)insertOrUpdatePaymentSetupFeature:(id)feature inDatabase:(id)database;
+ (id)paymentSetupFeatureWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)paymentSetupFeaturesInDatabase:(id)database;
+ (void)deleteAllPaymentSetupFeaturesInDatabase:(id)database;
+ (void)deletePaymentSetupFeatureWithIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deletePaymentSetupFeaturesNotIncludingIdentifiers:(id)identifiers inDatabase:(id)database;
- (PaymentSetupFeature)initWithPaymentSetupFeature:(id)feature inDatabase:(id)database;
- (id)paymentSetupFeature;
- (void)updateWithPaymentSetupFeature:(id)feature;
@end

@implementation PaymentSetupFeature

+ (id)paymentSetupFeaturesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [self queryWithDatabase:databaseCopy predicate:v5];

  v7 = objc_alloc_init(NSMutableSet);
  v19 = @"pid";
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001ACE18;
  v16 = &unk_10083CBC0;
  v17 = databaseCopy;
  v18 = v7;
  v9 = v7;
  v10 = databaseCopy;
  [v6 enumeratePersistentIDsAndProperties:v8 usingBlock:&v13];

  v11 = [v9 copy];

  return v11;
}

+ (id)paymentSetupFeatureWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForProductIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)insertOrUpdatePaymentSetupFeature:(id)feature inDatabase:(id)database
{
  featureCopy = feature;
  databaseCopy = database;
  productIdentifier = [featureCopy productIdentifier];
  v9 = [self paymentSetupFeatureWithIdentifier:productIdentifier inDatabase:databaseCopy];

  if (v9)
  {
    [v9 updateWithPaymentSetupFeature:featureCopy];
  }

  else
  {
    v9 = [[self alloc] initWithPaymentSetupFeature:featureCopy inDatabase:databaseCopy];
  }

  return v9;
}

- (PaymentSetupFeature)initWithPaymentSetupFeature:(id)feature inDatabase:(id)database
{
  databaseCopy = database;
  featureCopy = feature;
  v8 = objc_alloc_init(NSMutableDictionary);
  identifiers = [featureCopy identifiers];
  v10 = _SQLValueForIdentifiers(identifiers);
  [v8 setObjectOrNull:v10 forKey:@"identifiers"];

  localizedDisplayName = [featureCopy localizedDisplayName];
  [v8 setObjectOrNull:localizedDisplayName forKey:@"localized_display_name"];

  [v8 setInteger:objc_msgSend(featureCopy forKey:{"type"), @"feature_type"}];
  [v8 setInteger:objc_msgSend(featureCopy forKey:{"state"), @"feature_state"}];
  [v8 setInteger:objc_msgSend(featureCopy forKey:{"supportedOptions"), @"supported_options"}];
  [v8 setInteger:objc_msgSend(featureCopy forKey:{"supportedDevices"), @"supported_devices"}];
  productIdentifier = [featureCopy productIdentifier];
  [v8 setObjectOrNull:productIdentifier forKey:@"product_identifier"];

  partnerIdentifier = [featureCopy partnerIdentifier];
  [v8 setObjectOrNull:partnerIdentifier forKey:@"partner_identifier"];

  [v8 setInteger:objc_msgSend(featureCopy forKey:{"featureIdentifier"), @"feature_identifier"}];
  dirtyStateIdentifier = [featureCopy dirtyStateIdentifier];
  [v8 setObjectOrNull:dirtyStateIdentifier forKey:@"dirty_state_identifier"];

  lastUpdated = [featureCopy lastUpdated];
  v16 = _SQLValueForDate();
  [v8 setObjectOrNull:v16 forKey:@"last_updated_date"];

  expiry = [featureCopy expiry];
  v18 = _SQLValueForDate();
  [v8 setObjectOrNull:v18 forKey:@"expiry_date"];

  [v8 setInteger:objc_msgSend(featureCopy forKey:{"productType"), @"product_type"}];
  [v8 setInteger:objc_msgSend(featureCopy forKey:{"productState"), @"product_state"}];
  notificationTitle = [featureCopy notificationTitle];
  [v8 setObjectOrNull:notificationTitle forKey:@"notification_title"];

  notificationMessage = [featureCopy notificationMessage];
  [v8 setObjectOrNull:notificationMessage forKey:@"notification_message"];

  discoveryCardIdentifier = [featureCopy discoveryCardIdentifier];

  [v8 setObjectOrNull:discoveryCardIdentifier forKey:@"discovery_card_identitifer"];
  v22 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];

  v23 = v22;
  return v23;
}

- (void)updateWithPaymentSetupFeature:(id)feature
{
  featureCopy = feature;
  v18 = objc_alloc_init(NSMutableDictionary);
  identifiers = [featureCopy identifiers];
  v6 = _SQLValueForIdentifiers(identifiers);
  [v18 setObjectOrNull:v6 forKey:@"identifiers"];

  localizedDisplayName = [featureCopy localizedDisplayName];
  [v18 setObjectOrNull:localizedDisplayName forKey:@"localized_display_name"];

  [v18 setInteger:objc_msgSend(featureCopy forKey:{"type"), @"feature_type"}];
  [v18 setInteger:objc_msgSend(featureCopy forKey:{"state"), @"feature_state"}];
  [v18 setInteger:objc_msgSend(featureCopy forKey:{"supportedOptions"), @"supported_options"}];
  [v18 setInteger:objc_msgSend(featureCopy forKey:{"supportedDevices"), @"supported_devices"}];
  productIdentifier = [featureCopy productIdentifier];
  [v18 setObjectOrNull:productIdentifier forKey:@"product_identifier"];

  partnerIdentifier = [featureCopy partnerIdentifier];
  [v18 setObjectOrNull:partnerIdentifier forKey:@"partner_identifier"];

  [v18 setInteger:objc_msgSend(featureCopy forKey:{"featureIdentifier"), @"feature_identifier"}];
  dirtyStateIdentifier = [featureCopy dirtyStateIdentifier];
  [v18 setObjectOrNull:dirtyStateIdentifier forKey:@"dirty_state_identifier"];

  lastUpdated = [featureCopy lastUpdated];
  v12 = _SQLValueForDate();
  [v18 setObjectOrNull:v12 forKey:@"last_updated_date"];

  expiry = [featureCopy expiry];
  v14 = _SQLValueForDate();
  [v18 setObjectOrNull:v14 forKey:@"expiry_date"];

  [v18 setInteger:objc_msgSend(featureCopy forKey:{"productType"), @"product_type"}];
  [v18 setInteger:objc_msgSend(featureCopy forKey:{"productState"), @"product_state"}];
  notificationTitle = [featureCopy notificationTitle];
  [v18 setObjectOrNull:notificationTitle forKey:@"notification_title"];

  notificationMessage = [featureCopy notificationMessage];
  [v18 setObjectOrNull:notificationMessage forKey:@"notification_message"];

  discoveryCardIdentifier = [featureCopy discoveryCardIdentifier];

  [v18 setObjectOrNull:discoveryCardIdentifier forKey:@"discovery_card_identitifer"];
  [(SQLiteEntity *)self setValuesWithDictionary:v18];
}

- (id)paymentSetupFeature
{
  v3 = objc_alloc_init(PKPaymentSetupFeature);
  v4 = +[PaymentSetupFeature _propertySettersForPaymentSetupFeature];
  allKeys = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AD6AC;
  v11[3] = &unk_10083C240;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (void)deletePaymentSetupFeaturesNotIncludingIdentifiers:(id)identifiers inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"product_identifier" values:identifiers];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllPaymentSetupFeaturesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [self queryWithDatabase:databaseCopy predicate:v5];

  [v6 deleteAllEntities];
}

+ (void)deletePaymentSetupFeatureWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  v9 = [objc_opt_class() _predicateForProductIdentifier:identifierCopy];

  v8 = [self queryWithDatabase:databaseCopy predicate:v9];

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