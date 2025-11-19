@interface SidecarRequest
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- (NSArray)devices;
- (NSArray)items;
- (NSData)data;
- (NSError)error;
- (NSProgress)progress;
- (NSString)description;
- (NSString)uniformTypeIdentifier;
- (SidecarDevice)device;
- (SidecarRequest)initWithService:(id)a3 device:(id)a4;
- (SidecarRequest)initWithSession:(id)a3 message:(id)a4;
- (SidecarRequestDelegate)delegate;
- (SidecarSession)session;
- (id)sessionForDevice:(id)a3;
- (void)_registerStreamListeners;
- (void)_sendMessage:(id)a3;
- (void)_willConnect;
- (void)cancel;
- (void)dealloc;
- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5;
- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7;
- (void)listenForStreamType:(int64_t)a3 identifier:(id)a4 completion:(id)a5;
- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5;
- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7;
- (void)openStreamForType:(int64_t)a3 identifier:(id)a4 completion:(id)a5;
- (void)sendItems:(id)a3 complete:(BOOL)a4;
- (void)setDevices:(id)a3;
- (void)setError:(id)a3;
- (void)setItems:(id)a3;
- (void)sidecarSession:(id)a3 closedWithError:(id)a4;
- (void)sidecarSession:(id)a3 receivedMessage:(id)a4;
- (void)sidecarSessionStarted:(id)a3;
- (void)sidecarTransfer:(id)a3 didComplete:(id)a4;
- (void)sidecarTransfer:(id)a3 receivedItems:(id)a4 messageType:(int64_t)a5;
- (void)startWithTransport:(int64_t)a3 reconnectToRequest:(id)a4;
@end

