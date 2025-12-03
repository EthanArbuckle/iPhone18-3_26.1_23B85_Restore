@interface VCCompanionSyncSession
+ (int64_t)direction;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NSString)debugDescription;
- (VCCompanionSyncSession)initWithSYSession:(id)session service:(id)service syncDataHandlers:(id)handlers;
- (VCCompanionSyncSessionDelegate)delegate;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)resetDataStoreForSyncSession:(id)session completion:(id)completion;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation VCCompanionSyncSession

- (VCCompanionSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetDataStoreForSyncSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  direction = [objc_opt_class() direction];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  if (direction)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:v9 format:@"-[VCCompanionSyncSession resetDataStoreForSyncSession:completion:] must be overridden"];
    __break(1u);
  }

  [v8 raise:v9 format:@"-[VCCompanionSyncSession resetDataStoreForSyncSession:completion:] should not be invoked on an outgoing session"];
  __break(1u);
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  sessionCopy = session;
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCCompanionSyncSession resetDataStoreForSyncSession:completion:] should be called instead"];
  __break(1u);
  return result;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  session = [(VCCompanionSyncSession *)self session];
  v10 = [sessionCopy isEqual:session];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:84 description:{@"Unexpected session finishing: %@", sessionCopy}];
  }

  v11 = getWFWatchSyncLogObject();
  v12 = v11;
  if (errorCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "[VCCompanionSyncSession syncSession:didEndWithError:]";
      v22 = 2114;
      v23 = sessionCopy;
      v24 = 2114;
      v25 = errorCopy;
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
    v23 = sessionCopy;
    v13 = "%s finished session %{public}@";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
    goto LABEL_8;
  }

  delegate = [(VCCompanionSyncSession *)self delegate];
  [delegate companionSyncSession:self didFinishWithError:errorCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  direction = [objc_opt_class() direction];
  v6 = *MEMORY[0x277CBE658];
  if (direction)
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

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  sessionCopy = session;
  changesCopy = changes;
  direction = [objc_opt_class() direction];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  if (direction)
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
  session = [(VCCompanionSyncSession *)self session];
  session2 = [(VCCompanionSyncSession *)self session];
  identifier = [session2 identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p SYSession=%@ id=%@>", v5, self, session, identifier];

  return v9;
}

- (VCCompanionSyncSession)initWithSYSession:(id)session service:(id)service syncDataHandlers:(id)handlers
{
  v44 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  serviceCopy = service;
  handlersCopy = handlers;
  if (sessionCopy)
  {
    if (serviceCopy)
    {
      goto LABEL_3;
    }

LABEL_19:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (handlersCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"session"}];

  if (!serviceCopy)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (handlersCopy)
  {
LABEL_4:
    v13 = handlersCopy;
    goto LABEL_5;
  }

LABEL_20:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncSession.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"syncDataHandlers"}];

  v13 = 0;
LABEL_5:
  VCAssertUniqueMessageTypes(v13);
  v35.receiver = self;
  v35.super_class = VCCompanionSyncSession;
  v14 = [(VCCompanionSyncSession *)&v35 init];
  if (v14)
  {
    direction = [objc_opt_class() direction];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);

    if (direction == 1)
    {
      v18 = "com.apple.VCCompanionSyncSession.incoming";
    }

    else
    {
      v18 = "com.apple.VCCompanionSyncSession.outgoing";
    }

    if (direction == 1)
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

    objc_storeStrong(&v14->_session, session);
    [(SYSession *)v14->_session setDelegate:v14];
    [(SYSession *)v14->_session setTargetQueue:v14->_queue];
    v24 = objc_alloc_init(VCCompanionSyncSerializer);
    [(SYSession *)v14->_session setSerializer:v24];

    [(SYSession *)v14->_session setMaxConcurrentMessages:15];
    objc_storeStrong(&v14->_service, service);
    v25 = [handlersCopy copy];
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
      if (direction == 1)
      {
        v28 = @"incoming";
      }

      v40 = 2114;
      v41 = v28;
      v42 = 2114;
      v43 = sessionCopy;
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