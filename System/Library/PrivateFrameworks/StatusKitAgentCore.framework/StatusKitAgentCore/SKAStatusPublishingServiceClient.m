@interface SKAStatusPublishingServiceClient
+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)a3;
+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)a3;
+ (id)logger;
- (NSString)description;
- (SKAStatusPublishingServiceClient)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 invitationManager:(id)a7 publishingManager:(id)a8 channelManager:(id)a9 daemonProtocolDelegate:(id)a10;
- (SKAStatusPublishingServiceClientDelegate)delegate;
- (double)_delayForStatusPublishRequest:(id)a3;
- (double)_randomSecondaryDeviceRepublishDelay;
- (double)_serverBagTimeIntervalForKey:(id)a3 withDefaultValue:(double)a4;
- (id)_serverBagNumberForKey:(id)a3;
- (void)accountIsStatusKitCapableWithCompletion:(id)a3;
- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6;
- (void)inviteHandles:(id)a3 fromSenderHandle:(id)a4 withInvitationPayload:(id)a5 statusTypeIdentifier:(id)a6 completion:(id)a7;
- (void)invitedHandlesForStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)isHandleInviteable:(id)a3 fromHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6;
- (void)isHandleInvited:(id)a3 fromSenderHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6;
- (void)provisionPayloads:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)publishStatusRequest:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)publishingServiceClientConnectionWasInterrupted:(id)a3;
- (void)publishingServiceClientConnectionWasInvalidated:(id)a3;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)removeInvitedHandles:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
@end

@implementation SKAStatusPublishingServiceClient

+ (id)logger
{
  if (logger_onceToken_22 != -1)
  {
    +[SKAStatusPublishingServiceClient logger];
  }

  v3 = logger__logger_22;

  return v3;
}

- (SKAStatusPublishingServiceClient)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 invitationManager:(id)a7 publishingManager:(id)a8 channelManager:(id)a9 daemonProtocolDelegate:(id)a10
{
  v27 = a3;
  v16 = a4;
  v17 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v18 = a9;
  v19 = a10;
  dispatch_assert_queue_V2(v16);
  v28.receiver = self;
  v28.super_class = SKAStatusPublishingServiceClient;
  v20 = [(SKAStatusPublishingServiceClient *)&v28 init];
  if (v20)
  {
    v21 = [[SKAStatusPublishingServiceClientConnection alloc] initWithXPCConnection:v27 queue:v16 daemonProtocolDelegate:v19 connectionLifecycleDelegate:v20, v24, v25, v26];
    clientConnection = v20->_clientConnection;
    v20->_clientConnection = v21;

    objc_storeWeak(&v20->_delegate, v17);
    objc_storeStrong(&v20->_databaseManager, a6);
    objc_storeStrong(&v20->_invitationManager, a7);
    objc_storeStrong(&v20->_channelManager, a9);
    objc_storeStrong(&v20->_publishingManager, a8);
    objc_storeStrong(&v20->_queue, a4);
  }

  return v20;
}

+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Client is not entitled to publish information for status of type %@. Missing entitlement %@", a3, @"com.apple.StatusKit.publish.types"];
  v4 = [SKAError errorWithCode:202 customDescription:v3];

  return v4;
}

+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Status type %@ has been disabled by the server", a3];
  v4 = [SKAError errorWithCode:101 customDescription:v3];

  return v4;
}

- (void)publishingServiceClientConnectionWasInterrupted:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Publishing service client connection was interrupted: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained publishingServiceClientWasInvalidated:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)publishingServiceClientConnectionWasInvalidated:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Publishing service client connection was invalidated: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained publishingServiceClientWasInvalidated:self];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SKAStatusPublishingServiceClient_logger__block_invoke()
{
  logger__logger_22 = os_log_create("com.apple.StatusKit", "SKAStatusPublishingServiceClient");

  return MEMORY[0x2821F96F8]();
}

