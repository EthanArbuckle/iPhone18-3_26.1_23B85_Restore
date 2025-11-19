@interface SKAStatusServer
+ (id)logger;
+ (id)sharedInstance;
- (BOOL)_inTextTrafficMode;
- (BOOL)_presenceServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)_publishingServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)_shouldDonateToBiomeForStatusTypeIdentifier:(id)a3;
- (BOOL)_subscriptionServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SKAStatusServer)init;
- (id)_onQueue_clientForPresenceIdentifier:(id)a3;
- (id)_senderHandlesForChannel:(id)a3;
- (void)_setupMaintenanceActivity;
- (void)channelManager:(id)a3 didReceiveData:(id)a4 onChannel:(id)a5 identifier:(unint64_t)a6 dateReceived:(id)a7 dateExpired:(id)a8;
- (void)channelManager:(id)a3 failedToSubscribeToChannel:(id)a4 withError:(id)a5;
- (void)databaseAccountStatusChanged;
- (void)databaseDidReceiveRemoteChangesForChannels:(id)a3;
- (void)databaseManager:(id)a3 didCreateChannel:(id)a4;
- (void)donateReceivedStatusToBiomeOnChannel:(id)a3;
- (void)drainUpdatesForPresenceIdentifier:(id)a3;
- (void)enumeratePresenceClientsWithIdentifier:(id)a3 usingBlock:(id)a4;
- (void)initialCloudKitImportReceived:(id)a3;
- (void)invitationManager:(id)a3 didReceiveInvitationWithType:(int64_t)a4 forChannel:(id)a5 withExistingChannel:(id)a6;
- (void)invitationManager:(id)a3 didRevokeInvitationOnChannel:(id)a4;
- (void)invitationManager:(id)a3 didRollChannelFromExistingChannel:(id)a4;
- (void)logState;
- (void)networkBecameReachable;
- (void)presenceClientWasInvalidated:(id)a3;
- (void)presenceManager:(id)a3 didCreateChannel:(id)a4;
- (void)presenceManager:(id)a3 didReceivePresentDevicesUpdate:(id)a4 forPresenceIdentifier:(id)a5;
- (void)presenceManager:(id)a3 didRequestToRollChannel:(id)a4;
- (void)publishingServiceClientWasInvalidated:(id)a3;
- (void)refreshAssertionsForPresenceIdentifier:(id)a3 existingChannelIdentifier:(id)a4;
- (void)service:(id)a3 didReceiveIncomingMessage:(id)a4 fromID:(id)a5 fromMergeID:(id)a6 toID:(id)a7 messageGuid:(id)a8;
- (void)shutdown;
- (void)statusReceivingManager:(id)a3 didReceiveStatusUpdate:(id)a4 onChannel:(id)a5;
- (void)subscriptionServiceClientWasInvalidated:(id)a3;
@end

@implementation SKAStatusServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SKAStatusServer sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __33__SKAStatusServer_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SKAStatusServer);

  return MEMORY[0x2821F96F8]();
}

- (SKAStatusServer)init
{
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Initializing", buf, 2u);
  }

  v54.receiver = self;
  v54.super_class = SKAStatusServer;
  v4 = [(SKAStatusServer *)&v54 init];
  if (v4)
  {
    v5 = +[SKAPrimaryQueueActor queue];
    publishingServiceConnectionQueue = v4->_publishingServiceConnectionQueue;
    v4->_publishingServiceConnectionQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    publishingServiceConnectedClientProxies = v4->_publishingServiceConnectedClientProxies;
    v4->_publishingServiceConnectedClientProxies = v7;

    v9 = +[SKAPrimaryQueueActor queue];
    subscriptionServiceConnectionQueue = v4->_subscriptionServiceConnectionQueue;
    v4->_subscriptionServiceConnectionQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subscriptionServiceConnectedClientProxies = v4->_subscriptionServiceConnectedClientProxies;
    v4->_subscriptionServiceConnectedClientProxies = v11;

    v13 = +[SKAPrimaryQueueActor queue];
    presenceConnectionQueue = v4->_presenceConnectionQueue;
    v4->_presenceConnectionQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    onQueue_presenceConnectedClientProxies = v4->_onQueue_presenceConnectedClientProxies;
    v4->_onQueue_presenceConnectedClientProxies = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    onQueue_pendingCompletionsByPresenceIdentifier = v4->_onQueue_pendingCompletionsByPresenceIdentifier;
    v4->_onQueue_pendingCompletionsByPresenceIdentifier = v17;

    v19 = [[SKADatabaseProvider alloc] initWithDelegate:v4];
    databaseProvider = v4->_databaseProvider;
    v4->_databaseProvider = v19;

    v21 = [[SKADatabaseManager alloc] initWithDatabaseProvider:v4->_databaseProvider delegate:v4];
    databaseManager = v4->_databaseManager;
    v4->_databaseManager = v21;

    v23 = [(SKAStatusServer *)v4 _inTextTrafficMode];
    v4->_trafficModeEnabled = v23;
    if (v23)
    {
      v24 = +[SKAStatusServer logger];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "In Traffic Mode--will not honor status subscriptions and will drop incoming status's", buf, 2u);
      }
    }

    v25 = [SKAPushManager alloc];
    v26 = +[SKASystemMonitor sharedInstance];
    v27 = MEMORY[0x277D85CD0];
    v28 = [(SKAPushManager *)v25 initWithQueue:MEMORY[0x277D85CD0] systemMonitor:v26 inTrafficMode:v4->_trafficModeEnabled];

    v29 = objc_alloc_init(SKAAccountProvider);
    v30 = [[SKAChannelManager alloc] initWithPushManager:v28 accountProvider:v29 delegate:v4];
    channelManager = v4->_channelManager;
    v4->_channelManager = v30;

    v32 = [[SKAStatusSubscriptionManager alloc] initWithDatabaseManager:v4->_databaseManager channelManager:v4->_channelManager pushManager:v28];
    subscriptionManager = v4->_subscriptionManager;
    v4->_subscriptionManager = v32;

    invitationManagerMessagingQueue = v4->_invitationManagerMessagingQueue;
    v4->_invitationManagerMessagingQueue = v27;

    v35 = [[SKAMessagingProvider alloc] initWithDelegate:v4 serviceIdentifier:@"com.apple.private.alloy.status.keysharing" pushManager:v28 queue:v4->_invitationManagerMessagingQueue];
    invitationMessagingProvider = v4->_invitationMessagingProvider;
    v4->_invitationMessagingProvider = v35;

    v37 = [[SKAPresenceManager alloc] initWithDatabaseManager:v4->_databaseManager channelManager:v4->_channelManager subscriptionManager:v4->_subscriptionManager accountProvider:v29 messagingProvider:v4->_invitationMessagingProvider delegate:v4];
    presenceManager = v4->_presenceManager;
    v4->_presenceManager = v37;

    v39 = [[SKAInvitationManager alloc] initWithMessagingProvider:v4->_invitationMessagingProvider databaseManager:v4->_databaseManager accountProvider:v29 channelManager:v4->_channelManager presenceManager:v4->_presenceManager trafficMode:v4->_trafficModeEnabled];
    invitationManager = v4->_invitationManager;
    v4->_invitationManager = v39;

    [(SKAInvitationManaging *)v4->_invitationManager setDelegate:v4];
    v41 = [[SKAStatusEncryptionManager alloc] initWithDatabaseManager:v4->_databaseManager invitationManager:v4->_invitationManager];
    encryptionManager = v4->_encryptionManager;
    v4->_encryptionManager = v41;

    v43 = [[SKAStatusReceivingManager alloc] initWithDatabaseManager:v4->_databaseManager encryptionManager:v4->_encryptionManager delegate:v4];
    statusReceivingManager = v4->_statusReceivingManager;
    v4->_statusReceivingManager = v43;

    v45 = [[SKAStatusPublishingManager alloc] initWithDatabaseManager:v4->_databaseManager channelManager:v4->_channelManager accountProvider:v29 encryptionManager:v4->_encryptionManager invitationManager:v4->_invitationManager];
    publishingManager = v4->_publishingManager;
    v4->_publishingManager = v45;

    v47 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.StatusKit.publish"];
    publishingServiceListener = v4->_publishingServiceListener;
    v4->_publishingServiceListener = v47;

    [(NSXPCListener *)v4->_publishingServiceListener setDelegate:v4];
    [(NSXPCListener *)v4->_publishingServiceListener _setQueue:v4->_publishingServiceConnectionQueue];
    [(NSXPCListener *)v4->_publishingServiceListener resume];
    v49 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.StatusKit.subscribe"];
    subscriptionServiceListener = v4->_subscriptionServiceListener;
    v4->_subscriptionServiceListener = v49;

    [(NSXPCListener *)v4->_subscriptionServiceListener setDelegate:v4];
    [(NSXPCListener *)v4->_subscriptionServiceListener _setQueue:v4->_subscriptionServiceConnectionQueue];
    [(NSXPCListener *)v4->_subscriptionServiceListener resume];
    v51 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.StatusKit.presence"];
    presenceListener = v4->_presenceListener;
    v4->_presenceListener = v51;

    [(NSXPCListener *)v4->_presenceListener setDelegate:v4];
    [(NSXPCListener *)v4->_presenceListener _setQueue:v4->_presenceConnectionQueue];
    [(NSXPCListener *)v4->_presenceListener resume];
    [(SKAStatusServer *)v4 _setupMaintenanceActivity];
  }

  return v4;
}

