@interface SKAChannelManager
+ (id)logger;
- (BOOL)shouldRetryRequestForResponse:(id)a3 withRetryInterval:(unsigned int *)a4 currentRetry:(unint64_t)a5;
- (SKAChannelManager)initWithPushManager:(id)a3 accountProvider:(id)a4 delegate:(id)a5;
- (SKAChannelManagingDelegate)delegate;
- (id)_createPayloadDataFromData:(id)a3;
- (id)_getNonce;
- (id)_getPresenceJWTToken;
- (id)_getStatusJWTToken;
- (id)serverTime;
- (void)_getPresenceJWTToken;
- (void)activePresenceChannelSubscriptionsWithCompletion:(id)a3;
- (void)activeStatusChannelSubscriptionsWithCompletion:(id)a3;
- (void)assertPresence:(id)a3 withPriority:(int64_t)a4 onChannel:(id)a5 membershipKey:(id)a6 serverKey:(id)a7 timestamp:(id)a8 withChannelToken:(id)a9 serviceIdentifier:(id)a10 isRefresh:(BOOL)a11 completion:(id)a12;
- (void)createChannelWithCompletion:(id)a3;
- (void)createPresenceChannelWithMembershipKey:(id)a3 serverKey:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6;
- (void)disableActivityTracking;
- (void)enableActivityTracking;
- (void)pollActiveParticipantsForChannel:(id)a3 membershipKey:(id)a4 serverKey:(id)a5 withChannelToken:(id)a6 serviceIdentifier:(id)a7 completion:(id)a8;
- (void)publishProvisionPayloads:(id)a3 onChannel:(id)a4 withChannelToken:(id)a5 publishInitiateTime:(id)a6 retryCount:(unint64_t)a7 completion:(id)a8;
- (void)pushManager:(id)a3 didReceiveData:(id)a4 onChannel:(id)a5 identifier:(unint64_t)a6 dateReceived:(id)a7 dateExpired:(id)a8;
- (void)pushManager:(id)a3 failedToSubscribeToChannel:(id)a4 withError:(id)a5;
- (void)releasePresenceOnChannel:(id)a3 membershipKey:(id)a4 serverKey:(id)a5 timestamp:(id)a6 withChannelToken:(id)a7 serviceIdentifier:(id)a8 completion:(id)a9;
- (void)subscribeToPresenceChannels:(id)a3;
- (void)subscribeToStatusChannels:(id)a3;
- (void)unsubscribeFromPresenceChannels:(id)a3;
- (void)unsubscribeFromStatusChannels:(id)a3;
@end

@implementation SKAChannelManager

- (SKAChannelManager)initWithPushManager:(id)a3 accountProvider:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SKAChannelManager;
  v12 = [(SKAChannelManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pushManager, a3);
    [(SKAPushManaging *)v13->_pushManager setDelegate:v13];
    objc_storeStrong(&v13->_accountProvider, a4);
    objc_storeWeak(&v13->_delegate, v11);
  }

  return v13;
}