- (void)publishStatusRequest:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to publish status: %@", buf, 0xCu);
  }

  v12 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v13 = [v12 clientIsEntitledForPublishingWithStatusTypeIdentifier:v9];

  if ((v13 & 1) == 0)
  {
    v15 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
    goto LABEL_12;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v17 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
LABEL_12:
    v14 = v16;
    v10[2](v10, 0, v16);
    goto LABEL_13;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v23 = v10;
  v20 = v8;
  v21 = self;
  v22 = v9;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v19];

  v14 = v23;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

void __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) statusUniqueIdentifier];

    if (!v3)
    {
      v4 = [MEMORY[0x277CCAD78] UUID];
      v5 = [v4 UUIDString];
      [*(a1 + 32) setStatusUniqueIdentifier:v5];
    }

    v6 = [*(a1 + 40) channelManager];
    v7 = [v6 serverTime];

    v8 = [*(a1 + 32) dateCreated];

    if (!v8)
    {
      v9 = +[SKAStatusPublishingServiceClient logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v21 = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "dateCreated not set on statusPublishRequest:%@. Setting to serverTime: %@", &v21, 0x16u);
      }

      [*(a1 + 32) setDateCreated:v7];
    }

    v11 = [*(a1 + 32) dateCreated];
    [v11 timeIntervalSinceDate:v7];
    v13 = v12;

    if (v13 <= 300.0)
    {
      [*(a1 + 40) _delayForStatusPublishRequest:*(a1 + 32)];
      v18 = v17;
      v19 = [*(a1 + 40) publishingManager];
      [v19 removePendingPublishRequestsForStatusTypeIdentifier:*(a1 + 48) olderThanRequest:*(a1 + 32)];

      v15 = [*(a1 + 40) publishingManager];
      [v15 publishStatusRequest:*(a1 + 32) statusTypeIdentifier:*(a1 + 48) afterTime:0 isPendingPublish:*(a1 + 56) completion:v18];
    }

    else
    {
      v14 = +[SKAStatusPublishingServiceClient logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_2();
      }

      v15 = [SKAError errorWithCode:1104];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v16 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v7 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)provisionPayloads:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v12 = [v11 clientIsEntitledForPublishingWithStatusTypeIdentifier:v9];

  if ((v12 & 1) == 0)
  {
    v13 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
LABEL_8:
    v15 = v13;
    v10[2](v10, 0, v13);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v14 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v13 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SKAStatusPublishingServiceClient_provisionPayloads_statusTypeIdentifier_completion___block_invoke;
  v16[3] = &unk_27843F1A0;
  v19 = v10;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v16];

LABEL_9:
}

void __86__SKAStatusPublishingServiceClient_provisionPayloads_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) publishingManager];
    [v5 provisionPayloads:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v3 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)invitedHandlesForStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v9 = [v8 clientIsEntitledForPublishingWithStatusTypeIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
LABEL_8:
    v12 = v10;
    v7[2](v7, 0, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v11 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SKAStatusPublishingServiceClient_invitedHandlesForStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = v7;
  v13[4] = self;
  v14 = v6;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v13];

LABEL_9:
}

void __85__SKAStatusPublishingServiceClient_invitedHandlesForStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingPersonalChannelForStatusTypeIdentifier:*(a1 + 40) databaseContext:v4];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = [v6 invitedUsers];
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v19 + 1) + 8 * v12) invitedSKHandle];
            if (v13)
            {
              [v7 addObject:v13];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v10);
      }

      v14 = *(a1 + 48);
      v15 = [v7 allObjects];
      (*(v14 + 16))(v14, v15, 0);
    }

    else
    {
      v17 = +[SKAStatusPublishingServiceClient logger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Personal channel does not exist for status type identifier", buf, 2u);
      }

      v7 = [SKAError errorWithCode:1100];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v16 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)isHandleInvited:(id)a3 fromSenderHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Attempting to determine if handle %@ has already been invited from handle: %@", buf, 0x16u);
  }

  v15 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v16 = [v15 clientIsEntitledForPublishingWithStatusTypeIdentifier:v12];

  if ((v16 & 1) == 0)
  {
    v18 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v12];
