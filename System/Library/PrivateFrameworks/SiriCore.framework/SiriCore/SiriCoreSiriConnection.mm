@interface SiriCoreSiriConnection
- (SiriCoreSiriConnection)initWithQueue:(id)queue;
- (SiriCoreSiriConnectionDelegate)delegate;
- (id)_activeOrAnyPendingConnection;
- (id)_connectionInfoForRoute:(id)route policy:(id)policy;
- (id)analysisInfo;
- (void)_accessPotentiallyActiveConnections:(id)connections;
- (void)_cancelSynchronously:(id)synchronously;
- (void)_handleLastEventFromBackgroundConnection:(id)connection pendingConnectionExhaustionHandler:(id)handler;
- (void)_recordConnectionMethodForMetrics:(id)metrics;
- (void)_scheduleBackgroundConnectionWithRoute:(id)route delay:(double)delay policy:(id)policy;
- (void)_startBackgroundConnectionWithRoute:(id)route policy:(id)policy;
- (void)_waitForActiveConnection:(id)connection;
- (void)barrier:(id)barrier;
- (void)cancelSynchronously:(BOOL)synchronously onQueue:(BOOL)queue completion:(id)completion;
- (void)dealloc;
- (void)getAnalysisInfo:(id)info;
- (void)getConnectionMetricsSynchronously:(BOOL)synchronously completion:(id)completion;
- (void)probeConnection;
- (void)sendCommand:(id)command errorHandler:(id)handler;
- (void)sendCommands:(id)commands errorHandler:(id)handler;
- (void)setSendPings:(BOOL)pings;
- (void)siriBackgroundConnection:(id)connection didEncounterError:(id)error analysisInfo:(id)info;
- (void)siriBackgroundConnection:(id)connection didEncounterIntermediateError:(id)error;
- (void)siriBackgroundConnection:(id)connection didOpenWithConnectionType:(id)type routeId:(id)id delay:(double)delay;
- (void)siriBackgroundConnection:(id)connection didReceiveAceObject:(id)object;
- (void)siriBackgroundConnection:(id)connection willStartConnectionWithHTTPHeader:(id)header;
- (void)siriBackgroundConnection:(id)connection willStartWithConnectionType:(id)type;
- (void)siriBackgroundConnectionDidClose:(id)close;
- (void)start;
@end

@implementation SiriCoreSiriConnection

- (SiriCoreSiriConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_recordConnectionMethodForMetrics:(id)metrics
{
  v15 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  connMethodUsedHistory = self->_connMethodUsedHistory;
  if (!connMethodUsedHistory)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_connMethodUsedHistory;
    self->_connMethodUsedHistory = v6;

    connMethodUsedHistory = self->_connMethodUsedHistory;
  }

  [(NSMutableArray *)connMethodUsedHistory addObject:metricsCopy];
  v8 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v9 = self->_connMethodUsedHistory;
    v11 = 136315394;
    v12 = "[SiriCoreSiriConnection _recordConnectionMethodForMetrics:]";
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)siriBackgroundConnection:(id)connection willStartConnectionWithHTTPHeader:(id)header
{
  headerCopy = header;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__SiriCoreSiriConnection_siriBackgroundConnection_willStartConnectionWithHTTPHeader___block_invoke;
  v8[3] = &unk_279BD6540;
  v8[4] = self;
  v9 = headerCopy;
  v7 = headerCopy;
  dispatch_async(queue, v8);
}

void __85__SiriCoreSiriConnection_siriBackgroundConnection_willStartConnectionWithHTTPHeader___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 siriConnection:*(a1 + 32) willStartConnectionWithHTTPHeaderFields:*(a1 + 40)];
  }
}

- (void)siriBackgroundConnection:(id)connection didEncounterIntermediateError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SiriCoreSiriConnection_siriBackgroundConnection_didEncounterIntermediateError___block_invoke;
  block[3] = &unk_279BD5E20;
  v12 = errorCopy;
  selfCopy = self;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
}

