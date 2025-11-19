@interface SidecarSession
- (SidecarSession)init;
- (SidecarSession)initWithRemote:(id)a3 device:(id)a4 dataLink:(int)a5 service:(id)a6 error:(id *)a7;
- (SidecarSession)initWithService:(id)a3 device:(id)a4;
- (SidecarSessionDelegate)delegate;
- (id)description;
- (void)_closeWithError:(id)a3;
- (void)closeWithError:(id)a3 completion:(id)a4;
- (void)connectWithTransport:(int64_t)a3 reconnectToSession:(id)a4;
- (void)dealloc;
- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5;
- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7;
- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5;
- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)setStreamSuspended:(BOOL)a3 completion:(id)a4;
- (void)timeSyncWithCompletion:(id)a3;
@end

@implementation SidecarSession

- (SidecarSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setStreamSuspended:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v9 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = @"false";
    if (v4)
    {
      v13 = @"true";
    }

    *buf = 138543618;
    v19 = self;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_26604C000, v9, OS_LOG_TYPE_ERROR, "%{public}@: setting the session suspended (%@)", buf, 0x16u);
  }

  v10 = SidecarQueue();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SidecarSession_setStreamSuspended_completion___block_invoke;
  v14[3] = &unk_279BC3408;
  v15 = v7;
  v16 = a2;
  v14[4] = self;
  v17 = v4;
  v11 = v7;
  dispatch_async(v10, v14);

  v12 = *MEMORY[0x277D85DE8];
}

void __48__SidecarSession_setStreamSuspended_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  v5 = sessionCompletion(v2, *(a1 + 48), *(a1 + 40));
  v4 = SidecarRelayProxyAsync(0, v5);
  [v4 relaySession:v3 setStreamSuspended:*(a1 + 56) completion:v5];
}

- (void)timeSyncWithCompletion:(id)a3
{
  v5 = a3;
  v6 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SidecarSession_timeSyncWithCompletion___block_invoke;
  block[3] = &unk_279BC33E0;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __41__SidecarSession_timeSyncWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[7];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = -1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SidecarSession_timeSyncWithCompletion___block_invoke_2;
  v7[3] = &unk_279BC3368;
  v3 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v10;
  v4 = sessionCompletion(v1, v3, v7);
  v5 = SidecarRelayProxyAsync(0, v4);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SidecarSession_timeSyncWithCompletion___block_invoke_3;
  v6[3] = &unk_279BC33B8;
  v6[4] = v4;
  v6[5] = v10;
  [v5 relaySession:v2 timeSyncWithCompletion:v6];

  _Block_object_dispose(v10, 8);
}

uint64_t __41__SidecarSession_timeSyncWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24), a2);
  }

  return result;
}

void __41__SidecarSession_timeSyncWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SidecarQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SidecarSession_timeSyncWithCompletion___block_invoke_4;
  v8[3] = &unk_279BC3390;
  v11 = a2;
  v10 = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)closeWithError:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (SidecarSessionSetState(self, 3))
  {
    v9 = SidecarQueue();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SidecarSession_closeWithError_completion___block_invoke;
    v10[3] = &unk_279BC3340;
    v10[4] = self;
    v13 = a2;
    v12 = v8;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void __44__SidecarSession_closeWithError_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  v5 = sessionCompletion(v2, *(a1 + 56), *(a1 + 48));
  v4 = SidecarRelayProxyAsync(0, v5);
  [v4 relaySessionClose:v3 error:*(a1 + 40) completion:v5];
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = SidecarQueue();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__SidecarSession_sendMessage_completion___block_invoke;
  v12[3] = &unk_279BC3340;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __41__SidecarSession_sendMessage_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  v4 = sessionCompletion(v2, *(a1 + 56), *(a1 + 48));
  v5 = *(a1 + 40);
  v9 = 0;
  v6 = SidecarOPACKEncode(v5, &v9);
  v7 = v9;
  if (v7)
  {
    (v4)[2](v4, v7);
  }

  else
  {
    v8 = SidecarRelayProxyAsync(0, v4);
    [v8 relaySession:v3 sendOPACKData:v6 completion:v4];
  }
}

