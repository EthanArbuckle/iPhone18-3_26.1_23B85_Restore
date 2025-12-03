@interface Pass
+ (id)_copyPropertiesForPass;
+ (id)_dynamicStateInDatabase:(id)database forPassPID:(int64_t)d;
+ (id)_insertionDictionaryWithPass:(id)pass passType:(id)type;
+ (id)_predicateForPassAnnotationState:(int64_t)state;
+ (id)_propertySettersForDisplayProfile;
+ (id)_propertySettersForGroupingProfile;
+ (id)_propertySettersForPass;
+ (id)_propertySettersForUpdateContext;
+ (id)_realPassInDatabase:(id)database withProperties:(id)properties values:(const void *)values fromPass:(id)pass;
+ (id)_realPassPredicateForPredicate:(id)predicate;
+ (id)_realPassesInDatabase:(id)database states:(id *)states predicate:(id)predicate orderedBy:(id)by;
+ (id)_updateDictionaryWithDisplayProfile:(id)profile;
+ (id)_updateDictionaryWithPass:(id)pass;
+ (id)anyInDatabase:(id)database withApplicationIdentifier:(id)identifier secureElementIdentifier:(id)elementIdentifier;
+ (id)anyInDatabase:(id)database withApplicationIdentifier:(id)identifier secureElementIdentifiers:(id)identifiers;
+ (id)anyInDatabase:(id)database withAssociatedAccountIdentifier:(id)identifier;
+ (id)anyInDatabase:(id)database withGroup:(id)group;
+ (id)anyInDatabase:(id)database withNotificationService:(id)service;
+ (id)anyInDatabase:(id)database withPassType:(id)type;
+ (id)anyInDatabase:(id)database withPassType:(id)type serialNumber:(id)number;
+ (id)anyInDatabase:(id)database withPersistentID:(int64_t)d;
+ (id)anyInDatabase:(id)database withPrimaryAccountIdentifier:(id)identifier;
+ (id)anyInDatabase:(id)database withProvisioningCredentialHash:(id)hash;
+ (id)anyInDatabase:(id)database withReaderIdentifier:(id)identifier;
+ (id)anyInDatabase:(id)database withTransactionSourcePID:(unint64_t)d;
+ (id)anyInDatabase:(id)database withUniqueID:(id)d;
+ (id)anyInDatabase:(id)database withWebService:(id)service;
+ (id)anyInDatabase:(id)database withWebService:(id)service serialNumber:(id)number;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)candidatePassesInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)dynamicStateInDatabase:(id)database forPassUniqueID:(id)d;
+ (id)dynamicStatesInDatabase:(id)database forPassUniqueIDs:(id)ds;
+ (id)insertPass:(id)pass withPassType:(id)type webService:(id)service transactionService:(id)transactionService messageService:(id)messageService daemonPassData:(id)data inDatabase:(id)database;
+ (id)passPrimaryAccountIdentifiersInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)passSerialNumbersInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)passStylesInDatabase:(id)database;
+ (id)passUniqueIDsInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)passesInDatabase:(id)database states:(id *)states matchingPredicate:(id)predicate;
+ (id)predicateForASCReaderIds:(id)ids;
+ (id)predicateForGroup:(id)group;
+ (id)predicateForHasValidNFCPayload;
+ (id)predicateForIdentityTypes:(id)types;
+ (id)predicateForIsCloudKitArchived:(BOOL)archived;
+ (id)predicateForIsCloudKitSecurelyArchived:(BOOL)archived;
+ (id)predicateForIsRevoked:(BOOL)revoked;
+ (id)predicateForNFCPayloadState:(unint64_t)state;
+ (id)predicateForNotificationService:(id)service;
+ (id)predicateForPassAnnotationStatesInExpiredSection;
+ (id)predicateForPassAnnotationStatesInMainStack;
+ (id)predicateForPassType:(id)type;
+ (id)predicateForPaymentApplicationIdentifier:(id)identifier withSecureElementIdentifier:(id)elementIdentifier;
+ (id)predicateForPaymentApplicationIdentifier:(id)identifier withSecureElementIdentifiers:(id)identifiers;
+ (id)predicateForPaymentApplicationState:(int64_t)state;
+ (id)predicateForPaymentApplicationStates:(id)states;
+ (id)predicateForPaymentApplicationSupportsContactlessPayment:(BOOL)payment;
+ (id)predicateForPaymentApplicationSupportsInAppPayment:(BOOL)payment;
+ (id)predicateForPaymentCardType:(int64_t)type;
+ (id)predicateForPaymentType:(unint64_t)type;
+ (id)predicateForPersistentID:(int64_t)d;
+ (id)predicateForPrimaryPaymentApplication:(BOOL)application;
+ (id)predicateForStyle:(int64_t)style;
+ (id)predicateForSupportsDefaultCardSelection:(BOOL)selection;
+ (id)predicateForSupportsIssuerBinding:(BOOL)binding;
+ (id)predicateForTransactionSourceWithPID:(unint64_t)d;
+ (id)predicateForWebService:(id)service;
+ (id)queryWithDatabase:(id)database group:(id)group;
+ (id)queryWithDatabase:(id)database passType:(id)type;
+ (id)secureElementCardTypesInDatabase:(id)database;
+ (id)unexpiredPassStylesInDatabase:(id)database;
+ (id)unexpiredSecureElementCardTypesInDatabase:(id)database;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)enumerateOrganizationNamesForQuery:(id)query withHandler:(id)handler;
+ (void)enumeratePassSyncabilityPropertiesInDatabase:(id)database withHandler:(id)handler;
+ (void)enumeratePassUniqueIDsAndTypesForQuery:(id)query withHandler:(id)handler;
+ (void)enumeratePassesAndGroupingProfilesForQuery:(id)query withHandler:(id)handler;
+ (void)enumeratePassesForQuery:(id)query withHandler:(id)handler;
+ (void)enumerateUpdateContextsForQuery:(id)query withHandler:(id)handler;
+ (void)passInformationInDatabase:(id)database withPassUniqueID:(id)d cardType:(int64_t *)type accessType:(int64_t *)accessType accessReportingType:(id *)reportingType supportedRadioTechnologies:(unint64_t *)technologies;
- (BOOL)deleteFromDatabase;
- (BOOL)hasAssociatedPeerPaymentAccount;
- (BOOL)revoked;
- (BOOL)supportsIssuerBinding;
- (BOOL)voided;
- (Pass)initWithPass:(id)pass passType:(id)type webService:(id)service transactionService:(id)transactionService messageService:(id)messageService daemonPassData:(id)data inDatabase:(id)database;
- (id)_realPass;
- (id)_updatePassTileDescriptor:(id)descriptor groupDescriptor:(id)groupDescriptor idx:(unint64_t)idx previousStates:(id)states visitedIdentifiers:(id)identifiers;
- (id)defaultPaymentApplication;
- (id)displayProfile;
- (id)expirationDate;
- (id)group;
- (id)groupingProfile;
- (id)messageService;
- (id)passMessageService;
- (id)passNotificationServiceForType:(unint64_t)type;
- (id)passTransactionService;
- (id)passType;
- (id)signingDate;
- (id)transactionService;
- (id)transactionSourceIdentifier;
- (id)updateContext;
- (id)webService;
- (int64_t)passStyle;
- (int64_t)sortingState;
- (unint64_t)associatedAccountFeatureIdentifier;
- (unint64_t)passFlavor;
- (void)_updateSortingStateIfNecessary;
- (void)_updateWithMessageService:(id)service;
- (void)_updateWithPassMessageService:(id)service;
- (void)_updateWithPassTransactionService:(id)service;
- (void)_updateWithTransactionService:(id)service;
- (void)_updateWithWebService:(id)service;
- (void)getPushRegistrationStatus:(unint64_t *)status date:(id *)date;
- (void)udpateWithIsCloudKitArchived:(BOOL)archived;
- (void)udpateWithIsCloudKitSecurelyArchived:(BOOL)archived;
- (void)updateBackgroundColorWithPass:(id)pass;
- (void)updateLocationsWithPass:(id)pass;
- (void)updateTallCodeValueWithPass:(id)pass;
- (void)updateWithAssociatedApplicationIdentifiers:(id)identifiers;
- (void)updateWithAssociatedPassTypeIdentifiers:(id)identifiers;
- (void)updateWithAssociatedWebDomains:(id)domains;
- (void)updateWithBeacons:(id)beacons;
- (void)updateWithContactlessActivationGroupingType:(unint64_t)type;
- (void)updateWithDaemonPassData:(id)data;
- (void)updateWithDefaultPaymentApplication:(id)application;
- (void)updateWithGroup:(id)group;
- (void)updateWithLastModifiedSource:(int64_t)source;
- (void)updateWithLegalAgreements:(id)agreements;
- (void)updateWithNFCPayload:(id)payload;
- (void)updateWithPass:(id)pass webService:(id)service transactionSevice:(id)sevice messageService:(id)messageService daemonPassData:(id)data;
- (void)updateWithPassDisplayProfile:(id)profile;
- (void)updateWithPassTileDescriptors:(id)descriptors;
- (void)updateWithPaymentApplications:(id)applications;
- (void)updateWithProvisioningMetadata:(id)metadata;
- (void)updateWithPushRegistrationStatus:(int64_t)status date:(id)date;
- (void)updateWithRelevantDates:(id)dates;
- (void)updateWithRevocationStatus:(BOOL)status;
- (void)updateWithSecureElementPassFields:(id)fields;
- (void)updateWithShareBundle:(id)bundle;
- (void)updateWithSortingState:(int64_t)state forSortingReason:(int64_t)reason;
- (void)updateWithSupportsIssuerBinding:(BOOL)binding;
- (void)updateWithTransactionSourcePID:(int64_t)d;
@end

@implementation Pass

+ (id)_copyPropertiesForPass
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableSet);
  _propertySettersForPass = [self _propertySettersForPass];
  allKeys = [_propertySettersForPass allKeys];
  [v4 addObjectsFromArray:allKeys];

  _propertySettersForDisplayProfile = [self _propertySettersForDisplayProfile];
  allKeys2 = [_propertySettersForDisplayProfile allKeys];
  [v4 addObjectsFromArray:allKeys2];

  pk_arrayCopy = [v4 pk_arrayCopy];
  objc_autoreleasePoolPop(v3);
  return pk_arrayCopy;
}

