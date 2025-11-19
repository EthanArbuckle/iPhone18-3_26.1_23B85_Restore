@interface TUDialRequest
+ (BOOL)isHandleEmergencyNumber:(id)a3 telephonyProvider:(id)a4;
+ (id)callProviderManagerGeneratorBlock;
+ (id)legacyAddressBookIdentifierToContactIdentifierTransformBlock;
+ (id)providerForIntentPreferredCallProvider:(int64_t)a3 recentCallProviderId:(id)a4 callCapability:(int64_t)a5 providerManager:(id)a6;
+ (id)senderIdentityClientGeneratorBlock;
+ (id)stringForDialType:(int64_t)a3;
+ (id)stringForOriginatingUIType:(int)a3;
+ (id)stringForTTYType:(int64_t)a3;
+ (int)originatingUITypeForExecutionContext:(int64_t)a3;
+ (int)originatingUITypeForString:(id)a3;
+ (int64_t)dialRequestTTYTypeForCHRecentCallTTYType:(int64_t)a3;
+ (int64_t)dialRequestTypeForIntentDestinationType:(int64_t)a3;
+ (int64_t)handleTypeForQueryItem:(id)a3;
+ (int64_t)intentTTYTypeForTTYType:(int64_t)a3;
+ (int64_t)ttyTypeForIntentTTYType:(int64_t)a3;
+ (int64_t)ttyTypeForString:(id)a3;
+ (void)setCallProviderManagerGeneratorBlock:(id)a3;
+ (void)setLegacyAddressBookIdentifierToContactIdentifierTransformBlock:(id)a3;
+ (void)setSenderIdentityClientGeneratorBlock:(id)a3;
- (BOOL)BOOLValueForQueryItemWithName:(id)a3 inURLComponents:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDialRequest:(id)a3;
- (BOOL)isRTTAvailable;
- (BOOL)isTTYAvailable;
- (BOOL)isValid;
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CNGeminiManager)contactGeminiManager;
- (IDSDestination)endpointIDSDestination;
- (NSArray)validityErrors;
- (NSString)description;
- (NSString)destinationID;
- (NSURL)URL;
- (NSUUID)localSenderIdentityAccountUUID;
- (NSUUID)localSenderIdentityUUID;
- (TUDialRequest)dialRequestWithURLStripping;
- (TUDialRequest)init;
- (TUDialRequest)initWithCoder:(id)a3;
- (TUDialRequest)initWithDialIntent:(id)a3 providerManager:(id)a4 contactsDataSource:(id)a5 senderIdentityClient:(id)a6 isEmergencyServicesOverrideEnabled:(BOOL)a7;
- (TUDialRequest)initWithProvider:(id)a3;
- (TUDialRequest)initWithProvider:(id)a3 featureFlags:(id)a4;
- (TUDialRequest)initWithURL:(id)a3;
- (TUDialRequest)initWithURL:(id)a3 featureFlags:(id)a4;
- (TUDialRequest)initWithURL:(id)a3 translationRequestConfiguration:(id)a4;
- (TUDialRequest)initWithUserActivity:(id)a3;
- (TUDialRequest)initWithUserActivity:(id)a3 providerManager:(id)a4;
- (TUDialRequest)initWithUserActivity:(id)a3 providerManager:(id)a4 contactsDataSource:(id)a5 senderIdentityClient:(id)a6;
- (TUHandle)handle;
- (TUSenderIdentity)localSenderIdentity;
- (TUSenderIdentityClient)senderIdentityClient;
- (id)URLHost;
- (id)URLQueryItems;
- (id)URLScheme;
- (id)_contactFromINPerson:(id)a3 contactsDataSource:(id)a4 bestGuessHandle:(id *)a5;
- (id)allowProviderFallbackQueryItem;
- (id)audioSourceIdentifierURLQueryItem;
- (id)bundleIdentifier;
- (id)bypassInterventionQueryItem;
- (id)callProviderIdentiferFromURLComponents:(id)a3;
- (id)callProviderIdentifierURLQueryItem;
- (id)contactIdentifierFromURLComponents:(id)a3;
- (id)contactIdentifierURLQueryItem;
- (id)contactNamesByHandleWithContactsDataSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)destinationIDFromURL:(id)a3;
- (id)dialAssistedURLQueryItem;
- (id)dialRequestByReplacingProvider:(id)a3;
- (id)endpointIDSDestinationURIQueryItem;
- (id)endpointRapportEffectiveIdentifierQueryItem;
- (id)endpointRapportMediaSystemIdentifierQueryItem;
- (id)failureNotificationQueryItem;
- (id)forceAssistURLQueryItem;
- (id)handleFromURL:(id)a3;
- (id)handleTypeURLQueryItem;
- (id)isEmergencyNumberBlock;
- (id)isEmergencyNumberOrIsWhitelistedBlock;
- (id)isVoicemailURLQueryItem;
- (id)launchInBackgroundQueryItem;
- (id)legacyAddressBookIdentifierQueryItemNameFromURLComponents:(id)a3;
- (id)localSenderIdentityAccountUUIDURLQueryItem;
- (id)localSenderIdentityUUIDURLQueryItem;
- (id)originatingUIURLQueryItem;
- (id)providerCustomIdentifierURLQueryItem;
- (id)redialURLQueryItem;
- (id)sanitizedHandles;
- (id)shouldSuppressInCallUIQueryItem;
- (id)sosURLQueryItem;
- (id)successNotificationQueryItem;
- (id)suppressAssistURLQueryItem;
- (id)ttyTypeURLQueryItem;
- (id)upgradedCallUUIDURLQueryItem;
- (id)uplinkMutedURLQueryItem;
- (id)userActivityUsingDeprecatedCallingIntents:(BOOL)a3;
- (id)validityErrorForDestinationIDWithVoicemail;
- (id)validityErrorForEmergencyCall;
- (id)validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService;
- (id)validityErrorForNonNormalDialTypeWithoutTelephony;
- (id)validityErrorForNormalDialTypeWithUnknownDestination;
- (id)validityErrorForSOS;
- (id)validityErrorForUnspecifiedProvider;
- (id)validityErrorForUnsupportedHandleType;
- (id)validityErrorForVideoUnsupported;
- (int)legacyAddressBookIdentifierFromURLComponents:(id)a3;
- (int)service;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDestinationID:(id)a3;
- (void)setHandle:(id)a3;
- (void)setOriginatingUIType:(int)a3;
@end

@implementation TUDialRequest

- (NSUUID)localSenderIdentityUUID
{
  localSenderIdentityUUID = self->_localSenderIdentityUUID;
  if (!localSenderIdentityUUID)
  {
    if (self->_localSenderIdentityAccountUUID)
    {
      v4 = [(TUDialRequest *)self provider];
      v5 = [v4 senderIdentityForAccountUUID:self->_localSenderIdentityAccountUUID];
      v6 = [v5 UUID];
      v7 = self->_localSenderIdentityUUID;
      self->_localSenderIdentityUUID = v6;

      localSenderIdentityUUID = self->_localSenderIdentityUUID;
    }

    else
    {
      localSenderIdentityUUID = 0;
    }
  }

  return localSenderIdentityUUID;
}

- (NSUUID)localSenderIdentityAccountUUID
{
  localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
  if (!localSenderIdentityAccountUUID)
  {
    if (self->_localSenderIdentityUUID)
    {
      v4 = [(TUDialRequest *)self provider];
      v5 = [v4 senderIdentityForUUID:self->_localSenderIdentityUUID];
      v6 = [v5 accountUUID];
      v7 = self->_localSenderIdentityAccountUUID;
      self->_localSenderIdentityAccountUUID = v6;

      localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
    }

    else
    {
      localSenderIdentityAccountUUID = 0;
    }
  }

  return localSenderIdentityAccountUUID;
}

- (BOOL)isValid
{
  v2 = [(TUDialRequest *)self validityErrors];
  v3 = [v2 count] == 0;

  return v3;
}

- (NSArray)validityErrors
{
  v3 = [(TUDialRequest *)self hostIDSIdentifier];
  v4 = [(TUDialRequest *)self _validityErrorsForRelay:v3 != 0];

  return v4;
}

- (id)validityErrorForUnspecifiedProvider
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(TUDialRequest *)self provider];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No provider specified"];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:1 userInfo:v5];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)validityErrorForDestinationIDWithVoicemail
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUDialRequest *)self handle];
  if (v3 && (v4 = v3, v5 = [(TUDialRequest *)self dialType], v4, v5 == 2))
  {
    v13 = *MEMORY[0x1E696A578];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(TUDialRequest *)self handle];
    v8 = [v6 stringWithFormat:@"handle is non-nil (%@) and dialType is Voicemail", v7];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:2 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)validityErrorForNonNormalDialTypeWithoutTelephony
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(TUDialRequest *)self service]== 1 || ![(TUDialRequest *)self dialType])
  {
    v5 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E696A578];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dialType (%lu) is not Normal but service (%d) is not Telephony", -[TUDialRequest dialType](self, "dialType"), -[TUDialRequest service](self, "service")];
    v9[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:3 userInfo:v4];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)validityErrorForEmergencyCall
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = [(TUDialRequest *)self handle];
  if (!v3 || (v4 = v3, v5 = [(TUDialRequest *)self dialType], v4, v5 != 1))
  {
    v7 = 0;
    goto LABEL_55;
  }

  if ([(TUDialRequest *)self originatingUIType]== 2 || [(TUDialRequest *)self isSOS])
  {
    v6 = [(TUDialRequest *)self isEmergencyNumberOrIsWhitelistedBlock];
  }

  else
  {
    v6 = [(TUDialRequest *)self isEmergencyNumberBlock];
  }

  v8 = v6;
  v63 = _Block_copy(v6);

  v9 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  v62 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = [(TUDialRequest *)self provider];
    v12 = [v11 senderIdentityForAccountUUID:v10];

    v13 = TUDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(TUDialRequest *)self handle];
      *buf = 138412546;
      v82 = v14;
      v83 = 2112;
      v84 = v12;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Checking whether %@ is an emergency number for sender identity %@", buf, 0x16u);
    }

    if (v12)
    {
      v15 = [(TUDialRequest *)self handle];
      v16 = [v15 value];
      v17 = v63[2](v63, v16, v12);

      if (v17)
      {
        goto LABEL_30;
      }
    }
  }

  v18 = [(TUDialRequest *)self provider];
  v19 = [v18 prioritizedSenderIdentities];

  v20 = [v19 count];
  v21 = TUDefaultLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v23 = [(TUDialRequest *)self handle];
      *buf = 138412546;
      v82 = v23;
      v83 = 2112;
      v84 = v19;
      _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Checking whether %@ is an emergency number for any of the following sender identities %@", buf, 0x16u);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v73;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v73 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v72 + 1) + 8 * i);
          v30 = [(TUDialRequest *)self handle];
          v31 = [v30 value];
          v32 = v63[2](v63, v31, v29);

          if (v32)
          {
            v12 = v29;

            goto LABEL_30;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0;
    v12 = 0;
    goto LABEL_33;
  }

  if (v22)
  {
    v34 = [(TUDialRequest *)self provider];
    *buf = 138412290;
    v82 = v34;
    _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "No sender identities found on provider %@", buf, 0xCu);
  }

  v35 = [(TUDialRequest *)self handle];
  v36 = [v35 value];
  v37 = v63[2](v63, v36, 0);

  v12 = 0;
  if (v37)
  {
LABEL_30:
    v38 = TUDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v82 = v12;
      _os_log_impl(&dword_1956FD000, v38, OS_LOG_TYPE_DEFAULT, "Emergency or whitelisted number detected; updating dial request with emergency sender identity %@", buf, 0xCu);
    }

    v39 = [v12 UUID];
    [(TUDialRequest *)self setLocalSenderIdentityUUID:v39];

    v24 = [v12 accountUUID];
    [(TUDialRequest *)self setLocalSenderIdentityAccountUUID:v24];
    v33 = 1;
LABEL_33:

    goto LABEL_34;
  }

  v33 = 0;
LABEL_34:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v40 = [(TUDialRequest *)self provider];
  v41 = [v40 emergencyLabeledHandles];

  v42 = [v41 countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v69;
LABEL_36:
    v45 = 0;
    while (1)
    {
      if (*v69 != v44)
      {
        objc_enumerationMutation(v41);
      }

      v46 = *(*(&v68 + 1) + 8 * v45);
      v47 = [(TUDialRequest *)self handle];
      v48 = [v46 handle];
      v49 = [v47 isEqualToHandle:v48];

      if (v49)
      {
        goto LABEL_52;
      }

      if (v43 == ++v45)
      {
        v43 = [v41 countByEnumeratingWithState:&v68 objects:v79 count:16];
        if (v43)
        {
          goto LABEL_36;
        }

        break;
      }
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = [(TUDialRequest *)self provider];
  v41 = [v50 emergencyHandles];

  v51 = [v41 countByEnumeratingWithState:&v64 objects:v78 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v65;
LABEL_44:
    v54 = 0;
    while (1)
    {
      if (*v65 != v53)
      {
        objc_enumerationMutation(v41);
      }

      v55 = *(*(&v64 + 1) + 8 * v54);
      v56 = [(TUDialRequest *)self handle];
      LOBYTE(v55) = [v56 isEqualToHandle:v55];

      if (v55)
      {
        break;
      }

      if (v52 == ++v54)
      {
        v52 = [v41 countByEnumeratingWithState:&v64 objects:v78 count:16];
        if (v52)
        {
          goto LABEL_44;
        }

        goto LABEL_50;
      }
    }

LABEL_52:
    v7 = 0;
LABEL_53:

    goto LABEL_54;
  }

LABEL_50:

  if ((v33 & 1) == 0)
  {
    v76 = *MEMORY[0x1E696A578];
    v59 = MEMORY[0x1E696AEC0];
    v60 = [(TUDialRequest *)self handle];
    v61 = [v59 stringWithFormat:@"handle (%@) for emergency call dial request is not an emergency number (isEmergencyOrWhitelistedSOSNumber=%d isTelephonyApprovedEmergencyHandle=%d originatingUIType=%ld)", v60, 0, 0, -[TUDialRequest originatingUIType](self, "originatingUIType"), v62];
    v77 = v61;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:5 userInfo:v41];
    goto LABEL_53;
  }

  v7 = 0;
LABEL_54:

LABEL_55:
  v57 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)validityErrorForVideoUnsupported
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (-[TUDialRequest isVideo](self, "isVideo") && (-[TUDialRequest provider](self, "provider"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 supportsAudioAndVideo], v3, (v4 & 1) == 0))
  {
    v10 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested video for a provider which doesn't support it"];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:6 userInfo:v7];
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)validityErrorForNormalDialTypeWithUnknownDestination
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUDialRequest *)self handle];
  v4 = [v3 value];
  if ([v4 length])
  {
    goto LABEL_4;
  }

  v5 = [(TUDialRequest *)self contactIdentifier];
  if ([v5 length])
  {

LABEL_4:
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v9 = [(TUDialRequest *)self dialType];

  if (v9)
  {
    goto LABEL_5;
  }

  v12 = *MEMORY[0x1E696A578];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"destinationID and contactIdentifier are both nil/empty and dialType is Normal"];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:7 userInfo:v11];

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)validityErrorForSOS
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(TUDialRequest *)self dialType]== 1 || ![(TUDialRequest *)self isSOS])
  {
    v5 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E696A578];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested SOS for non emergency dialType"];
    v9[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:9 userInfo:v4];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)senderIdentityClientGeneratorBlock
{
  v2 = _Block_copy(senderIdentityClientGeneratorBlock);

  return v2;
}

