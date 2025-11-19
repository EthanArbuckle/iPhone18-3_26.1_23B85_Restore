@interface Pass
+ (id)_copyPropertiesForPass;
+ (id)_dynamicStateInDatabase:(id)a3 forPassPID:(int64_t)a4;
+ (id)_insertionDictionaryWithPass:(id)a3 passType:(id)a4;
+ (id)_predicateForPassAnnotationState:(int64_t)a3;
+ (id)_propertySettersForDisplayProfile;
+ (id)_propertySettersForGroupingProfile;
+ (id)_propertySettersForPass;
+ (id)_propertySettersForUpdateContext;
+ (id)_realPassInDatabase:(id)a3 withProperties:(id)a4 values:(const void *)a5 fromPass:(id)a6;
+ (id)_realPassPredicateForPredicate:(id)a3;
+ (id)_realPassesInDatabase:(id)a3 states:(id *)a4 predicate:(id)a5 orderedBy:(id)a6;
+ (id)_updateDictionaryWithDisplayProfile:(id)a3;
+ (id)_updateDictionaryWithPass:(id)a3;
+ (id)anyInDatabase:(id)a3 withApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5;
+ (id)anyInDatabase:(id)a3 withApplicationIdentifier:(id)a4 secureElementIdentifiers:(id)a5;
+ (id)anyInDatabase:(id)a3 withAssociatedAccountIdentifier:(id)a4;
+ (id)anyInDatabase:(id)a3 withGroup:(id)a4;
+ (id)anyInDatabase:(id)a3 withNotificationService:(id)a4;
+ (id)anyInDatabase:(id)a3 withPassType:(id)a4;
+ (id)anyInDatabase:(id)a3 withPassType:(id)a4 serialNumber:(id)a5;
+ (id)anyInDatabase:(id)a3 withPersistentID:(int64_t)a4;
+ (id)anyInDatabase:(id)a3 withPrimaryAccountIdentifier:(id)a4;
+ (id)anyInDatabase:(id)a3 withProvisioningCredentialHash:(id)a4;
+ (id)anyInDatabase:(id)a3 withReaderIdentifier:(id)a4;
+ (id)anyInDatabase:(id)a3 withTransactionSourcePID:(unint64_t)a4;
+ (id)anyInDatabase:(id)a3 withUniqueID:(id)a4;
+ (id)anyInDatabase:(id)a3 withWebService:(id)a4;
+ (id)anyInDatabase:(id)a3 withWebService:(id)a4 serialNumber:(id)a5;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)candidatePassesInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)dynamicStateInDatabase:(id)a3 forPassUniqueID:(id)a4;
+ (id)dynamicStatesInDatabase:(id)a3 forPassUniqueIDs:(id)a4;
+ (id)insertPass:(id)a3 withPassType:(id)a4 webService:(id)a5 transactionService:(id)a6 messageService:(id)a7 daemonPassData:(id)a8 inDatabase:(id)a9;
+ (id)passPrimaryAccountIdentifiersInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)passSerialNumbersInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)passStylesInDatabase:(id)a3;
+ (id)passUniqueIDsInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)passesInDatabase:(id)a3 states:(id *)a4 matchingPredicate:(id)a5;
+ (id)predicateForASCReaderIds:(id)a3;
+ (id)predicateForGroup:(id)a3;
+ (id)predicateForHasValidNFCPayload;
+ (id)predicateForIdentityTypes:(id)a3;
+ (id)predicateForIsCloudKitArchived:(BOOL)a3;
+ (id)predicateForIsCloudKitSecurelyArchived:(BOOL)a3;
+ (id)predicateForIsRevoked:(BOOL)a3;
+ (id)predicateForNFCPayloadState:(unint64_t)a3;
+ (id)predicateForNotificationService:(id)a3;
+ (id)predicateForPassAnnotationStatesInExpiredSection;
+ (id)predicateForPassAnnotationStatesInMainStack;
+ (id)predicateForPassType:(id)a3;
+ (id)predicateForPaymentApplicationIdentifier:(id)a3 withSecureElementIdentifier:(id)a4;
+ (id)predicateForPaymentApplicationIdentifier:(id)a3 withSecureElementIdentifiers:(id)a4;
+ (id)predicateForPaymentApplicationState:(int64_t)a3;
+ (id)predicateForPaymentApplicationStates:(id)a3;
+ (id)predicateForPaymentApplicationSupportsContactlessPayment:(BOOL)a3;
+ (id)predicateForPaymentApplicationSupportsInAppPayment:(BOOL)a3;
+ (id)predicateForPaymentCardType:(int64_t)a3;
+ (id)predicateForPaymentType:(unint64_t)a3;
+ (id)predicateForPersistentID:(int64_t)a3;
+ (id)predicateForPrimaryPaymentApplication:(BOOL)a3;
+ (id)predicateForStyle:(int64_t)a3;
+ (id)predicateForSupportsDefaultCardSelection:(BOOL)a3;
+ (id)predicateForSupportsIssuerBinding:(BOOL)a3;
+ (id)predicateForTransactionSourceWithPID:(unint64_t)a3;
+ (id)predicateForWebService:(id)a3;
+ (id)queryWithDatabase:(id)a3 group:(id)a4;
+ (id)queryWithDatabase:(id)a3 passType:(id)a4;
+ (id)secureElementCardTypesInDatabase:(id)a3;
+ (id)unexpiredPassStylesInDatabase:(id)a3;
+ (id)unexpiredSecureElementCardTypesInDatabase:(id)a3;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)enumerateOrganizationNamesForQuery:(id)a3 withHandler:(id)a4;
+ (void)enumeratePassSyncabilityPropertiesInDatabase:(id)a3 withHandler:(id)a4;
+ (void)enumeratePassUniqueIDsAndTypesForQuery:(id)a3 withHandler:(id)a4;
+ (void)enumeratePassesAndGroupingProfilesForQuery:(id)a3 withHandler:(id)a4;
+ (void)enumeratePassesForQuery:(id)a3 withHandler:(id)a4;
+ (void)enumerateUpdateContextsForQuery:(id)a3 withHandler:(id)a4;
+ (void)passInformationInDatabase:(id)a3 withPassUniqueID:(id)a4 cardType:(int64_t *)a5 accessType:(int64_t *)a6 accessReportingType:(id *)a7 supportedRadioTechnologies:(unint64_t *)a8;
- (BOOL)deleteFromDatabase;
- (BOOL)hasAssociatedPeerPaymentAccount;
- (BOOL)revoked;
- (BOOL)supportsIssuerBinding;
- (BOOL)voided;
- (Pass)initWithPass:(id)a3 passType:(id)a4 webService:(id)a5 transactionService:(id)a6 messageService:(id)a7 daemonPassData:(id)a8 inDatabase:(id)a9;
- (id)_realPass;
- (id)_updatePassTileDescriptor:(id)a3 groupDescriptor:(id)a4 idx:(unint64_t)a5 previousStates:(id)a6 visitedIdentifiers:(id)a7;
- (id)defaultPaymentApplication;
- (id)displayProfile;
- (id)expirationDate;
- (id)group;
- (id)groupingProfile;
- (id)messageService;
- (id)passMessageService;
- (id)passNotificationServiceForType:(unint64_t)a3;
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
- (void)_updateWithMessageService:(id)a3;
- (void)_updateWithPassMessageService:(id)a3;
- (void)_updateWithPassTransactionService:(id)a3;
- (void)_updateWithTransactionService:(id)a3;
- (void)_updateWithWebService:(id)a3;
- (void)getPushRegistrationStatus:(unint64_t *)a3 date:(id *)a4;
- (void)udpateWithIsCloudKitArchived:(BOOL)a3;
- (void)udpateWithIsCloudKitSecurelyArchived:(BOOL)a3;
- (void)updateBackgroundColorWithPass:(id)a3;
- (void)updateLocationsWithPass:(id)a3;
- (void)updateTallCodeValueWithPass:(id)a3;
- (void)updateWithAssociatedApplicationIdentifiers:(id)a3;
- (void)updateWithAssociatedPassTypeIdentifiers:(id)a3;
- (void)updateWithAssociatedWebDomains:(id)a3;
- (void)updateWithBeacons:(id)a3;
- (void)updateWithContactlessActivationGroupingType:(unint64_t)a3;
- (void)updateWithDaemonPassData:(id)a3;
- (void)updateWithDefaultPaymentApplication:(id)a3;
- (void)updateWithGroup:(id)a3;
- (void)updateWithLastModifiedSource:(int64_t)a3;
- (void)updateWithLegalAgreements:(id)a3;
- (void)updateWithNFCPayload:(id)a3;
- (void)updateWithPass:(id)a3 webService:(id)a4 transactionSevice:(id)a5 messageService:(id)a6 daemonPassData:(id)a7;
- (void)updateWithPassDisplayProfile:(id)a3;
- (void)updateWithPassTileDescriptors:(id)a3;
- (void)updateWithPaymentApplications:(id)a3;
- (void)updateWithProvisioningMetadata:(id)a3;
- (void)updateWithPushRegistrationStatus:(int64_t)a3 date:(id)a4;
- (void)updateWithRelevantDates:(id)a3;
- (void)updateWithRevocationStatus:(BOOL)a3;
- (void)updateWithSecureElementPassFields:(id)a3;
- (void)updateWithShareBundle:(id)a3;
- (void)updateWithSortingState:(int64_t)a3 forSortingReason:(int64_t)a4;
- (void)updateWithSupportsIssuerBinding:(BOOL)a3;
- (void)updateWithTransactionSourcePID:(int64_t)a3;
@end

