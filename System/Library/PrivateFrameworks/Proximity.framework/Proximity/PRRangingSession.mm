@interface PRRangingSession
+ (unint64_t)computeLocalDeviceIndex:(id)index sessionParticipants:(id)participants;
- (PRRangingSession)init;
- (PRRangingSessionDelegate)delegate;
- (id)rangingConfigurationWithDeviceIndex:(unint64_t)index;
- (id)remoteObject;
- (void)connectToDaemon;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)invalidate;
- (void)invokeDelegateBlock:(id)block;
- (void)pushCollaborationData:(id)data;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)requestInitialCollaborationDataWithCompletionHandler:(id)handler;
- (void)sendDataToPeers:(id)peers;
- (void)startRangingWithPeer:(id)peer;
- (void)stopRangingWithPeer:(id)peer;
@end

@implementation PRRangingSession

- (PRRangingSession)init
{
  v16.receiver = self;
  v16.super_class = PRRangingSession;
  v2 = [(PRRangingSession *)&v16 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.nearbyd", "RangingSession");
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = objc_alloc_init(PRRangingDevice);
    rangingDevice = v2->_rangingDevice;
    v2->_rangingDevice = v5;

    v7 = [PRPeer alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = [(PRPeer *)v7 initWithUUID:uUID];
    localPeer = v2->_localPeer;
    v2->_localPeer = v9;

    v11 = objc_alloc(MEMORY[0x277CBEB58]);
    uuid = [(PRPeer *)v2->_localPeer uuid];
    v13 = [v11 initWithObjects:{uuid, 0}];
    sessionParticipants = v2->_sessionParticipants;
    v2->_sessionParticipants = v13;

    *&v2->_isReady = 256;
    [(PRRangingSession *)v2 connectToDaemon];
  }

  return v2;
}

- (void)startRangingWithPeer:(id)peer
{
  v16 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = peerCopy;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "startRangingWithPeer: %@", buf, 0xCu);
  }

  if (!self->_isReady)
  {
    v8 = *MEMORY[0x277CCA470];
    v12[0] = *MEMORY[0x277CCA450];
    v12[1] = v8;
    v13[0] = @"Failed to start ranging.";
    v13[1] = @"Service not ready.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    remoteObject = PRErrorWithCodeAndUserInfo(999, v9);

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rangingSession:self didFailWithError:remoteObject];

LABEL_9:
    goto LABEL_10;
  }

  if ([(NSMutableSet *)self->_sessionParticipants count]== 2)
  {
    v6 = self->_logger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = 2;
      _os_log_impl(&dword_230EB5000, v6, OS_LOG_TYPE_DEFAULT, "ARKitParticipantsCount = %ld. Resuming session.", buf, 0xCu);
    }

    [(PRRangingSession *)self setRangedPeer:peerCopy];
    remoteObject = [(PRRangingSession *)self remoteObject];
    [remoteObject resume];
    goto LABEL_9;
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopRangingWithPeer:(id)peer
{
  v9 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = peerCopy;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "stopRangingWithPeer: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushCollaborationData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sendingPeer = [dataCopy sendingPeer];
  uuid = [sendingPeer uuid];

  if (([(NSMutableSet *)self->_sessionParticipants containsObject:uuid]& 1) == 0)
  {
    [(NSMutableSet *)self->_sessionParticipants addObject:uuid];
    uuid2 = [(PRPeer *)self->_localPeer uuid];
    v8 = [PRRangingSession computeLocalDeviceIndex:uuid2 sessionParticipants:self->_sessionParticipants];

    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      localPeer = self->_localPeer;
      v11 = logger;
      uuid3 = [(PRPeer *)localPeer uuid];
      sessionParticipants = self->_sessionParticipants;
      *buf = 134218498;
      v23 = v8;
      v24 = 2112;
      v25 = uuid3;
      v26 = 2112;
      v27 = sessionParticipants;
      _os_log_impl(&dword_230EB5000, v11, OS_LOG_TYPE_DEFAULT, "Local device index is: %lu, local UUID: %@, participants: %@", buf, 0x20u);
    }

    v14 = [(PRRangingSession *)self rangingConfigurationWithDeviceIndex:v8];
    objc_initWeak(buf, self);
    remoteObject = [(PRRangingSession *)self remoteObject];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __42__PRRangingSession_pushCollaborationData___block_invoke;
    v20[3] = &unk_2788F3AE8;
    objc_copyWeak(&v21, buf);
    [remoteObject runWithConfiguration:v14 reply:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v16 = [[PRRemoteDevice alloc] initWithCompanionUUID:uuid];
  remoteObject2 = [(PRRangingSession *)self remoteObject];
  data = [dataCopy data];
  [remoteObject2 receivedData:data fromPeer:v16];

  v19 = *MEMORY[0x277D85DE8];
}

void __42__PRRangingSession_pushCollaborationData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = v8;
      v11 = [v9 numberWithBool:a2];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_230EB5000, v10, OS_LOG_TYPE_DEFAULT, "reply to runWithConfiguration. Success: %@, Error: %@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invokeDelegateBlock:(id)block
{
  blockCopy = block;
  if ([(PRRangingSession *)self isValid])
  {
    delegateQueue = self->_delegateQueue;
    if (delegateQueue)
    {
      dispatch_async(delegateQueue, blockCopy);
    }

    else
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "session has been invalidated, dropping delegate block", v7, 2u);
    }
  }
}

- (void)requestInitialCollaborationDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "requesting initial collaboration data", buf, 2u);
  }

  remoteObject = [(PRRangingSession *)self remoteObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__PRRangingSession_requestInitialCollaborationDataWithCompletionHandler___block_invoke;
  v8[3] = &unk_2788F3B10;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [remoteObject requestInitialCollaborationDataWithCompletionHandler:v8];
}