void __81__SiriCoreSiriConnection_siriBackgroundConnection_didEncounterIntermediateError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"SiriCoreSiriConnectionErrorDomain"])
  {
    v3 = [*(a1 + 32) code] == 33;
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 32) domain];
  if ([v4 isEqualToString:@"SiriCoreSiriConnectionErrorDomain"])
  {
    v5 = [*(a1 + 32) code] == 35;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) domain];
  if ([v6 isEqualToString:@"SiriCoreSiriConnectionErrorDomain"])
  {
    v7 = [*(a1 + 32) code] == 36;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v3 || *(v8 + 136) == *(a1 + 48) || v5 || v7)
  {
    WeakRetained = objc_loadWeakRetained((v8 + 24));
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v17 = 136315394;
        v18 = "[SiriCoreSiriConnection siriBackgroundConnection:didEncounterIntermediateError:]_block_invoke";
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s Connection got intermediate error from active connection: %@", &v17, 0x16u);
      }

      v13 = objc_loadWeakRetained((*(a1 + 40) + 24));
      [v13 siriConnection:*(a1 + 40) didEncounterIntermediateError:*(a1 + 32)];
    }
  }

  else
  {
    v14 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v17 = 136315394;
      v18 = "[SiriCoreSiriConnection siriBackgroundConnection:didEncounterIntermediateError:]_block_invoke";
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_INFO, "%s Connection got intermediate error from inactive connection. Error: %@", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)siriBackgroundConnection:(id)connection didEncounterError:(id)error analysisInfo:(id)info
{
  connectionCopy = connection;
  errorCopy = error;
  infoCopy = info;
  getConnectionMethodUsed = [connectionCopy getConnectionMethodUsed];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SiriCoreSiriConnection_siriBackgroundConnection_didEncounterError_analysisInfo___block_invoke;
  block[3] = &unk_279BD5F78;
  block[4] = self;
  v18 = connectionCopy;
  v19 = errorCopy;
  v20 = infoCopy;
  v21 = getConnectionMethodUsed;
  v13 = getConnectionMethodUsed;
  v14 = infoCopy;
  v15 = errorCopy;
  v16 = connectionCopy;
  dispatch_async(queue, block);
}