- (BOOL)isTTYAvailable
{
  v3 = [(TUDialRequest *)self senderIdentityClient];
  v4 = [(TUDialRequest *)self localSenderIdentityUUID];
  v5 = [v3 isTTYAvailableForSenderIdentityUUID:v4];

  return v5;
}

- (BOOL)isRTTAvailable
{
  v3 = [(TUDialRequest *)self senderIdentityClient];
  v4 = [(TUDialRequest *)self localSenderIdentityUUID];
  v5 = [v3 isRTTAvailableForSenderIdentityUUID:v4];

  return v5;
}

- (id)validityErrorForEndpointNotOnCurrentDeviceForNonRelayableService
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(TUDialRequest *)self service]== 3 && ![(TUDialRequest *)self endpointOnCurrentDevice])
  {
    v8 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"service (%d) is not relayable but endpointOnCurrentDevice is set", -[TUDialRequest service](self, "service")];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:4 userInfo:v5];
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)validityErrorForUnsupportedHandleType
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUDialRequest *)self handle];
  if (v3)
  {
    v4 = [(TUDialRequest *)self provider];
    v5 = [(TUDialRequest *)self handle];
    v6 = [v4 supportsHandleType:{objc_msgSend(v5, "type")}];

    if (v6)
    {
      v3 = 0;
    }

    else
    {
      v11 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider does not support the specified handle type"];
      v12[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUDialRequestValidityErrorDomain" code:8 userInfo:v8];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = [objc_opt_class() senderIdentityClientGeneratorBlock];
    v5 = v4[2]();
    v6 = self->_senderIdentityClient;
    self->_senderIdentityClient = v5;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

+ (id)callProviderManagerGeneratorBlock
{
  v2 = _Block_copy(callProviderManagerGeneratorBlock);

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [objc_opt_class() stringForDialType:{-[TUDialRequest dialType](self, "dialType")}];
  [v3 appendFormat:@" dialType=%@", v4];

  v5 = [(TUDialRequest *)self handles];
  [v3 appendFormat:@" handles=%@", v5];

  v6 = [(TUDialRequest *)self contactIdentifier];
  [v3 appendFormat:@" contactIdentifier=%@", v6];

  v7 = [(TUDialRequest *)self providerCustomIdentifier];
  [v3 appendFormat:@" providerCustomIdentifier=%@", v7];

  v8 = [(TUDialRequest *)self localSenderIdentityUUID];
  [v3 appendFormat:@" localSenderIdentityUUID=%@", v8];

  v9 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  [v3 appendFormat:@" localSenderIdentityAccountUUID=%@", v9];

  v10 = [(TUDialRequest *)self audioSourceIdentifier];
  [v3 appendFormat:@" audioSourceIdentifier=%@", v10];

  [v3 appendFormat:@" video=%d", -[TUDialRequest isVideo](self, "isVideo")];
  [v3 appendFormat:@" performDialAssist=%d", -[TUDialRequest performDialAssist](self, "performDialAssist")];
  [v3 appendFormat:@" performLocalDialAssist=%d", -[TUDialRequest performLocalDialAssist](self, "performLocalDialAssist")];
  v11 = [(TUDialRequest *)self upgradedFromCallUUID];
  [v3 appendFormat:@" upgradedFromCallUUID=%@", v11];

  v12 = [(TUDialRequest *)self translationRequestConfiguration];
  [v3 appendFormat:@" translationRequestConfiguration=%@", v12];

  [v3 appendFormat:@" dialAssisted=%d", -[TUDialRequest isDialAssisted](self, "isDialAssisted")];
  [v3 appendFormat:@" shouldStartWithUplinkMuted=%d", -[TUDialRequest shouldStartWithUplinkMuted](self, "shouldStartWithUplinkMuted")];
  v13 = [objc_opt_class() stringForTTYType:{-[TUDialRequest ttyType](self, "ttyType")}];
  [v3 appendFormat:@" ttyType=%@", v13];

  [v3 appendFormat:@" showUIPrompt=%d", -[TUDialRequest showUIPrompt](self, "showUIPrompt")];
  v14 = [(TUDialRequest *)self uniqueProxyIdentifier];
  [v3 appendFormat:@" uniqueProxyIdentifier=%@", v14];

  [v3 appendFormat:@" hostOnCurrentDevice=%d", -[TUDialRequest hostOnCurrentDevice](self, "hostOnCurrentDevice")];
  [v3 appendFormat:@" endpointOnCurrentDevice=%d", -[TUDialRequest endpointOnCurrentDevice](self, "endpointOnCurrentDevice")];
  v15 = [(TUDialRequest *)self endpointIDSDestinationURI];
  [v3 appendFormat:@" endpointIDSDestinationURI=%@", v15];

  v16 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
  [v3 appendFormat:@" endpointRapportMediaSystemIdentifier=%@", v16];

  v17 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
  [v3 appendFormat:@" endpointRapportEffectiveIdentifier=%@", v17];

  [v3 appendFormat:@" originatingUI=%ld", -[TUDialRequest originatingUIType](self, "originatingUIType")];
  [v3 appendFormat:@" sos=%d", -[TUDialRequest isSOS](self, "isSOS")];
  [v3 appendFormat:@" shouldSuppressInCallUI=%d", -[TUDialRequest shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [v3 appendFormat:@" launchInBackground=%d", -[TUDialRequest launchInBackground](self, "launchInBackground")];
  [v3 appendFormat:@" valid=%d", -[TUDialRequest isValid](self, "isValid")];
  [v3 appendFormat:@" redial=%d", -[TUDialRequest isRedial](self, "isRedial")];
  [v3 appendFormat:@" preferDefaultApp=%d", -[TUDialRequest preferDefaultApp](self, "preferDefaultApp")];
  v18 = [(TUDialRequest *)self provider];
  [v3 appendFormat:@" provider=%@", v18];

  [v3 appendFormat:@" bypassIntervention=%d", -[TUDialRequest bypassIntervention](self, "bypassIntervention")];
  v19 = [(TUDialRequest *)self validityErrors];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [(TUDialRequest *)self validityErrors];
    v22 = [v21 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" validityErrors=%@", v22];
  }

  [v3 appendString:@">"];

  return v3;
}

- (TUHandle)handle
{
  v2 = [(TUDialRequest *)self handles];
  v3 = [v2 anyObject];

  return v3;
}

- (int)service
{
  v2 = self;
  v3 = [(TUDialRequest *)self provider];
  LODWORD(v2) = [TUCallProviderManager serviceForProvider:v3 video:[(TUDialRequest *)v2 isVideo]];

  return v2;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (IDSDestination)endpointIDSDestination
{
  v3 = [(TUDialRequest *)self endpointIDSDestinationURI];

  if (v3)
  {
    v4 = MEMORY[0x1E69A5240];
    v5 = [(TUDialRequest *)self endpointIDSDestinationURI];
    v6 = [v4 destinationWithURI:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)dialRequestTTYTypeForCHRecentCallTTYType:(int64_t)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isHandleEmergencyNumber:(id)a3 telephonyProvider:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [v7 emergencyHandles];
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        if (([v6 isEquivalentToHandle:v13] & 1) != 0 || objc_msgSend(v6, "isEqualToHandle:", v13))
        {
          v24 = TUDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1956FD000, v24, OS_LOG_TYPE_DEFAULT, "TUHandle is in TelephonyProvider emergencyHandles", buf, 2u);
          }

          LOBYTE(v25) = 1;
          goto LABEL_39;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [v7 emergencyLabeledHandles];
  v14 = [v8 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    while (2)
    {
      v17 = v7;
      for (j = 0; j != v15; ++j)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v19 = *(*(&v39 + 1) + 8 * j);
        v20 = [v19 handle];
        if ([v6 isEquivalentToHandle:v20])
        {

LABEL_32:
          v24 = TUDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1956FD000, v24, OS_LOG_TYPE_DEFAULT, "TUHandle is in TelephonyProvider emergencyLabeledHandles", buf, 2u);
          }

          LOBYTE(v25) = 1;
          v7 = v17;
          goto LABEL_39;
        }

        v21 = [v19 handle];
        v22 = [v6 isEqualToHandle:v21];

        if (v22)
        {
          goto LABEL_32;
        }
      }

      v15 = [v8 countByEnumeratingWithState:&v39 objects:v52 count:16];
      v7 = v17;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v23 = [a1 senderIdentityClientGeneratorBlock];
  v8 = v23[2]();

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = [v7 prioritizedSenderIdentities];
  v25 = [v24 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v25)
  {
    v34 = v7;
    v26 = *v36;
    while (2)
    {
      for (k = 0; k != v25; k = (k + 1))
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v35 + 1) + 8 * k);
        v29 = [v6 value];
        v30 = [v28 UUID];
        v31 = [v8 isEmergencyNumberForDigits:v29 senderIdentityUUID:v30];

        if (v31)
        {
          v25 = TUDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v48 = v28;
            v49 = 2112;
            v50 = v6;
            _os_log_impl(&dword_1956FD000, v25, OS_LOG_TYPE_DEFAULT, "TUSenderIdentity %@ recognizing handle %@ as emergency number", buf, 0x16u);
          }

          LOBYTE(v25) = 1;
          goto LABEL_38;
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v35 objects:v51 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }

LABEL_38:
    v7 = v34;
  }

LABEL_39:

  v32 = *MEMORY[0x1E69E9840];
  return v25;
}

- (TUDialRequest)initWithProvider:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUDialRequest *)self initWithProvider:v4 featureFlags:v5];

  return v6;
}

- (TUDialRequest)initWithProvider:(id)a3 featureFlags:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [TUDialRequest initWithProvider:a2 featureFlags:self];
  }

  v16.receiver = self;
  v16.super_class = TUDialRequest;
  v10 = [(TUDialRequest *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_provider, a3);
    *&v11->_performDialAssist = 257;
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];
    uniqueProxyIdentifier = v11->_uniqueProxyIdentifier;
    v11->_uniqueProxyIdentifier = v13;

    *&v11->_hostOnCurrentDevice = 257;
    objc_storeStrong(&v11->_featureFlags, a4);
    v11->_preferDefaultApp = TUDefaultAppsEnabled(v11->_featureFlags);
  }

  return v11;
}

- (TUDialRequest)initWithURL:(id)a3 translationRequestConfiguration:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(TUFeatureFlags);
  v10 = [(TUDialRequest *)self initWithURL:v8 featureFlags:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_translationRequestConfiguration, a4);
  }

  return v10;
}

- (TUDialRequest)initWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUDialRequest *)self initWithURL:v4 featureFlags:v5];

  return v6;
}

- (TUDialRequest)initWithURL:(id)a3 featureFlags:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v6 resolvingAgainstBaseURL:0];
  v95 = 0;
  v9 = [MEMORY[0x1E695DFD8] set];
  v10 = [v8 scheme];
  v11 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeTelephony];
  if ([v10 isEqualToString:v11])
  {
    v12 = [v8 containsQueryItemWithName:@"isVoicemail"];

    if (v12)
    {
      v13 = 2;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = [v8 scheme];
  v15 = [v14 isEqualToString:@"telemergencycall"];

  v13 = v15;
  v16 = [(TUDialRequest *)self handleFromURL:v6];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DFD8] setWithObject:v16];

    v9 = v17;
  }

LABEL_8:
  v18 = [v8 firstQueryItemWithName:@"originatingUI"];
  v19 = objc_opt_class();
  v94 = v18;
  v20 = [v18 value];
  v21 = [v19 originatingUITypeForString:v20];

  v22 = [(TUDialRequest *)self BOOLValueForQueryItemWithName:@"sos" inURLComponents:v8];
  v23 = [v8 firstQueryItemWithName:@"ttyType"];
  v24 = objc_opt_class();
  v93 = v23;
  v25 = [v23 value];
  v26 = [v24 ttyTypeForString:v25];

  v27 = [(TUDialRequest *)self callProviderFromURLComponents:v8 handles:v9 dialType:v13 originatingUIType:v21 isSOS:v22 ttyType:v26 video:&v95 featureFlags:v7];
  if (v27)
  {
    v92 = v26;
    v28 = [(TUDialRequest *)self initWithProvider:v27 featureFlags:v7];
    v29 = v28;
    if (v28)
    {
      v28->_dialType = v13;
      objc_storeStrong(&v28->_handles, v9);
      v29->_originatingUIType = v21;
      v29->_sos = v22;
      v30 = [(TUDialRequest *)v29 contactIdentifierFromURLComponents:v8];
      contactIdentifier = v29->_contactIdentifier;
      v29->_contactIdentifier = v30;

      if (TUDefaultAppsEnabled(v7))
      {
        v32 = MEMORY[0x1E695DFF8];
        v33 = [v8 scheme];
        v29->_preferDefaultApp = [v32 isDefaultCallingAppScheme:v33];
      }

      else
      {
        v29->_preferDefaultApp = 0;
      }

      if (!v29->_contactIdentifier)
      {
        v34 = legacyAddressBookIdentifierToContactIdentifierTransformBlock;
        v35 = [objc_opt_class() contactStore];
        v36 = v34[2](v34, v35, [(TUDialRequest *)v29 legacyAddressBookIdentifierFromURLComponents:v8]);
        v37 = v29->_contactIdentifier;
        v29->_contactIdentifier = v36;
      }

      v38 = [v8 firstQueryItemWithName:@"providerCustomIdentifier"];
      v39 = [v38 value];
      providerCustomIdentifier = v29->_providerCustomIdentifier;
      v29->_providerCustomIdentifier = v39;

      v41 = objc_alloc(MEMORY[0x1E696AFB0]);
      v42 = [v8 firstQueryItemWithName:@"localSenderIdentityUUID"];
      v43 = [v42 value];
      v44 = [v41 initWithUUIDString:v43];
      localSenderIdentityUUID = v29->_localSenderIdentityUUID;
      v29->_localSenderIdentityUUID = v44;

      v46 = objc_alloc(MEMORY[0x1E696AFB0]);
      v47 = [v8 firstQueryItemWithName:@"localSenderIdentityAccountUUID"];
      v48 = [v47 value];
      v49 = [v46 initWithUUIDString:v48];
      localSenderIdentityAccountUUID = v29->_localSenderIdentityAccountUUID;
      v29->_localSenderIdentityAccountUUID = v49;

      v51 = [v8 firstQueryItemWithName:@"TUCallSourceIdentifierKey"];
      v52 = [v51 value];
      audioSourceIdentifier = v29->_audioSourceIdentifier;
      v29->_audioSourceIdentifier = v52;

      v29->_redial = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"redial" inURLComponents:v8];
      v54 = [v8 firstQueryItemWithName:@"endpointIDSDestinationURI"];
      v55 = [v54 value];
      endpointIDSDestinationURI = v29->_endpointIDSDestinationURI;
      v29->_endpointIDSDestinationURI = v55;

      v57 = [v8 firstQueryItemWithName:@"endpointRapportMediaSystemIdentifier"];
      v58 = [v57 value];
      endpointRapportMediaSystemIdentifier = v29->_endpointRapportMediaSystemIdentifier;
      v29->_endpointRapportMediaSystemIdentifier = v58;

      v60 = [v8 firstQueryItemWithName:@"endpointRapportEffectiveIdentifier"];
      v61 = [v60 value];
      endpointRapportEffectiveIdentifier = v29->_endpointRapportEffectiveIdentifier;
      v29->_endpointRapportEffectiveIdentifier = v61;

      v63 = [v8 firstQueryItemWithName:@"relayHostIdentifier"];
      v64 = [v63 value];
      hostIDSIdentifier = v29->_hostIDSIdentifier;
      v29->_hostIDSIdentifier = v64;

      v29->_performDialAssist = ![(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"suppressAssist" inURLComponents:v8];
      if ([(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"suppressAssist" inURLComponents:v8])
      {
        LOBYTE(v66) = 0;
      }

      else
      {
        v66 = ![(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"forceAssist" inURLComponents:v8];
      }

      v29->_performLocalDialAssist = v66;
      v29->_dialAssisted = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"wasAssisted" inURLComponents:v8];
      v29->_shouldStartWithUplinkMuted = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"uplinkMuted" inURLComponents:v8];
      v29->_video = v95;
      v67 = [v8 firstQueryItemWithName:@"successNotification"];
      v68 = [v67 value];
      successNotification = v29->_successNotification;
      v29->_successNotification = v68;

      v70 = [v8 firstQueryItemWithName:@"failureNotification"];
      v71 = [v70 value];
      failureNotification = v29->_failureNotification;
      v29->_failureNotification = v71;

      v73 = [v8 firstQueryItemWithName:@"upgradedFromCallUUID"];
      self = [v73 value];

      if (self)
      {
        v74 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self];
        upgradedFromCallUUID = v29->_upgradedFromCallUUID;
        v29->_upgradedFromCallUUID = v74;
      }

      v76 = [v8 scheme];
      if ([v76 isEqualToIgnoringCase:@"facetime-prompt"])
      {
        v29->_showUIPrompt = 1;
      }

      else
      {
        v77 = [v8 scheme];
        if ([v77 isEqualToIgnoringCase:@"facetime-audio-prompt"])
        {
          v29->_showUIPrompt = 1;
        }

        else
        {
          v90 = v7;
          v78 = [v8 scheme];
          [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
          v89 = v91 = v78;
          if ([v78 isEqualToIgnoringCase:?])
          {
            v29->_showUIPrompt = 1;
          }

          else
          {
            v79 = [v8 scheme];
            v80 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
            v88 = v79;
            v81 = v79;
            v82 = v80;
            if ([v81 isEqualToIgnoringCase:v80])
            {
              v29->_showUIPrompt = 1;
            }

            else
            {
              v83 = [v8 scheme];
              v29->_showUIPrompt = [v83 isEqualToIgnoringCase:@"callkit-audio-prompt"];
            }

            v7 = v90;
          }
        }
      }

      v29->_ttyType = v92;
      v29->_shouldSuppressInCallUI = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"shouldSuppressInCallUI" inURLComponents:v8];
      v29->_launchInBackground = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"launchInBackground" inURLComponents:v8];
      v84 = MEMORY[0x1E695DFF8];
      v85 = [v6 scheme];
      if ([v84 isDefaultCallingAppScheme:v85])
      {
        v86 = [v27 isTelephonyProvider] ^ 1;
      }

      else
      {
        v86 = 0;
      }

      v29->_allowProviderFallback = ([(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"allowProviderFallback" inURLComponents:v8]| v86) & 1;
      v29->_bypassIntervention = [(TUDialRequest *)v29 BOOLValueForQueryItemWithName:@"bypassIntervention" inURLComponents:v8];
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (TUDialRequest)initWithUserActivity:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() callProviderManagerGeneratorBlock];
  v6 = v5[2]();
  v7 = [(TUDialRequest *)self initWithUserActivity:v4 providerManager:v6];

  return v7;
}