- (void)shutdown
{
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down", v10, 2u);
  }

  [(NSMutableArray *)self->_publishingServiceConnectedClientProxies removeAllObjects];
  publishingServiceConnectedClientProxies = self->_publishingServiceConnectedClientProxies;
  self->_publishingServiceConnectedClientProxies = 0;

  [(NSXPCListener *)self->_publishingServiceListener invalidate];
  publishingServiceListener = self->_publishingServiceListener;
  self->_publishingServiceListener = 0;

  [(NSMutableArray *)self->_subscriptionServiceConnectedClientProxies removeAllObjects];
  subscriptionServiceConnectedClientProxies = self->_subscriptionServiceConnectedClientProxies;
  self->_subscriptionServiceConnectedClientProxies = 0;

  [(NSXPCListener *)self->_subscriptionServiceListener invalidate];
  subscriptionServiceListener = self->_subscriptionServiceListener;
  self->_subscriptionServiceListener = 0;

  [(NSMutableArray *)self->_onQueue_presenceConnectedClientProxies removeAllObjects];
  onQueue_presenceConnectedClientProxies = self->_onQueue_presenceConnectedClientProxies;
  self->_onQueue_presenceConnectedClientProxies = 0;

  [(NSXPCListener *)self->_presenceListener invalidate];
  presenceListener = self->_presenceListener;
  self->_presenceListener = 0;
}

- (void)logState
{
  v2 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_220099000, v2, OS_LOG_TYPE_DEFAULT, "Logging state", v3, 2u);
  }
}

