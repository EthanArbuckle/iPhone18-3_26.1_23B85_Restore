@interface SKAChannelManager
+ (id)logger;
- (BOOL)shouldRetryRequestForResponse:(id)response withRetryInterval:(unsigned int *)interval currentRetry:(unint64_t)retry;
- (SKAChannelManager)initWithPushManager:(id)manager accountProvider:(id)provider delegate:(id)delegate;
- (SKAChannelManagingDelegate)delegate;
- (id)_createPayloadDataFromData:(id)data;
- (id)_getNonce;
- (id)_getPresenceJWTToken;
- (id)_getStatusJWTToken;
- (id)serverTime;
- (void)_getPresenceJWTToken;
- (void)activePresenceChannelSubscriptionsWithCompletion:(id)completion;
- (void)activeStatusChannelSubscriptionsWithCompletion:(id)completion;
- (void)assertPresence:(id)presence withPriority:(int64_t)priority onChannel:(id)channel membershipKey:(id)key serverKey:(id)serverKey timestamp:(id)timestamp withChannelToken:(id)token serviceIdentifier:(id)self0 isRefresh:(BOOL)self1 completion:(id)self2;
- (void)createChannelWithCompletion:(id)completion;
- (void)createPresenceChannelWithMembershipKey:(id)key serverKey:(id)serverKey serviceIdentifier:(id)identifier completion:(id)completion;
- (void)disableActivityTracking;
- (void)enableActivityTracking;
- (void)pollActiveParticipantsForChannel:(id)channel membershipKey:(id)key serverKey:(id)serverKey withChannelToken:(id)token serviceIdentifier:(id)identifier completion:(id)completion;
- (void)publishProvisionPayloads:(id)payloads onChannel:(id)channel withChannelToken:(id)token publishInitiateTime:(id)time retryCount:(unint64_t)count completion:(id)completion;
- (void)pushManager:(id)manager didReceiveData:(id)data onChannel:(id)channel identifier:(unint64_t)identifier dateReceived:(id)received dateExpired:(id)expired;
- (void)pushManager:(id)manager failedToSubscribeToChannel:(id)channel withError:(id)error;
- (void)releasePresenceOnChannel:(id)channel membershipKey:(id)key serverKey:(id)serverKey timestamp:(id)timestamp withChannelToken:(id)token serviceIdentifier:(id)identifier completion:(id)completion;
- (void)subscribeToPresenceChannels:(id)channels;
- (void)subscribeToStatusChannels:(id)channels;
- (void)unsubscribeFromPresenceChannels:(id)channels;
- (void)unsubscribeFromStatusChannels:(id)channels;
@end

@implementation SKAChannelManager

- (SKAChannelManager)initWithPushManager:(id)manager accountProvider:(id)provider delegate:(id)delegate
{
  managerCopy = manager;
  providerCopy = provider;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SKAChannelManager;
  v12 = [(SKAChannelManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pushManager, manager);
    [(SKAPushManaging *)v13->_pushManager setDelegate:v13];
    objc_storeStrong(&v13->_accountProvider, provider);
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (void)createChannelWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received request to create a personal channel", buf, 2u);
  }

  v6 = objc_alloc_init(AuthCredential);
  _getStatusJWTToken = [(SKAChannelManager *)self _getStatusJWTToken];
  if (_getStatusJWTToken)
  {
    [(AuthCredential *)v6 setSimpleJwt:_getStatusJWTToken];
    v8 = objc_alloc_init(SharedChannelCreateRequest);
    [(SharedChannelCreateRequest *)v8 setAuthCredential:v6];
    [(SharedChannelCreateRequest *)v8 setChannelOwnershipType:0];
    [(SharedChannelCreateRequest *)v8 setChannelTopic:@"com.apple.icloud.presence.mode.status"];
    data = [(SharedChannelCreateRequest *)v8 data];
    v10 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Asking push manager to execute create channel request", buf, 2u);
    }

    pushManager = [(SKAChannelManager *)self pushManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__SKAChannelManager_createChannelWithCompletion___block_invoke;
    v13[3] = &unk_27843E1F8;
    v14 = completionCopy;
    [pushManager createChannelWithProtoData:data completion:v13];
  }

  else
  {
    v12 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    v8 = [SKAError errorWithCode:700];
    (*(completionCopy + 2))(completionCopy, 0, 0, v8);
  }
}

void __49__SKAChannelManager_createChannelWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAChannelManager logger];
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Channel create response received", buf, 2u);
    }

    v9 = [[SharedChannelCreateResponse alloc] initWithData:v5];
    v10 = [(SharedChannelCreateResponse *)v9 status];
    v11 = v10;
    if (v10 <= 3)
    {
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v12 = @"AUTH_FAILED";
        }

        else
        {
          v12 = @"BAD_REQUEST";
        }

        goto LABEL_29;
      }

      if (!v10)
      {
        v13 = +[SKAChannelManager logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Channel create success response received: %@", buf, 0xCu);
        }

        v14 = [(SharedChannelCreateResponse *)v9 channelIdentity];
        v15 = [(__CFString *)v14 channelId];
        v16 = [v15 base64EncodedStringWithOptions:0];

        v17 = [(__CFString *)v14 channelToken];
        (*(*(a1 + 32) + 16))();

        goto LABEL_39;
      }

      if (v10 == 1)
      {
        v12 = @"AUTH_EXPIRED";
        goto LABEL_29;
      }
    }

    else
    {
      if (v10 <= 5)
      {
        if (v10 == 4)
        {
          v12 = @"CHANNEL_IDENTITY_VALIDATION_FAILED";
        }

        else
        {
          v12 = @"INTERNAL_ERROR";
        }

        goto LABEL_29;
      }

      switch(v10)
      {
        case 6:
          v12 = @"STALE_PUBLISH_REJECTED";
          goto LABEL_29;
        case 7:
          v12 = @"RATE_LIMITED";
          goto LABEL_29;
        case 8:
          v12 = @"INVALID_NONCE";
LABEL_29:
          v18 = @"Generic non-success response status";
          if (v12)
          {
            v18 = v12;
          }

          v14 = v18;

          v19 = +[SKAChannelManager logger];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __49__SKAChannelManager_createChannelWithCompletion___block_invoke_cold_2();
          }

          if ([(SharedChannelCreateResponse *)v9 hasRetryIntervalSeconds]&& [(SharedChannelCreateResponse *)v9 retryIntervalSeconds])
          {
            v20 = +[SKAChannelManager logger];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(SharedChannelCreateResponse *)v9 retryIntervalSeconds];
              *buf = 134217984;
              v24 = v21;
              _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Retry interval specified: %ld", buf, 0xCu);
            }
          }

          v16 = [SKAError errorWithResponseStatus:v11];
          (*(*(a1 + 32) + 16))();
