@interface Client
- (BOOL)_shouldSendMessages;
- (Client)initWithConn:(id)a3;
- (id)description;
- (void)_decrementMessageCounter:(int64_t)a3;
- (void)_incrementMessageCounter:(int64_t)a3;
- (void)_sendBarrierIfNecessaryWithBlock:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation Client

- (Client)initWithConn:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = Client;
  v6 = [(Client *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    subscribedNOIs = v7->_subscribedNOIs;
    v7->_subscribedNOIs = v8;

    *&v7->_shouldSendMessages = 1;
    v7->_barrierMessageCount = 0;
    v7->_droppedMessageCount = 0;
    v7->_activeMessageCount = 0;
  }

  return v7;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NOIClient with XPC connection to pid %d (%ld observed NOIs: %@)", -[NSXPCConnection processIdentifier](self->_connection, "processIdentifier"), -[NSMutableSet count](self->_subscribedNOIs, "count"), self->_subscribedNOIs];

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(Client *)self _shouldSendMessages])
  {
    if (a6)
    {
      v13 = v11;
      v14 = [v13 identityAttrsOnly];
      if (a6 == 7)
      {
        v15 = noiLogHandle;
        if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [(Client *)self connection];
          v18 = [v17 processIdentifier];
          v19 = [(Client *)self connection];
          *buf = 134219266;
          v31 = self;
          v32 = 1024;
          v33 = v18;
          v34 = 2112;
          v35 = v10;
          v36 = 2112;
          v37 = v13;
          v38 = 1024;
          v39 = [v19 processIdentifier];
          v40 = 2112;
          v41 = v12;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> observed %@ of object %@, partial update to pid: %d, change: %@", buf, 0x36u);
        }
      }

      v20 = [(Client *)self connection];
      v21 = [v20 remoteObjectProxy];
      [v21 updateNOI:v14 keyPath:v10 change:v12];
    }

    else
    {
      v22 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [(Client *)self connection];
        v25 = [v24 processIdentifier];
        v26 = [(Client *)self connection];
        *buf = 134219010;
        v31 = self;
        v32 = 1024;
        v33 = v25;
        v34 = 2112;
        v35 = v10;
        v36 = 2112;
        v37 = v11;
        v38 = 1024;
        v39 = [v26 processIdentifier];
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> observed %@ of object %@, full update to pid: %d", buf, 0x2Cu);
      }

      v13 = [v11 copy];
      v14 = [(Client *)self connection];
      v20 = [v14 remoteObjectProxy];
      v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v13, 0}];
      [v20 haveNOIs:v21 tornDown:0];
    }

    [(Client *)self _incrementMessageCounter:1];
    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__Client_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v28[3] = &unk_27898BA88;
    objc_copyWeak(&v29, buf);
    v28[4] = self;
    [(Client *)self _sendBarrierIfNecessaryWithBlock:v28];
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __57__Client_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 connection];
    v22 = 134218240;
    v23 = WeakRetained;
    v24 = 1024;
    v25 = [v6 processIdentifier];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "NOICLIENT <%p:%d> Consuming barrier block", &v22, 0x12u);
  }

  if (WeakRetained)
  {
    [WeakRetained _decrementMessageCounter:4];
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = *(a1 + 32);
    if (*(v8 + 33) == 1 && *(v8 + 8) <= 8)
    {
      *(v8 + 33) = 0;
      v9 = [v7 subscribedNOIs];
      v10 = [v9 count] == 0;

      v11 = noiLogHandle;
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v19 = [v7 connection];
          v20 = [v19 processIdentifier];
          v22 = 134218240;
          v23 = v7;
          v24 = 1024;
          v25 = v20;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "NOICLIENT <%p:%d> Client has no subscribed NOIs. Skipping subscribed NOI refresh", &v22, 0x12u);
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v7 connection];
          v14 = [v13 processIdentifier];
          v22 = 134218240;
          v23 = v7;
          v24 = 1024;
          v25 = v14;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Client resumed. Sending refresh updates for subscribed NOIs", &v22, 0x12u);
        }

        v15 = objc_alloc(MEMORY[0x277CBEB98]);
        v16 = [v7 subscribedNOIs];
        v12 = [v15 initWithSet:v16 copyItems:1];

        v17 = [v7 connection];
        v18 = [v17 remoteObjectProxy];
        [v18 haveNOIs:v12 tornDown:0];
      }
    }

    objc_sync_exit(v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSendMessages
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  activeMessageCount = v2->_activeMessageCount;
  if (v2->_shouldSendMessages)
  {
    if (activeMessageCount >= 16)
    {
      v2->_shouldSendMessages = 0;
      v4 = noiLogHandle;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(Client *)v2 connection];
        v6 = [v5 processIdentifier];
        v7 = v2->_activeMessageCount;
        v20 = 134218752;
        v21 = v2;
        v22 = 1024;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        v26 = 1024;
        v27 = 16;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Current message count (%ld) is above sent XPC message limit (%d). Suspending NOI updates", &v20, 0x22u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (activeMessageCount > 8)
    {
      droppedMessageCount = v2->_droppedMessageCount;
      if ((droppedMessageCount & 0x8000000000000007) != 1)
      {
LABEL_14:
        v2->_droppedMessageCount = droppedMessageCount + 1;
        v2->_forceUpdateOnWake = 1;
        goto LABEL_15;
      }

      v4 = noiLogHandle;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(Client *)v2 connection];
        v15 = [v14 processIdentifier];
        v16 = v2->_activeMessageCount;
        v20 = 134218752;
        v21 = v2;
        v22 = 1024;
        v23 = v15;
        v24 = 2048;
        v25 = v16;
        v26 = 1024;
        v27 = 8;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Current message count (%ld) is still above XPC message resume limit (%d). NOI updates are still suspended (dropping message)", &v20, 0x22u);
      }

LABEL_13:

      droppedMessageCount = v2->_droppedMessageCount;
      goto LABEL_14;
    }

    v2->_shouldSendMessages = 1;
    v8 = noiLogHandle;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(Client *)v2 connection];
      v10 = [v9 processIdentifier];
      v11 = v2->_activeMessageCount;
      v12 = v2->_droppedMessageCount;
      v20 = 134219008;
      v21 = v2;
      v22 = 1024;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v26 = 1024;
      v27 = 8;
      v28 = 2048;
      v29 = v12;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Current message count (%ld) is below XPC message resume limit (%d). Resuming NOI updates (%ld dropped messages)", &v20, 0x2Cu);
    }

    v2->_droppedMessageCount = 0;
  }

