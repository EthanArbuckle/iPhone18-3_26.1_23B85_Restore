@interface SKAStatusSubscriptionServiceClient
+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)identifier;
+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)identifier;
+ (id)_subscriptionIdentifierNotFoundError:(id)error;
+ (id)logger;
- (BOOL)_validateChannelIsKnownForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier databaseContext:(id)context;
- (BOOL)channelMatchesClientStatusTypeIdentifier:(id)identifier;
- (SKAStatusSubscriptionServiceClient)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager subscriptionManager:(id)subscriptionManager encryptionManager:(id)encryptionManager inTrafficMode:(BOOL)mode daemonProtocolDelegate:(id)self0;
- (SKAStatusSubscriptionServiceClientDelegate)delegate;
- (id)_currentStatusForChannel:(id)channel;
- (id)_handlesAssociatedWithChannel:(id)channel;
- (id)_subscriptionMetadataForChannel:(id)channel;
- (int64_t)validatePersonalChannel:(id)channel matchesEncryptionValidationToken:(id)token fromSender:(id)sender;
- (int64_t)validatePersonalChannel:(id)channel matchesSubscriptionValidationToken:(id)token fromSender:(id)sender;
- (void)accountIsStatusKitCapableWithCompletion:(id)completion;
- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion;
- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(id)identifier includingPersonalSubscription:(BOOL)subscription completion:(id)completion;
- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)deleteSubscriptionWithIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion;
- (void)handleReceivedInvitationForChannel:(id)channel;
- (void)handleReceivedStatusUpdate:(id)update onChannel:(id)channel;
- (void)handleRemoteDatabaseChangeForChannels:(id)channels;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion;
- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion;
- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion;
- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion;
- (void)subscriptionMetadataForHandle:(id)handle statusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)subscriptionServiceClientConnectionWasInterrupted:(id)interrupted;
- (void)subscriptionServiceClientConnectionWasInvalidated:(id)invalidated;
- (void)subscriptionValidationTokensForHandle:(id)handle statusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(id)tokens fromSender:(id)sender statusTypeIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SKAStatusSubscriptionServiceClient

- (SKAStatusSubscriptionServiceClient)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager subscriptionManager:(id)subscriptionManager encryptionManager:(id)encryptionManager inTrafficMode:(BOOL)mode daemonProtocolDelegate:(id)self0
{
  connectionCopy = connection;
  queueCopy = queue;
  delegateCopy = delegate;
  managerCopy = manager;
  subscriptionManagerCopy = subscriptionManager;
  encryptionManagerCopy = encryptionManager;
  protocolDelegateCopy = protocolDelegate;
  dispatch_assert_queue_V2(queueCopy);
  v27.receiver = self;
  v27.super_class = SKAStatusSubscriptionServiceClient;
  v20 = [(SKAStatusSubscriptionServiceClient *)&v27 init];
  if (v20)
  {
    v21 = [[SKAStatusSubscriptionServiceClientConnection alloc] initWithXPCConnection:connectionCopy queue:queueCopy daemonProtocolDelegate:protocolDelegateCopy connectionLifecycleDelegate:v20];
    clientConnection = v20->_clientConnection;
    v20->_clientConnection = v21;

    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_databaseManager, manager);
    objc_storeStrong(&v20->_subscriptionManager, subscriptionManager);
    objc_storeStrong(&v20->_encryptionManager, encryptionManager);
    objc_storeStrong(&v20->_queue, queue);
    v20->_trafficModeEnabled = mode;
  }

  return v20;
}

+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Client is not entitled to subscription information for status of type %@. Missing entitlement %@", identifier, @"com.apple.StatusKit.subscribe.types"];
  v4 = [SKAError errorWithCode:201 customDescription:v3];

  return v4;
}

+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"Status type %@ has been disabled by the server", identifier];
  v4 = [SKAError errorWithCode:101 customDescription:identifier];

  return v4;
}

+ (id)_subscriptionIdentifierNotFoundError:(id)error
{
  error = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscription not found matching subscription identifier: %@", error];
  v4 = [SKAError errorWithCode:1000 customDescription:error];

  return v4;
}

+ (id)logger
{
  if (logger_onceToken_28 != -1)
  {
    +[SKAStatusSubscriptionServiceClient logger];
  }

  v3 = logger__logger_28;

  return v3;
}

uint64_t __44__SKAStatusSubscriptionServiceClient_logger__block_invoke()
{
  logger__logger_28 = os_log_create("com.apple.StatusKit", "SKAStatusSubscriptionServiceClient");

  return MEMORY[0x2821F96F8]();
}