+ (id)_propertySettersForPass
{
  v4[0] = @"unique_id";
  v4[1] = @"transaction_source.identifier";
  v5[0] = &stru_100843198;
  v5[1] = &stru_1008431B8;
  v4[2] = @"pass_type.identifier";
  v4[3] = @"pass_type.team_identifier";
  v5[2] = &stru_1008431D8;
  v5[3] = &stru_1008431F8;
  v4[4] = @"serial_number";
  v4[5] = @"sequence_counter";
  v5[4] = &stru_100843218;
  v5[5] = &stru_100843238;
  v4[6] = @"authentication_token";
  v4[7] = @"organization_name";
  v5[6] = &stru_100843258;
  v5[7] = &stru_100843278;
  v4[8] = @"expiration_date";
  v4[9] = @"voided";
  v5[8] = &stru_100843298;
  v5[9] = &stru_1008432B8;
  v4[10] = @"web_service.service_url";
  v4[11] = @"user_info";
  v5[10] = &stru_1008432D8;
  v5[11] = &stru_1008432F8;
  v4[12] = @"provisioning_credential_hash";
  v4[13] = @"manifest_hash";
  v5[12] = &stru_100843318;
  v5[13] = &stru_100843338;
  v4[14] = @"share_count";
  v4[15] = @"sharing_method";
  v5[14] = &stru_100843358;
  v5[15] = &stru_100843378;
  v4[16] = @"sharing_url";
  v4[17] = @"sharing_text";
  v5[16] = &stru_100843398;
  v5[17] = &stru_1008433B8;
  v4[18] = @"ingested_date";
  v4[19] = @"signing_date";
  v5[18] = &stru_1008433D8;
  v5[19] = &stru_1008433F8;
  v4[20] = @"modified_date";
  v4[21] = @"revoked";
  v5[20] = &stru_100843418;
  v5[21] = &stru_100843438;
  v4[22] = @"has_stored_value";
  v4[23] = @"live_render_background_type";
  v5[22] = &stru_100843458;
  v5[23] = &stru_100843478;
  v4[24] = @"f";
  v4[25] = @"b";
  v5[24] = &stru_100843498;
  v5[25] = &stru_1008434B8;
  v4[26] = @"live_rendering_requires_enablement";
  v4[27] = @"mute_ready_for_use_notification";
  v5[26] = &stru_1008434D8;
  v5[27] = &stru_1008434F8;
  v4[28] = @"pass_flavor";
  v4[29] = @"card_type";
  v5[28] = &stru_100843518;
  v5[29] = &stru_100843538;
  v4[30] = @"primary_account_identifier";
  v4[31] = @"primary_account_suffix";
  v5[30] = &stru_100843558;
  v5[31] = &stru_100843578;
  v4[32] = @"sanitized_pan";
  v4[33] = @"c";
  v5[32] = &stru_100843598;
  v5[33] = &stru_1008435B8;
  v4[34] = @"supports_dpan_notifications";
  v4[35] = @"supports_fpan_notifications";
  v5[34] = &stru_1008435D8;
  v5[35] = &stru_1008435F8;
  v4[36] = @"supports_default_card_selection";
  v4[37] = @"is_shell_pass";
  v5[36] = &stru_100843618;
  v5[37] = &stru_100843638;
  v4[38] = @"supports_serial_number_based_provisioning";
  v4[39] = @"requires_transfer_serial_number_based_provisioning";
  v5[38] = &stru_100843658;
  v5[39] = &stru_100843678;
  v4[40] = @"has_associated_peer_payment_account";
  v4[41] = @"access_pass_type";
  v5[40] = &stru_100843698;
  v5[41] = &stru_1008436B8;
  v4[42] = @"a";
  v4[43] = @"contactless_activation_grouping_type";
  v5[42] = &stru_1008436D8;
  v5[43] = &stru_1008436F8;
  v4[44] = @"cobranded";
  v4[45] = @"issuer_country_code";
  v5[44] = &stru_100843718;
  v5[45] = &stru_100843738;
  v4[46] = @"d";
  v4[47] = @"g";
  v5[46] = &stru_100843758;
  v5[47] = &stru_100843778;
  v4[48] = @"e";
  v4[49] = @"is_cloud_kit_archived";
  v5[48] = &stru_100843798;
  v5[49] = &stru_1008437B8;
  v4[50] = @"cloud_kit_metadata";
  v4[51] = @"is_cloud_kit_securely_archived";
  v5[50] = &stru_1008437D8;
  v5[51] = &stru_1008437F8;
  v4[52] = @"cloud_kit_secure_metadata";
  v4[53] = @"shipping_address_seed";
  v5[52] = &stru_100843818;
  v5[53] = &stru_100843838;
  v4[54] = @"original_provisioning_date";
  v4[55] = @"transfer_url";
  v5[54] = &stru_100843858;
  v5[55] = &stru_100843878;
  v4[56] = @"sell_url";
  v4[57] = @"h";
  v5[56] = &stru_100843898;
  v5[57] = &stru_1008438B8;
  v4[58] = @"s";
  v4[59] = @"bag_policy_url";
  v5[58] = &stru_1008438D8;
  v5[59] = &stru_1008438F8;
  v4[60] = @"order_food_url";
  v4[61] = @"transit_information_url";
  v5[60] = &stru_100843918;
  v5[61] = &stru_100843938;
  v4[62] = @"parking_information_url";
  v4[63] = @"directions_information_url";
  v5[62] = &stru_100843958;
  v5[63] = &stru_100843978;
  v4[64] = @"merchandise_url";
  v5[64] = &stru_100843998;
  v4[65] = @"accessibility_url";
  v5[65] = &stru_1008439B8;
  v4[66] = @"purchase_parking_url";
  v5[66] = &stru_1008439D8;
  v4[67] = @"add_on_url";
  v5[67] = &stru_1008439F8;
  v4[68] = @"i";
  v5[68] = &stru_100843A18;
  v4[69] = @"j";
  v5[69] = &stru_100843A38;
  v4[70] = @"k";
  v5[70] = &stru_100843A58;
  v4[71] = @"m";
  v5[71] = &stru_100843A78;
  v4[72] = @"n";
  v5[72] = &stru_100843A98;
  v4[73] = @"t";
  v5[73] = &stru_100843AB8;
  v4[74] = @"w";
  v5[74] = &stru_100843AD8;
  v4[75] = @"u";
  v5[75] = &stru_100843AF8;
  v4[76] = @"v";
  v5[76] = &stru_100843B18;
  v4[77] = @"contact_venue_phone_number";
  v5[77] = &stru_100843B38;
  v4[78] = @"contact_venue_email";
  v5[78] = &stru_100843B58;
  v4[79] = @"contact_venue_website";
  v5[79] = &stru_100843B78;
  v4[80] = @"p";
  v5[80] = &stru_100843B98;
  v4[81] = @"q";
  v5[81] = &stru_100843BB8;
  v4[82] = @"r";
  v5[82] = &stru_100843BD8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:83];

  return v2;
}

+ (id)_propertySettersForDisplayProfile
{
  v4[0] = @"template";
  v4[1] = @"background_color";
  v5[0] = &stru_100843C18;
  v5[1] = &stru_100843C38;
  v4[2] = @"secondary_background_color";
  v4[3] = @"foreground_color";
  v5[2] = &stru_100843C58;
  v5[3] = &stru_100843C78;
  v4[4] = @"label_color";
  v4[5] = @"strip_color";
  v5[4] = &stru_100843C98;
  v5[5] = &stru_100843CB8;
  v4[6] = @"manifest_hash";
  v4[7] = @"tall_code";
  v5[6] = &stru_100843CD8;
  v5[7] = &stru_100843CF8;
  v4[8] = @"has_background_image";
  v4[9] = @"has_strip_image";
  v5[8] = &stru_100843D18;
  v5[9] = &stru_100843D38;
  v4[10] = @"supports_automatic_foreground_vibrancy";
  v4[11] = @"supports_automatic_label_vibrancy";
  v5[10] = &stru_100843D58;
  v5[11] = &stru_100843D78;
  v4[12] = @"suppress_header_darkening";
  v4[13] = @"footer_background_color";
  v5[12] = &stru_100843D98;
  v5[13] = &stru_100843DB8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:14];

  return v2;
}

- (int64_t)passStyle
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"pass_group.pass_style"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (id)_propertySettersForGroupingProfile
{
  v4[0] = @"pass_type.identifier";
  v4[1] = @"grouping_id";
  v5[0] = &stru_100843EF8;
  v5[1] = &stru_100843F18;
  v4[2] = @"template";
  v4[3] = @"ingested_date";
  v5[2] = &stru_100843F38;
  v5[3] = &stru_100843F58;
  v4[4] = @"nfc.message";
  v5[4] = &stru_100843F78;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (id)expirationDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"expiration_date"];
  v3 = _DateForSQLValue();

  return v3;
}

- (id)signingDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"signing_date"];
  v3 = _DateForSQLValue();

  return v3;
}

- (int64_t)sortingState
{
  v3 = +[PassAnnotations databaseTable];
  v4 = [NSString stringWithFormat:@"%@.%@", v3, @"sorting_state"];

  v5 = [(SQLiteEntity *)self valueForProperty:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (BOOL)voided
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"voided"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)predicateForPassAnnotationStatesInExpiredSection
{
  v3 = [self _predicateForPassAnnotationState:1];
  v8[0] = v3;
  v4 = [self _predicateForPassAnnotationState:4];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v5];

  return v6;
}

- (id)_realPass
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100005A70;
  v13 = sub_10000B144;
  v14 = 0;
  v3 = [(SQLiteEntity *)self valueForProperty:@"template"];
  integerValue = [v3 integerValue];

  if (integerValue <= 12)
  {
    v5 = +[Pass _copyPropertiesForPass];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000108B0;
    v8[3] = &unk_100843040;
    v8[4] = self;
    v8[5] = &v9;
    [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (unint64_t)associatedAccountFeatureIdentifier
{
  if ([(Pass *)self hasAssociatedPeerPaymentAccount])
  {
    return 1;
  }

  associatedAccountIdentifier = [(Pass *)self associatedAccountIdentifier];
  if (associatedAccountIdentifier)
  {
    database = [(SQLiteEntity *)self database];
    v6 = [Account anyInDatabase:database withIdentifier:associatedAccountIdentifier];

    if (v6)
    {
      feature = [v6 feature];
    }

    else
    {
      feature = 0;
    }
  }

  else
  {
    feature = 0;
  }

  return feature;
}

- (BOOL)hasAssociatedPeerPaymentAccount
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"has_associated_peer_payment_account"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class)
  {
    return @"pid";
  }

  if (objc_opt_class() == class)
  {
    return @"web_service_pid";
  }

  if (objc_opt_class() == class)
  {
    return @"transaction_source_pid";
  }

  return 0;
}

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  if (([propertyCopy isEqualToString:@"pass_type.identifier"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"pass_type.team_identifier") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"pass_type.identifier_hash"))
  {
    [joinsCopy addObject:@"JOIN pass_type ON pass_type.pid = pass.pass_type_pid"];
  }

  if ([propertyCopy isEqualToString:@"web_service.service_url"])
  {
    [joinsCopy addObject:@"LEFT OUTER JOIN web_service ON web_service.pid = pass.web_service_pid"];
  }

  if (([propertyCopy isEqualToString:@"pass_group.group_order"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"pass_group.pass_style"))
  {
    [joinsCopy addObject:@"JOIN pass_group ON pass_group.pid = pass.group_pid"];
  }

  if (([propertyCopy isEqualToString:@"payment_application.aid"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.seid") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.state") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.auxiliary_application") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.payment_network_identifier") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.supports_contactless_payment") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.supports_in_app_payment") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.payment_type") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.applet_data_format") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.i") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"whitney.f"))
  {
    [joinsCopy addObject:@"JOIN payment_application ON payment_application.pass_pid = pass.pid"];
    if ([propertyCopy isEqualToString:@"whitney.f"])
    {
      [joinsCopy addObject:@"JOIN whitney ON whitney.a = payment_application.pid"];
    }
  }

  if (([propertyCopy isEqualToString:@"payment_automatic_selection_criterion_tci.tci"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"payment_automatic_selection_criterion_reader_id.reader_id") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"associated_reader_id.reader_id"))
  {
    [joinsCopy addObject:@"JOIN payment_automatic_selection_criterion ON payment_automatic_selection_criterion.payment_application_pid = payment_application.pid JOIN payment_automatic_selection_criterion_tci ON payment_automatic_selection_criterion_tci.payment_automatic_selection_criterion_pid = payment_automatic_selection_criterion.pid LEFT JOIN payment_automatic_selection_criterion_reader_id ON payment_automatic_selection_criterion_reader_id.payment_automatic_selection_criterion_pid = payment_automatic_selection_criterion.pid LEFT JOIN associated_reader_id ON associated_reader_id.automatic_selection_criterion_pid = payment_automatic_selection_criterion.pid"];
  }

  if ([propertyCopy isEqualToString:@"pass_notification_service.notification_service_pid"])
  {
    [joinsCopy addObject:@"JOIN pass_notification_service ON (pass_notification_service.pid = pass_transaction_service_pid OR pass_notification_service.pid = pass_message_service_pid)"];
  }

  if (([propertyCopy isEqualToString:@"nfc.message"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"nfc.encryption_public_key") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"nfc.a"))
  {
    [joinsCopy addObject:@"LEFT OUTER JOIN nfc ON nfc.pass_pid = pass.pid"];
  }

  if ([propertyCopy isEqualToString:@"associated_pass_type_identifier.identifier_hash"])
  {
    [joinsCopy addObject:@"JOIN associated_pass_type_identifier ON associated_pass_type_identifier.pass_pid = pass.pid"];
  }

  if ([propertyCopy isEqualToString:@"transaction_source.identifier"])
  {
    [joinsCopy addObject:@"LEFT JOIN transaction_source ON transaction_source.pid = pass.transaction_source_pid"];
  }

  v6 = +[PassAnnotations databaseTable];
  v7 = [propertyCopy rangeOfString:v6];
  if (v8)
  {
    if (!v7)
    {
      v9 = v8;
      if ([propertyCopy length] > v8 && objc_msgSend(propertyCopy, "characterAtIndex:", v9) == 46)
      {
        v10 = [NSString stringWithFormat:@"JOIN %@ ON %@.%@ = pass.pid", v6, v6, @"pass_pid"];
        [joinsCopy addObject:v10];
      }
    }
  }
}