- (void)createChannelWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received request to create a personal channel", buf, 2u);
  }

  v6 = objc_alloc_init(AuthCredential);
  v7 = [(SKAChannelManager *)self _getStatusJWTToken];
  if (v7)
  {
    [(AuthCredential *)v6 setSimpleJwt:v7];
    v8 = objc_alloc_init(SharedChannelCreateRequest);
    [(SharedChannelCreateRequest *)v8 setAuthCredential:v6];
    [(SharedChannelCreateRequest *)v8 setChannelOwnershipType:0];
    [(SharedChannelCreateRequest *)v8 setChannelTopic:@"com.apple.icloud.presence.mode.status"];
    v9 = [(SharedChannelCreateRequest *)v8 data];
    v10 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Asking push manager to execute create channel request", buf, 2u);
    }

    v11 = [(SKAChannelManager *)self pushManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__SKAChannelManager_createChannelWithCompletion___block_invoke;
    v13[3] = &unk_27843E1F8;
    v14 = v4;
    [v11 createChannelWithProtoData:v9 completion:v13];
  }

  else
  {
    v12 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    v8 = [SKAError errorWithCode:700];
    (*(v4 + 2))(v4, 0, 0, v8);
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

- (void)createPresenceChannelWithMembershipKey:(id)a3 serverKey:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v27 = a5;
  v12 = a6;
  v13 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Received request to create a presence channel", buf, 2u);
  }

  v14 = objc_alloc_init(AuthCredential);
  v15 = objc_alloc_init(SharedOwnershipAuth);
  v16 = [(SKAChannelManager *)self _getPresenceJWTToken];
  if (v16)
  {
    [(SharedOwnershipAuth *)v15 setSimpleJwt:v16];
    v17 = [v10 publicKeyMaterial];
    [(SharedOwnershipAuth *)v15 setChannelPublicKey:v17];

    v26 = v11;
    v18 = [v11 keyMaterial];
    [(SharedOwnershipAuth *)v15 setServerEncryptionKey:v18];

    v19 = [(SKAChannelManager *)self _getNonce];
    [(SharedOwnershipAuth *)v15 setNonce:v19];
    v20 = [v10 signPayload:v19];
    [(SharedOwnershipAuth *)v15 setSignNonce:v20];

    [(AuthCredential *)v14 setSharedOwnershipAuth:v15];
    v21 = objc_alloc_init(SharedChannelCreateRequest);
    [(SharedChannelCreateRequest *)v21 setAuthCredential:v14];
    [(SharedChannelCreateRequest *)v21 setChannelOwnershipType:1];
    [(SharedChannelCreateRequest *)v21 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
    [(SharedChannelCreateRequest *)v21 setAdopter:v27];
    v22 = [(SharedChannelCreateRequest *)v21 data];
    v23 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Asking push manager to execute create presence channel request", buf, 2u);
    }

    v24 = [(SKAChannelManager *)self pushManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __99__SKAChannelManager_createPresenceChannelWithMembershipKey_serverKey_serviceIdentifier_completion___block_invoke;
    v28[3] = &unk_27843E1F8;
    v29 = v12;
    [v24 createChannelWithProtoData:v22 completion:v28];

    v11 = v26;
  }

  else
  {
    v25 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    v19 = [SKAError errorWithCode:700];
    (*(v12 + 2))(v12, 0, 0, v19);
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

- (void)publishProvisionPayloads:(id)a3 onChannel:(id)a4 withChannelToken:(id)a5 publishInitiateTime:(id)a6 retryCount:(unint64_t)a7 completion:(id)a8
{
  v66 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a8;
  v16 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v13;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Received request to provision payloads on channel %@", buf, 0xCu);
  }

  v17 = [(SKAChannelManager *)self _getStatusJWTToken];
  if (v17)
  {
    v47 = self;
    v49 = v15;
    v46 = objc_alloc_init(AuthCredential);
    v48 = v17;
    [(AuthCredential *)v46 setSimpleJwt:v17];
    v18 = objc_alloc_init(ChannelIdentity);
    v50 = v14;
    [(ChannelIdentity *)v18 setChannelToken:v14];
    v51 = v13;
    v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
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
    v52 = v12;
    obj = v12;
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
          v25 = [v22 decryptionKey];
          v26 = [v25 SHA256Data];
          v27 = [v26 bytes];
          v28 = [v22 decryptionKey];
          v29 = [v28 SHA256Data];
          v30 = [v29 length];

          if (v30 >= 8)
          {
            v31 = 8;
          }

          else
          {
            v31 = v30;
          }

          v32 = [v24 dataWithBytes:v27 length:v31];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setPacketId:v32];

          v33 = [v22 encryptedStatusPayload];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setEncryptedPacket:v33];

          v34 = [v22 validUntil];
          [v34 timeIntervalSince1970];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setPacketExpirationTimestampMillis:1000 * v35];

          v36 = [v22 commitmentSalt];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setCommitmentSalt:v36];

          v37 = [v22 initializationVector];
          [(SharedChannelProvisionOffGridPacketInfo *)v23 setInitializationVector:v37];

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

    v41 = [(SKAChannelManager *)v47 pushManager];
    v42 = [(SharedChannelProvisionOffGridPayloadRequest *)v38 data];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __115__SKAChannelManager_publishProvisionPayloads_onChannel_withChannelToken_publishInitiateTime_retryCount_completion___block_invoke;
    v57[3] = &unk_27843E1F8;
    v15 = v49;
    v58 = v49;
    [v41 provisionPayload:v42 completion:v57];

    v13 = v51;
    v12 = v52;
    v14 = v50;
    v17 = v48;
  }

  else
  {
    v43 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager publishProvisionPayloads:onChannel:withChannelToken:publishInitiateTime:retryCount:completion:];
    }

    v39 = [SKAError errorWithCode:700];
    (*(v15 + 2))(v15, v39);
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