- (void)handleRemoteDatabaseChangeForChannels:(id)channels
{
  v32 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = channelsCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([(SKAStatusSubscriptionServiceClient *)self channelMatchesClientStatusTypeIdentifier:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(SKAStatusSubscriptionServiceClient *)self _subscriptionMetadataForChannel:*(*(&v22 + 1) + 8 * j), v22];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    v19 = [(SKAStatusSubscriptionServiceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_22];
    array = [v12 array];
    [v19 subscriptionStateChangedForSubscriptions:array completion:&__block_literal_global_26];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __76__SKAStatusSubscriptionServiceClient_handleRemoteDatabaseChangeForChannels___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__SKAStatusSubscriptionServiceClient_handleRemoteDatabaseChangeForChannels___block_invoke_cold_1();
  }
}

void __76__SKAStatusSubscriptionServiceClient_handleRemoteDatabaseChangeForChannels___block_invoke_24()
{
  v0 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_220099000, v0, OS_LOG_TYPE_DEFAULT, "Connected client completed processing of remote database changes.", v1, 2u);
  }
}

- (void)handleReceivedStatusUpdate:(id)update onChannel:(id)channel
{
  v15 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  if ([(SKAStatusSubscriptionServiceClient *)self channelMatchesClientStatusTypeIdentifier:channelCopy])
  {
    v6 = [(SKAStatusSubscriptionServiceClient *)self _subscriptionMetadataForChannel:channelCopy];
    v7 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Notifying client of updated subscription: %@", &v11, 0xCu);
    }

    if (v6)
    {
      statusType = [(SKAStatusSubscriptionServiceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_28];
      [statusType subscriptionReceivedStatusUpdate:v6 completion:&__block_literal_global_31];
LABEL_8:
    }
  }

  else
  {
    v6 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      statusTypeIdentifier = self->_statusTypeIdentifier;
      statusType = [channelCopy statusType];
      v11 = 138412546;
      v12 = statusTypeIdentifier;
      v13 = 2112;
      v14 = statusType;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Connected client does not match status type identifier of changed subscription. Client: %@ Status: %@", &v11, 0x16u);
      goto LABEL_8;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __75__SKAStatusSubscriptionServiceClient_handleReceivedStatusUpdate_onChannel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__SKAStatusSubscriptionServiceClient_handleReceivedStatusUpdate_onChannel___block_invoke_cold_1();
  }
}

void __75__SKAStatusSubscriptionServiceClient_handleReceivedStatusUpdate_onChannel___block_invoke_29()
{
  v0 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_220099000, v0, OS_LOG_TYPE_DEFAULT, "Connected client completed processing of status update.", v1, 2u);
  }
}

- (void)handleReceivedInvitationForChannel:(id)channel
{
  channelCopy = channel;
  if ([(SKAStatusSubscriptionServiceClient *)self channelMatchesClientStatusTypeIdentifier:channelCopy])
  {
    v5 = [(SKAStatusSubscriptionServiceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_33];
    v6 = [(SKAStatusSubscriptionServiceClient *)self _subscriptionMetadataForChannel:channelCopy];
    v7 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Notifying connected client of received channel invitation.", buf, 2u);
    }

    [v5 subscriptionInvitationReceived:v6 completion:&__block_literal_global_36];
  }

  else
  {
    v5 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Connected client does not match invited channel status type.", v8, 2u);
    }
  }
}

void __73__SKAStatusSubscriptionServiceClient_handleReceivedInvitationForChannel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__SKAStatusSubscriptionServiceClient_handleReceivedInvitationForChannel___block_invoke_cold_1();
  }
}

void __73__SKAStatusSubscriptionServiceClient_handleReceivedInvitationForChannel___block_invoke_34()
{
  v0 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_220099000, v0, OS_LOG_TYPE_DEFAULT, "Connected client completed processing of channel invitation.", v1, 2u);
  }
}

- (id)_subscriptionMetadataForChannel:(id)channel
{
  channelCopy = channel;
  identifier = [channelCopy identifier];
  statusType = [channelCopy statusType];
  isPersonal = [channelCopy isPersonal];
  v8 = [(SKAStatusSubscriptionServiceClient *)self _currentStatusForChannel:channelCopy];
  v9 = [(SKAStatusSubscriptionServiceClient *)self _handlesAssociatedWithChannel:channelCopy];

  v10 = [objc_alloc(MEMORY[0x277D68158]) initWithSubscriptionIdentifier:identifier statusTypeIdentifier:statusType isPersonalStatusSubscription:isPersonal currentStatus:v8 ownerHandles:v9];

  return v10;
}