LABEL_10:
    v17 = v18;
    v13[2](v13, 0, v18);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v12])
  {
    v19 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v18 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v12];
    goto LABEL_10;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__SKAStatusPublishingServiceClient_isHandleInvited_fromSenderHandle_forStatusTypeIdentifier_completion___block_invoke;
  v21[3] = &unk_27843F100;
  v25 = v13;
  v21[4] = self;
  v22 = v12;
  v23 = v11;
  v24 = v10;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v21];

  v17 = v25;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

void __104__SKAStatusPublishingServiceClient_isHandleInvited_fromSenderHandle_forStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingPersonalChannelForStatusTypeIdentifier:*(a1 + 40) databaseContext:v4];

    if (v6)
    {
      v7 = [*(a1 + 32) invitationManager];
      v8 = [v7 resolveSenderHandleWithPreferredSenderHandle:*(a1 + 48)];

      if (!v8)
      {
        v23 = +[SKAStatusPublishingServiceClient logger];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __87__SKAPresenceClient_isHandleInvited_fromSenderHandle_forPresenceIdentifier_completion___block_invoke_cold_2((a1 + 48));
        }

        v24 = [SKAError errorWithCode:500];
        (*(*(a1 + 64) + 16))();

        goto LABEL_33;
      }

      v26 = v6;
      v27 = v4;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [v6 invitedUsers];
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [v14 invitedSKHandle];
            if ([*(a1 + 56) isNormalizedEqualToHandle:v15])
            {
              v16 = [v14 senderSKHandle];
              v17 = [v8 isNormalizedEqualToHandle:v16];
              v18 = +[SKAStatusPublishingServiceClient logger];
              v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              if (v17)
              {
                if (v19)
                {
                  *buf = 0;
                  _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "We found a match to an existing invited user", buf, 2u);
                }

                goto LABEL_31;
              }

              if (v19)
              {
                *buf = 138412546;
                v33 = v16;
                v34 = 2112;
                v35 = v8;
                _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "We found an existing invited user matching the requested user, but that invitation was sent with handle %@ instead of handle %@. Ignoring.", buf, 0x16u);
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v9 = +[SKAStatusPublishingServiceClient logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "We did not find a match to any existing invited user", buf, 2u);
      }

LABEL_31:
      v6 = v26;
      v4 = v27;

      v22 = *(*(a1 + 64) + 16);
    }

    else
    {
      v21 = +[SKAStatusPublishingServiceClient logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Personal channel does not exist for status type identifier", buf, 2u);
      }

      v8 = [SKAError errorWithCode:1100];
      v22 = *(*(a1 + 64) + 16);
    }

    v22();
LABEL_33:

    goto LABEL_34;
  }

  v20 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
  }

  v4 = [SKAError errorWithCode:300];
  (*(*(a1 + 64) + 16))();
LABEL_34:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)isHandleInviteable:(id)a3 fromHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v15 = [v14 clientIsEntitledForPublishingWithStatusTypeIdentifier:v12];

  if ((v15 & 1) == 0)
  {
    v16 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v12];
LABEL_8:
    v18 = v16;
    v13[2](v13, 0, v16);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v12])
  {
    v17 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v12];
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__SKAStatusPublishingServiceClient_isHandleInviteable_fromHandle_forStatusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v22 = v13;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v19];

LABEL_9:
}

