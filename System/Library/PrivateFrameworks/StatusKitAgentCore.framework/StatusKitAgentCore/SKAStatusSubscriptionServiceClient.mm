@interface SKAStatusSubscriptionServiceClient
+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)a3;
+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)a3;
+ (id)_subscriptionIdentifierNotFoundError:(id)a3;
+ (id)logger;
- (BOOL)_validateChannelIsKnownForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (BOOL)channelMatchesClientStatusTypeIdentifier:(id)a3;
- (SKAStatusSubscriptionServiceClient)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 subscriptionManager:(id)a7 encryptionManager:(id)a8 inTrafficMode:(BOOL)a9 daemonProtocolDelegate:(id)a10;
- (SKAStatusSubscriptionServiceClientDelegate)delegate;
- (id)_currentStatusForChannel:(id)a3;
- (id)_handlesAssociatedWithChannel:(id)a3;
- (id)_subscriptionMetadataForChannel:(id)a3;
- (int64_t)validatePersonalChannel:(id)a3 matchesEncryptionValidationToken:(id)a4 fromSender:(id)a5;
- (int64_t)validatePersonalChannel:(id)a3 matchesSubscriptionValidationToken:(id)a4 fromSender:(id)a5;
- (void)accountIsStatusKitCapableWithCompletion:(id)a3;
- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(id)a3 includingPersonalSubscription:(BOOL)a4 completion:(id)a5;
- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)deleteSubscriptionWithIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)handleReceivedInvitationForChannel:(id)a3;
- (void)handleReceivedStatusUpdate:(id)a3 onChannel:(id)a4;
- (void)handleRemoteDatabaseChangeForChannels:(id)a3;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 applicationIdentifier:(id)a5 completion:(id)a6;
- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 applicationIdentifier:(id)a5 completion:(id)a6;
- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)subscriptionMetadataForHandle:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)subscriptionServiceClientConnectionWasInterrupted:(id)a3;
- (void)subscriptionServiceClientConnectionWasInvalidated:(id)a3;
- (void)subscriptionValidationTokensForHandle:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5;
- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(id)a3 fromSender:(id)a4 statusTypeIdentifier:(id)a5 completion:(id)a6;
@end

@implementation SKAStatusSubscriptionServiceClient

- (SKAStatusSubscriptionServiceClient)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 subscriptionManager:(id)a7 encryptionManager:(id)a8 inTrafficMode:(BOOL)a9 daemonProtocolDelegate:(id)a10
{
  v26 = a3;
  v16 = a4;
  v17 = a5;
  v25 = a6;
  v24 = a7;
  v18 = a8;
  v19 = a10;
  dispatch_assert_queue_V2(v16);
  v27.receiver = self;
  v27.super_class = SKAStatusSubscriptionServiceClient;
  v20 = [(SKAStatusSubscriptionServiceClient *)&v27 init];
  if (v20)
  {
    v21 = [[SKAStatusSubscriptionServiceClientConnection alloc] initWithXPCConnection:v26 queue:v16 daemonProtocolDelegate:v19 connectionLifecycleDelegate:v20];
    clientConnection = v20->_clientConnection;
    v20->_clientConnection = v21;

    objc_storeWeak(&v20->_delegate, v17);
    objc_storeStrong(&v20->_databaseManager, a6);
    objc_storeStrong(&v20->_subscriptionManager, a7);
    objc_storeStrong(&v20->_encryptionManager, a8);
    objc_storeStrong(&v20->_queue, a4);
    v20->_trafficModeEnabled = a9;
  }

  return v20;
}

+ (id)_missingEntitlmentErrorForStatusTypeIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Client is not entitled to subscription information for status of type %@. Missing entitlement %@", a3, @"com.apple.StatusKit.subscribe.types"];
  v4 = [SKAError errorWithCode:201 customDescription:v3];

  return v4;
}

+ (id)_serverDisabledErrorForStatusTypeIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Status type %@ has been disabled by the server", a3];
  v4 = [SKAError errorWithCode:101 customDescription:v3];

  return v4;
}

+ (id)_subscriptionIdentifierNotFoundError:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscription not found matching subscription identifier: %@", a3];
  v4 = [SKAError errorWithCode:1000 customDescription:v3];

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

- (void)handleRemoteDatabaseChangeForChannels:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
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
    v20 = [v12 array];
    [v19 subscriptionStateChangedForSubscriptions:v20 completion:&__block_literal_global_26];
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

