@interface SUScriptSubscriptionStatusResponse
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SUScriptSubscriptionStatusResponse)initWithSubscriptionStatus:(id)status isFinal:(BOOL)final;
- (id)scriptAttributeKeys;
- (unint64_t)hash;
@end

@implementation SUScriptSubscriptionStatusResponse

- (SUScriptSubscriptionStatusResponse)initWithSubscriptionStatus:(id)status isFinal:(BOOL)final
{
  finalCopy = final;
  v56 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v54.receiver = self;
  v54.super_class = SUScriptSubscriptionStatusResponse;
  v7 = [(SUScriptObject *)&v54 init];
  if (!v7)
  {
    goto LABEL_61;
  }

  sessionIdentifier = [statusCopy sessionIdentifier];
  v9 = [sessionIdentifier copy];
  sessionIdentifier = v7->_sessionIdentifier;
  v7->_sessionIdentifier = v9;

  statusType = [statusCopy statusType];
  reasonType = [statusCopy reasonType];
  if (statusType == 2)
  {
    if (reasonType == 4)
    {
      [(SUScriptSubscriptionStatusResponse *)v7 accountStatusNeedsAuthentication];
    }

    else
    {
      [(SUScriptSubscriptionStatusResponse *)v7 accountStatusNotSubscribed];
    }
    accountStatusUnknown = ;
    goto LABEL_11;
  }

  if (statusType != 1)
  {
    if (statusType)
    {
LABEL_12:
      v16 = *MEMORY[0x1E695E4D0];
      v17 = *MEMORY[0x1E695E4C0];
      v18 = *MEMORY[0x1E695E4C0];
      goto LABEL_13;
    }

    accountStatusUnknown = [(SUScriptSubscriptionStatusResponse *)v7 accountStatusUnknown];
LABEL_11:
    accountStatus = v7->_accountStatus;
    v7->_accountStatus = accountStatusUnknown;

    goto LABEL_12;
  }

  accountStatusSubscribed = [(SUScriptSubscriptionStatusResponse *)v7 accountStatusSubscribed];
  v15 = v7->_accountStatus;
  v7->_accountStatus = accountStatusSubscribed;

  v16 = *MEMORY[0x1E695E4D0];
  v17 = *MEMORY[0x1E695E4C0];
  v18 = *MEMORY[0x1E695E4D0];
LABEL_13:
  objc_storeStrong(&v7->_subscribed, v18);
  carrierBundlingStatusType = [statusCopy carrierBundlingStatusType];
  v21 = carrierBundlingStatusType;
  if (carrierBundlingStatusType <= 4)
  {
    objc_storeStrong(&v7->_carrierBundlingStatus, *off_1E8166988[carrierBundlingStatusType]);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statusCopy, "carrierBundlingErrorCode")}];
  carrierBundlingErrorCode = v7->_carrierBundlingErrorCode;
  v7->_carrierBundlingErrorCode = v22;

  if ([statusCopy isDiscoveryModeEligible])
  {
    v24 = v16;
  }

  else
  {
    v24 = v17;
  }

  objc_storeStrong(&v7->_discoveryModeEligible, v24);
  if ([statusCopy isHeadOfHousehold])
  {
    v25 = v16;
  }

  else
  {
    v25 = v17;
  }

  objc_storeStrong(&v7->_familyOrganizer, v25);
  v49 = statusType;
  if (reasonType == 2 && statusType == 1)
  {
    v27 = v16;
  }

  else
  {
    v27 = v17;
  }

  objc_storeStrong(&v7->_familySubscription, v27);
  if ([statusCopy hasFamily])
  {
    v28 = v16;
  }

  else
  {
    v28 = v17;
  }

  objc_storeStrong(&v7->_hasFamily, v28);
  if ([statusCopy hasFamilyGreaterThanOneMember])
  {
    v29 = v16;
  }

  else
  {
    v29 = v17;
  }

  objc_storeStrong(&v7->_hasFamilyMembers, v29);
  [statusCopy termsStatusList];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = v53 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v31)
  {
    v47 = v21;
    v48 = finalCopy;
    v32 = *v51;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v50 + 1) + 8 * i);
        if ([v34 type] == 1)
        {
          v31 = v34;
          goto LABEL_43;
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }

LABEL_43:
    v35 = v48;
    v21 = v47;
  }

  else
  {
    v35 = finalCopy;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "acceptedVersion")}];
  acceptedStoreTermsVersion = v7->_acceptedStoreTermsVersion;
  v7->_acceptedStoreTermsVersion = v36;

  v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "currentVersion")}];
  latestStoreTermsVersion = v7->_latestStoreTermsVersion;
  v7->_latestStoreTermsVersion = v38;

  if (v49 == 1 || v21 - 1 <= 1)
  {
    eligibilityStatusEligible = [(SUScriptSubscriptionStatusResponse *)v7 eligibilityStatusEligible];
  }

  else if (v49 == 2 && v21 == 3)
  {
    eligibilityStatusEligible = [(SUScriptSubscriptionStatusResponse *)v7 eligibilityStatusNotEligible];
  }

  else
  {
    eligibilityStatusEligible = [(SUScriptSubscriptionStatusResponse *)v7 eligibilityStatusUnknown];
  }

  v41 = v35;
  eligibilityStatus = v7->_eligibilityStatus;
  v7->_eligibilityStatus = eligibilityStatusEligible;

  responseDictionary = [statusCopy responseDictionary];
  if (responseDictionary)
  {
    v44 = [[SUScriptDictionary alloc] initWithDictionary:responseDictionary];
  }

  else
  {
    v44 = 0;
  }

  objc_storeStrong(&v7->_rawResponseData, v44);
  if (responseDictionary)
  {
  }

  if (v41)
  {
    v45 = v16;
  }

  else
  {
    v45 = v17;
  }

  objc_storeStrong(&v7->_final, v45);