- (TUDialRequest)initWithUserActivity:(id)a3 providerManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() contactStore];
  v9 = [(TUDialRequest *)self initWithUserActivity:v7 providerManager:v6 contactsDataSource:v8 senderIdentityClient:0];

  return v9;
}

- (TUDialRequest)initWithUserActivity:(id)a3 providerManager:(id)a4 contactsDataSource:(id)a5 senderIdentityClient:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v10 interaction];
  v15 = [v14 intent];
  v16 = [(TUDialRequest *)self initWithDialIntent:v15 providerManager:v11 contactsDataSource:v13 senderIdentityClient:v12];

  if (v16)
  {
    v17 = [v10 userInfo];
    v18 = [v17 objectForKeyedSubscript:@"providerIdentifier"];
    if (v18)
    {
      v19 = [v11 providerWithIdentifier:v18];
      if (v19)
      {
        objc_storeStrong(&v16->_provider, v19);
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 objectForKeyedSubscript:@"sos"];

    if (v20)
    {
      v21 = [v17 objectForKeyedSubscript:@"sos"];
      v16->_sos = [v21 BOOLValue];
    }

    v22 = [v17 objectForKeyedSubscript:@"redial"];

    if (v22)
    {
      v23 = [v17 objectForKeyedSubscript:@"redial"];
      v16->_redial = [v23 BOOLValue];
    }

    v24 = [v17 objectForKeyedSubscript:@"localSenderIdentityUUID"];

    if (v24)
    {
      v25 = [v17 objectForKeyedSubscript:@"localSenderIdentityUUID"];
      localSenderIdentityUUID = v16->_localSenderIdentityUUID;
      v16->_localSenderIdentityUUID = v25;
    }

    v27 = [v17 objectForKeyedSubscript:@"localSenderIdentityAccountUUID"];

    if (v27)
    {
      v28 = [v17 objectForKeyedSubscript:@"localSenderIdentityAccountUUID"];
      localSenderIdentityAccountUUID = v16->_localSenderIdentityAccountUUID;
      v16->_localSenderIdentityAccountUUID = v28;
    }

    v30 = [v17 objectForKeyedSubscript:@"TUCallSourceIdentifierKey"];

    if (v30)
    {
      v31 = [v17 objectForKeyedSubscript:@"TUCallSourceIdentifierKey"];
      audioSourceIdentifier = v16->_audioSourceIdentifier;
      v16->_audioSourceIdentifier = v31;
    }

    v33 = [v17 objectForKeyedSubscript:@"performDialAssist"];

    if (v33)
    {
      v34 = [v17 objectForKeyedSubscript:@"performDialAssist"];
      v16->_performDialAssist = [v34 BOOLValue];
    }

    v35 = [v17 objectForKeyedSubscript:@"performLocalDialAssist"];

    if (v35)
    {
      v36 = [v17 objectForKeyedSubscript:@"performLocalDialAssist"];
      v16->_performLocalDialAssist = [v36 BOOLValue];
    }

    v37 = [v17 objectForKeyedSubscript:@"dialAssisted"];

    if (v37)
    {
      v38 = [v17 objectForKeyedSubscript:@"dialAssisted"];
      v16->_dialAssisted = [v38 BOOLValue];
    }

    v39 = [v17 objectForKeyedSubscript:@"originatingUI"];

    if (v39)
    {
      v40 = objc_opt_class();
      v41 = [v17 objectForKeyedSubscript:@"originatingUI"];
      v16->_originatingUIType = [v40 originatingUITypeForString:v41];
    }

    v42 = [v17 objectForKeyedSubscript:@"preferDefaultApp"];

    if (v42)
    {
      v43 = [v17 objectForKeyedSubscript:@"preferDefaultApp"];
      v16->_preferDefaultApp = [v43 BOOLValue];
    }
  }

  return v16;
}

- (TUDialRequest)initWithDialIntent:(id)a3 providerManager:(id)a4 contactsDataSource:(id)a5 senderIdentityClient:(id)a6 isEmergencyServicesOverrideEnabled:(BOOL)a7
{
  v150 = a7;
  v171 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v157 = a4;
  v12 = a5;
  obj = a6;
  v13 = a6;
  v14 = v11;
  v152 = v13;
  v15 = TUDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v164 = v11;
    v165 = 2048;
    v166 = [(TUDialRequest *)v11 triggerMethod];
    _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "intent: %@ intent.triggerMethod: %ld", buf, 0x16u);
  }

  v145 = [objc_opt_class() originatingUITypeForExecutionContext:{-[TUDialRequest _executionContext](v11, "_executionContext")}];
  CUTWeakLinkClass();
  CUTWeakLinkClass();
  CUTWeakLinkClass();
  v16 = CUTWeakLinkSymbol();
  v153 = v11;
  if ([(TUDialRequest *)v11 _idiom]!= 4)
  {
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v147 = 1;
    goto LABEL_22;
  }

  v17 = self;
  v18 = [(TUDialRequest *)v11 _originatingDeviceIDSIdentifier];
  if ([v18 length])
  {
    [(TUDialRequest *)v11 _isOwnedByCurrentUser];
    v20 = v19 = v12;
    v21 = [v20 BOOLValue];

    v12 = v19;
    v14 = v11;

    if (v21)
    {
      v22 = [(TUDialRequest *)v11 _originatingDeviceIDSIdentifier];
      v23 = TUDefaultLog();
      v154 = v22;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v164 = v22;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Intent contains an originatingDeviceIDSIdentifier: %@", buf, 0xCu);
      }

      v155 = 0;
      v156 = 0;
      self = v17;
LABEL_20:

      v147 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v24 = [(TUDialRequest *)v14 _originatingDeviceRapportMediaSystemIdentifier];

  v147 = v24 == 0;
  if (v24)
  {
    v25 = [(TUDialRequest *)v14 _originatingDeviceRapportMediaSystemIdentifier];
    v26 = TUDefaultLog();
    self = v17;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v164 = v25;
      _os_log_impl(&dword_1956FD000, v26, OS_LOG_TYPE_DEFAULT, "Intent contains an _originatingDeviceRapportMediaSystemIdentifier: %@", buf, 0xCu);
    }
  }

  else
  {
    v25 = 0;
    self = v17;
  }

  v27 = [(TUDialRequest *)v14 _originatingDeviceRapportEffectiveIdentifier];

  v155 = v25;
  if (v27)
  {
    v156 = [(TUDialRequest *)v14 _originatingDeviceRapportEffectiveIdentifier];
    v23 = TUDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v164 = v156;
      _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Intent contains an originatingDeviceRapportEffectiveIdentifier: %@", buf, 0xCu);
    }

    v154 = 0;
    goto LABEL_20;
  }

  v156 = 0;
  v154 = 0;
LABEL_22:
  if (objc_opt_isKindOfClass())
  {
    v28 = v14;
    v29 = TUDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v28 audioRoute];
      v31 = [v28 ttyType];
      v32 = [v28 preferredCallProvider];
      *buf = 134218496;
      v164 = v30;
      v165 = 2048;
      v166 = v31;
      v167 = 2048;
      v168 = v32;
      _os_log_impl(&dword_1956FD000, v29, OS_LOG_TYPE_DEFAULT, "Start call intent has audioRoute: %ld ttyType: %ld preferredCallProvider: %ld", buf, 0x20u);
    }

    v33 = [v28 contacts];
    v34 = [v33 firstObject];

    v35 = [v28 callCapability]== 2;
    if ([v28 audioRoute]== 1)
    {
      v36 = TUDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v36, OS_LOG_TYPE_DEFAULT, "Intent contains a speakerphone audio route, setting audioSourceIdentifier to TUCallSourceIdentifierSpeakerRoute", buf, 2u);
      }

      v37 = &TUCallSourceIdentifierSpeakerRoute;
    }

    else
    {
      if (!v16 || [v28 audioRoute]!= *v16)
      {
        v52 = v34;
        v53 = [v28 recordDeviceUID];
        v54 = [v53 UUIDString];
        v55 = [v54 length];

        if (v55)
        {
          v56 = [v28 recordDeviceUID];
          v47 = [v56 UUIDString];

          v57 = TUDefaultLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v164 = v47;
            _os_log_impl(&dword_1956FD000, v57, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceUID, setting audioSourceIdentifier to %@", buf, 0xCu);
          }
        }

        else
        {
          v69 = [v28 recordDeviceIdentifier];
          v70 = [v69 length];

          if (v70)
          {
            v47 = [v28 recordDeviceIdentifier];
            v71 = TUDefaultLog();
            v34 = v52;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v164 = v47;
              _os_log_impl(&dword_1956FD000, v71, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceIdentifier, setting audioSourceIdentifier to %@", buf, 0xCu);
            }

LABEL_67:
            v50 = [objc_opt_class() dialRequestTypeForIntentDestinationType:{-[NSObject destinationType](v28, "destinationType")}];
            if (_TUIsInternalInstall() && v150 && [v28 destinationType]== 2)
            {
              v72 = TUDefaultLog();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1956FD000, v72, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
              }

              v50 = 0;
            }

            v51 = [objc_opt_class() ttyTypeForIntentTTYType:{-[NSObject ttyType](v28, "ttyType")}];
            if (!v51)
            {
              if ([v28 _idiom]== 4)
              {
                v73 = TUDefaultLog();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v73, OS_LOG_TYPE_DEFAULT, "Request is from a homepod, setting ttyType to none", buf, 2u);
                }

                v51 = 1;
              }

              else
              {
                v51 = 0;
              }
            }

            v74 = [(TUDialRequest *)v34 personHandle];
            v75 = [v74 emergencyType];

            if (v75 == 1)
            {
              v49 = [v157 emergencyProvider];
              if (_TUIsInternalInstall() && v150 && [v28 destinationType]== 2)
              {
                v76 = TUDefaultLog();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v76, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
                }

LABEL_90:
                v50 = 0;
LABEL_100:
                v87 = TUDefaultLog();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v164 = v49;
                  _os_log_impl(&dword_1956FD000, v87, OS_LOG_TYPE_DEFAULT, "Determined call intent provider: %@", buf, 0xCu);
                }

                goto LABEL_138;
              }
            }

            else
            {
              if (v50 == 2)
              {
                v49 = [v157 voicemailProvider];
                goto LABEL_100;
              }

              if (v50 != 1)
              {
                if (v50)
                {
                  v49 = 0;
                  goto LABEL_100;
                }

                v148 = objc_opt_class();
                v77 = v51;
                v78 = [v28 preferredCallProvider];
                v79 = [v28 callRecordToCallBack];
                [v79 providerId];
                v81 = v80 = v34;
                v82 = [v28 callCapability];
                v83 = v78;
                v51 = v77;
                v84 = [v148 providerForIntentPreferredCallProvider:v83 recentCallProviderId:v81 callCapability:v82 providerManager:v157];

                v34 = v80;
                v49 = v84;
                goto LABEL_90;
              }

              v49 = [v157 emergencyProvider];
            }

            if ([v28 triggerMethod]== 4 && ![(TUDialRequest *)v47 length])
            {
              v85 = TUDefaultLog();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1956FD000, v85, OS_LOG_TYPE_DEFAULT, "It's an emergency call. Siri was triggered by HeySiri, and audioSourceIdentifier isn't set already. setting audioSourceIdentifier to speaker phone.", buf, 2u);
              }

              v86 = @"TUCallSourceIdentifierSpeakerRoute";
              v50 = 1;
              v47 = v86;
            }

            else
            {
              v50 = 1;
            }

            goto LABEL_100;
          }

          v47 = 0;
        }

        v34 = v52;
        goto LABEL_67;
      }

      v46 = TUDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v46, OS_LOG_TYPE_DEFAULT, "Intent contains a Hey Siri audio route, setting audioSourceIdentifier to TUCallSourceIdentifierHeySiri", buf, 2u);
      }

      v37 = &TUCallSourceIdentifierHeySiri;
    }

    v47 = *v37;
    goto LABEL_67;
  }

  v38 = v157;
  if (objc_opt_isKindOfClass())
  {
    v28 = v14;
    v39 = TUDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v28 audioRoute];
      v41 = [v28 ttyType];
      v42 = [v28 preferredCallProvider];
      *buf = 134218496;
      v164 = v40;
      v165 = 2048;
      v166 = v41;
      v167 = 2048;
      v168 = v42;
      _os_log_impl(&dword_1956FD000, v39, OS_LOG_TYPE_DEFAULT, "Start call audio intent has audioRoute: %ld ttyType: %ld preferredCallProvider: %ld", buf, 0x20u);
    }

    v43 = [v28 contacts];
    v34 = [v43 firstObject];

    if ([v28 audioRoute]== 1)
    {
      v44 = TUDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v44, OS_LOG_TYPE_DEFAULT, "Intent contains a speakerphone audio route, setting audioSourceIdentifier to TUCallSourceIdentifierSpeakerRoute", buf, 2u);
      }

      v45 = &TUCallSourceIdentifierSpeakerRoute;
    }

    else
    {
      if (!v16 || [v28 audioRoute]!= *v16)
      {
        v63 = v34;
        v64 = [v28 recordDeviceUID];
        v65 = [v64 UUIDString];
        v66 = [v65 length];

        if (v66)
        {
          v67 = [v28 recordDeviceUID];
          v47 = [v67 UUIDString];

          v68 = TUDefaultLog();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v164 = v47;
            _os_log_impl(&dword_1956FD000, v68, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceUID, setting audioSourceIdentifier to %@", buf, 0xCu);
          }
        }

        else
        {
          v88 = [v28 recordDeviceIdentifier];
          v89 = [v88 length];

          if (v89)
          {
            v47 = [v28 recordDeviceIdentifier];
            v90 = TUDefaultLog();
            v34 = v63;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v164 = v47;
              _os_log_impl(&dword_1956FD000, v90, OS_LOG_TYPE_DEFAULT, "Intent contains a recordDeviceIdentifier, setting audioSourceIdentifier to %@", buf, 0xCu);
            }

LABEL_107:
            v50 = [objc_opt_class() dialRequestTypeForIntentDestinationType:{-[NSObject destinationType](v28, "destinationType")}];
            if (_TUIsInternalInstall() && v150 && [v28 destinationType]== 2)
            {
              v91 = TUDefaultLog();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1956FD000, v91, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
              }

              v50 = 0;
            }

            v51 = [objc_opt_class() ttyTypeForIntentTTYType:{-[NSObject ttyType](v28, "ttyType")}];
            if (!v51)
            {
              if ([v28 _idiom]== 4)
              {
                v92 = TUDefaultLog();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v92, OS_LOG_TYPE_DEFAULT, "Request is from a homepod, setting ttyType to none", buf, 2u);
                }

                v51 = 1;
              }

              else
              {
                v51 = 0;
              }
            }

            v93 = [(TUDialRequest *)v34 personHandle];
            v94 = [v93 emergencyType];

            if (v94 == 1)
            {
              v49 = [v157 emergencyProvider];
              v50 = 1;
              if (_TUIsInternalInstall() && v150)
              {
                if ([v28 destinationType]== 2)
                {
                  v95 = TUDefaultLog();
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1956FD000, v95, OS_LOG_TYPE_DEFAULT, "Emergency override enabled on internal build, and dial request dial type is emergency. Overriding destination type to normal to bypass dialRequest validation check for emergency calls.", buf, 2u);
                  }

                  v50 = 0;
                }

                else
                {
                  v50 = 1;
                }
              }

              goto LABEL_135;
            }

            if (v50 == 2)
            {
              v96 = [v157 voicemailProvider];
            }

            else if (v50 == 1)
            {
              v96 = [v157 emergencyProvider];
            }

            else
            {
              if (v50)
              {
                v49 = 0;
                goto LABEL_135;
              }

              v96 = [objc_opt_class() providerForIntentPreferredCallProvider:-[NSObject preferredCallProvider](v28 recentCallProviderId:"preferredCallProvider") callCapability:0 providerManager:{1, v157}];
            }

            v49 = v96;
