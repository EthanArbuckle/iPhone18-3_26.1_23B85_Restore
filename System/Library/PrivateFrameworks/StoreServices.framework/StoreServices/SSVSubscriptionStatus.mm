@interface SSVSubscriptionStatus
- (BOOL)isEqualToStatus:(id)status;
- (NSDate)subscriptionExpirationDate;
- (NSString)description;
- (SSVSubscriptionStatus)initWithUserDefaultsRepresentation:(id)representation;
- (SSVSubscriptionStatus)initWithXPCEncoding:(id)encoding;
- (id)copyUserDefaultsRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)_setSubscribed:(BOOL)subscribed;
- (void)resetAccountBasedProperties;
- (void)resetCarrierBundlingProperties;
- (void)setValuesUsingStatusDictionary:(id)dictionary;
@end

@implementation SSVSubscriptionStatus

- (NSDate)subscriptionExpirationDate
{
  if (self->_subscriptionExpirationTime <= 2.22044605e-16)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v2];
  }

  return v4;
}

- (NSString)description
{
  accountStatus = self->_accountStatus;
  if (accountStatus > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E84B2930[accountStatus];
  }

  carrierBundlingStatus = self->_carrierBundlingStatus;
  if (carrierBundlingStatus > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E84B2958[carrierBundlingStatus];
  }

  v7 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = SSVSubscriptionStatus;
  v8 = [(SSVSubscriptionStatus *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ accountIdentifier %@ accountStatus %@ carrierBundlingStatus: %@", v8, self->_accountIdentifier, v4, v6];

  return v9;
}

- (SSVSubscriptionStatus)initWithUserDefaultsRepresentation:(id)representation
{
  v43 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41.receiver = self;
    v41.super_class = SSVSubscriptionStatus;
    v5 = [(SSVSubscriptionStatus *)&v41 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"aid"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSVSubscriptionStatus *)v5 setAccountIdentifier:v6];
      }

      v7 = [representationCopy objectForKey:@"astv"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setAcceptedStoreTermsVersion:](v5, "setAcceptedStoreTermsVersion:", [v7 unsignedLongLongValue]);
      }

      v8 = [representationCopy objectForKey:@"cb"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setCarrierBundlingStatus:](v5, "setCarrierBundlingStatus:", [v8 integerValue]);
      }

      v9 = [representationCopy objectForKey:@"cbec"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setCarrierBundlingErrorCode:](v5, "setCarrierBundlingErrorCode:", [v9 integerValue]);
      }

      v10 = [representationCopy objectForKey:@"con"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSVSubscriptionStatus *)v5 setCellularOperatorName:v10];
      }

      v11 = [representationCopy objectForKey:@"dm"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setDiscoveryModeEligible:](v5, "setDiscoveryModeEligible:", [v11 BOOLValue]);
      }

      v12 = [representationCopy objectForKey:@"exp"];

      if (objc_opt_respondsToSelector())
      {
        v13 = objc_alloc(MEMORY[0x1E695DF00]);
        [v12 doubleValue];
        v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
        [(SSVSubscriptionStatus *)v5 setSubscriptionExpirationDate:v14];
      }

      v15 = [representationCopy objectForKey:@"hoh"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setFamilyOrganizer:](v5, "setFamilyOrganizer:", [v15 BOOLValue]);
      }

      v16 = [representationCopy objectForKey:@"fs"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setFamilySubscription:](v5, "setFamilySubscription:", [v16 BOOLValue]);
      }

      v17 = [representationCopy objectForKey:@"ft"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setFreeTrialIneligible:](v5, "setFreeTrialIneligible:", [v17 BOOLValue]);
      }

      v18 = [representationCopy objectForKey:@"hf"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setHasFamily:](v5, "setHasFamily:", [v18 BOOLValue]);
      }

      v19 = [representationCopy objectForKey:@"hfm"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setHasFamilyMembers:](v5, "setHasFamilyMembers:", [v19 BOOLValue]);
      }

      v20 = [representationCopy objectForKey:@"hos"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setHasOfflineSlots:](v5, "setHasOfflineSlots:", [v20 BOOLValue]);
      }

      v21 = [representationCopy objectForKey:@"lstv"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setLatestStoreTermsVersion:](v5, "setLatestStoreTermsVersion:", [v21 unsignedLongLongValue]);
      }

      v22 = [representationCopy objectForKey:@"pn"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSVSubscriptionStatus *)v5 setPhoneNumber:v22];
      }

      v23 = [representationCopy objectForKey:@"pur"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setSubscriptionPurchaser:](v5, "setSubscriptionPurchaser:", [v23 BOOLValue]);
      }

      v24 = [representationCopy objectForKey:@"sid"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSVSubscriptionStatus *)v5 setSessionIdentifier:v24];
      }

      v25 = [representationCopy objectForKey:@"ast"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SSVSubscriptionStatus setAccountStatus:](v5, "setAccountStatus:", [v25 integerValue]);
      }

      else
      {
        v26 = [representationCopy objectForKey:@"sb"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[SSVSubscriptionStatus _setSubscribed:](v5, "_setSubscribed:", [v26 BOOLValue]);
        }

        v25 = v26;
      }

      v27 = [representationCopy objectForKey:@"prms"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v38;
          do
          {
            v33 = 0;
            do
            {
              if (*v38 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v37 + 1) + 8 * v33);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v28 addObject:{v34, v37}];
              }

              ++v33;
            }

            while (v31 != v33);
            v31 = [v29 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v31);
        }

        [(SSVSubscriptionStatus *)v5 setAccountPermissions:v28];
      }

      v35 = [representationCopy objectForKey:{@"raw", v37}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSVSubscriptionStatus *)v5 setRawResponseData:v35];
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (id)copyUserDefaultsRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v3 setObject:accountIdentifier forKey:@"aid"];
  }

  accountPermissions = self->_accountPermissions;
  if (accountPermissions)
  {
    [v4 setObject:accountPermissions forKey:@"prms"];
  }

  cellularOperatorName = self->_cellularOperatorName;
  if (cellularOperatorName)
  {
    [v4 setObject:cellularOperatorName forKey:@"con"];
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v4 setObject:phoneNumber forKey:@"pn"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v4 setObject:sessionIdentifier forKey:@"sid"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_accountStatus];
  [v4 setObject:v10 forKey:@"ast"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_acceptedStoreTermsVersion];
  [v4 setObject:v11 forKey:@"astv"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_carrierBundlingStatus];
  [v4 setObject:v12 forKey:@"cb"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_carrierBundlingErrorCode];
  [v4 setObject:v13 forKey:@"cbec"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_discoveryModeEligible];
  [v4 setObject:v14 forKey:@"dm"];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_subscriptionExpirationTime];
  [v4 setObject:v15 forKey:@"exp"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_familyOrganizer];
  [v4 setObject:v16 forKey:@"hoh"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_familySubscription];
  [v4 setObject:v17 forKey:@"fs"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_freeTrialIneligible];
  [v4 setObject:v18 forKey:@"ft"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasFamily];
  [v4 setObject:v19 forKey:@"hf"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasFamilyMembers];
  [v4 setObject:v20 forKey:@"hfm"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasOfflineSlots];
  [v4 setObject:v21 forKey:@"hos"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_latestStoreTermsVersion];
  [v4 setObject:v22 forKey:@"lstv"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_subscriptionPurchaser];
  [v4 setObject:v23 forKey:@"pur"];

  rawResponseData = self->_rawResponseData;
  if (rawResponseData)
  {
    [v4 setObject:rawResponseData forKey:@"raw"];
  }

  return v4;
}