- (id)_onQueue_clientForPresenceIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  dispatch_assert_queue_V2(self->_presenceConnectionQueue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(SKAStatusServer *)self onQueue_presenceConnectedClientProxies];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 underlyingClient];
        v10 = [v9 presenceIdentifier];
        if (v10)
        {
          v11 = v10;
          v12 = [v8 underlyingClient];
          v13 = [v12 presenceIdentifier];
          v14 = [v13 isEqualToString:v17];

          if (v14)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)refreshAssertionsForPresenceIdentifier:(id)a3 existingChannelIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  presenceConnectionQueue = self->_presenceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke;
  block[3] = &unk_27843E358;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(presenceConnectionQueue, block);
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke(id *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_220099000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to refresh assertions and subscriptions for presenceIdentifier: %@", &buf, 0xCu);
  }

  v4 = [a1[5] databaseManager];
  v5 = [v4 newBackgroundContext];

  v6 = [a1[5] databaseManager];
  v7 = [v6 existingChannelForSubscriptionIdentifier:a1[6] databaseContext:v5];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__3;
  v58 = __Block_byref_object_dispose__3;
  v8 = [a1[5] presenceManager];
  v9 = a1 + 4;
  v59 = [v8 activePresenceAssertionForPresenceIdentifier:a1[4] isPersonal:{objc_msgSend(v7, "isPersonal")}];

  v10 = [a1[5] databaseManager];
  [v10 decommissionAllOldChannelsWithPresenceIdentifier:a1[4] isPersonal:objc_msgSend(v7 databaseContext:{"isPersonal"), v5}];

  v11 = [a1[5] subscriptionManager];
  v12 = [v11 activePresenceSubscriptionAssertionsExistForChannelIdentifier:a1[6]];

  if (v12)
  {
    v13 = [a1[5] subscriptionManager];
    v14 = [v13 isSubscriptionPersistentForChannelIdentifier:a1[6]];

    *&v50 = 0;
    *(&v50 + 1) = &v50;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__3;
    v53 = __Block_byref_object_dispose__3;
    v54 = [a1[5] _onQueue_clientForPresenceIdentifier:a1[4]];
    v15 = [a1[5] presenceManager];
    v16 = *v9;
    v17 = [v7 isPersonal];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_31;
    v43[3] = &unk_27843F740;
    v44 = a1[4];
    v18 = a1[6];
    v49 = v14;
    v19 = a1[5];
    v45 = v18;
    v46 = v19;
    p_buf = &buf;
    v48 = &v50;
    [v15 findPresenceChannelForPresenceIdentifier:v16 isPersonal:v17 databaseContext:v5 completion:v43];

    _Block_object_dispose(&v50, 8);
  }

  else if (*(*(&buf + 1) + 40))
  {
    v20 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *v9;
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = v21;
      _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Reasserting presence to handle change in underlying channel for presenceIdentifier %@", &v50, 0xCu);
    }

    v22 = [*(*(&buf + 1) + 40) presenceOptions];
    v23 = [v22 isDaemonIdleExitEnabled];

    v24 = a1[5];
    if (v23)
    {
      v25 = [v24 presenceManager];
      v26 = *v9;
      v27 = [*(*(&buf + 1) + 40) payload];
      v28 = [*(*(&buf + 1) + 40) assertionOptions];
      v29 = [*(*(&buf + 1) + 40) presenceOptions];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_42;
      v41[3] = &unk_27843F3D0;
      v42 = *v9;
      [v25 retainPersistentPresenceAssertionForPresenceIdentifier:v26 withPresencePayload:v27 assertionOptions:v28 presenceOptions:v29 completion:v41];
    }

    else
    {
      v30 = [v24 _onQueue_clientForPresenceIdentifier:*v9];
      if (v30)
      {
        v31 = [a1[5] presenceManager];
        v32 = *v9;
        v33 = [*(*(&buf + 1) + 40) payload];
        v34 = [*(*(&buf + 1) + 40) assertionOptions];
        v35 = [*(*(&buf + 1) + 40) presenceOptions];
        v36 = [v30 underlyingClient];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_43;
        v39[3] = &unk_27843F3D0;
        v40 = *v9;
        [v31 retainTransientPresenceAssertionForPresenceIdentifier:v32 withPresencePayload:v33 assertionOptions:v34 presenceOptions:v35 client:v36 completion:v39];

        v37 = v40;
      }

      else
      {
        v37 = +[SKAStatusServer logger];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_cold_1(v9);
        }
      }
    }
  }

  _Block_object_dispose(&buf, 8);

  v38 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_31_cold_2(a1);
    }
  }

  else
  {
    v8 = [v5 identifier];
    v9 = [v8 isEqualToString:*(a1 + 40)];
    v10 = +[SKAStatusServer logger];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        *buf = 138412802;
        v48 = v12;
        v49 = 2112;
        v50 = v13;
        v51 = 2112;
        v52 = v8;
        _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Not moving over to new channel for presence identifier %@. Old channel %@ is same as the new channel %@", buf, 0x20u);
      }

LABEL_17:

      goto LABEL_18;
    }

    if (v11)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138412802;
      v48 = v14;
      v49 = 2112;
      v50 = v15;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Moving over to new channel for presence identifier %@. Old channel %@ New channel %@", buf, 0x20u);
    }

    if (*(a1 + 72) == 1)
    {
      v16 = [*(a1 + 48) subscriptionManager];
      v17 = *(a1 + 40);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_32;
      v42[3] = &unk_27843F6C8;
      v18 = &v43;
      v19 = v17;
      v43 = v19;
      v20 = v44;
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      v44[0] = v21;
      v44[1] = v22;
      v23 = &v45;
      v45 = v8;
      v24 = v46;
      v25 = v5;
      v26 = *(a1 + 56);
      v46[0] = v25;
      v46[1] = v26;
      v27 = v8;
      [v16 releasePersistentPresenceSubscriptionForChannelIdentifier:v19 completion:v42];
    }

    else
    {
      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v10 = +[SKAStatusServer logger];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_31_cold_1(a1);
        }

        goto LABEL_17;
      }

      v16 = [*(a1 + 48) subscriptionManager];
      v36 = *(a1 + 40);
      v28 = [*(*(*(a1 + 64) + 8) + 40) underlyingClient];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_37;
      v37[3] = &unk_27843F718;
      v18 = &v38;
      v38 = *(a1 + 40);
      v20 = v39;
      v29 = *(a1 + 32);
      v30 = *(a1 + 48);
      v39[0] = v29;
      v39[1] = v30;
      v23 = &v40;
      v31 = *(a1 + 64);
      v40 = v8;
      v41[1] = v31;
      v24 = v41;
      v32 = v5;
      v33 = *(a1 + 56);
      v41[0] = v32;
      v41[2] = v33;
      v34 = v8;
      [v16 releaseTransientPresenceSubscriptionForChannelIdentifier:v36 client:v28 completion:v37];
    }
  }