LABEL_61:
  return v7;
}

- (unint64_t)hash
{
  unsignedLongLongValue = [(NSNumber *)self->_acceptedStoreTermsVersion unsignedLongLongValue];
  v4 = [(NSString *)self->_sessionIdentifier hash]^ unsignedLongLongValue;
  v5 = v4 ^ [(NSString *)self->_accountStatus hash];
  v6 = v5 ^ [self->_subscribed BOOLValue];
  v7 = [(NSString *)self->_carrierBundlingStatus hash];
  v8 = v7 ^ [(NSNumber *)self->_carrierBundlingErrorCode integerValue];
  v9 = v6 ^ v8 ^ [self->_discoveryModeEligible BOOLValue];
  v10 = [(NSString *)self->_eligibilityStatus hash];
  v11 = v10 ^ [self->_familyOrganizer BOOLValue];
  v12 = v9 ^ v11 ^ [self->_familySubscription BOOLValue];
  bOOLValue = [self->_hasFamily BOOLValue];
  v14 = bOOLValue ^ [self->_hasFamilyMembers BOOLValue];
  v15 = v14 ^ [(NSNumber *)self->_latestStoreTermsVersion unsignedLongLongValue];
  dictionary = [(SUScriptDictionary *)self->_rawResponseData dictionary];
  v17 = v12 ^ v15 ^ [dictionary hash];

  return v17 ^ [self->_final BOOLValue];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v24) = 1;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v24) = 0;
    goto LABEL_26;
  }

  v5 = equalCopy;
  unsignedLongLongValue = [(NSNumber *)self->_acceptedStoreTermsVersion unsignedLongLongValue];
  if (unsignedLongLongValue != [(NSNumber *)v5->_acceptedStoreTermsVersion unsignedLongLongValue])
  {
    goto LABEL_22;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier != v5->_sessionIdentifier && ![(NSString *)sessionIdentifier isEqualToString:?])
  {
    goto LABEL_22;
  }

  accountStatus = self->_accountStatus;
  if (accountStatus != v5->_accountStatus && ![(NSString *)accountStatus isEqualToString:?])
  {
    goto LABEL_22;
  }

  bOOLValue = [self->_subscribed BOOLValue];
  if (bOOLValue != [v5->_subscribed BOOLValue])
  {
    goto LABEL_22;
  }

  carrierBundlingStatus = self->_carrierBundlingStatus;
  if (carrierBundlingStatus != v5->_carrierBundlingStatus && ![(NSString *)carrierBundlingStatus isEqualToString:?])
  {
    goto LABEL_22;
  }

  if (self->_carrierBundlingErrorCode != v5->_carrierBundlingErrorCode)
  {
    goto LABEL_22;
  }

  bOOLValue2 = [self->_discoveryModeEligible BOOLValue];
  if (bOOLValue2 != [v5->_discoveryModeEligible BOOLValue])
  {
    goto LABEL_22;
  }

  eligibilityStatus = self->_eligibilityStatus;
  if (eligibilityStatus != v5->_eligibilityStatus && ![(NSString *)eligibilityStatus isEqualToString:?])
  {
    goto LABEL_22;
  }

  bOOLValue3 = [self->_familyOrganizer BOOLValue];
  if (bOOLValue3 != [v5->_familyOrganizer BOOLValue])
  {
    goto LABEL_22;
  }

  bOOLValue4 = [self->_familySubscription BOOLValue];
  if (bOOLValue4 != [v5->_familySubscription BOOLValue])
  {
    goto LABEL_22;
  }

  bOOLValue5 = [self->_hasFamily BOOLValue];
  if (bOOLValue5 != [v5->_hasFamily BOOLValue])
  {
    goto LABEL_22;
  }

  bOOLValue6 = [self->_hasFamilyMembers BOOLValue];
  if (bOOLValue6 != [v5->_hasFamilyMembers BOOLValue])
  {
    goto LABEL_22;
  }

  unsignedLongLongValue2 = [(NSNumber *)self->_latestStoreTermsVersion unsignedLongLongValue];
  if (unsignedLongLongValue2 != [(NSNumber *)v5->_latestStoreTermsVersion unsignedLongLongValue])
  {
    goto LABEL_22;
  }

  dictionary = [(SUScriptDictionary *)self->_rawResponseData dictionary];
  dictionary2 = [(SUScriptDictionary *)v5->_rawResponseData dictionary];
  v20 = dictionary2;
  if (dictionary == dictionary2)
  {

    goto LABEL_28;
  }

  dictionary3 = [(SUScriptDictionary *)self->_rawResponseData dictionary];
  dictionary4 = [(SUScriptDictionary *)v5->_rawResponseData dictionary];
  v23 = [dictionary3 isEqualToDictionary:dictionary4];

  if (v23)
  {
LABEL_28:
    bOOLValue7 = [self->_final BOOLValue];
    v24 = bOOLValue7 ^ [v5->_final BOOLValue] ^ 1;
    goto LABEL_23;
  }

LABEL_22:
  LOBYTE(v24) = 0;
LABEL_23:

LABEL_26:
  return v24;
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_53 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusResponse;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptSubscriptionStatusResponse;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_53 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = __KeyMapping_53;
    __KeyMapping_53 = &unk_1F41EAA10;
  }
}

@end