- (id)_handlesAssociatedWithChannel:(id)channel
{
  v22 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  if ([channelCopy isPersonal])
  {
    array = MEMORY[0x277CBEBF8];
  }

  else
  {
    newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    v7 = [(SKADatabaseManaging *)self->_databaseManager receivedInvitationsForChannel:channelCopy databaseContext:newBackgroundContext];
    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          senderSKHandle = [*(*(&v17 + 1) + 8 * i) senderSKHandle];
          if (senderSKHandle)
          {
            [v8 addObject:senderSKHandle];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    array = [v8 array];
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_currentStatusForChannel:(id)channel
{
  channelCopy = channel;
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v6 = [(SKADatabaseManaging *)self->_databaseManager existingStatusForChannel:channelCopy databaseContext:newBackgroundContext];
  v7 = v6;
  if (!v6)
  {
    v8 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "No existing status for channel";
      v10 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
    goto LABEL_10;
  }

  if ([v6 isExpired])
  {
    v8 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v9 = "Current status for channel is expired";
      v10 = &v23;
LABEL_7:
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  uniqueIdentifier = [v7 uniqueIdentifier];
  datePublished = [v7 datePublished];
  dateReceived = [v7 dateReceived];
  dateCreated = [v7 dateCreated];
  rawData = [v7 rawData];
  v14 = [(SKAStatusEncryptionManaging *)self->_encryptionManager decryptStatusPayloadFromStatusEnvelopeData:rawData channel:channelCopy];
  statusPayload = [v14 statusPayload];
  invitation = [v14 invitation];
  skInvitationPayload = [invitation skInvitationPayload];
  v11 = [objc_alloc(MEMORY[0x277D68120]) initWithStatusPayload:statusPayload statusUniqueIdentifier:uniqueIdentifier datePublished:datePublished dateCreated:dateCreated dateReceived:dateReceived invitationPayload:skInvitationPayload];

LABEL_10:

  return v11;
}

- (BOOL)channelMatchesClientStatusTypeIdentifier:(id)identifier
{
  statusType = [identifier statusType];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_statusTypeIdentifier;
  objc_sync_exit(selfCopy);

  if (-[NSString length](v6, "length") || [statusType length])
  {
    v7 = [statusType isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)subscriptionServiceClientConnectionWasInterrupted:(id)interrupted
{
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Beginning release of transient subscription assertions associated with interrupted client", v6, 2u);
  }

  [(SKAStatusSubscriptionManaging *)self->_subscriptionManager releaseAllTransientSubscriptionAssertionsAssociatedWithClient:self completion:&__block_literal_global_40];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained subscriptionServiceClientWasInvalidated:self];
}

void __88__SKAStatusSubscriptionServiceClient_subscriptionServiceClientConnectionWasInterrupted___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusSubscriptionServiceClient logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __88__SKAStatusSubscriptionServiceClient_subscriptionServiceClientConnectionWasInterrupted___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success releasing transient subscription assertions associated with interrupted client", v5, 2u);
  }
}

- (void)subscriptionServiceClientConnectionWasInvalidated:(id)invalidated
{
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Beginning release of transient subscription assertions associated with invalidated client", v6, 2u);
  }

  [(SKAStatusSubscriptionManaging *)self->_subscriptionManager releaseAllTransientSubscriptionAssertionsAssociatedWithClient:self completion:&__block_literal_global_42];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained subscriptionServiceClientWasInvalidated:self];
}

void __88__SKAStatusSubscriptionServiceClient_subscriptionServiceClientConnectionWasInvalidated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusSubscriptionServiceClient logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __88__SKAStatusSubscriptionServiceClient_subscriptionServiceClientConnectionWasInvalidated___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success releasing transient subscription assertions associated with invalidated client", v5, 2u);
  }
}

- (void)subscriptionMetadataForHandle:(id)handle statusTypeIdentifier:(id)identifier completion:(id)completion
{
  handleCopy = handle;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v12 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v12 & 1) == 0)
  {
    v14 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v13 = v15;
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_11;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __100__SKAStatusSubscriptionServiceClient_subscriptionMetadataForHandle_statusTypeIdentifier_completion___block_invoke;
  v17[3] = &unk_27843F1A0;
  v21 = completionCopy;
  v18 = handleCopy;
  selfCopy = self;
  v20 = identifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v17];

  v13 = v21;
LABEL_11:
}

void __100__SKAStatusSubscriptionServiceClient_subscriptionMetadataForHandle_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving subscription information for handle: %@", &v17, 0xCu);
    }

    v7 = [*(a1 + 40) databaseManager];
    v8 = [v7 newBackgroundContext];

    v9 = [*(a1 + 40) databaseManager];
    v10 = [v9 existingChannelForHandle:*(a1 + 32) statusTypeIdentifier:*(a1 + 48) databaseContext:v8];

    if (v10)
    {
      v11 = [*(a1 + 40) _subscriptionMetadataForChannel:v10];
      v12 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v17 = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Found subscription metadata: %@ for handle %@", &v17, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v14 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Subscription information not found for handle: %@", &v17, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v8 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(id)identifier includingPersonalSubscription:(BOOL)subscription completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v11 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v11 & 1) == 0)
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v14 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v15 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v14 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v12 = v14;
    completionCopy[2](completionCopy, 0, v14);
    goto LABEL_11;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __127__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasForStatusTypeIdentifier_includingPersonalSubscription_completion___block_invoke;
  v16[3] = &unk_27843F650;
  v19 = completionCopy;
  v17 = identifierCopy;
  selfCopy = self;
  subscriptionCopy = subscription;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v16];

  v12 = v19;
