@interface SKAStatusPublishingServiceClient
+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)identifier;
+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)identifier;
+ (id)logger;
- (NSString)description;
- (SKAStatusPublishingServiceClient)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager invitationManager:(id)invitationManager publishingManager:(id)publishingManager channelManager:(id)channelManager daemonProtocolDelegate:(id)self0;
- (SKAStatusPublishingServiceClientDelegate)delegate;
- (double)_delayForStatusPublishRequest:(id)request;
- (double)_randomSecondaryDeviceRepublishDelay;
- (double)_serverBagTimeIntervalForKey:(id)key withDefaultValue:(double)value;
- (id)_serverBagNumberForKey:(id)key;
- (void)accountIsStatusKitCapableWithCompletion:(id)completion;
- (void)fetchHandleInvitability:(id)invitability fromHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withInvitationPayload:(id)payload statusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)invitedHandlesForStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)isHandleInviteable:(id)inviteable fromHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)isHandleInvited:(id)invited fromSenderHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)provisionPayloads:(id)payloads statusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)publishStatusRequest:(id)request statusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)publishingServiceClientConnectionWasInterrupted:(id)interrupted;
- (void)publishingServiceClientConnectionWasInvalidated:(id)invalidated;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)removeInvitedHandles:(id)handles statusTypeIdentifier:(id)identifier completion:(id)completion;
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

- (SKAStatusPublishingServiceClient)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager invitationManager:(id)invitationManager publishingManager:(id)publishingManager channelManager:(id)channelManager daemonProtocolDelegate:(id)self0
{
  connectionCopy = connection;
  queueCopy = queue;
  delegateCopy = delegate;
  managerCopy = manager;
  invitationManagerCopy = invitationManager;
  publishingManagerCopy = publishingManager;
  channelManagerCopy = channelManager;
  protocolDelegateCopy = protocolDelegate;
  dispatch_assert_queue_V2(queueCopy);
  v28.receiver = self;
  v28.super_class = SKAStatusPublishingServiceClient;
  v20 = [(SKAStatusPublishingServiceClient *)&v28 init];
  if (v20)
  {
    managerCopy = [[SKAStatusPublishingServiceClientConnection alloc] initWithXPCConnection:connectionCopy queue:queueCopy daemonProtocolDelegate:protocolDelegateCopy connectionLifecycleDelegate:v20, publishingManagerCopy, invitationManagerCopy, managerCopy];
    clientConnection = v20->_clientConnection;
    v20->_clientConnection = managerCopy;

    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_databaseManager, manager);
    objc_storeStrong(&v20->_invitationManager, invitationManager);
    objc_storeStrong(&v20->_channelManager, channelManager);
    objc_storeStrong(&v20->_publishingManager, publishingManager);
    objc_storeStrong(&v20->_queue, queue);
  }

  return v20;
}

+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Client is not entitled to publish information for status of type %@. Missing entitlement %@", identifier, @"com.apple.StatusKit.publish.types"];
  v4 = [SKAError errorWithCode:202 customDescription:v3];

  return v4;
}

+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"Status type %@ has been disabled by the server", identifier];
  v4 = [SKAError errorWithCode:101 customDescription:identifier];

  return v4;
}