@implementation Pass

+ (id)_copyPropertiesForPass
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableSet);
  v5 = [a1 _propertySettersForPass];
  v6 = [v5 allKeys];
  [v4 addObjectsFromArray:v6];

  v7 = [a1 _propertySettersForDisplayProfile];
  v8 = [v7 allKeys];
  [v4 addObjectsFromArray:v8];

  v9 = [v4 pk_arrayCopy];
  objc_autoreleasePoolPop(v3);
  return v9;
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
  v3 = [v2 integerValue];

  return v3;
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
  v6 = [v5 integerValue];

  return v6;
}

- (BOOL)voided
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"voided"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)predicateForPassAnnotationStatesInExpiredSection
{
  v3 = [a1 _predicateForPassAnnotationState:1];
  v8[0] = v3;
  v4 = [a1 _predicateForPassAnnotationState:4];
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
  v4 = [v3 integerValue];

  if (v4 <= 12)
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

  v4 = [(Pass *)self associatedAccountIdentifier];
  if (v4)
  {
    v5 = [(SQLiteEntity *)self database];
    v6 = [Account anyInDatabase:v5 withIdentifier:v4];

    if (v6)
    {
      v3 = [v6 feature];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasAssociatedPeerPaymentAccount
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"has_associated_peer_payment_account"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return @"pid";
  }

  if (objc_opt_class() == a3)
  {
    return @"web_service_pid";
  }

  if (objc_opt_class() == a3)
  {
    return @"transaction_source_pid";
  }

  return 0;
}

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (([v11 isEqualToString:@"pass_type.identifier"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"pass_type.team_identifier") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"pass_type.identifier_hash"))
  {
    [v5 addObject:@"JOIN pass_type ON pass_type.pid = pass.pass_type_pid"];
  }

  if ([v11 isEqualToString:@"web_service.service_url"])
  {
    [v5 addObject:@"LEFT OUTER JOIN web_service ON web_service.pid = pass.web_service_pid"];
  }

  if (([v11 isEqualToString:@"pass_group.group_order"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"pass_group.pass_style"))
  {
    [v5 addObject:@"JOIN pass_group ON pass_group.pid = pass.group_pid"];
  }

  if (([v11 isEqualToString:@"payment_application.aid"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.seid") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.state") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.auxiliary_application") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.payment_network_identifier") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.supports_contactless_payment") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.supports_in_app_payment") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.payment_type") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.applet_data_format") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_application.i") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"whitney.f"))
  {
    [v5 addObject:@"JOIN payment_application ON payment_application.pass_pid = pass.pid"];
    if ([v11 isEqualToString:@"whitney.f"])
    {
      [v5 addObject:@"JOIN whitney ON whitney.a = payment_application.pid"];
    }
  }

  if (([v11 isEqualToString:@"payment_automatic_selection_criterion_tci.tci"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"payment_automatic_selection_criterion_reader_id.reader_id") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"associated_reader_id.reader_id"))
  {
    [v5 addObject:@"JOIN payment_automatic_selection_criterion ON payment_automatic_selection_criterion.payment_application_pid = payment_application.pid JOIN payment_automatic_selection_criterion_tci ON payment_automatic_selection_criterion_tci.payment_automatic_selection_criterion_pid = payment_automatic_selection_criterion.pid LEFT JOIN payment_automatic_selection_criterion_reader_id ON payment_automatic_selection_criterion_reader_id.payment_automatic_selection_criterion_pid = payment_automatic_selection_criterion.pid LEFT JOIN associated_reader_id ON associated_reader_id.automatic_selection_criterion_pid = payment_automatic_selection_criterion.pid"];
  }

  if ([v11 isEqualToString:@"pass_notification_service.notification_service_pid"])
  {
    [v5 addObject:@"JOIN pass_notification_service ON (pass_notification_service.pid = pass_transaction_service_pid OR pass_notification_service.pid = pass_message_service_pid)"];
  }

  if (([v11 isEqualToString:@"nfc.message"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"nfc.encryption_public_key") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"nfc.a"))
  {
    [v5 addObject:@"LEFT OUTER JOIN nfc ON nfc.pass_pid = pass.pid"];
  }

  if ([v11 isEqualToString:@"associated_pass_type_identifier.identifier_hash"])
  {
    [v5 addObject:@"JOIN associated_pass_type_identifier ON associated_pass_type_identifier.pass_pid = pass.pid"];
  }

  if ([v11 isEqualToString:@"transaction_source.identifier"])
  {
    [v5 addObject:@"LEFT JOIN transaction_source ON transaction_source.pid = pass.transaction_source_pid"];
  }

  v6 = +[PassAnnotations databaseTable];
  v7 = [v11 rangeOfString:v6];
  if (v8)
  {
    if (!v7)
    {
      v9 = v8;
      if ([v11 length] > v8 && objc_msgSend(v11, "characterAtIndex:", v9) == 46)
      {
        v10 = [NSString stringWithFormat:@"JOIN %@ ON %@.%@ = pass.pid", v6, v6, @"pass_pid"];
        [v5 addObject:v10];
      }
    }
  }
}

+ (id)_insertionDictionaryWithPass:(id)a3 passType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [v6 uniqueID];
  [v7 setObjectOrNull:v8 forKey:@"unique_id"];

  v9 = [v6 serialNumber];
  [v7 setObjectOrNull:v9 forKey:@"serial_number"];

  v10 = [v5 persistentID];
  [v7 setLongLong:v10 forKey:@"pass_type_pid"];
  v11 = [v6 groupingID];
  [v7 setObjectOrNull:v11 forKey:@"grouping_id"];

  v12 = [v6 provisioningCredentialHash];
  [v7 setObjectOrNull:v12 forKey:@"provisioning_credential_hash"];

  v13 = +[NSDate date];
  [v7 setObject:v13 forKey:@"ingested_date"];

  v14 = [v6 signingDate];

  [v7 setObjectOrNull:v14 forKey:@"signing_date"];

  return v7;
}