+ (id)_insertionDictionaryWithPass:(id)pass passType:(id)type
{
  typeCopy = type;
  passCopy = pass;
  v7 = objc_alloc_init(NSMutableDictionary);
  uniqueID = [passCopy uniqueID];
  [v7 setObjectOrNull:uniqueID forKey:@"unique_id"];

  serialNumber = [passCopy serialNumber];
  [v7 setObjectOrNull:serialNumber forKey:@"serial_number"];

  persistentID = [typeCopy persistentID];
  [v7 setLongLong:persistentID forKey:@"pass_type_pid"];
  groupingID = [passCopy groupingID];
  [v7 setObjectOrNull:groupingID forKey:@"grouping_id"];

  provisioningCredentialHash = [passCopy provisioningCredentialHash];
  [v7 setObjectOrNull:provisioningCredentialHash forKey:@"provisioning_credential_hash"];

  v13 = +[NSDate date];
  [v7 setObject:v13 forKey:@"ingested_date"];

  signingDate = [passCopy signingDate];

  [v7 setObjectOrNull:signingDate forKey:@"signing_date"];

  return v7;
}

+ (id)_updateDictionaryWithPass:(id)pass
{
  passCopy = pass;
  v4 = objc_alloc_init(NSMutableDictionary);
  organizationName = [passCopy organizationName];
  [v4 setObjectOrNull:organizationName forKey:@"organization_name"];

  expirationDate = [passCopy expirationDate];
  [v4 setObjectOrNull:expirationDate forKey:@"expiration_date"];

  sequenceCounter = [passCopy sequenceCounter];
  [v4 setObjectOrNull:sequenceCounter forKey:@"sequence_counter"];

  [v4 setBool:objc_msgSend(passCopy forKey:{"isVoided"), @"voided"}];
  [v4 setBool:objc_msgSend(passCopy forKey:{"hasStoredValue"), @"has_stored_value"}];
  [passCopy liveRenderType];
  v8 = PKPassLiveRenderTypeToString();
  [v4 setObjectOrNull:v8 forKey:@"live_render_background_type"];

  [passCopy homeKeyLiveRenderType];
  v9 = PKPassHomeKeyLiveRenderTypeToString();
  [v4 setObjectOrNull:v9 forKey:@"f"];

  [v4 setBool:objc_msgSend(passCopy forKey:{"supportsCategoryVisualization"), @"b"}];
  [v4 setBool:objc_msgSend(passCopy forKey:{"liveRenderingRequiresEnablement"), @"live_rendering_requires_enablement"}];
  [v4 setBool:objc_msgSend(passCopy forKey:{"muteReadyForUseNotification"), @"mute_ready_for_use_notification"}];
  userInfo = [passCopy userInfo];
  if ([NSJSONSerialization isValidJSONObject:userInfo])
  {
    v11 = [NSJSONSerialization dataWithJSONObject:userInfo options:0 error:0];
    [v4 setObjectOrNull:v11 forKey:@"user_info"];
  }

  else
  {
    [v4 setObjectOrNull:0 forKey:@"user_info"];
  }

  manifestHash = [passCopy manifestHash];
  [v4 setObjectOrNull:manifestHash forKey:@"manifest_hash"];

  [v4 setInteger:objc_msgSend(passCopy forKey:{"sharingMethod"), @"sharing_method"}];
  sharingURL = [passCopy sharingURL];
  v14 = _SQLValueForURL();
  [v4 setObjectOrNull:v14 forKey:@"sharing_url"];

  sharingText = [passCopy sharingText];
  [v4 setObjectOrNull:sharingText forKey:@"sharing_text"];

  authenticationToken = [passCopy authenticationToken];
  [v4 setObjectOrNull:authenticationToken forKey:@"authentication_token"];

  [v4 setInteger:objc_msgSend(passCopy forKey:{"passType"), @"pass_flavor"}];
  [v4 setBool:objc_msgSend(passCopy forKey:{"isCloudKitArchived"), @"is_cloud_kit_archived"}];
  cloudKitMetadata = [passCopy cloudKitMetadata];
  [v4 setObjectOrNull:cloudKitMetadata forKey:@"cloud_kit_metadata"];

  [v4 setBool:objc_msgSend(passCopy forKey:{"isCloudKitSecurelyArchived"), @"is_cloud_kit_securely_archived"}];
  cloudKitSecureMetadata = [passCopy cloudKitSecureMetadata];
  [v4 setObjectOrNull:cloudKitSecureMetadata forKey:@"cloud_kit_secure_metadata"];

  provisioningCredentialHash = [passCopy provisioningCredentialHash];
  [v4 setObjectOrNull:provisioningCredentialHash forKey:@"provisioning_credential_hash"];

  [v4 setBool:objc_msgSend(passCopy forKey:{"supportsIssuerBinding"), @"supports_issuer_binding"}];
  transferURL = [passCopy transferURL];
  v21 = _SQLValueForURL();
  [v4 setObjectOrNull:v21 forKey:@"transfer_url"];

  sellURL = [passCopy sellURL];
  v23 = _SQLValueForURL();
  [v4 setObjectOrNull:v23 forKey:@"sell_url"];

  upgradeURL = [passCopy upgradeURL];
  v25 = _SQLValueForURL();
  [v4 setObjectOrNull:v25 forKey:@"h"];

  managementURL = [passCopy managementURL];
  v27 = _SQLValueForURL();
  [v4 setObjectOrNull:v27 forKey:@"s"];

  bagPolicyURL = [passCopy bagPolicyURL];
  v29 = _SQLValueForURL();
  [v4 setObjectOrNull:v29 forKey:@"bag_policy_url"];

  orderFoodURL = [passCopy orderFoodURL];
  v31 = _SQLValueForURL();
  [v4 setObjectOrNull:v31 forKey:@"order_food_url"];

  transitInformationURL = [passCopy transitInformationURL];
  v33 = _SQLValueForURL();
  [v4 setObjectOrNull:v33 forKey:@"transit_information_url"];

  parkingInformationURL = [passCopy parkingInformationURL];
  v35 = _SQLValueForURL();
  [v4 setObjectOrNull:v35 forKey:@"parking_information_url"];

  directionsInformationURL = [passCopy directionsInformationURL];
  v37 = _SQLValueForURL();
  [v4 setObjectOrNull:v37 forKey:@"directions_information_url"];

  merchandiseURL = [passCopy merchandiseURL];
  v39 = _SQLValueForURL();
  [v4 setObjectOrNull:v39 forKey:@"merchandise_url"];

  accessibilityURL = [passCopy accessibilityURL];
  v41 = _SQLValueForURL();
  [v4 setObjectOrNull:v41 forKey:@"accessibility_url"];

  purchaseParkingURL = [passCopy purchaseParkingURL];
  v43 = _SQLValueForURL();
  [v4 setObjectOrNull:v43 forKey:@"purchase_parking_url"];

  partnerAddOnURL = [passCopy partnerAddOnURL];
  v45 = _SQLValueForURL();
  [v4 setObjectOrNull:v45 forKey:@"add_on_url"];

  purchaseWifiURL = [passCopy purchaseWifiURL];
  v47 = _SQLValueForURL();
  [v4 setObjectOrNull:v47 forKey:@"i"];

  changeSeatURL = [passCopy changeSeatURL];
  v49 = _SQLValueForURL();
  [v4 setObjectOrNull:v49 forKey:@"j"];

  entertainmentURL = [passCopy entertainmentURL];
  v51 = _SQLValueForURL();
  [v4 setObjectOrNull:v51 forKey:@"k"];

  purchaseAdditionalBaggageURL = [passCopy purchaseAdditionalBaggageURL];
  v53 = _SQLValueForURL();
  [v4 setObjectOrNull:v53 forKey:@"m"];

  purchaseLoungeAccessURL = [passCopy purchaseLoungeAccessURL];
  v55 = _SQLValueForURL();
  [v4 setObjectOrNull:v55 forKey:@"n"];

  reportLostBagURL = [passCopy reportLostBagURL];
  v57 = _SQLValueForURL();
  [v4 setObjectOrNull:v57 forKey:@"t"];

  trackBagsURL = [passCopy trackBagsURL];
  v59 = _SQLValueForURL();
  [v4 setObjectOrNull:v59 forKey:@"w"];

  requestWheelchairURL = [passCopy requestWheelchairURL];
  v61 = _SQLValueForURL();
  [v4 setObjectOrNull:v61 forKey:@"u"];

  registerServiceAnimalURL = [passCopy registerServiceAnimalURL];
  v63 = _SQLValueForURL();
  [v4 setObjectOrNull:v63 forKey:@"v"];

  contactVenuePhoneNumber = [passCopy contactVenuePhoneNumber];
  v65 = _SQLValueForURL();
  [v4 setObjectOrNull:v65 forKey:@"contact_venue_phone_number"];

  contactVenueEmail = [passCopy contactVenueEmail];
  v67 = _SQLValueForURL();
  [v4 setObjectOrNull:v67 forKey:@"contact_venue_email"];

  contactVenueWebsite = [passCopy contactVenueWebsite];
  v69 = _SQLValueForURL();
  [v4 setObjectOrNull:v69 forKey:@"contact_venue_website"];

  transitProviderPhoneNumberURL = [passCopy transitProviderPhoneNumberURL];
  v71 = _SQLValueForURL();
  [v4 setObjectOrNull:v71 forKey:@"p"];

  transitProviderEmailURL = [passCopy transitProviderEmailURL];
  v73 = _SQLValueForURL();
  [v4 setObjectOrNull:v73 forKey:@"q"];

  transitProviderWebsiteURL = [passCopy transitProviderWebsiteURL];
  v75 = _SQLValueForURL();
  [v4 setObjectOrNull:v75 forKey:@"r"];

  if ([passCopy passType] == 1)
  {
    [v4 setInteger:objc_msgSend(passCopy forKey:{"cardType"), @"card_type"}];
    primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
    [v4 setObjectOrNull:primaryAccountIdentifier forKey:@"primary_account_identifier"];

    primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
    [v4 setObjectOrNull:primaryAccountNumberSuffix forKey:@"primary_account_suffix"];

    sanitizedPrimaryAccountNumber = [passCopy sanitizedPrimaryAccountNumber];
    [v4 setObjectOrNull:sanitizedPrimaryAccountNumber forKey:@"sanitized_pan"];

    sanitizedPrimaryAccountName = [passCopy sanitizedPrimaryAccountName];
    [v4 setObjectOrNull:sanitizedPrimaryAccountName forKey:@"c"];

    [v4 setBool:objc_msgSend(passCopy forKey:{"supportsDPANNotifications"), @"supports_dpan_notifications"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"supportsFPANNotifications"), @"supports_fpan_notifications"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"supportsDefaultCardSelection"), @"supports_default_card_selection"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"isShellPass"), @"is_shell_pass"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"supportsSerialNumberBasedProvisioning"), @"supports_serial_number_based_provisioning"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"requiresTransferSerialNumberBasedProvisioning"), @"requires_transfer_serial_number_based_provisioning"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"hasAssociatedPeerPaymentAccount"), @"has_associated_peer_payment_account"}];
    associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
    [v4 setObjectOrNull:associatedAccountServiceAccountIdentifier forKey:@"a"];

    [v4 setInteger:objc_msgSend(passCopy forKey:{"contactlessActivationGroupingType"), @"contactless_activation_grouping_type"}];
    [v4 setBool:objc_msgSend(passCopy forKey:{"isCobranded"), @"cobranded"}];
    issuerCountryCode = [passCopy issuerCountryCode];
    [v4 setObjectOrNull:issuerCountryCode forKey:@"issuer_country_code"];

    issuerAdministrativeAreaCode = [passCopy issuerAdministrativeAreaCode];
    [v4 setObjectOrNull:issuerAdministrativeAreaCode forKey:@"d"];

    identityAccountKeyIdentifier = [passCopy identityAccountKeyIdentifier];
    [v4 setObjectOrNull:identityAccountKeyIdentifier forKey:@"g"];

    [v4 setInteger:objc_msgSend(passCopy forKey:{"identityType"), @"identity_pass_type"}];
    [v4 setInteger:objc_msgSend(passCopy forKey:{"accessType"), @"access_pass_type"}];
    partnerAccountIdentifier = [passCopy partnerAccountIdentifier];
    [v4 setObjectOrNull:partnerAccountIdentifier forKey:@"e"];

    shippingAddressSeed = [passCopy shippingAddressSeed];
    [v4 setObjectOrNull:shippingAddressSeed forKey:@"shipping_address_seed"];

    originalProvisioningDate = [passCopy originalProvisioningDate];
    v87 = _SQLValueForDate();
    [v4 setObjectOrNull:v87 forKey:@"original_provisioning_date"];
  }

  return v4;
}

