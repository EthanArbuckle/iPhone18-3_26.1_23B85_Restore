@interface ICMusicSubscriptionStatus
+ (id)dateFromMilliseconds:(id)a3;
+ (unint64_t)_capabilitiesForStatusType:(int64_t)a3 carrierBundlingStatusType:(int64_t)a4 isMatchEnabled:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStatus:(id)a3;
- (ICMusicSubscriptionStatus)initWithCoder:(id)a3;
- (ICMusicSubscriptionStatus)initWithResponseDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)_init;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)capabilities;
- (void)_copySubscriptionStatusPropertiesToStatus:(id)a3 withZone:(_NSZone *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICMusicSubscriptionStatus

- (id)description
{
  carrierBundlingStatusType = self->_carrierBundlingStatusType;
  if (carrierBundlingStatusType > 4)
  {
    v32 = 0;
  }

  else
  {
    v32 = off_1E7BFA398[carrierBundlingStatusType];
  }

  sourceType = self->_sourceType;
  if (sourceType > 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = off_1E7BFA3C0[sourceType];
  }

  if (self->_carrierBundlingErrorCode)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@" carrierBundlingErrorCode:%ld", self->_carrierBundlingErrorCode];
  }

  else
  {
    v33 = &stru_1F2C4A680;
  }

  if (self->_isMatchEnabled)
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  statusType = self->_statusType;
  if (statusType > 3)
  {
    v30 = 0;
  }

  else
  {
    v30 = off_1E7BFA3D8[statusType];
  }

  reasonType = self->_reasonType;
  if (reasonType > 4)
  {
    v28 = 0;
  }

  else
  {
    v28 = off_1E7BFA3F8[reasonType];
  }

  v29 = v5;
  v8 = ICMusicSubscriptionStatusCapabilitiesGetDescription([(ICMusicSubscriptionStatus *)self capabilities]);
  eligibleOffers = self->_eligibleOffers;
  if (eligibleOffers)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(NSArray *)eligibleOffers componentsJoinedByString:@", "];
    v12 = [v10 stringWithFormat:@" eligibleOffers:%@", v11];
  }

  else
  {
    v12 = &stru_1F2C4A680;
  }

  v27 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v26 = NSStringFromClass(v13);
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAutoRenewEnabled];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInFreePeriod];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInFreeTrial];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEligibleForFreeTrial];
  v17 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_initialPurchaseTimestamp timeIntervalSince1970];
  v18 = [v17 numberWithDouble:?];
  v19 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_serviceBeginsTimestamp timeIntervalSince1970];
  v20 = [v19 numberWithDouble:?];
  v21 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_studentExpirationDate timeIntervalSince1970];
  v22 = [v21 numberWithDouble:?];
  v23 = [v27 stringWithFormat:@"<%@ %p statusType:%@, matchEnabled=%@, carrierBundlingStatusType:%@, reasonType:%@, sourceType:%@%@, capabilities:%@, eligibleOffers:[%@], isAutoRenewEnabled:%@, isInFreePeriod:%@, isInFreeTrial:%@, isEligibleForFreeTrial:%@, initialPurchaseTimestamp:%@, serviceBeginsTimestamp:%@, studentExpirationDate:%@, studentVerifier:%@, studentVerificationId:%@, partner:%@>", v26, self, v30, v29, v32, v28, v31, v33, v8, v12, v14, v25, v15, v16, v18, v20, v22, self->_studentVerifier, self->_studentVerificationId, self->_partner];

  return v23;
}

- (unint64_t)capabilities
{
  v3 = objc_opt_class();
  statusType = self->_statusType;
  carrierBundlingStatusType = self->_carrierBundlingStatusType;
  isMatchEnabled = self->_isMatchEnabled;

  return [v3 _capabilitiesForStatusType:statusType carrierBundlingStatusType:carrierBundlingStatusType isMatchEnabled:isMatchEnabled];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ICMusicSubscriptionStatus;
  return [(ICMusicSubscriptionStatus *)&v3 init];
}