+ (id)_updateDictionaryWithPass:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 organizationName];
  [v4 setObjectOrNull:v5 forKey:@"organization_name"];

  v6 = [v3 expirationDate];
  [v4 setObjectOrNull:v6 forKey:@"expiration_date"];

  v7 = [v3 sequenceCounter];
  [v4 setObjectOrNull:v7 forKey:@"sequence_counter"];

  [v4 setBool:objc_msgSend(v3 forKey:{"isVoided"), @"voided"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"hasStoredValue"), @"has_stored_value"}];
  [v3 liveRenderType];
  v8 = PKPassLiveRenderTypeToString();
  [v4 setObjectOrNull:v8 forKey:@"live_render_background_type"];

  [v3 homeKeyLiveRenderType];
  v9 = PKPassHomeKeyLiveRenderTypeToString();
  [v4 setObjectOrNull:v9 forKey:@"f"];

  [v4 setBool:objc_msgSend(v3 forKey:{"supportsCategoryVisualization"), @"b"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"liveRenderingRequiresEnablement"), @"live_rendering_requires_enablement"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"muteReadyForUseNotification"), @"mute_ready_for_use_notification"}];
  v10 = [v3 userInfo];
  if ([NSJSONSerialization isValidJSONObject:v10])
  {
    v11 = [NSJSONSerialization dataWithJSONObject:v10 options:0 error:0];
    [v4 setObjectOrNull:v11 forKey:@"user_info"];
  }

  else
  {
    [v4 setObjectOrNull:0 forKey:@"user_info"];
  }

  v12 = [v3 manifestHash];
  [v4 setObjectOrNull:v12 forKey:@"manifest_hash"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"sharingMethod"), @"sharing_method"}];
  v13 = [v3 sharingURL];
  v14 = _SQLValueForURL();
  [v4 setObjectOrNull:v14 forKey:@"sharing_url"];

  v15 = [v3 sharingText];
  [v4 setObjectOrNull:v15 forKey:@"sharing_text"];

  v16 = [v3 authenticationToken];
  [v4 setObjectOrNull:v16 forKey:@"authentication_token"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"passType"), @"pass_flavor"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"isCloudKitArchived"), @"is_cloud_kit_archived"}];
  v17 = [v3 cloudKitMetadata];
  [v4 setObjectOrNull:v17 forKey:@"cloud_kit_metadata"];

  [v4 setBool:objc_msgSend(v3 forKey:{"isCloudKitSecurelyArchived"), @"is_cloud_kit_securely_archived"}];
  v18 = [v3 cloudKitSecureMetadata];
  [v4 setObjectOrNull:v18 forKey:@"cloud_kit_secure_metadata"];

  v19 = [v3 provisioningCredentialHash];
  [v4 setObjectOrNull:v19 forKey:@"provisioning_credential_hash"];

  [v4 setBool:objc_msgSend(v3 forKey:{"supportsIssuerBinding"), @"supports_issuer_binding"}];
  v20 = [v3 transferURL];
  v21 = _SQLValueForURL();
  [v4 setObjectOrNull:v21 forKey:@"transfer_url"];

  v22 = [v3 sellURL];
  v23 = _SQLValueForURL();
  [v4 setObjectOrNull:v23 forKey:@"sell_url"];

  v24 = [v3 upgradeURL];
  v25 = _SQLValueForURL();
  [v4 setObjectOrNull:v25 forKey:@"h"];

  v26 = [v3 managementURL];
  v27 = _SQLValueForURL();
  [v4 setObjectOrNull:v27 forKey:@"s"];

  v28 = [v3 bagPolicyURL];
  v29 = _SQLValueForURL();
  [v4 setObjectOrNull:v29 forKey:@"bag_policy_url"];

  v30 = [v3 orderFoodURL];
  v31 = _SQLValueForURL();
  [v4 setObjectOrNull:v31 forKey:@"order_food_url"];

  v32 = [v3 transitInformationURL];
  v33 = _SQLValueForURL();
  [v4 setObjectOrNull:v33 forKey:@"transit_information_url"];

  v34 = [v3 parkingInformationURL];
  v35 = _SQLValueForURL();
  [v4 setObjectOrNull:v35 forKey:@"parking_information_url"];

  v36 = [v3 directionsInformationURL];
  v37 = _SQLValueForURL();
  [v4 setObjectOrNull:v37 forKey:@"directions_information_url"];

  v38 = [v3 merchandiseURL];
  v39 = _SQLValueForURL();
  [v4 setObjectOrNull:v39 forKey:@"merchandise_url"];

  v40 = [v3 accessibilityURL];
  v41 = _SQLValueForURL();
  [v4 setObjectOrNull:v41 forKey:@"accessibility_url"];

  v42 = [v3 purchaseParkingURL];
  v43 = _SQLValueForURL();
  [v4 setObjectOrNull:v43 forKey:@"purchase_parking_url"];

  v44 = [v3 partnerAddOnURL];
  v45 = _SQLValueForURL();
  [v4 setObjectOrNull:v45 forKey:@"add_on_url"];

  v46 = [v3 purchaseWifiURL];
  v47 = _SQLValueForURL();
  [v4 setObjectOrNull:v47 forKey:@"i"];

  v48 = [v3 changeSeatURL];
  v49 = _SQLValueForURL();
  [v4 setObjectOrNull:v49 forKey:@"j"];

  v50 = [v3 entertainmentURL];
  v51 = _SQLValueForURL();
  [v4 setObjectOrNull:v51 forKey:@"k"];

  v52 = [v3 purchaseAdditionalBaggageURL];
  v53 = _SQLValueForURL();
  [v4 setObjectOrNull:v53 forKey:@"m"];

  v54 = [v3 purchaseLoungeAccessURL];
  v55 = _SQLValueForURL();
  [v4 setObjectOrNull:v55 forKey:@"n"];

  v56 = [v3 reportLostBagURL];
  v57 = _SQLValueForURL();
  [v4 setObjectOrNull:v57 forKey:@"t"];

  v58 = [v3 trackBagsURL];
  v59 = _SQLValueForURL();
  [v4 setObjectOrNull:v59 forKey:@"w"];

  v60 = [v3 requestWheelchairURL];
  v61 = _SQLValueForURL();
  [v4 setObjectOrNull:v61 forKey:@"u"];

  v62 = [v3 registerServiceAnimalURL];
  v63 = _SQLValueForURL();
  [v4 setObjectOrNull:v63 forKey:@"v"];

  v64 = [v3 contactVenuePhoneNumber];
  v65 = _SQLValueForURL();
  [v4 setObjectOrNull:v65 forKey:@"contact_venue_phone_number"];

  v66 = [v3 contactVenueEmail];
  v67 = _SQLValueForURL();
  [v4 setObjectOrNull:v67 forKey:@"contact_venue_email"];

  v68 = [v3 contactVenueWebsite];
  v69 = _SQLValueForURL();
  [v4 setObjectOrNull:v69 forKey:@"contact_venue_website"];

  v70 = [v3 transitProviderPhoneNumberURL];
  v71 = _SQLValueForURL();
  [v4 setObjectOrNull:v71 forKey:@"p"];

  v72 = [v3 transitProviderEmailURL];
  v73 = _SQLValueForURL();
  [v4 setObjectOrNull:v73 forKey:@"q"];

  v74 = [v3 transitProviderWebsiteURL];
  v75 = _SQLValueForURL();
  [v4 setObjectOrNull:v75 forKey:@"r"];

  if ([v3 passType] == 1)
  {
    [v4 setInteger:objc_msgSend(v3 forKey:{"cardType"), @"card_type"}];
    v76 = [v3 primaryAccountIdentifier];
    [v4 setObjectOrNull:v76 forKey:@"primary_account_identifier"];

    v77 = [v3 primaryAccountNumberSuffix];
    [v4 setObjectOrNull:v77 forKey:@"primary_account_suffix"];

    v78 = [v3 sanitizedPrimaryAccountNumber];
    [v4 setObjectOrNull:v78 forKey:@"sanitized_pan"];

    v79 = [v3 sanitizedPrimaryAccountName];
    [v4 setObjectOrNull:v79 forKey:@"c"];

    [v4 setBool:objc_msgSend(v3 forKey:{"supportsDPANNotifications"), @"supports_dpan_notifications"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"supportsFPANNotifications"), @"supports_fpan_notifications"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"supportsDefaultCardSelection"), @"supports_default_card_selection"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"isShellPass"), @"is_shell_pass"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"supportsSerialNumberBasedProvisioning"), @"supports_serial_number_based_provisioning"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"requiresTransferSerialNumberBasedProvisioning"), @"requires_transfer_serial_number_based_provisioning"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"hasAssociatedPeerPaymentAccount"), @"has_associated_peer_payment_account"}];
    v80 = [v3 associatedAccountServiceAccountIdentifier];
    [v4 setObjectOrNull:v80 forKey:@"a"];

    [v4 setInteger:objc_msgSend(v3 forKey:{"contactlessActivationGroupingType"), @"contactless_activation_grouping_type"}];
    [v4 setBool:objc_msgSend(v3 forKey:{"isCobranded"), @"cobranded"}];
    v81 = [v3 issuerCountryCode];
    [v4 setObjectOrNull:v81 forKey:@"issuer_country_code"];

    v82 = [v3 issuerAdministrativeAreaCode];
    [v4 setObjectOrNull:v82 forKey:@"d"];

    v83 = [v3 identityAccountKeyIdentifier];
    [v4 setObjectOrNull:v83 forKey:@"g"];

    [v4 setInteger:objc_msgSend(v3 forKey:{"identityType"), @"identity_pass_type"}];
    [v4 setInteger:objc_msgSend(v3 forKey:{"accessType"), @"access_pass_type"}];
    v84 = [v3 partnerAccountIdentifier];
    [v4 setObjectOrNull:v84 forKey:@"e"];

    v85 = [v3 shippingAddressSeed];
    [v4 setObjectOrNull:v85 forKey:@"shipping_address_seed"];

    v86 = [v3 originalProvisioningDate];
    v87 = _SQLValueForDate();
    [v4 setObjectOrNull:v87 forKey:@"original_provisioning_date"];
  }

  return v4;
}