LABEL_135:
            v97 = TUDefaultLog();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v164 = v49;
              _os_log_impl(&dword_1956FD000, v97, OS_LOG_TYPE_DEFAULT, "Determined audio call intent provider: %@", buf, 0xCu);
            }

            v35 = 0;
            goto LABEL_138;
          }

          v47 = 0;
        }

        v34 = v63;
        goto LABEL_107;
      }

      v58 = TUDefaultLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v58, OS_LOG_TYPE_DEFAULT, "Intent contains a Hey Siri audio route, setting audioSourceIdentifier to TUCallSourceIdentifierHeySiri", buf, 2u);
      }

      v45 = &TUCallSourceIdentifierHeySiri;
    }

    v47 = *v45;
    goto LABEL_107;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v49 = 0;
    goto LABEL_182;
  }

  v48 = [(TUDialRequest *)v14 contacts];
  v34 = [v48 firstObject];

  v49 = [v157 faceTimeProvider];
  v28 = TUDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v164 = v49;
    _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "Determined video call intent provider: %@", buf, 0xCu);
  }

  v47 = 0;
  v50 = 0;
  v51 = 0;
  v35 = 1;
LABEL_138:

  if (!v49)
  {
    v60 = v47;
    v59 = 0;
    v61 = 0;
    v62 = 0;
    v38 = v157;
    goto LABEL_182;
  }

  v149 = v49;
  v141 = v51;
  v98 = TUDefaultLog();
  v151 = v34;
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
    v99 = [(TUDialRequest *)v34 personHandle];
    v100 = [(TUDialRequest *)v34 personHandle];
    v101 = [v100 value];
    v102 = [(TUDialRequest *)v34 contactIdentifier];
    *buf = 138413058;
    v164 = v151;
    v165 = 2112;
    v166 = v99;
    v167 = 2112;
    v168 = v101;
    v169 = 2112;
    v170 = v102;
    _os_log_impl(&dword_1956FD000, v98, OS_LOG_TYPE_DEFAULT, "Determining destinationID and contactIdentifier for INPerson: %@ (personHandle=%@, personHandle.value=%@, contactIdentifier=%@)", buf, 0x2Au);

    v34 = v151;
  }

  v103 = [(TUDialRequest *)v34 personHandle];
  v104 = [v103 value];
  if ([v104 length])
  {
    v105 = [(TUDialRequest *)v34 contactIdentifier];
    v106 = [v105 length];

    if (v106)
    {
      v62 = [TUHandle handleWithPerson:v34];
      v61 = [(TUDialRequest *)v34 contactIdentifier];
      goto LABEL_154;
    }
  }

  else
  {
  }

  if (v34)
  {
    if (v12)
    {
      v107 = v12;
    }

    else
    {
      v107 = [objc_opt_class() contactStore];
    }

    v108 = v107;
    v160 = 0;
    v109 = [(TUDialRequest *)self _contactFromINPerson:v34 contactsDataSource:v107 bestGuessHandle:&v160];
    v110 = v160;
    v111 = TUDefaultLog();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v164 = v109;
      _os_log_impl(&dword_1956FD000, v111, OS_LOG_TYPE_DEFAULT, "Obtained CNContact from INPerson: %@", buf, 0xCu);
    }

    v62 = v110;
    v61 = [(TUDialRequest *)v109 identifier];
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

LABEL_154:
  v112 = TUDefaultLog();
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v164 = v62;
    v165 = 2112;
    v166 = v61;
    _os_log_impl(&dword_1956FD000, v112, OS_LOG_TYPE_DEFAULT, "Using the following handle and contactIdentifier: %@, %@", buf, 0x16u);
  }

  v113 = [v157 telephonyProvider];
  v114 = TUDefaultLog();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    v115 = [v113 prioritizedSenderIdentities];
    *buf = 138412290;
    v164 = v115;
    _os_log_impl(&dword_1956FD000, v114, OS_LOG_TYPE_DEFAULT, "Sender identities the device holds %@", buf, 0xCu);
  }

  v116 = [v113 prioritizedSenderIdentities];
  v144 = v12;
  v142 = v35;
  v140 = v50;
  if ([v116 count] < 2)
  {
    v125 = self;
    self = 0;
    v143 = 0;
    v124 = 0;
    v128 = 0;
LABEL_175:

    goto LABEL_176;
  }

  v117 = [v61 length];

  if (v117)
  {
    v139 = v47;
    v118 = MEMORY[0x1E695CD58];
    v162 = v61;
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
    v120 = [v118 predicateForContactsWithIdentifiers:v119];

    v121 = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
    v161 = v121;
    v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v161 count:1];

    v159 = 0;
    v143 = v120;
    v122 = [v12 unifiedContactsMatchingPredicate:v120 keysToFetch:v116 error:&v159];
    v123 = v159;
    v138 = v122;
    if (!v122)
    {
      v125 = self;
      v127 = TUDefaultLog();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v164 = v151;
        v165 = 2112;
        v166 = v123;
        _os_log_impl(&dword_1956FD000, v127, OS_LOG_TYPE_DEFAULT, "[WARN] Error obtaining contact from INPerson %@: %@", buf, 0x16u);
      }

      self = 0;
      v124 = 0;
      v128 = v123;
      goto LABEL_174;
    }

    v124 = [v122 firstObject];
    v125 = self;
    v126 = [(TUDialRequest *)self contactGeminiManager];
    v158 = v123;
    v127 = [v126 bestSenderIdentityForContact:v124 error:&v158];
    v128 = v158;

    if (v127)
    {
      self = [v127 accountUUID];
      v129 = TUDefaultLog();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v164 = self;
        _os_log_impl(&dword_1956FD000, v129, OS_LOG_TYPE_DEFAULT, "Contact preferred accountUUIDData %@", buf, 0xCu);
      }
    }

    else
    {
      if (!v128)
      {
        self = 0;
        goto LABEL_174;
      }

      v129 = TUDefaultLog();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        [TUDialRequest initWithDialIntent:v128 providerManager:v129 contactsDataSource:? senderIdentityClient:? isEmergencyServicesOverrideEnabled:?];
      }

      self = 0;
    }

LABEL_174:
    v47 = v139;
    goto LABEL_175;
  }

  v125 = self;
  self = 0;
  v143 = 0;
  v124 = 0;
  v128 = 0;
LABEL_176:
  v34 = v151;
  v130 = [(TUDialRequest *)v151 displayName];
  [(TUDialRequest *)v62 setSiriDisplayName:v130];

  v49 = [(TUDialRequest *)v125 initWithProvider:v149];
  if (v49)
  {
    if (v62)
    {
      [MEMORY[0x1E695DFD8] setWithObject:v62];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v131 = ;
    v132 = *(v49 + 80);
    *(v49 + 80) = v131;

    objc_storeStrong((v49 + 88), v61);
    v133 = [(TUDialRequest *)v151 customIdentifier];
    v134 = *(v49 + 96);
    *(v49 + 96) = v133;

    *(v49 + 8) = v142;
    *(v49 + 72) = v140;
    *(v49 + 112) = v141;
    *(v49 + 24) = v145;
    objc_storeStrong((v49 + 104), v47);
    objc_storeStrong((v49 + 40), obj);
    objc_storeStrong((v49 + 152), v154);
    objc_storeStrong((v49 + 160), v155);
    objc_storeStrong((v49 + 168), v156);
    *(v49 + 14) = v147;
    objc_storeStrong((v49 + 192), self);
    *(v49 + 15) = 0;
  }

  v60 = v47;

  v38 = v157;
  v12 = v144;
  v59 = v149;
LABEL_182:

  v135 = v49;
  v136 = *MEMORY[0x1E69E9840];
  return v135;
}

- (TUDialRequest)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUDialRequest init]"];
  v6 = [v4 stringWithFormat:@"Don't call %@, call designated initializer instead.", v5];
  NSLog(&cfstr_TuassertionFai.isa, v6);

  if (_TUAssertShouldCrashApplication())
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUDialRequest init]"];
    [v7 handleFailureInMethod:a2 object:self file:@"TUDialRequest.m" lineNumber:699 description:{@"Don't call %@, call designated initializer instead.", v8}];
  }

  return 0;
}

- (void)setHandle:(id)a3
{
  if (a3)
  {
    [MEMORY[0x1E695DFD8] setWithObject:?];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;
  [(TUDialRequest *)self setHandles:v4];
}

+ (id)stringForDialType:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown value: %ld>", a3];
  }

  else
  {
    v4 = off_1E7427230[a3];
  }

  return v4;
}

+ (int64_t)handleTypeForQueryItem:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"handleType"];

  if (v5)
  {
    v6 = [v3 value];
    v7 = v6;
    if (v6)
    {
      if ([v6 isEqualToString:@"emailAddress"])
      {
        v8 = 3;
      }

      else if ([v7 isEqualToString:@"generic"])
      {
        v8 = 1;
      }

      else if ([v7 isEqualToString:@"phoneNumber"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)stringForTTYType:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown value: %ld>", a3];
  }

  else
  {
    v4 = off_1E7427248[a3];
  }

  return v4;
}

+ (int64_t)ttyTypeForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"none"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"direct"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"relay"])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)dialRequestTypeForIntentDestinationType:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (int64_t)intentTTYTypeForTTYType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)ttyTypeForIntentTTYType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)providerForIntentPreferredCallProvider:(int64_t)a3 recentCallProviderId:(id)a4 callCapability:(int64_t)a5 providerManager:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = v10;
  v12 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_16;
      }

      v13 = [v10 telephonyProvider];
      goto LABEL_15;
    }

    if (a5 < 2)
    {
      v13 = [v10 defaultProvider];
LABEL_15:
      v12 = v13;
      goto LABEL_16;
    }

    if (a5 == 2)
    {
LABEL_14:
      v13 = [v10 faceTimeProvider];
      goto LABEL_15;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  v12 = [v10 providerWithIdentifier:v9];
  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [TUDialRequest providerForIntentPreferredCallProvider:v12 recentCallProviderId:v14 callCapability:? providerManager:?];
  }

LABEL_16:

  return v12;
}

+ (int)originatingUITypeForExecutionContext:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return 11;
  }

  else
  {
    return dword_19589E4F0[a3];
  }
}

+ (id)stringForOriginatingUIType:(int)a3
{
  if ((a3 - 1) > 0x3F)
  {
    return 0;
  }

  else
  {
    return off_1E7427268[a3 - 1];
  }
}

- (void)setOriginatingUIType:(int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Setting originating UI type to =%d", v7, 8u);
  }

  self->_originatingUIType = a3;
  v6 = *MEMORY[0x1E69E9840];
}