LABEL_11:
}

void __127__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasForStatusTypeIdentifier_includingPersonalSubscription_completion___block_invoke(uint64_t a1, char a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving all subscription information for statusTypeIdentifier: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) databaseManager];
    v8 = [v7 newBackgroundContext];

    v9 = [*(a1 + 40) databaseManager];
    v10 = [v9 allExistingChannelsForStatusTypeIdentifier:*(a1 + 32) includingPersonalChannel:*(a1 + 56) databaseContext:v8];

    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      v13 = *(a1 + 32);
      *buf = 134218242;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Found %ld channels for status type %@", buf, 0x16u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(a1 + 40) _subscriptionMetadataForChannel:{*(*(&v22 + 1) + 8 * v19), v22}];
          [v14 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v8 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v10 = v12;
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __117__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke;
  v14[3] = &unk_27843F128;
  v17 = completionCopy;
  v15 = identifierCopy;
  selfCopy = self;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v14];

  v10 = v17;
LABEL_11:
}

void __117__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving all active assertions for statusTypeIdentifier: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) subscriptionManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __117__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke_45;
    v12[3] = &unk_27843F5B0;
    v11 = *(a1 + 32);
    v8 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    v14 = *(a1 + 48);
    [v7 allSubscriptionIdentifiersWithActiveAssertionsForStatusTypeIdentifier:v8 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v9 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __117__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) databaseManager];
  v5 = [v4 newBackgroundContext];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [*(a1 + 32) databaseManager];
        v14 = [v13 existingChannelForSubscriptionIdentifier:v12 databaseContext:v5];

        if (v14)
        {
          v15 = [v14 statusType];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v17 = [*(a1 + 32) _subscriptionMetadataForChannel:v14];
            [v6 addObject:v17];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 48) + 16))();
  v18 = *MEMORY[0x277D85DE8];
}

- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v10 = v12;
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __120__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier_completion___block_invoke;
  v14[3] = &unk_27843F128;
  v17 = completionCopy;
  v15 = identifierCopy;
  selfCopy = self;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v14];

  v10 = v17;
LABEL_11:
}

void __120__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving all active assertions for statusTypeIdentifier: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) subscriptionManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __120__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier_completion___block_invoke_47;
    v12[3] = &unk_27843F5B0;
    v11 = *(a1 + 32);
    v8 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    v14 = *(a1 + 48);
    [v7 allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion:v12];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v9 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __120__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) databaseManager];
  v5 = [v4 newBackgroundContext];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [*(a1 + 32) databaseManager];
        v14 = [v13 existingChannelForSubscriptionIdentifier:v12 databaseContext:v5];

        if (v14)
        {
          v15 = [v14 statusType];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v17 = [*(a1 + 32) _subscriptionMetadataForChannel:v14];
            [v6 addObject:v17];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 48) + 16))();
  v18 = *MEMORY[0x277D85DE8];
}

- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v12 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:typeIdentifierCopy];

  if ((v12 & 1) == 0)
  {
    v14 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:typeIdentifierCopy];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:typeIdentifierCopy])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:typeIdentifierCopy];
LABEL_10:
    v13 = v15;
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_11;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __152__SKAStatusSubscriptionServiceClient_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_statusTypeIdentifier_completion___block_invoke;
  v17[3] = &unk_27843F1A0;
  v21 = completionCopy;
  v18 = typeIdentifierCopy;
  v19 = identifierCopy;
  selfCopy = self;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v17];

  v13 = v21;
LABEL_11:
}

void __152__SKAStatusSubscriptionServiceClient_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412546;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving all subscription assertions for statusTypeIdentifier: %@ applicationIdentifier: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 48) databaseManager];
    v9 = [v8 newBackgroundContext];

    v10 = [*(a1 + 48) databaseManager];
    v11 = [v10 existingSubscriptionAssertionsForStatusTypeIdentifier:*(a1 + 32) applicationIdentifier:*(a1 + 40) databaseContext:v9];

    v12 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 134217984;
      v31 = v13;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Found %ld subscription assertions", buf, 0xCu);
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v25 + 1) + 8 * v19) channelIdentifier];
          v21 = [*(a1 + 48) databaseManager];
          v22 = [v21 existingChannelForSubscriptionIdentifier:v20 databaseContext:v9];

          v23 = [*(a1 + 48) _subscriptionMetadataForChannel:v22];
          [v14 addObject:v23];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v9 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v12 = v10;
    completionCopy[2](completionCopy, 0, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __117__SKAStatusSubscriptionServiceClient_subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = completionCopy;
  v13[4] = self;
  v14 = identifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v13];

LABEL_9:
}