+ (id)_updateDictionaryWithDisplayProfile:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 backgroundColor];
  v6 = [v5 string];
  [v4 setObjectOrNull:v6 forKey:@"background_color"];

  v7 = [v3 secondaryBackgroundColor];
  v8 = [v7 string];
  [v4 setObjectOrNull:v8 forKey:@"secondary_background_color"];

  v9 = [v3 foregroundColor];
  v10 = [v9 string];
  [v4 setObjectOrNull:v10 forKey:@"foreground_color"];

  v11 = [v3 labelColor];
  v12 = [v11 string];
  [v4 setObjectOrNull:v12 forKey:@"label_color"];

  v13 = [v3 stripColor];
  v14 = [v13 string];
  [v4 setObjectOrNull:v14 forKey:@"strip_color"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"passStyle"), @"template"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"tallCode"), @"tall_code"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"hasBackgroundImage"), @"has_background_image"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"hasStripImage"), @"has_strip_image"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"supportsAutomaticForegroundVibrancy"), @"supports_automatic_foreground_vibrancy"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"supportsAutomaticLabelVibrancy"), @"supports_automatic_label_vibrancy"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"suppressesHeaderDarkening"), @"suppress_header_darkening"}];
  v15 = [v3 footerBackgroundColor];

  v16 = [v15 string];
  [v4 setObjectOrNull:v16 forKey:@"footer_background_color"];

  return v4;
}

- (Pass)initWithPass:(id)a3 passType:(id)a4 webService:(id)a5 transactionService:(id)a6 messageService:(id)a7 daemonPassData:(id)a8 inDatabase:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [Pass _insertionDictionaryWithPass:v15 passType:a4];
  v24.receiver = self;
  v24.super_class = Pass;
  v22 = [(SQLiteEntity *)&v24 initWithPropertyValues:v21 inDatabase:v20];

  if (v22)
  {
    [(Pass *)v22 updateWithPass:v15 webService:v16 transactionSevice:v17 messageService:v18 daemonPassData:v19];
  }

  return v22;
}

+ (id)insertPass:(id)a3 withPassType:(id)a4 webService:(id)a5 transactionService:(id)a6 messageService:(id)a7 daemonPassData:(id)a8 inDatabase:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[a1 alloc] initWithPass:v22 passType:v21 webService:v20 transactionService:v19 messageService:v18 daemonPassData:v17 inDatabase:v16];

  return v23;
}

- (void)updateWithPass:(id)a3 webService:(id)a4 transactionSevice:(id)a5 messageService:(id)a6 daemonPassData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [Pass _updateDictionaryWithPass:v12];
  [(SQLiteEntity *)self setValuesWithDictionary:v17];

  v18 = [v12 displayProfile];
  v19 = [Pass _updateDictionaryWithDisplayProfile:v18];
  [(SQLiteEntity *)self setValuesWithDictionary:v19];

  [(Pass *)self _updateWithWebService:v13];
  [(Pass *)self _updateWithTransactionService:v14];
  [(Pass *)self _updateWithMessageService:v15];
  v20 = objc_autoreleasePoolPush();
  [(Pass *)self updateLocationsWithPass:v12];
  objc_autoreleasePoolPop(v20);
  v21 = [v12 embeddedBeacons];
  [(Pass *)self updateWithBeacons:v21];

  v22 = [v12 nfcPayload];
  [(Pass *)self updateWithNFCPayload:v22];

  v23 = [v12 relevantDates];
  [(Pass *)self updateWithRelevantDates:v23];

  [(Pass *)self _updateSortingStateIfNecessary];
  v24 = [v12 associatedPassTypeIdentifiers];
  [(Pass *)self updateWithAssociatedPassTypeIdentifiers:v24];

  [(Pass *)self updateWithDaemonPassData:v16];
  if ([v12 passType] == 1)
  {
    v25 = [v12 secureElementPass];
    v26 = [v25 paymentApplications];
    [(Pass *)self updateWithPaymentApplications:v26];

    v27 = [v25 associatedApplicationIdentifiers];
    [(Pass *)self updateWithAssociatedApplicationIdentifiers:v27];

    v28 = [v25 associatedWebDomains];
    [(Pass *)self updateWithAssociatedWebDomains:v28];

    v29 = [v25 provisioningMetadata];
    [(Pass *)self updateWithProvisioningMetadata:v29];

    v30 = [v25 legalAgreements];
    [(Pass *)self updateWithLegalAgreements:v30];

    v31 = [(Pass *)self transactionSourceIdentifier];
    v32 = [v25 supportsFPANNotifications];
    if (!v31 && v32)
    {
      v33 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v25 uniqueID];
        v36 = 138412290;
        v37 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Pass %@ did not have a transaction source, adding one now", &v36, 0xCu);
      }

      v35 = [TransactionSource insertTransactionSourceWithType:0 inDatabase:self->super._database];
      -[Pass updateWithTransactionSourcePID:](self, "updateWithTransactionSourcePID:", [v35 persistentID]);
    }
  }
}

- (void)updateWithPushRegistrationStatus:(int64_t)a3 date:(id)a4
{
  v10[0] = @"push_registration_status";
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  v10[1] = @"push_registration_date";
  v11[0] = v7;
  v8 = _SQLValueForDate();

  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(SQLiteEntity *)self setValuesWithDictionary:v9];
}

- (void)updateWithLastModifiedSource:(int64_t)a3
{
  v5 = +[NSDate date];
  v7 = _SQLValueForDate();

  [(SQLiteEntity *)self setValue:v7 forProperty:@"modified_date"];
  v6 = [NSNumber numberWithInteger:a3];
  [(SQLiteEntity *)self setValue:v6 forProperty:@"modified_source"];
}

- (void)updateLocationsWithPass:(id)a3
{
  v17 = a3;
  v4 = [(SQLiteEntity *)self database];
  v5 = [v17 localLocationsURL];
  v6 = [LocationSource anyInDatabase:v4 withURL:v5];

  v7 = [(SQLiteEntity *)self database];
  v8 = +[PassLocationSource queryWithDatabase:passPID:locationSourcePID:](PassLocationSource, "queryWithDatabase:passPID:locationSourcePID:", v7, -[SQLiteEntity persistentID](self, "persistentID"), [v6 persistentID]);

  [v8 deleteAllEntities];
  if (v6)
  {
    [v6 deleteFromDatabase];
  }

  v9 = [v17 localLocationsURL];

  if (v9)
  {
    v10 = [v17 localLocationsURL];
    v11 = [(SQLiteEntity *)self database];
    v12 = [LocationSource insertLocationSourceWithURL:v10 forPass:self type:0 inDatabase:v11];

    v13 = [NSSet alloc];
    v14 = [v17 embeddedLocationsArray];
    v15 = [v13 initWithArray:v14];

    v16 = [(SQLiteEntity *)self database];
    [Location insertLocations:v15 forSource:v12 inDatabase:v16];
  }
}

- (void)updateBackgroundColorWithPass:(id)a3
{
  v8 = [a3 displayProfile];
  v4 = [v8 backgroundColor];
  v5 = [v4 string];
  [(SQLiteEntity *)self setValue:v5 forProperty:@"background_color"];

  v6 = [v8 secondaryBackgroundColor];
  v7 = [v6 string];
  [(SQLiteEntity *)self setValue:v7 forProperty:@"secondary_background_color"];
}

- (void)updateTallCodeValueWithPass:(id)a3
{
  v5 = [a3 displayProfile];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 tallCode]);
  [(SQLiteEntity *)self setValue:v4 forProperty:@"tall_code"];
}

- (void)updateWithNFCPayload:(id)a3
{
  v11 = a3;
  v4 = [(SQLiteEntity *)self database];
  v5 = [NFC anyInDatabase:v4 forPassPID:[(SQLiteEntity *)self persistentID]];

  v6 = [(Pass *)self supportsIssuerBinding];
  if (((v5 == 0) & v6) != 0)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if ((v5 == 0) & v6) == 0 && (v6)
  {
    v8 = [v5 nfcPayload];
    v7 = [v8 payloadState];
  }

  v9 = [(SQLiteEntity *)self database];
  [NFC deleteEntitiesForPass:self inDatabase:v9];

  if (v11)
  {
    v10 = [(SQLiteEntity *)self database];
    [NFC insertOrUpdateNFCPayload:v11 forPass:self computedPayloadState:v7 inDatabase:v10];
  }
}

- (void)updateWithRelevantDates:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self persistentID];
  v6 = [(SQLiteEntity *)self database];
  [PassRelevancyDates deleteEntitiesForPassPID:v5 inDatabase:v6];

  v7 = [(SQLiteEntity *)self database];
  [PassRelevancyDates insertPassRelevancyDates:v4 forPassPID:v5 inDatabase:v7];
}

- (void)updateWithBeacons:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self database];
  [Beacon deleteEntitiesForPass:self inDatabase:v5];

  v6 = [(SQLiteEntity *)self database];
  [Beacon insertBeacons:v4 forPass:self inDatabase:v6];
}

- (void)_updateWithWebService:(id)a3
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"web_service_pid"];
}

- (void)updateWithPaymentApplications:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self database];
  [PaymentApplication updatePaymentApplications:v4 forPass:self inDatabase:v5];
}