- (void)assertPresence:(id)a3 withPriority:(int64_t)a4 onChannel:(id)a5 membershipKey:(id)a6 serverKey:(id)a7 timestamp:(id)a8 withChannelToken:(id)a9 serviceIdentifier:(id)a10 isRefresh:(BOOL)a11 completion:(id)a12
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v18 = a5;
  v52 = a6;
  v51 = a7;
  v50 = a8;
  v49 = a10;
  v47 = a12;
  v19 = a9;
  v20 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCACA8] descriptionFromSKUpdatePriority:a4];
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Received request to assert presence on channel %@ with priority %@", buf, 0x16u);
  }

  v22 = objc_alloc_init(ChannelIdentity);
  [(ChannelIdentity *)v22 setChannelToken:v19];

  v48 = v18;
  v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v18 options:0];
  [(ChannelIdentity *)v22 setChannelId:v23];

  [(ChannelIdentity *)v22 setChannelOwnershipType:1];
  [(ChannelIdentity *)v22 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
  v24 = objc_alloc_init(AuthCredential);
  v25 = objc_alloc_init(SharedOwnershipAuth);
  v26 = [(SKAChannelManager *)self _getPresenceJWTToken];
  if (v26)
  {
    [(SharedOwnershipAuth *)v25 setSimpleJwt:v26];
    [v52 publicKeyMaterial];
    v28 = v27 = v24;
    [(SharedOwnershipAuth *)v25 setChannelPublicKey:v28];

    v29 = [v51 keyMaterial];
    [(SharedOwnershipAuth *)v25 setServerEncryptionKey:v29];

    v46 = self;
    v30 = [(SKAChannelManager *)self _getNonce];
    [(SharedOwnershipAuth *)v25 setNonce:v30];
    v31 = [v52 signPayload:v30];
    [(SharedOwnershipAuth *)v25 setSignNonce:v31];

    [(AuthCredential *)v27 setSharedOwnershipAuth:v25];
    v32 = objc_alloc_init(ChannelActivityActivationRequest);
    v45 = v27;
    [(ChannelActivityActivationRequest *)v32 setAuthCredential:v27];
    [(ChannelActivityActivationRequest *)v32 setChannelIdentity:v22];
    [(ChannelActivityActivationRequest *)v32 setRequestFlag:a11];
    v33 = [MEMORY[0x277CCAD78] UUID];
    *buf = 0;
    *&buf[8] = 0;
    [v33 getUUIDBytes:buf];
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [(ChannelActivityActivationRequest *)v32 setUuid:v34];
    [v50 timeIntervalSince1970];
    [(ChannelActivityActivationRequest *)v32 setClientTimestampSeconds:v35];
    [(ChannelActivityActivationRequest *)v32 setEncryptedParticipantPayload:v53];
    [(ChannelActivityActivationRequest *)v32 setAdopter:v49];
    if (a4 != 2)
    {
      if (a4 == 1)
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
          v58 = v33;
          _os_log_impl(&dword_220099000, v41, OS_LOG_TYPE_DEFAULT, "Sending presence activation request %@ to push manager", v57, 0xCu);
        }

        v42 = [(SKAChannelManager *)v46 pushManager];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __149__SKAChannelManager_assertPresence_withPriority_onChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_isRefresh_completion___block_invoke;
        v54[3] = &unk_27843E220;
        v55 = v33;
        v38 = v47;
        v56 = v47;
        v43 = v33;
        [v42 sendPresenceMessage:v40 completion:v54];

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

  v30 = [SKAError errorWithCode:700];
  v38 = v47;
  (*(v47 + 2))(v47, v30, 0, MEMORY[0x277CBEBF8], 1.79769313e308);
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

- (void)releasePresenceOnChannel:(id)a3 membershipKey:(id)a4 serverKey:(id)a5 timestamp:(id)a6 withChannelToken:(id)a7 serviceIdentifier:(id)a8 completion:(id)a9
{
  v52 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v45 = a6;
  v44 = a8;
  v41 = a9;
  v18 = a7;
  v19 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Received request to release presence on channel %@", buf, 0xCu);
  }

  v20 = objc_alloc_init(ChannelIdentity);
  [(ChannelIdentity *)v20 setChannelToken:v18];

  v43 = v15;
  v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
  [(ChannelIdentity *)v20 setChannelId:v21];

  [(ChannelIdentity *)v20 setChannelOwnershipType:1];
  [(ChannelIdentity *)v20 setChannelTopic:@"com.apple.icloud.presence.shared.experience"];
  v22 = objc_alloc_init(AuthCredential);
  v23 = objc_alloc_init(SharedOwnershipAuth);
  v24 = [(SKAChannelManager *)self _getPresenceJWTToken];
  v42 = v17;
  if (v24)
  {
    [(SharedOwnershipAuth *)v23 setSimpleJwt:v24];
    v25 = [v16 publicKeyMaterial];
    [(SharedOwnershipAuth *)v23 setChannelPublicKey:v25];

    v26 = [v17 keyMaterial];
    [(SharedOwnershipAuth *)v23 setServerEncryptionKey:v26];

    v27 = [(SKAChannelManager *)self _getNonce];
    [(SharedOwnershipAuth *)v23 setNonce:v27];
    v40 = v16;
    v28 = [v16 signPayload:v27];
    [(SharedOwnershipAuth *)v23 setSignNonce:v28];

    [(AuthCredential *)v22 setSharedOwnershipAuth:v23];
    v29 = objc_alloc_init(ChannelActivityDeactivationRequest);
    [(ChannelActivityDeactivationRequest *)v29 setAuthCredential:v22];
    [(ChannelActivityDeactivationRequest *)v29 setChannelIdentity:v20];
    *buf = 0uLL;
    v30 = [MEMORY[0x277CCAD78] UUID];
    [v30 getUUIDBytes:buf];

    v31 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [(ChannelActivityDeactivationRequest *)v29 setUuid:v31];
    [v45 timeIntervalSince1970];
    [(ChannelActivityDeactivationRequest *)v29 setClientTimestampSeconds:v32];
    [(ChannelActivityDeactivationRequest *)v29 setAdopter:v44];
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

    v35 = [(SKAChannelManager *)self pushManager];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __126__SKAChannelManager_releasePresenceOnChannel_membershipKey_serverKey_timestamp_withChannelToken_serviceIdentifier_completion___block_invoke;
    v46[3] = &unk_27843E220;
    v47 = v31;
    v36 = v41;
    v48 = v41;
    v37 = v31;
    [v35 sendPresenceMessage:v33 completion:v46];

    v16 = v40;
  }

  else
  {
    v38 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    v27 = [SKAError errorWithCode:700];
    v36 = v41;
    (*(v41 + 2))(v41, v27);
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

- (void)pollActiveParticipantsForChannel:(id)a3 membershipKey:(id)a4 serverKey:(id)a5 withChannelToken:(id)a6 serviceIdentifier:(id)a7 completion:(id)a8
{
  v52 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v45 = a7;
  v43 = a8;
  v17 = a6;
  v18 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Received request to poll presence on channel %@", &buf, 0xCu);
  }

  v19 = objc_alloc_init(ChannelIdentity);
  [(ChannelIdentity *)v19 setChannelToken:v17];

  v44 = v14;
  v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v14 options:0];
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
    v25 = [v15 publicKeyMaterial];
    [(SharedOwnershipAuth *)v22 setChannelPublicKey:v25];

    v41 = v16;
    v26 = [v16 keyMaterial];
    [(SharedOwnershipAuth *)v22 setServerEncryptionKey:v26];

    v40 = v23;
    v27 = [(SKAChannelManager *)v23 _getNonce];
    [(SharedOwnershipAuth *)v22 setNonce:v27];
    v42 = v15;
    v28 = [v15 signPayload:v27];
    [(SharedOwnershipAuth *)v22 setSignNonce:v28];

    [(AuthCredential *)v21 setSharedOwnershipAuth:v22];
    v29 = objc_alloc_init(ChannelActivityPollingRequest);
    v39 = v21;
    [(ChannelActivityPollingRequest *)v29 setAuthCredential:v21];
    [(ChannelActivityPollingRequest *)v29 setChannelIdentity:v19];
    [(ChannelActivityPollingRequest *)v29 setRequestFlag:2];
    v30 = [MEMORY[0x277CCAD78] UUID];
    buf = 0uLL;
    [v30 getUUIDBytes:&buf];
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:&buf length:16];
    [(ChannelActivityPollingRequest *)v29 setUuid:v31];
    [(ChannelActivityPollingRequest *)v29 setAdopter:v45];
    v32 = objc_alloc_init(SharedChannelActivityRequest);
    [(SharedChannelActivityRequest *)v32 setPollingRequest:v29];
    [(SharedChannelActivityRequest *)v32 setRequest:3];
    v33 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 138412290;
      v50 = v30;
      _os_log_impl(&dword_220099000, v33, OS_LOG_TYPE_DEFAULT, "Sending polling request %@ to push manager", v49, 0xCu);
    }

    v34 = [(SKAChannelManager *)v40 pushManager];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __124__SKAChannelManager_pollActiveParticipantsForChannel_membershipKey_serverKey_withChannelToken_serviceIdentifier_completion___block_invoke;
    v46[3] = &unk_27843E220;
    v47 = v30;
    v35 = v43;
    v48 = v43;
    v36 = v30;
    [v34 sendPresenceMessage:v32 completion:v46];

    v16 = v41;
    v15 = v42;
    v21 = v39;
  }

  else
  {
    v37 = +[SKAChannelManager logger];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SKAChannelManager createChannelWithCompletion:];
    }

    v27 = [SKAError errorWithCode:700];
    v35 = v43;
    (*(v43 + 2))(v43, v27, 0, MEMORY[0x277CBEBF8]);
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