void __101__SKAStatusPublishingServiceClient_isHandleInviteable_fromHandle_forStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __101__SKAStatusPublishingServiceClient_isHandleInviteable_fromHandle_forStatusTypeIdentifier_completion___block_invoke_20;
    v8[3] = &unk_27843E8E8;
    v9 = *(a1 + 56);
    [v3 isHandleInviteable:v4 fromHandle:v5 completion:v8];

    v6 = v9;
  }

  else
  {
    v7 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v6 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v15 = [v14 clientIsEntitledForPublishingWithStatusTypeIdentifier:v12];

  if ((v15 & 1) == 0)
  {
    v16 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v12];
LABEL_8:
    v18 = v16;
    v13[2](v13, 0, v16);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v12])
  {
    v17 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v12];
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SKAStatusPublishingServiceClient_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F100;
  v23 = v13;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v19];

LABEL_9:
}

void __106__SKAStatusPublishingServiceClient_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __106__SKAStatusPublishingServiceClient_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke_22;
    v9[3] = &unk_27843F150;
    v6 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v3 fetchHandleInvitability:v4 fromHandle:v5 forStatusTypeIdentifier:v6 completion:v9];

    v7 = v10;
  }

  else
  {
    v8 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v7 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }
}

- (void)inviteHandles:(id)a3 fromSenderHandle:(id)a4 withInvitationPayload:(id)a5 statusTypeIdentifier:(id)a6 completion:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v17 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v15;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Received request to send invitation for personal channel with statusTypeIdentifier %@ to handles: %@", buf, 0x16u);
  }

  v18 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v19 = [v18 clientIsEntitledForPublishingWithStatusTypeIdentifier:v15];

  if ((v19 & 1) == 0)
  {
    v21 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v15];
LABEL_10:
    v20 = v21;
    v16[2](v16, v21);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v15])
  {
    v22 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v21 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v15];
    goto LABEL_10;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__SKAStatusPublishingServiceClient_inviteHandles_fromSenderHandle_withInvitationPayload_statusTypeIdentifier_completion___block_invoke;
  v24[3] = &unk_27843F420;
  v29 = v16;
  v24[4] = self;
  v25 = v15;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v24];

  v20 = v29;
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

void __121__SKAStatusPublishingServiceClient_inviteHandles_fromSenderHandle_withInvitationPayload_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __121__SKAStatusPublishingServiceClient_inviteHandles_fromSenderHandle_withInvitationPayload_statusTypeIdentifier_completion___block_invoke_24;
    v10[3] = &unk_27843F178;
    v12 = *(a1 + 72);
    v11 = *(a1 + 48);
    [v3 sendInvitationForPersonalChannelWithStatusTypeIdentifier:v4 toHandles:v5 fromSenderHandle:v6 withInvitationPayload:v7 completion:v10];

    v8 = v12;
  }

  else
  {
    v9 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v8 = [SKAError errorWithCode:300];
    (*(*(a1 + 72) + 16))();
  }
}

void __121__SKAStatusPublishingServiceClient_inviteHandles_fromSenderHandle_withInvitationPayload_statusTypeIdentifier_completion___block_invoke_24(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKAStatusPublishingServiceClient logger];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_35_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Successfully sent invitation to handles: %@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeInvitedHandles:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to remove invitation from personal channel with statusTypeIdentifier %@ for handles: %@", buf, 0x16u);
  }

  v12 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v13 = [v12 clientIsEntitledForPublishingWithStatusTypeIdentifier:v9];

  if ((v13 & 1) == 0)
  {
    v15 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
LABEL_10:
    v14 = v15;
    v10[2](v10, v15);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v16 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
    goto LABEL_10;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke;
  v18[3] = &unk_27843F1A0;
  v21 = v10;
  v18[4] = self;
  v19 = v9;
  v20 = v8;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v18];

  v14 = v21;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

void __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke_25;
    v8[3] = &unk_27843F0D8;
    v9 = v4;
    v10 = *(a1 + 56);
    [v3 revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:v5 forHandles:v9 completion:v8];

    v6 = v9;
  }

  else
  {
    v7 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v6 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

void __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusPublishingServiceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke_25_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Invitation revocation for handles %@ completed successfully", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Received request to remove all invitations from personal channel with statusTypeIdentifier %@", buf, 0xCu);
  }

  v9 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v10 = [v9 clientIsEntitledForPublishingWithStatusTypeIdentifier:v6];

  if ((v10 & 1) == 0)
  {
    v12 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
LABEL_10:
    v11 = v12;
    v7[2](v7, v12);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v13 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
    goto LABEL_10;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke;
  v15[3] = &unk_27843F128;
  v17 = v7;
  v15[4] = self;
  v16 = v6;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v15];

  v11 = v17;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