void __117__SKAStatusSubscriptionServiceClient_subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingPersonalChannelForStatusTypeIdentifier:*(a1 + 40) databaseContext:v4];

    if (v6)
    {
      v7 = [*(a1 + 32) _subscriptionMetadataForChannel:v6];
      v8 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Found subscription metadata for personal channel: %@", &v13, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v10 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Subscription information not found for personal channel with statusTypeIdentifier: %@", &v13, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v9 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_8:
    v12 = v10;
    completionCopy[2](completionCopy, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__SKAStatusSubscriptionServiceClient_registerForDelegateCallbacksWithStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = completionCopy;
  v13[4] = self;
  v14 = identifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v13];

LABEL_9:
}

void __102__SKAStatusSubscriptionServiceClient_registerForDelegateCallbacksWithStatusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    objc_sync_exit(v3);
    v7 = +[SKAStatusSubscriptionServiceClient logger];
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
    v10 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v11 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = typeIdentifierCopy;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to retain transient subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v13 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:typeIdentifierCopy];

  if (v13)
  {
    if ([SKAServerBag statusEnabledByServerForStatusTypeIdentifier:typeIdentifierCopy])
    {
      if (!self->_trafficModeEnabled)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke;
        v20[3] = &unk_27843F1A0;
        v23 = completionCopy;
        v20[4] = self;
        v21 = identifierCopy;
        v22 = typeIdentifierCopy;
        [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v20];

        v18 = v23;
        goto LABEL_16;
      }

      v14 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusSubscriptionServiceClient retainTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:];
      }

      v15 = [SKAError errorWithCode:602];
    }

    else
    {
      v17 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
      }

      v15 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:typeIdentifierCopy];
    }
  }

  else
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient retainTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:typeIdentifierCopy];
  }

  v18 = v15;
  (*(completionCopy + 2))(completionCopy, v15);
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

void __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    if ([*(a1 + 32) _validateChannelIsKnownForSubscriptionIdentifier:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v4])
    {
      v5 = [*(a1 + 32) subscriptionManager];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_48;
      v12[3] = &unk_27843ED48;
      v13 = v6;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      [v5 retainTransientSubscriptionAssertionForSubscriptionIdentifier:v13 statusTypeIdentifier:v7 client:v8 completion:v12];

      v9 = v13;
    }

    else
    {
      v11 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_cold_2((a1 + 40), (a1 + 48));
      }

      v9 = [SKAStatusSubscriptionServiceClient _subscriptionIdentifierNotFoundError:*(a1 + 40)];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v10 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

void __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_48(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_48_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained transient subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = typeIdentifierCopy;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to release transient subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v13 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:typeIdentifierCopy];

  if ((v13 & 1) == 0)
  {
    v15 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient releaseTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:typeIdentifierCopy];
    goto LABEL_12;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:typeIdentifierCopy])
  {
    v17 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:typeIdentifierCopy];
LABEL_12:
    v14 = v16;
    completionCopy[2](completionCopy, v16);
    goto LABEL_13;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v22 = completionCopy;
  v19[4] = self;
  v20 = identifierCopy;
  v21 = typeIdentifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v19];

  v14 = v22;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

void __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    if ([*(a1 + 32) _validateChannelIsKnownForSubscriptionIdentifier:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v4])
    {
      v5 = [*(a1 + 32) subscriptionManager];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_49;
      v12[3] = &unk_27843ED48;
      v13 = v6;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      [v5 releaseTransientSubscriptionAssertionForSubscriptionIdentifier:v13 statusTypeIdentifier:v7 client:v8 completion:v12];

      v9 = v13;
    }

    else
    {
      v11 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_cold_2((a1 + 40), (a1 + 48));
      }

      v9 = [SKAStatusSubscriptionServiceClient _subscriptionIdentifierNotFoundError:*(a1 + 40)];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v10 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

void __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_49(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_49_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released transient subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = typeIdentifierCopy;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Received request to retain persistent subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v16 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:typeIdentifierCopy];

  if (v16)
  {
    if ([SKAServerBag statusEnabledByServerForStatusTypeIdentifier:typeIdentifierCopy])
    {
      if (!self->_trafficModeEnabled)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke;
        v23[3] = &unk_27843F100;
        v27 = completionCopy;
        v23[4] = self;
        v24 = identifierCopy;
        v25 = typeIdentifierCopy;
        v26 = applicationIdentifierCopy;
        [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v23];

        v21 = v27;
        goto LABEL_16;
      }

      v17 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusSubscriptionServiceClient retainTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:];
      }

      v18 = [SKAError errorWithCode:602];
    }

    else
    {
      v20 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
      }

      v18 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:typeIdentifierCopy];
    }
  }

  else
  {
    v19 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient retainPersistentSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:completion:];
    }

    v18 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:typeIdentifierCopy];
  }

  v21 = v18;
  (*(completionCopy + 2))(completionCopy, v18);
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