LABEL_15:
  shouldSendMessages = v2->_shouldSendMessages;
  objc_sync_exit(v2);

  v18 = *MEMORY[0x277D85DE8];
  return shouldSendMessages;
}

- (void)_sendBarrierIfNecessaryWithBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_barrierMessageCount >= 4)
  {
    v6 = noiLogHandle;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(Client *)v5 connection];
      v14 = 134218240;
      v15 = v5;
      v16 = 1024;
      v17 = [v7 processIdentifier];
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "NOICLIENT <%p:%d> Sending barrier block", &v14, 0x12u);
    }

    [(NSXPCConnection *)v5->_connection addBarrierBlock:v4];
    v5->_barrierMessageCount = 0;
    v8 = noiLogHandle;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(Client *)v5 connection];
      v10 = [v9 processIdentifier];
      activeMessageCount = v5->_activeMessageCount;
      barrierMessageCount = v5->_barrierMessageCount;
      v14 = 134218752;
      v15 = v5;
      v16 = 1024;
      v17 = v10;
      v18 = 2048;
      v19 = barrierMessageCount;
      v20 = 2048;
      v21 = activeMessageCount;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "NOICLIENT <%p:%d> Reset barrier send counter (%ld); message count (%ld)", &v14, 0x26u);
    }
  }

  objc_sync_exit(v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_incrementMessageCounter:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  *&v4->_activeMessageCount = vaddq_s64(*&v4->_activeMessageCount, vdupq_n_s64(a3));
  v5 = noiLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(Client *)v4 connection];
    v7 = [v6 processIdentifier];
    activeMessageCount = v4->_activeMessageCount;
    barrierMessageCount = v4->_barrierMessageCount;
    v11 = 134218752;
    v12 = v4;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = activeMessageCount;
    v17 = 2048;
    v18 = barrierMessageCount;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "NOICLIENT <%p:%d> Incremented message count (%ld); barrier send counter (%ld)", &v11, 0x26u);
  }

  objc_sync_exit(v4);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_decrementMessageCounter:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_activeMessageCount - a3;
  v4->_activeMessageCount = v5;
  if (v5 < 0)
  {
    v6 = noiLogHandle;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(Client *)v4 connection];
      v8 = [v7 processIdentifier];
      activeMessageCount = v4->_activeMessageCount;
      v16 = 134218752;
      v17 = v4;
      v18 = 1024;
      v19 = v8;
      v20 = 2048;
      v21 = activeMessageCount;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "NOICLIENT <%p:%d> Message count underflow! (%ld, decremented by %ld) Resetting to 0", &v16, 0x26u);
    }

    v4->_activeMessageCount = 0;
  }

  v10 = noiLogHandle;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(Client *)v4 connection];
    v12 = [v11 processIdentifier];
    v13 = v4->_activeMessageCount;
    barrierMessageCount = v4->_barrierMessageCount;
    v16 = 134218752;
    v17 = v4;
    v18 = 1024;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    v22 = 2048;
    v23 = barrierMessageCount;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NOICLIENT <%p:%d> Decremented message count (%ld); barrier send counter (%ld)", &v16, 0x26u);
  }

  objc_sync_exit(v4);
  v15 = *MEMORY[0x277D85DE8];
}

@end