+ (int)originatingUITypeForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"dialer"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"emergencyDialerLockscreen"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"sideButtonPresses"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"volumeLockHold"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"sideButtonHold"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"fallDetection"])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:@"fallDetectionUserResponsive"])
    {
      v5 = 13;
    }

    else if ([v4 isEqualToString:@"ecg"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"phoneRecents"])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:@"phoneFavorites"])
    {
      v5 = 9;
    }

    else if ([v4 isEqualToString:@"facetimeRecents"])
    {
      v5 = 14;
    }

    else if ([v4 isEqualToString:@"facetimeLink"])
    {
      v5 = 15;
    }

    else if ([v4 isEqualToString:@"contactCard"])
    {
      v5 = 16;
    }

    else if ([v4 isEqualToString:@"messagesContactCard"])
    {
      v5 = 17;
    }

    else if ([v4 isEqualToString:@"messagesAvatarBar"])
    {
      v5 = 18;
    }

    else if ([v4 isEqualToString:@"messagesBubble"])
    {
      v5 = 19;
    }

    else if ([v4 isEqualToString:@"facetimeMissedCallNotification"])
    {
      v5 = 23;
    }

    else if ([v4 isEqualToString:@"facetimeGFTNotification"])
    {
      v5 = 24;
    }

    else if ([v4 isEqualToString:@"facetimeOngoing"])
    {
      v5 = 20;
    }

    else if ([v4 isEqualToString:@"facetimeSpotlight"])
    {
      v5 = 22;
    }

    else if ([v4 isEqualToString:@"facetimeCreateCall"])
    {
      v5 = 21;
    }

    else if ([v4 isEqualToString:@"crashDetection"])
    {
      v5 = 10;
    }

    else if ([v4 isEqualToString:@"crashDetectionUserResponsive"])
    {
      v5 = 12;
    }

    else if ([v4 isEqualToString:@"siri"])
    {
      v5 = 11;
    }

    else if ([v4 isEqualToString:@"dialerCallButtonDoubleTap"])
    {
      v5 = 26;
    }

    else if ([v4 isEqualToString:@"inCallUI"])
    {
      v5 = 27;
    }

    else if ([v4 isEqualToString:@"inCallDFR"])
    {
      v5 = 28;
    }

    else if ([v4 isEqualToString:@"assistiveAccessDialer"])
    {
      v5 = 29;
    }

    else if ([v4 isEqualToString:@"assistiveAccessContact"])
    {
      v5 = 30;
    }

    else if ([v4 isEqualToString:@"assistiveAccessRecents"])
    {
      v5 = 31;
    }

    else if ([v4 isEqualToString:@"messagesScreenSharing"])
    {
      v5 = 32;
    }

    else if ([v4 isEqualToString:@"fromStaging"])
    {
      v5 = 33;
    }

    else if ([v4 isEqualToString:@"fromApp"])
    {
      v5 = 34;
    }

    else if ([v4 isEqualToString:@"tuTool"])
    {
      v5 = 35;
    }

    else if ([v4 isEqualToString:@"fromTests"])
    {
      v5 = 36;
    }

    else if ([v4 isEqualToString:@"userActivity"])
    {
      v5 = 37;
    }

    else if ([v4 isEqualToString:@"explicitCallTransfer"])
    {
      v5 = 38;
    }

    else if ([v4 isEqualToString:@"callButtonTap"])
    {
      v5 = 39;
    }

    else if ([v4 isEqualToString:@"fieldModeSendButtonTap"])
    {
      v5 = 40;
    }

    else if ([v4 isEqualToString:@"dialVoicemail"])
    {
      v5 = 41;
    }

    else if ([v4 isEqualToString:@"voiceDial"])
    {
      v5 = 42;
    }

    else if ([v4 isEqualToString:@"handoff"])
    {
      v5 = 43;
    }

    else if ([v4 isEqualToString:@"fromNAC"])
    {
      v5 = 44;
    }

    else if ([v4 isEqualToString:@"answerIncoming"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"answerIncomingFromCarPlay"))
    {
      v5 = 45;
    }

    else if ([v4 isEqualToString:@"answerIncomingCarPlayRecents"])
    {
      v5 = 47;
    }

    else if ([v4 isEqualToString:@"answerIncomingCarPlayCallBackButtonTap"])
    {
      v5 = 48;
    }

    else if ([v4 isEqualToString:@"recentsSearchCall"])
    {
      v5 = 49;
    }

    else if ([v4 isEqualToString:@"recentsSearchVoicemail"])
    {
      v5 = 50;
    }

    else if ([v4 isEqualToString:@"fallbackToTelephony"])
    {
      v5 = 51;
    }

    else if ([v4 isEqualToString:@"carPlayDashboard"])
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUSenderIdentity)localSenderIdentity
{
  v3 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  if (!v3 || (-[TUDialRequest provider](self, "provider"), v4 = objc_claimAutoreleasedReturnValue(), [v4 senderIdentityForAccountUUID:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [(TUDialRequest *)self provider];
    v7 = [v6 prioritizedSenderIdentities];
    v5 = [v7 firstObject];
  }

  return v5;
}

- (id)isEmergencyNumberBlock
{
  isEmergencyNumberBlock = self->_isEmergencyNumberBlock;
  if (!isEmergencyNumberBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__TUDialRequest_isEmergencyNumberBlock__block_invoke;
    v8[3] = &unk_1E74271B0;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(v8);
    v5 = self->_isEmergencyNumberBlock;
    self->_isEmergencyNumberBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isEmergencyNumberBlock = self->_isEmergencyNumberBlock;
  }

  v6 = _Block_copy(isEmergencyNumberBlock);

  return v6;
}

uint64_t __39__TUDialRequest_isEmergencyNumberBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained senderIdentityClient];
    v10 = [v6 UUID];
    v11 = [v9 isEmergencyNumberForDigits:v5 senderIdentityUUID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)isEmergencyNumberOrIsWhitelistedBlock
{
  isEmergencyNumberOrIsWhitelistedBlock = self->_isEmergencyNumberOrIsWhitelistedBlock;
  if (!isEmergencyNumberOrIsWhitelistedBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__TUDialRequest_isEmergencyNumberOrIsWhitelistedBlock__block_invoke;
    v8[3] = &unk_1E74271B0;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(v8);
    v5 = self->_isEmergencyNumberOrIsWhitelistedBlock;
    self->_isEmergencyNumberOrIsWhitelistedBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isEmergencyNumberOrIsWhitelistedBlock = self->_isEmergencyNumberOrIsWhitelistedBlock;
  }

  v6 = _Block_copy(isEmergencyNumberOrIsWhitelistedBlock);

  return v6;
}

uint64_t __54__TUDialRequest_isEmergencyNumberOrIsWhitelistedBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained senderIdentityClient];
    v10 = [v6 UUID];
    v11 = [v9 isWhitelistedEmergencyNumberForDigits:v5 senderIdentityUUID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)destinationID
{
  v2 = [(TUDialRequest *)self handle];
  v3 = [v2 value];

  return v3;
}

- (void)setDestinationID:(id)a3
{
  v8 = a3;
  v4 = [(TUDialRequest *)self handle];
  v5 = [v4 value];
  v6 = TUStringsAreEqualOrNil(v5, v8);

  if ((v6 & 1) == 0)
  {
    if (v8)
    {
      v7 = [TUHandle handleWithDestinationID:?];
      [(TUDialRequest *)self setHandle:v7];
    }

    else
    {
      [(TUDialRequest *)self setHandle:?];
    }
  }
}

- (id)bundleIdentifier
{
  v2 = [(TUDialRequest *)self provider];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)sanitizedHandles
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(TUDialRequest *)self handles];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 normalizedValue];
        v11 = [MEMORY[0x1E696AB08] controlCharacterSet];
        v12 = [v10 stringByTrimmingCharactersInSet:v11];

        if (![v12 length])
        {
          v13 = [v9 value];
          v14 = [MEMORY[0x1E696AB08] controlCharacterSet];
          v15 = [v13 stringByTrimmingCharactersInSet:v14];

          v12 = v15;
        }

        if ([v12 length])
        {
          [v3 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)contactNamesByHandleWithContactsDataSource:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v4 = MEMORY[0x1E695DF90];
  v5 = [(TUDialRequest *)self handles];
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(TUDialRequest *)self sanitizedHandles];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
        v29 = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];

        if ([v11 length])
        {
          v14 = [(TUDialRequest *)self contactIdentifier];
          v15 = [v14 length];

          if (v15)
          {
            v16 = [(TUDialRequest *)self contactIdentifier];
            v17 = [v24 contactForIdentifier:v16 keysToFetch:v13];
          }

          else
          {
            v17 = [v24 contactForDestinationId:v11 keysToFetch:v13];
          }

          v18 = [v17 displayName];
          if ([v18 length])
          {
            v19 = v18;
          }

          else
          {
            v19 = v11;
          }

          [v6 setObject:v19 forKeyedSubscript:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v20 = [v6 copy];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (void)setCallProviderManagerGeneratorBlock:(id)a3
{
  callProviderManagerGeneratorBlock = _Block_copy(a3);

  MEMORY[0x1EEE66BB8]();
}

+ (void)setSenderIdentityClientGeneratorBlock:(id)a3
{
  senderIdentityClientGeneratorBlock = _Block_copy(a3);

  MEMORY[0x1EEE66BB8]();
}

- (CNGeminiManager)contactGeminiManager
{
  contactGeminiManager = self->_contactGeminiManager;
  if (!contactGeminiManager)
  {
    v4 = objc_alloc(MEMORY[0x1E695CEB0]);
    v5 = [objc_opt_class() callProviderManagerGeneratorBlock];
    v6 = v5[2]();
    v7 = [v4 initWithCallProviderManager:v6];
    v8 = self->_contactGeminiManager;
    self->_contactGeminiManager = v7;

    contactGeminiManager = self->_contactGeminiManager;
  }

  return contactGeminiManager;
}

+ (void)setLegacyAddressBookIdentifierToContactIdentifierTransformBlock:(id)a3
{
  legacyAddressBookIdentifierToContactIdentifierTransformBlock = _Block_copy(a3);

  MEMORY[0x1EEE66BB8]();
}

+ (id)legacyAddressBookIdentifierToContactIdentifierTransformBlock
{
  v2 = _Block_copy(legacyAddressBookIdentifierToContactIdentifierTransformBlock);

  return v2;
}

- (BOOL)BOOLValueForQueryItemWithName:(id)a3 inURLComponents:(id)a4
{
  v4 = [a4 firstQueryItemWithName:a3];
  v5 = [v4 value];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)destinationIDFromURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];

  if (v4)
  {
    v5 = [v3 host];
    v6 = IMCopyStringWithLatinNumbers();

    v7 = [v3 user];

    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v3 user];
      v10 = [v8 stringWithFormat:@"%@@%@", v9, v6];

      v6 = v10;
    }

    v11 = [v3 fragment];

    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v3 fragment];
      v14 = [v12 stringWithFormat:@"%@#%@", v6, v13];

      v6 = v14;
    }

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [v3 _destinationIDConvertingNumbersToLatin:1];
    if (v6)
    {
LABEL_7:
      v15 = [MEMORY[0x1E696AB08] controlCharacterSet];
      v16 = [v6 stringByTrimmingCharactersInSet:v15];

      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (id)handleFromURL:(id)a3
{
  v4 = a3;
  v5 = [(TUDialRequest *)self destinationIDFromURL:v4];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
    v7 = [v6 firstQueryItemWithName:@"handleType"];
    if (!v7 || (v8 = [objc_opt_class() handleTypeForQueryItem:v7]) == 0 || (v9 = -[TUHandle initWithType:value:]([TUHandle alloc], "initWithType:value:", v8, v5)) == 0)
    {
      v9 = [TUHandle handleWithDestinationID:v5];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)contactIdentifierFromURLComponents:(id)a3
{
  v3 = [a3 firstQueryItemWithName:@"contactIdentifier"];
  v4 = [v3 value];

  return v4;
}

- (id)callProviderIdentiferFromURLComponents:(id)a3
{
  v3 = [a3 firstQueryItemWithName:@"providerIdentifier"];
  v4 = [v3 value];

  return v4;
}

- (int)legacyAddressBookIdentifierFromURLComponents:(id)a3
{
  v4 = a3;
  v5 = [(TUDialRequest *)self legacyAddressBookIdentifierQueryItemNameFromURLComponents:v4];
  v6 = [v4 firstQueryItemWithName:v5];

  if (v6)
  {
    v7 = [v6 value];
    v8 = [v7 intValue];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)legacyAddressBookIdentifierQueryItemNameFromURLComponents:(id)a3
{
  v4 = a3;
  v5 = [(TUDialRequest *)self provider];
  v6 = [v5 isTelephonyProvider];

  v7 = @"abuid";
  if ((v6 & 1) == 0)
  {
    v8 = [(TUDialRequest *)self provider];
    v9 = [v8 isFaceTimeProvider];

    if (v9)
    {
      v10 = MEMORY[0x1E695DFF8];
      v11 = [v4 scheme];
      LODWORD(v10) = [v10 isDefaultCallingAppScheme:v11];

      if (!v10)
      {
        v7 = @"uid";
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSURL)URL
{
  if ([(TUDialRequest *)self isValid])
  {
    v3 = [(TUDialRequest *)self URLScheme];
    v4 = [(TUDialRequest *)self URLHost];
    v5 = [(TUDialRequest *)self URLQueryItems];
    if (v3)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v6 setScheme:v3];
      [v6 setEncodedHost:v4];
      [v6 setQueryItems:v5];
      v7 = [v6 URL];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)URLScheme
{
  v3 = [(TUDialRequest *)self provider];
  v4 = [v3 isTelephonyProvider];

  if (v4)
  {
    if ([(TUDialRequest *)self dialType]== 1)
    {
      v5 = @"telemergencycall";
      goto LABEL_33;
    }

    v8 = [(TUDialRequest *)self featureFlags];
    v9 = TUDefaultAppsEnabled(v8);

    if (v9)
    {
      v10 = [(TUDialRequest *)self preferDefaultApp];
      v11 = [(TUDialRequest *)self showUIPrompt];
      if (v10)
      {
        if (v11)
        {
          [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
        }

        else
        {
          [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultApp];
        }
      }

      else if (v11)
      {
        [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
      }

      else
      {
        [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
      }
      v12 = ;
LABEL_32:
      v5 = v12;
      goto LABEL_33;
    }

    v15 = [(TUDialRequest *)self featureFlags];
    v16 = [v15 uplevelFTAEnabled];

    if (v16)
    {
      v5 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
      if ([(TUDialRequest *)self showUIPrompt])
      {
        v17 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];

        v5 = v17;
      }
    }

    else
    {
      v5 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeTelephony];
      if ([(TUDialRequest *)self showUIPrompt])
      {

        v5 = @"telprompt";
      }
    }
  }

  else
  {
    v6 = [(TUDialRequest *)self provider];
    v7 = [v6 isFaceTimeProvider];

    if (v7)
    {
      if ([(TUDialRequest *)self isVideo])
      {
        v5 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTime];
        if ([(TUDialRequest *)self showUIPrompt])
        {

          v5 = @"facetime-prompt";
        }
      }

      else
      {
        v5 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeFaceTimeAudio];
        if ([(TUDialRequest *)self showUIPrompt])
        {

          v5 = @"facetime-audio-prompt";
        }
      }
    }

    else
    {
      v13 = [(TUDialRequest *)self provider];
      v14 = [v13 isTinCanProvider];

      if (v14)
      {
        v5 = @"tincan";
        goto LABEL_33;
      }

      v18 = [(TUDialRequest *)self provider];
      v19 = [v18 isSuperboxProvider];

      v20 = [(TUDialRequest *)self isVideo];
      if (v19)
      {
        v21 = @"superbox-audio";
        if (v20)
        {
          v21 = @"superbox-video";
        }

        v12 = v21;
        goto LABEL_32;
      }

      if (v20)
      {
        v5 = @"callkit-video";
        goto LABEL_33;
      }

      v23 = [(TUDialRequest *)self featureFlags];
      if (TUDefaultAppsEnabled(v23))
      {
        v24 = [(TUDialRequest *)self showUIPrompt];

        if (v24)
        {
          v5 = @"callkit-audio-prompt";
          goto LABEL_33;
        }
      }

      else
      {
      }

      v5 = @"callkit-audio";
    }
  }

LABEL_33:

  return v5;
}

- (id)URLHost
{
  v3 = [(TUDialRequest *)self handle];
  v4 = [v3 value];

  if ([(__CFString *)v4 length])
  {
    v5 = [(TUDialRequest *)self handle];
    v6 = [v5 type];

    if (v6 == 2)
    {
      v7 = TUURLHostForTelephoneNumber(v4);

      if ([(__CFString *)v7 length]&& ([(TUDialRequest *)self service]== 2 || [(TUDialRequest *)self service]== 3) && ![(TUDialRequest *)self allowProviderFallback])
      {
        v4 = IMFormatPhoneNumber();
      }

      else
      {
        v4 = v7;
      }
    }
  }

  if ([(__CFString *)v4 length])
  {
    v8 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v9 = [v8 mutableCopy];

    [v9 removeCharactersInString:@"[]:"];
    v10 = [(__CFString *)v4 stringByAddingPercentEncodingWithAllowedCharacters:v9];

    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = &stru_1F098C218;
  }

  v12 = v11;

  return v11;
}

- (id)URLQueryItems
{
  v3 = [(TUDialRequest *)self handleTypeURLQueryItem];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [v4 addObject:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(TUDialRequest *)self isVoicemailURLQueryItem];
  if (v5)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v5];
  }

  v6 = [(TUDialRequest *)self providerCustomIdentifierURLQueryItem];
  if (v6)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v6];
  }

  v7 = [(TUDialRequest *)self localSenderIdentityUUIDURLQueryItem];
  if (v7)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v7];
  }

  v8 = [(TUDialRequest *)self localSenderIdentityAccountUUIDURLQueryItem];
  if (v8)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v8];
  }

  v9 = [(TUDialRequest *)self upgradedCallUUIDURLQueryItem];
  if (v9)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v9];
  }

  v10 = [(TUDialRequest *)self contactIdentifierURLQueryItem];
  if (v10)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v10];
  }

  v11 = [(TUDialRequest *)self callProviderIdentifierURLQueryItem];
  if (v11)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v11];
  }

  v12 = [(TUDialRequest *)self audioSourceIdentifierURLQueryItem];
  if (v12)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v12];
  }

  v13 = [(TUDialRequest *)self forceAssistURLQueryItem];
  if (v13)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v13];
  }

  v14 = [(TUDialRequest *)self suppressAssistURLQueryItem];
  if (v14)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v14];
  }

  v15 = [(TUDialRequest *)self dialAssistedURLQueryItem];
  if (v15)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v15];
  }

  v16 = [(TUDialRequest *)self ttyTypeURLQueryItem];
  if (v16)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v16];
  }

  v17 = [(TUDialRequest *)self originatingUIURLQueryItem];
  if (v17)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v17];
  }

  v18 = [(TUDialRequest *)self noPromptURLQueryItem];
  if (v18)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v18];
  }

  v19 = [(TUDialRequest *)self launchInBackgroundQueryItem];
  if (v19)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v19];
  }

  v20 = [(TUDialRequest *)self sosURLQueryItem];
  if (v20)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v20];
  }

  v21 = [(TUDialRequest *)self redialURLQueryItem];
  if (v21)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v21];
  }

  v22 = [(TUDialRequest *)self endpointIDSDestinationURIQueryItem];
  if (v22)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v22];
  }

  v23 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifierQueryItem];
  if (v23)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v23];
  }

  v24 = [(TUDialRequest *)self endpointRapportEffectiveIdentifierQueryItem];
  if (v24)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v24];
  }

  v25 = [(TUDialRequest *)self shouldSuppressInCallUIQueryItem];
  if (v25)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v25];
  }

  v26 = [(TUDialRequest *)self successNotificationQueryItem];
  if (v26)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v26];
  }

  v27 = [(TUDialRequest *)self failureNotificationQueryItem];
  if (v27)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v27];
  }

  v28 = [(TUDialRequest *)self uplinkMutedURLQueryItem];
  if (v28)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v28];
  }

  v29 = [(TUDialRequest *)self allowProviderFallbackQueryItem];
  if (v29)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v29];
  }

  v30 = [(TUDialRequest *)self bypassInterventionQueryItem];
  if (v30)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:v30];
  }

  v31 = [v4 copy];

  return v31;
}