LABEL_39:

          goto LABEL_40;
      }
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
    goto LABEL_29;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __49__SKAChannelManager_createChannelWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
LABEL_40:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)createPresenceChannelWithMembershipKey:(id)key serverKey:(id)serverKey serviceIdentifier:(id)identifier completion:(id)completion
{
  keyCopy = key;
  serverKeyCopy = serverKey;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Received request to create a presence channel", buf, 2u);
  }

  v14 = objc_alloc_init(AuthCredential);
  v15 = objc_alloc_init(SharedOwnershipAuth);
  _getPresenceJWTToken = [(SKAChannelManager *)self _getPresenceJWTToken];
  if (_getPresenceJWTToken)
  {
    [(SharedOwnershipAuth *)v15 setSimpleJwt:_getPresenceJWTToken];
    publicKeyMaterial = [keyCopy publicKeyMaterial];
    [(SharedOwnershipAuth *)v15 setChannelPublicKey:publicKeyMaterial];

    v26 = serverKeyCopy;
    keyMaterial = [serverKeyCopy keyMaterial];
    [(SharedOwnershipAuth *)v15 setServerEncryptionKey:keyMaterial];

    _getNonce = [(SKAChannelManager *)self _getNonce];
    [(SharedOwnershipAuth *)v15 setNonce:_getNonce];
    v20 = [keyCopy signPayload:_getNonce];
    [(SharedOwnershipAuth *)v15 setSignNonce:v20];

    [(AuthCredential *)v14 setSharedOwnershipAuth:v15];
    v21 = objc_alloc_init(SharedChannelCreateRequest);
    [(SharedChannelCreateRequest *)v21 setAuthCredential:v14];
    [(SharedChannelCreateRequest *)v21 setChannelOwnershipType:1];
    [(SharedChannelCreateRequest *)v21 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
    [(SharedChannelCreateRequest *)v21 setAdopter:identifierCopy];
    data = [(SharedChannelCreateRequest *)v21 data];
    v23 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Asking push manager to execute create presence channel request", buf, 2u);
    }

    pushManager = [(SKAChannelManager *)self pushManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke;
    v28[3] = &unk_27843E1F8;
    v29 = completionCopy;
    [pushManager createChannelWithProtoData:data completion:v28];

    serverKeyCopy = v26;
  }

  else
  {
    v25 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    _getNonce = [SKAError errorWithCode:700];
    (*(completionCopy + 2))(completionCopy, 0, 0, _getNonce);
  }
}

void __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAChannelManager logger];
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Presence channel create response received", buf, 2u);
    }

    v9 = [[SharedChannelCreateResponse alloc] initWithData:v5];
    v10 = [(SharedChannelCreateResponse *)v9 status];
    v11 = v10;
    if (v10 <= 3)
    {
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v12 = @"AUTH_FAILED";
        }

        else
        {
          v12 = @"BAD_REQUEST";
        }

        goto LABEL_29;
      }

      if (!v10)
      {
        v13 = +[SKAChannelManager logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Presence channel create success response received: %@", buf, 0xCu);
        }

        v14 = [(SharedChannelCreateResponse *)v9 channelIdentity];
        v15 = [(__CFString *)v14 channelId];
        v16 = [v15 base64EncodedStringWithOptions:0];

        v17 = [(__CFString *)v14 channelToken];
        (*(*(a1 + 32) + 16))();

        goto LABEL_39;
      }

      if (v10 == 1)
      {
        v12 = @"AUTH_EXPIRED";
        goto LABEL_29;
      }
    }

    else
    {
      if (v10 <= 5)
      {
        if (v10 == 4)
        {
          v12 = @"CHANNEL_IDENTITY_VALIDATION_FAILED";
        }

        else
        {
          v12 = @"INTERNAL_ERROR";
        }

        goto LABEL_29;
      }

      switch(v10)
      {
        case 6:
          v12 = @"STALE_PUBLISH_REJECTED";
          goto LABEL_29;
        case 7:
          v12 = @"RATE_LIMITED";
          goto LABEL_29;
        case 8:
          v12 = @"INVALID_NONCE";
LABEL_29:
          v18 = @"Generic non-success response status";
          if (v12)
          {
            v18 = v12;
          }

          v14 = v18;

          v19 = +[SKAChannelManager logger];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke_cold_2();
          }

          if ([(SharedChannelCreateResponse *)v9 hasRetryIntervalSeconds]&& [(SharedChannelCreateResponse *)v9 retryIntervalSeconds])
          {
            v20 = +[SKAChannelManager logger];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(SharedChannelCreateResponse *)v9 retryIntervalSeconds];
              *buf = 134217984;
              v24 = v21;
              _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Retry interval specified: %ld", buf, 0xCu);
            }
          }

          v16 = [SKAError errorWithResponseStatus:v11];
          (*(*(a1 + 32) + 16))();