- (void)activeStatusChannelSubscriptionsWithCompletion:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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

- (void)subscribeToStatusChannels:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Subscribing to Status channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager subscribeToStatusChannels:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromStatusChannels:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Unsubscribing from Status channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager unsubscribeFromStatusChannels:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)activePresenceChannelSubscriptionsWithCompletion:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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

- (void)subscribeToPresenceChannels:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Subscribing to Presence channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager subscribeToPresenceChannels:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromPresenceChannels:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Unsubscribing from Presence channels: %@", &v7, 0xCu);
  }

  [(SKAPushManaging *)self->_pushManager unsubscribeFromPresenceChannels:v4];
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

- (id)_createPayloadDataFromData:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"StatusKitDataKey";
  v3 = [a3 base64EncodedStringWithOptions:0];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:0];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)serverTime
{
  v2 = [(SKAChannelManager *)self pushManager];
  v3 = [v2 serverTime];

  return v3;
}

- (id)_getPresenceJWTToken
{
  v3 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Retrieving JWT token from account provider", buf, 2u);
  }

  v4 = [(SKAChannelManager *)self accountProvider];
  v9 = 0;
  v5 = [v4 presenceJwtTokenForPrimaryAccountWithError:&v9];
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

  v4 = [(SKAChannelManager *)self accountProvider];
  v9 = 0;
  v5 = [v4 statusJwtTokenForPrimaryAccountWithError:&v9];
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
  v2 = [(SKAChannelManager *)self pushManager];
  v3 = [v2 serverTime];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = 1000 * v5;
  v10 = 0;
  v11 = (0xE800000000000000 * v5) | HIBYTE(v6) | (256000 * v5) & 0xFF00000000 | (0x3E8000000 * v5) & 0xFF0000000000 | (0x3E80000000000 * v5) & 0xFF000000000000 | (v6 >> 40) & 0xFF00 | (v6 >> 24) & 0xFF0000 | (v6 >> 8) & 0xFF000000;
  arc4random_buf(v12, 8uLL);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:17];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)pushManager:(id)a3 didReceiveData:(id)a4 onChannel:(id)a5 identifier:(unint64_t)a6 dateReceived:(id)a7 dateExpired:(id)a8
{
  v24 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v13;
    v22 = 2048;
    v23 = a6;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Received data on channel: %@ with identifier %lu", &v20, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained channelManager:self didReceiveData:v16 onChannel:v13 identifier:a6 dateReceived:v15 dateExpired:v14];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)pushManager:(id)a3 failedToSubscribeToChannel:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[SKAChannelManager logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SKAChannelManager pushManager:failedToSubscribeToChannel:withError:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained channelManager:self failedToSubscribeToChannel:v7 withError:v8];
}