void __82__SiriCoreSiriConnection_siriBackgroundConnection_didEncounterError_analysisInfo___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[17];
  v5 = *MEMORY[0x277CEF0A8];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO);
  if (v4 == v3)
  {
    if (v6)
    {
      *buf = 136315394;
      v22 = "[SiriCoreSiriConnection siriBackgroundConnection:didEncounterError:analysisInfo:]_block_invoke";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Got error from active connection: %@", buf, 0x16u);
    }

    v14 = [*(a1 + 48) domain];
    if ([v14 isEqualToString:@"SiriCoreSiriConnectionErrorDomain"])
    {
      v15 = [*(a1 + 48) code];

      if (v15 == 32)
      {
        [*(a1 + 40) updateActiveBackgroundConnectionWithSecondary];
      }
    }

    else
    {
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained siriConnection:*(a1 + 32) didEncounterError:*(a1 + 48) analysisInfo:*(a1 + 56)];
  }

  else
  {
    if (v6)
    {
      *buf = 136315394;
      v22 = "[SiriCoreSiriConnection siriBackgroundConnection:didEncounterError:analysisInfo:]_block_invoke";
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Got error from inactive connection: %@", buf, 0x16u);
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__SiriCoreSiriConnection_siriBackgroundConnection_didEncounterError_analysisInfo___block_invoke_20;
    v18[3] = &unk_279BD5F50;
    v7 = v3;
    *&v8 = v7;
    *(&v8 + 1) = *(a1 + 32);
    v17 = v8;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v19 = v17;
    v20 = v11;
    [v2 _handleLastEventFromBackgroundConnection:v7 pendingConnectionExhaustionHandler:v18];
    v12 = *(a1 + 32);
    if (!v12[17])
    {
      [v12 _recordConnectionMethodForMetrics:*(a1 + 64)];
    }

    WeakRetained = v19;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __82__SiriCoreSiriConnection_siriBackgroundConnection_didEncounterError_analysisInfo___block_invoke_20(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v6 = 136315394;
    v7 = "[SiriCoreSiriConnection siriBackgroundConnection:didEncounterError:analysisInfo:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Ran out of pending connections; forwarding error from last connection %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 24));
  [WeakRetained siriConnection:a1[5] didEncounterError:a1[6] analysisInfo:a1[7]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriBackgroundConnectionDidClose:(id)close
{
  closeCopy = close;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SiriCoreSiriConnection_siriBackgroundConnectionDidClose___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = closeCopy;
  v6 = closeCopy;
  dispatch_async(queue, v7);
}

void __59__SiriCoreSiriConnection_siriBackgroundConnectionDidClose___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 136);
  v5 = *MEMORY[0x277CEF0A8];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO);
  if (v4 == v3)
  {
    if (v6)
    {
      *buf = 136315394;
      v15 = "[SiriCoreSiriConnection siriBackgroundConnectionDidClose:]_block_invoke";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Closing from active connection: %@", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    WeakRetained = objc_loadWeakRetained((v2 + 24));
    [WeakRetained siriConnectionDidClose:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *buf = 136315394;
      v15 = "[SiriCoreSiriConnection siriBackgroundConnectionDidClose:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Ignoring connection close from inactive connection: %@", buf, 0x16u);
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SiriCoreSiriConnection_siriBackgroundConnectionDidClose___block_invoke_19;
    v11[3] = &unk_279BD6540;
    v7 = v3;
    v8 = *(a1 + 32);
    v12 = v7;
    v13 = v8;
    [v2 _handleLastEventFromBackgroundConnection:v7 pendingConnectionExhaustionHandler:v11];
    WeakRetained = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __59__SiriCoreSiriConnection_siriBackgroundConnectionDidClose___block_invoke_19(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SiriCoreSiriConnection siriBackgroundConnectionDidClose:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Ran out of pending connections, forwarding close from last connection %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained siriConnectionDidClose:*(a1 + 40)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriBackgroundConnection:(id)connection didReceiveAceObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  objectCopy = object;
  v8 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[SiriCoreSiriConnection siriBackgroundConnection:didReceiveAceObject:]";
    _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SiriCoreSiriConnection_siriBackgroundConnection_didReceiveAceObject___block_invoke;
  block[3] = &unk_279BD5E20;
  block[4] = self;
  v14 = connectionCopy;
  v15 = objectCopy;
  v10 = objectCopy;
  v11 = connectionCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __71__SiriCoreSiriConnection_siriBackgroundConnection_didReceiveAceObject___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 136);
  v5 = *MEMORY[0x277CEF0A8];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO);
  if (v4 == v2)
  {
    if (v6)
    {
      v9 = 136315394;
      v10 = "[SiriCoreSiriConnection siriBackgroundConnection:didReceiveAceObject:]_block_invoke";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Received ace object from active connection: %@", &v9, 0x16u);
      v3 = a1[4];
    }

    WeakRetained = objc_loadWeakRetained((v3 + 24));
    [WeakRetained siriConnection:a1[4] didReceiveAceObject:a1[6]];
  }

  else if (v6)
  {
    v9 = 136315394;
    v10 = "[SiriCoreSiriConnection siriBackgroundConnection:didReceiveAceObject:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Ignoring ace object from inactive connection: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)siriBackgroundConnection:(id)connection didOpenWithConnectionType:(id)type routeId:(id)id delay:(double)delay
{
  connectionCopy = connection;
  typeCopy = type;
  idCopy = id;
  getConnectionMethodUsed = [connectionCopy getConnectionMethodUsed];
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__SiriCoreSiriConnection_siriBackgroundConnection_didOpenWithConnectionType_routeId_delay___block_invoke;
  v19[3] = &unk_279BD5F28;
  v19[4] = self;
  v20 = connectionCopy;
  v21 = getConnectionMethodUsed;
  v22 = typeCopy;
  v23 = idCopy;
  delayCopy = delay;
  v15 = idCopy;
  v16 = typeCopy;
  v17 = getConnectionMethodUsed;
  v18 = connectionCopy;
  dispatch_async(queue, v19);
}

void __91__SiriCoreSiriConnection_siriBackgroundConnection_didOpenWithConnectionType_routeId_delay___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x277CEF0A8];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO);
    if (v4 == v3)
    {
      if (v6)
      {
        v13 = 136315394;
        v14 = "[SiriCoreSiriConnection siriBackgroundConnection:didOpenWithConnectionType:routeId:delay:]_block_invoke";
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Connection opened twice or connection became viable again. %@", &v13, 0x16u);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(a1 + 48);
        v13 = 136315650;
        v14 = "[SiriCoreSiriConnection siriBackgroundConnection:didOpenWithConnectionType:routeId:delay:]_block_invoke";
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s A connection lost the race, canceling %@ connection %@", &v13, 0x20u);
        v4 = *(a1 + 40);
      }

      [v4 cancel];
      [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
    }
  }

  else
  {
    v8 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v13 = 136315650;
      v14 = "[SiriCoreSiriConnection siriBackgroundConnection:didOpenWithConnectionType:routeId:delay:]_block_invoke";
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s Connection opened and %@ won the race: %@", &v13, 0x20u);
      v2 = *(a1 + 32);
    }

    objc_storeStrong((v2 + 136), *(a1 + 40));
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained siriConnection:*(a1 + 32) didOpenWithConnectionType:*(a1 + 56) routeId:*(a1 + 64) delay:*(a1 + 48) method:*(a1 + 72)];

    [*(a1 + 32) _recordConnectionMethodForMetrics:*(a1 + 48)];
    dispatch_group_leave(*(*(a1 + 32) + 144));
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)siriBackgroundConnection:(id)connection willStartWithConnectionType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v6 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[SiriCoreSiriConnection siriBackgroundConnection:willStartWithConnectionType:]";
    v14 = 2112;
    v15 = typeCopy;
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s connectionType=%@", buf, 0x16u);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SiriCoreSiriConnection_siriBackgroundConnection_willStartWithConnectionType___block_invoke;
  v10[3] = &unk_279BD6540;
  v10[4] = self;
  v11 = typeCopy;
  v8 = typeCopy;
  dispatch_async(queue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __79__SiriCoreSiriConnection_siriBackgroundConnection_willStartWithConnectionType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained siriConnection:*(a1 + 32) willStartWithConnectionType:*(a1 + 40)];
}