- (void)resetAccountBasedProperties
{
  [(SSVSubscriptionStatus *)self setAccountIdentifier:0];
  [(SSVSubscriptionStatus *)self setAccountPermissions:0];
  [(SSVSubscriptionStatus *)self setAccountStatus:0];
  [(SSVSubscriptionStatus *)self setFamilyOrganizer:0];
  [(SSVSubscriptionStatus *)self setFamilySubscription:0];
  [(SSVSubscriptionStatus *)self setFreeTrialIneligible:0];
  [(SSVSubscriptionStatus *)self setHasFamily:0];
  [(SSVSubscriptionStatus *)self setHasFamilyMembers:0];
  [(SSVSubscriptionStatus *)self setHasOfflineSlots:0];
  [(SSVSubscriptionStatus *)self setSubscriptionExpirationDate:0];
  [(SSVSubscriptionStatus *)self setAcceptedStoreTermsVersion:0];
  [(SSVSubscriptionStatus *)self setLatestStoreTermsVersion:0];

  [(SSVSubscriptionStatus *)self setSubscriptionPurchaser:0];
}

- (void)resetCarrierBundlingProperties
{
  [(SSVSubscriptionStatus *)self setCarrierBundlingStatus:0];
  [(SSVSubscriptionStatus *)self setCarrierBundlingErrorCode:0];
  [(SSVSubscriptionStatus *)self setCellularOperatorName:0];
  [(SSVSubscriptionStatus *)self setPhoneNumber:0];

  [(SSVSubscriptionStatus *)self setSessionIdentifier:0];
}

