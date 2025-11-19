@interface SPCoreParsecInterface
+ (id)getSharedInstance;
+ (id)sharedFeedbackListener;
- (SPCoreParsecInterface)init;
- (id)getFeedbackListener;
- (void)activate:(double)a3;
- (void)dealloc;
- (void)setParsecFeedbackAllowed:(BOOL)a3;
- (void)setupSearchSession;
@end

@implementation SPCoreParsecInterface

- (SPCoreParsecInterface)init
{
  v6.receiver = self;
  v6.super_class = SPCoreParsecInterface;
  v2 = [(SPCoreParsecInterface *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Shared parsec queue", 0);
    sharedQueue = v2->_sharedQueue;
    v2->_sharedQueue = v3;
  }

  return v2;
}

+ (id)sharedFeedbackListener
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!gSharedFeedbackListener)
  {
    v3 = +[SPCoreParsecInterface getSharedInstance];
    v4 = [v3 getFeedbackListener];
    v5 = gSharedFeedbackListener;
    gSharedFeedbackListener = v4;
  }

  objc_sync_exit(v2);

  v6 = gSharedFeedbackListener;

  return v6;
}

+ (id)getSharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!getSharedInstance_interface)
  {
    v3 = objc_alloc_init(SPCoreParsecInterface);
    v4 = getSharedInstance_interface;
    getSharedInstance_interface = v3;
  }

  objc_sync_exit(v2);

  v5 = getSharedInstance_interface;

  return v5;
}

- (id)getFeedbackListener
{
  if (self->_parsecEnabled)
  {
    sessionOnceToken = self->_sessionOnceToken;
    p_sessionOnceToken = &self->_sessionOnceToken;
    block = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __44__SPCoreParsecInterface_getFeedbackListener__block_invoke;
    v20 = &unk_1E82F8F28;
    v21 = self;
    if (sessionOnceToken != -1)
    {
      dispatch_once(p_sessionOnceToken, &block);
    }

    v5 = [(SPCoreParsecInterface *)self searchSession];

    if (!v5)
    {
      [(SPCoreParsecInterface *)self setupSearchSession];
      v6 = [(SPCoreParsecInterface *)self searchSession];
      [client setSession:v6];
    }

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__SPCoreParsecInterface_getFeedbackListener__block_invoke_2;
    v15 = &unk_1E82F8F28;
    v16 = self;
    if (getFeedbackListener_onceToken != -1)
    {
      dispatch_once(&getFeedbackListener_onceToken, &v12);
    }

    v7 = self->_listener;
    v8 = [(SPCoreParsecInterface *)self searchSession:v12];
    v9 = xpc_BOOL_create(v8 != 0);

    v10 = one_member_dict("parsecPresent", v9);
    analytics_send_event();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setupSearchSession
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_parsecEnabled)
  {
    goto LABEL_3;
  }

  v3 = [(SPCoreParsecInterface *)obj searchSession];

  v2 = obj;
  if (v3)
  {
    goto LABEL_3;
  }

  v4 = objc_alloc(MEMORY[0x1E69D3E60]);
  v5 = [(SPCoreParsecInterface *)obj sharedQueue];
  v6 = [v4 initWithClient:obj clientQueue:v5];
  [(SPCoreParsecInterface *)obj setSearchSession:v6];

  v7 = [(SPCoreParsecInterface *)obj searchSession];

  v2 = obj;
  if (v7)
  {
    v8 = [(SPCoreParsecInterface *)obj searchSession];
    v9 = [v8 listener];
    [(SPSearchParsecFeedbackProxy *)obj->_listener setListener:v9];

    [SPSearchFeedbackSender synchronizedBlock:&__block_literal_global_3];
    objc_sync_exit(obj);

    +[SPSearchFeedbackSender updateFeedbackListeners];
  }

  else
  {
LABEL_3:
    objc_sync_exit(v2);
  }
}