- (void)_handleLastEventFromBackgroundConnection:(id)connection pendingConnectionExhaustionHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  if ([(NSMutableSet *)self->_pendingBackgroundConnections containsObject:connectionCopy])
  {
    [(NSMutableSet *)self->_comatoseBackgroundConnections addObject:connectionCopy];
    [(NSMutableSet *)self->_pendingBackgroundConnections removeObject:connectionCopy];
  }

  if (!self->_activeBackgroundConnection && ![(NSMutableSet *)self->_pendingBackgroundConnections count]&& ![(NSMutableSet *)self->_scheduledRoutes count])
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)_activeOrAnyPendingConnection
{
  activeBackgroundConnection = self->_activeBackgroundConnection;
  if (activeBackgroundConnection)
  {
    anyObject = activeBackgroundConnection;
  }

  else
  {
    anyObject = [(NSMutableSet *)self->_pendingBackgroundConnections anyObject];
  }

  return anyObject;
}

- (void)_waitForActiveConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    objc_initWeak(&location, self);
    activeConnectionGroup = self->_activeConnectionGroup;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SiriCoreSiriConnection__waitForActiveConnection___block_invoke;
    block[3] = &unk_279BD5F00;
    objc_copyWeak(&v9, &location);
    v8 = connectionCopy;
    dispatch_group_notify(activeConnectionGroup, queue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __51__SiriCoreSiriConnection__waitForActiveConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[13] & 1) == 0)
  {
    v3 = WeakRetained[17];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_accessPotentiallyActiveConnections:(id)connections
{
  v17 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  v5 = connectionsCopy;
  if (!self->_isCanceledInternal)
  {
    if (self->_activeBackgroundConnection)
    {
      (*(connectionsCopy + 2))(connectionsCopy);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [(NSMutableSet *)self->_pendingBackgroundConnections copy];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v5[2](v5, *(*(&v12 + 1) + 8 * v10++));
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getConnectionMetricsSynchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SiriCoreSiriConnection_getConnectionMetricsSynchronously_completion___block_invoke;
  v10[3] = &unk_279BD6148;
  v10[4] = self;
  v11 = completionCopy;
  if (synchronouslyCopy)
  {
    v8 = MEMORY[0x277D85DA0];
  }

  else
  {
    v8 = MEMORY[0x277D85D58];
  }

  v9 = completionCopy;
  v8(queue, v10);
}

void __71__SiriCoreSiriConnection_getConnectionMetricsSynchronously_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SiriCoreSiriConnection getConnectionMetricsSynchronously:completion:]_block_invoke";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) _activeOrAnyPendingConnection];
  if (v3 || ([*(*(a1 + 32) + 120) anyObject], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 getConnectionMetrics:*(*(a1 + 32) + 192) withCompletion:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAnalysisInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SiriCoreSiriConnection_getAnalysisInfo___block_invoke;
  v7[3] = &unk_279BD6148;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __42__SiriCoreSiriConnection_getAnalysisInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [*(a1 + 32) _activeOrAnyPendingConnection];
    v2 = [v3 analysisInfo];
    (*(v1 + 16))(v1, v2);
  }
}

- (id)analysisInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1683;
  v10 = __Block_byref_object_dispose__1684;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SiriCoreSiriConnection_analysisInfo__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__SiriCoreSiriConnection_analysisInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _activeOrAnyPendingConnection];
  v2 = [v5 analysisInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)cancelSynchronously:(BOOL)synchronously onQueue:(BOOL)queue completion:(id)completion
{
  queueCopy = queue;
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_isCanceled)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    self->_isCanceled = 1;
    if (queueCopy)
    {
      [(SiriCoreSiriConnection *)self _cancelSynchronously:completionCopy];
    }

    else
    {
      queue = self->_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __65__SiriCoreSiriConnection_cancelSynchronously_onQueue_completion___block_invoke;
      v11[3] = &unk_279BD6148;
      v11[4] = self;
      v12 = completionCopy;
      if (synchronouslyCopy)
      {
        MEMORY[0x277D85DA0](queue, v11);
      }

      else
      {
        MEMORY[0x277D85D58](queue, v11);
      }
    }
  }
}