void __73__PRRangingSession_requestInitialCollaborationDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PRCollaborationData alloc];
  v5 = [*(a1 + 32) localPeer];
  v6 = [(PRCollaborationData *)v4 initWithData:v3 sendingPeer:v5];

  (*(*(a1 + 40) + 16))();
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Invalidating ranging session %p", &v6, 0xCu);
  }

  [(PRRangingSession *)self setValid:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.aided" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = self->_connection;
  v6 = PRMakeAidedRangingClientXPCInterface();
  [(NSXPCConnection *)v5 setExportedInterface:v6];

  v7 = self->_connection;
  v8 = [[PRRangingClientExportedObject alloc] initWithRangingClient:self];
  [(NSXPCConnection *)v7 setExportedObject:v8];

  v9 = self->_connection;
  v10 = PRMakeAidedRangingServerXPCInterface();
  [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

  objc_initWeak(&location, self);
  v11 = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__PRRangingSession_connectToDaemon__block_invoke;
  v17[3] = &unk_2788F3B38;
  objc_copyWeak(&v18, &location);
  [(NSXPCConnection *)v11 setInterruptionHandler:v17];
  v12 = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __35__PRRangingSession_connectToDaemon__block_invoke_2;
  v15[3] = &unk_2788F3B38;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)v12 setInvalidationHandler:v15];
  [(NSXPCConnection *)self->_connection resume];
  remoteObject = [(PRRangingSession *)self remoteObject];
  clientInfo = [(PRRangingDevice *)self->_rangingDevice clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __35__PRRangingSession_connectToDaemon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInterruption];
}

void __35__PRRangingSession_connectToDaemon__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInvalidation];
}

- (void)handleInterruption
{
  v12 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = logger;
    v6 = [(NSXPCConnection *)connection debugDescription];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_230EB5000, v5, OS_LOG_TYPE_DEFAULT, "connection was interrupted: %@", &v10, 0xCu);
  }

  remoteObject = [(PRRangingSession *)self remoteObject];
  clientInfo = [(PRRangingDevice *)self->_rangingDevice clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleInvalidation
{
  v10 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = logger;
    v6 = [(NSXPCConnection *)connection debugDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_230EB5000, v5, OS_LOG_TYPE_DEFAULT, "connection was invalidated: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)remoteObject
{
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__PRRangingSession_remoteObject__block_invoke;
  v5[3] = &unk_2788F3B60;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __32__PRRangingSession_remoteObject__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_230EB5000, v4, OS_LOG_TYPE_DEFAULT, "Error getting remote object proxy %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToPeers:(id)peers
{
  peersCopy = peers;
  v5 = [PRCollaborationData alloc];
  localPeer = [(PRRangingSession *)self localPeer];
  v7 = [(PRCollaborationData *)v5 initWithData:peersCopy sendingPeer:localPeer];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__PRRangingSession_sendDataToPeers___block_invoke;
  v9[3] = &unk_2788F3B88;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(PRRangingSession *)self invokeDelegateBlock:v9];
}

void __36__PRRangingSession_sendDataToPeers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 rangingSession:*(a1 + 32) didOutputCollaborationData:*(a1 + 40)];
}

- (void)didFailWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "ranging session failed with error %@", &v8, 0xCu);
  }

  delegate = [(PRRangingSession *)self delegate];
  [delegate rangingSession:self didFailWithError:errorCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause
{
  v12 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    stateCopy = state;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "ranging service updated state %ld", &v10, 0xCu);
  }

  if (state == 3)
  {
    v7 = PRErrorWithCodeAndUserInfo(999, 0);
    delegate = [(PRRangingSession *)self delegate];
    [delegate rangingSession:self didFailWithError:v7];

    self->_isReady = 0;
  }

  else
  {
    self->_isReady = state == 2;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveNewSolutions:(id)solutions
{
  v20 = *MEMORY[0x277D85DE8];
  solutionsCopy = solutions;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "received new solutions", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = solutionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __43__PRRangingSession_didReceiveNewSolutions___block_invoke;
        v13[3] = &unk_2788F3B88;
        v13[4] = v11;
        v13[5] = self;
        [(PRRangingSession *)self invokeDelegateBlock:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__PRRangingSession_didReceiveNewSolutions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) range_m];
  v3 = v2;
  [*(a1 + 32) range_unc_m];
  v9 = [PRRangeMeasurement measurementWithRange:v3 uncertainty:v4];
  [*(a1 + 32) mach_absolute_time_sec];
  v5 = [PRRelativePosition relativePositionWithTimestamp:v9 range:0 azimuth:0 elevation:?];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v7 = *(a1 + 40);
  v8 = [v7 rangedPeer];
  [WeakRetained rangingSession:v7 didMeasurePeer:v8 atRelativePosition:v5];
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)status
{
  v8 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    statusCopy = status;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "ranging request updated status: %ld", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)computeLocalDeviceIndex:(id)index sessionParticipants:(id)participants
{
  v17[1] = *MEMORY[0x277D85DE8];
  indexCopy = index;
  participantsCopy = participants;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"UUIDString" ascending:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [participantsCopy sortedArrayUsingDescriptors:v10];
  v12 = 0;
  while ([v11 count] > v12)
  {
    v13 = [v11 objectAtIndex:v12];
    v14 = [v13 isEqual:indexCopy];

    ++v12;
    if (v14)
    {
      v12 = v12;
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)rangingConfigurationWithDeviceIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"MultiSessionDevIndex";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PRRangingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end