- (id)_updatePassTileDescriptor:(id)a3 groupDescriptor:(id)a4 idx:(unint64_t)a5 previousStates:(id)a6 visitedIdentifiers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v12 metadata];
  v17 = [v16 identifier];
  if (!v17 || ([v15 containsObject:v17] & 1) != 0 || (v18 = objc_msgSend(v16, "isGroupType"), v13) && (v18 & 1) != 0)
  {
    v19 = 0;
  }

  else
  {
    [v15 addObject:v17];
    v21 = [v14 objectForKeyedSubscript:v17];
    v22 = [v16 type];
    if (!v21 || [v21 type] != v22)
    {
      v23 = [[PKPassTileDescriptorState alloc] initForType:v22];

      v21 = v23;
    }

    v19 = [TileDescriptor insertDescriptor:v12 groupDescriptor:v13 withState:v21 order:a5 forPass:self inDatabase:self->super._database];
  }

  return v19;
}

- (void)updateWithPassTileDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self persistentID];
  v6 = [TileDescriptorState statesInDatabase:self->super._database forPassPID:v5];
  [TileDescriptor deleteEntitiesForPassPID:v5 inDatabase:self->super._database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D06D8;
  v9[3] = &unk_100842FC8;
  v9[4] = self;
  v10 = v6;
  v11 = objc_alloc_init(NSMutableSet);
  v7 = v11;
  v8 = v6;
  [v4 enumerateObjectsUsingBlock:v9];
}

- (void)updateWithSecureElementPassFields:(id)a3
{
  v4 = a3;
  [SecureElementPassField deleteSecureElementPassFieldsInDatabase:self->super._database forPassPID:[(SQLiteEntity *)self persistentID]];
  v14 = v4;
  v5 = [v4 fieldsDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:v9];
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

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)updateWithShareBundle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SQLiteEntity *)self persistentID];
    v6 = [v4 shares];
    [PassShare mergeInShares:v6 forPassPID:v5 inDatabase:self->super._database];

    v7 = [v4 entitlements];

    [PassEntitlement insertOrUpdatePassEntitlements:v7 forPassPID:v5 inDatabase:self->super._database];
  }
}

- (void)udpateWithIsCloudKitArchived:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"is_cloud_kit_archived"];
}

- (void)udpateWithIsCloudKitSecurelyArchived:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"is_cloud_kit_securely_archived"];
}

- (void)updateWithDefaultPaymentApplication:(id)a3
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"pass_default_payment_application_pid"];
}

- (void)updateWithTransactionSourcePID:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"transaction_source_pid"];
}

- (void)_updateWithTransactionService:(id)a3
{
  v8 = a3;
  v4 = [(Pass *)self passTransactionService];
  if (v4)
  {
    v5 = v4;
    [v4 updateWithNotificationService:v8];
  }

  else
  {
    v6 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    v7 = [(SQLiteEntity *)self database];
    v5 = [PassNotificationService insertPassNotificationServiceWithNotificationService:v8 inDatabase:v7];

    [(Pass *)self _updateWithPassTransactionService:v5];
  }

  v6 = v8;
LABEL_6:
}

- (void)_updateWithMessageService:(id)a3
{
  v8 = a3;
  v4 = [(Pass *)self passMessageService];
  if (v4)
  {
    v5 = v4;
    [v4 updateWithNotificationService:v8];
  }

  else
  {
    v6 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    v7 = [(SQLiteEntity *)self database];
    v5 = [PassNotificationService insertPassNotificationServiceWithNotificationService:v8 inDatabase:v7];

    [(Pass *)self _updateWithPassMessageService:v5];
  }

  v6 = v8;
LABEL_6:
}

- (void)_updateWithPassTransactionService:(id)a3
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"pass_transaction_service_pid"];
}

- (void)_updateWithPassMessageService:(id)a3
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"pass_message_service_pid"];
}

- (void)_updateSortingStateIfNecessary
{
  v3 = [(Pass *)self uniqueID];
  v4 = [(SQLiteEntity *)self database];
  v5 = [PassAnnotations anyInDatabase:v4 withPassID:v3];

  if (v5)
  {
    v6 = [v5 passAnnotations];
    v7 = [v6 isArchived];

    if (v7)
    {
      v8 = [(Pass *)self pass];
      v9 = [v8 expirationDate];

      if (v9)
      {
        v10 = [v8 isExpired];
      }

      else
      {
        v10 = [v8 isPastRelevancy];
      }

      v11 = v10;
      if ([v8 isExpired] && objc_msgSend(v8, "passType") == 1)
      {
        v12 = [v8 secureElementPass];
        [v12 passActivationState];
      }

      if ((([v8 isVoided] | v11) & 1) == 0 && (objc_msgSend(v8, "isExpiredBasedOnSigningDate") & 1) == 0)
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Un-archiving updated pass with unique id:%@ since it no longer qualifies for the expired section", &v14, 0xCu);
        }

        [v5 updateSortingState:0];
      }
    }
  }
}

- (void)updateWithSortingState:(int64_t)a3 forSortingReason:(int64_t)a4
{
  v7 = [(SQLiteEntity *)self database];
  v8 = [(Pass *)self uniqueID];
  v9 = [PassAnnotations anyInDatabase:v7 withPassID:v8];

  if (PKExpiredPassesDisabledByUser())
  {
    if (a3 == 1)
    {
      a3 = 3;
    }

    v10 = PKLogFacilityTypeGetObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        if ((a4 - 1) > 6)
        {
          v12 = @"PKPassSortingReasonUnknown";
        }

        else
        {
          v12 = off_100843F98[a4 - 1];
        }

        v22 = 134218498;
        v23 = a3;
        v24 = 2112;
        v25 = v12;
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
      v15 = [(Pass *)self uniqueID];
      v16 = v15;
      if ((a4 - 1) > 6)
      {
        v17 = @"PKPassSortingReasonUnknown";
      }

      else
      {
        v17 = off_100843F98[a4 - 1];
      }

      v22 = 138413058;
      v23 = v15;
      v24 = 2048;
      v25 = a3;
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
      v18 = [(Pass *)self uniqueID];
      v16 = v18;
      if ((a4 - 1) > 6)
      {
        v19 = @"PKPassSortingReasonUnknown";
      }

      else
      {
        v19 = off_100843F98[a4 - 1];
      }

      v22 = 138413058;
      v23 = v18;
      v24 = 2048;
      v25 = a3;
      v26 = 2112;
      v27 = v19;
      v28 = 2048;
      v29 = 0;
      goto LABEL_28;
    }

LABEL_29:

    v20 = [(SQLiteEntity *)self database];
    v21 = [PassAnnotations insertPassAnnotationsForSortingState:a3 forPass:self inDatabase:v20];

    goto LABEL_30;
  }

  if (v13)
  {
    if ((a4 - 1) > 6)
    {
      v14 = @"PKPassSortingReasonUnknown";
    }

    else
    {
      v14 = off_100843F98[a4 - 1];
    }

    v22 = 134218498;
    v23 = a3;
    v24 = 2112;
    v25 = v14;
    v26 = 2048;
    v27 = 0;
    goto LABEL_22;
  }

LABEL_23:

  [v9 updateSortingState:a3];
LABEL_30:
}

- (void)updateWithAssociatedApplicationIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self database];
  [AssociatedApplicationIdentifier deleteEntitiesForPass:self inDatabase:v5];

  v6 = [(SQLiteEntity *)self database];
  [AssociatedApplicationIdentifier insertAssociatedApplicationIdentifiers:v4 forPass:self inDatabase:v6];
}

- (void)updateWithAssociatedPassTypeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self database];
  [AssociatedPassTypeIdentifier deleteEntitiesForPass:self inDatabase:v5];

  v6 = [(SQLiteEntity *)self database];
  [AssociatedPassTypeIdentifier insertAssociatedPassTypeIdentifiers:v4 forPass:self inDatabase:v6];
}

- (void)updateWithAssociatedWebDomains:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self database];
  [AssociatedWebDomain deleteEntitiesForPass:self inDatabase:v5];

  v6 = [(SQLiteEntity *)self database];
  [AssociatedWebDomain insertAssociatedWebDomains:v4 forPass:self inDatabase:v6];
}

- (void)updateWithGroup:(id)a3
{
  v4 = _SQLValueForEntity();
  [(SQLiteEntity *)self setValue:v4 forProperty:@"group_pid"];
}

- (void)updateWithRevocationStatus:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"revoked"];
}

- (void)updateWithDaemonPassData:(id)a3
{
  v7 = a3;
  if ([(Pass *)self passFlavor]== 1)
  {
    v4 = sub_100004338(v7);
    [(Pass *)self updateWithPassTileDescriptors:v4];

    v5 = sub_1000044D8(v7);
    [(Pass *)self updateWithSecureElementPassFields:v5];

    v6 = sub_1005AD1B0(v7);
    [(Pass *)self updateWithShareBundle:v6];
  }
}