- (void)handleReceivedStatusUpdate:(id)a3 onChannel:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(SKAStatusSubscriptionServiceClient *)self channelMatchesClientStatusTypeIdentifier:v5])
  {
    v6 = [(SKAStatusSubscriptionServiceClient *)self _subscriptionMetadataForChannel:v5];
    v7 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Notifying client of updated subscription: %@", &v11, 0xCu);
    }

    if (v6)
    {
      v8 = [(SKAStatusSubscriptionServiceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_28];
      [v8 subscriptionReceivedStatusUpdate:v6 completion:&__block_literal_global_31];
LABEL_8:
    }
  }

  else
  {
    v6 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      statusTypeIdentifier = self->_statusTypeIdentifier;
      v8 = [v5 statusType];
      v11 = 138412546;
      v12 = statusTypeIdentifier;
      v13 = 2112;
      v14 = v8;
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

- (void)handleReceivedInvitationForChannel:(id)a3
{
  v4 = a3;
  if ([(SKAStatusSubscriptionServiceClient *)self channelMatchesClientStatusTypeIdentifier:v4])
  {
    v5 = [(SKAStatusSubscriptionServiceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_33];
    v6 = [(SKAStatusSubscriptionServiceClient *)self _subscriptionMetadataForChannel:v4];
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

- (id)_subscriptionMetadataForChannel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 statusType];
  v7 = [v4 isPersonal];
  v8 = [(SKAStatusSubscriptionServiceClient *)self _currentStatusForChannel:v4];
  v9 = [(SKAStatusSubscriptionServiceClient *)self _handlesAssociatedWithChannel:v4];

  v10 = [objc_alloc(MEMORY[0x277D68158]) initWithSubscriptionIdentifier:v5 statusTypeIdentifier:v6 isPersonalStatusSubscription:v7 currentStatus:v8 ownerHandles:v9];

  return v10;
}

- (id)_handlesAssociatedWithChannel:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isPersonal])
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    v7 = [(SKADatabaseManaging *)self->_databaseManager receivedInvitationsForChannel:v4 databaseContext:v6];
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

          v14 = [*(*(&v17 + 1) + 8 * i) senderSKHandle];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v5 = [v8 array];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_currentStatusForChannel:(id)a3
{
  v4 = a3;
  v5 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v6 = [(SKADatabaseManaging *)self->_databaseManager existingStatusForChannel:v4 databaseContext:v5];
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

  v19 = [v7 uniqueIdentifier];
  v12 = [v7 datePublished];
  v20 = [v7 dateReceived];
  v13 = [v7 dateCreated];
  v21 = [v7 rawData];
  v14 = [(SKAStatusEncryptionManaging *)self->_encryptionManager decryptStatusPayloadFromStatusEnvelopeData:v21 channel:v4];
  v15 = [v14 statusPayload];
  v16 = [v14 invitation];
  v17 = [v16 skInvitationPayload];
  v11 = [objc_alloc(MEMORY[0x277D68120]) initWithStatusPayload:v15 statusUniqueIdentifier:v19 datePublished:v12 dateCreated:v13 dateReceived:v20 invitationPayload:v17];

LABEL_10:

  return v11;
}

- (BOOL)channelMatchesClientStatusTypeIdentifier:(id)a3
{
  v4 = [a3 statusType];
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_statusTypeIdentifier;
  objc_sync_exit(v5);

  if (-[NSString length](v6, "length") || [v4 length])
  {
    v7 = [v4 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)subscriptionServiceClientConnectionWasInterrupted:(id)a3
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

- (void)subscriptionServiceClientConnectionWasInvalidated:(id)a3
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

- (void)subscriptionMetadataForHandle:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v12 = [v11 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v9];

  if ((v12 & 1) == 0)
  {
    v14 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
LABEL_10:
    v13 = v15;
    v10[2](v10, 0, v15);
    goto LABEL_11;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __100__SKAStatusSubscriptionServiceClient_subscriptionMetadataForHandle_statusTypeIdentifier_completion___block_invoke;
  v17[3] = &unk_27843F1A0;
  v21 = v10;
  v18 = v8;
  v19 = self;
  v20 = v9;
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

- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(id)a3 includingPersonalSubscription:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v10 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v11 = [v10 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v8];

  if ((v11 & 1) == 0)
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v14 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v8];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v8])
  {
    v15 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v14 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v8];
LABEL_10:
    v12 = v14;
    v9[2](v9, 0, v14);
    goto LABEL_11;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __127__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasForStatusTypeIdentifier_includingPersonalSubscription_completion___block_invoke;
  v16[3] = &unk_27843F650;
  v19 = v9;
  v17 = v8;
  v18 = self;
  v20 = a4;
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

- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [v8 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
LABEL_10:
    v10 = v12;
    v7[2](v7, 0, v12);
    goto LABEL_11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __117__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke;
  v14[3] = &unk_27843F128;
  v17 = v7;
  v15 = v6;
  v16 = self;
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

- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [v8 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v12 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
LABEL_10:
    v10 = v12;
    v7[2](v7, 0, v12);
    goto LABEL_11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __120__SKAStatusSubscriptionServiceClient_allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier_completion___block_invoke;
  v14[3] = &unk_27843F128;
  v17 = v7;
  v15 = v6;
  v16 = self;
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

- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v12 = [v11 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v9];

  if ((v12 & 1) == 0)
  {
    v14 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient subscriptionMetadataForHandle:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
    goto LABEL_10;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
LABEL_10:
    v13 = v15;
    v10[2](v10, 0, v15);
    goto LABEL_11;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __152__SKAStatusSubscriptionServiceClient_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_statusTypeIdentifier_completion___block_invoke;
  v17[3] = &unk_27843F1A0;
  v21 = v10;
  v18 = v9;
  v19 = v8;
  v20 = self;
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

- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [v8 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
LABEL_8:
    v12 = v10;
    v7[2](v7, 0, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __117__SKAStatusSubscriptionServiceClient_subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = v7;
  v13[4] = self;
  v14 = v6;
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

- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v9 = [v8 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v10 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v6];
LABEL_8:
    v12 = v10;
    v7[2](v7, v10);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v6])
  {
    v11 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v10 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v6];
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__SKAStatusSubscriptionServiceClient_registerForDelegateCallbacksWithStatusTypeIdentifier_completion___block_invoke;
  v13[3] = &unk_27843F128;
  v15 = v7;
  v13[4] = self;
  v14 = v6;
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

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to retain transient subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  v12 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v13 = [v12 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v9];

  if (v13)
  {
    if ([SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
    {
      if (!self->_trafficModeEnabled)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __132__SKAStatusSubscriptionServiceClient_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke;
        v20[3] = &unk_27843F1A0;
        v23 = v10;
        v20[4] = self;
        v21 = v8;
        v22 = v9;
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

      v15 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
    }
  }

  else
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient retainTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:];
    }

    v15 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
  }

  v18 = v15;
  (*(v10 + 2))(v10, v15);
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

- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request to release transient subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  v12 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v13 = [v12 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v9];

  if ((v13 & 1) == 0)
  {
    v15 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient releaseTransientSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
    goto LABEL_12;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v17 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
LABEL_12:
    v14 = v16;
    v10[2](v10, v16);
    goto LABEL_13;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __133__SKAStatusSubscriptionServiceClient_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v22 = v10;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
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

- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 applicationIdentifier:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Received request to retain persistent subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  v15 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v16 = [v15 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v11];

  if (v16)
  {
    if ([SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v11])
    {
      if (!self->_trafficModeEnabled)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __155__SKAStatusSubscriptionServiceClient_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke;
        v23[3] = &unk_27843F100;
        v27 = v13;
        v23[4] = self;
        v24 = v10;
        v25 = v11;
        v26 = v12;
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

      v18 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v11];
    }
  }

  else
  {
    v19 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient retainPersistentSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:completion:];
    }

    v18 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v11];
  }

  v21 = v18;
  (*(v13 + 2))(v13, v18);
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

- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 applicationIdentifier:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Received request to release persistent subscription assertion for subscriptionIdentifier: %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  v15 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v16 = [v15 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v11];

  if ((v16 & 1) == 0)
  {
    v18 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient releasePersistentSubscriptionAssertionForSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:completion:];
    }

    v19 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v11];
    goto LABEL_12;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v11])
  {
    v20 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v19 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v11];
LABEL_12:
    v17 = v19;
    v13[2](v13, v19);
    goto LABEL_13;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __156__SKAStatusSubscriptionServiceClient_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke;
  v22[3] = &unk_27843F100;
  v26 = v13;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v25 = v12;
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

- (void)deleteSubscriptionWithIdentifier:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v12 = [v11 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v9];

  if ((v12 & 1) == 0)
  {
    v13 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
LABEL_8:
    v15 = v13;
    v10[2](v10, v13);

    goto LABEL_9;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v14 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v13 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__SKAStatusSubscriptionServiceClient_deleteSubscriptionWithIdentifier_statusTypeIdentifier_completion___block_invoke;
  v16[3] = &unk_27843F1A0;
  v19 = v10;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
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

- (void)subscriptionValidationTokensForHandle:(id)a3 statusTypeIdentifier:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 handleString];
    *buf = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Received request for subscription and encryption validation token for handle %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  v13 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v14 = [v13 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v9];

  if ((v14 & 1) == 0)
  {
    v16 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v9];