LABEL_18:

  v35 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_32(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusServer logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_32_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released persistent presence subscription for channelIdentifier: %@ presenceIdentifier: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 48) subscriptionManager];
  v9 = *(a1 + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_33;
  v19[3] = &unk_27843F6C8;
  v20 = v3;
  v10 = *(a1 + 56);
  v11 = v10;
  v12 = *(a1 + 40);
  v18 = *(a1 + 48);
  v13 = *(a1 + 64);
  *&v14 = v18;
  *(&v14 + 1) = v13;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v21 = v15;
  v22 = v14;
  v23 = *(a1 + 72);
  v16 = v3;
  [v8 retainPersistentPresenceSubscriptionForPresenceIdentifier:v9 channelIdentifier:v10 completion:v19];

  v17 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_33(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[SKAStatusServer logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_33_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully retained persistent presence subscription for channelIdentifier: %@ presenceIdentifier: %@", buf, 0x16u);
    }

    v9 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Polling for current state as we've migrated channels", buf, 2u);
    }

    v10 = [*(a1 + 56) presenceManager];
    v11 = *(a1 + 64);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_34;
    v23[3] = &unk_27843F678;
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    [v10 pollAndUpdatePresentDevicesForChannel:v11 completion:v23];

    v6 = v24;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v12 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Reasserting presence to handle change in underlying channel for presenceIdentifier %@", buf, 0xCu);
    }

    v14 = [*(a1 + 56) presenceManager];
    v15 = *(a1 + 48);
    v16 = [*(*(*(a1 + 72) + 8) + 40) payload];
    v17 = [*(*(*(a1 + 72) + 8) + 40) assertionOptions];
    v18 = [*(*(*(a1 + 72) + 8) + 40) presenceOptions];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_36;
    v20[3] = &unk_27843F6A0;
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    [v14 retainPersistentPresenceAssertionForPresenceIdentifier:v15 withPresencePayload:v16 assertionOptions:v17 presenceOptions:v18 completion:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_34_cold_1(a1);
    }
  }
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_36(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[SKAStatusServer logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_36_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully retained presence assertion for presenceIdentifier: %@ (persistent)", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_37(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusServer logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_37_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released transient presence subscription for channelIdentifier: %@ presenceIdentifier: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 48) subscriptionManager];
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = [*(*(*(a1 + 72) + 8) + 40) underlyingClient];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_38;
  v20[3] = &unk_27843F6F0;
  v21 = v3;
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v19 = *(a1 + 48);
  v14 = *(a1 + 64);
  *&v15 = v19;
  *(&v15 + 1) = v14;
  *&v16 = v12;
  *(&v16 + 1) = v13;
  v22 = v16;
  v23 = v15;
  v24 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v17 = v3;
  [v8 retainTransientPresenceSubscriptionForPresenceIdentifier:v9 channelIdentifier:v10 client:v11 completion:v20];

  v18 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_38(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[SKAStatusServer logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_38_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully retained transient presence subscription for channelIdentifier: %@ presenceIdentifier: %@", buf, 0x16u);
    }

    v9 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Polling for current state as we've migrated channels", buf, 2u);
    }

    v10 = [*(a1 + 56) presenceManager];
    v11 = *(a1 + 64);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_39;
    v24[3] = &unk_27843F678;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    [v10 pollAndUpdatePresentDevicesForChannel:v11 completion:v24];

    v6 = v25;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v12 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Reasserting presence to handle change in underlying channel for presenceIdentifier %@", buf, 0xCu);
    }

    v14 = [*(a1 + 56) presenceManager];
    v15 = *(a1 + 48);
    v16 = [*(*(*(a1 + 72) + 8) + 40) payload];
    v17 = [*(*(*(a1 + 72) + 8) + 40) assertionOptions];
    v18 = [*(*(*(a1 + 72) + 8) + 40) presenceOptions];
    v19 = [*(*(*(a1 + 80) + 8) + 40) underlyingClient];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_40;
    v21[3] = &unk_27843F6A0;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    [v14 retainTransientPresenceAssertionForPresenceIdentifier:v15 withPresencePayload:v16 assertionOptions:v17 presenceOptions:v18 client:v19 completion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_34_cold_1(a1);
    }
  }
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_40(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[SKAStatusServer logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_40_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully retained transient presence assertion for presenceIdentifier: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_42(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusServer logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_42_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained presence assertion for presenceIdentifier: %@ (persistent)", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_43(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusServer logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_43_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained presence assertion for presenceIdentifier: %@ (transient)", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)logger
{
  if (logger_onceToken_29 != -1)
  {
    +[SKAStatusServer logger];
  }

  v3 = logger__logger_29;

  return v3;
}

uint64_t __25__SKAStatusServer_logger__block_invoke()
{
  logger__logger_29 = os_log_create("com.apple.StatusKit", "SKAStatusServer");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 serviceName];
  if ([v8 isEqualToString:@"com.apple.StatusKit.publish"])
  {
    v9 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 processIdentifier];
      v11 = [v7 sk_applicationIdentifier];
      v24 = 134218242;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Receiving XPC connection from PID %ld (%@) for publishing service", &v24, 0x16u);
    }

    v12 = [(SKAStatusServer *)self _publishingServiceListener:v6 shouldAcceptNewConnection:v7];
LABEL_13:
    v21 = v12;
    goto LABEL_14;
  }

  if ([v8 isEqualToString:@"com.apple.StatusKit.subscribe"])
  {
    v13 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 processIdentifier];
      v15 = [v7 sk_applicationIdentifier];
      v24 = 134218242;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Receiving XPC connection from PID %ld (%@) for subscription service", &v24, 0x16u);
    }

    v12 = [(SKAStatusServer *)self _subscriptionServiceListener:v6 shouldAcceptNewConnection:v7];
    goto LABEL_13;
  }

  v16 = [v8 isEqualToString:@"com.apple.StatusKit.presence"];
  v17 = +[SKAStatusServer logger];
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v7 processIdentifier];
      v20 = [v7 sk_applicationIdentifier];
      v24 = 134218242;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Receiving XPC connection from PID %ld (%@) for presence service", &v24, 0x16u);
    }

    v12 = [(SKAStatusServer *)self _presenceServiceListener:v6 shouldAcceptNewConnection:v7];
    goto LABEL_13;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [(SKAStatusServer *)v7 listener:v8 shouldAcceptNewConnection:v18];
  }

  v21 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_publishingServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [SKAStatusPublishingServiceClientConnection clientIsEntitledForAtLeastOnePublishingServiceType:v5];
  v7 = +[SKAStatusServer logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = [v5 processIdentifier];
      _os_log_impl(&dword_220099000, &v8->super, OS_LOG_TYPE_DEFAULT, "Accepted XPC connection from PID %ld for publishing service", buf, 0xCu);
    }

    v8 = [[SKAStatusPublishingServiceClientProxy alloc] initWithXPCConnection:v5 queue:self->_publishingServiceConnectionQueue delegate:self databaseManager:self->_databaseManager invitationManager:self->_invitationManager publishingManager:self->_publishingManager channelManager:self->_channelManager];
    [(NSMutableArray *)self->_publishingServiceConnectedClientProxies addObject:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusServer _publishingServiceListener:v5 shouldAcceptNewConnection:?];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_presenceServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [SKAPresenceClientConnection clientIsEntitledForPresence:v5];
  if (v6)
  {
    objc_initWeak(&location, self);
    presenceConnectionQueue = self->_presenceConnectionQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__SKAStatusServer__presenceServiceListener_shouldAcceptNewConnection___block_invoke;
    v10[3] = &unk_27843F768;
    objc_copyWeak(&v13, &location);
    v11 = v5;
    v12 = self;
    dispatch_async(presenceConnectionQueue, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusServer _presenceServiceListener:v5 shouldAcceptNewConnection:?];
    }
  }

  return v6;
}