@implementation SidecarRequest

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"cancelled", @"data", @"devices", @"error", @"finished", @"items", 0}];
  if ([v5 containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SidecarRequest;
    v6 = objc_msgSendSuper2(&v8, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v6;
}

- (SidecarRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)sessionForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SidecarRequest *)self session];
  v6 = [v5 device];

  if (v6 == v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sidecarSession:(id)a3 closedWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SidecarRequest *)self session];

  if (v8 == v6)
  {
    SidecarRequestFinish(self, v7);
  }

  else
  {
    v9 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v10 = v9;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = v6[7];
      v13 = 134217984;
      v14 = v12;
      _os_log_impl(&dword_26604C000, v10, OS_LOG_TYPE_ERROR, "unexpected session[%lX]", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sidecarSession:(id)a3 receivedMessage:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Type = SidecarMessageGetType(v7);
  if ((Type - 1) >= 4)
  {
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SidecarErrorDomain" code:-1010 userInfo:0];
    if (v9)
    {
      v19 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v20 = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = [v9 domain];
        v22 = [v9 code];
        v23 = [v9 localizedDescription];
        *buf = 138543875;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2113;
        v31 = v23;
        _os_log_impl(&dword_26604C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);
      }
    }

    [(SidecarRequest *)self setError:v9];
  }

  else
  {
    if (Type == 4)
    {
      self->_timeTransfer = SidecarAbsoluteTime();
    }

    else if (Type == 2)
    {
      self->_timeAccept = SidecarAbsoluteTime();
      goto LABEL_10;
    }

    if (SidecarMessageGetTransferID(v7))
    {
      v10 = self;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__131;
      v28 = __Block_byref_object_dispose__132;
      v29 = 0;
      v11 = [(SidecarRequest *)v10 uuid];
      *buf = 0;
      *&buf[8] = 0;
      [v11 getUUIDBytes:buf];
      v12 = buf[0];
      v13 = buf[1];
      v14 = buf[2];
      v15 = buf[3];

      v16 = [(SidecarRequest *)v10 session];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __SidecarRequestEnsureTransferReceiver_block_invoke;
      v31 = &unk_279BC30E8;
      v32 = v10;
      v33 = v16;
      v34 = &v24;
      v35 = (v12 << 24) | (v13 << 16) | (v14 << 8) | v15;
      SidecarTransferLocked(v10, buf);
      v17 = v25[5];

      _Block_object_dispose(&v24, 8);
      [v17 handleMessage:v7];
    }
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)sidecarSessionStarted:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SidecarRequest *)self session];

  if (v5 == v4)
  {
    [(SidecarRequest *)self _willConnect];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SidecarRequest_sidecarSessionStarted___block_invoke;
    v9[3] = &unk_279BC3670;
    v9[4] = self;
    SidecarTransferLocked(self, v9);
  }

  else
  {
    v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_ERROR, "unexpected session %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __40__SidecarRequest_sidecarSessionStarted___block_invoke(uint64_t a1)
{
  v2 = 0;
  v26 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v3 = *(a1 + 32);
    AssociatedObject = objc_getAssociatedObject(v3, SidecarRequestTransferEnqueue);
    if (AssociatedObject)
    {
      v5 = AssociatedObject;
      v6 = *AssociatedObject;
      if (!v6)
      {
        goto LABEL_19;
      }

      v8 = *v6;
      v7 = v6[1];
      *v5 = v7;
      if (!v7)
      {
        v5[1] = v5;
      }

      free(v6);
      if (!*v5)
      {
        _SidecarAssociatedQueueDealloc(v3, SidecarRequestTransferEnqueue, v5);
      }
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      break;
    }

    v9 = v8;
    v2 = v9;
    add = atomic_fetch_add(v9 + 10, 0xFFFFFFFF);
    if (add == 1)
    {
      v11 = v9;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = __Block_byref_object_copy__64;
      v24 = __Block_byref_object_dispose__65;
      v25 = 0;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __SidecarTransferDequeueMessages_block_invoke;
      v21[3] = &unk_279BC3020;
      v21[4] = v11;
      v21[5] = buf;
      SidecarTransferLocked(v11, v21);
      v12 = *(*&buf[8] + 40);
      if (v12)
      {
        (*(v12 + 16))();
      }

      _Block_object_dispose(buf, 8);
    }

    else if (add <= 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v13 = (*(a1 + 32) + 112);
  v14 = atomic_load(v13);
  if (v14 <= 1)
  {
    v15 = v14;
    atomic_compare_exchange_strong(v13, &v15, 2uLL);
    if (v15 == v14)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  v17 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v18 = v17;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = atomic_load((v19 + 112));
    *buf = 138543618;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    _os_log_impl(&dword_26604C000, v18, OS_LOG_TYPE_ERROR, "%{public}@: set state failed (%ld)", buf, 0x16u);
  }

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_willConnect
{
  v9[2] = *MEMORY[0x277D85DE8];
  [(SidecarRequest *)self _registerStreamListeners];
  v3 = [(SidecarRequest *)self service];
  v4 = [v3 mutableRequestMessage];
  v5 = [(SidecarRequest *)self uuid];
  v9[0] = 0;
  v9[1] = 0;
  [v5 getUUIDBytes:v9];
  v6 = bswap32(v9[0]);

  SidecarMessageSetRequestID(v4, v6);
  v7 = [(SidecarRequest *)self session];
  SidecarRequestSendMessage(self, v7, v4);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sidecarTransfer:(id)a3 receivedItems:(id)a4 messageType:(int64_t)a5
{
  v7 = a4;
  v9 = v7;
  if (a5 == 4)
  {
    [(SidecarRequest *)self setItems:v7];
  }

  else
  {
    v8 = [(SidecarRequest *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 sidecarRequest:self receivedItems:v9];
    }
  }
}

- (void)sidecarTransfer:(id)a3 didComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = v6;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__131;
  v17 = __Block_byref_object_dispose__132;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __SidecarRequestTransferCompleted_block_invoke;
  v12[3] = &unk_279BC30C0;
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = &v13;
  SidecarTransferLocked(v8, v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  if (!v10 || (v11 = [v10 type], v7) || v11 == 4)
  {
    SidecarRequestFinish(v8, v7);
  }
}

- (void)_sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(SidecarRequest *)self session];
  SidecarRequestSendMessage(self, v5, v4);
}

- (void)sendItems:(id)a3 complete:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__131;
  v21 = __Block_byref_object_dispose__132;
  v22 = 0;
  v8 = [(SidecarRequest *)v7 session];
  v9 = [(SidecarRequest *)v7 uuid];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __SidecarRequestCreateSendTransfer_block_invoke;
  v16[3] = &unk_279BC3098;
  v16[4] = v7;
  v16[5] = v9;
  v16[6] = v8;
  v16[7] = &v17;
  SidecarTransferLocked(v7, v16);
  if (v4)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__SidecarRequest_sendItems_complete___block_invoke;
  v13[3] = &unk_279BC3048;
  v13[4] = v7;
  v13[5] = v11;
  v14 = v6;
  v15 = v10;
  v12 = v6;
  SidecarTransferLocked(v7, v13);
}

atomic_uint *__37__SidecarRequest_sendItems_complete___block_invoke(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 112));
  if (v2 <= 1)
  {
    result = *(a1 + 40);
    if (atomic_fetch_add(result + 10, 1u) == 0x7FFFFFFF)
    {
      __break(1u);
      return result;
    }

    SidecarRequestTransferEnqueue(*(a1 + 32), *(a1 + 40));
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [v4 sendItems:v5 messageType:v6];
}