- (void)updateWithSupportsIssuerBinding:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"supports_issuer_binding"];
}

- (void)updateWithProvisioningMetadata:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SQLiteEntity *)self persistentID];
    v6 = [(SQLiteEntity *)self database];
    [PassProvisioningMetadata insertOrUpdateProvisioningMetadata:v4 forPassPID:v5 inDatabase:v6];
  }
}

- (void)updateWithLegalAgreements:(id)a3
{
  v6 = a3;
  v4 = [(SQLiteEntity *)self persistentID];
  v5 = [(SQLiteEntity *)self database];
  if (v6)
  {
    [PassLegalAgreement bulkInsertOrUpdate:v6 passPID:v4 inDatabase:v5];
  }

  else
  {
    [PassLegalAgreement deleteForPassPID:v4 inDatabase:v5];
  }
}

- (void)updateWithPassDisplayProfile:(id)a3
{
  if (a3)
  {
    v4 = [Pass _updateDictionaryWithDisplayProfile:?];
    [(SQLiteEntity *)self setValuesWithDictionary:v4];
  }
}

- (void)updateWithContactlessActivationGroupingType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(SQLiteEntity *)self setValue:v4 forProperty:@"contactless_activation_grouping_type"];
}

+ (id)_dynamicStateInDatabase:(id)a3 forPassPID:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithPersistentID:a4 inDatabase:v6];
  v8 = objc_alloc_init(PassDynamicState);
  v9 = [PassLiveRender passLiveRenderInDatabase:v6 forPass:v7];
  v10 = [v9 passLiveRender];
  [(PassDynamicState *)v8 setLiveRender:v10];

  v11 = [PKPassBalanceModel alloc];
  v12 = [PaymentBalance paymentBalancesInDatabase:v6 forPass:v7];
  v13 = [v11 initWithBalances:v12];
  [(PassDynamicState *)v8 setBalanceModel:v13];

  v14 = [PassRelevancyModel anyInDatabase:v6 forPass:v7];
  v15 = [v14 passRelevancyModel];
  [(PassDynamicState *)v8 setRelevancyModel:v15];

  v16 = [v7 uniqueID];
  v17 = [UserLegalAgreementConsent userLegalAgreementConsentsForPassUniqueID:v16 inDatabase:v6];
  [(PassDynamicState *)v8 setAgreements:v17];

  v18 = +[PassAssociatedFlight anyInDatabase:forPassPID:](PassAssociatedFlight, "anyInDatabase:forPassPID:", v6, [v7 persistentID]);
  v19 = +[Flight anyInDatabase:withPID:](Flight, "anyInDatabase:withPID:", v6, [v18 flightPID]);

  v20 = [v19 flight];
  [(PassDynamicState *)v8 setFlight:v20];

  return v8;
}

+ (id)dynamicStateInDatabase:(id)a3 forPassUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 predicateForUniqueID:v7];
  v10 = [a1 _realPassPredicateForPredicate:v9];

  v11 = [a1 queryWithDatabase:v6 predicate:v10];
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
  v18 = a1;
  v12 = v6;
  v16 = v12;
  [v11 enumeratePersistentIDsAndProperties:&__NSArray0__struct usingBlock:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v8);

  return v13;
}

+ (id)dynamicStatesInDatabase:(id)a3 forPassUniqueIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 predicateForUniqueIDs:v7];
  v10 = [a1 _realPassPredicateForPredicate:v9];

  v11 = [a1 queryWithDatabase:v6 predicate:v10];
  v12 = objc_alloc_init(NSMutableDictionary);
  v22 = @"unique_id";
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D1F44;
  v18[3] = &unk_10083C998;
  v19 = v12;
  v21 = a1;
  v14 = v6;
  v20 = v14;
  v15 = v12;
  [v11 enumeratePersistentIDsAndProperties:v13 usingBlock:v18];

  v16 = [v15 copy];
  objc_autoreleasePoolPop(v8);

  return v16;
}

+ (id)_realPassPredicateForPredicate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = v4;
    v6 = [a1 predicateForValidStyle];
    v10[1] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];
  }

  else
  {
    v8 = [a1 predicateForValidStyle];
  }

  return v8;
}

+ (id)_realPassesInDatabase:(id)a3 states:(id *)a4 predicate:(id)a5 orderedBy:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  v14 = [a1 _realPassPredicateForPredicate:v12];

  v29 = v11;
  v15 = [a1 queryWithDatabase:v10 predicate:v14 orderingProperties:v11];
  v16 = +[PKSecureElement isInFailForward];
  v17 = objc_alloc_init(NSMutableSet);
  if (a4)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 _copyPropertiesForPass];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000D22E4;
  v30[3] = &unk_100843018;
  v20 = v17;
  v31 = v20;
  v35 = a1;
  v21 = v10;
  v32 = v21;
  v36 = v16;
  v22 = v13;
  v33 = v22;
  v23 = v18;
  v34 = v23;
  [v15 enumeratePersistentIDsAndProperties:v19 usingBlock:v30];

  if (a4)
  {
    v24 = [v23 copy];
    v25 = *a4;
    *a4 = v24;
  }

  objc_autoreleasePoolPop(context);
  v26 = [v22 copy];

  return v26;
}

+ (id)passesInDatabase:(id)a3 states:(id *)a4 matchingPredicate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [NSSet alloc];
  v12 = [a1 _realPassesInDatabase:v8 states:a4 predicate:v9 orderedBy:0];
  v13 = [v11 initWithArray:v12];

  objc_autoreleasePoolPop(v10);

  return v13;
}

+ (id)passSerialNumbersInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 _realPassPredicateForPredicate:a4];
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [a1 queryWithDatabase:v6 predicate:v8];
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

+ (id)passPrimaryAccountIdentifiersInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 _realPassPredicateForPredicate:a4];
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [a1 queryWithDatabase:v6 predicate:v8];
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

+ (id)passUniqueIDsInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 _realPassPredicateForPredicate:a4];
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [a1 queryWithDatabase:v6 predicate:v8];
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

+ (id)passStylesInDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 predicateForValidStyle];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v8 setEntityClass:a1];
  [(SQLiteQueryDescriptor *)v8 setPredicate:v6];
  [(SQLiteQueryDescriptor *)v8 setReturnsDistinctEntities:1];
  v9 = [[SQLiteQuery alloc] initWithDatabase:v4 descriptor:v8];
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

+ (id)unexpiredPassStylesInDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 predicateForValidStyle];
  v20[0] = v6;
  v7 = [a1 predicateForUnexpiredInStack];
  v20[1] = v7;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = objc_alloc_init(NSMutableSet);
  v11 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v11 setEntityClass:a1];
  [(SQLiteQueryDescriptor *)v11 setPredicate:v9];
  [(SQLiteQueryDescriptor *)v11 setReturnsDistinctEntities:1];
  v12 = [[SQLiteQuery alloc] initWithDatabase:v4 descriptor:v11];
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

+ (id)secureElementCardTypesInDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = +[SQLiteBooleanPredicate truePredicate];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v8 setEntityClass:a1];
  [(SQLiteQueryDescriptor *)v8 setPredicate:v6];
  [(SQLiteQueryDescriptor *)v8 setReturnsDistinctEntities:1];
  v9 = [[SQLiteQuery alloc] initWithDatabase:v4 descriptor:v8];
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

+ (id)unexpiredSecureElementCardTypesInDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 predicateForUnexpiredInStack];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v8 setEntityClass:a1];
  [(SQLiteQueryDescriptor *)v8 setPredicate:v6];
  [(SQLiteQueryDescriptor *)v8 setReturnsDistinctEntities:1];
  v9 = [[SQLiteQuery alloc] initWithDatabase:v4 descriptor:v8];
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

+ (id)candidatePassesInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 _realPassPredicateForPredicate:a4];
  v9 = objc_alloc_init(NSMutableSet);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000D33B4;
  v18 = &unk_100843068;
  v22 = a1;
  v10 = v6;
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
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D37D8;
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

- (id)groupingProfile
{
  v3 = objc_alloc_init(PDPassGroupingProfile);
  v4 = +[Pass _propertySettersForGroupingProfile];
  v5 = [v4 allKeys];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000D3958;
  v18 = &unk_10083C240;
  v19 = v4;
  v6 = v3;
  v20 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:&v15];

  v8 = [(SQLiteEntity *)self valueForProperty:@"pid", v15, v16, v17, v18];
  v9 = [v8 longLongValue];
  v10 = [(SQLiteEntity *)self database];
  v11 = [PassRelevancyDates relevancyDatesForPassPID:v9 inDatabase:v10];
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
    v5 = [v3 longLongValue];
    v6 = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 inDatabase:v6];
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)webService
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"web_service_pid"];
  if (v3)
  {
    v4 = [WebService alloc];
    v5 = [v3 longLongValue];
    v6 = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 inDatabase:v6];
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
  v2 = [(Pass *)self passTransactionService];
  v3 = [v2 notificationService];

  return v3;
}