- (void)connectWithTransport:(int64_t)a3 reconnectToSession:(id)a4
{
  v7 = a4;
  if (SidecarSessionSetState(self, 1))
  {
    v8 = SidecarQueue();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__SidecarSession_connectWithTransport_reconnectToSession___block_invoke;
    v10[3] = &unk_279BC3318;
    v12 = a3;
    v13 = a2;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, v10);
  }

  else
  {
    __break(1u);
  }
}

void __58__SidecarSession_connectWithTransport_reconnectToSession___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = *(a1 + 48);
  v2 = [*(*(a1 + 32) + 16) identifier];
  v3 = [*(*(a1 + 32) + 24) serviceIdentifier];
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SidecarSession_connectWithTransport_reconnectToSession___block_invoke_2;
  v10[3] = &unk_279BC32F0;
  v10[4] = v4;
  v6 = sessionCompletion(v4, v5, v10);
  v7 = SidecarRelayProxyAsync(0, v6);
  v8 = [*(a1 + 32) uuid];
  v9 = [*(a1 + 40) uuid];
  [v7 relaySessionOpen:v8 reconnect:v9 serviceIdentifier:v3 destination:v2 transport:*(a1 + 48) completion:v6];
}

void __58__SidecarSession_connectWithTransport_reconnectToSession___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 _closeWithError:v3];
  }

  else
  {
    v6 = atomic_load(v5 + 9);
    if (v6 <= 1 && (v7 = v6, atomic_compare_exchange_strong(v5 + 9, &v7, 2uLL), v7 == v6))
    {
      [v4 sidecarSessionStarted:*(a1 + 32)];
    }

    else
    {
      v8 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v9 = v8;
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = atomic_load((v11 + 72));
        v13 = 138543618;
        v14 = v11;
        v15 = 2048;
        v16 = v12;
        _os_log_impl(&dword_26604C000, v9, OS_LOG_TYPE_ERROR, "%{public}@: set state failed (%ld)", &v13, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_closeWithError:(id)a3
{
  v5 = a3;
  if (SidecarSessionSetState(self, 3))
  {
    v4 = [(SidecarSession *)self delegate];
    [v4 sidecarSession:self closedWithError:v5];
  }
}

- (id)description
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uuid = self->_uuid;
  v10[0] = 0;
  v10[1] = 0;
  [(NSUUID *)uuid getUUIDBytes:v10];
  v7 = [v3 stringWithFormat:@"%@<%lX>", v5, bswap32(v10[0])];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dealloc
{
  handle = self->_handle;
  if (*(self + 64))
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __SidecarSessionRemoveFromRemoteMapTable_block_invoke;
    v14 = &__block_descriptor_40_e25_v16__0__SidecarMapTable_8l;
    v15 = handle;
    v4 = &__SidecarSessionRemoteMapTable;
    v5 = SidecarMapTableCreateStrong;
  }

  else
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __SidecarSessionRemoveFromLocalMapTable_block_invoke;
    v14 = &__block_descriptor_40_e25_v16__0__SidecarMapTable_8l;
    v15 = handle;
    v4 = &__SidecarSessionLocalMapTable;
    v5 = SidecarMapTableCreateWeak;
  }

  SidecarSessionWithMapTable(v5, v4, &v11);
  v6 = atomic_load(&self->_state);
  if (v6 >= 1)
  {
    v7 = [(SidecarSession *)self uuid];
    v8 = SidecarQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__SidecarSession_dealloc__block_invoke;
    block[3] = &unk_279BC3670;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  v9.receiver = self;
  v9.super_class = SidecarSession;
  [(SidecarSession *)&v9 dealloc];
}

void __25__SidecarSession_dealloc__block_invoke(uint64_t a1)
{
  v2 = SidecarRelayProxyAsync(0, &__block_literal_global_49);
  [v2 relaySessionDealloc:*(a1 + 32) completion:&__block_literal_global_49];
}

void __25__SidecarSession_dealloc__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v4)
    {
      log = v4;
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      v4 = log;
      if (v5)
      {
        v6 = [v2 domain];
        v7 = [v2 code];
        v8 = [v2 localizedDescription];
        *buf = 138543875;
        v11 = v6;
        v12 = 2048;
        v13 = v7;
        v14 = 2113;
        v15 = v8;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v4 = log;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (SidecarSession)initWithService:(id)a3 device:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SidecarSession;
  v9 = [(SidecarSession *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a4);
    objc_storeStrong(&v10->_service, a3);
    v11 = v10;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__711;
    v25 = __Block_byref_object_dispose__712;
    v26 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __SidecarSessionAddToLocalMapTable_block_invoke;
    v20[3] = &unk_279BC34A0;
    v20[4] = v11;
    v20[5] = &v21;
    SidecarSessionWithMapTable(SidecarMapTableCreateWeak, &__SidecarSessionLocalMapTable, v20);
    v12 = v22[5];
    _Block_object_dispose(&v21, 8);

    v21 = 0;
    v22 = 0;
    [(NSUUID *)v12 getUUIDBytes:&v21];
    v11->_handle = bswap32(v21);
    *(v11 + 64) &= ~1u;
    v13 = dispatch_get_global_queue(21, 0);
    queue = v11->_queue;
    v11->_queue = v13;

    uuid = v11->_uuid;
    v11->_uuid = v12;
    v16 = v12;

    SidecarSessionSetState(v11, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (SidecarSession)initWithRemote:(id)a3 device:(id)a4 dataLink:(int)a5 service:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v34.receiver = self;
  v34.super_class = SidecarSession;
  v16 = [(SidecarSession *)&v34 init];
  if (!v16)
  {
LABEL_8:
    v27 = v16;
    goto LABEL_12;
  }

  v35 = 0;
  v36 = 0;
  [v13 getUUIDBytes:&v35];
  v17 = bswap32(v35);
  v18 = [SidecarService serviceWithIdentifier:v15];
  if (v18)
  {
    v19 = v18;
    objc_storeStrong(&v16->_device, a4);
    service = v16->_service;
    v16->_service = v19;
    v21 = v19;

    v16->_dataLink = a5;
    v16->_handle = v17;
    *(v16 + 64) |= 1u;
    v22 = dispatch_get_global_queue(21, 0);
    queue = v16->_queue;
    v16->_queue = v22;

    v24 = 3;
    if (a5 == 4)
    {
      v24 = 1;
    }

    v25 = 2;
    if ((a5 & 0xFFFFFFFE) != 8)
    {
      v25 = v24;
    }

    v16->_transport = v25;
    objc_storeStrong(&v16->_uuid, a3);
    SidecarSessionSetState(v16, 2);
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __SidecarSessionAddToRemoteMapTable_block_invoke;
    v38 = &unk_279BC3478;
    v39 = v16;
    v40 = v17;
    v26 = v16;
    SidecarSessionWithMapTable(SidecarMapTableCreateStrong, &__SidecarSessionRemoteMapTable, &v35);

    goto LABEL_8;
  }

  v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SidecarErrorDomain" code:-103 userInfo:0];
  v29 = v28;
  if (a7)
  {
    v30 = v28;
    *a7 = v29;
  }

  v31 = SidecarRelayProxyAsync(0, &__block_literal_global_47);
  [v31 relaySessionClose:v17 error:v29 completion:&__block_literal_global_47];
  [v31 relaySessionDealloc:v13 completion:&__block_literal_global_47];

  v27 = 0;
LABEL_12:

  v32 = *MEMORY[0x277D85DE8];
  return v27;
}

void __63__SidecarSession_initWithRemote_device_dataLink_service_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v4)
    {
      log = v4;
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      v4 = log;
      if (v5)
      {
        v6 = [v2 domain];
        v7 = [v2 code];
        v8 = [v2 localizedDescription];
        *buf = 138543875;
        v11 = v6;
        v12 = 2048;
        v13 = v7;
        v14 = 2113;
        v15 = v8;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v4 = log;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (SidecarSession)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromSelector(a2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v2 stringWithFormat:@"*** initialization method -[%@] not supported with class %@", v3, v5];

  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v6 userInfo:0];
  objc_exception_throw(v7);
}

- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5
{
  v9 = a5;
  v10 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier___block_invoke;
  block[3] = &unk_279BC3838;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, block);
}

void __77__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier___block_invoke_2;
  v6[3] = &unk_279BC3810;
  v4 = a1[6];
  v6[4] = v2;
  v6[5] = v4;
  v5 = SidecarRelayProxyAsync(0, v6);
  [v5 relaySession:v3 connectStreamType:a1[7] flags:a1[8] identifier:a1[5]];
}

void __77__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    SidecarCoreLogObjCAPIError(*(a1 + 32), *(a1 + 40), a2);
  }
}

- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7
{
  v13 = a5;
  v14 = a7;
  v15 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier_processUniqueID_completion___block_invoke;
  block[3] = &unk_279BC37E8;
  v20 = v14;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  block[4] = self;
  v19 = v13;
  v24 = a6;
  v16 = v13;
  v17 = v14;
  dispatch_async(v15, block);
}

void __104__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier_processUniqueID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier_processUniqueID_completion___block_invoke_2;
  v15[3] = &unk_279BC36F0;
  v15[4] = v2;
  v11 = *(a1 + 48);
  v4 = v11;
  v16 = v11;
  v5 = SidecarRelayProxyAsync(0, v15);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__SidecarSession_SidecarStreamsInternal__openStreamForType_flags_identifier_processUniqueID_completion___block_invoke_3;
  v13[3] = &unk_279BC37C0;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v12;
  v14 = v12;
  [v5 relaySession:v3 connectStreamType:v6 flags:v7 identifier:v9 processUniqueID:v8 completion:v13];
}

- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5
{
  v9 = a5;
  v10 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier___block_invoke;
  block[3] = &unk_279BC3838;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, block);
}

void __79__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier___block_invoke_2;
  v6[3] = &unk_279BC3810;
  v4 = a1[6];
  v6[4] = v2;
  v6[5] = v4;
  v5 = SidecarRelayProxyAsync(0, v6);
  [v5 relaySession:v3 listenStreamType:a1[7] flags:a1[8] identifier:a1[5]];
}

void __79__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    SidecarCoreLogObjCAPIError(*(a1 + 32), *(a1 + 40), a2);
  }
}

- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7
{
  v13 = a5;
  v14 = a7;
  v15 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier_processUniqueID_completion___block_invoke;
  block[3] = &unk_279BC37E8;
  v20 = v14;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  block[4] = self;
  v19 = v13;
  v24 = a6;
  v16 = v13;
  v17 = v14;
  dispatch_async(v15, block);
}

void __106__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier_processUniqueID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier_processUniqueID_completion___block_invoke_2;
  v15[3] = &unk_279BC36F0;
  v15[4] = v2;
  v11 = *(a1 + 48);
  v4 = v11;
  v16 = v11;
  v5 = SidecarRelayProxyAsync(0, v15);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__SidecarSession_SidecarStreamsInternal__listenForStreamType_flags_identifier_processUniqueID_completion___block_invoke_3;
  v13[3] = &unk_279BC37C0;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v12;
  v14 = v12;
  [v5 relaySession:v3 listenStreamType:v6 flags:v7 identifier:v9 processUniqueID:v8 completion:v13];
}

@end