- (id)isVoicemailURLQueryItem
{
  if ([(TUDialRequest *)self service]== 1 && [(TUDialRequest *)self dialType]== 2)
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"isVoicemail" value:@"1"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contactIdentifierURLQueryItem
{
  v3 = [(TUDialRequest *)self contactIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self contactIdentifier];
    v6 = [v4 queryItemWithName:@"contactIdentifier" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)callProviderIdentifierURLQueryItem
{
  v3 = [(TUDialRequest *)self provider];
  if ([v3 isSystemProvider])
  {
    v4 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v5 = [(TUDialRequest *)self provider];
  v6 = [v5 identifier];

  if (v6)
  {
    v7 = MEMORY[0x1E696AF60];
    v3 = [(TUDialRequest *)self provider];
    v8 = [v3 identifier];
    v4 = [v7 queryItemWithName:@"providerIdentifier" value:v8];

    goto LABEL_5;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)providerCustomIdentifierURLQueryItem
{
  v3 = [(TUDialRequest *)self providerCustomIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self providerCustomIdentifier];
    v6 = [v4 queryItemWithName:@"providerCustomIdentifier" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localSenderIdentityUUIDURLQueryItem
{
  v3 = [(TUDialRequest *)self localSenderIdentityUUID];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self localSenderIdentityUUID];
    v6 = [v5 UUIDString];
    v7 = [v4 queryItemWithName:@"localSenderIdentityUUID" value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localSenderIdentityAccountUUIDURLQueryItem
{
  v3 = [(TUDialRequest *)self localSenderIdentityAccountUUID];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
    v6 = [v5 UUIDString];
    v7 = [v4 queryItemWithName:@"localSenderIdentityAccountUUID" value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)upgradedCallUUIDURLQueryItem
{
  v3 = [(TUDialRequest *)self upgradedFromCallUUID];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self upgradedFromCallUUID];
    v6 = [v5 UUIDString];
    v7 = [v4 queryItemWithName:@"upgradedFromCallUUID" value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)audioSourceIdentifierURLQueryItem
{
  v3 = [(TUDialRequest *)self audioSourceIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self audioSourceIdentifier];
    v6 = [v4 queryItemWithName:@"TUCallSourceIdentifierKey" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)forceAssistURLQueryItem
{
  if ([(TUDialRequest *)self performDialAssist]&& ![(TUDialRequest *)self performLocalDialAssist])
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"forceAssist" value:@"1"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)suppressAssistURLQueryItem
{
  if ([(TUDialRequest *)self performDialAssist]|| [(TUDialRequest *)self performLocalDialAssist])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"suppressAssist" value:@"1"];
  }

  return v3;
}

- (id)dialAssistedURLQueryItem
{
  if ([(TUDialRequest *)self isDialAssisted])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"wasAssisted" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)uplinkMutedURLQueryItem
{
  if ([(TUDialRequest *)self shouldStartWithUplinkMuted])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"uplinkMuted" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)handleTypeURLQueryItem
{
  v3 = [(TUDialRequest *)self handle];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self handle];
    v6 = [v4 queryItemForHandleType:{objc_msgSend(v5, "type")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)ttyTypeURLQueryItem
{
  if ([(TUDialRequest *)self ttyType])
  {
    v3 = MEMORY[0x1E696AF60];
    v4 = [objc_opt_class() stringForTTYType:{-[TUDialRequest ttyType](self, "ttyType")}];
    v5 = [v3 queryItemWithName:@"ttyType" value:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)originatingUIURLQueryItem
{
  v2 = [objc_opt_class() stringForOriginatingUIType:{-[TUDialRequest originatingUIType](self, "originatingUIType")}];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"originatingUI" value:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sosURLQueryItem
{
  if ([(TUDialRequest *)self isSOS])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"sos" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)redialURLQueryItem
{
  if ([(TUDialRequest *)self isRedial])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"redial" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)endpointIDSDestinationURIQueryItem
{
  v3 = [(TUDialRequest *)self endpointIDSDestinationURI];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self endpointIDSDestinationURI];
    v6 = [v4 queryItemWithName:@"endpointIDSDestinationURI" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)endpointRapportMediaSystemIdentifierQueryItem
{
  v3 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
    v6 = [v4 queryItemWithName:@"endpointRapportMediaSystemIdentifier" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)endpointRapportEffectiveIdentifierQueryItem
{
  v3 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
    v6 = [v4 queryItemWithName:@"endpointRapportEffectiveIdentifier" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)shouldSuppressInCallUIQueryItem
{
  if ([(TUDialRequest *)self shouldSuppressInCallUI])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"shouldSuppressInCallUI" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)launchInBackgroundQueryItem
{
  if ([(TUDialRequest *)self launchInBackground])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"launchInBackground" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)successNotificationQueryItem
{
  v3 = [(TUDialRequest *)self successNotification];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self successNotification];
    v6 = [v4 queryItemWithName:@"successNotification" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)failureNotificationQueryItem
{
  v3 = [(TUDialRequest *)self failureNotification];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(TUDialRequest *)self failureNotification];
    v6 = [v4 queryItemWithName:@"failureNotification" value:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allowProviderFallbackQueryItem
{
  if ([(TUDialRequest *)self allowProviderFallback])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"allowProviderFallback" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)bypassInterventionQueryItem
{
  if ([(TUDialRequest *)self bypassIntervention])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"bypassIntervention" value:@"1"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)userActivityUsingDeprecatedCallingIntents:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v83 = *MEMORY[0x1E69E9840];
  if (![(TUDialRequest *)self isValid])
  {
    v17 = 0;
    goto LABEL_46;
  }

  v5 = [(TUDialRequest *)v4 handles];
  v6 = [v5 count];

  if (v6)
  {
    v75 = v3;
    v77 = [MEMORY[0x1E695DF70] array];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v7 = v4;
    obj = [(TUDialRequest *)v4 handles];
    v8 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v79;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v79 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v78 + 1) + 8 * i) personHandle];
          v13 = objc_alloc(CUTWeakLinkClass());
          v14 = [(TUDialRequest *)v7 contactIdentifier];
          v15 = [(TUDialRequest *)v7 providerCustomIdentifier];
          v16 = [v13 initWithPersonHandle:v12 nameComponents:0 displayName:0 image:0 contactIdentifier:v14 customIdentifier:v15];

          [v77 addObject:v16];
        }

        v9 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
      }

      while (v9);
    }

    v4 = v7;
    v3 = v75;
  }

  else
  {
    v77 = 0;
  }

  v18 = [(TUDialRequest *)v4 provider];
  v19 = [v18 isSystemProvider];

  if (v19)
  {
    v20 = [(TUDialRequest *)v4 dialType];
    if (v20 < 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = [objc_opt_class() intentTTYTypeForTTYType:{-[TUDialRequest ttyType](v4, "ttyType")}];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = 1;
  if ([(TUDialRequest *)v4 isVideo])
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = [(TUDialRequest *)v4 provider];
  v26 = [v25 isTelephonyProvider];

  if ((v26 & 1) == 0)
  {
    v27 = [(TUDialRequest *)v4 provider];
    v28 = [v27 isFaceTimeProvider];

    if (v28)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }
  }

  if (![(NSString *)v4->_audioSourceIdentifier isEqualToString:@"TUCallSourceIdentifierSpeakerRoute"])
  {
    if ([(NSString *)v4->_audioSourceIdentifier isEqualToString:@"TUCallSourceIdentifierHeySiri"]&& (v30 = CUTWeakLinkSymbol()) != 0)
    {
      v29 = *v30;
      if (v3)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v29 = 0;
      if (v3)
      {
        goto LABEL_40;
      }
    }

LABEL_32:
    v31 = [objc_alloc(CUTWeakLinkClass()) initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:v29 destinationType:v21 preferredCallProvider:v23 contacts:v77 ttyType:v22 callCapability:v24];
    v32 = [(TUDialRequest *)v4 provider];
    v33 = [v32 bundleIdentifier];
    v34 = [v31 _metadata];
    [v34 setLaunchId:v33];

    v35 = [(TUDialRequest *)v4 launchInBackground];
    v36 = [v31 _metadata];
    [v36 setBackgroundLaunch:v35];

    v37 = [(TUDialRequest *)v4 endpointIDSDestinationURI];
    v38 = [v37 length];

    if (v38)
    {
      v39 = [(TUDialRequest *)v4 endpointIDSDestinationURI];
      [v31 _setOriginatingDeviceIdsIdentifier:v39];
    }

    v40 = [(TUDialRequest *)v4 endpointRapportMediaSystemIdentifier];
    v41 = [v40 length];

    if (v41)
    {
      v42 = [(TUDialRequest *)v4 endpointRapportMediaSystemIdentifier];
      [v31 _setOriginatingDeviceRapportMediaSystemIdentifier:v42];
    }

    v43 = [(TUDialRequest *)v4 endpointRapportEffectiveIdentifier];
    v44 = [v43 length];

    if (v44)
    {
      v45 = [(TUDialRequest *)v4 endpointRapportEffectiveIdentifier];
      [v31 _setOriginatingDeviceRapportEffectiveIdentifier:v45];
    }

    v46 = @"INStartCallIntent";
    goto LABEL_43;
  }

  v29 = 1;
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_40:
  if ([(TUDialRequest *)v4 isVideo])
  {
    v46 = @"INStartVideoCallIntent";
    v31 = [objc_alloc(CUTWeakLinkClass()) initWithContacts:v77];
    v47 = [(TUDialRequest *)v4 provider];
    v48 = [v47 bundleIdentifier];
    v49 = [v31 _metadata];
    [v49 setLaunchId:v48];

    v50 = [(TUDialRequest *)v4 launchInBackground];
    v51 = [v31 _metadata];
    [v51 setBackgroundLaunch:v50];
  }

  else
  {
    v46 = @"INStartAudioCallIntent";
    v31 = [objc_alloc(CUTWeakLinkClass()) initWithDestinationType:v21 contacts:v77];
    v52 = [(TUDialRequest *)v4 provider];
    v53 = [v52 bundleIdentifier];
    v54 = [v31 _metadata];
    [v54 setLaunchId:v53];

    v55 = [(TUDialRequest *)v4 launchInBackground];
    v56 = [v31 _metadata];
    [v56 setBackgroundLaunch:v55];

    [v31 setTTYType:v22];
    [v31 setPreferredCallProvider:v23];
  }

LABEL_43:
  v57 = [objc_alloc(CUTWeakLinkClass()) initWithIntent:v31 response:0];
  [v57 setDirection:1];
  v17 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:v46];
  [v17 _setInteraction:v57 donate:0];
  v58 = [(TUDialRequest *)v4 provider];
  v59 = [v58 isSystemProvider];

  if (v59)
  {
    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest isSOS](v4, "isSOS")}];
    [v60 setObject:v61 forKeyedSubscript:@"sos"];

    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest isRedial](v4, "isRedial")}];
    [v60 setObject:v62 forKeyedSubscript:@"redial"];

    v63 = [(TUDialRequest *)v4 provider];
    v64 = [v63 identifier];
    [v60 setObject:v64 forKeyedSubscript:@"providerIdentifier"];

    v65 = [(TUDialRequest *)v4 localSenderIdentityUUID];
    [v60 setObject:v65 forKeyedSubscript:@"localSenderIdentityUUID"];

    v66 = [(TUDialRequest *)v4 localSenderIdentityAccountUUID];
    [v60 setObject:v66 forKeyedSubscript:@"localSenderIdentityAccountUUID"];

    v67 = [(TUDialRequest *)v4 audioSourceIdentifier];
    [v60 setObject:v67 forKeyedSubscript:@"TUCallSourceIdentifierKey"];

    v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest performDialAssist](v4, "performDialAssist")}];
    [v60 setObject:v68 forKeyedSubscript:@"performDialAssist"];

    v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest performLocalDialAssist](v4, "performLocalDialAssist")}];
    [v60 setObject:v69 forKeyedSubscript:@"performLocalDialAssist"];

    v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest isDialAssisted](v4, "isDialAssisted")}];
    [v60 setObject:v70 forKeyedSubscript:@"dialAssisted"];

    v71 = [objc_opt_class() stringForOriginatingUIType:{-[TUDialRequest originatingUIType](v4, "originatingUIType")}];
    [v60 setObject:v71 forKeyedSubscript:@"originatingUI"];

    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUDialRequest preferDefaultApp](v4, "preferDefaultApp")}];
    [v60 setObject:v72 forKeyedSubscript:@"preferDefaultApp"];

    [v17 setUserInfo:v60];
  }