- (id)messageService
{
  v2 = [(Pass *)self passMessageService];
  v3 = [v2 notificationService];

  return v3;
}

- (id)passTransactionService
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"pass_transaction_service_pid"];
  if (v3)
  {
    v4 = [PassNotificationService alloc];
    v5 = [v3 longLongValue];
    v6 = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 inDatabase:v6];
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
    v5 = [v3 longLongValue];
    v6 = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 inDatabase:v6];
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

- (id)passNotificationServiceForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(Pass *)self passMessageService];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(Pass *)self passTransactionService];
  }

  return v3;
}

- (id)group
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"group_pid"];
  if (v3)
  {
    v4 = [Group alloc];
    v5 = [v3 longLongValue];
    v6 = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 inDatabase:v6];
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
    v5 = [v3 longLongValue];
    v6 = [(SQLiteEntity *)self database];
    v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 inDatabase:v6];
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsIssuerBinding
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"supports_issuer_binding"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)displayProfile
{
  v3 = objc_alloc_init(PKPassDisplayProfile);
  v4 = +[Pass _propertySettersForDisplayProfile];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D40C0;
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

+ (void)passInformationInDatabase:(id)a3 withPassUniqueID:(id)a4 cardType:(int64_t *)a5 accessType:(int64_t *)a6 accessReportingType:(id *)a7 supportedRadioTechnologies:(unint64_t *)a8
{
  v13 = a3;
  v18 = a4;
  v20 = [a1 predicateForUniqueID:?];
  v14 = [a1 queryWithDatabase:v13 predicate:v20];
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
  v16 = v13;
  v22 = v16;
  v25 = &v29;
  v26 = v27;
  [v14 enumeratePersistentIDsAndProperties:v15 usingBlock:v21];

  if (a5)
  {
    *a5 = v38[3];
  }

  if (a6)
  {
    if (PKIsCarKeyPass())
    {
      v17 = 4;
    }

    else
    {
      v17 = v34[3];
    }

    *a6 = v17;
  }

  if (a7)
  {
    *a7 = PKSecureElementAccessPassTypeToString();
  }

  if (a8)
  {
    *a8 = v30[3];
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)getPushRegistrationStatus:(unint64_t *)a3 date:(id *)a4
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

  if (a3)
  {
    *a3 = v16[3];
  }

  if (a4)
  {
    *a4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (id)transactionSourceIdentifier
{
  v3 = [(SQLiteEntity *)self database];
  v4 = [(SQLiteEntity *)self valueForProperty:@"transaction_source_pid"];
  v5 = +[TransactionSource anyInDatabase:withPersistentID:](TransactionSource, "anyInDatabase:withPersistentID:", v3, [v4 longLongValue]);
  v6 = [v5 identifier];

  return v6;
}

+ (void)enumerateUpdateContextsForQuery:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _propertySettersForUpdateContext];
  v9 = [v8 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D4860;
  v12[3] = &unk_1008430E0;
  v14 = v6;
  v15 = a1;
  v13 = v8;
  v10 = v6;
  v11 = v8;
  [v7 enumeratePersistentIDsAndProperties:v9 usingBlock:v12];
}

+ (void)enumerateOrganizationNamesForQuery:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v11 = @"organization_name";
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D4A10;
  v9[3] = &unk_100841A88;
  v10 = v5;
  v8 = v5;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v9];
}

+ (void)enumeratePassesAndGroupingProfilesForQuery:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _propertySettersForGroupingProfile];
  v9 = [v8 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D4B28;
  v13[3] = &unk_100843108;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v17 = a1;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  [v12 enumeratePersistentIDsAndProperties:v9 usingBlock:v13];
}

+ (void)enumeratePassesForQuery:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _propertySettersForGroupingProfile];
  v9 = [v8 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D4CFC;
  v12[3] = &unk_100843130;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v11 enumeratePersistentIDsAndProperties:v9 usingBlock:v12];
}

+ (void)enumeratePassUniqueIDsAndTypesForQuery:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v11[0] = @"unique_id";
  v11[1] = @"pass_flavor";
  v6 = a3;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D4EB4;
  v9[3] = &unk_100843158;
  v10 = v5;
  v8 = v5;
  [v6 enumerateProperties:v7 usingBlock:v9];
}

+ (void)enumeratePassSyncabilityPropertiesInDatabase:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [a1 queryWithDatabase:a3 predicate:0];
  v12[0] = @"unique_id";
  v12[1] = @"pass_flavor";
  v12[2] = @"template";
  v12[3] = @"pass_type.identifier";
  v8 = [NSArray arrayWithObjects:v12 count:4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D5048;
  v10[3] = &unk_100843158;
  v11 = v6;
  v9 = v6;
  [v7 enumerateProperties:v8 usingBlock:v10];
}

+ (id)anyInDatabase:(id)a3 withPersistentID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 predicateForPersistentID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withTransactionSourcePID:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 predicateForTransactionSourceWithPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withUniqueID:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForUniqueID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withReaderIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v13 = v7;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 predicateForASCReaderIds:v9];
  v11 = [a1 anyInDatabase:v6 predicate:v10];

  if (v8)
  {
  }

  return v11;
}

+ (id)anyInDatabase:(id)a3 withProvisioningCredentialHash:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForProvisioningCredentialHash:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withPassType:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForPassType:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withWebService:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForWebService:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withGroup:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForGroup:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withPassType:(id)a4 serialNumber:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 predicateForPassType:a4];
  v11 = [a1 predicateForSerialNumber:v8];

  v12 = [NSArray arrayWithObjects:v10, v11, 0];

  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v14 = [a1 anyInDatabase:v9 predicate:v13];

  return v14;
}

+ (id)anyInDatabase:(id)a3 withWebService:(id)a4 serialNumber:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 predicateForWebService:a4];
  v11 = [a1 predicateForSerialNumber:v8];

  v12 = [NSArray arrayWithObjects:v10, v11, 0];

  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v14 = [a1 anyInDatabase:v9 predicate:v13];

  return v14;
}

+ (id)anyInDatabase:(id)a3 withNotificationService:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForNotificationService:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5
{
  v8 = a3;
  v9 = [a1 predicateForPaymentApplicationIdentifier:a4 withSecureElementIdentifier:a5];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  return v10;
}

+ (id)anyInDatabase:(id)a3 withApplicationIdentifier:(id)a4 secureElementIdentifiers:(id)a5
{
  v8 = a3;
  v9 = [a1 predicateForPaymentApplicationIdentifier:a4 withSecureElementIdentifiers:a5];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  return v10;
}

+ (id)anyInDatabase:(id)a3 withPrimaryAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForPrimaryAccountIdentifier:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withAssociatedAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 predicateForAssociatedAccountIdentifier:v7];
  v9 = [a1 anyInDatabase:v6 predicate:v8];

  if (v9)
  {
    v10 = v9;
    v11 = v7;
  }

  else
  {
    v12 = [Account anyInDatabase:v6 withPreviousAccountIdentifier:v7];
    v11 = [v12 accountIdentifier];

    if (v11)
    {
      v13 = [a1 predicateForAssociatedAccountIdentifier:v11];
      v14 = [a1 anyInDatabase:v6 predicate:v13];
    }

    else
    {
      v14 = 0;
    }

    v10 = v14;
  }

  return v10;
}

+ (id)queryWithDatabase:(id)a3 passType:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForPassType:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  return v8;
}