+ (id)_updateDictionaryWithDisplayProfile:(id)profile
{
  profileCopy = profile;
  v4 = objc_alloc_init(NSMutableDictionary);
  backgroundColor = [profileCopy backgroundColor];
  string = [backgroundColor string];
  [v4 setObjectOrNull:string forKey:@"background_color"];

  secondaryBackgroundColor = [profileCopy secondaryBackgroundColor];
  string2 = [secondaryBackgroundColor string];
  [v4 setObjectOrNull:string2 forKey:@"secondary_background_color"];

  foregroundColor = [profileCopy foregroundColor];
  string3 = [foregroundColor string];
  [v4 setObjectOrNull:string3 forKey:@"foreground_color"];

  labelColor = [profileCopy labelColor];
  string4 = [labelColor string];
  [v4 setObjectOrNull:string4 forKey:@"label_color"];

  stripColor = [profileCopy stripColor];
  string5 = [stripColor string];
  [v4 setObjectOrNull:string5 forKey:@"strip_color"];

  [v4 setInteger:objc_msgSend(profileCopy forKey:{"passStyle"), @"template"}];
  [v4 setBool:objc_msgSend(profileCopy forKey:{"tallCode"), @"tall_code"}];
  [v4 setBool:objc_msgSend(profileCopy forKey:{"hasBackgroundImage"), @"has_background_image"}];
  [v4 setBool:objc_msgSend(profileCopy forKey:{"hasStripImage"), @"has_strip_image"}];
  [v4 setBool:objc_msgSend(profileCopy forKey:{"supportsAutomaticForegroundVibrancy"), @"supports_automatic_foreground_vibrancy"}];
  [v4 setBool:objc_msgSend(profileCopy forKey:{"supportsAutomaticLabelVibrancy"), @"supports_automatic_label_vibrancy"}];
  [v4 setBool:objc_msgSend(profileCopy forKey:{"suppressesHeaderDarkening"), @"suppress_header_darkening"}];
  footerBackgroundColor = [profileCopy footerBackgroundColor];

  string6 = [footerBackgroundColor string];
  [v4 setObjectOrNull:string6 forKey:@"footer_background_color"];

  return v4;
}

- (Pass)initWithPass:(id)pass passType:(id)type webService:(id)service transactionService:(id)transactionService messageService:(id)messageService daemonPassData:(id)data inDatabase:(id)database
{
  passCopy = pass;
  serviceCopy = service;
  transactionServiceCopy = transactionService;
  messageServiceCopy = messageService;
  dataCopy = data;
  databaseCopy = database;
  v21 = [Pass _insertionDictionaryWithPass:passCopy passType:type];
  v24.receiver = self;
  v24.super_class = Pass;
  v22 = [(SQLiteEntity *)&v24 initWithPropertyValues:v21 inDatabase:databaseCopy];

  if (v22)
  {
    [(Pass *)v22 updateWithPass:passCopy webService:serviceCopy transactionSevice:transactionServiceCopy messageService:messageServiceCopy daemonPassData:dataCopy];
  }

  return v22;
}

+ (id)insertPass:(id)pass withPassType:(id)type webService:(id)service transactionService:(id)transactionService messageService:(id)messageService daemonPassData:(id)data inDatabase:(id)database
{
  databaseCopy = database;
  dataCopy = data;
  messageServiceCopy = messageService;
  transactionServiceCopy = transactionService;
  serviceCopy = service;
  typeCopy = type;
  passCopy = pass;
  v23 = [[self alloc] initWithPass:passCopy passType:typeCopy webService:serviceCopy transactionService:transactionServiceCopy messageService:messageServiceCopy daemonPassData:dataCopy inDatabase:databaseCopy];

  return v23;
}

- (void)updateWithPass:(id)pass webService:(id)service transactionSevice:(id)sevice messageService:(id)messageService daemonPassData:(id)data
{
  passCopy = pass;
  serviceCopy = service;
  seviceCopy = sevice;
  messageServiceCopy = messageService;
  dataCopy = data;
  v17 = [Pass _updateDictionaryWithPass:passCopy];
  [(SQLiteEntity *)self setValuesWithDictionary:v17];

  displayProfile = [passCopy displayProfile];
  v19 = [Pass _updateDictionaryWithDisplayProfile:displayProfile];
  [(SQLiteEntity *)self setValuesWithDictionary:v19];

  [(Pass *)self _updateWithWebService:serviceCopy];
  [(Pass *)self _updateWithTransactionService:seviceCopy];
  [(Pass *)self _updateWithMessageService:messageServiceCopy];
  v20 = objc_autoreleasePoolPush();
  [(Pass *)self updateLocationsWithPass:passCopy];
  objc_autoreleasePoolPop(v20);
  embeddedBeacons = [passCopy embeddedBeacons];
  [(Pass *)self updateWithBeacons:embeddedBeacons];

  nfcPayload = [passCopy nfcPayload];
  [(Pass *)self updateWithNFCPayload:nfcPayload];

  relevantDates = [passCopy relevantDates];
  [(Pass *)self updateWithRelevantDates:relevantDates];

  [(Pass *)self _updateSortingStateIfNecessary];
  associatedPassTypeIdentifiers = [passCopy associatedPassTypeIdentifiers];
  [(Pass *)self updateWithAssociatedPassTypeIdentifiers:associatedPassTypeIdentifiers];

  [(Pass *)self updateWithDaemonPassData:dataCopy];
  if ([passCopy passType] == 1)
  {
    secureElementPass = [passCopy secureElementPass];
    paymentApplications = [secureElementPass paymentApplications];
    [(Pass *)self updateWithPaymentApplications:paymentApplications];

    associatedApplicationIdentifiers = [secureElementPass associatedApplicationIdentifiers];
    [(Pass *)self updateWithAssociatedApplicationIdentifiers:associatedApplicationIdentifiers];

    associatedWebDomains = [secureElementPass associatedWebDomains];
    [(Pass *)self updateWithAssociatedWebDomains:associatedWebDomains];

    provisioningMetadata = [secureElementPass provisioningMetadata];
    [(Pass *)self updateWithProvisioningMetadata:provisioningMetadata];

    legalAgreements = [secureElementPass legalAgreements];
    [(Pass *)self updateWithLegalAgreements:legalAgreements];

    transactionSourceIdentifier = [(Pass *)self transactionSourceIdentifier];
    supportsFPANNotifications = [secureElementPass supportsFPANNotifications];
    if (!transactionSourceIdentifier && supportsFPANNotifications)
    {
      v33 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [secureElementPass uniqueID];
        v36 = 138412290;
        v37 = uniqueID;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Pass %@ did not have a transaction source, adding one now", &v36, 0xCu);
      }

      v35 = [TransactionSource insertTransactionSourceWithType:0 inDatabase:self->super._database];
      -[Pass updateWithTransactionSourcePID:](self, "updateWithTransactionSourcePID:", [v35 persistentID]);
    }
  }
}

- (void)updateWithPushRegistrationStatus:(int64_t)status date:(id)date
{
  v10[0] = @"push_registration_status";
  dateCopy = date;
  v7 = [NSNumber numberWithInteger:status];
  v10[1] = @"push_registration_date";
  v11[0] = v7;
  v8 = _SQLValueForDate();

  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(SQLiteEntity *)self setValuesWithDictionary:v9];
}

- (void)updateWithLastModifiedSource:(int64_t)source
{
  v5 = +[NSDate date];
  v7 = _SQLValueForDate();

  [(SQLiteEntity *)self setValue:v7 forProperty:@"modified_date"];
  v6 = [NSNumber numberWithInteger:source];
  [(SQLiteEntity *)self setValue:v6 forProperty:@"modified_source"];
}

- (void)updateLocationsWithPass:(id)pass
{
  passCopy = pass;
  database = [(SQLiteEntity *)self database];
  localLocationsURL = [passCopy localLocationsURL];
  v6 = [LocationSource anyInDatabase:database withURL:localLocationsURL];

  database2 = [(SQLiteEntity *)self database];
  v8 = +[PassLocationSource queryWithDatabase:passPID:locationSourcePID:](PassLocationSource, "queryWithDatabase:passPID:locationSourcePID:", database2, -[SQLiteEntity persistentID](self, "persistentID"), [v6 persistentID]);

  [v8 deleteAllEntities];
  if (v6)
  {
    [v6 deleteFromDatabase];
  }

  localLocationsURL2 = [passCopy localLocationsURL];

  if (localLocationsURL2)
  {
    localLocationsURL3 = [passCopy localLocationsURL];
    database3 = [(SQLiteEntity *)self database];
    v12 = [LocationSource insertLocationSourceWithURL:localLocationsURL3 forPass:self type:0 inDatabase:database3];

    v13 = [NSSet alloc];
    embeddedLocationsArray = [passCopy embeddedLocationsArray];
    v15 = [v13 initWithArray:embeddedLocationsArray];

    database4 = [(SQLiteEntity *)self database];
    [Location insertLocations:v15 forSource:v12 inDatabase:database4];
  }
}

- (void)updateBackgroundColorWithPass:(id)pass
{
  displayProfile = [pass displayProfile];
  backgroundColor = [displayProfile backgroundColor];
  string = [backgroundColor string];
  [(SQLiteEntity *)self setValue:string forProperty:@"background_color"];

  secondaryBackgroundColor = [displayProfile secondaryBackgroundColor];
  string2 = [secondaryBackgroundColor string];
  [(SQLiteEntity *)self setValue:string2 forProperty:@"secondary_background_color"];
}

- (void)updateTallCodeValueWithPass:(id)pass
{
  displayProfile = [pass displayProfile];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [displayProfile tallCode]);
  [(SQLiteEntity *)self setValue:v4 forProperty:@"tall_code"];
}

- (void)updateWithNFCPayload:(id)payload
{
  payloadCopy = payload;
  database = [(SQLiteEntity *)self database];
  v5 = [NFC anyInDatabase:database forPassPID:[(SQLiteEntity *)self persistentID]];

  supportsIssuerBinding = [(Pass *)self supportsIssuerBinding];
  if (((v5 == 0) & supportsIssuerBinding) != 0)
  {
    payloadState = 3;
  }

  else
  {
    payloadState = 0;
  }

  if ((v5 == 0) & supportsIssuerBinding) == 0 && (supportsIssuerBinding)
  {
    nfcPayload = [v5 nfcPayload];
    payloadState = [nfcPayload payloadState];
  }

  database2 = [(SQLiteEntity *)self database];
  [NFC deleteEntitiesForPass:self inDatabase:database2];

  if (payloadCopy)
  {
    database3 = [(SQLiteEntity *)self database];
    [NFC insertOrUpdateNFCPayload:payloadCopy forPass:self computedPayloadState:payloadState inDatabase:database3];
  }
}

- (void)updateWithRelevantDates:(id)dates
{
  datesCopy = dates;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  [PassRelevancyDates deleteEntitiesForPassPID:persistentID inDatabase:database];

  database2 = [(SQLiteEntity *)self database];
  [PassRelevancyDates insertPassRelevancyDates:datesCopy forPassPID:persistentID inDatabase:database2];
}

- (void)updateWithBeacons:(id)beacons
{
  beaconsCopy = beacons;
  database = [(SQLiteEntity *)self database];
  [Beacon deleteEntitiesForPass:self inDatabase:database];

  database2 = [(SQLiteEntity *)self database];
  [Beacon insertBeacons:beaconsCopy forPass:self inDatabase:database2];
}