void __70__SKAStatusServer__presenceServiceListener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) processIdentifier];
    v5 = [SKAPresenceClientConnection clientIDForConnection:*(a1 + 32)];
    *buf = 134218242;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Accepting XPC connection from PID %ld for presence service with client ID: %@", buf, 0x16u);
  }

  v6 = [SKAPresenceClientProxy alloc];
  v7 = *(a1 + 32);
  v8 = [WeakRetained presenceConnectionQueue];
  v9 = *(a1 + 40);
  v10 = [WeakRetained subscriptionManager];
  v11 = [WeakRetained presenceManager];
  v12 = [WeakRetained invitationManager];
  v13 = [WeakRetained databaseManager];
  v14 = [(SKAPresenceClientProxy *)v6 initWithXPCConnection:v7 queue:v8 delegate:v9 subscriptionManager:v10 presenceManager:v11 invitationManager:v12 databaseManager:v13];

  v15 = [WeakRetained onQueue_presenceConnectedClientProxies];
  [v15 addObject:v14];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_subscriptionServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [SKAStatusSubscriptionServiceClientConnection clientIsEntitledForAtLeastOneSubscriptionServiceType:v5];
  v7 = +[SKAStatusServer logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = [v5 processIdentifier];
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Accepted XPC connection from PID %ld for subscription service", buf, 0xCu);
    }

    v9 = [SKAStatusSubscriptionServiceClientProxy alloc];
    LOBYTE(v12) = self->_trafficModeEnabled;
    v8 = [(SKAStatusSubscriptionServiceClientProxy *)v9 initWithXPCConnection:v5 queue:self->_subscriptionServiceConnectionQueue delegate:self databaseManager:self->_databaseManager subscriptionManager:self->_subscriptionManager encryptionManager:self->_encryptionManager inTrafficMode:v12];
    [(NSMutableArray *)self->_subscriptionServiceConnectedClientProxies addObject:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusServer _subscriptionServiceListener:v5 shouldAcceptNewConnection:?];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)subscriptionServiceClientWasInvalidated:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  subscriptionServiceConnectionQueue = self->_subscriptionServiceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SKAStatusServer_subscriptionServiceClientWasInvalidated___block_invoke;
  block[3] = &unk_27843E820;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(subscriptionServiceConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__SKAStatusServer_subscriptionServiceClientWasInvalidated___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Subscription service client was invalidated. Removing client: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [WeakRetained subscriptionServiceConnectedClientProxies];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v8 = v5;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 underlyingClient];
      v13 = *(a1 + 32);

      if (v12 == v13)
      {
        v14 = v11;

        v8 = v14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);

  if (v8)
  {
    v15 = [WeakRetained subscriptionServiceConnectedClientProxies];
    [v15 removeObject:v8];

LABEL_15:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)publishingServiceClientWasInvalidated:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  publishingServiceConnectionQueue = self->_publishingServiceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SKAStatusServer_publishingServiceClientWasInvalidated___block_invoke;
  block[3] = &unk_27843E820;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(publishingServiceConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__SKAStatusServer_publishingServiceClientWasInvalidated___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Publishing service client was invalidated. Removing client: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [WeakRetained publishingServiceConnectedClientProxies];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v8 = v5;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 underlyingClient];
      v13 = *(a1 + 32);

      if (v12 == v13)
      {
        v14 = v11;

        v8 = v14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);

  if (v8)
  {
    v15 = [WeakRetained publishingServiceConnectedClientProxies];
    [v15 removeObject:v8];

LABEL_15:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)presenceClientWasInvalidated:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  presenceConnectionQueue = self->_presenceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SKAStatusServer_presenceClientWasInvalidated___block_invoke;
  block[3] = &unk_27843E820;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(presenceConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__SKAStatusServer_presenceClientWasInvalidated___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Presence client was invalidated. Removing client: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [WeakRetained onQueue_presenceConnectedClientProxies];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v8 = v5;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 underlyingClient];
      v13 = *(a1 + 32);

      if (v12 == v13)
      {
        v14 = v11;

        v8 = v14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);

  if (v8)
  {
    v15 = [WeakRetained onQueue_presenceConnectedClientProxies];
    [v15 removeObject:v8];

LABEL_15:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)drainUpdatesForPresenceIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Draining update queues for client with presenceIdentifier %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  presenceConnectionQueue = self->_presenceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SKAStatusServer_drainUpdatesForPresenceIdentifier___block_invoke;
  block[3] = &unk_27843F768;
  objc_copyWeak(&v12, buf);
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(presenceConnectionQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__SKAStatusServer_drainUpdatesForPresenceIdentifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained onQueue_pendingCompletionsByPresenceIdentifier];
  v3 = [v2 objectForKey:*(a1 + 32)];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = +[SKAStatusServer logger];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Processing an update for %@ now that StatusKitAgent is back online", buf, 0xCu);
        }

        v12 = [*(a1 + 40) _onQueue_clientForPresenceIdentifier:*(a1 + 32)];
        (*(v9 + 16))(v9, v12);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = [WeakRetained onQueue_pendingCompletionsByPresenceIdentifier];
  [v13 removeObjectForKey:*(a1 + 32)];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumeratePresenceClientsWithIdentifier:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to connect to existing clients for presenceIdentifier: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  presenceConnectionQueue = self->_presenceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SKAStatusServer_enumeratePresenceClientsWithIdentifier_usingBlock___block_invoke;
  block[3] = &unk_27843E7A8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(presenceConnectionQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __69__SKAStatusServer_enumeratePresenceClientsWithIdentifier_usingBlock___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained onQueue_presenceConnectedClientProxies];
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Current connected clients: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [WeakRetained onQueue_presenceConnectedClientProxies];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v6)
  {

LABEL_17:
    v18 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "No existing in memory client for presenceIdentifier: %@", buf, 0xCu);
    }

    v20 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v20 postNotificationName:*(a1 + 32) object:*(a1 + 32)];

    v21 = [WeakRetained onQueue_pendingCompletionsByPresenceIdentifier];
    v22 = [v21 objectForKey:*(a1 + 32)];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v23 = _Block_copy(*(a1 + 40));
    [v22 addObject:v23];

    v24 = [WeakRetained onQueue_pendingCompletionsByPresenceIdentifier];
    [v24 setObject:v22 forKey:*(a1 + 32)];

    goto LABEL_22;
  }

  v7 = v6;
  v26 = WeakRetained;
  v8 = 0;
  v9 = *v28;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      v12 = [v11 underlyingClient];
      v13 = [v12 presenceIdentifier];
      v14 = [v13 isEqualToString:*(a1 + 32)];

      if (v14)
      {
        v15 = +[SKAStatusServer logger];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 underlyingClient];
          v17 = *(a1 + 32);
          *buf = 138412546;
          v32 = v16;
          v33 = 2112;
          v34 = v17;
          _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Client: %@ for presenceIdentifier: %@ is already connected, directly calling block", buf, 0x16u);
        }

        (*(*(a1 + 40) + 16))();
        v8 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  }

  while (v7);

  WeakRetained = v26;
  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)databaseDidReceiveRemoteChangesForChannels:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received remote database changes for channels: %@", buf, 0xCu);
  }

  [(SKAStatusSubscriptionManaging *)self->_subscriptionManager updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:&__block_literal_global_59];
  objc_initWeak(buf, self);
  subscriptionServiceConnectionQueue = self->_subscriptionServiceConnectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke_60;
  v9[3] = &unk_27843E820;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(subscriptionServiceConnectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusServer logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success updating subscriptions following remote database changes", v5, 2u);
  }
}