LABEL_39:

          goto LABEL_40;
      }
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
    goto LABEL_29;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
LABEL_40:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)publishProvisionPayloads:(id)payloads onChannel:(id)channel withChannelToken:(id)token publishInitiateTime:(id)time retryCount:(unint64_t)count completion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  payloadsCopy = payloads;
  channelCopy = channel;
  tokenCopy = token;
  completionCopy = completion;
  v16 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = channelCopy;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Received request to provision payloads on channel %@", buf, 0xCu);
  }

  _getStatusJWTToken = [(SKAChannelManager *)self _getStatusJWTToken];
  if (_getStatusJWTToken)
  {
    selfCopy = self;
    v49 = completionCopy;
    v46 = objc_alloc_init(AuthCredential);
    v48 = _getStatusJWTToken;
    [(AuthCredential *)v46 setSimpleJwt:_getStatusJWTToken];
    v18 = objc_alloc_init(ChannelIdentity);
    v50 = tokenCopy;
    [(ChannelIdentity *)v18 setChannelToken:tokenCopy];
    v51 = channelCopy;
    v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:channelCopy options:0];
    [(ChannelIdentity *)v18 setChannelId:v19];

    [(ChannelIdentity *)v18 setChannelOwnershipType:0];
    [(ChannelIdentity *)v18 setChannelTopic:@"com.apple.icloud.presence.mode.status"];
    v20 = objc_alloc_init(ChannelDeferredPublishInfo);
    v45 = v18;
    [(ChannelDeferredPublishInfo *)v20 setChannelIdentity:v18];
    [(ChannelDeferredPublishInfo *)v20 setPushPriority:1];
    [(ChannelDeferredPublishInfo *)v20 setRetryCount:0];
    v55 = v20;
    [(ChannelDeferredPublishInfo *)v20 setAdopter:@"CarrierPigeon"];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v52 = payloadsCopy;
    obj = payloadsCopy;
    v56 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v56)
    {
      v54 = *v60;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v60 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v59 + 1) + 8 * i);
          v23 = objc_alloc_init(SharedChannelProvisionOffGridPacketInfo);
          v24 = MEMORY[0x277CBEA90];
          decryptionKey = [v22 decryptionKey];
          sHA256Data = [decryptionKey SHA256Data];
          bytes = [sHA256Data bytes];
          decryptionKey2 = [v22 decryptionKey];
          sHA256Data2 = [decryptionKey2 SHA256Data];
          v30 = [sHA256Data2 length];

          if (v30 >= 8)
          {
            v31 = 8;
          }

          else
          {
            v31 = v30;
          }

          v32 = [v24 dataWithBytes:bytes length:v31];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setPacketId:v32];

          encryptedStatusPayload = [v22 encryptedStatusPayload];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setEncryptedPacket:encryptedStatusPayload];

          validUntil = [v22 validUntil];
          [validUntil timeIntervalSince1970];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setPacketExpirationTimestampMillis:1000 * v35];

          commitmentSalt = [v22 commitmentSalt];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setCommitmentSalt:commitmentSalt];

          initializationVector = [v22 initializationVector];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setInitializationVector:initializationVector];

          [(ChannelDeferredPublishInfo *)v55 addChannelProvisionOffGridPacketInfo:v23];
        }

        v56 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v56);
    }

    v38 = objc_alloc_init(SharedChannelProvisionOffGridPayloadRequest);
    v39 = v46;
    [(SharedChannelProvisionOffGridPayloadRequest *)v38 setAuthCredential:v46];
    [(SharedChannelProvisionOffGridPayloadRequest *)v38 setChannelDeferredPublishInfo:v55];
    v40 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v40, OS_LOG_TYPE_DEFAULT, "Sending provision request to push manager", buf, 2u);
    }

    pushManager = [(SKAChannelManager *)selfCopy pushManager];
    data = [(SharedChannelProvisionOffGridPayloadRequest *)v38 data];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke;
    v57[3] = &unk_27843E1F8;
    completionCopy = v49;
    v58 = v49;
    [pushManager provisionPayload:data completion:v57];

    channelCopy = v51;
    payloadsCopy = v52;
    tokenCopy = v50;
    _getStatusJWTToken = v48;
  }

  else
  {
    v43 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager publishProvisionPayloads:onChannel:withChannelToken:publishInitiateTime:retryCount:completion:];
    }

    v39 = [SKAError errorWithCode:700];
    (*(completionCopy + 2))(completionCopy, v39);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = +[SKAChannelManager logger];
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Handling protobuf response data for completed provision request", &v19, 2u);
      }

      v10 = [[SharedChannelProvisionOffGridPayloadResponse alloc] initWithData:v5];
      v11 = [(SharedChannelProvisionOffGridPayloadResponse *)v10 status];
      v12 = +[SKAChannelManager logger];
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke_cold_2(v10);
        }

        if ([(SharedChannelProvisionOffGridPayloadResponse *)v10 hasRetryIntervalSeconds]&& [(SharedChannelProvisionOffGridPayloadResponse *)v10 retryIntervalSeconds])
        {
          v14 = +[SKAChannelManager logger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(SharedChannelProvisionOffGridPayloadResponse *)v10 retryIntervalSeconds];
            v19 = 134217984;
            v20 = v15;
            _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Retry interval specified: %ld", &v19, 0xCu);
          }
        }

        v16 = [SKAError errorWithResponseStatus:[(SharedChannelProvisionOffGridPayloadResponse *)v10 status]];
        (*(*(a1 + 32) + 16))();

        goto LABEL_24;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Provision request completed with success", &v19, 2u);
      }

      v17 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke_cold_3();
      }

      v10 = [SKAError errorWithCode:808];
      v17 = *(*(a1 + 32) + 16);
    }

    v17();