- (void)startWithTransport:(int64_t)a3 reconnectToRequest:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = &v23;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__131;
  v27 = __Block_byref_object_dispose__132;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__131;
  v21 = __Block_byref_object_dispose__132;
  v22 = 0;
  if ((SidecarRequestSetState(self, 1) & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SidecarRequest_startWithTransport_reconnectToRequest___block_invoke;
  v16[3] = &unk_279BC3020;
  v16[4] = self;
  v16[5] = &v23;
  SidecarTransferLocked(self, v16);
  if (v7)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __56__SidecarRequest_startWithTransport_reconnectToRequest___block_invoke_2;
    v13 = &unk_279BC3020;
    v15 = &v17;
    v8 = v7;
    v14 = v8;
    SidecarTransferLocked(v8, &v10);
    if (v18[5])
    {
LABEL_6:

      goto LABEL_7;
    }

    v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (!v4)
    {
LABEL_5:

      goto LABEL_6;
    }

LABEL_9:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_26604C000, v4, OS_LOG_TYPE_ERROR, "%{public}@ reconnecting to %{public}@ with nil session", buf, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_7:
  [v24[5] connectWithTransport:a3 reconnectToSession:{v18[5], v10, v11, v12, v13}];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  v9 = *MEMORY[0x277D85DE8];
}

- (SidecarSession)session
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__131;
  v9 = __Block_byref_object_dispose__132;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__SidecarRequest_session__block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = self;
  v4[5] = &v5;
  SidecarTransferLocked(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)cancel
{
  v3 = objc_alloc(MEMORY[0x277CCA9B8]);
  v4 = [v3 initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  [(SidecarRequest *)self setError:v4];
}

- (void)setError:(id)a3
{
  if (a3)
  {
    SidecarRequestFinish(self, a3);
  }
}

- (NSError)error
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__131;
  v9 = __Block_byref_object_dispose__132;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__SidecarRequest_error__block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = self;
  v4[5] = &v5;
  SidecarTransferLocked(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSString)uniformTypeIdentifier
{
  v2 = [(SidecarRequest *)self items];
  v3 = [v2 firstObject];
  v4 = [v3 type];

  return v4;
}

- (NSData)data
{
  v2 = [(SidecarRequest *)self items];
  v3 = [v2 firstObject];
  v4 = [v3 data];

  return v4;
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[2] = __27__SidecarRequest_setItems___block_invoke;
  v7[3] = &unk_279BC3718;
  v7[4] = self;
  v8 = v4;
  v5 = self;
  v6 = v4;
  [(SidecarRequest *)v5 willChangeValueForKey:@"items", v7[0], 3221225472];
  __27__SidecarRequest_setItems___block_invoke(v7);
  [(SidecarRequest *)v5 didChangeValueForKey:@"items"];
}

void __27__SidecarRequest_setItems___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__SidecarRequest_setItems___block_invoke_2;
  v3[3] = &unk_279BC3718;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v2 = v1;
  [v2 willChangeValueForKey:{@"data", v3[0], 3221225472}];
  __27__SidecarRequest_setItems___block_invoke_2(v3);
  [v2 didChangeValueForKey:@"data"];
}

void __27__SidecarRequest_setItems___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__SidecarRequest_setItems___block_invoke_3;
  v3[3] = &unk_279BC3718;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v2 = v1;
  [v2 willChangeValueForKey:{@"uniformTypeIdentifier", v3[0], 3221225472}];
  __27__SidecarRequest_setItems___block_invoke_3(v3);
  [v2 didChangeValueForKey:@"uniformTypeIdentifier"];
}