void __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke_60(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained databaseManager];
  v3 = [v2 newBackgroundContext];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v2 existingChannelForSubscriptionIdentifier:v10 databaseContext:v3];
        if (v11)
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = +[SKAStatusServer logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v10;
            _os_log_error_impl(&dword_220099000, v12, OS_LOG_TYPE_ERROR, "Could not find channel matching changed channelIdentifier: %@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = WeakRetained;
    v14 = [WeakRetained subscriptionServiceConnectedClientProxies];
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * j) underlyingClient];
          [v19 handleRemoteDatabaseChangeForChannels:v4];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v14 = +[SKAStatusServer logger];
    v13 = WeakRetained;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke_60_cold_1();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initialCloudKitImportReceived:(id)a3
{
  objc_initWeak(&location, self);
  presenceConnectionQueue = self->_presenceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKAStatusServer_initialCloudKitImportReceived___block_invoke;
  block[3] = &unk_27843E820;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(presenceConnectionQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__SKAStatusServer_initialCloudKitImportReceived___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [WeakRetained onQueue_presenceConnectedClientProxies];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v25 + 1) + 8 * v7) underlyingClient];
        [v8 initialCloudKitImportReceived];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) databaseManager];
  v10 = [*(a1 + 32) databaseManager];
  v11 = [v10 newBackgroundContext];
  v12 = [v9 allExistingPresenceSubscriptionsForDatabaseContext:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(a1 + 32);
        v19 = [*(*(&v21 + 1) + 8 * v17) presenceIdentifier];
        [v18 enumeratePresenceClientsWithIdentifier:v19 usingBlock:&__block_literal_global_63];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __49__SKAStatusServer_initialCloudKitImportReceived___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 underlyingClient];
  [v2 initialCloudKitImportReceived];
}

- (void)databaseAccountStatusChanged
{
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Recalculating activity tracking after account status changed", v4, 2u);
  }

  [(SKAPresenceManaging *)self->_presenceManager recalculateActivityTracking];
}

- (void)service:(id)a3 didReceiveIncomingMessage:(id)a4 fromID:(id)a5 fromMergeID:(id)a6 toID:(id)a7 messageGuid:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412802;
    v28 = v14;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Incoming message received. Service: %@ senderID: %@ guid: %@", &v27, 0x20u);
  }

  v21 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Handling message as key invite", &v27, 2u);
  }

  v22 = IDSCopyRawAddressForDestination();
  v23 = IDSCopyRawAddressForDestination();

  v24 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v22];
  v25 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v23];
  [(SKAInvitationManaging *)self->_invitationManager handleIncomingInvitationMessage:v15 fromHandle:v24 fromID:v16 fromMergeID:v19 toHandle:v25 messageGuid:v17];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)networkBecameReachable
{
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Received network reachable notification", v4, 2u);
  }

  [(SKAStatusPublishingManaging *)self->_publishingManager publishPendingRequestForReason:0];
}

- (void)channelManager:(id)a3 didReceiveData:(id)a4 onChannel:(id)a5 identifier:(unint64_t)a6 dateReceived:(id)a7 dateExpired:(id)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v14;
    v34 = 2048;
    v35 = a6;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Received data on channel: %@ identifier: %lu", buf, 0x16u);
  }

  v18 = [(SKAStatusServer *)self databaseManager];
  v19 = [v18 newBackgroundContext];

  v20 = [(SKAStatusServer *)self databaseManager];
  v21 = [v20 existingChannelForSubscriptionIdentifier:v14 databaseContext:v19];

  if (v21)
  {
    if ([v21 channelType])
    {
      v31 = v16;
      v22 = v15;
      v23 = [v21 channelType];
      v24 = +[SKAStatusServer logger];
      v25 = v24;
      if (v23 == 1)
      {
        v15 = v22;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Handling as presence update", buf, 2u);
        }

        [(SKAPresenceManaging *)self->_presenceManager channelReceivedIncomingPayloadUpdate:v13 channel:v21 withIdentifier:a6];
      }

      else
      {
        v15 = v22;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [SKAStatusServer channelManager:didReceiveData:onChannel:identifier:dateReceived:dateExpired:];
        }
      }

      v16 = v31;
    }

    else
    {
      v27 = +[SKAStatusServer logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Handling as status update", buf, 2u);
      }

      if (self->_trafficModeEnabled)
      {
        v28 = +[SKAStatusServer logger];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [SKAStatusServer channelManager:didReceiveData:onChannel:identifier:dateReceived:dateExpired:];
        }
      }

      else
      {
        statusReceivingManager = self->_statusReceivingManager;
        v28 = [(SKAChannelManaging *)self->_channelManager serverTime];
        [(SKAStatusReceivingManaging *)statusReceivingManager handleIncomingStatusData:v13 onChannelIdentifier:v14 dateReceived:v15 dateExpired:v16 serverTime:v28];
      }
    }

    v26 = +[SKAPowerLogger shared];
    [v26 logEvent:6 ofType:1 onDatabaseChannel:v21];
  }

  else
  {
    v26 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusServer channelManager:didReceiveData:onChannel:identifier:dateReceived:dateExpired:];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)channelManager:(id)a3 failedToSubscribeToChannel:(id)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusServer channelManager:failedToSubscribeToChannel:withError:];
  }
}