void __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    if ([*(a1 + 32) _validateChannelIsKnownForSubscriptionIdentifier:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v4])
    {
      v5 = [*(a1 + 32) subscriptionManager];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_50;
      v12[3] = &unk_27843ED48;
      v13 = v6;
      v14 = *(a1 + 48);
      v15 = *(a1 + 64);
      [v5 retainPersistentSubscriptionAssertionForSubscriptionIdentifier:v13 statusTypeIdentifier:v7 applicationIdentifier:v8 completion:v12];

      v9 = v13;
    }

    else
    {
      v11 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_cold_2((a1 + 40), (a1 + 48));
      }

      v9 = [SKAStatusSubscriptionServiceClient _subscriptionIdentifierNotFoundError:*(a1 + 40)];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v10 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }
}

void __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_50(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_50_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained persistent subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = identifierCopy;
    v29 = 2112;
    v30 = typeIdentifierCopy;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Received request to release persistent subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v16 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:typeIdentifierCopy];

  if ((v16 & 1) == 0)
  {
    v18 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient releasePersistentSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:completion:];
    }

    v19 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:typeIdentifierCopy];
    goto LABEL_12;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:typeIdentifierCopy])
  {
    v20 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v19 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:typeIdentifierCopy];
LABEL_12:
    v17 = v19;
    completionCopy[2](completionCopy, v19);
    goto LABEL_13;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke;
  v22[3] = &unk_27843F100;
  v26 = completionCopy;
  v22[4] = self;
  v23 = identifierCopy;
  v24 = typeIdentifierCopy;
  v25 = applicationIdentifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v22];

  v17 = v26;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

void __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    if ([*(a1 + 32) _validateChannelIsKnownForSubscriptionIdentifier:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v4])
    {
      v5 = [*(a1 + 32) subscriptionManager];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_51;
      v12[3] = &unk_27843ED48;
      v13 = v6;
      v14 = *(a1 + 48);
      v15 = *(a1 + 64);
      [v5 releasePersistentSubscriptionAssertionForSubscriptionIdentifier:v13 statusTypeIdentifier:v7 applicationIdentifier:v8 completion:v12];

      v9 = v13;
    }

    else
    {
      v11 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_cold_2((a1 + 40), (a1 + 48));
      }

      v9 = [SKAStatusSubscriptionServiceClient _subscriptionIdentifierNotFoundError:*(a1 + 40)];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v10 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }
}

void __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_51(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusSubscriptionServiceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_51_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released persistent subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteSubscriptionWithIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v12 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:typeIdentifierCopy];

  if ((v12 & 1) == 0)
  {
    v13 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:typeIdentifierCopy];
LABEL_8:
    v15 = v13;
    completionCopy[2](completionCopy, v13);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:typeIdentifierCopy])
  {
    v14 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v13 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:typeIdentifierCopy];
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__SKAStatusSubscriptionServiceClient_deleteSubscriptionWithIdentifier_statusTypeIdentifier_completion___block_invoke;
  v16[3] = &unk_27843F1A0;
  v19 = completionCopy;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = typeIdentifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v16];

LABEL_9:
}

void __103__SKAStatusSubscriptionServiceClient_deleteSubscriptionWithIdentifier_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v7 = [v3 newBackgroundContext];

    if ([*(a1 + 32) _validateChannelIsKnownForSubscriptionIdentifier:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v7])
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v6 = [SKAStatusSubscriptionServiceClient _subscriptionIdentifierNotFoundError:*(a1 + 40)];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v4 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v5 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)subscriptionValidationTokensForHandle:(id)handle statusTypeIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    handleString = [handleCopy handleString];
    *buf = 138412546;
    v24 = handleString;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request for subscription and encryption validation token for handle %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v14 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v14 & 1) == 0)
  {
    v16 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v15 = v16;
    completionCopy[2](completionCopy, 0, v16);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v17 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__SKAStatusSubscriptionServiceClient_subscriptionValidationTokensForHandle_statusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v22 = completionCopy;
  v19[4] = self;
  v20 = handleCopy;
  v21 = identifierCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v19];

  v15 = v22;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
}