void __27__SidecarRequest_setItems___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__SidecarRequest_setItems___block_invoke_4;
  v2[3] = &unk_279BC3718;
  v2[4] = v1;
  v3 = *(a1 + 40);
  SidecarTransferLocked(v1, v2);
}

- (NSArray)items
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__131;
  v9 = __Block_byref_object_dispose__132;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__SidecarRequest_items__block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = self;
  v4[5] = &v5;
  SidecarTransferLocked(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDevices:(id)a3
{
  v4 = a3;
  v5 = [(SidecarRequest *)self devices];
  v6 = [v4 isEqualToArray:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 copy];

    v9[0] = MEMORY[0x277D85DD0];
    v9[2] = __29__SidecarRequest_setDevices___block_invoke;
    v9[3] = &unk_279BC3718;
    v9[4] = self;
    v4 = v7;
    v10 = v4;
    v8 = self;
    [(SidecarRequest *)v8 willChangeValueForKey:@"devices", v9[0], 3221225472];
    __29__SidecarRequest_setDevices___block_invoke(v9);
    [(SidecarRequest *)v8 didChangeValueForKey:@"devices"];
  }
}

void __29__SidecarRequest_setDevices___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __29__SidecarRequest_setDevices___block_invoke_2;
  v2[3] = &unk_279BC3718;
  v2[4] = v1;
  v3 = *(a1 + 40);
  SidecarTransferLocked(v1, v2);
}

void __29__SidecarRequest_setDevices___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) firstObject];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  if ([*(a1 + 40) count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v6 = (*(a1 + 32) + 24);

  objc_storeStrong(v6, v5);
}

- (NSArray)devices
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__131;
  v9 = __Block_byref_object_dispose__132;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__SidecarRequest_devices__block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = self;
  v4[5] = &v5;
  SidecarTransferLocked(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __25__SidecarRequest_devices__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);
    if (v5)
    {
      v7[0] = v5;
      v4 = 1;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }

    else
    {
      v4 = 0;
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SidecarDevice)device
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__131;
  v9 = __Block_byref_object_dispose__132;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__SidecarRequest_device__block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = self;
  v4[5] = &v5;
  SidecarTransferLocked(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSProgress)progress
{
  progress = self->_progress;
  if (!progress)
  {
    v4 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
    v5 = self->_progress;
    self->_progress = v4;

    [(NSProgress *)self->_progress setCancellable:0];
    [(NSProgress *)self->_progress setPausable:0];
    progress = self->_progress;
  }

  return progress;
}

- (NSString)description
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SidecarRequest *)self uuid];
  v10[0] = 0;
  v10[1] = 0;
  [v6 getUUIDBytes:v10];
  v7 = [v3 stringWithFormat:@"%@<%lX>", v5, bswap32(v10[0])];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dealloc
{
  SidecarRequestDisconnectSession(self);
  v3.receiver = self;
  v3.super_class = SidecarRequest;
  [(SidecarRequest *)&v3 dealloc];
}

- (SidecarRequest)initWithSession:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SidecarRequest;
  v8 = [(SidecarRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SidecarRequest_initWithSession_message___block_invoke;
    v11[3] = &unk_279BC2FF8;
    v12 = v8;
    v13 = v6;
    v14 = v7;
    SidecarTransferLocked(v12, v11);
  }

  return v9;
}