- (void)_copySubscriptionStatusPropertiesToStatus:(id)a3 withZone:(_NSZone *)a4
{
  responseDictionary = self->_responseDictionary;
  v7 = a3;
  v8 = [(NSDictionary *)responseDictionary copyWithZone:a4];
  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 16) = self->_isMinorAccountHolder;
  v10 = [(NSDate *)self->_studentExpirationDate copyWithZone:a4];
  v11 = v7[3];
  v7[3] = v10;

  v12 = [(NSString *)self->_studentVerificationId copyWithZone:a4];
  v13 = v7[4];
  v7[4] = v12;

  v14 = [(NSString *)self->_studentVerifier copyWithZone:a4];
  v15 = v7[5];
  v7[5] = v14;

  *(v7 + 48) = self->_hasFamily;
  *(v7 + 49) = self->_hasFamilyGreaterThanOneMember;
  *(v7 + 50) = self->_isHeadOfHousehold;
  *(v7 + 51) = self->_isMatchEnabled;
  v16 = [(NSDate *)self->_expirationDate copyWithZone:a4];
  v17 = v7[7];
  v7[7] = v16;

  v18 = [(NSDate *)self->_initialPurchaseTimestamp copyWithZone:a4];
  v19 = v7[8];
  v7[8] = v18;

  v20 = [(NSDate *)self->_serviceBeginsTimestamp copyWithZone:a4];
  v21 = v7[9];
  v7[9] = v20;

  *(v7 + 80) = self->_hasOfflineSlots;
  *(v7 + 81) = self->_isAutoRenewEnabled;
  *(v7 + 82) = self->_isInFreePeriod;
  *(v7 + 83) = self->_isInFreeTrial;
  *(v7 + 84) = self->_isEligibleForFreeTrial;
  *(v7 + 85) = self->_isPurchaser;
  v22 = [(NSString *)self->_partner copyWithZone:a4];
  v23 = v7[11];
  v7[11] = v22;

  v7[12] = self->_carrierBundlingStatusType;
  v7[13] = self->_reasonType;
  v7[14] = self->_sourceType;
  v7[15] = self->_statusType;
  *(v7 + 128) = self->_isAdministrator;
  *(v7 + 129) = self->_isDiscoveryModeEligible;
  v24 = [(NSArray *)self->_termsStatusList copyWithZone:a4];
  v25 = v7[17];
  v7[17] = v24;

  v26 = [(NSString *)self->_phoneNumber copyWithZone:a4];
  v27 = v7[18];
  v7[18] = v26;

  v28 = [(NSString *)self->_cellularOperatorName copyWithZone:a4];
  v29 = v7[19];
  v7[19] = v28;

  v30 = [(NSString *)self->_sessionIdentifier copyWithZone:a4];
  v31 = v7[20];
  v7[20] = v30;

  v7[21] = self->_carrierBundlingErrorCode;
  *(v7 + 176) = self->_isPartOfBundle;
  *(v7 + 177) = self->_isBundleOwner;
  v32 = [(NSArray *)self->_eligibleOffers copyWithZone:a4];
  v33 = v7[23];
  v7[23] = v32;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v3 setObject:phoneNumber forKey:@"phoneNumber"];
  }

  cellularOperatorName = self->_cellularOperatorName;
  if (cellularOperatorName)
  {
    [v4 setObject:cellularOperatorName forKey:@"cellularOperatorName"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v4 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if (self->_carrierBundlingErrorCode)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v4 setObject:v8 forKey:@"carrierBundlingErrorCode"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_carrierBundlingStatusType];
  [v4 setObject:v9 forKey:@"carrierBundlingStatusType"];

  v10 = [(NSDictionary *)self->_responseDictionary mutableCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = [v4 copy];
  [v10 setObject:v11 forKey:@"_ICMusicSubscriptionStatusAdditionalProperties"];

  v12 = [v10 copy];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  responseDictionary = self->_responseDictionary;
  v5 = a3;
  [v5 encodeObject:responseDictionary forKey:@"responseDictionary"];
  [v5 encodeBool:self->_isMinorAccountHolder forKey:@"isMinorAccountHolder"];
  [v5 encodeObject:self->_studentVerificationId forKey:@"studentVerificationId"];
  [v5 encodeObject:self->_studentVerifier forKey:@"studentVerifier"];
  [v5 encodeObject:self->_studentExpirationDate forKey:@"studentExpirationDate"];
  [v5 encodeBool:self->_hasFamily forKey:@"hasFamily"];
  [v5 encodeBool:self->_hasFamilyGreaterThanOneMember forKey:@"hasFamilyGreaterThanOneMember"];
  [v5 encodeBool:self->_isHeadOfHousehold forKey:@"isHeadOfHousehold"];
  [v5 encodeBool:self->_isMatchEnabled forKey:@"isMatchEnabled"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_initialPurchaseTimestamp forKey:@"initialPurchaseTimestamp"];
  [v5 encodeObject:self->_serviceBeginsTimestamp forKey:@"serviceBeginsTimestamp"];
  [v5 encodeBool:self->_hasOfflineSlots forKey:@"hasOfflineSlots"];
  [v5 encodeBool:self->_isAutoRenewEnabled forKey:@"isAutoRenewEnabled"];
  [v5 encodeBool:self->_isInFreePeriod forKey:@"isInFreePeriod"];
  [v5 encodeBool:self->_isInFreeTrial forKey:@"isInFreeTrial"];
  [v5 encodeBool:self->_isEligibleForFreeTrial forKey:@"isEligibleForFreeTrial"];
  [v5 encodeBool:self->_isPurchaser forKey:@"isPurchaser"];
  [v5 encodeObject:self->_partner forKey:@"partner"];
  [v5 encodeInteger:self->_carrierBundlingStatusType forKey:@"carrierBundlingStatusType"];
  [v5 encodeInteger:self->_reasonType forKey:@"reasonType"];
  [v5 encodeInteger:self->_sourceType forKey:@"sourceType"];
  [v5 encodeInteger:self->_statusType forKey:@"statusType"];
  [v5 encodeBool:self->_isAdministrator forKey:@"isAdministrator"];
  [v5 encodeBool:self->_isDiscoveryModeEligible forKey:@"isDiscoveryModeEligible"];
  [v5 encodeObject:self->_termsStatusList forKey:@"termsStatusList"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [v5 encodeObject:self->_cellularOperatorName forKey:@"cellularOperatorName"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeInteger:self->_carrierBundlingErrorCode forKey:@"carrierBundlingErrorCode"];
  [v5 encodeBool:self->_isPartOfBundle forKey:@"isPartOfBundle"];
  [v5 encodeBool:self->_isBundleOwner forKey:@"isBundleOwner"];
  [v5 encodeObject:self->_eligibleOffers forKey:@"eligibleOffers"];
}

- (ICMusicSubscriptionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  if (initWithCoder__sAllowedClassesForPropertyListRepresentationOnceToken != -1)
  {
    dispatch_once(&initWithCoder__sAllowedClassesForPropertyListRepresentationOnceToken, &__block_literal_global_41211);
  }

  if (initWithCoder__sAllowedClassesForTermsStatusListOnceToken != -1)
  {
    dispatch_once(&initWithCoder__sAllowedClassesForTermsStatusListOnceToken, &__block_literal_global_230);
  }

  v5 = [(ICMusicSubscriptionStatus *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClasses:initWithCoder__sAllowedClassesForPropertyListRepresentation forKey:@"responseDictionary"];
    v7 = [v6 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v7;

    v5->_isMinorAccountHolder = [v4 decodeBoolForKey:@"isMinorAccountHolder"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"studentExpirationDate"];
    studentExpirationDate = v5->_studentExpirationDate;
    v5->_studentExpirationDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"studentVerificationId"];
    studentVerificationId = v5->_studentVerificationId;
    v5->_studentVerificationId = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"studentVerifier"];
    studentVerifier = v5->_studentVerifier;
    v5->_studentVerifier = v13;

    v5->_hasFamily = [v4 decodeBoolForKey:@"hasFamily"];
    v5->_hasFamilyGreaterThanOneMember = [v4 decodeBoolForKey:@"hasFamilyGreaterThanOneMember"];
    v5->_isHeadOfHousehold = [v4 decodeBoolForKey:@"isHeadOfHousehold"];
    v5->_isMatchEnabled = [v4 decodeBoolForKey:@"isMatchEnabled"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialPurchaseTimestamp"];
    initialPurchaseTimestamp = v5->_initialPurchaseTimestamp;
    v5->_initialPurchaseTimestamp = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceBeginsTimestamp"];
    serviceBeginsTimestamp = v5->_serviceBeginsTimestamp;
    v5->_serviceBeginsTimestamp = v19;

    v5->_hasOfflineSlots = [v4 decodeBoolForKey:@"hasOfflineSlots"];
    v5->_isAutoRenewEnabled = [v4 decodeBoolForKey:@"isAutoRenewEnabled"];
    v5->_isInFreePeriod = [v4 decodeBoolForKey:@"isInFreePeriod"];
    v5->_isInFreeTrial = [v4 decodeBoolForKey:@"isInFreeTrial"];
    v5->_isEligibleForFreeTrial = [v4 decodeBoolForKey:@"isEligibleForFreeTrial"];
    v5->_isPurchaser = [v4 decodeBoolForKey:@"isPurchaser"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partner"];
    partner = v5->_partner;
    v5->_partner = v21;

    v5->_carrierBundlingStatusType = [v4 decodeIntegerForKey:@"carrierBundlingStatusType"];
    v5->_reasonType = [v4 decodeIntegerForKey:@"reasonType"];
    v5->_sourceType = [v4 decodeIntegerForKey:@"sourceType"];
    v5->_isAdministrator = [v4 decodeBoolForKey:@"isAdministrator"];
    v5->_isDiscoveryModeEligible = [v4 decodeBoolForKey:@"isDiscoveryModeEligible"];
    v23 = [v4 decodeObjectOfClasses:initWithCoder__sAllowedClassesForTermsStatusList forKey:@"termsStatusList"];
    termsStatusList = v5->_termsStatusList;
    v5->_termsStatusList = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cellularOperatorName"];
    cellularOperatorName = v5->_cellularOperatorName;
    v5->_cellularOperatorName = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v29;

    v5->_carrierBundlingErrorCode = [v4 decodeIntegerForKey:@"carrierBundlingErrorCode"];
    v5->_isPartOfBundle = [v4 decodeBoolForKey:@"isPartOfBundle"];
    v5->_isBundleOwner = [v4 decodeBoolForKey:@"isBundleOwner"];
    v31 = [v4 decodeObjectOfClasses:initWithCoder__sAllowedClassesForPropertyListRepresentation forKey:@"eligibleOffers"];
    v32 = [v31 copy];
    eligibleOffers = v5->_eligibleOffers;
    v5->_eligibleOffers = v32;

    v34 = [v4 decodeIntegerForKey:@"statusType"];
    if (v34 >= 4)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    v5->_statusType = v35;
  }

  return v5;
}

uint64_t __43__ICMusicSubscriptionStatus_initWithCoder___block_invoke_2()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = initWithCoder__sAllowedClassesForTermsStatusList;
  initWithCoder__sAllowedClassesForTermsStatusList = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __43__ICMusicSubscriptionStatus_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = initWithCoder__sAllowedClassesForPropertyListRepresentation;
  initWithCoder__sAllowedClassesForPropertyListRepresentation = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(ICMusicSubscriptionStatus *)[ICMutableMusicSubscriptionStatus alloc] _init];
  [(ICMusicSubscriptionStatus *)self _copySubscriptionStatusPropertiesToStatus:v5 withZone:a3];
  return v5;
}

+ (unint64_t)_capabilitiesForStatusType:(int64_t)a3 carrierBundlingStatusType:(int64_t)a4 isMatchEnabled:(BOOL)a5
{
  v6 = a3 == 1 && a4 != 2;
  v7 = a5 || v6;
  v8 = a4 != 2 && a3 == 1;
  if (a4 == 1)
  {
    v7 = 1;
    v8 = 1;
  }

  v9 = (a4 - 1) < 2 || a3 == 1;
  v10 = v9 | 0x82;
  if (a3 != 3 && !v9)
  {
    v10 = v9;
  }

  if (v7)
  {
    v12 = v10 | 0x100;
  }

  else
  {
    v12 = v10;
  }

  if (v8)
  {
    v12 |= 0x200uLL;
  }

  if (v9)
  {
    return v12 | 0x10000;
  }

  else
  {
    return v12;
  }
}

+ (id)dateFromMilliseconds:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    if (!_NSIsNSString())
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = strtoull([v3 UTF8String], 0, 10);
  }

  v5 = v4;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v4 / 1000.0];
  }