LABEL_24:

    goto LABEL_25;
  }

  v7 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];
}

void __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = +[SKAChannelManager logger];
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Handling protobuf response data for completed status publish request", &v20, 2u);
      }

      v10 = [[SharedChannelPublishResponse alloc] initWithData:v5];
      v11 = [(SharedChannelPublishResponse *)v10 status];
      v12 = +[SKAChannelManager logger];
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke_cold_2(v10);
        }

        if ([(SharedChannelPublishResponse *)v10 hasRetryIntervalSeconds]&& [(SharedChannelPublishResponse *)v10 retryIntervalSeconds])
        {
          v14 = +[SKAChannelManager logger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(SharedChannelPublishResponse *)v10 retryIntervalSeconds];
            v20 = 134217984;
            v21 = v15;
            _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Retry interval specified: %ld", &v20, 0xCu);
          }

          v16 = [SKAError errorWithResponseStatus:[(SharedChannelPublishResponse *)v10 status] retryInterval:[(SharedChannelPublishResponse *)v10 retryIntervalSeconds]];
        }

        else
        {
          v16 = [SKAError errorWithResponseStatus:[(SharedChannelPublishResponse *)v10 status]];
        }

        v18 = v16;
        (*(*(a1 + 32) + 16))();

        goto LABEL_25;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Publish status request completed with success", &v20, 2u);
      }

      v17 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke_cold_3();
      }

      v10 = [SKAError errorWithCode:808];
      v17 = *(*(a1 + 32) + 16);
    }

    v17();
LABEL_25:

    goto LABEL_26;
  }

  v7 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
LABEL_26:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)assertPresence:(id)presence withPriority:(int64_t)priority onChannel:(id)channel membershipKey:(id)key serverKey:(id)serverKey timestamp:(id)timestamp withChannelToken:(id)token serviceIdentifier:(id)self0 isRefresh:(BOOL)self1 completion:(id)self2
{
  v60 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  channelCopy = channel;
  keyCopy = key;
  serverKeyCopy = serverKey;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  completionCopy = completion;
  tokenCopy = token;
  v20 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCACA8] descriptionFromSKUpdatePriority:priority];
    *buf = 138412546;
    *&buf[4] = channelCopy;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Received request to assert presence on channel %@ with priority %@", buf, 0x16u);
  }

  v22 = objc_alloc_init(ChannelIdentity);
  [(ChannelIdentity *)v22 setChannelToken:tokenCopy];

  v48 = channelCopy;
  v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:channelCopy options:0];
  [(ChannelIdentity *)v22 setChannelId:v23];

  [(ChannelIdentity *)v22 setChannelOwnershipType:1];
  [(ChannelIdentity *)v22 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
  v24 = objc_alloc_init(AuthCredential);
  v25 = objc_alloc_init(SharedOwnershipAuth);
  _getPresenceJWTToken = [(SKAChannelManager *)self _getPresenceJWTToken];
  if (_getPresenceJWTToken)
  {
    [(SharedOwnershipAuth *)v25 setSimpleJwt:_getPresenceJWTToken];
    [keyCopy publicKeyMaterial];
    v28 = v27 = v24;
    [(SharedOwnershipAuth *)v25 setChannelPublicKey:v28];

    keyMaterial = [serverKeyCopy keyMaterial];
    [(SharedOwnershipAuth *)v25 setServerEncryptionKey:keyMaterial];

    selfCopy = self;
    _getNonce = [(SKAChannelManager *)self _getNonce];
    [(SharedOwnershipAuth *)v25 setNonce:_getNonce];
    v31 = [keyCopy signPayload:_getNonce];
    [(SharedOwnershipAuth *)v25 setSignNonce:v31];

    [(AuthCredential *)v27 setSharedOwnershipAuth:v25];
    v32 = objc_alloc_init(ChannelActivityActivationRequest);
    v45 = v27;
    [(ChannelActivityActivationRequest *)v32 setAuthCredential:v27];
    [(ChannelActivityActivationRequest *)v32 setChannelIdentity:v22];
    [(ChannelActivityActivationRequest *)v32 setRequestFlag:refresh];
    uUID = [MEMORY[0x277CCAD78] UUID];
    *buf = 0;
    *&buf[8] = 0;
    [uUID getUUIDBytes:buf];
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [(ChannelActivityActivationRequest *)v32 setUuid:v34];
    [timestampCopy timeIntervalSince1970];
    [(ChannelActivityActivationRequest *)v32 setClientTimestampSeconds:v35];
    [(ChannelActivityActivationRequest *)v32 setEncryptedParticipantPayload:presenceCopy];
    [(ChannelActivityActivationRequest *)v32 setAdopter:identifierCopy];
    if (priority != 2)
    {
      if (priority == 1)
      {
        v36 = 1;
LABEL_14:
        [(ChannelActivityActivationRequest *)v32 setPushPriority:v36];
        v40 = objc_alloc_init(SharedChannelActivityRequest);
        [(SharedChannelActivityRequest *)v40 setActivationRequest:v32];
        [(SharedChannelActivityRequest *)v40 setRequest:1];
        v41 = +[SKAChannelManager logger];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 138412290;
          v58 = uUID;
          _os_log_impl(&dword_220099000, v41, OS_LOG_TYPE_DEFAULT, "Sending presence activation request %@ to push manager", v57, 0xCu);
        }

        pushManager = [(SKAChannelManager *)selfCopy pushManager];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke;
        v54[3] = &unk_27843E220;
        v55 = uUID;
        v38 = completionCopy;
        v56 = completionCopy;
        v43 = uUID;
        [pushManager sendPresenceMessage:v40 completion:v54];

        v24 = v45;
        goto LABEL_17;
      }

      v39 = +[SKAChannelManager logger];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [SKAChannelManager assertPresence:withPriority:onChannel:membershipKey:serverKey:timestamp:withChannelToken:serviceIdentifier:isRefresh:completion:];
      }
    }

    v36 = 2;
    goto LABEL_14;
  }

  v37 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [SKAChannelManager createChannelWithCompletion:];
  }

  _getNonce = [SKAError errorWithCode:700];
  v38 = completionCopy;
  (*(completionCopy + 2))(completionCopy, _getNonce, 0, MEMORY[0x277CBEBF8], 1.79769313e308);