void __42__SidecarRequest_initWithSession_message___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) device];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 48));
  v5 = [*(a1 + 40) service];
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  RequestID = SidecarMessageGetRequestID(*(a1 + 48));
  v13[0] = HIBYTE(RequestID);
  v13[1] = BYTE2(RequestID);
  v13[2] = BYTE1(RequestID);
  v13[3] = RequestID;
  v14 = -1;
  v15 = -1;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v13];
  v10 = *(a1 + 32);
  v11 = *(v10 + 152);
  *(v10 + 152) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (SidecarRequest)initWithService:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SidecarRequest;
  v8 = [(SidecarRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__SidecarRequest_initWithService_device___block_invoke;
    v11[3] = &unk_279BC2FF8;
    v12 = v8;
    v13 = v7;
    v14 = v6;
    SidecarTransferLocked(v12, v11);
  }

  return v9;
}

void __41__SidecarRequest_initWithService_device___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 48));
  v2 = [[SidecarSession alloc] initWithService:*(a1 + 48) device:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v8 = v2;

  v5 = [(SidecarSession *)v8 uuid];
  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  *(v6 + 152) = v5;

  [(SidecarSession *)v8 setDelegate:*(a1 + 32)];
}

- (void)_registerStreamListeners
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_getAssociatedObject(self, &_SidecarRequestStreamRegistrations);
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [(SidecarRequest *)self session];
          (*(v9 + 16))(v9, v10);

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    objc_setAssociatedObject(self, &_SidecarRequestStreamRegistrations, 0, 0x301);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7
{
  v17 = a5;
  v13 = a7;
  v14 = [(SidecarRequest *)self session];
  v15 = v14;
  if (v14)
  {
    [v14 openStreamForType:a3 flags:a4 identifier:v17 processUniqueID:a6 completion:v13];
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SidecarErrorDomain" code:-1020 userInfo:0];
    SidecarCoreLogObjCAPIError(self, a2, v16);
    v13[2](v13, 0, v16);
  }
}

- (void)openStreamForType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5
{
  v11 = a5;
  v9 = [(SidecarRequest *)self session];
  if (!v9)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SidecarErrorDomain" code:-1020 userInfo:0];
    SidecarCoreLogObjCAPIError(self, a2, v10);
  }

  [v9 openStreamForType:a3 flags:a4 identifier:v11];
}

- (void)openStreamForType:(int64_t)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(SidecarRequest *)self openStreamForType:a3 flags:0 identifier:v9 processUniqueID:SidecarGetProcessUniqueID() completion:v8];
}

- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SidecarRequest_SidecarStreams__listenForStreamType_flags_identifier___block_invoke;
  v14[3] = &unk_279BC3798;
  v16 = a3;
  v17 = a4;
  v9 = v8;
  v15 = v9;
  v10 = MEMORY[0x266777D20](v14);
  if ([(SidecarRequest *)self didStart])
  {
    v11 = [(SidecarRequest *)self session];
    (v10)[2](v10, v11);
  }

  else
  {
    v11 = objc_getAssociatedObject(self, &_SidecarRequestStreamRegistrations);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_setAssociatedObject(self, &_SidecarRequestStreamRegistrations, v11, 0x301);
    }

    v12 = [v10 copy];
    v13 = MEMORY[0x266777D20]();
    [v11 addObject:v13];
  }
}

- (void)listenForStreamType:(int64_t)a3 flags:(unint64_t)a4 identifier:(id)a5 processUniqueID:(unint64_t)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__SidecarRequest_SidecarStreams__listenForStreamType_flags_identifier_processUniqueID_completion___block_invoke;
  v20[3] = &unk_279BC3770;
  v23 = a3;
  v24 = a4;
  v14 = v12;
  v21 = v14;
  v25 = a6;
  v15 = v13;
  v22 = v15;
  v16 = MEMORY[0x266777D20](v20);
  if ([(SidecarRequest *)self didStart])
  {
    v17 = [(SidecarRequest *)self session];
    (v16)[2](v16, v17);
  }

  else
  {
    v17 = objc_getAssociatedObject(self, &_SidecarRequestStreamRegistrations);
    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_setAssociatedObject(self, &_SidecarRequestStreamRegistrations, v17, 0x301);
    }

    v18 = [v16 copy];
    v19 = MEMORY[0x266777D20]();
    [v17 addObject:v19];
  }
}

- (void)listenForStreamType:(int64_t)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(SidecarRequest *)self listenForStreamType:a3 flags:0 identifier:v9 processUniqueID:SidecarGetProcessUniqueID() completion:v8];
}

@end