- (void)statusReceivingManager:(id)a3 didReceiveStatusUpdate:(id)a4 onChannel:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Server received status update: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  subscriptionServiceConnectionQueue = self->_subscriptionServiceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SKAStatusServer_statusReceivingManager_didReceiveStatusUpdate_onChannel___block_invoke;
  block[3] = &unk_27843F768;
  objc_copyWeak(&v19, buf);
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  dispatch_async(subscriptionServiceConnectionQueue, block);
  [(SKAStatusServer *)self donateReceivedStatusToBiomeOnChannel:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __75__SKAStatusServer_statusReceivingManager_didReceiveStatusUpdate_onChannel___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [WeakRetained subscriptionServiceConnectedClientProxies];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) underlyingClient];
        [v8 handleReceivedStatusUpdate:*(a1 + 32) onChannel:*(a1 + 40)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)donateReceivedStatusToBiomeOnChannel:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 statusType];
  if ([(SKAStatusServer *)self _shouldDonateToBiomeForStatusTypeIdentifier:v5])
  {
    v6 = [(SKAStatusServer *)self _senderHandlesForChannel:v4];
    v7 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 allObjects];
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Writing to Biome event with IDSHandle: %@, statusTypeIdentifier %@", &v17, 0x16u);
    }

    v9 = BiomeLibrary();
    v10 = [v9 UserFocus];
    v11 = [v10 StatusChange];

    v12 = objc_alloc(MEMORY[0x277CF1700]);
    v13 = [v6 allObjects];
    v14 = [v12 initWithIdsHandle:0 statusChangeType:v5 idsHandles:v13];

    v15 = [v11 source];
    [v15 sendEvent:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_senderHandlesForChannel:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v6 = [(SKADatabaseManaging *)self->_databaseManager receivedInvitationsForChannel:v4 databaseContext:v5];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 senderHandle];

        if (v14)
        {
          v15 = [v13 senderHandle];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_shouldDonateToBiomeForStatusTypeIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 objectForKey:@"BiomeDonationEnabled"];
    v6 = v5;
    if (v5 && ![v5 BOOLValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = [&unk_2833EBAE0 containsObject:v3];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)databaseManager:(id)a3 didCreateChannel:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 identifier];
  v7 = [v5 statusType];
  v8 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Channel created with identifier: %@ type: %@", &v12, 0x16u);
  }

  if ([v5 isPersonal])
  {
    v9 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Updating registered subscription to allow self subscription to personal channel, if necessary", &v12, 2u);
    }

    v10 = [(SKAStatusServer *)self subscriptionManager];
    [v10 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:&__block_literal_global_76_0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__SKAStatusServer_databaseManager_didCreateChannel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAStatusServer logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__SKAStatusServer_databaseManager_didCreateChannel___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Updating registered subscription to allow self subscriptions completed", v5, 2u);
  }
}

- (void)presenceManager:(id)a3 didReceivePresentDevicesUpdate:(id)a4 forPresenceIdentifier:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Server received present devices update on presence identifier: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  presenceConnectionQueue = self->_presenceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SKAStatusServer_presenceManager_didReceivePresentDevicesUpdate_forPresenceIdentifier___block_invoke;
  block[3] = &unk_27843F768;
  objc_copyWeak(&v17, buf);
  v15 = v8;
  v16 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(presenceConnectionQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __88__SKAStatusServer_presenceManager_didReceivePresentDevicesUpdate_forPresenceIdentifier___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__SKAStatusServer_presenceManager_didReceivePresentDevicesUpdate_forPresenceIdentifier___block_invoke_2;
  v4[3] = &unk_27843F7B0;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[4];
  [WeakRetained enumeratePresenceClientsWithIdentifier:v3 usingBlock:v4];
}

void __88__SKAStatusServer_presenceManager_didReceivePresentDevicesUpdate_forPresenceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 underlyingClient];
  [v3 handleReceivedPresentDevicesUpdate:*(a1 + 32) forPresenceIdentifier:*(a1 + 40)];
}

- (void)presenceManager:(id)a3 didCreateChannel:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "New presence channel created. Sending self invite for channel: %@", &v10, 0xCu);
  }

  v7 = [(SKAStatusServer *)self invitationManager];
  v8 = [v5 presenceIdentifier];
  [v7 sendSelfInvitationForPresenceChannelWithPresenceIdentifier:v8 isPersonal:objc_msgSend(v5 completion:{"isPersonal"), &__block_literal_global_79}];

  v9 = *MEMORY[0x277D85DE8];
}

void __52__SKAStatusServer_presenceManager_didCreateChannel___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Sent self-invite with success:%d and error:%@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)presenceManager:(id)a3 didRequestToRollChannel:(id)a4
{
  v5 = a4;
  v6 = [(SKAStatusServer *)self invitationManager];
  v7 = [v5 presenceIdentifier];
  v8 = [v5 isPersonal];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SKAStatusServer_presenceManager_didRequestToRollChannel___block_invoke;
  v10[3] = &unk_27843F7F8;
  v11 = v5;
  v9 = v5;
  [v6 rollPresenceChannelWithPresenceIdentifier:v7 isPersonal:v8 completion:v10];
}

void __59__SKAStatusServer_presenceManager_didRequestToRollChannel___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Finished rolling to channel %@ with success %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invitationManager:(id)a3 didRollChannelFromExistingChannel:(id)a4
{
  v5 = a4;
  v7 = [v5 presenceIdentifier];
  v6 = [v5 identifier];

  [(SKAStatusServer *)self refreshAssertionsForPresenceIdentifier:v7 existingChannelIdentifier:v6];
}