void __108__SKAStatusSubscriptionServiceClient_subscriptionValidationTokensForHandle_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingChannelForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v4];

    v7 = +[SKAStatusSubscriptionServiceClient logger];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [*(a1 + 40) handleString];
        v20 = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Found channel %@ matching handle: %@", &v20, 0x16u);
      }

      v10 = [v6 identifier];
      v11 = [v10 length];
      if (v11 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v10 substringToIndex:v12];
      v14 = [*(a1 + 32) encryptionManager];
      v15 = [v14 encryptionValidationTokenForChannel:v6];

      v16 = [objc_alloc(MEMORY[0x277D68160]) initWithSubscriptionValidationToken:v13 encryptionValidationToken:v15];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      if (v8)
      {
        v18 = [*(a1 + 40) handleString];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Did not find a channel matching handle: %@. Returning empty string to indicate no match.", &v20, 0xCu);
      }

      v10 = [objc_alloc(MEMORY[0x277D68160]) initWithSubscriptionValidationToken:&stru_2833DEA50 encryptionValidationToken:&stru_2833DEA50];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v17 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(id)tokens fromSender:(id)sender statusTypeIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  senderCopy = sender;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    handleString = [senderCopy handleString];
    *buf = 138412802;
    v28 = tokensCopy;
    v29 = 2112;
    v30 = handleString;
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Received request for validate token %@ from handle %@ for statusTypeIdentifier: %@", buf, 0x20u);
  }

  clientConnection = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v17 = [clientConnection clientIsEntitledForSubscriptionWithStatusTypeIdentifier:identifierCopy];

  if ((v17 & 1) == 0)
  {
    v19 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:identifierCopy];
LABEL_10:
    v18 = v19;
    completionCopy[2](completionCopy, 0, v19);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:identifierCopy])
  {
    v20 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v19 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __151__SKAStatusSubscriptionServiceClient_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_statusTypeIdentifier_completion___block_invoke;
  v22[3] = &unk_27843F100;
  v26 = completionCopy;
  v22[4] = self;
  v23 = identifierCopy;
  v24 = tokensCopy;
  v25 = senderCopy;
  [(SKAStatusSubscriptionServiceClient *)self accountIsStatusKitCapableWithCompletion:v22];

  v18 = v26;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
}

void __151__SKAStatusSubscriptionServiceClient_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_statusTypeIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingPersonalChannelForStatusTypeIdentifier:*(a1 + 40) databaseContext:v4];

    if (v6)
    {
      v7 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v6;
        _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Validating tokens against personal channel: %@", &v21, 0xCu);
      }

      v8 = [*(a1 + 48) subscriptionValidationToken];
      v9 = [*(a1 + 32) validatePersonalChannel:v6 matchesSubscriptionValidationToken:v8 fromSender:*(a1 + 56)];
      v10 = +[SKAStatusSubscriptionServiceClient logger];
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9 == 1)
      {
        if (v11)
        {
          v21 = 138412290;
          v22 = v6;
          _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Validating tokens against personal channel: %@", &v21, 0xCu);
        }

        v12 = [*(a1 + 48) encryptionValidationToken];
        [*(a1 + 32) validatePersonalChannel:v6 matchesEncryptionValidationToken:v12 fromSender:*(a1 + 56)];
        (*(*(a1 + 64) + 16))();
      }

      else
      {
        if (v11)
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Received invalid validity for subscription channel validation. Not validating encryption token.", &v21, 2u);
        }

        (*(*(a1 + 64) + 16))();
      }
    }

    else
    {
      v14 = [*(a1 + 48) subscriptionValidationToken];
      v15 = [v14 length];

      v16 = +[SKAStatusSubscriptionServiceClient logger];
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __151__SKAStatusSubscriptionServiceClient_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_statusTypeIdentifier_completion___block_invoke_cold_2(a1);
        }

        v18 = *(*(a1 + 64) + 16);
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(a1 + 56) handleString];
          v21 = 138412290;
          v22 = v19;
          _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Sender %@ asked us to verify that we do not have a personal channel, and they are correct", &v21, 0xCu);
        }

        v18 = *(*(a1 + 64) + 16);
      }

      v18();
    }
  }

  else
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __89__SKAStatusPublishingServiceClient_publishStatusRequest_statusTypeIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (int64_t)validatePersonalChannel:(id)channel matchesSubscriptionValidationToken:(id)token fromSender:(id)sender
{
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  senderCopy = sender;
  identifier = [channel identifier];
  v10 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = tokenCopy;
    v21 = 2112;
    v22 = identifier;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to validate subscription channel token %@ against personal channel with identifier %@", &v19, 0x16u);
  }

  if (![tokenCopy length])
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesSubscriptionValidationToken:fromSender:];
    }

    goto LABEL_12;
  }

  v11 = [identifier hasPrefix:tokenCopy];
  v12 = +[SKAStatusSubscriptionServiceClient logger];
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      handleString = [senderCopy handleString];
      v19 = 138412802;
      v20 = handleString;
      v21 = 2112;
      v22 = tokenCopy;
      v23 = 2112;
      v24 = identifier;
      _os_log_error_impl(&dword_220099000, v13, OS_LOG_TYPE_ERROR, "Sender %@ has supplied a subscription channel validation token %@, that does not match our current personal channel identifier %@. Informing client that validation token is invalid, allowing them to re-invite the sender, if appropriate.", &v19, 0x20u);
    }

