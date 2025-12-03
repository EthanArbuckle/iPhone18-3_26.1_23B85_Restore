@interface SLSyndicationController
+ (OS_dispatch_queue)syndicationProcessingQueue;
+ (id)sharedController;
- (NSMutableSet)pendingmessageGUIDsToRemove;
- (SLDServiceProxy)syndicationServiceProxy;
- (void)_disconnectSyndicationServiceConnectionIfNecessary;
- (void)_sendCurrentRemovalsToDaemonAndDisconnect;
- (void)removeMessageGUIDFromSyndication:(id)syndication;
- (void)serviceProxyDidConnect:(id)connect;
- (void)serviceProxyDidDisconnect:(id)disconnect;
@end

@implementation SLSyndicationController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SLSyndicationController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __43__SLSyndicationController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SLSyndicationController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)removeMessageGUIDFromSyndication:(id)syndication
{
  syndicationCopy = syndication;
  if ([syndicationCopy length])
  {
    v5 = +[SLSyndicationController syndicationProcessingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SLSyndicationController_removeMessageGUIDFromSyndication___block_invoke;
    v6[3] = &unk_278925CF0;
    v6[4] = self;
    v7 = syndicationCopy;
    dispatch_async(v5, v6);
  }
}

void __60__SLSyndicationController_removeMessageGUIDFromSyndication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingmessageGUIDsToRemove];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) syndicationServiceProxy];
  v4 = [v3 connectionActive];

  v5 = *(a1 + 32);
  if (v4)
  {

    [v5 _sendCurrentRemovalsToDaemonAndDisconnect];
  }

  else
  {
    v6 = [v5 syndicationServiceProxy];
    [v6 connect];
  }
}

- (void)_sendCurrentRemovalsToDaemonAndDisconnect
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SLSyndicationController _sendCurrentRemovalsToDaemonAndDisconnect]";
  _os_log_debug_impl(&dword_231772000, log, OS_LOG_TYPE_DEBUG, "%s: Not currently connected to syndication service. We'll wait for the connection to finish posting pending removals.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __68__SLSyndicationController__sendCurrentRemovalsToDaemonAndDisconnect__block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = SWFrameworkLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_INFO, "Received success for removal for message with guid: '%@'", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __68__SLSyndicationController__sendCurrentRemovalsToDaemonAndDisconnect__block_invoke_cold_1(a1, v6);
  }

  [*(*(*(a1 + 40) + 8) + 40) removeObject:*(a1 + 32)];
  if (![*(*(*(a1 + 40) + 8) + 40) count])
  {
    [WeakRetained _disconnectSyndicationServiceConnectionIfNecessary];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectSyndicationServiceConnectionIfNecessary
{
  v3 = +[SLSyndicationController syndicationProcessingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SLSyndicationController__disconnectSyndicationServiceConnectionIfNecessary__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(v3, block);
}

void __77__SLSyndicationController__disconnectSyndicationServiceConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingmessageGUIDsToRemove];
  v3 = [v2 allObjects];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SLSyndicationController _disconnectSyndicationServiceConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "%s: No more message GUIDS to remove, disconnecting from syndication service proxy.", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) syndicationServiceProxy];
    [v6 disconnect];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)serviceProxyDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = +[SLSyndicationController syndicationProcessingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SLSyndicationController_serviceProxyDidConnect___block_invoke;
  v7[3] = &unk_278925CF0;
  v8 = connectCopy;
  selfCopy = self;
  v6 = connectCopy;
  dispatch_async(v5, v7);
}

void __50__SLSyndicationController_serviceProxyDidConnect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syndicationServiceProxy];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _sendCurrentRemovalsToDaemonAndDisconnect];
  }
}

- (void)serviceProxyDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = +[SLSyndicationController syndicationProcessingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SLSyndicationController_serviceProxyDidDisconnect___block_invoke;
  v7[3] = &unk_278925CF0;
  v8 = disconnectCopy;
  selfCopy = self;
  v6 = disconnectCopy;
  dispatch_async(v5, v7);
}

void __53__SLSyndicationController_serviceProxyDidDisconnect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syndicationServiceProxy];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) pendingmessageGUIDsToRemove];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [*(a1 + 40) syndicationServiceProxy];
      [v6 connect];
    }
  }
}

- (NSMutableSet)pendingmessageGUIDsToRemove
{
  pendingmessageGUIDsToRemove = self->_pendingmessageGUIDsToRemove;
  if (!pendingmessageGUIDsToRemove)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = self->_pendingmessageGUIDsToRemove;
    self->_pendingmessageGUIDsToRemove = v4;

    pendingmessageGUIDsToRemove = self->_pendingmessageGUIDsToRemove;
  }

  return pendingmessageGUIDsToRemove;
}

- (SLDServiceProxy)syndicationServiceProxy
{
  syndicationServiceProxy = self->_syndicationServiceProxy;
  if (!syndicationServiceProxy)
  {
    v4 = objc_opt_class();
    v5 = +[SLSyndicationController syndicationProcessingQueue];
    v6 = [SLDServiceProxy proxyForServiceClass:v4 targetSerialQueue:v5 delegate:self];
    v7 = self->_syndicationServiceProxy;
    self->_syndicationServiceProxy = v6;

    syndicationServiceProxy = self->_syndicationServiceProxy;
  }

  return syndicationServiceProxy;
}

+ (OS_dispatch_queue)syndicationProcessingQueue
{
  if (syndicationProcessingQueue_onceToken != -1)
  {
    +[SLSyndicationController syndicationProcessingQueue];
  }

  v3 = syndicationProcessingQueue_syndicationProcessingQueue;

  return v3;
}

void __53__SLSyndicationController_syndicationProcessingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SocialLayer.SLSyndicationProcessingQueue", v2);
  v1 = syndicationProcessingQueue_syndicationProcessingQueue;
  syndicationProcessingQueue_syndicationProcessingQueue = v0;
}

void __68__SLSyndicationController__sendCurrentRemovalsToDaemonAndDisconnect__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Unsuccessful sending remove for message with guid: '%@'", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end