LABEL_46:
  v73 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)dialRequestByReplacingProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUDialRequest *)self copy];
  [v5 setProvider:v4];

  return v5;
}

- (TUDialRequest)dialRequestWithURLStripping
{
  v3 = [(TUDialRequest *)self allowProviderFallback];
  [(TUDialRequest *)self setAllowProviderFallback:0];
  v4 = [TUDialRequest alloc];
  v5 = [(TUDialRequest *)self URL];
  v6 = [(TUDialRequest *)v4 initWithURL:v5];

  [(TUDialRequest *)self setAllowProviderFallback:v3];

  return v6;
}

- (id)_contactFromINPerson:(id)a3 contactsDataSource:(id)a4 bestGuessHandle:(id *)a5
{
  v66[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  *a5 = 0;
  v9 = [v7 contactIdentifier];
  v10 = [v9 length];

  if (v10)
  {
    v11 = MEMORY[0x1E695CD58];
    v12 = [v7 contactIdentifier];
    v66[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v14 = [v11 predicateForContactsWithIdentifiers:v13];
LABEL_3:
    v15 = v14;
LABEL_4:

    goto LABEL_5;
  }

  v23 = [v7 personHandle];
  v24 = [v23 value];
  v25 = [v24 length];

  if (!v25)
  {
    v31 = [v7 displayName];
    v32 = [v31 length];

    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = MEMORY[0x1E695CD58];
    v12 = [v7 displayName];
    v34 = [v33 predicateForContactsMatchingName:v12];
    goto LABEL_47;
  }

  v26 = [v7 personHandle];
  v12 = [v26 value];

  v27 = [v7 personHandle];
  v28 = [v27 type];

  if (v28)
  {
    if (v28 != 1)
    {
      if (v28 == 2)
      {
        v13 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v12];
        if (!v13)
        {
          v29 = TUDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v62 = v12;
            v30 = "[WARN] Could not create CNPhoneNumber from personHandle.value with phone number type: %@";
LABEL_54:
            _os_log_impl(&dword_1956FD000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
            goto LABEL_55;
          }

          goto LABEL_55;
        }

        goto LABEL_43;
      }

      goto LABEL_51;
    }

    goto LABEL_46;
  }

  v54 = TUDefaultLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v7;
    _os_log_impl(&dword_1956FD000, v54, OS_LOG_TYPE_DEFAULT, "[WARN] INPersonHandle has no type, attempting to infer from value %@", buf, 0xCu);
  }

  if ([v12 _appearsToBePhoneNumber])
  {
    v13 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v12];
    if (!v13)
    {
      v29 = TUDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = v12;
        v30 = "[WARN] Could not create CNPhoneNumber from personHandle.value with unknown type: %@";
        goto LABEL_54;
      }

LABEL_55:

      v15 = 0;
      goto LABEL_4;
    }

LABEL_43:
    v14 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v13];
    goto LABEL_3;
  }

  v55 = [v7 personHandle];
  v56 = [v55 value];
  v57 = [v56 _appearsToBeEmail];

  if (v57)
  {
LABEL_46:
    v34 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v12];
LABEL_47:
    v15 = v34;
    goto LABEL_5;
  }

  v58 = TUDefaultLog();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [v7 personHandle];
    *buf = 138412290;
    v62 = v59;
    _os_log_impl(&dword_1956FD000, v58, OS_LOG_TYPE_DEFAULT, "[WARN] Could not infer INPersonHandleType for person %@", buf, 0xCu);
  }

LABEL_51:
  v15 = 0;
LABEL_5:

  if (v15)
  {
    v16 = *MEMORY[0x1E695C330];
    v65[0] = *MEMORY[0x1E695C208];
    v65[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v60 = 0;
    v18 = [v8 unifiedContactsMatchingPredicate:v15 keysToFetch:v17 error:&v60];
    v19 = v60;
    if (v18)
    {
      v20 = [v18 firstObject];
      v21 = TUDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v18 count];
        *buf = 134218242;
        v62 = v22;
        v63 = 2112;
        v64 = v20;
        _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Found %ld contacts matching INPerson, using %@", buf, 0x16u);
      }
    }

    else
    {
      v21 = TUDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v62 = v7;
        v63 = 2112;
        v64 = v19;
        _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Error obtaining contact from INPerson %@: %@", buf, 0x16u);
      }

      v20 = 0;
    }

    goto LABEL_25;
  }

LABEL_22:
  v17 = TUDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v7;
    _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not create contact search predicate for INPerson: %@", buf, 0xCu);
  }

  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_25:

  v35 = [v7 personHandle];
  v36 = [v35 value];
  v37 = [v36 length];

  if (!v37)
  {
    v43 = [v20 phoneNumbers];
    v44 = [v43 count];

    if (v44)
    {
      v45 = [v20 phoneNumbers];
      v46 = [v45 firstObject];
      v47 = [v46 value];
      v48 = [v47 stringValue];

      v49 = 2;
    }

    else
    {
      v50 = [v20 emailAddresses];
      v51 = [v50 count];

      if (!v51)
      {
        v48 = 0;
        v49 = 1;
LABEL_34:
        if ([v48 length])
        {
          v52 = [TUHandle alloc];
          v53 = [v7 displayName];
          v38 = [(TUHandle *)v52 initWithType:v49 value:v48 siriDisplayName:v53];
        }

        else
        {
          v38 = 0;
        }

        if (v38)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v45 = [v20 emailAddresses];
      v46 = [v45 firstObject];
      v48 = [v46 value];
      v49 = 3;
    }

    goto LABEL_34;
  }

  v38 = [TUHandle handleWithPerson:v7];
  if (v38)
  {
LABEL_27:
    v39 = v38;
    *a5 = v38;
  }

LABEL_28:
  v40 = v20;

  v41 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUDialRequest *)self isEqualToDialRequest:v4];

  return v5;
}

- (BOOL)isEqualToDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUDialRequest *)self service];
  if (v5 == [v4 service] && (v6 = -[TUDialRequest dialType](self, "dialType"), v6 == objc_msgSend(v4, "dialType")))
  {
    v7 = [(TUDialRequest *)self handle];
    v8 = [v4 handle];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUDialRequest *)self contactIdentifier];
      v10 = [v4 contactIdentifier];
      if (TUStringsAreEqualOrNil(v9, v10))
      {
        v11 = [(TUDialRequest *)self providerCustomIdentifier];
        v12 = [v4 providerCustomIdentifier];
        if (TUStringsAreEqualOrNil(v11, v12))
        {
          v13 = [(TUDialRequest *)self localSenderIdentityUUID];
          v14 = [v4 localSenderIdentityUUID];
          if (TUObjectsAreEqualOrNil(v13, v14))
          {
            v56 = v13;
            v15 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
            v54 = [v4 localSenderIdentityAccountUUID];
            v55 = v15;
            if (TUObjectsAreEqualOrNil(v15, v54))
            {
              v16 = [(TUDialRequest *)self audioSourceIdentifier];
              [v4 audioSourceIdentifier];
              v52 = v53 = v16;
              if (TUStringsAreEqualOrNil(v16, v52))
              {
                v17 = [(TUDialRequest *)self contactIdentifier];
                v50 = [v4 contactIdentifier];
                v51 = v17;
                if (TUStringsAreEqualOrNil(v17, v50))
                {
                  v18 = [(TUDialRequest *)self performDialAssist];
                  v19 = v18 == [v4 performDialAssist];
                  v13 = v56;
                  if (v19 && (v48 = -[TUDialRequest performLocalDialAssist](self, "performLocalDialAssist"), v48 == [v4 performLocalDialAssist]))
                  {
                    v49 = [(TUDialRequest *)self upgradedFromCallUUID];
                    v47 = [v4 upgradedFromCallUUID];
                    if (TUObjectsAreEqualOrNil(v49, v47))
                    {
                      v46 = [(TUDialRequest *)self translationRequestConfiguration];
                      v45 = [v4 translationRequestConfiguration];
                      if (TUObjectsAreEqualOrNil(v46, v45) && (v43 = -[TUDialRequest isDialAssisted](self, "isDialAssisted"), v43 == [v4 isDialAssisted]))
                      {
                        v22 = [(TUDialRequest *)self ttyType];
                        if (v22 == [v4 ttyType] && (v23 = -[TUDialRequest showUIPrompt](self, "showUIPrompt"), v23 == objc_msgSend(v4, "showUIPrompt")) && (v24 = -[TUDialRequest isVideo](self, "isVideo"), v24 == objc_msgSend(v4, "isVideo")) && (v25 = -[TUDialRequest isSOS](self, "isSOS"), v25 == objc_msgSend(v4, "isSOS")))
                        {
                          v26 = [(TUDialRequest *)self uniqueProxyIdentifier];
                          v44 = [v4 uniqueProxyIdentifier];
                          if (TUStringsAreEqualOrNil(v26, v44) && (v39 = -[TUDialRequest hostOnCurrentDevice](self, "hostOnCurrentDevice"), v39 == [v4 hostOnCurrentDevice]) && (v40 = -[TUDialRequest originatingUIType](self, "originatingUIType"), v40 == objc_msgSend(v4, "originatingUIType")) && (v41 = -[TUDialRequest endpointOnCurrentDevice](self, "endpointOnCurrentDevice"), v41 == objc_msgSend(v4, "endpointOnCurrentDevice")))
                          {
                            v42 = [(TUDialRequest *)self endpointIDSDestinationURI];
                            v38 = [v4 endpointIDSDestinationURI];
                            if (TUStringsAreEqualOrNil(v42, v38))
                            {
                              v37 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
                              v36 = [v4 endpointRapportMediaSystemIdentifier];
                              if (TUStringsAreEqualOrNil(v37, v36))
                              {
                                v35 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
                                v34 = [v4 endpointRapportEffectiveIdentifier];
                                if (TUStringsAreEqualOrNil(v35, v34) && (v31 = -[TUDialRequest shouldSuppressInCallUI](self, "shouldSuppressInCallUI"), v31 == [v4 shouldSuppressInCallUI]) && (v32 = -[TUDialRequest launchInBackground](self, "launchInBackground"), v32 == objc_msgSend(v4, "launchInBackground")))
                                {
                                  v33 = [(TUDialRequest *)self hostIDSIdentifier];
                                  v30 = [v4 hostIDSIdentifier];
                                  if (TUStringsAreEqualOrNil(v33, v30) && (v28 = -[TUDialRequest preferDefaultApp](self, "preferDefaultApp"), v28 == [v4 preferDefaultApp]) && (v29 = -[TUDialRequest allowProviderFallback](self, "allowProviderFallback"), v29 == objc_msgSend(v4, "allowProviderFallback")))
                                  {
                                    v27 = [(TUDialRequest *)self bypassIntervention];
                                    v20 = v27 ^ [v4 bypassIntervention] ^ 1;
                                  }

                                  else
                                  {
                                    LOBYTE(v20) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v20) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v20) = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v20) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v20) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v20) = 0;
                        }

                        v13 = v56;
                      }

                      else
                      {
                        LOBYTE(v20) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v20) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v20) = 0;
                  }
                }

                else
                {
                  LOBYTE(v20) = 0;
                  v13 = v56;
                }
              }

              else
              {
                LOBYTE(v20) = 0;
                v13 = v56;
              }
            }

            else
            {
              LOBYTE(v20) = 0;
              v13 = v56;
            }
          }

          else
          {
            LOBYTE(v20) = 0;
          }
        }

        else
        {
          LOBYTE(v20) = 0;
        }
      }

      else
      {
        LOBYTE(v20) = 0;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(TUDialRequest *)self service];
  v4 = [(TUDialRequest *)self dialType]- v3 + 32 * v3;
  v5 = [(TUDialRequest *)self handle];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(TUDialRequest *)self contactIdentifier];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(TUDialRequest *)self providerCustomIdentifier];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(TUDialRequest *)self localSenderIdentityUUID];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  v14 = [v13 hash] - v12 + 32 * v12;

  v15 = [(TUDialRequest *)self audioSourceIdentifier];
  v16 = [v15 hash] - v14 + 32 * v14;

  if ([(TUDialRequest *)self performDialAssist])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  v18 = v17 - v16 + 32 * v16;
  if ([(TUDialRequest *)self performLocalDialAssist])
  {
    v19 = 1231;
  }

  else
  {
    v19 = 1237;
  }

  v20 = v19 - v18 + 32 * v18;
  if ([(TUDialRequest *)self isDialAssisted])
  {
    v21 = 1231;
  }

  else
  {
    v21 = 1237;
  }

  v22 = [(TUDialRequest *)self ttyType]- (v21 - v20 + 32 * v20) + 32 * (v21 - v20 + 32 * v20);
  v23 = [(TUDialRequest *)self upgradedFromCallUUID];
  v24 = [v23 hash] - v22 + 32 * v22;

  v25 = [(TUDialRequest *)self translationRequestConfiguration];
  v26 = [v25 hash] - v24 + 32 * v24;

  if ([(TUDialRequest *)self showUIPrompt])
  {
    v27 = 1231;
  }

  else
  {
    v27 = 1237;
  }

  v28 = v27 - v26 + 32 * v26;
  if ([(TUDialRequest *)self launchInBackground])
  {
    v29 = 1231;
  }

  else
  {
    v29 = 1237;
  }

  v30 = v29 - v28 + 32 * v28;
  if ([(TUDialRequest *)self isVideo])
  {
    v31 = 1231;
  }

  else
  {
    v31 = 1237;
  }

  v32 = v31 - v30 + 32 * v30;
  v33 = [(TUDialRequest *)self uniqueProxyIdentifier];
  v34 = [v33 hash] - v32 + 32 * v32;

  if ([(TUDialRequest *)self hostOnCurrentDevice])
  {
    v35 = 1231;
  }

  else
  {
    v35 = 1237;
  }

  v36 = 31 * (v35 - v34 + 32 * v34) + [(TUDialRequest *)self originatingUIType];
  if ([(TUDialRequest *)self isSOS])
  {
    v37 = 1231;
  }

  else
  {
    v37 = 1237;
  }

  v38 = v37 - v36 + 32 * v36;
  if ([(TUDialRequest *)self isRedial])
  {
    v39 = 1231;
  }

  else
  {
    v39 = 1237;
  }

  v40 = v39 - v38 + 32 * v38;
  if ([(TUDialRequest *)self endpointOnCurrentDevice])
  {
    v41 = 1231;
  }

  else
  {
    v41 = 1237;
  }

  v42 = v41 - v40 + 32 * v40;
  v43 = [(TUDialRequest *)self endpointIDSDestinationURI];
  v44 = [v43 hash] - v42 + 32 * v42;

  v45 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
  v46 = [v45 hash] - v44 + 32 * v44;

  v47 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
  v48 = [v47 hash] - v46 + 32 * v46;

  if ([(TUDialRequest *)self shouldSuppressInCallUI])
  {
    v49 = 1231;
  }

  else
  {
    v49 = 1237;
  }

  v50 = v49 - v48 + 32 * v48;
  if ([(TUDialRequest *)self preferDefaultApp])
  {
    v51 = 1231;
  }

  else
  {
    v51 = 1237;
  }

  v52 = v51 - v50 + 32 * v50;
  if ([(TUDialRequest *)self allowProviderFallback])
  {
    v53 = 1231;
  }

  else
  {
    v53 = 1237;
  }

  v54 = v53 - v52 + 32 * v52;
  if ([(TUDialRequest *)self bypassIntervention])
  {
    v55 = 1231;
  }

  else
  {
    v55 = 1237;
  }

  return v55 - v54 + 32 * v54 + 0x79CAF9C914E8C841;
}