- (void)setValuesUsingStatusDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [(SSVSubscriptionStatus *)self setRawResponseData:dictionaryCopy];
  v5 = [dictionaryCopy objectForKey:@"music"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [v5 objectForKey:@"reason"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKey:@"expirationDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v8 unsignedLongLongValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    unsignedLongLongValue = strtoull([v8 UTF8String], 0, 10);
  }

  if (unsignedLongLongValue)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:unsignedLongLongValue / 1000.0];
    [(SSVSubscriptionStatus *)self setSubscriptionExpirationDate:v10];
  }

LABEL_12:
  v40 = v8;
  v11 = [v5 objectForKey:@"isPurchaser"];

  if (objc_opt_respondsToSelector())
  {
    -[SSVSubscriptionStatus setSubscriptionPurchaser:](self, "setSubscriptionPurchaser:", [v11 BOOLValue]);
  }

  v12 = [v5 objectForKey:@"hasOfflineSlots"];

  if (objc_opt_respondsToSelector())
  {
    -[SSVSubscriptionStatus setHasOfflineSlots:](self, "setHasOfflineSlots:", [v12 BOOLValue]);
  }

  v13 = [v5 objectForKey:@"isNotEligibleForFreeTrial"];

  if (objc_opt_respondsToSelector())
  {
    -[SSVSubscriptionStatus setFreeTrialIneligible:](self, "setFreeTrialIneligible:", [v13 BOOLValue]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v5 objectForKey:@"status"];
  }

  else
  {
    v14 = 0;
  }

  objc_opt_class();
  v42 = v14;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [dictionaryCopy objectForKey:@"isFuseEnabled"];
    if (objc_opt_respondsToSelector())
    {
      [(SSVSubscriptionStatus *)self setAccountStatus:3];
    }

    v14 = v42;
    goto LABEL_37;
  }

  if ([v14 isEqualToString:@"Enabled"])
  {
    [(SSVSubscriptionStatus *)self setAccountStatus:3];
    v15 = [v5 objectForKey:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v15 isEqualToString:@"Apple"])
      {
        goto LABEL_28;
      }

      if ([v15 isEqualToString:@"Carrier"])
      {
LABEL_27:
        [(SSVSubscriptionStatus *)self setCarrierBundlingStatus:1];
        goto LABEL_28;
      }
    }

    if ([v7 isEqualToString:@"Carrier"])
    {
      goto LABEL_27;
    }

