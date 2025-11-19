@interface VCCompanionSyncSession
+ (int64_t)direction;
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (NSString)debugDescription;
- (VCCompanionSyncSession)initWithSYSession:(id)a3 service:(id)a4 syncDataHandlers:(id)a5;
- (VCCompanionSyncSessionDelegate)delegate;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)resetDataStoreForSyncSession:(id)a3 completion:(id)a4;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
@end

@implementation VCCompanionSyncSession

- (VCCompanionSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetDataStoreForSyncSession:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() direction];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:v9 format:@"-[VCCompanionSyncSession resetDataStoreForSyncSession:completion:] must be overridden"];
    __break(1u);
  }

  [v8 raise:v9 format:@"-[VCCompanionSyncSession resetDataStoreForSyncSession:completion:] should not be invoked on an outgoing session"];
  __break(1u);
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v4 = a3;
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCCompanionSyncSession resetDataStoreForSyncSession:completion:] should be called instead"];
  __break(1u);
  return result;
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(VCCompanionSyncSession *)self session];
  v10 = [v7 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:84 description:{@"Unexpected session finishing: %@", v7}];
  }

  v11 = getWFWatchSyncLogObject();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "[VCCompanionSyncSession syncSession:didEndWithError:]";
      v22 = 2114;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v13 = "%s finished session %{public}@ with error %{public}@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_8:
      _os_log_impl(&dword_23103C000, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[VCCompanionSyncSession syncSession:didEndWithError:]";
    v22 = 2114;
    v23 = v7;
    v13 = "%s finished session %{public}@";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
    goto LABEL_8;
  }

  v17 = [(VCCompanionSyncSession *)self delegate];
  [v17 companionSyncSession:self didFinishWithError:v8];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v5 = [objc_opt_class() direction];
  v6 = *MEMORY[0x277CBE658];
  if (v5)
  {
    v7 = @"[VCCompanionSyncSession syncSession:applyChanges:completion:] must be overridden";
  }

  else
  {
    v7 = @"[VCCompanionSyncSession syncSession:applyChanges:completion:] should not be invoked on an outgoing session";
  }

  v8 = MEMORY[0x277CBEAD8];

  [v8 raise:v6 format:v7];
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() direction];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAD8] raise:v10 format:@"-[VCCompanionSyncSession syncSession:enqueueChanges:error:] must be overridden"];
    __break(1u);
  }

  result = [v9 raise:v10 format:@"-[VCCompanionSyncSession syncSession:enqueueChanges:error:] should not be invoked on an incoming session"];
  __break(1u);
  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VCCompanionSyncSession *)self session];
  v7 = [(VCCompanionSyncSession *)self session];
  v8 = [v7 identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p SYSession=%@ id=%@>", v5, self, v6, v8];

  return v9;
}

- (VCCompanionSyncSession)initWithSYSession:(id)a3 service:(id)a4 syncDataHandlers:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_19:
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"session"}];

  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v12)
  {
LABEL_4:
    v13 = v12;
    goto LABEL_5;
  }

LABEL_20:
  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"syncDataHandlers"}];

  v13 = 0;
LABEL_5:
  VCAssertUniqueMessageTypes(v13);
  v35.receiver = self;
  v35.super_class = VCCompanionSyncSession;
  v14 = [(VCCompanionSyncSession *)&v35 init];
  if (v14)
  {
    v15 = [objc_opt_class() direction];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);

    if (v15 == 1)
    {
      v18 = "com.apple.VCCompanionSyncSession.incoming";
    }

    else
    {
      v18 = "com.apple.VCCompanionSyncSession.outgoing";
    }

    if (v15 == 1)
    {
      v19 = @"VCCompanionSyncSession.incoming";
    }

    else
    {
      v19 = @"VCCompanionSyncSession.outgoing";
    }

    v20 = dispatch_queue_create(v18, v17);
    queue = v14->_queue;
    v14->_queue = v20;

    v22 = VCOSTransactionWithName(v19);
    transaction = v14->_transaction;
    v14->_transaction = v22;

    objc_storeStrong(&v14->_session, a3);
    [(SYSession *)v14->_session setDelegate:v14];
    [(SYSession *)v14->_session setTargetQueue:v14->_queue];
    v24 = objc_alloc_init(VCCompanionSyncSerializer);
    [(SYSession *)v14->_session setSerializer:v24];

    [(SYSession *)v14->_session setMaxConcurrentMessages:15];
    objc_storeStrong(&v14->_service, a4);
    v25 = [v12 copy];
    syncDataHandlers = v14->_syncDataHandlers;
    v14->_syncDataHandlers = v25;

    v27 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"outgoing";
      *buf = 136315906;
      v37 = "[VCCompanionSyncSession initWithSYSession:service:syncDataHandlers:]";
      v38 = 2114;
      v39 = v14;
      if (v15 == 1)
      {
        v28 = @"incoming";
      }

      v40 = 2114;
      v41 = v28;
      v42 = 2114;
      v43 = v10;
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@ session created with SYSession: %{public}@", buf, 0x2Au);
    }

    v29 = v14;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (int64_t)direction
{
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"+[VCCompanionSyncSession sessionType] must be overridden"];
  __break(1u);
  return result;
}

@end