LABEL_12:
    v15 = 2;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    handleString2 = [senderCopy handleString];
    v19 = 138412290;
    v20 = handleString2;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Sender %@ has supplied a valid subscription channel validation token", &v19, 0xCu);
  }

  v15 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int64_t)validatePersonalChannel:(id)channel matchesEncryptionValidationToken:(id)token fromSender:(id)sender
{
  v28 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  tokenCopy = token;
  senderCopy = sender;
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = tokenCopy;
    v24 = 2112;
    v25 = channelCopy;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to validate encryption token %@ against personal channel %@", &v22, 0x16u);
  }

  encryptionManager = [(SKAStatusSubscriptionServiceClient *)self encryptionManager];
  v13 = [encryptionManager encryptionValidationTokenForChannel:channelCopy];

  if (![v13 length])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesEncryptionValidationToken:fromSender:];
    }

    goto LABEL_13;
  }

  if (!tokenCopy)
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesEncryptionValidationToken:fromSender:];
    }

    goto LABEL_13;
  }

  if (![tokenCopy length])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesEncryptionValidationToken:fromSender:];
    }

    goto LABEL_18;
  }

  v14 = [v13 hasPrefix:tokenCopy];
  v15 = +[SKAStatusSubscriptionServiceClient logger];
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      handleString = [senderCopy handleString];
      v22 = 138412802;
      v23 = handleString;
      v24 = 2112;
      v25 = tokenCopy;
      v26 = 2112;
      v27 = v13;
      _os_log_error_impl(&dword_220099000, v16, OS_LOG_TYPE_ERROR, "Sender %@ has supplied an encryptoin validation token %@, that does not match our expected value %@. Informing client that validation token is invalid, allowing them to re-invite the sender, if appropriate.", &v22, 0x20u);
    }

LABEL_18:
    v18 = 2;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    handleString2 = [senderCopy handleString];
    v22 = 138412802;
    v23 = handleString2;
    v24 = 2112;
    v25 = tokenCopy;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Sender %@ has supplied a valid encryption validation token. Provided: %@ Expected: %@", &v22, 0x20u);
  }

LABEL_13:
  v18 = 1;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_validateChannelIsKnownForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier databaseContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  v10 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForSubscriptionIdentifier:identifierCopy databaseContext:context];
  v11 = v10;
  if (v10)
  {
    statusType = [v10 statusType];
    if ([statusType length]&& [statusType isEqualToString:typeIdentifierCopy])
    {
      v13 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = identifierCopy;
        v19 = 2112;
        v20 = typeIdentifierCopy;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Validated subscriptionIdentifier: %@ statusTypeIdentifier: %@", &v17, 0x16u);
      }

      v14 = 1;
    }

    else
    {
      v13 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusSubscriptionServiceClient _validateChannelIsKnownForSubscriptionIdentifier:statusTypeIdentifier:databaseContext:];
      }

      v14 = 0;
    }
  }

  else
  {
    statusType = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(statusType, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient _validateChannelIsKnownForSubscriptionIdentifier:statusTypeIdentifier:databaseContext:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)accountIsStatusKitCapableWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  databaseManager = [(SKAStatusSubscriptionServiceClient *)selfCopy databaseManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SKAStatusSubscriptionServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke;
  v8[3] = &unk_27843DE28;
  v8[4] = selfCopy;
  v7 = completionCopy;
  v9 = v7;
  [databaseManager deviceToDeviceEncryptedDatabaseCapableWithCompletion:v8];

  objc_sync_exit(selfCopy);
}

void __78__SKAStatusSubscriptionServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SKAStatusSubscriptionServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke_2;
  v5[3] = &unk_27843F218;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (SKAStatusSubscriptionServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __76__SKAStatusSubscriptionServiceClient_handleRemoteDatabaseChangeForChannels___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__SKAStatusSubscriptionServiceClient_handleReceivedStatusUpdate_onChannel___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SKAStatusSubscriptionServiceClient_handleReceivedInvitationForChannel___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__SKAStatusSubscriptionServiceClient_subscriptionServiceClientConnectionWasInterrupted___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__SKAStatusSubscriptionServiceClient_subscriptionServiceClientConnectionWasInvalidated___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionMetadataForHandle:statusTypeIdentifier:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_7_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_48_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke_49_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_50_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_51_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __151__SKAStatusSubscriptionServiceClient_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_statusTypeIdentifier_completion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 56) handleString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)validatePersonalChannel:matchesSubscriptionValidationToken:fromSender:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 handleString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)validatePersonalChannel:matchesEncryptionValidationToken:fromSender:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 handleString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)validatePersonalChannel:matchesEncryptionValidationToken:fromSender:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 handleString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)validatePersonalChannel:matchesEncryptionValidationToken:fromSender:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 handleString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_validateChannelIsKnownForSubscriptionIdentifier:statusTypeIdentifier:databaseContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_validateChannelIsKnownForSubscriptionIdentifier:statusTypeIdentifier:databaseContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end