- (void)_updateWithWebService:(id)service
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"web_service_pid"];
}

- (void)updateWithPaymentApplications:(id)applications
{
  applicationsCopy = applications;
  database = [(SQLiteEntity *)self database];
  [PaymentApplication updatePaymentApplications:applicationsCopy forPass:self inDatabase:database];
}

- (id)_updatePassTileDescriptor:(id)descriptor groupDescriptor:(id)groupDescriptor idx:(unint64_t)idx previousStates:(id)states visitedIdentifiers:(id)identifiers
{
  descriptorCopy = descriptor;
  groupDescriptorCopy = groupDescriptor;
  statesCopy = states;
  identifiersCopy = identifiers;
  metadata = [descriptorCopy metadata];
  identifier = [metadata identifier];
  if (!identifier || ([identifiersCopy containsObject:identifier] & 1) != 0 || (v18 = objc_msgSend(metadata, "isGroupType"), groupDescriptorCopy) && (v18 & 1) != 0)
  {
    v19 = 0;
  }

  else
  {
    [identifiersCopy addObject:identifier];
    v21 = [statesCopy objectForKeyedSubscript:identifier];
    type = [metadata type];
    if (!v21 || [v21 type] != type)
    {
      v23 = [[PKPassTileDescriptorState alloc] initForType:type];

      v21 = v23;
    }

    v19 = [TileDescriptor insertDescriptor:descriptorCopy groupDescriptor:groupDescriptorCopy withState:v21 order:idx forPass:self inDatabase:self->super._database];
  }

  return v19;
}

- (void)updateWithPassTileDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  persistentID = [(SQLiteEntity *)self persistentID];
  v6 = [TileDescriptorState statesInDatabase:self->super._database forPassPID:persistentID];
  [TileDescriptor deleteEntitiesForPassPID:persistentID inDatabase:self->super._database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D06D8;
  v9[3] = &unk_100842FC8;
  v9[4] = self;
  v10 = v6;
  v11 = objc_alloc_init(NSMutableSet);
  v7 = v11;
  v8 = v6;
  [descriptorsCopy enumerateObjectsUsingBlock:v9];
}

- (void)updateWithSecureElementPassFields:(id)fields
{
  fieldsCopy = fields;
  [SecureElementPassField deleteSecureElementPassFieldsInDatabase:self->super._database forPassPID:[(SQLiteEntity *)self persistentID]];
  v14 = fieldsCopy;
  fieldsDictionary = [fieldsCopy fieldsDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [fieldsDictionary countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v15 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v15)
        {
          objc_enumerationMutation(fieldsDictionary);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [fieldsDictionary objectForKeyedSubscript:v9];
        if ([v10 count])
        {
          v11 = 0;
          do
          {
            v12 = [v10 objectAtIndexedSubscript:v11];
            v13 = [SecureElementPassField insertBalanceFieldUnit:v12 forPass:self passDictionaryKey:v9 order:v11 inDatabase:self->super._database];

            ++v11;
          }

          while (v11 < [v10 count]);
        }
      }

      v7 = [fieldsDictionary countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)updateWithShareBundle:(id)bundle
{
  if (bundle)
  {
    bundleCopy = bundle;
    persistentID = [(SQLiteEntity *)self persistentID];
    shares = [bundleCopy shares];
    [PassShare mergeInShares:shares forPassPID:persistentID inDatabase:self->super._database];

    entitlements = [bundleCopy entitlements];

    [PassEntitlement insertOrUpdatePassEntitlements:entitlements forPassPID:persistentID inDatabase:self->super._database];
  }
}

- (void)udpateWithIsCloudKitArchived:(BOOL)archived
{
  v4 = [NSNumber numberWithBool:archived];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"is_cloud_kit_archived"];
}

- (void)udpateWithIsCloudKitSecurelyArchived:(BOOL)archived
{
  v4 = [NSNumber numberWithBool:archived];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"is_cloud_kit_securely_archived"];
}

- (void)updateWithDefaultPaymentApplication:(id)application
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"pass_default_payment_application_pid"];
}

- (void)updateWithTransactionSourcePID:(int64_t)d
{
  v4 = [NSNumber numberWithLongLong:d];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"transaction_source_pid"];
}

- (void)_updateWithTransactionService:(id)service
{
  serviceCopy = service;
  passTransactionService = [(Pass *)self passTransactionService];
  if (passTransactionService)
  {
    v5 = passTransactionService;
    [passTransactionService updateWithNotificationService:serviceCopy];
  }

  else
  {
    v6 = serviceCopy;
    if (!serviceCopy)
    {
      goto LABEL_6;
    }

    database = [(SQLiteEntity *)self database];
    v5 = [PassNotificationService insertPassNotificationServiceWithNotificationService:serviceCopy inDatabase:database];

    [(Pass *)self _updateWithPassTransactionService:v5];
  }

  v6 = serviceCopy;
LABEL_6:
}

- (void)_updateWithMessageService:(id)service
{
  serviceCopy = service;
  passMessageService = [(Pass *)self passMessageService];
  if (passMessageService)
  {
    v5 = passMessageService;
    [passMessageService updateWithNotificationService:serviceCopy];
  }

  else
  {
    v6 = serviceCopy;
    if (!serviceCopy)
    {
      goto LABEL_6;
    }

    database = [(SQLiteEntity *)self database];
    v5 = [PassNotificationService insertPassNotificationServiceWithNotificationService:serviceCopy inDatabase:database];

    [(Pass *)self _updateWithPassMessageService:v5];
  }

  v6 = serviceCopy;
LABEL_6:
}

- (void)_updateWithPassTransactionService:(id)service
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"pass_transaction_service_pid"];
}

- (void)_updateWithPassMessageService:(id)service
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"pass_message_service_pid"];
}

- (void)_updateSortingStateIfNecessary
{
  uniqueID = [(Pass *)self uniqueID];
  database = [(SQLiteEntity *)self database];
  v5 = [PassAnnotations anyInDatabase:database withPassID:uniqueID];

  if (v5)
  {
    passAnnotations = [v5 passAnnotations];
    isArchived = [passAnnotations isArchived];

    if (isArchived)
    {
      pass = [(Pass *)self pass];
      expirationDate = [pass expirationDate];

      if (expirationDate)
      {
        isExpired = [pass isExpired];
      }

      else
      {
        isExpired = [pass isPastRelevancy];
      }

      v11 = isExpired;
      if ([pass isExpired] && objc_msgSend(pass, "passType") == 1)
      {
        secureElementPass = [pass secureElementPass];
        [secureElementPass passActivationState];
      }

      if ((([pass isVoided] | v11) & 1) == 0 && (objc_msgSend(pass, "isExpiredBasedOnSigningDate") & 1) == 0)
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = uniqueID;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Un-archiving updated pass with unique id:%@ since it no longer qualifies for the expired section", &v14, 0xCu);
        }

        [v5 updateSortingState:0];
      }
    }
  }
}

- (void)updateWithSortingState:(int64_t)state forSortingReason:(int64_t)reason
{
  database = [(SQLiteEntity *)self database];
  uniqueID = [(Pass *)self uniqueID];
  v9 = [PassAnnotations anyInDatabase:database withPassID:uniqueID];

  if (PKExpiredPassesDisabledByUser())
  {
    if (state == 1)
    {
      state = 3;
    }

    v10 = PKLogFacilityTypeGetObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        if ((reason - 1) > 6)
        {
          v12 = @"PKPassSortingReasonUnknown";
        }

        else
        {
          v12 = off_100843F98[reason - 1];
        }

        v22 = 134218498;
        stateCopy4 = state;
        v24 = 2112;
        stateCopy3 = v12;
        v26 = 2048;
        v27 = 1;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating sorting state to: %ld with existing annotations for sorting reason: %@ (PKExpiredPassesDisabledByUser:%ld)", &v22, 0x20u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (v11)
    {
      uniqueID2 = [(Pass *)self uniqueID];
      v16 = uniqueID2;
      if ((reason - 1) > 6)
      {
        v17 = @"PKPassSortingReasonUnknown";
      }

      else
      {
        v17 = off_100843F98[reason - 1];
      }

      v22 = 138413058;
      stateCopy4 = uniqueID2;
      v24 = 2048;
      stateCopy3 = state;
      v26 = 2112;
      v27 = v17;
      v28 = 2048;
      v29 = 1;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No annotations found for pass with id:%@ creating new annotations with sorting state: %ld for sorting reason: %@ (PKExpiredPassesDisabledByUser:%ld)", &v22, 0x2Au);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v10 = PKLogFacilityTypeGetObject();
  v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v13)
    {
      uniqueID3 = [(Pass *)self uniqueID];
      v16 = uniqueID3;
      if ((reason - 1) > 6)
      {
        v19 = @"PKPassSortingReasonUnknown";
      }

      else
      {
        v19 = off_100843F98[reason - 1];
      }

      v22 = 138413058;
      stateCopy4 = uniqueID3;
      v24 = 2048;
      stateCopy3 = state;
      v26 = 2112;
      v27 = v19;
      v28 = 2048;
      v29 = 0;
      goto LABEL_28;
    }

LABEL_29:

    database2 = [(SQLiteEntity *)self database];
    v21 = [PassAnnotations insertPassAnnotationsForSortingState:state forPass:self inDatabase:database2];

    goto LABEL_30;
  }

  if (v13)
  {
    if ((reason - 1) > 6)
    {
      v14 = @"PKPassSortingReasonUnknown";
    }

    else
    {
      v14 = off_100843F98[reason - 1];
    }

    v22 = 134218498;
    stateCopy4 = state;
    v24 = 2112;
    stateCopy3 = v14;
    v26 = 2048;
    v27 = 0;
    goto LABEL_22;
  }

LABEL_23:

  [v9 updateSortingState:state];
LABEL_30:
}

- (void)updateWithAssociatedApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  database = [(SQLiteEntity *)self database];
  [AssociatedApplicationIdentifier deleteEntitiesForPass:self inDatabase:database];

  database2 = [(SQLiteEntity *)self database];
  [AssociatedApplicationIdentifier insertAssociatedApplicationIdentifiers:identifiersCopy forPass:self inDatabase:database2];
}

- (void)updateWithAssociatedPassTypeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  database = [(SQLiteEntity *)self database];
  [AssociatedPassTypeIdentifier deleteEntitiesForPass:self inDatabase:database];

  database2 = [(SQLiteEntity *)self database];
  [AssociatedPassTypeIdentifier insertAssociatedPassTypeIdentifiers:identifiersCopy forPass:self inDatabase:database2];
}

- (void)updateWithAssociatedWebDomains:(id)domains
{
  domainsCopy = domains;
  database = [(SQLiteEntity *)self database];
  [AssociatedWebDomain deleteEntitiesForPass:self inDatabase:database];

  database2 = [(SQLiteEntity *)self database];
  [AssociatedWebDomain insertAssociatedWebDomains:domainsCopy forPass:self inDatabase:database2];
}

- (void)updateWithGroup:(id)group
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"group_pid"];
}

- (void)updateWithRevocationStatus:(BOOL)status
{
  v4 = [NSNumber numberWithBool:status];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"revoked"];
}

- (void)updateWithDaemonPassData:(id)data
{
  dataCopy = data;
  if ([(Pass *)self passFlavor]== 1)
  {
    v4 = sub_100004338(dataCopy);
    [(Pass *)self updateWithPassTileDescriptors:v4];

    v5 = sub_1000044D8(dataCopy);
    [(Pass *)self updateWithSecureElementPassFields:v5];

    v6 = sub_1005AD1B0(dataCopy);
    [(Pass *)self updateWithShareBundle:v6];
  }
}

- (void)updateWithSupportsIssuerBinding:(BOOL)binding
{
  v4 = [NSNumber numberWithBool:binding];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"supports_issuer_binding"];
}

- (void)updateWithProvisioningMetadata:(id)metadata
{
  if (metadata)
  {
    metadataCopy = metadata;
    persistentID = [(SQLiteEntity *)self persistentID];
    database = [(SQLiteEntity *)self database];
    [PassProvisioningMetadata insertOrUpdateProvisioningMetadata:metadataCopy forPassPID:persistentID inDatabase:database];
  }
}