- (void)invitationManager:(id)a3 didReceiveInvitationWithType:(int64_t)a4 forChannel:(id)a5 withExistingChannel:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Received channel invitation on channel: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  if (a4)
  {
    v14 = [v12 identifier];
    v15 = [v11 identifier];
    v16 = [v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [v11 presenceIdentifier];
      v18 = [v12 identifier];
      [(SKAStatusServer *)self refreshAssertionsForPresenceIdentifier:v17 existingChannelIdentifier:v18];
    }

    v19 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Handling invitation as presence invite, connecting to client", v29, 2u);
    }

    v20 = [v11 presenceIdentifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97__SKAStatusServer_invitationManager_didReceiveInvitationWithType_forChannel_withExistingChannel___block_invoke_81;
    v24[3] = &unk_27843F820;
    v25 = v11;
    [(SKAStatusServer *)self enumeratePresenceClientsWithIdentifier:v20 usingBlock:v24];
  }

  else
  {
    v21 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Handling invitation as status invite", v29, 2u);
    }

    subscriptionServiceConnectionQueue = self->_subscriptionServiceConnectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__SKAStatusServer_invitationManager_didReceiveInvitationWithType_forChannel_withExistingChannel___block_invoke;
    block[3] = &unk_27843E820;
    objc_copyWeak(&v28, buf);
    v27 = v11;
    dispatch_async(subscriptionServiceConnectionQueue, block);

    objc_destroyWeak(&v28);
  }

  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __97__SKAStatusServer_invitationManager_didReceiveInvitationWithType_forChannel_withExistingChannel___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [WeakRetained subscriptionServiceConnectedClientProxies];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) underlyingClient];
        [v8 handleReceivedInvitationForChannel:*(a1 + 32)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __97__SKAStatusServer_invitationManager_didReceiveInvitationWithType_forChannel_withExistingChannel___block_invoke_81(uint64_t a1, void *a2)
{
  v4 = [a2 underlyingClient];
  v3 = [*(a1 + 32) presenceIdentifier];
  [v4 handleReceivedInvitationForPresenceIdentifier:v3];
}

- (void)invitationManager:(id)a3 didRevokeInvitationOnChannel:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Revoked invitation(s) on channel: %@. Republishing current status", buf, 0xCu);
  }

  v7 = [v5 statusType];
  v8 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v9 = [(SKADatabaseManaging *)self->_databaseManager existingStatusForChannel:v5 databaseContext:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 rawData];
    v12 = [(SKAStatusEncryptionManaging *)self->_encryptionManager decryptStatusPayloadFromStatusEnvelopeData:v11 channel:v5];
    v13 = v12;
    if (v12)
    {
      v22 = [v12 statusPayload];
      v14 = [objc_alloc(MEMORY[0x277D68138]) initWithStatusPayload:v22 isScheduledRequest:0];
      v15 = [v10 dateCreated];
      [v15 dateByAddingTimeInterval:1.0];
      v16 = v8;
      v18 = v17 = v7;
      [v14 setDateCreated:v18];

      v7 = v17;
      v8 = v16;

      publishingManager = self->_publishingManager;
      v20 = v22;
      [(SKAStatusPublishingManaging *)publishingManager publishStatusRequest:v14 statusTypeIdentifier:v7 afterTime:0 isPendingPublish:&__block_literal_global_85 completion:0.0];
    }

    else
    {
      v20 = +[SKAStatusServer logger];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusServer invitationManager:didRevokeInvitationOnChannel:];
      }
    }
  }

  else
  {
    v11 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "No current status to republish", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __66__SKAStatusServer_invitationManager_didRevokeInvitationOnChannel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Finished republishing status.  ID:%@ error:%@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_inTextTrafficMode
{
  v2 = [MEMORY[0x223D774C0](@"LockdownModeManager" @"LockdownMode")];
  v3 = [v2 enabled];

  return v3;
}

- (void)_setupMaintenanceActivity
{
  objc_initWeak(&location, self);
  v2 = *MEMORY[0x277D86238];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SKAStatusServer__setupMaintenanceActivity__block_invoke;
  v3[3] = &unk_27843F868;
  objc_copyWeak(&v4, &location);
  xpc_activity_register("com.apple.statuskit.maintenance", v2, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __44__SKAStatusServer__setupMaintenanceActivity__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v10 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Running maintenance activity", &v19, 2u);
    }

    v11 = [WeakRetained subscriptionManager];
    [v11 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:&__block_literal_global_95];

    v12 = [WeakRetained databaseManager];
    v6 = [v12 newBackgroundContext];

    v13 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Removing decommissioned channels", &v19, 2u);
    }

    v14 = [WeakRetained databaseManager];
    [v14 cleanupDecommissionedChannelsWithDatabaseContext:v6];

    v15 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Removing present devices with no active channel", &v19, 2u);
    }

    v16 = [WeakRetained databaseManager];
    [v16 cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext:v6];

    v17 = [WeakRetained databaseManager];
    [v17 clearPersistentHistoryIfNeeded];

    if (!os_variant_has_internal_content())
    {
      goto LABEL_18;
    }

    v8 = [WeakRetained databaseManager];
    [v8 logMostDuplicatedChannelFromDatabaseContext:v6];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  if (!state)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86230], 0);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86398], 1);
    v7 = xpc_activity_copy_criteria(v3);
    v8 = v7;
    if (!v7 || !xpc_equal(v7, v6))
    {
      xpc_activity_set_criteria(v3, v6);
    }

    v9 = +[SKAStatusServer logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Scheduling maintenance XPC activity %@", &v19, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

void __44__SKAStatusServer__setupMaintenanceActivity__block_invoke_93(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = +[SKAStatusServer logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Finished maintenance subscription update with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_31_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_31_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_32_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_33_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_34_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_36_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_37_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_38_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_40_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_42_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKAStatusServer_refreshAssertionsForPresenceIdentifier_existingChannelIdentifier___block_invoke_43_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listener:(NSObject *)a3 shouldAcceptNewConnection:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 processIdentifier];
  v7 = [a1 sk_applicationIdentifier];
  v9 = 134218498;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2114;
  v14 = a2;
  _os_log_fault_impl(&dword_220099000, a3, OS_LOG_TYPE_FAULT, "Receiving XPC connection from PID %ld (%@) for unknown service name: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_publishingServiceListener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_presenceServiceListener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_subscriptionServiceListener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__SKAStatusServer_databaseDidReceiveRemoteChangesForChannels___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)channelManager:didReceiveData:onChannel:identifier:dateReceived:dateExpired:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)channelManager:didReceiveData:onChannel:identifier:dateReceived:dateExpired:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)channelManager:didReceiveData:onChannel:identifier:dateReceived:dateExpired:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)channelManager:failedToSubscribeToChannel:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__SKAStatusServer_databaseManager_didCreateChannel___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)invitationManager:didRevokeInvitationOnChannel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end