LABEL_8:

  return v5;
}

- (BOOL)isEqualToStatus:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    responseDictionary = self->_responseDictionary;
    if ((responseDictionary == v4->_responseDictionary || [(NSDictionary *)responseDictionary isEqualToDictionary:?]) && self->_isMinorAccountHolder == v4->_isMinorAccountHolder && ((studentExpirationDate = self->_studentExpirationDate, studentExpirationDate == v4->_studentExpirationDate) || [(NSDate *)studentExpirationDate isEqualToDate:?]) && ((studentVerificationId = self->_studentVerificationId, studentVerificationId == v4->_studentVerificationId) || [(NSString *)studentVerificationId isEqualToString:?]) && ((studentVerifier = self->_studentVerifier, studentVerifier == v4->_studentVerifier) || [(NSString *)studentVerifier isEqualToString:?]) && self->_hasFamily == v4->_hasFamily && self->_hasFamilyGreaterThanOneMember == v4->_hasFamilyGreaterThanOneMember && self->_isHeadOfHousehold == v4->_isHeadOfHousehold && self->_isMatchEnabled == v4->_isMatchEnabled && ((expirationDate = self->_expirationDate, expirationDate == v4->_expirationDate) || [(NSDate *)expirationDate isEqualToDate:?]) && ((initialPurchaseTimestamp = self->_initialPurchaseTimestamp, initialPurchaseTimestamp == v4->_initialPurchaseTimestamp) || [(NSDate *)initialPurchaseTimestamp isEqualToDate:?]) && ((serviceBeginsTimestamp = self->_serviceBeginsTimestamp, serviceBeginsTimestamp == v4->_serviceBeginsTimestamp) || [(NSDate *)serviceBeginsTimestamp isEqualToDate:?]) && self->_hasOfflineSlots == v4->_hasOfflineSlots && self->_isAutoRenewEnabled == v4->_isAutoRenewEnabled && self->_isInFreePeriod == v4->_isInFreePeriod && self->_isInFreeTrial == v4->_isInFreeTrial && self->_isEligibleForFreeTrial == v4->_isEligibleForFreeTrial && self->_isPurchaser == v4->_isPurchaser && ((partner = self->_partner, partner == v4->_partner) || [(NSString *)partner isEqualToString:?]) && self->_carrierBundlingStatusType == v4->_carrierBundlingStatusType && self->_reasonType == v4->_reasonType && self->_sourceType == v4->_sourceType && self->_statusType == v4->_statusType && self->_isAdministrator == v4->_isAdministrator && self->_isDiscoveryModeEligible == v4->_isDiscoveryModeEligible && ((termsStatusList = self->_termsStatusList, termsStatusList == v4->_termsStatusList) || [(NSArray *)termsStatusList isEqualToArray:?]) && ((phoneNumber = self->_phoneNumber, phoneNumber == v4->_phoneNumber) || [(NSString *)phoneNumber isEqualToString:?]) && ((cellularOperatorName = self->_cellularOperatorName, cellularOperatorName == v4->_cellularOperatorName) || [(NSString *)cellularOperatorName isEqualToString:?]) && ((sessionIdentifier = self->_sessionIdentifier, sessionIdentifier == v4->_sessionIdentifier) || [(NSString *)sessionIdentifier isEqualToString:?]) && self->_carrierBundlingErrorCode == v4->_carrierBundlingErrorCode && self->_isPartOfBundle == v4->_isPartOfBundle && self->_isBundleOwner == v4->_isBundleOwner)
    {
      eligibleOffers = self->_eligibleOffers;
      v18 = v4->_eligibleOffers;
      v19 = eligibleOffers;
      v20 = v19;
      if (v19 == v18)
      {
        v21 = 1;
      }

      else
      {
        v21 = [(NSArray *)v19 isEqual:v18];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICMusicSubscriptionStatus *)self isEqualToStatus:v4];
  }

  return v5;
}