- (void)updateWithLegalAgreements:(id)agreements
{
  agreementsCopy = agreements;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  if (agreementsCopy)
  {
    [PassLegalAgreement bulkInsertOrUpdate:agreementsCopy passPID:persistentID inDatabase:database];
  }

  else
  {
    [PassLegalAgreement deleteForPassPID:persistentID inDatabase:database];
  }
}

- (void)updateWithPassDisplayProfile:(id)profile
{
  if (profile)
  {
    v4 = [Pass _updateDictionaryWithDisplayProfile:?];
    [(SQLiteEntity *)self setValuesWithDictionary:v4];
  }
}

- (void)updateWithContactlessActivationGroupingType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedInteger:type];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"contactless_activation_grouping_type"];
}

+ (id)_dynamicStateInDatabase:(id)database forPassPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [[self alloc] initWithPersistentID:d inDatabase:databaseCopy];
  v8 = objc_alloc_init(PassDynamicState);
  v9 = [PassLiveRender passLiveRenderInDatabase:databaseCopy forPass:v7];
  passLiveRender = [v9 passLiveRender];
  [(PassDynamicState *)v8 setLiveRender:passLiveRender];

  v11 = [PKPassBalanceModel alloc];
  v12 = [PaymentBalance paymentBalancesInDatabase:databaseCopy forPass:v7];
  v13 = [v11 initWithBalances:v12];
  [(PassDynamicState *)v8 setBalanceModel:v13];

  v14 = [PassRelevancyModel anyInDatabase:databaseCopy forPass:v7];
  passRelevancyModel = [v14 passRelevancyModel];
  [(PassDynamicState *)v8 setRelevancyModel:passRelevancyModel];

  uniqueID = [v7 uniqueID];
  v17 = [UserLegalAgreementConsent userLegalAgreementConsentsForPassUniqueID:uniqueID inDatabase:databaseCopy];
  [(PassDynamicState *)v8 setAgreements:v17];

  v18 = +[PassAssociatedFlight anyInDatabase:forPassPID:](PassAssociatedFlight, "anyInDatabase:forPassPID:", databaseCopy, [v7 persistentID]);
  v19 = +[Flight anyInDatabase:withPID:](Flight, "anyInDatabase:withPID:", databaseCopy, [v18 flightPID]);

  flight = [v19 flight];
  [(PassDynamicState *)v8 setFlight:flight];

  return v8;
}

+ (id)dynamicStateInDatabase:(id)database forPassUniqueID:(id)d
{
  databaseCopy = database;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  v9 = [self predicateForUniqueID:dCopy];
  v10 = [self _realPassPredicateForPredicate:v9];

  v11 = [self queryWithDatabase:databaseCopy predicate:v10];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100005A70;
  v23 = sub_10000B144;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D1D2C;
  v15[3] = &unk_100842FF0;
  v17 = &v19;
  selfCopy = self;
  v12 = databaseCopy;
  v16 = v12;
  [v11 enumeratePersistentIDsAndProperties:&__NSArray0__struct usingBlock:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v8);

  return v13;
}

+ (id)dynamicStatesInDatabase:(id)database forPassUniqueIDs:(id)ds
{
  databaseCopy = database;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  v9 = [self predicateForUniqueIDs:dsCopy];
  v10 = [self _realPassPredicateForPredicate:v9];

  v11 = [self queryWithDatabase:databaseCopy predicate:v10];
  v12 = objc_alloc_init(NSMutableDictionary);
  v22 = @"unique_id";
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D1F44;
  v18[3] = &unk_10083C998;
  v19 = v12;
  selfCopy = self;
  v14 = databaseCopy;
  v20 = v14;
  v15 = v12;
  [v11 enumeratePersistentIDsAndProperties:v13 usingBlock:v18];

  v16 = [v15 copy];
  objc_autoreleasePoolPop(v8);

  return v16;
}

+ (id)_realPassPredicateForPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = predicateCopy;
  if (predicateCopy)
  {
    v10[0] = predicateCopy;
    predicateForValidStyle = [self predicateForValidStyle];
    v10[1] = predicateForValidStyle;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    predicateForValidStyle2 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];
  }

  else
  {
    predicateForValidStyle2 = [self predicateForValidStyle];
  }

  return predicateForValidStyle2;
}

+ (id)_realPassesInDatabase:(id)database states:(id *)states predicate:(id)predicate orderedBy:(id)by
{
  databaseCopy = database;
  byCopy = by;
  predicateCopy = predicate;
  v13 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  v14 = [self _realPassPredicateForPredicate:predicateCopy];

  v29 = byCopy;
  v15 = [self queryWithDatabase:databaseCopy predicate:v14 orderingProperties:byCopy];
  v16 = +[PKSecureElement isInFailForward];
  v17 = objc_alloc_init(NSMutableSet);
  if (states)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
    v18 = 0;
  }

  _copyPropertiesForPass = [self _copyPropertiesForPass];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000D22E4;
  v30[3] = &unk_100843018;
  v20 = v17;
  v31 = v20;
  selfCopy = self;
  v21 = databaseCopy;
  v32 = v21;
  v36 = v16;
  v22 = v13;
  v33 = v22;
  v23 = v18;
  v34 = v23;
  [v15 enumeratePersistentIDsAndProperties:_copyPropertiesForPass usingBlock:v30];

  if (states)
  {
    v24 = [v23 copy];
    v25 = *states;
    *states = v24;
  }

  objc_autoreleasePoolPop(context);
  v26 = [v22 copy];

  return v26;
}

+ (id)passesInDatabase:(id)database states:(id *)states matchingPredicate:(id)predicate
{
  databaseCopy = database;
  predicateCopy = predicate;
  v10 = objc_autoreleasePoolPush();
  v11 = [NSSet alloc];
  v12 = [self _realPassesInDatabase:databaseCopy states:states predicate:predicateCopy orderedBy:0];
  v13 = [v11 initWithArray:v12];

  objc_autoreleasePoolPop(v10);

  return v13;
}

+ (id)passSerialNumbersInDatabase:(id)database matchingPredicate:(id)predicate
{
  databaseCopy = database;
  v7 = objc_autoreleasePoolPush();
  v8 = [self _realPassPredicateForPredicate:predicate];
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [self queryWithDatabase:databaseCopy predicate:v8];
  v17 = @"serial_number";
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D269C;
  v15[3] = &unk_100840B08;
  v16 = v9;
  v12 = v9;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  v13 = [v12 copy];
  objc_autoreleasePoolPop(v7);

  return v13;
}

+ (id)passPrimaryAccountIdentifiersInDatabase:(id)database matchingPredicate:(id)predicate
{
  databaseCopy = database;
  v7 = objc_autoreleasePoolPush();
  v8 = [self _realPassPredicateForPredicate:predicate];
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [self queryWithDatabase:databaseCopy predicate:v8];
  v17 = @"primary_account_identifier";
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D28C0;
  v15[3] = &unk_100840B08;
  v16 = v9;
  v12 = v9;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  v13 = [v12 copy];
  objc_autoreleasePoolPop(v7);

  return v13;
}

+ (id)passUniqueIDsInDatabase:(id)database matchingPredicate:(id)predicate
{
  databaseCopy = database;
  v7 = objc_autoreleasePoolPush();
  v8 = [self _realPassPredicateForPredicate:predicate];
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [self queryWithDatabase:databaseCopy predicate:v8];
  v17 = @"unique_id";
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2AE4;
  v15[3] = &unk_100840B08;
  v16 = v9;
  v12 = v9;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  v13 = [v12 copy];
  objc_autoreleasePoolPop(v7);

  return v13;
}

+ (id)passStylesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  predicateForValidStyle = [self predicateForValidStyle];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v8 setEntityClass:self];
  [(SQLiteQueryDescriptor *)v8 setPredicate:predicateForValidStyle];
  [(SQLiteQueryDescriptor *)v8 setReturnsDistinctEntities:1];
  v9 = [[SQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v8];
  v16 = @"template";
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D2CB0;
  v14[3] = &unk_1008409E0;
  v15 = v7;
  v11 = v7;
  [(SQLiteQuery *)v9 enumerateProperties:v10 usingBlock:v14];

  v12 = [v11 copy];
  objc_autoreleasePoolPop(v5);

  return v12;
}

+ (id)unexpiredPassStylesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  predicateForValidStyle = [self predicateForValidStyle];
  v20[0] = predicateForValidStyle;
  predicateForUnexpiredInStack = [self predicateForUnexpiredInStack];
  v20[1] = predicateForUnexpiredInStack;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = objc_alloc_init(NSMutableSet);
  v11 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v11 setEntityClass:self];
  [(SQLiteQueryDescriptor *)v11 setPredicate:v9];
  [(SQLiteQueryDescriptor *)v11 setReturnsDistinctEntities:1];
  v12 = [[SQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v11];
  v19 = @"template";
  v13 = [NSArray arrayWithObjects:&v19 count:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D2ED4;
  v17[3] = &unk_1008409E0;
  v18 = v10;
  v14 = v10;
  [(SQLiteQuery *)v12 enumerateProperties:v13 usingBlock:v17];

  v15 = [v14 copy];
  objc_autoreleasePoolPop(v5);

  return v15;
}

+ (id)secureElementCardTypesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  v6 = +[SQLiteBooleanPredicate truePredicate];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v8 setEntityClass:self];
  [(SQLiteQueryDescriptor *)v8 setPredicate:v6];
  [(SQLiteQueryDescriptor *)v8 setReturnsDistinctEntities:1];
  v9 = [[SQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v8];
  v16 = @"card_type";
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D30A4;
  v14[3] = &unk_1008409E0;
  v15 = v7;
  v11 = v7;
  [(SQLiteQuery *)v9 enumerateProperties:v10 usingBlock:v14];

  v12 = [v11 copy];
  objc_autoreleasePoolPop(v5);

  return v12;
}

+ (id)unexpiredSecureElementCardTypesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  predicateForUnexpiredInStack = [self predicateForUnexpiredInStack];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v8 setEntityClass:self];
  [(SQLiteQueryDescriptor *)v8 setPredicate:predicateForUnexpiredInStack];
  [(SQLiteQueryDescriptor *)v8 setReturnsDistinctEntities:1];
  v9 = [[SQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v8];
  v16 = @"card_type";
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D3270;
  v14[3] = &unk_1008409E0;
  v15 = v7;
  v11 = v7;
  [(SQLiteQuery *)v9 enumerateProperties:v10 usingBlock:v14];

  v12 = [v11 copy];
  objc_autoreleasePoolPop(v5);

  return v12;
}

+ (id)candidatePassesInDatabase:(id)database matchingPredicate:(id)predicate
{
  databaseCopy = database;
  v7 = objc_autoreleasePoolPush();
  v8 = [self _realPassPredicateForPredicate:predicate];
  v9 = objc_alloc_init(NSMutableSet);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000D33B4;
  v18 = &unk_100843068;
  selfCopy = self;
  v10 = databaseCopy;
  v19 = v10;
  v11 = v8;
  v20 = v11;
  v21 = v9;
  v12 = v9;
  sub_1005D4424(v10, &v15);
  v13 = [v12 copy];

  objc_autoreleasePoolPop(v7);

  return v13;
}

- (id)updateContext
{
  v3 = objc_alloc_init(PDPassUpdateContext);
  v4 = +[Pass _propertySettersForUpdateContext];
  allKeys = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D37D8;
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

- (id)groupingProfile
{
  v3 = objc_alloc_init(PDPassGroupingProfile);
  v4 = +[Pass _propertySettersForGroupingProfile];
  allKeys = [v4 allKeys];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000D3958;
  v18 = &unk_10083C240;
  v19 = v4;
  v6 = v3;
  v20 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:&v15];

  v8 = [(SQLiteEntity *)self valueForProperty:@"pid", v15, v16, v17, v18];
  longLongValue = [v8 longLongValue];
  database = [(SQLiteEntity *)self database];
  v11 = [PassRelevancyDates relevancyDatesForPassPID:longLongValue inDatabase:database];
  [(PDPassGroupingProfile *)v6 setRelevantDates:v11];

  v12 = v20;
  v13 = v6;

  return v6;
}