+ (id)queryWithDatabase:(id)a3 group:(id)a4
{
  v6 = a3;
  v7 = [a1 predicateForGroup:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  return v8;
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 valueForProperty:@"unique_id"];
  v5 = [PassLocationSource queryWithDatabase:v2->super._database passPID:v3];
  [v5 deleteAllEntities];
  [Beacon deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [NFC deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [PaymentApplication deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [PaymentMessage deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [PaymentBalance deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [PassAnnotations deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [PassLiveRender deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [PassRelevancyModel deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [AssociatedApplicationIdentifier deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [AssociatedPassTypeIdentifier deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [AssociatedWebDomain deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [ValueAddedServiceTransaction deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  [CategoryVisualizationMagnitude deleteAnyInDatabase:v2->super._database forPassUniqueID:v4];
  [BalanceReminder deleteAnyInDatabase:v2->super._database forPassIdentifier:v4];
  [CommutePlanReminder deleteAnyInDatabase:v2->super._database forPassIdentifier:v4];
  [TileDescriptor deleteEntitiesForPassPID:v3 inDatabase:v2->super._database];
  [PassShare deletePassShareForPassPID:v3 inDatabase:v2->super._database];
  [PassEntitlement deletePassEntitlementForPassPID:v3 inDatabase:v2->super._database];
  [SecureElementPassField deleteSecureElementPassFieldsInDatabase:v2->super._database forPassPID:v3];
  [PassAuxiliaryRegistrationRequirement deleteAuxiliaryRegistrationRequirementsForPassPID:v3 inDatabase:v2->super._database];
  [PassTransactionActivitySummary deletePassTransactionActivitySummariesForPassUniqueIdentifier:v4 inDatabase:v2->super._database];
  [PaymentApplicationUsageSummary deleteUsageSummariesForPassUniqueIdentifier:v4 inDatabase:v2->super._database];
  [PassProvisioningMetadata deleteProvisioningMetadataForPassPID:v3 inDatabase:v2->super._database];
  [PassRelevancyDates deleteEntitiesForPassPID:v3 inDatabase:v2->super._database];
  [PaymentRewardsBalance deleteRewardsBalanceForPass:v2 inDatabase:v2->super._database];
  [PaymentRewardsRedemption deleteRewardsRedemptionsForPass:v2 inDatabase:v2->super._database];
  [PaymentOfferEndpointMetadata deleteEntitiesForPassPID:v3 inDatabase:v2->super._database];
  [UserLegalAgreementConsent deleteForPassUniqueID:v4 inDatabase:v2->super._database];
  [PassLegalAgreement deleteForPassPID:v3 inDatabase:v2->super._database];
  [SelectedPaymentOffer deleteAllPaymentOffersForPassPID:v3 inDatabase:v2->super._database];
  [PaymentOfferConfirmationRecord deleteRecordWithPassUniqueID:v4 inDatabase:v2->super._database];
  [PassAssociatedFlight deleteEntitiesForPass:v2 inDatabase:v2->super._database];
  v6 = [(Pass *)v2 passTransactionService];
  [v6 deleteFromDatabase];

  v7 = [(Pass *)v2 passMessageService];
  [v7 deleteFromDatabase];

  v9.receiver = v2;
  v9.super_class = Pass;
  LOBYTE(v2) = [(SQLiteEntity *)&v9 deleteFromDatabase];

  return v2;
}

+ (id)predicateForPersistentID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForTransactionSourceWithPID:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedLongLong:a3];
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

+ (id)predicateForNFCPayloadState:(unint64_t)a3
{
  v4 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"nfc.message"];
  v10[0] = v4;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"nfc.a" equalToValue:v5];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)predicateForWebService:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"web_service_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentCardType:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"card_type" equalToValue:v3];

  return v4;
}

+ (id)predicateForNotificationService:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_notification_service.notification_service_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationState:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.state" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationStates:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

+ (id)predicateForPrimaryPaymentApplication:(BOOL)a3
{
  v3 = [NSNumber numberWithInt:!a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.auxiliary_application" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationSupportsContactlessPayment:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.supports_contactless_payment" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentApplicationSupportsInAppPayment:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.supports_in_app_payment" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentType:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.payment_type" equalToValue:v3];

  return v4;
}

+ (id)predicateForASCReaderIds:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [SQLiteCompoundPredicate predicateWithProperty:@"payment_automatic_selection_criterion_reader_id.reader_id" equalToValues:v3];
    v5 = [SQLiteCompoundPredicate predicateWithProperty:@"associated_reader_id.reader_id" equalToValues:v3];
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

+ (id)predicateForPaymentApplicationIdentifier:(id)a3 withSecureElementIdentifier:(id)a4
{
  v5 = a4;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.aid" equalToValue:a3];
  v11[0] = v6;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.seid" equalToValue:v5];

  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];

  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)predicateForPaymentApplicationIdentifier:(id)a3 withSecureElementIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application.aid" equalToValue:a3];
  v11[0] = v6;
  v7 = [SQLiteCompoundPredicate predicateWithProperty:@"payment_application.seid" equalToValues:v5];

  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];

  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)predicateForPassType:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_type_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForGroup:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"group_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForStyle:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"template" equalToValue:v3];

  return v4;
}

+ (id)predicateForIsCloudKitArchived:(BOOL)a3
{
  if (a3)
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

+ (id)predicateForIsCloudKitSecurelyArchived:(BOOL)a3
{
  if (a3)
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

+ (id)predicateForIsRevoked:(BOOL)a3
{
  if (a3)
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

+ (id)predicateForSupportsIssuerBinding:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_issuer_binding" equalToValue:v3];

  return v4;
}

+ (id)predicateForPassAnnotationStatesInMainStack
{
  v3 = [a1 _predicateForPassAnnotationState:0];
  v4 = [a1 _predicateForPassAnnotationState:{2, v3}];
  v9[1] = v4;
  v5 = [a1 _predicateForPassAnnotationState:3];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  return v7;
}

+ (id)_predicateForPassAnnotationState:(int64_t)a3
{
  v4 = +[PassAnnotations databaseTable];
  v5 = [NSString stringWithFormat:@"%@.%@", v4, @"sorting_state"];

  v6 = [NSNumber numberWithInteger:a3];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:v5 equalToValue:v6];

  return v7;
}

+ (id)predicateForSupportsDefaultCardSelection:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_default_card_selection" equalToValue:v3];

  return v4;
}

+ (id)predicateForIdentityTypes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

+ (id)_realPassInDatabase:(id)a3 withProperties:(id)a4 values:(const void *)a5 fromPass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (!v12)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v14 = [v12 persistentID];
  v15 = +[NSNull null];
  v16 = [v11 indexOfObject:@"pass_flavor"];
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

  v19 = a5[v16];
  v17 = v19;
  if (v19 == v15)
  {
    goto LABEL_9;
  }

  if (!v19)
  {
LABEL_10:
    v21 = [v11 indexOfObject:@"pass_type.identifier"];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0;
    }

    else
    {
      v22 = a5[v21];
    }

    v23 = v22;
    v17 = v23;
    if (v23 == v15)
    {

      v17 = 0;
    }

    v20 = PKPassTypeForPassTypeIdentifier();
    goto LABEL_16;
  }

  v20 = [v19 integerValue];
LABEL_16:
  v24 = v20;

  v18 = objc_alloc_init([PKPass classForPassType:v24]);
  [v18 setPassType:v24];
  v25 = [a1 _propertySettersForPass];
  [a1 applyPropertySetters:v25 toObject:v18 withProperties:v11 values:a5];

  v26 = objc_alloc_init(PKPassDisplayProfile);
  v27 = [a1 _propertySettersForDisplayProfile];
  [a1 applyPropertySetters:v27 toObject:v26 withProperties:v11 values:a5];

  [v18 setDisplayProfile:v26];
  v28 = objc_autoreleasePoolPush();
  v29 = [Location locationsInDatabase:v10 forPassPID:v14 withSourceType:0];
  [v18 setEmbeddedLocationsArray:v29];

  objc_autoreleasePoolPop(v28);
  v30 = [Beacon beaconsInDatabase:v10 forPassPID:v14];
  [v18 setEmbeddedBeacons:v30];

  v31 = [NFC anyInDatabase:v10 forPassPID:v14];
  v32 = [v31 nfcPayload];
  [v18 setNFCPayload:v32];

  v33 = [AssociatedPassTypeIdentifier associatedPassTypeIdentifiersInDatabase:v10 forPassPID:v14];
  [v18 setAssociatedPassTypeIdentifiers:v33];

  v34 = [PassRelevancyDates relevancyDatesForPassPID:v14 inDatabase:v10];
  [v18 setRelevantDates:v34];

  if (v24 == 1)
  {
    v35 = [PaymentApplication paymentApplicationsInDatabase:v10 forPassPID:v14];
    [v18 setPaymentApplications:v35];

    v36 = [AssociatedApplicationIdentifier associatedApplicationIdentifiersInDatabase:v10 forPassPID:v14];
    [v18 setAssociatedApplicationIdentifiers:v36];

    v37 = [AssociatedWebDomain associatedWebDomainsInDatabase:v10 forPassPID:v14];
    [v18 setAssociatedWebDomains:v37];

    [v18 setAssociatedAccountFeatureIdentifier:{objc_msgSend(v13, "associatedAccountFeatureIdentifier")}];
    v38 = [PassProvisioningMetadata provisioningMetadataForPassPID:v14 inDatabase:v10];
    [v18 setProvisioningMetadata:v38];

    v39 = [PassLegalAgreement passLegalAgreementsForPassPID:v14 inDatabase:v10];
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