- (void)_cancelSynchronously:(id)synchronously
{
  v26 = *MEMORY[0x277D85DE8];
  synchronouslyCopy = synchronously;
  [(SiriCoreSiriBackgroundConnection *)self->_activeBackgroundConnection cancel];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_pendingBackgroundConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9++) cancel];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_comatoseBackgroundConnections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) cancel];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  self->_isCanceledInternal = 1;
  if (synchronouslyCopy)
  {
    synchronouslyCopy[2](synchronouslyCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)probeConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SiriCoreSiriConnection_probeConnection__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)barrier:(id)barrier
{
  barrierCopy = barrier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SiriCoreSiriConnection_barrier___block_invoke;
  v6[3] = &unk_279BD5EB8;
  v7 = barrierCopy;
  v5 = barrierCopy;
  [(SiriCoreSiriConnection *)self _waitForActiveConnection:v6];
}

void __34__SiriCoreSiriConnection_barrier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v3;
    [v3 barrier:v4];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = 0;
    (*(v4 + 16))(v4, 0);
  }

  v3 = v5;
LABEL_6:
}

- (void)setSendPings:(BOOL)pings
{
  self->_sendPings = pings;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SiriCoreSiriConnection_setSendPings___block_invoke;
  v3[3] = &__block_descriptor_33_e42_v16__0__SiriCoreSiriBackgroundConnection_8l;
  pingsCopy = pings;
  [(SiriCoreSiriConnection *)self _waitForActiveConnection:v3];
}

- (void)sendCommands:(id)commands errorHandler:(id)handler
{
  commandsCopy = commands;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SiriCoreSiriConnection_sendCommands_errorHandler___block_invoke;
  block[3] = &unk_279BD65D8;
  block[4] = self;
  v12 = commandsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = commandsCopy;
  dispatch_async(queue, block);
}

void __52__SiriCoreSiriConnection_sendCommands_errorHandler___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SiriCoreSiriConnection_sendCommands_errorHandler___block_invoke_2;
  v3[3] = &unk_279BD5E70;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _accessPotentiallyActiveConnections:v3];
}

- (void)sendCommand:(id)command errorHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SiriCoreSiriConnection_sendCommand_errorHandler___block_invoke;
  block[3] = &unk_279BD65D8;
  block[4] = self;
  v12 = commandCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = commandCopy;
  dispatch_async(queue, block);
}

void __51__SiriCoreSiriConnection_sendCommand_errorHandler___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SiriCoreSiriConnection_sendCommand_errorHandler___block_invoke_2;
  v3[3] = &unk_279BD5E70;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _accessPotentiallyActiveConnections:v3];
}