- (BOOL)shouldRetryRequestForResponse:(id)a3 withRetryInterval:(unsigned int *)a4 currentRetry:(unint64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!a4)
  {
    goto LABEL_54;
  }

  if (+[SKAServerBag serverResponseInternalErrorRetryCount]<= a5)
  {
    LOBYTE(a4) = 0;
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

    v20 = v7;
    v21 = [v20 command];
    if (v21 == 226)
    {
      v27 = [SharedChannelProvisionOffGridPayloadResponse alloc];
      v28 = [v20 protoResponse];
      v26 = [(SharedChannelProvisionOffGridPayloadResponse *)v27 initWithData:v28];

      v14 = [(SharedChannelProvisionOffGridPayloadResponse *)v26 status];
      if ([(SharedChannelProvisionOffGridPayloadResponse *)v26 hasRetryIntervalSeconds])
      {
LABEL_35:
        v13 = [(SharedChannelProvisionOffGridPayloadResponse *)v26 retryIntervalSeconds];
LABEL_38:

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {
      if (v21 == 225)
      {
        v22 = SharedChannelPublishResponse;
      }

      else
      {
        if (v21 != 224)
        {
          v13 = 0;
          v14 = 0;
          goto LABEL_40;
        }

        v22 = SharedChannelCreateResponse;
      }

      v24 = [v22 alloc];
      v25 = [v20 protoResponse];
      v26 = [v24 initWithData:v25];

      v14 = [(SharedChannelProvisionOffGridPayloadResponse *)v26 status];
      if ([(SharedChannelProvisionOffGridPayloadResponse *)v26 hasRetryIntervalSeconds])
      {
        goto LABEL_35;
      }
    }

    v13 = 0;
    goto LABEL_38;
  }

  v36 = v8;
  v9 = v7;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [v9 responses];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v11)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_32;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v38;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      if ([v17 hasActivationResponse])
      {
        v18 = [v17 activationResponse];
        goto LABEL_13;
      }

      if ([v17 hasDeactivationResponse])
      {
        v18 = [v17 deactivationResponse];
LABEL_13:
        v19 = v18;
        v14 = [v18 status];
        if (([v19 hasRetryIntervalSeconds] & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (![v17 hasPollingResponse])
      {
        continue;
      }

      v19 = [v17 pollingResponse];
      v14 = [v19 status];
      if (![v19 hasRetryIntervalSeconds])
      {
LABEL_17:
        v13 = 0;
        goto LABEL_18;
      }

LABEL_14:
      v13 = [v19 retryIntervalSeconds];
LABEL_18:
    }

    v12 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
  }

  while (v12);
LABEL_32:

  v8 = v36;
LABEL_41:
  v29 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  v30 = [v8 containsObject:v29];

  v31 = +[SKAChannelManager logger];
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (!v30 || !v13)
  {
    if (v32)
    {
      *buf = 138412290;
      v42 = v7;
      _os_log_impl(&dword_220099000, v31, OS_LOG_TYPE_DEFAULT, "No retry requested for message: %@", buf, 0xCu);
    }

LABEL_49:
    LOBYTE(a4) = 0;
    goto LABEL_53;
  }

  if (v32)
  {
    if (v14 >= 9)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v33 = off_27843E268[v14];
    }

    *buf = 138412802;
    v42 = v7;
    v43 = 2112;
    v44 = v33;
    v45 = 1024;
    v46 = v13;
    _os_log_impl(&dword_220099000, v31, OS_LOG_TYPE_DEFAULT, "Retrying message: %@ with status %@ after %u seconds", buf, 0x1Cu);
  }

  *a4 = v13;
  LOBYTE(a4) = 1;
LABEL_53:

LABEL_54:
  v34 = *MEMORY[0x277D85DE8];
  return a4;
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