LABEL_28:
    if ([v7 isEqualToString:@"Family"])
    {
      [(SSVSubscriptionStatus *)self setFamilySubscription:1];
    }

    goto LABEL_37;
  }

  if ([v14 isEqualToString:@"Glide"])
  {
    selfCopy3 = self;
    v18 = 4;
  }

  else
  {
    if (![v14 isEqualToString:@"Disabled"])
    {
      if ([v14 isEqualToString:@"Discovery"])
      {
        [(SSVSubscriptionStatus *)self setDiscoveryModeEligible:1];
      }

      else if ([v14 isEqualToString:@"Unlinked"])
      {
        [(SSVSubscriptionStatus *)self setCarrierBundlingStatus:4];
      }

      goto LABEL_37;
    }

    if ([v7 isEqualToString:@"InvalidToken"])
    {
      selfCopy3 = self;
      v18 = 1;
    }

    else
    {
      selfCopy3 = self;
      v18 = 2;
    }
  }

  [(SSVSubscriptionStatus *)selfCopy3 setAccountStatus:v18];
LABEL_37:
  v19 = [dictionaryCopy objectForKey:@"family"];
  objc_opt_class();
  v43 = v19;
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 objectForKey:@"hasFamily"];
    if (objc_opt_respondsToSelector())
    {
      -[SSVSubscriptionStatus setHasFamily:](self, "setHasFamily:", [v20 BOOLValue]);
    }

    v21 = [v19 objectForKey:@"hasFamilyGreaterThanOneMember"];

    if (objc_opt_respondsToSelector())
    {
      -[SSVSubscriptionStatus setHasFamilyMembers:](self, "setHasFamilyMembers:", [v21 BOOLValue]);
    }

    v22 = [v19 objectForKey:@"isHoH"];

    if (objc_opt_respondsToSelector())
    {
      -[SSVSubscriptionStatus setFamilyOrganizer:](self, "setFamilyOrganizer:", [v22 BOOLValue]);
    }

    v14 = v42;
  }

  v23 = [dictionaryCopy objectForKey:@"terms"];
  objc_opt_class();
  v41 = v7;
  v39 = v23;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    unsignedLongLongValue2 = 0;
    unsignedLongLongValue3 = 0;
    goto LABEL_73;
  }

  v38 = v13;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = v23;
  unsignedLongLongValue3 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!unsignedLongLongValue3)
  {
    unsignedLongLongValue2 = 0;
    v31 = v24;
    goto LABEL_72;
  }

  selfCopy4 = self;
  v37 = dictionaryCopy;
  v26 = *v45;
LABEL_48:
  v27 = 0;
  while (1)
  {
    if (*v45 != v26)
    {
      objc_enumerationMutation(v24);
    }

    v28 = *(*(&v44 + 1) + 8 * v27);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }

    v29 = [v28 objectForKey:@"type"];
    if (![v29 compare:@"Store" options:1])
    {
      break;
    }

LABEL_54:
    if (unsignedLongLongValue3 == ++v27)
    {
      unsignedLongLongValue3 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (unsignedLongLongValue3)
      {
        goto LABEL_48;
      }

      unsignedLongLongValue2 = 0;
      v31 = v24;
      self = selfCopy4;
      dictionaryCopy = v37;
      goto LABEL_71;
    }
  }

  v31 = v28;

  if (!v31)
  {
    unsignedLongLongValue2 = 0;
    unsignedLongLongValue3 = 0;
    self = selfCopy4;
    dictionaryCopy = v37;
    v13 = v38;
    v14 = v42;
    goto LABEL_73;
  }

  v32 = [v31 objectForKey:@"agreedToTerms"];
  self = selfCopy4;
  dictionaryCopy = v37;
  if (objc_opt_respondsToSelector())
  {
    unsignedLongLongValue2 = [v32 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue2 = 0;
  }

  v33 = [v31 objectForKey:@"latestTerms"];

  if (objc_opt_respondsToSelector())
  {
    unsignedLongLongValue3 = [v33 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue3 = 0;
  }

LABEL_71:
  v14 = v42;
LABEL_72:

  v13 = v38;
LABEL_73:
  [(SSVSubscriptionStatus *)self setAcceptedStoreTermsVersion:unsignedLongLongValue2];
  [(SSVSubscriptionStatus *)self setLatestStoreTermsVersion:unsignedLongLongValue3];
  v34 = [v5 objectForKey:@"isAdmin"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v34 BOOLValue])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"admin", @"social", 0}];
    [(SSVSubscriptionStatus *)self setAccountPermissions:v35];

    v14 = v42;
  }
}