- (ICMusicSubscriptionStatus)initWithResponseDictionary:(id)a3
{
  v140 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICMusicSubscriptionStatus *)self _init];

  v125 = v5;
  if (!v5)
  {
    goto LABEL_135;
  }

  v6 = v4;
  v7 = [v6 objectForKey:@"_ICMusicSubscriptionStatusAdditionalProperties"];
  v8 = v6;
  if (v7)
  {
    v9 = [v6 mutableCopy];
    [v9 removeObjectForKey:@"_ICMusicSubscriptionStatusAdditionalProperties"];
    v8 = [v9 copy];
  }

  v10 = [v8 copy];
  v11 = *(v125 + 1);
  *(v125 + 1) = v10;

  v12 = [v6 objectForKey:@"account"];
  if (_NSIsNSDictionary())
  {
    v13 = [v12 objectForKey:@"isMinor"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 16) = [v13 BOOLValue];
    }

    v14 = [v12 objectForKey:@"studentExpirationDate"];
    v15 = [v12 objectForKey:@"verifications"];
    if (_NSIsNSDictionary())
    {
      v16 = [v15 objectForKey:@"student"];
      if (_NSIsNSDictionary())
      {
        v95 = v6;
        v17 = [v16 objectForKey:@"verificationId"];
        if (_NSIsNSString())
        {
          v18 = [v17 copy];
          v19 = *(v125 + 4);
          *(v125 + 4) = v18;
        }

        v117 = v4;
        v20 = [v16 objectForKey:@"verifier"];
        if (_NSIsNSString())
        {
          v21 = [v20 copy];
          v22 = *(v125 + 5);
          *(v125 + 5) = v21;
        }

        v23 = [v16 objectForKey:@"expirationDate"];

        v14 = v23;
        v6 = v95;
        v4 = v117;
      }
    }

    v24 = [ICMusicSubscriptionStatus dateFromMilliseconds:v14];
    if (v24)
    {
      objc_storeStrong(v125 + 3, v24);
    }
  }

  v25 = [v6 objectForKey:@"family"];
  if (_NSIsNSDictionary())
  {
    v26 = [v25 objectForKey:@"hasFamily"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 48) = [v26 BOOLValue];
    }

    v27 = [v25 objectForKey:@"hasFamilyGreaterThanOneMember"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 49) = [v27 BOOLValue];
    }

    v28 = [v25 objectForKey:@"isHoH"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 50) = [v28 BOOLValue];
    }
  }

  v29 = [v6 objectForKey:@"match"];
  if (_NSIsNSDictionary())
  {
    v30 = [v29 objectForKey:@"status"];
    v31 = _NSIsNSString();
    if (v31)
    {
      LOBYTE(v31) = [v30 isEqualToString:@"Enabled"];
    }

    *(v125 + 51) = v31;
  }

  v32 = [v6 objectForKey:@"music"];
  v122 = v12;
  v123 = v8;
  v120 = v29;
  v121 = v25;
  v119 = v32;
  if (_NSIsNSDictionary())
  {
    v114 = [v32 objectForKey:@"expirationDate"];
    v33 = [ICMusicSubscriptionStatus dateFromMilliseconds:?];
    if (v33)
    {
      objc_storeStrong(v125 + 7, v33);
    }

    v104 = v33;
    v103 = [v32 objectForKey:@"initialPurchaseTimestamp"];
    v34 = [ICMusicSubscriptionStatus dateFromMilliseconds:?];
    if (v34)
    {
      objc_storeStrong(v125 + 8, v34);
    }

    v102 = v34;
    v35 = [v32 objectForKey:@"serviceBeginsTimestamp"];
    v36 = [ICMusicSubscriptionStatus dateFromMilliseconds:v35];
    if (v36)
    {
      objc_storeStrong(v125 + 9, v36);
    }

    v100 = v36;
    v113 = [v32 objectForKey:@"hasOfflineSlots"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 80) = [v113 BOOLValue];
    }

    v112 = [v32 objectForKey:@"isAutoRenewEnabled"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 81) = [v112 BOOLValue];
    }

    v111 = [v32 objectForKey:@"isInFreePeriod"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 82) = [v111 BOOLValue];
    }

    v37 = v4;
    v110 = [v32 objectForKey:@"isInFreeTrial"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 83) = [v110 BOOLValue];
    }

    v38 = v7;
    v109 = [v32 objectForKey:@"isNotEligibleForFreeTrial"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 84) = [v109 BOOLValue] ^ 1;
    }

    v39 = v8;
    v108 = [v32 objectForKey:@"isPurchaser"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 85) = [v108 BOOLValue];
    }

    v40 = v35;
    v107 = [v32 objectForKey:@"partner"];
    if (_NSIsNSString())
    {
      v41 = [v107 copy];
      v42 = *(v125 + 11);
      *(v125 + 11) = v41;
    }

    v43 = [v32 objectForKey:@"source"];
    v99 = v43;
    if (_NSIsNSString())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    v46 = v45;
    v101 = v40;
    v8 = v39;
    if (v45)
    {
      if ([v45 isEqualToString:@"Apple"])
      {
        v47 = 1;
      }

      else
      {
        if (![v46 isEqualToString:@"Carrier"])
        {
          goto LABEL_60;
        }

        v47 = 2;
      }

      *(v125 + 14) = v47;
    }