void __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_27;
    v7[3] = &unk_27843F090;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v3 revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:v4 completion:v7];

    v5 = v8;
  }

  else
  {
    v6 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v5 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }
}

void __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusPublishingServiceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_27_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Invitation revocation for all handles completed successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v9 = [v8 clientIsEntitledForPublishingWithStatusTypeIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
LABEL_8:
    v12 = v10;
    v7[2](v7, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v11 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__SKAStatusPublishingServiceClient_registerForDelegateCallbacksWithStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = v7;
  v13[4] = self;
  v14 = v6;
  [(SKAStatusPublishingServiceClient *)self accountIsStatusKitCapableWithCompletion:v13];

LABEL_9:
}

void __100__SKAStatusPublishingServiceClient_registerForDelegateCallbacksWithStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    objc_sync_exit(v3);
    v7 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Client %@ has registered for delegate callbacks for statusTypeIdentifier: %@.", &v13, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v11 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ PID=%ld>", v5, -[SKAStatusPublishingServiceClientConnection processIdentifier](self->_clientConnection, "processIdentifier")];

  return v6;
}

- (void)accountIsStatusKitCapableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SKAStatusPublishingServiceClient *)v5 databaseManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SKAStatusPublishingServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke;
  v8[3] = &unk_27843DE28;
  v8[4] = v5;
  v7 = v4;
  v9 = v7;
  [v6 deviceToDeviceEncryptedDatabaseCapableWithCompletion:v8];

  objc_sync_exit(v5);
}

void __76__SKAStatusPublishingServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SKAStatusPublishingServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke_2;
  v5[3] = &unk_27843F218;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (id)_serverBagNumberForKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:v3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      goto LABEL_8;
    }

    v7 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient _serverBagNumberForKey:];
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (double)_serverBagTimeIntervalForKey:(id)a3 withDefaultValue:(double)a4
{
  v5 = [(SKAStatusPublishingServiceClient *)self _serverBagNumberForKey:a3];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    a4 = v7;
  }

  return a4;
}

- (double)_randomSecondaryDeviceRepublishDelay
{
  v17 = *MEMORY[0x277D85DE8];
  [(SKAStatusPublishingServiceClient *)self _secondaryDeviceRepublishMaxDelayTime];
  v4 = v3;
  [(SKAStatusPublishingServiceClient *)self _secondaryDeviceRepublishMinDelayTime];
  v6 = v5;
  v7 = v5 + arc4random_uniform((v4 - v5));
  v8 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    v12 = v7;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Resolved secondary device republish delay of %.1f seconds, within allowed range of (%.1f,%.1f) seconds.", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)_delayForStatusPublishRequest:(id)a3
{
  v4 = a3;
  if ([v4 isSecondaryDeviceRepublish])
  {
    [(SKAStatusPublishingServiceClient *)self _randomSecondaryDeviceRepublishDelay];
  }

  else if ([v4 isScheduledRequest])
  {
    [(SKAStatusPublishingServiceClient *)self _randomScheduledPublishDelay];
  }

  else
  {
    [(SKAStatusPublishingServiceClient *)self _randomUnscheduledPublishDelay];
  }

  v6 = v5;

  return v6;
}

- (SKAStatusPublishingServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)publishStatusRequest:statusTypeIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)publishStatusRequest:statusTypeIdentifier:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke_25_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_220099000, a2, a3, "Invitation revocation for handles %@ failed with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_27_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_serverBagNumberForKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Server bag unexpected value type for key %@. Value: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end