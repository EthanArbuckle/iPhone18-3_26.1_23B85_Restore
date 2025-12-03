@interface TUDialRequest(PhoneKit)
+ (id)dialRequestForCallProvider:()PhoneKit handle:;
+ (id)dialRequestForUserActivity:()PhoneKit callProviderManager:;
- (id)dialRequestByResolvingDialTypeUsingSenderIdentityClient:()PhoneKit;
- (uint64_t)canMakeEmergencyCallForSenderIdentity:()PhoneKit;
@end

@implementation TUDialRequest(PhoneKit)

+ (id)dialRequestForCallProvider:()PhoneKit handle:
{
  v5 = a3;
  v6 = a4;
  type = [v6 type];
  if ([v5 supportsHandleType:type])
  {
    v8 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v5];
    [v8 setHandle:v6];
    [v8 setOriginatingUIType:1];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TUDialRequest(PhoneKit) *)v5 dialRequestForCallProvider:type handle:v9];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)dialRequestForUserActivity:()PhoneKit callProviderManager:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for user activity (%@)", &v17, 0xCu);
  }

  userInfo = [v6 userInfo];
  if (userInfo)
  {
    callProviderIdentifier = [v6 callProviderIdentifier];
    if (callProviderIdentifier)
    {
      v11 = [v7 providerWithIdentifier:callProviderIdentifier];
      handle = [v6 handle];
      LOBYTE(v17) = 0;
      if ((v11 || ([v7 providerWithService:objc_msgSend(v6 video:{"callService"), &v17}], (v11 = objc_claimAutoreleasedReturnValue()) != 0)) && handle)
      {
        v13 = [self dialRequestForCallProvider:v11 handle:handle];
        [v13 setVideo:v17];
        [v13 setOriginatingUIType:37];
      }

      else
      {
        v14 = PHDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [TUDialRequest(PhoneKit) dialRequestForUserActivity:callProviderIdentifier callProviderManager:v14];
        }

        v13 = 0;
      }
    }

    else
    {
      v11 = PHDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TUDialRequest(PhoneKit) dialRequestForUserActivity:v11 callProviderManager:?];
      }

      v13 = 0;
    }
  }

  else
  {
    callProviderIdentifier = PHDefaultLog();
    if (os_log_type_enabled(callProviderIdentifier, OS_LOG_TYPE_ERROR))
    {
      [TUDialRequest(PhoneKit) dialRequestForUserActivity:callProviderIdentifier callProviderManager:?];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (uint64_t)canMakeEmergencyCallForSenderIdentity:()PhoneKit
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (PHIsInAirplaneMode())
  {
    v4 = MEMORY[0x277D6EDE8];
    uUID = [v3 UUID];
    v6 = [v4 canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:uUID];

    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"cannot";
      if (v6)
      {
        v8 = @"can";
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "Device is in airplane mode and %@ make an emergency call using sender identity %@", &v11, 0x16u);
    }
  }

  else
  {
    v6 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)dialRequestByResolvingDialTypeUsingSenderIdentityClient:()PhoneKit
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self copy];
  handle = [self handle];
  value = [handle value];
  if ([value length])
  {
  }

  else
  {
    dialType = [self dialType];

    if (dialType != 1)
    {
      goto LABEL_23;
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__TUDialRequest_PhoneKit__dialRequestByResolvingDialTypeUsingSenderIdentityClient___block_invoke;
  aBlock[3] = &unk_279A22770;
  v30 = v4;
  selfCopy = self;
  v9 = _Block_copy(aBlock);
  localSenderIdentityAccountUUID = [self localSenderIdentityAccountUUID];
  if (!localSenderIdentityAccountUUID)
  {
    goto LABEL_11;
  }

  provider = [self provider];
  v12 = [provider senderIdentityForAccountUUID:localSenderIdentityAccountUUID];

  if (!v12)
  {
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = localSenderIdentityAccountUUID;
      _os_log_impl(&dword_25E4EC000, v14, OS_LOG_TYPE_DEFAULT, "Could not find a sender identity that contains account UUID %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v13 = v9[2](v9, v5, v12);

  if (!v13)
  {
LABEL_11:
    provider2 = [self provider];
    prioritizedSenderIdentities = [provider2 prioritizedSenderIdentities];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = prioritizedSenderIdentities;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = v9[2](v9, v5, *(*(&v25 + 1) + 8 * i));
          if (v22)
          {
            v13 = v22;
            goto LABEL_21;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_21:
  }

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)dialRequestForCallProvider:()PhoneKit handle:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 localizedName];
  v7 = [a1 supportedHandleTypes];
  v9 = 134218498;
  v10 = a2;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_25E4EC000, a3, OS_LOG_TYPE_ERROR, "Could not create a dial request due to an invalid handle type (%zd). For call provider %@, the supported handle types are (%@).", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)dialRequestForUserActivity:()PhoneKit callProviderManager:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Could not retrieve a call provider for the specified identifier %@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end