LABEL_60:
    v98 = v46;
    v48 = [v32 objectForKey:@"reason"];
    v97 = v48;
    if (_NSIsNSString())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v116 = v49;
    v106 = [v32 objectForKey:@"status"];
    if (!_NSIsNSString())
    {
      goto LABEL_76;
    }

    if ([v106 isEqualToString:@"Enabled"])
    {
      *(v125 + 15) = 1;
      v50 = *(v125 + 14);
      if (v50)
      {
        v8 = v123;
        if (v50 != 2)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      v8 = v123;
      if ([v116 isEqualToString:@"Carrier"])
      {
LABEL_75:
        *(v125 + 12) = 1;
      }

LABEL_76:
      v105 = [v32 objectForKey:@"isUnlinked"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v105 BOOLValue])
      {
        *(v125 + 12) = 2;
      }

      if (!v116)
      {
        goto LABEL_89;
      }

      if ([v116 isEqualToString:@"Individual"])
      {
        v52 = 1;
      }

      else if ([v116 isEqualToString:@"Family"])
      {
        v52 = 2;
      }

      else if ([v116 isEqualToString:@"Member"])
      {
        v52 = 3;
      }

      else
      {
        if (![v116 isEqualToString:@"InvalidToken"])
        {
LABEL_89:
          v53 = v122;
          *(v125 + 176) = [v32 ic_BOOLValueForKey:@"isPartOfBundle"];
          *(v125 + 177) = [v32 ic_BOOLValueForKey:@"ownsBundle"];
          v54 = [v32 objectForKey:@"eligibleOffers"];
          v55 = v114;
          if (_NSIsNSArray())
          {
            v96 = v6;
            v115 = v38;
            v56 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v54, "count")}];
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v57 = v54;
            v58 = [v57 countByEnumeratingWithState:&v130 objects:v139 count:16];
            v59 = v54;
            if (v58)
            {
              v60 = v58;
              v61 = *v131;
              do
              {
                for (i = 0; i != v60; ++i)
                {
                  if (*v131 != v61)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v63 = *(*(&v130 + 1) + 8 * i);
                  if (_NSIsNSString())
                  {
                    [v56 addObject:v63];
                  }

                  else
                  {
                    v64 = v59;
                    v65 = os_log_create("com.apple.amp.iTunesCloud", "Default");
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543618;
                      v136 = v125;
                      v137 = 2114;
                      v138 = v63;
                      _os_log_impl(&dword_1B4491000, v65, OS_LOG_TYPE_FAULT, "%{public}@ skipping invalid offer value %{public}@", buf, 0x16u);
                    }

                    v59 = v64;
                  }
                }

                v60 = [v57 countByEnumeratingWithState:&v130 objects:v139 count:16];
              }

              while (v60);
            }

            v66 = [v56 copy];
            v67 = *(v125 + 23);
            *(v125 + 23) = v66;

            v53 = v122;
            v8 = v123;
            v6 = v96;
            v25 = v121;
            v54 = v59;
            v55 = v114;
            v38 = v115;
          }

          v7 = v38;
          v4 = v37;
          v12 = v53;
          goto LABEL_104;
        }

        v52 = 4;
      }

      *(v125 + 13) = v52;
      goto LABEL_89;
    }

    if ([v106 isEqualToString:@"Glide"])
    {
      v51 = 3;
    }

    else
    {
      if (![v106 isEqualToString:@"Disabled"])
      {
        if ([v106 isEqualToString:@"Discovery"])
        {
          *(v125 + 129) = 1;
        }

        else if ([v106 isEqualToString:@"Unlinked"])
        {
          *(v125 + 15) = 1;
          *(v125 + 12) = 2;
        }

        else
        {
          *(v125 + 15) = 0;
        }

        goto LABEL_73;
      }

      v51 = 2;
    }

    *(v125 + 15) = v51;