LABEL_17:

  v44 = *MEMORY[0x277D85DE8];
}

void __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))(1.79769313e308);
  }

  else if (v5 && [v5 count])
  {
    v8 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v39 = v9;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Handling protobuf response data for completed presence assertion request %@", buf, 0xCu);
    }

    v31 = 0;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = v5;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v35;
      v15 = 0.0;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [*(*(&v34 + 1) + 8 * i) activationResponse];
          v18 = v17;
          if (v15 < 2.22044605e-16)
          {
            v15 = [v17 activationExpirySeconds];
          }

          if (!v13)
          {
            v13 = [v18 version];
          }

          v19 = [v18 status];
          v20 = +[SKAChannelManager logger];
          v21 = v20;
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke_cold_2((a1 + 32), v18);
            }

            v27 = +[SKAError errorWithResponseStatus:](SKAError, "errorWithResponseStatus:", [v18 status]);
            (*(*(a1 + 40) + 16))(1.79769313e308);

            goto LABEL_34;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 32);
            v23 = [v18 participantPayloads];
            *buf = 138412546;
            v39 = v22;
            v40 = 2112;
            v41 = v23;
            _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Found payloads for request %@: %@", buf, 0x16u);
          }

          v24 = [v18 participantPayloads];
          [v10 addObjectsFromArray:v24];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 0.0;
    }

    v28 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      *buf = 138412290;
      v39 = v29;
      _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "Presence assertion request %@ completed with success", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))(v15);
LABEL_34:

    v6 = v31;
    v5 = v32;
  }

  else
  {
    v25 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke_cold_3(a1);
    }

    v26 = [SKAError errorWithCode:808];
    (*(*(a1 + 40) + 16))(1.79769313e308);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)releasePresenceOnChannel:(id)channel membershipKey:(id)key serverKey:(id)serverKey timestamp:(id)timestamp withChannelToken:(id)token serviceIdentifier:(id)identifier completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  keyCopy = key;
  serverKeyCopy = serverKey;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  completionCopy = completion;
  tokenCopy = token;
  v19 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = channelCopy;
    _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Received request to release presence on channel %@", buf, 0xCu);
  }

  v20 = objc_alloc_init(ChannelIdentity);
  [(ChannelIdentity *)v20 setChannelToken:tokenCopy];

  v43 = channelCopy;
  v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:channelCopy options:0];
  [(ChannelIdentity *)v20 setChannelId:v21];

  [(ChannelIdentity *)v20 setChannelOwnershipType:1];
  [(ChannelIdentity *)v20 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
  v22 = objc_alloc_init(AuthCredential);
  v23 = objc_alloc_init(SharedOwnershipAuth);
  _getPresenceJWTToken = [(SKAChannelManager *)self _getPresenceJWTToken];
  v42 = serverKeyCopy;
  if (_getPresenceJWTToken)
  {
    [(SharedOwnershipAuth *)v23 setSimpleJwt:_getPresenceJWTToken];
    publicKeyMaterial = [keyCopy publicKeyMaterial];
    [(SharedOwnershipAuth *)v23 setChannelPublicKey:publicKeyMaterial];

    keyMaterial = [serverKeyCopy keyMaterial];
    [(SharedOwnershipAuth *)v23 setServerEncryptionKey:keyMaterial];

    _getNonce = [(SKAChannelManager *)self _getNonce];
    [(SharedOwnershipAuth *)v23 setNonce:_getNonce];
    v40 = keyCopy;
    v28 = [keyCopy signPayload:_getNonce];
    [(SharedOwnershipAuth *)v23 setSignNonce:v28];

    [(AuthCredential *)v22 setSharedOwnershipAuth:v23];
    v29 = objc_alloc_init(ChannelActivityDeactivationRequest);
    [(ChannelActivityDeactivationRequest *)v29 setAuthCredential:v22];
    [(ChannelActivityDeactivationRequest *)v29 setChannelIdentity:v20];
    *buf = 0uLL;
    uUID = [MEMORY[0x277CCAD78] UUID];
    [uUID getUUIDBytes:buf];

    v31 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [(ChannelActivityDeactivationRequest *)v29 setUuid:v31];
    [timestampCopy timeIntervalSince1970];
    [(ChannelActivityDeactivationRequest *)v29 setClientTimestampSeconds:v32];
    [(ChannelActivityDeactivationRequest *)v29 setAdopter:identifierCopy];
    v33 = objc_alloc_init(SharedChannelActivityRequest);
    [(SharedChannelActivityRequest *)v33 setDeactivationRequest:v29];
    [(SharedChannelActivityRequest *)v33 setRequest:2];
    v34 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 138412290;
      v50 = v31;
      _os_log_impl(&dword_220099000, v34, OS_LOG_TYPE_DEFAULT, "Sending presence deactivation request %@ to push manager", v49, 0xCu);
    }

    pushManager = [(SKAChannelManager *)self pushManager];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke;
    v46[3] = &unk_27843E220;
    v47 = v31;
    v36 = completionCopy;
    v48 = completionCopy;
    v37 = v31;
    [pushManager sendPresenceMessage:v33 completion:v46];

    keyCopy = v40;
  }

  else
  {
    v38 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    _getNonce = [SKAError errorWithCode:700];
    v36 = completionCopy;
    (*(completionCopy + 2))(completionCopy, _getNonce);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5 && [v5 count])
    {
      v8 = +[SKAChannelManager logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Handling protobuf response data for completed presence assertion release request %@", &v20, 0xCu);
      }

      v10 = [v5 firstObject];
      v11 = [v10 deactivationResponse];

      v12 = [v11 status];
      v13 = +[SKAChannelManager logger];
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke_cold_2(a1, v11);
        }

        v15 = +[SKAError errorWithResponseStatus:](SKAError, "errorWithResponseStatus:", [v11 status]);
        (*(*(a1 + 40) + 16))();

        goto LABEL_17;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Presence assertion release request %@ completed with success", &v20, 0xCu);
      }

      v17 = *(*(a1 + 40) + 16);
    }

    else
    {
      v16 = +[SKAChannelManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke_cold_3(a1);
      }

      v11 = [SKAError errorWithCode:808];
      v17 = *(*(a1 + 40) + 16);
    }

    v17();