- (id)passType
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"pass_type_pid"];
  if (v3)
  {
    v4 = [PassType alloc];
    longLongValue = [v3 longLongValue];
    database = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (unint64_t)passFlavor
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"pass_flavor"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)webService
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"web_service_pid"];
  if (v3)
  {
    v4 = [WebService alloc];
    longLongValue = [v3 longLongValue];
    database = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)transactionService
{
  passTransactionService = [(Pass *)self passTransactionService];
  notificationService = [passTransactionService notificationService];

  return notificationService;
}

- (id)messageService
{
  passMessageService = [(Pass *)self passMessageService];
  notificationService = [passMessageService notificationService];

  return notificationService;
}

- (id)passTransactionService
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"pass_transaction_service_pid"];
  if (v3)
  {
    v4 = [PassNotificationService alloc];
    longLongValue = [v3 longLongValue];
    database = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)passMessageService
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"pass_message_service_pid"];
  if (v3)
  {
    v4 = [PassNotificationService alloc];
    longLongValue = [v3 longLongValue];
    database = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)passNotificationServiceForType:(unint64_t)type
{
  if (type == 1)
  {
    passMessageService = [(Pass *)self passMessageService];
  }

  else if (type)
  {
    passMessageService = 0;
  }

  else
  {
    passMessageService = [(Pass *)self passTransactionService];
  }

  return passMessageService;
}