- (BOOL)isEqualToStatus:(id)status
{
  statusCopy = status;
  rawResponseData = [(SSVSubscriptionStatus *)self rawResponseData];
  rawResponseData2 = [statusCopy rawResponseData];

  v7 = (rawResponseData | rawResponseData2) == 0;
  if (rawResponseData2)
  {
    v7 = [rawResponseData isEqualToDictionary:rawResponseData2];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  accountIdentifier = [(SSVSubscriptionStatus *)self accountIdentifier];
  [v4 setAccountIdentifier:accountIdentifier];

  accountPermissions = [(SSVSubscriptionStatus *)self accountPermissions];
  [v4 setAccountPermissions:accountPermissions];

  [v4 setAccountStatus:{-[SSVSubscriptionStatus accountStatus](self, "accountStatus")}];
  [v4 setAcceptedStoreTermsVersion:{-[SSVSubscriptionStatus acceptedStoreTermsVersion](self, "acceptedStoreTermsVersion")}];
  [v4 setCarrierBundlingStatus:{-[SSVSubscriptionStatus carrierBundlingStatus](self, "carrierBundlingStatus")}];
  [v4 setCarrierBundlingErrorCode:{-[SSVSubscriptionStatus carrierBundlingErrorCode](self, "carrierBundlingErrorCode")}];
  cellularOperatorName = [(SSVSubscriptionStatus *)self cellularOperatorName];
  [v4 setCellularOperatorName:cellularOperatorName];

  [v4 setDiscoveryModeEligible:{-[SSVSubscriptionStatus isDiscoveryModeEligible](self, "isDiscoveryModeEligible")}];
  [v4 setFamilyOrganizer:{-[SSVSubscriptionStatus isFamilyOrganizer](self, "isFamilyOrganizer")}];
  [v4 setFamilySubscription:{-[SSVSubscriptionStatus isFamilySubscription](self, "isFamilySubscription")}];
  [v4 setFreeTrialIneligible:{-[SSVSubscriptionStatus isFreeTrialIneligible](self, "isFreeTrialIneligible")}];
  [v4 setHasFamily:{-[SSVSubscriptionStatus hasFamily](self, "hasFamily")}];
  [v4 setHasFamilyMembers:{-[SSVSubscriptionStatus hasFamilyMembers](self, "hasFamilyMembers")}];
  [v4 setHasOfflineSlots:{-[SSVSubscriptionStatus hasOfflineSlots](self, "hasOfflineSlots")}];
  [v4 setLatestStoreTermsVersion:{-[SSVSubscriptionStatus latestStoreTermsVersion](self, "latestStoreTermsVersion")}];
  phoneNumber = [(SSVSubscriptionStatus *)self phoneNumber];
  [v4 setPhoneNumber:phoneNumber];

  rawResponseData = [(SSVSubscriptionStatus *)self rawResponseData];
  [v4 setRawResponseData:rawResponseData];

  sessionIdentifier = [(SSVSubscriptionStatus *)self sessionIdentifier];
  [v4 setSessionIdentifier:sessionIdentifier];

  v4[12] = self->_subscriptionExpirationTime;
  [v4 setSubscriptionPurchaser:{-[SSVSubscriptionStatus isSubscriptionPurchaser](self, "isSubscriptionPurchaser")}];
  return v4;
}

- (SSVSubscriptionStatus)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v28.receiver = self;
    v28.super_class = SSVSubscriptionStatus;
    v6 = [(SSVSubscriptionStatus *)&v28 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v9;

      v6->_accountStatus = xpc_dictionary_get_int64(v5, "1");
      v6->_acceptedStoreTermsVersion = xpc_dictionary_get_uint64(v5, "13");
      v6->_carrierBundlingStatus = xpc_dictionary_get_int64(v5, "2");
      v6->_carrierBundlingErrorCode = xpc_dictionary_get_int64(v5, "19");
      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v11);
      cellularOperatorName = v6->_cellularOperatorName;
      v6->_cellularOperatorName = v12;

      v6->_discoveryModeEligible = xpc_dictionary_get_BOOL(v5, "3");
      v6->_familyOrganizer = xpc_dictionary_get_BOOL(v5, "9");
      v6->_familySubscription = xpc_dictionary_get_BOOL(v5, "8");
      v6->_freeTrialIneligible = xpc_dictionary_get_BOOL(v5, "18");
      v6->_hasFamily = xpc_dictionary_get_BOOL(v5, "10");
      v6->_hasFamilyMembers = xpc_dictionary_get_BOOL(v5, "11");
      v6->_hasOfflineSlots = xpc_dictionary_get_BOOL(v5, "16");
      v6->_latestStoreTermsVersion = xpc_dictionary_get_uint64(v5, "14");
      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "5", v14);
      phoneNumber = v6->_phoneNumber;
      v6->_phoneNumber = v15;

      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "17", v17);
      rawResponseData = v6->_rawResponseData;
      v6->_rawResponseData = v18;

      v20 = objc_opt_class();
      v21 = SSXPCDictionaryCopyObjectWithClass(v5, "6", v20);
      sessionIdentifier = v6->_sessionIdentifier;
      v6->_sessionIdentifier = v21;

      v6->_subscriptionExpirationTime = xpc_dictionary_get_double(v5, "12");
      v6->_subscriptionPurchaser = xpc_dictionary_get_BOOL(v5, "15");
      v23 = xpc_dictionary_get_value(v5, "7");
      v24 = objc_opt_class();
      v25 = SSXPCCreateNSArrayFromCFTypeArray(v23, v24);
      v26 = [v25 copy];
      accountPermissions = v6->_accountPermissions;
      v6->_accountPermissions = v26;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetObject(v3, "7", self->_accountPermissions);
  xpc_dictionary_set_int64(v3, "1", [(SSVSubscriptionStatus *)self accountStatus]);
  xpc_dictionary_set_uint64(v3, "13", self->_acceptedStoreTermsVersion);
  xpc_dictionary_set_int64(v3, "2", [(SSVSubscriptionStatus *)self carrierBundlingStatus]);
  xpc_dictionary_set_int64(v3, "19", [(SSVSubscriptionStatus *)self carrierBundlingErrorCode]);
  SSXPCDictionarySetObject(v3, "4", self->_cellularOperatorName);
  xpc_dictionary_set_BOOL(v3, "3", [(SSVSubscriptionStatus *)self isDiscoveryModeEligible]);
  xpc_dictionary_set_BOOL(v3, "9", [(SSVSubscriptionStatus *)self isFamilyOrganizer]);
  xpc_dictionary_set_BOOL(v3, "8", [(SSVSubscriptionStatus *)self isFamilySubscription]);
  xpc_dictionary_set_BOOL(v3, "18", [(SSVSubscriptionStatus *)self isFreeTrialIneligible]);
  xpc_dictionary_set_BOOL(v3, "10", [(SSVSubscriptionStatus *)self hasFamily]);
  xpc_dictionary_set_BOOL(v3, "11", [(SSVSubscriptionStatus *)self hasFamilyMembers]);
  xpc_dictionary_set_BOOL(v3, "16", [(SSVSubscriptionStatus *)self hasOfflineSlots]);
  xpc_dictionary_set_uint64(v3, "14", self->_latestStoreTermsVersion);
  SSXPCDictionarySetObject(v3, "5", self->_phoneNumber);
  SSXPCDictionarySetObject(v3, "17", self->_rawResponseData);
  SSXPCDictionarySetObject(v3, "6", self->_sessionIdentifier);
  xpc_dictionary_set_double(v3, "12", self->_subscriptionExpirationTime);
  xpc_dictionary_set_BOOL(v3, "15", self->_subscriptionPurchaser);
  return v3;
}

- (void)_setSubscribed:(BOOL)subscribed
{
  if (subscribed)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(SSVSubscriptionStatus *)self setAccountStatus:v3];
}

@end