LABEL_17:

    goto LABEL_18;
  }

  v7 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)pollActiveParticipantsForChannel:(id)channel membershipKey:(id)key serverKey:(id)serverKey withChannelToken:(id)token serviceIdentifier:(id)identifier completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  keyCopy = key;
  serverKeyCopy = serverKey;
  identifierCopy = identifier;
  completionCopy = completion;
  tokenCopy = token;
  v18 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = channelCopy;
    _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Received request to poll presence on channel %@", &buf, 0xCu);
  }

  v19 = objc_alloc_init(ChannelIdentity);
  [(ChannelIdentity *)v19 setChannelToken:tokenCopy];

  v44 = channelCopy;
  v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:channelCopy options:0];
  [(ChannelIdentity *)v19 setChannelId:v20];

  [(ChannelIdentity *)v19 setChannelOwnershipType:1];
  [(ChannelIdentity *)v19 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
  v21 = objc_alloc_init(AuthCredential);
  v22 = objc_alloc_init(SharedOwnershipAuth);
  [(SKAChannelManager *)self _getPresenceJWTToken];
  v24 = v23 = self;
  if (v24)
  {
    [(SharedOwnershipAuth *)v22 setSimpleJwt:v24];
    publicKeyMaterial = [keyCopy publicKeyMaterial];
    [(SharedOwnershipAuth *)v22 setChannelPublicKey:publicKeyMaterial];

    v41 = serverKeyCopy;
    keyMaterial = [serverKeyCopy keyMaterial];
    [(SharedOwnershipAuth *)v22 setServerEncryptionKey:keyMaterial];

    v40 = v23;
    _getNonce = [(SKAChannelManager *)v23 _getNonce];
    [(SharedOwnershipAuth *)v22 setNonce:_getNonce];
    v42 = keyCopy;
    v28 = [keyCopy signPayload:_getNonce];
    [(SharedOwnershipAuth *)v22 setSignNonce:v28];

    [(AuthCredential *)v21 setSharedOwnershipAuth:v22];
    v29 = objc_alloc_init(ChannelActivityPollingRequest);
    v39 = v21;
    [(ChannelActivityPollingRequest *)v29 setAuthCredential:v21];
    [(ChannelActivityPollingRequest *)v29 setChannelIdentity:v19];
    [(ChannelActivityPollingRequest *)v29 setRequestFlag:2];
    uUID = [MEMORY[0x277CCAD78] UUID];
    buf = 0uLL;
    [uUID getUUIDBytes:&buf];
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:&buf length:16];
    [(ChannelActivityPollingRequest *)v29 setUuid:v31];
    [(ChannelActivityPollingRequest *)v29 setAdopter:identifierCopy];
    v32 = objc_alloc_init(SharedChannelActivityRequest);
    [(SharedChannelActivityRequest *)v32 setPollingRequest:v29];
    [(SharedChannelActivityRequest *)v32 setRequest:3];
    v33 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 138412290;
      v50 = uUID;
      _os_log_impl(&dword_220099000, v33, OS_LOG_TYPE_DEFAULT, "Sending polling request %@ to push manager", v49, 0xCu);
    }

    pushManager = [(SKAChannelManager *)v40 pushManager];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke;
    v46[3] = &unk_27843E220;
    v47 = uUID;
    v35 = completionCopy;
    v48 = completionCopy;
    v36 = uUID;
    [pushManager sendPresenceMessage:v32 completion:v46];

    serverKeyCopy = v41;
    keyCopy = v42;
    v21 = v39;
  }

  else
  {
    v37 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    _getNonce = [SKAError errorWithCode:700];
    v35 = completionCopy;
    (*(completionCopy + 2))(completionCopy, _getNonce, 0, MEMORY[0x277CBEBF8]);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v5 && [v5 count])
  {
    v8 = 0x27843D000uLL;
    v9 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Handling protobuf response data for completed polling request %@", buf, 0xCu);
    }

    v34 = a1;
    v32 = 0;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v37;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [*(*(&v36 + 1) + 8 * i) pollingResponse];
          v18 = v17;
          if (!v14)
          {
            v14 = [v17 version];
          }

          v19 = [v18 status];
          v20 = [*(v8 + 896) logger];
          v21 = v20;
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke_cold_2((v34 + 32), v18);
            }

            v28 = +[SKAError errorWithResponseStatus:](SKAError, "errorWithResponseStatus:", [v18 status]);
            (*(*(v34 + 40) + 16))();

            goto LABEL_31;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v8;
            v23 = *(v34 + 32);
            v24 = [v18 participantPayloads];
            *buf = 138412546;
            v41 = v23;
            v8 = v22;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Found payloads for request %@: %@", buf, 0x16u);
          }

          v25 = [v18 participantPayloads];
          [v11 addObjectsFromArray:v25];
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v29 = [*(v8 + 896) logger];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v34 + 32);
      *buf = 138412290;
      v41 = v30;
      _os_log_impl(&dword_220099000, v29, OS_LOG_TYPE_DEFAULT, "Polling request %@ completed with success", buf, 0xCu);
    }

    (*(*(v34 + 40) + 16))();