- (id)group
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"group_pid"];
  if (v3)
  {
    v4 = [Group alloc];
    longLongValue = [v3 longLongValue];
    database = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)defaultPaymentApplication
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"pass_default_payment_application_pid"];
  if (v3)
  {
    v4 = [PaymentApplication alloc];
    longLongValue = [v3 longLongValue];
    database = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (BOOL)revoked
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"revoked"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsIssuerBinding
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"supports_issuer_binding"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)displayProfile
{
  v3 = objc_alloc_init(PKPassDisplayProfile);
  v4 = +[Pass _propertySettersForDisplayProfile];
  allKeys = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D40C0;
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

+ (void)passInformationInDatabase:(id)database withPassUniqueID:(id)d cardType:(int64_t *)type accessType:(int64_t *)accessType accessReportingType:(id *)reportingType supportedRadioTechnologies:(unint64_t *)technologies
{
  databaseCopy = database;
  dCopy = d;
  v20 = [self predicateForUniqueID:?];
  v14 = [self queryWithDatabase:databaseCopy predicate:v20];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100005A70;
  v27[4] = sub_10000B144;
  v28 = 0;
  v41[0] = @"card_type";
  v41[1] = @"access_pass_type";
  v15 = [NSArray arrayWithObjects:v41 count:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D43B4;
  v21[3] = &unk_100843090;
  v23 = &v37;
  v24 = &v33;
  v16 = databaseCopy;
  v22 = v16;
  v25 = &v29;
  v26 = v27;
  [v14 enumeratePersistentIDsAndProperties:v15 usingBlock:v21];

  if (type)
  {
    *type = v38[3];
  }

  if (accessType)
  {
    if (PKIsCarKeyPass())
    {
      v17 = 4;
    }

    else
    {
      v17 = v34[3];
    }

    *accessType = v17;
  }

  if (reportingType)
  {
    *reportingType = PKSecureElementAccessPassTypeToString();
  }

  if (technologies)
  {
    *technologies = v30[3];
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)getPushRegistrationStatus:(unint64_t *)status date:(id *)date
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100005A70;
  v13 = sub_10000B144;
  v14 = 0;
  v19[0] = @"push_registration_status";
  v19[1] = @"push_registration_date";
  v7 = [NSArray arrayWithObjects:v19 count:2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D461C;
  v8[3] = &unk_1008430B8;
  v8[4] = &v15;
  v8[5] = &v9;
  [(SQLiteEntity *)self getValuesForProperties:v7 withApplier:v8];

  if (status)
  {
    *status = v16[3];
  }

  if (date)
  {
    *date = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (id)transactionSourceIdentifier
{
  database = [(SQLiteEntity *)self database];
  v4 = [(SQLiteEntity *)self valueForProperty:@"transaction_source_pid"];
  v5 = +[TransactionSource anyInDatabase:withPersistentID:](TransactionSource, "anyInDatabase:withPersistentID:", database, [v4 longLongValue]);
  identifier = [v5 identifier];

  return identifier;
}

+ (void)enumerateUpdateContextsForQuery:(id)query withHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  _propertySettersForUpdateContext = [self _propertySettersForUpdateContext];
  allKeys = [_propertySettersForUpdateContext allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D4860;
  v12[3] = &unk_1008430E0;
  v14 = handlerCopy;
  selfCopy = self;
  v13 = _propertySettersForUpdateContext;
  v10 = handlerCopy;
  v11 = _propertySettersForUpdateContext;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];
}

+ (void)enumerateOrganizationNamesForQuery:(id)query withHandler:(id)handler
{
  handlerCopy = handler;
  v11 = @"organization_name";
  queryCopy = query;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D4A10;
  v9[3] = &unk_100841A88;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [queryCopy enumeratePersistentIDsAndProperties:v7 usingBlock:v9];
}

+ (void)enumeratePassesAndGroupingProfilesForQuery:(id)query withHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  _propertySettersForGroupingProfile = [self _propertySettersForGroupingProfile];
  allKeys = [_propertySettersForGroupingProfile allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D4B28;
  v13[3] = &unk_100843108;
  v14 = queryCopy;
  v15 = _propertySettersForGroupingProfile;
  v16 = handlerCopy;
  selfCopy = self;
  v10 = handlerCopy;
  v11 = _propertySettersForGroupingProfile;
  v12 = queryCopy;
  [v12 enumeratePersistentIDsAndProperties:allKeys usingBlock:v13];
}

+ (void)enumeratePassesForQuery:(id)query withHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  _propertySettersForGroupingProfile = [self _propertySettersForGroupingProfile];
  allKeys = [_propertySettersForGroupingProfile allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D4CFC;
  v12[3] = &unk_100843130;
  v13 = queryCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queryCopy;
  [v11 enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];
}

+ (void)enumeratePassUniqueIDsAndTypesForQuery:(id)query withHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = @"unique_id";
  v11[1] = @"pass_flavor";
  queryCopy = query;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D4EB4;
  v9[3] = &unk_100843158;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [queryCopy enumerateProperties:v7 usingBlock:v9];
}

+ (void)enumeratePassSyncabilityPropertiesInDatabase:(id)database withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [self queryWithDatabase:database predicate:0];
  v12[0] = @"unique_id";
  v12[1] = @"pass_flavor";
  v12[2] = @"template";
  v12[3] = @"pass_type.identifier";
  v8 = [NSArray arrayWithObjects:v12 count:4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D5048;
  v10[3] = &unk_100843158;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v7 enumerateProperties:v8 usingBlock:v10];
}

+ (id)anyInDatabase:(id)database withPersistentID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self predicateForPersistentID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withTransactionSourcePID:(unint64_t)d
{
  databaseCopy = database;
  v7 = [self predicateForTransactionSourceWithPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withUniqueID:(id)d
{
  databaseCopy = database;
  v7 = [self predicateForUniqueID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withReaderIdentifier:(id)identifier
{
  databaseCopy = database;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    v13 = identifierCopy;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [self predicateForASCReaderIds:v9];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (v8)
  {
  }

  return v11;
}

+ (id)anyInDatabase:(id)database withProvisioningCredentialHash:(id)hash
{
  databaseCopy = database;
  v7 = [self predicateForProvisioningCredentialHash:hash];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withPassType:(id)type
{
  databaseCopy = database;
  v7 = [self predicateForPassType:type];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withWebService:(id)service
{
  databaseCopy = database;
  v7 = [self predicateForWebService:service];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withGroup:(id)group
{
  databaseCopy = database;
  v7 = [self predicateForGroup:group];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withPassType:(id)type serialNumber:(id)number
{
  numberCopy = number;
  databaseCopy = database;
  v10 = [self predicateForPassType:type];
  v11 = [self predicateForSerialNumber:numberCopy];

  v12 = [NSArray arrayWithObjects:v10, v11, 0];

  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v14 = [self anyInDatabase:databaseCopy predicate:v13];

  return v14;
}

+ (id)anyInDatabase:(id)database withWebService:(id)service serialNumber:(id)number
{
  numberCopy = number;
  databaseCopy = database;
  v10 = [self predicateForWebService:service];
  v11 = [self predicateForSerialNumber:numberCopy];

  v12 = [NSArray arrayWithObjects:v10, v11, 0];

  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v14 = [self anyInDatabase:databaseCopy predicate:v13];

  return v14;
}

+ (id)anyInDatabase:(id)database withNotificationService:(id)service
{
  databaseCopy = database;
  v7 = [self predicateForNotificationService:service];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withApplicationIdentifier:(id)identifier secureElementIdentifier:(id)elementIdentifier
{
  databaseCopy = database;
  v9 = [self predicateForPaymentApplicationIdentifier:identifier withSecureElementIdentifier:elementIdentifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  return v10;
}

+ (id)anyInDatabase:(id)database withApplicationIdentifier:(id)identifier secureElementIdentifiers:(id)identifiers
{
  databaseCopy = database;
  v9 = [self predicateForPaymentApplicationIdentifier:identifier withSecureElementIdentifiers:identifiers];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  return v10;
}

+ (id)anyInDatabase:(id)database withPrimaryAccountIdentifier:(id)identifier
{
  databaseCopy = database;
  v7 = [self predicateForPrimaryAccountIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withAssociatedAccountIdentifier:(id)identifier
{
  databaseCopy = database;
  identifierCopy = identifier;
  v8 = [self predicateForAssociatedAccountIdentifier:identifierCopy];
  v9 = [self anyInDatabase:databaseCopy predicate:v8];

  if (v9)
  {
    v10 = v9;
    accountIdentifier = identifierCopy;
  }

  else
  {
    v12 = [Account anyInDatabase:databaseCopy withPreviousAccountIdentifier:identifierCopy];
    accountIdentifier = [v12 accountIdentifier];

    if (accountIdentifier)
    {
      v13 = [self predicateForAssociatedAccountIdentifier:accountIdentifier];
      v14 = [self anyInDatabase:databaseCopy predicate:v13];
    }

    else
    {
      v14 = 0;
    }

    v10 = v14;
  }

  return v10;
}

+ (id)queryWithDatabase:(id)database passType:(id)type
{
  databaseCopy = database;
  v7 = [self predicateForPassType:type];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)queryWithDatabase:(id)database group:(id)group
{
  databaseCopy = database;
  v7 = [self predicateForGroup:group];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  return v8;
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)selfCopy valueForProperty:@"unique_id"];
  v5 = [PassLocationSource queryWithDatabase:selfCopy->super._database passPID:persistentID];
  [v5 deleteAllEntities];
  [Beacon deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [NFC deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [PaymentApplication deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [PaymentMessage deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [PaymentBalance deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [PassAnnotations deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [PassLiveRender deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [PassRelevancyModel deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [AssociatedApplicationIdentifier deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [AssociatedPassTypeIdentifier deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [AssociatedWebDomain deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [ValueAddedServiceTransaction deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  [CategoryVisualizationMagnitude deleteAnyInDatabase:selfCopy->super._database forPassUniqueID:v4];
  [BalanceReminder deleteAnyInDatabase:selfCopy->super._database forPassIdentifier:v4];
  [CommutePlanReminder deleteAnyInDatabase:selfCopy->super._database forPassIdentifier:v4];
  [TileDescriptor deleteEntitiesForPassPID:persistentID inDatabase:selfCopy->super._database];
  [PassShare deletePassShareForPassPID:persistentID inDatabase:selfCopy->super._database];
  [PassEntitlement deletePassEntitlementForPassPID:persistentID inDatabase:selfCopy->super._database];
  [SecureElementPassField deleteSecureElementPassFieldsInDatabase:selfCopy->super._database forPassPID:persistentID];
  [PassAuxiliaryRegistrationRequirement deleteAuxiliaryRegistrationRequirementsForPassPID:persistentID inDatabase:selfCopy->super._database];
  [PassTransactionActivitySummary deletePassTransactionActivitySummariesForPassUniqueIdentifier:v4 inDatabase:selfCopy->super._database];
  [PaymentApplicationUsageSummary deleteUsageSummariesForPassUniqueIdentifier:v4 inDatabase:selfCopy->super._database];
  [PassProvisioningMetadata deleteProvisioningMetadataForPassPID:persistentID inDatabase:selfCopy->super._database];
  [PassRelevancyDates deleteEntitiesForPassPID:persistentID inDatabase:selfCopy->super._database];
  [PaymentRewardsBalance deleteRewardsBalanceForPass:selfCopy inDatabase:selfCopy->super._database];
  [PaymentRewardsRedemption deleteRewardsRedemptionsForPass:selfCopy inDatabase:selfCopy->super._database];
  [PaymentOfferEndpointMetadata deleteEntitiesForPassPID:persistentID inDatabase:selfCopy->super._database];
  [UserLegalAgreementConsent deleteForPassUniqueID:v4 inDatabase:selfCopy->super._database];
  [PassLegalAgreement deleteForPassPID:persistentID inDatabase:selfCopy->super._database];
  [SelectedPaymentOffer deleteAllPaymentOffersForPassPID:persistentID inDatabase:selfCopy->super._database];
  [PaymentOfferConfirmationRecord deleteRecordWithPassUniqueID:v4 inDatabase:selfCopy->super._database];
  [PassAssociatedFlight deleteEntitiesForPass:selfCopy inDatabase:selfCopy->super._database];
  passTransactionService = [(Pass *)selfCopy passTransactionService];
  [passTransactionService deleteFromDatabase];

  passMessageService = [(Pass *)selfCopy passMessageService];
  [passMessageService deleteFromDatabase];

  v9.receiver = selfCopy;
  v9.super_class = Pass;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v9 deleteFromDatabase];

  return selfCopy;
}

+ (id)predicateForPersistentID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForTransactionSourceWithPID:(unint64_t)d
{
  v3 = [NSNumber numberWithUnsignedLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_source_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForHasValidNFCPayload
{
  v2 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"nfc.message"];
  if (PKNFCPassKeyOptional())
  {
    v3 = v2;
  }

  else
  {
    v7[0] = v2;
    v4 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"nfc.encryption_public_key"];
    v7[1] = v4;
    v5 = [NSArray arrayWithObjects:v7 count:2];
    v3 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];
  }

  return v3;
}

+ (id)predicateForNFCPayloadState:(unint64_t)state
{
  v4 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"nfc.message"];
  v10[0] = v4;
  v5 = [NSNumber numberWithUnsignedInteger:state];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"nfc.a" equalToValue:v5];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)predicateForWebService:(id)service
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [service persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"web_service_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentCardType:(int64_t)type
{
  v3 = [NSNumber numberWithInteger:type];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"card_type" equalToValue:v3];

  return v4;
}

+ (id)predicateForNotificationService:(id)service
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [service persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_notification_service.notification_service_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationState:(int64_t)state
{
  v3 = [NSNumber numberWithInteger:state];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.state" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationStates:(id)states
{
  statesCopy = states;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = statesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.state" equalToValue:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];

  return v11;
}

+ (id)predicateForPrimaryPaymentApplication:(BOOL)application
{
  v3 = [NSNumber numberWithInt:!application];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.auxiliary_application" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationSupportsContactlessPayment:(BOOL)payment
{
  v3 = [NSNumber numberWithBool:payment];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.supports_contactless_payment" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationSupportsInAppPayment:(BOOL)payment
{
  v3 = [NSNumber numberWithBool:payment];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.supports_in_app_payment" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentType:(unint64_t)type
{
  v3 = [NSNumber numberWithUnsignedInteger:type];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.payment_type" equalToValue:v3];

  return v4;
}

+ (id)predicateForASCReaderIds:(id)ids
{
  idsCopy = ids;
  if (idsCopy)
  {
    v4 = [SQLiteCompoundPredicate predicateWithProperty:@"payment_automatic_selection_criterion_reader_id.reader_id" equalToValues:idsCopy];
    v5 = [SQLiteCompoundPredicate predicateWithProperty:@"associated_reader_id.reader_id" equalToValues:idsCopy];
    v9[0] = v4;
    v9[1] = v5;
    v6 = [NSArray arrayWithObjects:v9 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
  }

  else
  {
    v7 = +[SQLiteBooleanPredicate truePredicate];
  }

  return v7;
}

+ (id)predicateForPaymentApplicationIdentifier:(id)identifier withSecureElementIdentifier:(id)elementIdentifier
{
  elementIdentifierCopy = elementIdentifier;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.aid" equalToValue:identifier];
  v11[0] = v6;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.seid" equalToValue:elementIdentifierCopy];

  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];

  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)predicateForPaymentApplicationIdentifier:(id)identifier withSecureElementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.aid" equalToValue:identifier];
  v11[0] = v6;
  v7 = [SQLiteCompoundPredicate predicateWithProperty:@"payment_application.seid" equalToValues:identifiersCopy];

  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];

  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)predicateForPassType:(id)type
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [type persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_type_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForGroup:(id)group
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [group persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"group_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForStyle:(int64_t)style
{
  v3 = [NSNumber numberWithInteger:style];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"template" equalToValue:v3];

  return v4;
}

+ (id)predicateForIsCloudKitArchived:(BOOL)archived
{
  if (archived)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"is_cloud_kit_archived" equalToValue:&__kCFBooleanTrue];
  }

  else
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"is_cloud_kit_archived" equalToValue:&__kCFBooleanFalse];
    v8[0] = v4;
    v5 = [SQLiteNullPredicate isNullPredicateWithProperty:@"is_cloud_kit_archived"];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
    v3 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
  }

  return v3;
}

+ (id)predicateForIsCloudKitSecurelyArchived:(BOOL)archived
{
  if (archived)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"is_cloud_kit_securely_archived" equalToValue:&__kCFBooleanTrue];
  }

  else
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"is_cloud_kit_securely_archived" equalToValue:&__kCFBooleanFalse];
    v8[0] = v4;
    v5 = [SQLiteNullPredicate isNullPredicateWithProperty:@"is_cloud_kit_securely_archived"];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
    v3 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
  }

  return v3;
}

+ (id)predicateForIsRevoked:(BOOL)revoked
{
  if (revoked)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"revoked" equalToValue:&__kCFBooleanTrue];
  }

  else
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"revoked" equalToValue:&__kCFBooleanFalse];
    v8[0] = v4;
    v5 = [SQLiteNullPredicate isNullPredicateWithProperty:@"revoked"];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
    v3 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
  }

  return v3;
}

+ (id)predicateForSupportsIssuerBinding:(BOOL)binding
{
  v3 = [NSNumber numberWithBool:binding];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_issuer_binding" equalToValue:v3];

  return v4;
}

+ (id)predicateForPassAnnotationStatesInMainStack
{
  v3 = [self _predicateForPassAnnotationState:0];
  v4 = [self _predicateForPassAnnotationState:{2, v3}];
  v9[1] = v4;
  v5 = [self _predicateForPassAnnotationState:3];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  return v7;
}

+ (id)_predicateForPassAnnotationState:(int64_t)state
{
  v4 = +[PassAnnotations databaseTable];
  v5 = [NSString stringWithFormat:@"%@.%@", v4, @"sorting_state"];

  v6 = [NSNumber numberWithInteger:state];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:v5 equalToValue:v6];

  return v7;
}

+ (id)predicateForSupportsDefaultCardSelection:(BOOL)selection
{
  v3 = [NSNumber numberWithBool:selection];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_default_card_selection" equalToValue:v3];

  return v4;
}

+ (id)predicateForIdentityTypes:(id)types
{
  typesCopy = types;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SQLiteComparisonPredicate predicateWithProperty:@"identity_pass_type" equalToValue:*(*(&v14 + 1) + 8 * i), v14];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v11];

  return v12;
}

+ (id)_realPassInDatabase:(id)database withProperties:(id)properties values:(const void *)values fromPass:(id)pass
{
  databaseCopy = database;
  propertiesCopy = properties;
  passCopy = pass;
  v13 = passCopy;
  if (!passCopy)
  {
    v18 = 0;
    goto LABEL_19;
  }

  persistentID = [passCopy persistentID];
  v15 = +[NSNull null];
  v16 = [propertiesCopy indexOfObject:@"pass_flavor"];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v15)
    {
      v17 = 0;
LABEL_9:

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v19 = values[v16];
  v17 = v19;
  if (v19 == v15)
  {
    goto LABEL_9;
  }

  if (!v19)
  {
LABEL_10:
    v21 = [propertiesCopy indexOfObject:@"pass_type.identifier"];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0;
    }

    else
    {
      v22 = values[v21];
    }

    v23 = v22;
    v17 = v23;
    if (v23 == v15)
    {

      v17 = 0;
    }

    integerValue = PKPassTypeForPassTypeIdentifier();
    goto LABEL_16;
  }

  integerValue = [v19 integerValue];
LABEL_16:
  v24 = integerValue;

  v18 = objc_alloc_init([PKPass classForPassType:v24]);
  [v18 setPassType:v24];
  _propertySettersForPass = [self _propertySettersForPass];
  [self applyPropertySetters:_propertySettersForPass toObject:v18 withProperties:propertiesCopy values:values];

  v26 = objc_alloc_init(PKPassDisplayProfile);
  _propertySettersForDisplayProfile = [self _propertySettersForDisplayProfile];
  [self applyPropertySetters:_propertySettersForDisplayProfile toObject:v26 withProperties:propertiesCopy values:values];

  [v18 setDisplayProfile:v26];
  v28 = objc_autoreleasePoolPush();
  v29 = [Location locationsInDatabase:databaseCopy forPassPID:persistentID withSourceType:0];
  [v18 setEmbeddedLocationsArray:v29];

  objc_autoreleasePoolPop(v28);
  v30 = [Beacon beaconsInDatabase:databaseCopy forPassPID:persistentID];
  [v18 setEmbeddedBeacons:v30];

  v31 = [NFC anyInDatabase:databaseCopy forPassPID:persistentID];
  nfcPayload = [v31 nfcPayload];
  [v18 setNFCPayload:nfcPayload];

  v33 = [AssociatedPassTypeIdentifier associatedPassTypeIdentifiersInDatabase:databaseCopy forPassPID:persistentID];
  [v18 setAssociatedPassTypeIdentifiers:v33];

  v34 = [PassRelevancyDates relevancyDatesForPassPID:persistentID inDatabase:databaseCopy];
  [v18 setRelevantDates:v34];

  if (v24 == 1)
  {
    v35 = [PaymentApplication paymentApplicationsInDatabase:databaseCopy forPassPID:persistentID];
    [v18 setPaymentApplications:v35];

    v36 = [AssociatedApplicationIdentifier associatedApplicationIdentifiersInDatabase:databaseCopy forPassPID:persistentID];
    [v18 setAssociatedApplicationIdentifiers:v36];

    v37 = [AssociatedWebDomain associatedWebDomainsInDatabase:databaseCopy forPassPID:persistentID];
    [v18 setAssociatedWebDomains:v37];

    [v18 setAssociatedAccountFeatureIdentifier:{objc_msgSend(v13, "associatedAccountFeatureIdentifier")}];
    v38 = [PassProvisioningMetadata provisioningMetadataForPassPID:persistentID inDatabase:databaseCopy];
    [v18 setProvisioningMetadata:v38];

    v39 = [PassLegalAgreement passLegalAgreementsForPassPID:persistentID inDatabase:databaseCopy];
    [v18 setLegalAgreements:v39];
  }

LABEL_19:

  return v18;
}

+ (id)_propertySettersForUpdateContext
{
  v4[0] = @"unique_id";
  v4[1] = @"serial_number";
  v5[0] = &stru_100843DF8;
  v5[1] = &stru_100843E18;
  v4[2] = @"authentication_token";
  v4[3] = @"last_modified_tag";
  v5[2] = &stru_100843E38;
  v5[3] = &stru_100843E58;
  v4[4] = @"modified_date";
  v4[5] = @"modified_source";
  v5[4] = &stru_100843E78;
  v5[5] = &stru_100843E98;
  v4[6] = @"manifest_hash";
  v5[6] = &stru_100843EB8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

@end