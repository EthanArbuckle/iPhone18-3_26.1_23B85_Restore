@interface _RELocalTrainingContext
- (_RELocalTrainingContext)initWithConnection:(id)a3;
- (id)_elementRelevanceEngine;
- (void)_configureForRelevanceEngine:(id)a3;
- (void)_handleInvalidation;
- (void)performTrainingWithElements:(id)a3 events:(id)a4 interactions:(id)a5 completion:(id)a6;
- (void)updateRemoteAttribute:(id)a3 forKey:(id)a4 completion:(id)a5;
@end

@implementation _RELocalTrainingContext

- (_RELocalTrainingContext)initWithConnection:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _RELocalTrainingContext;
  v6 = [(RETrainingContext *)&v19 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.RelevanceEngine.LocalTrainingContext.%p", v6];
    v8 = dispatch_queue_create([v7 UTF8String], 0);
    queue = v6->_queue;
    v6->_queue = v8;

    [(_RELocalTrainingContext *)v6 _configureForRelevanceEngine:0];
    objc_storeStrong(&v6->_connection, a3);
    connection = v6->_connection;
    v11 = RERemoteTrainingClientInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v11];

    v12 = v6->_connection;
    v13 = RERemoteTrainingServerInterface();
    [(NSXPCConnection *)v12 setExportedInterface:v13];

    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    objc_initWeak(&location, v6);
    v14 = v6->_connection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46___RELocalTrainingContext_initWithConnection___block_invoke;
    v16[3] = &unk_2785F9A90;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v14 setInvalidationHandler:v16];
    [(NSXPCConnection *)v6->_connection resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (id)_elementRelevanceEngine
{
  v2 = [(RETrainingContext *)self relevanceEngine];
  v3 = [v2 coordinator];
  v4 = [v3 elementRelevanceEngine];

  return v4;
}

- (void)_configureForRelevanceEngine:(id)a3
{
  v6.receiver = self;
  v6.super_class = _RELocalTrainingContext;
  [(RETrainingContext *)&v6 _configureForRelevanceEngine:a3];
  v4 = [(_RELocalTrainingContext *)self _elementRelevanceEngine];
  v5 = [v4 queue];

  if (!v5)
  {
    v5 = dispatch_get_global_queue(17, 0);
  }

  dispatch_set_target_queue(self->_queue, v5);
}

- (void)_handleInvalidation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___RELocalTrainingContext__handleInvalidation__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)performTrainingWithElements:(id)a3 events:(id)a4 interactions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_queue;
  v15 = [(_RELocalTrainingContext *)self _elementRelevanceEngine];
  v16 = [v15 queue];

  if (v16)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86___RELocalTrainingContext_performTrainingWithElements_events_interactions_completion___block_invoke;
    block[3] = &unk_2785FB098;
    block[4] = self;
    v20 = v16;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v14;
    v25 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = RELogForDomain(17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22859F000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to train, but the trainingQueue is nil!", buf, 2u);
    }

    dispatch_async(v14, v13);
  }
}

- (void)updateRemoteAttribute:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67___RELocalTrainingContext_updateRemoteAttribute_forKey_completion___block_invoke;
  v15[3] = &unk_2785FB0C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

@end