- (TUDialRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
  v6 = [(TUDialRequest *)self initWithProvider:v5];

  if (v6)
  {
    v6->_dialType = [v4 decodeIntegerForKey:@"dialType"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_handles);
    v10 = [v4 decodeArrayOfObjectsOfClass:v8 forKey:v9];
    v11 = [v7 setWithArray:v10];
    handles = v6->_handles;
    v6->_handles = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioSourceIdentifier"];
    v14 = [v13 copy];
    audioSourceIdentifier = v6->_audioSourceIdentifier;
    v6->_audioSourceIdentifier = v14;

    v6->_video = [v4 decodeBoolForKey:@"video"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    v17 = [v16 copy];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerCustomIdentifier"];
    v20 = [v19 copy];
    providerCustomIdentifier = v6->_providerCustomIdentifier;
    v6->_providerCustomIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityUUID"];
    v23 = [v22 copy];
    localSenderIdentityUUID = v6->_localSenderIdentityUUID;
    v6->_localSenderIdentityUUID = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityAccountUUID"];
    v26 = [v25 copy];
    localSenderIdentityAccountUUID = v6->_localSenderIdentityAccountUUID;
    v6->_localSenderIdentityAccountUUID = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"upgradedFromCallUUID"];
    v29 = [v28 copy];
    upgradedFromCallUUID = v6->_upgradedFromCallUUID;
    v6->_upgradedFromCallUUID = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TUCallTranslationRequestConfiguration"];
    v32 = [v31 copy];
    translationRequestConfiguration = v6->_translationRequestConfiguration;
    v6->_translationRequestConfiguration = v32;

    v6->_performDialAssist = [v4 decodeBoolForKey:@"performDialAssist"];
    v6->_performLocalDialAssist = [v4 decodeBoolForKey:@"performLocalDialAssist"];
    v6->_dialAssisted = [v4 decodeBoolForKey:@"dialAssisted"];
    v6->_shouldStartWithUplinkMuted = [v4 decodeBoolForKey:@"shouldStartWithUplinkMuted"];
    v6->_ttyType = [v4 decodeIntegerForKey:@"ttyType"];
    v6->_showUIPrompt = [v4 decodeBoolForKey:@"showUIPrompt"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueProxyIdentifier"];
    uniqueProxyIdentifier = v6->_uniqueProxyIdentifier;
    v6->_uniqueProxyIdentifier = v34;

    v6->_hostOnCurrentDevice = [v4 decodeBoolForKey:@"hostOnCurrentDevice"];
    v6->_originatingUIType = [v4 decodeIntForKey:@"originatingUIType"];
    v6->_sos = [v4 decodeBoolForKey:@"sos"];
    v6->_redial = [v4 decodeBoolForKey:@"redial"];
    v6->_endpointOnCurrentDevice = [v4 decodeBoolForKey:@"endpointOnCurrentDevice"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointIDSDestinationURI"];
    endpointIDSDestinationURI = v6->_endpointIDSDestinationURI;
    v6->_endpointIDSDestinationURI = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointRapportMediaSystemIdentifier"];
    endpointRapportMediaSystemIdentifier = v6->_endpointRapportMediaSystemIdentifier;
    v6->_endpointRapportMediaSystemIdentifier = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointRapportEffectiveIdentifier"];
    endpointRapportEffectiveIdentifier = v6->_endpointRapportEffectiveIdentifier;
    v6->_endpointRapportEffectiveIdentifier = v40;

    v6->_shouldSuppressInCallUI = [v4 decodeBoolForKey:@"shouldSuppressInCallUI"];
    v6->_launchInBackground = [v4 decodeBoolForKey:@"launchInBackground"];
    [v4 decodeSizeForKey:@"localLandscapeAspectRatio"];
    v6->_localLandscapeAspectRatio.width = v42;
    v6->_localLandscapeAspectRatio.height = v43;
    [v4 decodeSizeForKey:@"localPortraitAspectRatio"];
    v6->_localPortraitAspectRatio.width = v44;
    v6->_localPortraitAspectRatio.height = v45;
    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_dateDialed);
    v48 = [v4 decodeObjectOfClass:v46 forKey:v47];
    dateDialed = v6->_dateDialed;
    v6->_dateDialed = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processHandle"];
    processHandle = v6->_processHandle;
    v6->_processHandle = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostIDSIdentifier"];
    hostIDSIdentifier = v6->_hostIDSIdentifier;
    v6->_hostIDSIdentifier = v52;

    v6->_preferDefaultApp = [v4 decodeBoolForKey:@"preferDefaultApp"];
    v6->_allowProviderFallback = [v4 decodeBoolForKey:@"allowProviderFallback"];
    v6->_bypassIntervention = [v4 decodeBoolForKey:@"bypassIntervention"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  provider = self->_provider;
  v9 = a3;
  [v9 encodeObject:provider forKey:@"provider"];
  [v9 encodeInteger:self->_dialType forKey:@"dialType"];
  v5 = [(NSSet *)self->_handles allObjects];
  v6 = NSStringFromSelector(sel_handles);
  [v9 encodeObject:v5 forKey:v6];

  [v9 encodeObject:self->_audioSourceIdentifier forKey:@"audioSourceIdentifier"];
  [v9 encodeBool:self->_video forKey:@"video"];
  [v9 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [v9 encodeObject:self->_providerCustomIdentifier forKey:@"providerCustomIdentifier"];
  [v9 encodeObject:self->_localSenderIdentityUUID forKey:@"localSenderIdentityUUID"];
  [v9 encodeObject:self->_localSenderIdentityAccountUUID forKey:@"localSenderIdentityAccountUUID"];
  [v9 encodeObject:self->_translationRequestConfiguration forKey:@"TUCallTranslationRequestConfiguration"];
  [v9 encodeBool:self->_performDialAssist forKey:@"performDialAssist"];
  [v9 encodeBool:self->_performLocalDialAssist forKey:@"performLocalDialAssist"];
  [v9 encodeBool:self->_dialAssisted forKey:@"dialAssisted"];
  [v9 encodeBool:self->_shouldStartWithUplinkMuted forKey:@"shouldStartWithUplinkMuted"];
  [v9 encodeInteger:self->_ttyType forKey:@"ttyType"];
  [v9 encodeBool:self->_showUIPrompt forKey:@"showUIPrompt"];
  [v9 encodeObject:self->_uniqueProxyIdentifier forKey:@"uniqueProxyIdentifier"];
  [v9 encodeBool:self->_hostOnCurrentDevice forKey:@"hostOnCurrentDevice"];
  [v9 encodeInteger:self->_originatingUIType forKey:@"originatingUIType"];
  [v9 encodeBool:self->_sos forKey:@"sos"];
  [v9 encodeBool:self->_redial forKey:@"redial"];
  [v9 encodeBool:self->_endpointOnCurrentDevice forKey:@"endpointOnCurrentDevice"];
  [v9 encodeObject:self->_endpointIDSDestinationURI forKey:@"endpointIDSDestinationURI"];
  [v9 encodeObject:self->_endpointRapportMediaSystemIdentifier forKey:@"endpointRapportMediaSystemIdentifier"];
  [v9 encodeObject:self->_endpointRapportEffectiveIdentifier forKey:@"endpointRapportEffectiveIdentifier"];
  [v9 encodeObject:self->_hostIDSIdentifier forKey:@"hostIDSIdentifier"];
  [v9 encodeBool:self->_shouldSuppressInCallUI forKey:@"shouldSuppressInCallUI"];
  [v9 encodeBool:self->_launchInBackground forKey:@"launchInBackground"];
  [v9 encodeObject:self->_successNotification forKey:@"successNotification"];
  [v9 encodeObject:self->_failureNotification forKey:@"failureNotification"];
  [v9 encodeSize:@"localLandscapeAspectRatio" forKey:{self->_localLandscapeAspectRatio.width, self->_localLandscapeAspectRatio.height}];
  [v9 encodeSize:@"localPortraitAspectRatio" forKey:{self->_localPortraitAspectRatio.width, self->_localPortraitAspectRatio.height}];
  dateDialed = self->_dateDialed;
  v8 = NSStringFromSelector(sel_dateDialed);
  [v9 encodeObject:dateDialed forKey:v8];

  [v9 encodeObject:self->_processHandle forKey:@"processHandle"];
  [v9 encodeBool:self->_preferDefaultApp forKey:@"preferDefaultApp"];
  [v9 encodeBool:self->_allowProviderFallback forKey:@"allowProviderFallback"];
  [v9 encodeBool:self->_bypassIntervention forKey:@"bypassIntervention"];
  [v9 encodeObject:self->_upgradedFromCallUUID forKey:@"upgradedFromCallUUID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(TUDialRequest *)self provider];
  v7 = [v5 initWithProvider:v6];

  if (v7)
  {
    [v7 setDialType:{-[TUDialRequest dialType](self, "dialType")}];
    v8 = [(TUDialRequest *)self handles];
    v9 = [v8 copyWithZone:a3];
    [v7 setHandles:v9];

    v10 = [(TUDialRequest *)self contactIdentifier];
    v11 = [v10 copyWithZone:a3];
    [v7 setContactIdentifier:v11];

    v12 = [(TUDialRequest *)self providerCustomIdentifier];
    v13 = [v12 copyWithZone:a3];
    [v7 setProviderCustomIdentifier:v13];

    v14 = [(TUDialRequest *)self localSenderIdentityUUID];
    v15 = [v14 copyWithZone:a3];
    [v7 setLocalSenderIdentityUUID:v15];

    v16 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
    v17 = [v16 copyWithZone:a3];
    [v7 setLocalSenderIdentityAccountUUID:v17];

    v18 = [(TUDialRequest *)self upgradedFromCallUUID];
    v19 = [v18 copyWithZone:a3];
    [v7 setUpgradedFromCallUUID:v19];

    v20 = [(TUDialRequest *)self translationRequestConfiguration];
    v21 = [v20 copyWithZone:a3];
    [v7 setTranslationRequestConfiguration:v21];

    v22 = [(TUDialRequest *)self audioSourceIdentifier];
    v23 = [v22 copyWithZone:a3];
    [v7 setAudioSourceIdentifier:v23];

    [v7 setVideo:{-[TUDialRequest isVideo](self, "isVideo")}];
    [v7 setPerformDialAssist:{-[TUDialRequest performDialAssist](self, "performDialAssist")}];
    [v7 setPerformLocalDialAssist:{-[TUDialRequest performLocalDialAssist](self, "performLocalDialAssist")}];
    [v7 setDialAssisted:{-[TUDialRequest isDialAssisted](self, "isDialAssisted")}];
    [v7 setTtyType:{-[TUDialRequest ttyType](self, "ttyType")}];
    [v7 setShowUIPrompt:{-[TUDialRequest showUIPrompt](self, "showUIPrompt")}];
    v24 = [(TUDialRequest *)self uniqueProxyIdentifier];
    v25 = [v24 copyWithZone:a3];
    [v7 setUniqueProxyIdentifier:v25];

    [v7 setHostOnCurrentDevice:{-[TUDialRequest hostOnCurrentDevice](self, "hostOnCurrentDevice")}];
    [v7 setOriginatingUIType:{-[TUDialRequest originatingUIType](self, "originatingUIType")}];
    [v7 setSOS:{-[TUDialRequest isSOS](self, "isSOS")}];
    [v7 setRedial:{-[TUDialRequest isRedial](self, "isRedial")}];
    [v7 setEndpointOnCurrentDevice:{-[TUDialRequest endpointOnCurrentDevice](self, "endpointOnCurrentDevice")}];
    v26 = [(TUDialRequest *)self endpointIDSDestinationURI];
    v27 = [v26 copyWithZone:a3];
    [v7 setEndpointIDSDestinationURI:v27];

    v28 = [(TUDialRequest *)self endpointRapportMediaSystemIdentifier];
    v29 = [v28 copyWithZone:a3];
    [v7 setEndpointRapportMediaSystemIdentifier:v29];

    v30 = [(TUDialRequest *)self endpointRapportEffectiveIdentifier];
    v31 = [v30 copyWithZone:a3];
    [v7 setEndpointRapportEffectiveIdentifier:v31];

    v32 = [(TUDialRequest *)self hostIDSIdentifier];
    v33 = [v32 copyWithZone:a3];
    [v7 setHostIDSIdentifier:v33];

    [v7 setShouldSuppressInCallUI:{-[TUDialRequest shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
    [v7 setLaunchInBackground:{-[TUDialRequest launchInBackground](self, "launchInBackground")}];
    v34 = [(TUDialRequest *)self successNotification];
    [v7 setSuccessNotification:v34];

    v35 = [(TUDialRequest *)self failureNotification];
    [v7 setFailureNotification:v35];

    v36 = [(TUDialRequest *)self dateDialed];
    [v7 setDateDialed:v36];

    v37 = [(TUDialRequest *)self processHandle];
    [v7 setProcessHandle:v37];

    [v7 setPreferDefaultApp:{-[TUDialRequest preferDefaultApp](self, "preferDefaultApp")}];
    [v7 setAllowProviderFallback:{-[TUDialRequest allowProviderFallback](self, "allowProviderFallback")}];
    [v7 setShouldStartWithUplinkMuted:{-[TUDialRequest shouldStartWithUplinkMuted](self, "shouldStartWithUplinkMuted")}];
    [v7 setBypassIntervention:{-[TUDialRequest bypassIntervention](self, "bypassIntervention")}];
  }

  return v7;
}

- (void)initWithProvider:(uint64_t)a1 featureFlags:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUDialRequest.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];
}

- (void)initWithDialIntent:(uint64_t)a1 providerManager:(NSObject *)a2 contactsDataSource:senderIdentityClient:isEmergencyServicesOverrideEnabled:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not find sender identity for contact %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)providerForIntentPreferredCallProvider:(void *)a1 recentCallProviderId:(NSObject *)a2 callCapability:providerManager:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 bundleIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "Using third-party provider: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end