LABEL_73:
    v8 = v123;
    goto LABEL_76;
  }

LABEL_104:
  v68 = [v6 objectForKey:@"terms"];
  v124 = v68;
  if (_NSIsNSArray())
  {
    v69 = v6;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v70 = v68;
    v71 = [v70 countByEnumeratingWithState:&v126 objects:v134 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = 0;
      v74 = *v127;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v127 != v74)
          {
            objc_enumerationMutation(v70);
          }

          v76 = *(*(&v126 + 1) + 8 * j);
          if (_NSIsNSDictionary())
          {
            v77 = [[ICMusicSubscriptionStatusTerms alloc] initWithResponseTermsDictionary:v76];
            if (v77)
            {
              if (!v73)
              {
                v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v70, "count")}];
              }

              [v73 addObject:v77];
            }
          }
        }

        v72 = [v70 countByEnumeratingWithState:&v126 objects:v134 count:16];
      }

      while (v72);
    }

    else
    {
      v73 = 0;
    }

    v12 = v122;
    v8 = v123;
    v6 = v69;
    v29 = v120;
    v25 = v121;
  }

  else
  {
    v73 = 0;
  }

  objc_storeStrong(v125 + 17, v73);
  v78 = [v6 ic_numberValueForKey:@"acceptSilentAuth"];
  v79 = *(v125 + 25);
  *(v125 + 25) = v78;

  if (_NSIsNSDictionary())
  {
    v80 = v7;
    v81 = [v80 objectForKey:@"phoneNumber"];
    if (_NSIsNSString())
    {
      v82 = [v81 copy];
      v83 = *(v125 + 18);
      *(v125 + 18) = v82;
    }

    v84 = [v80 objectForKey:@"cellularOperatorName"];
    if (_NSIsNSString())
    {
      v85 = [v84 copy];
      v86 = *(v125 + 19);
      *(v125 + 19) = v85;
    }

    v118 = v4;
    v87 = [v80 objectForKey:@"sessionIdentifier"];
    if (_NSIsNSString())
    {
      v88 = [v87 copy];
      v89 = *(v125 + 20);
      *(v125 + 20) = v88;
    }

    v90 = v12;
    v91 = [v80 objectForKey:@"carrierBundlingErrorCode"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 21) = [v91 integerValue];
    }

    v92 = [v80 objectForKey:@"carrierBundlingStatusType"];
    if (objc_opt_respondsToSelector())
    {
      *(v125 + 12) = [v92 integerValue];
    }

    v8 = v123;
    v12 = v90;
    v29 = v120;
    v25 = v121;
    v4 = v118;
  }

LABEL_135:
  v93 = v125;

  return v93;
}

@end