- (void)publishingServiceClientConnectionWasInterrupted:(id)interrupted
{
  v10 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v5 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = interruptedCopy;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Publishing service client connection was interrupted: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained publishingServiceClientWasInvalidated:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)publishingServiceClientConnectionWasInvalidated:(id)invalidated
{
  v10 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = invalidatedCopy;
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

- (void)publishStatusRequest:(id)request statusTypeIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = requestCopy;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to publish status: %@", buf, 0xCu);
  }

  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v13 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v13 & 1) == 0)
  {
    v15 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_12;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v17 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
LABEL_12:
    v14 = v16;
    completionCopy[2](completionCopy, 0, v16);
    goto LABEL_13;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v23 = completionCopy;
  v20 = requestCopy;
  selfCopy = self;
  v22 = identifierCopy;
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

- (void)provisionPayloads:(id)payloads statusTypeIdentifier:(id)identifier completion:(id)completion
{
  payloadsCopy = payloads;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v12 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v12 & 1) == 0)
  {
    v13 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v15 = v13;
    completionCopy[2](completionCopy, 0, v13);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v14 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v13 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SKAStatusPublishingServiceClient_provisionPayloads_statusTypeIdentifier_completion___block_invoke;
  v16[3] = &unk_27843F1A0;
  v19 = completionCopy;
  v16[4] = self;
  v17 = payloadsCopy;
  v18 = identifierCopy;
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

- (void)invitedHandlesForStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v9 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v12 = v10;
    completionCopy[2](completionCopy, 0, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v11 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SKAStatusPublishingServiceClient_invitedHandlesForStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = completionCopy;
  v13[4] = self;
  v14 = identifierCopy;
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

- (void)isHandleInvited:(id)invited fromSenderHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  invitedCopy = invited;
  handleCopy = handle;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = invitedCopy;
    v28 = 2112;
    v29 = handleCopy;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Attempting to determine if handle %@ has already been invited from handle: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v16 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v16 & 1) == 0)
  {
    v18 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v17 = v18;
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v19 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v18 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__SKAStatusPublishingServiceClient_isHandleInvited_fromSenderHandle_forStatusTypeIdentifier_completion___block_invoke;
  v21[3] = &unk_27843F100;
  v25 = completionCopy;
  v21[4] = self;
  v22 = identifierCopy;
  v23 = handleCopy;
  v24 = invitedCopy;
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

- (void)isHandleInviteable:(id)inviteable fromHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  inviteableCopy = inviteable;
  handleCopy = handle;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v15 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v15 & 1) == 0)
  {
    v16 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v18 = v16;
    completionCopy[2](completionCopy, 0, v16);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v17 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__SKAStatusPublishingServiceClient_isHandleInviteable_fromHandle_forStatusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v22 = completionCopy;
  v19[4] = self;
  v20 = inviteableCopy;
  v21 = handleCopy;
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

- (void)fetchHandleInvitability:(id)invitability fromHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  invitabilityCopy = invitability;
  handleCopy = handle;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v15 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v15 & 1) == 0)
  {
    v16 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v18 = v16;
    completionCopy[2](completionCopy, 0, v16);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v17 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SKAStatusPublishingServiceClient_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F100;
  v23 = completionCopy;
  v19[4] = self;
  v20 = invitabilityCopy;
  v21 = handleCopy;
  v22 = identifierCopy;
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

- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withInvitationPayload:(id)payload statusTypeIdentifier:(id)identifier completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v17 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = handlesCopy;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Received request to send invitation for personal channel with statusTypeIdentifier %@ to handles: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v19 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v19 & 1) == 0)
  {
    v21 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v20 = v21;
    completionCopy[2](completionCopy, v21);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v22 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v21 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__SKAStatusPublishingServiceClient_inviteHandles_fromSenderHandle_withInvitationPayload_statusTypeIdentifier_completion___block_invoke;
  v24[3] = &unk_27843F420;
  v29 = completionCopy;
  v24[4] = self;
  v25 = identifierCopy;
  v26 = handlesCopy;
  v27 = handleCopy;
  v28 = payloadCopy;
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

- (void)removeInvitedHandles:(id)handles statusTypeIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = handlesCopy;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to remove invitation from personal channel with statusTypeIdentifier %@ for handles: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v13 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v13 & 1) == 0)
  {
    v15 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v14 = v15;
    completionCopy[2](completionCopy, v15);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v16 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__SKAStatusPublishingServiceClient_removeInvitedHandles_statusTypeIdentifier_completion___block_invoke;
  v18[3] = &unk_27843F1A0;
  v21 = completionCopy;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = handlesCopy;
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

- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v8 = +[SKAStatusPublishingServiceClient logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Received request to remove all invitations from personal channel with statusTypeIdentifier %@", buf, 0xCu);
  }

  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v10 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v10 & 1) == 0)
  {
    v12 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v11 = v12;
    completionCopy[2](completionCopy, v12);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v13 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__SKAStatusPublishingServiceClient_removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier_completion___block_invoke;
  v15[3] = &unk_27843F128;
  v17 = completionCopy;
  v15[4] = self;
  v16 = identifierCopy;
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

- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusPublishingServiceClient *)self clientConnection];
  v9 = [clientConnection clientIsEntitledForPublishingWithStatusTypeIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusPublishingServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v12 = v10;
    completionCopy[2](completionCopy, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v11 = +[SKAStatusPublishingServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusPublishingServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__SKAStatusPublishingServiceClient_registerForDelegateCallbacksWithStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = completionCopy;
  v13[4] = self;
  v14 = identifierCopy;
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

- (void)accountIsStatusKitCapableWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  databaseManager = [(SKAStatusPublishingServiceClient *)selfCopy databaseManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SKAStatusPublishingServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke;
  v8[3] = &unk_27843DE28;
  v8[4] = selfCopy;
  v7 = completionCopy;
  v9 = v7;
  [databaseManager deviceToDeviceEncryptedDatabaseCapableWithCompletion:v8];

  objc_sync_exit(selfCopy);
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

- (id)_serverBagNumberForKey:(id)key
{
  keyCopy = key;
  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:keyCopy];
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

- (double)_serverBagTimeIntervalForKey:(id)key withDefaultValue:(double)value
{
  v5 = [(SKAStatusPublishingServiceClient *)self _serverBagNumberForKey:key];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    value = v7;
  }

  return value;
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

- (double)_delayForStatusPublishRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isSecondaryDeviceRepublish])
  {
    [(SKAStatusPublishingServiceClient *)self _randomSecondaryDeviceRepublishDelay];
  }

  else if ([requestCopy isScheduledRequest])
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