LABEL_31:

    v6 = v32;
    v5 = v33;
  }

  else
  {
    v26 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke_cold_3(a1);
    }

    v27 = [SKAError errorWithCode:808];
    (*(*(a1 + 40) + 16))();
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)activeStatusChannelSubscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Fetching subscribed Status channels", buf, 2u);
  }

  pushManager = self->_pushManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SKAChannelManager_activeStatusChannelSubscriptionsWithCompletion___block_invoke;
  v8[3] = &unk_27843E248;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SKAPushManaging *)pushManager subscribedStatusChannelsWithCompletion:v8];
}

void __68__SKAChannelManager_activeStatusChannelSubscriptionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = [v3 count];
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Received %ld subscribed Status channels: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToStatusChannels:(id)channels
{
  v9 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = channelsCopy;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Subscribing to Status channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager subscribeToStatusChannels:channelsCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromStatusChannels:(id)channels
{
  v9 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = channelsCopy;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Unsubscribing from Status channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager unsubscribeFromStatusChannels:channelsCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)activePresenceChannelSubscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Fetching subscribed Presence channels", buf, 2u);
  }

  pushManager = self->_pushManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SKAChannelManager_activePresenceChannelSubscriptionsWithCompletion___block_invoke;
  v8[3] = &unk_27843E248;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SKAPushManaging *)pushManager subscribedPresenceChannelsWithCompletion:v8];
}

void __70__SKAChannelManager_activePresenceChannelSubscriptionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = [v3 count];
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Received %ld subscribed Presence channels: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToPresenceChannels:(id)channels
{
  v9 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = channelsCopy;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Subscribing to Presence channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager subscribeToPresenceChannels:channelsCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromPresenceChannels:(id)channels
{
  v9 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = channelsCopy;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Unsubscribing from Presence channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager unsubscribeFromPresenceChannels:channelsCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableActivityTracking
{
  v3 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Enabling activity tracking", v4, 2u);
  }

  [(SKAPushManaging *)self->_pushManager enableActivityTracking];
}

- (void)disableActivityTracking
{
  v3 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Disabling activity tracking", v4, 2u);
  }

  [(SKAPushManaging *)self->_pushManager disableActivityTracking];
}

- (id)_createPayloadDataFromData:(id)data
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"StatusKitDataKey";
  v3 = [data base64EncodedStringWithOptions:0];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:0];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)serverTime
{
  pushManager = [(SKAChannelManager *)self pushManager];
  serverTime = [pushManager serverTime];

  return serverTime;
}

- (id)_getPresenceJWTToken
{
  v3 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Retrieving JWT token from account provider", buf, 2u);
  }

  accountProvider = [(SKAChannelManager *)self accountProvider];
  v9 = 0;
  v5 = [accountProvider presenceJwtTokenForPrimaryAccountWithError:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager _getPresenceJWTToken];
    }
  }

  return v5;
}

- (id)_getStatusJWTToken
{
  v3 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Retrieving JWT token from account provider", buf, 2u);
  }

  accountProvider = [(SKAChannelManager *)self accountProvider];
  v9 = 0;
  v5 = [accountProvider statusJwtTokenForPrimaryAccountWithError:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager _getPresenceJWTToken];
    }
  }

  return v5;
}

- (id)_getNonce
{
  v12[1] = *MEMORY[0x277D85DE8];
  pushManager = [(SKAChannelManager *)self pushManager];
  serverTime = [pushManager serverTime];
  [serverTime timeIntervalSince1970];
  v5 = v4;

  v6 = 1000 * v5;
  v10 = 0;
  v11 = (0xE800000000000000 * v5) | HIBYTE(v6) | (256000 * v5) & 0xFF00000000 | (0x3E8000000 * v5) & 0xFF0000000000 | (0x3E80000000000 * v5) & 0xFF000000000000 | (v6 >> 40) & 0xFF00 | (v6 >> 24) & 0xFF0000 | (v6 >> 8) & 0xFF000000;
  arc4random_buf(v12, 8uLL);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:17];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)pushManager:(id)manager didReceiveData:(id)data onChannel:(id)channel identifier:(unint64_t)identifier dateReceived:(id)received dateExpired:(id)expired
{
  v24 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  expiredCopy = expired;
  receivedCopy = received;
  dataCopy = data;
  v17 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = channelCopy;
    v22 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Received data on channel: %@ with identifier %lu", &v20, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained channelManager:self didReceiveData:dataCopy onChannel:channelCopy identifier:identifier dateReceived:receivedCopy dateExpired:expiredCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)pushManager:(id)manager failedToSubscribeToChannel:(id)channel withError:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  v9 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SKAChannelManager pushManager:failedToSubscribeToChannel:withError:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained channelManager:self failedToSubscribeToChannel:channelCopy withError:errorCopy];
}