void __43__SPCoreParsecInterface_setupSearchSession__block_invoke()
{
  v0 = +[SPCoreParsecInterface getSharedInstance];
  [v0 setParsecFeedbackAllowed:_parsecFeedbackAllowed];
}

- (void)setParsecFeedbackAllowed:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (gSPLogDebugAsDefault)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v19 = 67109120;
    LODWORD(v20) = v3;
    _os_log_impl(&dword_1C81BF000, v6, v7, "[FEEDBACK-DEBUG] (SPCoreParsecInterface setParsecFeedbackAllowed) allowed: %d, ", &v19, 8u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = [(SPCoreParsecInterface *)self searchSession];
    v19 = 138412290;
    v20 = v11;
    _os_log_impl(&dword_1C81BF000, v9, v10, "[FEEDBACK-DEBUG] (SPCoreParsecInterface setParsecFeedbackAllowed) self.session: %@, ", &v19, 0xCu);
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "allowed";
    if (!v3)
    {
      v14 = "forbidden";
    }

    v19 = 136315138;
    v20 = v14;
    _os_log_impl(&dword_1C81BF000, v13, OS_LOG_TYPE_DEFAULT, "Parsec feedback %s", &v19, 0xCu);
  }

  v15 = xpc_BOOL_create(v3);
  v16 = one_member_dict("allowed", v15);
  analytics_send_event();

  _parsecFeedbackAllowed = v3;
  v17 = [(SPCoreParsecInterface *)v12 searchSession];
  [v17 setParsecFeedbackAllowed:_parsecFeedbackAllowed];

  objc_sync_exit(v12);
  +[SPSearchFeedbackSender updateFeedbackListeners];
  v18 = *MEMORY[0x1E69E9840];
}

void __44__SPCoreParsecInterface_getFeedbackListener__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(QueryController);
  v3 = client;
  client = v2;

  v4 = objc_alloc(MEMORY[0x1E69D3E60]);
  v5 = client;
  v6 = [*(a1 + 32) sharedQueue];
  v7 = [v4 initWithClient:v5 clientQueue:v6];
  [*(a1 + 32) setSearchSession:v7];

  v8 = [*(a1 + 32) searchSession];
  [client setSession:v8];
}

uint64_t __44__SPCoreParsecInterface_getFeedbackListener__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(SPSearchParsecFeedbackProxy);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1 + 32) searchSession];
  v6 = [v5 listener];
  [*(*(a1 + 32) + 8) setListener:v6];

  v7 = *(*(a1 + 32) + 8);

  return [v7 setInterface:?];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SPCoreParsecInterface;
  [(SPCoreParsecInterface *)&v2 dealloc];
}

- (void)activate:(double)a3
{
  sessionOnceToken = self->_sessionOnceToken;
  p_sessionOnceToken = &self->_sessionOnceToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SPCoreParsecInterface_activate___block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  if (sessionOnceToken != -1)
  {
    dispatch_once(p_sessionOnceToken, block);
  }

  v7 = [(SPCoreParsecInterface *)self searchSession];

  if (!v7)
  {
    [(SPCoreParsecInterface *)self setupSearchSession];
    v8 = [(SPCoreParsecInterface *)self searchSession];
    [client setSession:v8];
  }

  self->_gSessionStartTime = a3;
  [(PRSSearchSession *)self->_searchSession setSessionStartTime:a3];
  [(PRSSearchSession *)self->_searchSession activate];
}

void __34__SPCoreParsecInterface_activate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(QueryController);
  v3 = client;
  client = v2;

  v4 = objc_alloc(MEMORY[0x1E69D3E60]);
  v5 = client;
  v6 = [*(a1 + 32) sharedQueue];
  v7 = [v4 initWithClient:v5 clientQueue:v6];
  [*(a1 + 32) setSearchSession:v7];

  v8 = [*(a1 + 32) searchSession];
  [client setSession:v8];
}

@end