LABEL_10:
    v15 = v16;
    v10[2](v10, 0, v16);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v9])
  {
    v17 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v16 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v9];
    goto LABEL_10;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__SKAStatusSubscriptionServiceClient_subscriptionValidationTokensForHandle_statusTypeIdentifier_completion___block_invoke;
  v19[3] = &unk_27843F1A0;
  v22 = v10;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
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

- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(id)a3 fromSender:(id)a4 statusTypeIdentifier:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 handleString];
    *buf = 138412802;
    v28 = v10;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Received request for validate token %@ from handle %@ for statusTypeIdentifier: %@", buf, 0x20u);
  }

  v16 = [(SKAStatusSubscriptionServiceClient *)self clientConnection];
  v17 = [v16 clientIsEntitledForSubscriptionWithStatusTypeIdentifier:v12];

  if ((v17 & 1) == 0)
  {
    v19 = [SKAStatusSubscriptionServiceClient _missingEntitlmentErrorForStatusTypeIdentifier:v12];
LABEL_10:
    v18 = v19;
    v13[2](v13, 0, v19);
    goto LABEL_11;
  }

  if (![SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v12])
  {
    v20 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClient publishStatusRequest:statusTypeIdentifier:completion:];
    }

    v19 = [SKAStatusSubscriptionServiceClient _serverDisabledErrorForStatusTypeIdentifier:v12];
    goto LABEL_10;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __151__SKAStatusSubscriptionServiceClient_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_statusTypeIdentifier_completion___block_invoke;
  v22[3] = &unk_27843F100;
  v26 = v13;
  v22[4] = self;
  v23 = v12;
  v24 = v10;
  v25 = v11;
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

- (int64_t)validatePersonalChannel:(id)a3 matchesSubscriptionValidationToken:(id)a4 fromSender:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [a3 identifier];
  v10 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to validate subscription channel token %@ against personal channel with identifier %@", &v19, 0x16u);
  }

  if (![v7 length])
  {
    v13 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesSubscriptionValidationToken:fromSender:];
    }

    goto LABEL_12;
  }

  v11 = [v9 hasPrefix:v7];
  v12 = +[SKAStatusSubscriptionServiceClient logger];
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 handleString];
      v19 = 138412802;
      v20 = v18;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_220099000, v13, OS_LOG_TYPE_ERROR, "Sender %@ has supplied a subscription channel validation token %@, that does not match our current personal channel identifier %@. Informing client that validation token is invalid, allowing them to re-invite the sender, if appropriate.", &v19, 0x20u);
    }

LABEL_12:
    v15 = 2;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 handleString];
    v19 = 138412290;
    v20 = v14;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Sender %@ has supplied a valid subscription channel validation token", &v19, 0xCu);
  }

  v15 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int64_t)validatePersonalChannel:(id)a3 matchesEncryptionValidationToken:(id)a4 fromSender:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[SKAStatusSubscriptionServiceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to validate encryption token %@ against personal channel %@", &v22, 0x16u);
  }

  v12 = [(SKAStatusSubscriptionServiceClient *)self encryptionManager];
  v13 = [v12 encryptionValidationTokenForChannel:v8];

  if (![v13 length])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesEncryptionValidationToken:fromSender:];
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesEncryptionValidationToken:fromSender:];
    }

    goto LABEL_13;
  }

  if (![v9 length])
  {
    v16 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient validatePersonalChannel:matchesEncryptionValidationToken:fromSender:];
    }

    goto LABEL_18;
  }

  v14 = [v13 hasPrefix:v9];
  v15 = +[SKAStatusSubscriptionServiceClient logger];
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = [v10 handleString];
      v22 = 138412802;
      v23 = v21;
      v24 = 2112;
      v25 = v9;
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
    v17 = [v10 handleString];
    v22 = 138412802;
    v23 = v17;
    v24 = 2112;
    v25 = v9;
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

- (BOOL)_validateChannelIsKnownForSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForSubscriptionIdentifier:v8 databaseContext:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 statusType];
    if ([v12 length]&& [v12 isEqualToString:v9])
    {
      v13 = +[SKAStatusSubscriptionServiceClient logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
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
    v12 = +[SKAStatusSubscriptionServiceClient logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusSubscriptionServiceClient _validateChannelIsKnownForSubscriptionIdentifier:statusTypeIdentifier:databaseContext:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)accountIsStatusKitCapableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SKAStatusSubscriptionServiceClient *)v5 databaseManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SKAStatusSubscriptionServiceClient_accountIsStatusKitCapableWithCompletion___block_invoke;
  v8[3] = &unk_27843DE28;
  v8[4] = v5;
  v7 = v4;
  v9 = v7;
  [v6 deviceToDeviceEncryptedDatabaseCapableWithCompletion:v8];

  objc_sync_exit(v5);
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