- (BOOL)shouldRetryRequestForResponse:(id)response withRetryInterval:(unsigned int *)interval currentRetry:(unint64_t)retry
{
  v48 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (!interval)
  {
    goto LABEL_54;
  }

  if (+[SKAServerBag serverResponseInternalErrorRetryCount]<= retry)
  {
    LOBYTE(interval) = 0;
    goto LABEL_54;
  }

  v8 = [MEMORY[0x277CBEB98] setWithObject:&unk_2833EB9F0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = +[SKAChannelManager logger];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SKAChannelManager shouldRetryRequestForResponse:withRetryInterval:currentRetry:];
      }

      goto LABEL_49;
    }

    v20 = responseCopy;
    command = [v20 command];
    if (command == 226)
    {
      v27 = [SharedChannelProvisionOffGridPayloadResponse alloc];
      protoResponse = [v20 protoResponse];
      v26 = [(SharedChannelProvisionOffGridPayloadResponse *)v27 initWithData:protoResponse];

      status = [(SharedChannelProvisionOffGridPayloadResponse *)v26 status];
      if ([(SharedChannelProvisionOffGridPayloadResponse *)v26 hasRetryIntervalSeconds])
      {
LABEL_35:
        retryIntervalSeconds = [(SharedChannelProvisionOffGridPayloadResponse *)v26 retryIntervalSeconds];
LABEL_38:

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {
      if (command == 225)
      {
        v22 = SharedChannelPublishResponse;
      }

      else
      {
        if (command != 224)
        {
          retryIntervalSeconds = 0;
          status = 0;
          goto LABEL_40;
        }

        v22 = SharedChannelCreateResponse;
      }

      v24 = [v22 alloc];
      protoResponse2 = [v20 protoResponse];
      v26 = [v24 initWithData:protoResponse2];

      status = [(SharedChannelProvisionOffGridPayloadResponse *)v26 status];
      if ([(SharedChannelProvisionOffGridPayloadResponse *)v26 hasRetryIntervalSeconds])
      {
        goto LABEL_35;
      }
    }

    retryIntervalSeconds = 0;
    goto LABEL_38;
  }

  v36 = v8;
  v9 = responseCopy;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  responses = [v9 responses];
  v11 = [responses countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v11)
  {
    retryIntervalSeconds = 0;
    status = 0;
    goto LABEL_32;
  }

  v12 = v11;
  retryIntervalSeconds = 0;
  status = 0;
  v15 = *v38;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(responses);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      if ([v17 hasActivationResponse])
      {
        activationResponse = [v17 activationResponse];
        goto LABEL_13;
      }

      if ([v17 hasDeactivationResponse])
      {
        activationResponse = [v17 deactivationResponse];
LABEL_13:
        pollingResponse = activationResponse;
        status = [activationResponse status];
        if (([pollingResponse hasRetryIntervalSeconds] & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (![v17 hasPollingResponse])
      {
        continue;
      }

      pollingResponse = [v17 pollingResponse];
      status = [pollingResponse status];
      if (![pollingResponse hasRetryIntervalSeconds])
      {
LABEL_17:
        retryIntervalSeconds = 0;
        goto LABEL_18;
      }

LABEL_14:
      retryIntervalSeconds = [pollingResponse retryIntervalSeconds];
LABEL_18:
    }

    v12 = [responses countByEnumeratingWithState:&v37 objects:v47 count:16];
  }

  while (v12);
LABEL_32:

  v8 = v36;
LABEL_41:
  v29 = [MEMORY[0x277CCABB0] numberWithInt:status];
  v30 = [v8 containsObject:v29];

  v31 = +[SKAChannelManager logger];
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (!v30 || !retryIntervalSeconds)
  {
    if (v32)
    {
      *buf = 138412290;
      v42 = responseCopy;
      _os_log_impl(&dword_220099000, v31, OS_LOG_TYPE_DEFAULT, "No retry requested for message: %@", buf, 0xCu);
    }

LABEL_49:
    LOBYTE(interval) = 0;
    goto LABEL_53;
  }

  if (v32)
  {
    if (status >= 9)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v33 = off_27843E268[status];
    }

    *buf = 138412802;
    v42 = responseCopy;
    v43 = 2112;
    v44 = v33;
    v45 = 1024;
    v46 = retryIntervalSeconds;
    _os_log_impl(&dword_220099000, v31, OS_LOG_TYPE_DEFAULT, "Retrying message: %@ with status %@ after %u seconds", buf, 0x1Cu);
  }

  *interval = retryIntervalSeconds;
  LOBYTE(interval) = 1;
LABEL_53:

LABEL_54:
  v34 = *MEMORY[0x277D85DE8];
  return interval;
}

+ (id)logger
{
  if (logger_onceToken_5 != -1)
  {
    +[SKAChannelManager logger];
  }

  v3 = logger__logger_5;

  return v3;
}

uint64_t __27__SKAChannelManager_logger__block_invoke()
{
  logger__logger_5 = os_log_create("com.apple.StatusKit", "SKAChannelManager");

  return MEMORY[0x2821F96F8]();
}

- (SKAChannelManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createChannelWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__SKAChannelManager_createChannelWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__SKAChannelManager_createChannelWithCompletion___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Create channel response contains non success status: %ld - %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Create presence channel response contains non success status: %ld - %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)publishProvisionPayloads:onChannel:withChannelToken:publishInitiateTime:retryCount:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 status];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)publishData:onChannel:withChannelToken:publishInitiateTime:isPendingPublish:isScheduledPublish:retryCount:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 status];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __138__SKAChannelManager_publishData_onChannel_withChannelToken_publishInitiateTime_isPendingPublish_isScheduledPublish_retryCount_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)assertPresence:withPriority:onChannel:membershipKey:serverKey:timestamp:withChannelToken:serviceIdentifier:isRefresh:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Presence assertion request %@ received response with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [a2 status];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Presence assertion release %@ received response with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [a2 status];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Polling request %@ response contains error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [a2 status];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getPresenceJWTToken
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pushManager:failedToSubscribeToChannel:withError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Failed to subscribe to channel: %@ Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)shouldRetryRequestForResponse:withRetryInterval:currentRetry:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end