- (void)start
{
  v103 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v96 = "[SiriCoreSiriConnection start]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = self->_connectionPolicy;
  routes = [(SAConnectionPolicy *)v4 routes];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(routes, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = routes;
  v7 = [obj countByEnumeratingWithState:&v84 objects:buf count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v85;
    v64 = *MEMORY[0x277D47CC8];
    *&v8 = 136315138;
    v63 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v85 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v84 + 1) + 8 * v11);
        cname = [v12 cname];
        if ((_RouteHostStringIsAcceptable(cname) & 1) == 0)
        {

LABEL_17:
          v21 = *MEMORY[0x277CEF0A8];
          if (!os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          *v91 = 136315394;
          v92 = "_PolicyRouteSetsForConnectionPolicy";
          v93 = 2112;
          v94 = v12;
          v19 = v21;
          v20 = "%s Skipping connection route with unacceptable cname and/or host: %@";
          v22 = 22;
          goto LABEL_19;
        }

        host = [v12 host];
        IsAcceptable = _RouteHostStringIsAcceptable(host);

        if ((IsAcceptable & 1) == 0)
        {
          goto LABEL_17;
        }

        type = [v12 type];
        v17 = [type isEqualToString:v64];

        if (!v17)
        {
          goto LABEL_20;
        }

        if (NetworkServiceProxyIsEnabled())
        {
          if (AFIsInternalInstall() && _AFPreferencesGetTuscanyStatus())
          {
            v18 = *MEMORY[0x277CEF0A8];
            if (!os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
            {
              goto LABEL_23;
            }

            *v91 = v63;
            v92 = "_PolicyRouteSetsForConnectionPolicy";
            v19 = v18;
            v20 = "%s Not using Tuscany policy as Tuscany is disabled in Internal Settings";
LABEL_27:
            v22 = 12;
LABEL_19:
            _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, v20, v91, v22);
            goto LABEL_23;
          }

LABEL_20:
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "priority")}];
          v24 = [v6 objectForKey:v23];
          if (!v24)
          {
            v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [v6 setObject:v24 forKey:v23];
          }

          [v24 addObject:v12];

          goto LABEL_23;
        }

        v25 = *MEMORY[0x277CEF0A8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
        {
          *v91 = v63;
          v92 = "_SiriCorePOPServiceExists";
          v19 = v25;
          v20 = "%s POP Service disabled.";
          goto LABEL_27;
        }

LABEL_23:
        ++v11;
      }

      while (v9 != v11);
      v26 = [obj countByEnumeratingWithState:&v84 objects:buf count:16];
      v9 = v26;
    }

    while (v26);
  }

  allKeys = [v6 allKeys];
  v28 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v28, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  reverseObjectEnumerator = [v28 reverseObjectEnumerator];
  v31 = [reverseObjectEnumerator countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v81;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v81 != v33)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v35 = [v6 objectForKey:*(*(&v80 + 1) + 8 * i)];
        if (v35)
        {
          [v29 addObject:v35];
        }
      }

      v32 = [reverseObjectEnumerator countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v32);
  }

  globalTimeout = [(SAConnectionPolicy *)v4 globalTimeout];
  v65 = globalTimeout;
  if (globalTimeout)
  {
    [globalTimeout doubleValue];
    v38 = fmin(v37 * 1000.0, 10.0);
  }

  else
  {
    v38 = 10.0;
  }

  v39 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v39 setNetworkConnectionId:uUID];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obja = v29;
  v41 = [obja countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v77;
    v44 = 0.0;
    while (2)
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v77 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v46 = *(*(&v76 + 1) + 8 * j);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v47 = v46;
        v48 = [v47 countByEnumeratingWithState:&v72 objects:v89 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v73;
          v51 = 0.0;
          do
          {
            for (k = 0; k != v49; ++k)
            {
              if (*v73 != v50)
              {
                objc_enumerationMutation(v47);
              }

              timeout = [*(*(&v72 + 1) + 8 * k) timeout];
              [timeout doubleValue];
              v55 = v54 / 1000.0;

              if (v51 < v55)
              {
                v51 = v55;
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v72 objects:v89 count:16];
          }

          while (v49);
        }

        else
        {
          v51 = 0.0;
        }

        if (v44 >= v38)
        {
          v61 = *MEMORY[0x277CEF0A8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v96 = "[SiriCoreSiriConnection start]";
            v97 = 2048;
            v98 = v44;
            v99 = 2048;
            v100 = v38;
            v101 = 2112;
            v102 = v47;
            _os_log_impl(&dword_2669D1000, v61, OS_LOG_TYPE_INFO, "%s Skipping connection policy route because they would take too long (%.3fs >= %.3fs): %@", buf, 0x2Au);
          }

          goto LABEL_71;
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v56 = v47;
        v57 = [v56 countByEnumeratingWithState:&v68 objects:v88 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v69;
          do
          {
            for (m = 0; m != v58; ++m)
            {
              if (*v69 != v59)
              {
                objc_enumerationMutation(v56);
              }

              [(SiriCoreSiriConnection *)self _scheduleBackgroundConnectionWithRoute:*(*(&v68 + 1) + 8 * m) delay:v4 policy:v44];
            }

            v58 = [v56 countByEnumeratingWithState:&v68 objects:v88 count:16];
          }

          while (v58);
        }

        v44 = v44 + fmin(v51, 5.0);
      }

      v42 = [obja countByEnumeratingWithState:&v76 objects:v90 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v44 = 0.0;
  }

LABEL_71:

  [(SiriCoreSiriConnection *)self _scheduleBackgroundConnectionWithRoute:0 delay:v4 policy:v44];
  v62 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleBackgroundConnectionWithRoute:(id)route delay:(double)delay policy:(id)policy
{
  v25 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  policyCopy = policy;
  v10 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[SiriCoreSiriConnection _scheduleBackgroundConnectionWithRoute:delay:policy:]";
    v21 = 2048;
    v22 = delay * 1000.0;
    v23 = 2112;
    v24 = routeCopy;
    _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s Scheduling connection after delay %.2f ms with route %@", buf, 0x20u);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SiriCoreSiriConnection__scheduleBackgroundConnectionWithRoute_delay_policy___block_invoke;
  v15[3] = &unk_279BD5E48;
  v15[4] = self;
  v16 = routeCopy;
  delayCopy = delay;
  v17 = policyCopy;
  v12 = policyCopy;
  v13 = routeCopy;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __78__SiriCoreSiriConnection__scheduleBackgroundConnectionWithRoute_delay_policy___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (*(a1 + 40))
  {
    [*(v2 + 128) addObject:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v3 addObject:v4];
  }

  v5 = *(a1 + 56);
  if (v5 <= 0.0)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    [v10 _startBackgroundConnectionWithRoute:v11 policy:v12];
  }

  else
  {
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__SiriCoreSiriConnection__scheduleBackgroundConnectionWithRoute_delay_policy___block_invoke_2;
    block[3] = &unk_279BD5E20;
    block[4] = v8;
    v14 = v7;
    v15 = *(a1 + 48);
    dispatch_after(v6, v9, block);
  }
}

- (void)_startBackgroundConnectionWithRoute:(id)route policy:(id)policy
{
  v25 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  policyCopy = policy;
  scheduledRoutes = self->_scheduledRoutes;
  if (routeCopy)
  {
    [(NSMutableSet *)self->_scheduledRoutes removeObject:routeCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableSet *)scheduledRoutes removeObject:null];
  }

  if (self->_isCanceledInternal || self->_activeBackgroundConnection)
  {
    v10 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[SiriCoreSiriConnection _startBackgroundConnectionWithRoute:policy:]";
      v11 = "%s Not starting scheduled background connection because we're canceled or already have an active one";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_2669D1000, v12, v13, v11, &v21, 0xCu);
    }
  }

  else
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    isDictationHIPAACompliant = [mEMORY[0x277CEF368] isDictationHIPAACompliant];

    if (isDictationHIPAACompliant)
    {
      v17 = *MEMORY[0x277CEF088];
      if (!os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v21 = 136315138;
      v22 = "[SiriCoreSiriConnection _startBackgroundConnectionWithRoute:policy:]";
      v11 = "%s Not starting scheduled background connection because we have HIPAA On-Device Dictation enabled";
      v12 = v17;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

    v18 = [[SiriCoreSiriBackgroundConnection alloc] initWithQueue:self->_queue];
    [(SiriCoreSiriBackgroundConnection *)v18 setPeerType:self->_peerType];
    [(SiriCoreSiriBackgroundConnection *)v18 setPeerVersion:self->_peerVersion];
    [(SiriCoreSiriBackgroundConnection *)v18 setPeerProviderClass:self->_peerProviderClass];
    [(SiriCoreSiriBackgroundConnection *)v18 setProductTypePrefix:self->_productTypePrefix];
    [(SiriCoreSiriBackgroundConnection *)v18 setDelegate:self];
    [(SiriCoreSiriBackgroundConnection *)v18 setSiriConnectionUsesPeerManagedSync:self->_siriConnectionUsesPeerManagedSync];
    [(SiriCoreSiriBackgroundConnection *)v18 setUsesProxyConnection:self->_usesProxyConnection];
    [(SiriCoreSiriBackgroundConnection *)v18 setDeviceIsInWalkaboutExperimentGroup:self->_deviceIsInWalkaboutExperimentGroup];
    [(NSMutableSet *)self->_pendingBackgroundConnections addObject:v18];
    v19 = [(SiriCoreSiriConnection *)self _connectionInfoForRoute:routeCopy policy:policyCopy];
    v20 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v21 = 136315394;
      v22 = "[SiriCoreSiriConnection _startBackgroundConnectionWithRoute:policy:]";
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_2669D1000, v20, OS_LOG_TYPE_INFO, "%s Starting background connection with connection info: %@", &v21, 0x16u);
    }

    [(SiriCoreSiriBackgroundConnection *)v18 startWithConnectionInfo:v19];
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_connectionInfoForRoute:(id)route policy:(id)policy
{
  v30 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  policyCopy = policy;
  v8 = objc_alloc_init(SiriCoreSiriConnectionInfo);
  [(SiriCoreSiriConnectionInfo *)v8 setAceHost:self->_aceHost];
  [(SiriCoreSiriConnectionInfo *)v8 setLanguageCode:self->_languageCode];
  [(SiriCoreSiriConnectionInfo *)v8 setPrefersWWAN:self->_prefersWWAN];
  [(SiriCoreSiriConnectionInfo *)v8 setSkipPeer:self->_skipPeer];
  [(SiriCoreSiriConnectionInfo *)v8 setUseWiFiHint:self->_useWiFiHint];
  [(SiriCoreSiriConnectionInfo *)v8 setConnectionPolicy:policyCopy];

  [(SiriCoreSiriConnectionInfo *)v8 setForceReconnect:self->_forceReconnect];
  [(SiriCoreSiriConnectionInfo *)v8 setConnectionPolicyRoute:routeCopy];
  [(SiriCoreSiriConnectionInfo *)v8 setAssistantIdentifier:self->_assistantIdentifier];
  [(SiriCoreSiriConnectionInfo *)v8 setPeerAssistantIdentifier:self->_peerAssistantIdentifier];
  [(SiriCoreSiriConnectionInfo *)v8 setImposePolicyBan:self->_imposePolicyBan];
  [(SiriCoreSiriConnectionInfo *)v8 setForceOnDeviceOnlyDictation:_AFPreferencesForceOnDeviceOnlyDictationEnabled()];
  [(SiriCoreSiriConnectionInfo *)v8 setRequiresURLSession:0];
  [(SiriCoreSiriConnectionInfo *)v8 setTimeout:self->_timeout];
  v9 = self->_url;
  if (routeCopy)
  {
    cname = [routeCopy cname];
    if (cname || ([routeCopy host], (cname = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = cname;
      v12 = [MEMORY[0x277CCACE0] componentsWithURL:v9 resolvingAgainstBaseURL:0];
      [v12 setHost:v11];
      v13 = [v12 URL];

      v9 = v13;
    }
  }

  port = [(NSURL *)v9 port];
  stringValue = [port stringValue];

  if (!stringValue)
  {
    scheme = [(NSURL *)v9 scheme];
    v17 = [scheme caseInsensitiveCompare:@"https"];

    if (v17)
    {
      stringValue = @"80";
    }

    else
    {
      stringValue = @"443";
    }
  }

  v18 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    host = [(NSURL *)v9 host];
    v24 = 136315650;
    v25 = "[SiriCoreSiriConnection _connectionInfoForRoute:policy:]";
    v26 = 2112;
    v27 = host;
    v28 = 2112;
    v29 = stringValue;
    _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, "%s route host is %@ port is %@", &v24, 0x20u);
  }

  [(SiriCoreSiriConnectionInfo *)v8 setUrl:v9];
  connectionId = [routeCopy connectionId];
  [(SiriCoreSiriConnectionInfo *)v8 setConnectionId:connectionId];

  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)dealloc
{
  if (!self->_activeBackgroundConnection)
  {
    dispatch_group_leave(self->_activeConnectionGroup);
  }

  v3 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v3 setNetworkConnectionId:0];

  v4.receiver = self;
  v4.super_class = SiriCoreSiriConnection;
  [(SiriCoreSiriConnection *)&v4 dealloc];
}

- (SiriCoreSiriConnection)initWithQueue:(id)queue
{
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = SiriCoreSiriConnection;
  v5 = [(SiriCoreSiriConnection *)&v21 init];
  if (v5)
  {
    v6 = queueCopy;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UNSPECIFIED, 0);

    if (v6)
    {
      v9 = dispatch_queue_create_with_target_V2("SiriCoreSiriConnection", v8, v6);
    }

    else
    {
      v9 = dispatch_queue_create("SiriCoreSiriConnection", v8);
    }

    v10 = v9;

    v11 = *(v5 + 1);
    *(v5 + 1) = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = *(v5 + 14);
    *(v5 + 14) = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = *(v5 + 15);
    *(v5 + 15) = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v17 = *(v5 + 16);
    *(v5 + 16) = v16;

    v18 = dispatch_group_create();
    v19 = *(v5 + 18);
    *(v5 + 18) = v18;

    dispatch_group_enter(*(v5 + 18));
  }

  return v5;
}

@end