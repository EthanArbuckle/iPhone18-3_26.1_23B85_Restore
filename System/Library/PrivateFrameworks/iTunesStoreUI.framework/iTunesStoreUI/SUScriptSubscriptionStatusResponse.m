@interface SUScriptSubscriptionStatusResponse
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SUScriptSubscriptionStatusResponse)initWithSubscriptionStatus:(id)a3 isFinal:(BOOL)a4;
- (id)scriptAttributeKeys;
- (unint64_t)hash;
@end

@implementation SUScriptSubscriptionStatusResponse

- (SUScriptSubscriptionStatusResponse)initWithSubscriptionStatus:(id)a3 isFinal:(BOOL)a4
{
  v4 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v54.receiver = self;
  v54.super_class = SUScriptSubscriptionStatusResponse;
  v7 = [(SUScriptObject *)&v54 init];
  if (!v7)
  {
    goto LABEL_61;
  }

  v8 = [v6 sessionIdentifier];
  v9 = [v8 copy];
  sessionIdentifier = v7->_sessionIdentifier;
  v7->_sessionIdentifier = v9;

  v11 = [v6 statusType];
  v12 = [v6 reasonType];
  if (v11 == 2)
  {
    if (v12 == 4)
    {
      [(SUScriptSubscriptionStatusResponse *)v7 accountStatusNeedsAuthentication];
    }

    else
    {
      [(SUScriptSubscriptionStatusResponse *)v7 accountStatusNotSubscribed];
    }
    v13 = ;
    goto LABEL_11;
  }

  if (v11 != 1)
  {
    if (v11)
    {
LABEL_12:
      v16 = *MEMORY[0x1E695E4D0];
      v17 = *MEMORY[0x1E695E4C0];
      v18 = *MEMORY[0x1E695E4C0];
      goto LABEL_13;
    }

    v13 = [(SUScriptSubscriptionStatusResponse *)v7 accountStatusUnknown];
LABEL_11:
    accountStatus = v7->_accountStatus;
    v7->_accountStatus = v13;

    goto LABEL_12;
  }

  v14 = [(SUScriptSubscriptionStatusResponse *)v7 accountStatusSubscribed];
  v15 = v7->_accountStatus;
  v7->_accountStatus = v14;

  v16 = *MEMORY[0x1E695E4D0];
  v17 = *MEMORY[0x1E695E4C0];
  v18 = *MEMORY[0x1E695E4D0];
LABEL_13:
  objc_storeStrong(&v7->_subscribed, v18);
  v20 = [v6 carrierBundlingStatusType];
  v21 = v20;
  if (v20 <= 4)
  {
    objc_storeStrong(&v7->_carrierBundlingStatus, *off_1E8166988[v20]);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "carrierBundlingErrorCode")}];
  carrierBundlingErrorCode = v7->_carrierBundlingErrorCode;
  v7->_carrierBundlingErrorCode = v22;

  if ([v6 isDiscoveryModeEligible])
  {
    v24 = v16;
  }

  else
  {
    v24 = v17;
  }

  objc_storeStrong(&v7->_discoveryModeEligible, v24);
  if ([v6 isHeadOfHousehold])
  {
    v25 = v16;
  }

  else
  {
    v25 = v17;
  }

  objc_storeStrong(&v7->_familyOrganizer, v25);
  v49 = v11;
  if (v12 == 2 && v11 == 1)
  {
    v27 = v16;
  }

  else
  {
    v27 = v17;
  }

  objc_storeStrong(&v7->_familySubscription, v27);
  if ([v6 hasFamily])
  {
    v28 = v16;
  }

  else
  {
    v28 = v17;
  }

  objc_storeStrong(&v7->_hasFamily, v28);
  if ([v6 hasFamilyGreaterThanOneMember])
  {
    v29 = v16;
  }

  else
  {
    v29 = v17;
  }

  objc_storeStrong(&v7->_hasFamilyMembers, v29);
  [v6 termsStatusList];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = v53 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v31)
  {
    v47 = v21;
    v48 = v4;
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
    v35 = v4;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "acceptedVersion")}];
  acceptedStoreTermsVersion = v7->_acceptedStoreTermsVersion;
  v7->_acceptedStoreTermsVersion = v36;

  v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "currentVersion")}];
  latestStoreTermsVersion = v7->_latestStoreTermsVersion;
  v7->_latestStoreTermsVersion = v38;

  if (v49 == 1 || v21 - 1 <= 1)
  {
    v40 = [(SUScriptSubscriptionStatusResponse *)v7 eligibilityStatusEligible];
  }

  else if (v49 == 2 && v21 == 3)
  {
    v40 = [(SUScriptSubscriptionStatusResponse *)v7 eligibilityStatusNotEligible];
  }

  else
  {
    v40 = [(SUScriptSubscriptionStatusResponse *)v7 eligibilityStatusUnknown];
  }

  v41 = v35;
  eligibilityStatus = v7->_eligibilityStatus;
  v7->_eligibilityStatus = v40;

  v43 = [v6 responseDictionary];
  if (v43)
  {
    v44 = [[SUScriptDictionary alloc] initWithDictionary:v43];
  }

  else
  {
    v44 = 0;
  }

  objc_storeStrong(&v7->_rawResponseData, v44);
  if (v43)
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
  v3 = [(NSNumber *)self->_acceptedStoreTermsVersion unsignedLongLongValue];
  v4 = [(NSString *)self->_sessionIdentifier hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_accountStatus hash];
  v6 = v5 ^ [self->_subscribed BOOLValue];
  v7 = [(NSString *)self->_carrierBundlingStatus hash];
  v8 = v7 ^ [(NSNumber *)self->_carrierBundlingErrorCode integerValue];
  v9 = v6 ^ v8 ^ [self->_discoveryModeEligible BOOLValue];
  v10 = [(NSString *)self->_eligibilityStatus hash];
  v11 = v10 ^ [self->_familyOrganizer BOOLValue];
  v12 = v9 ^ v11 ^ [self->_familySubscription BOOLValue];
  v13 = [self->_hasFamily BOOLValue];
  v14 = v13 ^ [self->_hasFamilyMembers BOOLValue];
  v15 = v14 ^ [(NSNumber *)self->_latestStoreTermsVersion unsignedLongLongValue];
  v16 = [(SUScriptDictionary *)self->_rawResponseData dictionary];
  v17 = v12 ^ v15 ^ [v16 hash];

  return v17 ^ [self->_final BOOLValue];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(NSNumber *)self->_acceptedStoreTermsVersion unsignedLongLongValue];
  if (v6 != [(NSNumber *)v5->_acceptedStoreTermsVersion unsignedLongLongValue])
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

  v9 = [self->_subscribed BOOLValue];
  if (v9 != [v5->_subscribed BOOLValue])
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

  v11 = [self->_discoveryModeEligible BOOLValue];
  if (v11 != [v5->_discoveryModeEligible BOOLValue])
  {
    goto LABEL_22;
  }

  eligibilityStatus = self->_eligibilityStatus;
  if (eligibilityStatus != v5->_eligibilityStatus && ![(NSString *)eligibilityStatus isEqualToString:?])
  {
    goto LABEL_22;
  }

  v13 = [self->_familyOrganizer BOOLValue];
  if (v13 != [v5->_familyOrganizer BOOLValue])
  {
    goto LABEL_22;
  }

  v14 = [self->_familySubscription BOOLValue];
  if (v14 != [v5->_familySubscription BOOLValue])
  {
    goto LABEL_22;
  }

  v15 = [self->_hasFamily BOOLValue];
  if (v15 != [v5->_hasFamily BOOLValue])
  {
    goto LABEL_22;
  }

  v16 = [self->_hasFamilyMembers BOOLValue];
  if (v16 != [v5->_hasFamilyMembers BOOLValue])
  {
    goto LABEL_22;
  }

  v17 = [(NSNumber *)self->_latestStoreTermsVersion unsignedLongLongValue];
  if (v17 != [(NSNumber *)v5->_latestStoreTermsVersion unsignedLongLongValue])
  {
    goto LABEL_22;
  }

  v18 = [(SUScriptDictionary *)self->_rawResponseData dictionary];
  v19 = [(SUScriptDictionary *)v5->_rawResponseData dictionary];
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_28;
  }

  v21 = [(SUScriptDictionary *)self->_rawResponseData dictionary];
  v22 = [(SUScriptDictionary *)v5->_rawResponseData dictionary];
  v23 = [v21 isEqualToDictionary:v22];

  if (v23)
  {
LABEL_28:
    v26 = [self->_final BOOLValue];
    v24 = v26 ^ [v5->_final BOOLValue] ^ 1;
    goto LABEL_23;
  }

LABEL_22:
  LOBYTE(v24) = 0;
LABEL_23:

LABEL_26:
  return v24;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_53 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusResponse;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptSubscriptionStatusResponse;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_53 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __KeyMapping_53;
    __KeyMapping_53 = &unk_1F41EAA10;
  }
}

@end