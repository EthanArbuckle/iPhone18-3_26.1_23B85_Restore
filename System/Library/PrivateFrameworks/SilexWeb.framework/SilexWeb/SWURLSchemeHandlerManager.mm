@interface SWURLSchemeHandlerManager
- (SWURLSchemeHandlerManager)initWithConfiguration:(id)configuration logger:(id)logger;
- (WKWebViewConfiguration)configuration;
- (void)registerFactory:(id)factory forScheme:(id)scheme;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation SWURLSchemeHandlerManager

- (SWURLSchemeHandlerManager)initWithConfiguration:(id)configuration logger:(id)logger
{
  configurationCopy = configuration;
  loggerCopy = logger;
  v15.receiver = self;
  v15.super_class = SWURLSchemeHandlerManager;
  v8 = [(SWURLSchemeHandlerManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_configuration, configurationCopy);
    objc_storeStrong(&v9->_logger, logger);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    factories = v9->_factories;
    v9->_factories = dictionary;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    handlers = v9->_handlers;
    v9->_handlers = strongToStrongObjectsMapTable;
  }

  return v9;
}

- (void)registerFactory:(id)factory forScheme:(id)scheme
{
  schemeCopy = scheme;
  factoryCopy = factory;
  factories = [(SWURLSchemeHandlerManager *)self factories];
  [factories setObject:factoryCopy forKey:schemeCopy];

  v12 = [[SWWeakURLSchemeHandler alloc] initWithURLSchemeHandler:self];
  configuration = [(SWURLSchemeHandlerManager *)self configuration];
  [configuration setURLSchemeHandler:v12 forURLScheme:schemeCopy];

  logger = [(SWURLSchemeHandlerManager *)self logger];
  schemeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Register URL scheme handler factory %@ for scheme %@", factoryCopy, schemeCopy];

  [logger log:schemeCopy];
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  viewCopy = view;
  taskCopy = task;
  session = [(SWURLSchemeHandlerManager *)self session];
  logger = [(SWURLSchemeHandlerManager *)self logger];
  taskCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start URL scheme task with %@", taskCopy];
  [logger log:taskCopy];

  request = [taskCopy request];
  v10 = [request URL];
  scheme = [v10 scheme];

  if (!scheme)
  {
    goto LABEL_9;
  }

  factories = [(SWURLSchemeHandlerManager *)self factories];
  v13 = [factories objectForKey:scheme];

  logger2 = [(SWURLSchemeHandlerManager *)self logger];
  taskCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found URL scheme handler factory %@ for task %@", v13, taskCopy];
  [logger2 log:taskCopy2];

  if (!v13)
  {
    goto LABEL_9;
  }

  v16 = [SWURLSchemeTask alloc];
  logger3 = [(SWURLSchemeHandlerManager *)self logger];
  v18 = [(SWURLSchemeTask *)v16 initWithTask:taskCopy logger:logger3];

  logger4 = [(SWURLSchemeHandlerManager *)self logger];
  taskCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Created wrapping task %@ for task %@", v18, taskCopy];
  [logger4 log:taskCopy3];

  objc_initWeak(&location, self);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__SWURLSchemeHandlerManager_webView_startURLSchemeTask___block_invoke;
  v34[3] = &unk_1E84DB9B0;
  objc_copyWeak(&v36, &location);
  v21 = session;
  v35 = v21;
  [(SWURLSchemeTask *)v18 onCompletion:v34];
  v22 = [v13 createURLSchemeHandlerWithTask:v18];
  if (!v22)
  {

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);

LABEL_9:
    logger5 = [(SWURLSchemeHandlerManager *)self logger];
    taskCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create URL scheme handler for task %@", taskCopy];
    [logger5 logError:taskCopy4];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:3 userInfo:0];
    [taskCopy didFailWithError:v13];
    v22 = 0;
    goto LABEL_10;
  }

  logger6 = [(SWURLSchemeHandlerManager *)self logger];
  taskCopy5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Created URL scheme handler %@ for task %@", v22, taskCopy];
  [logger6 log:taskCopy5];

  handlers = [(SWURLSchemeHandlerManager *)self handlers];
  [handlers setObject:v22 forKey:taskCopy];

  session2 = [(SWURLSchemeHandlerManager *)self session];
  if (session2)
  {
    session3 = [(SWURLSchemeHandlerManager *)self session];
    v28 = [session3 isEqual:v21];

    if (v28)
    {
      session4 = [(SWURLSchemeHandlerManager *)self session];
      [session4 startSessionForHandler:v22 withTask:taskCopy];
    }
  }

  [v22 start];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

LABEL_10:
}

void __56__SWURLSchemeHandlerManager_webView_startURLSchemeTask___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained logger];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received completion callback for task %@", v21];
  [v4 log:v5];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 handlers];
  v8 = [v7 objectForKey:v21];

  [v8 finish];
  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 session];
    if (v10)
    {
      v11 = v10;
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = [v12 session];
      v14 = [v13 isEqual:*(a1 + 32)];

      if (!v14)
      {
        goto LABEL_6;
      }

      v9 = objc_loadWeakRetained((a1 + 40));
      v15 = [v9 session];
      [v15 endSessionForHandler:v8 withTask:v21];
    }
  }

LABEL_6:
  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 handlers];
  [v17 removeObjectForKey:v21];

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v18 logger];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished task handler %@ for task %@", v8, v21];
  [v19 log:v20];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  taskCopy = task;
  session = [(SWURLSchemeHandlerManager *)self session];
  handlers = [(SWURLSchemeHandlerManager *)self handlers];
  v7 = [handlers objectForKey:taskCopy];

  [v7 cancel];
  if (v7)
  {
    session2 = [(SWURLSchemeHandlerManager *)self session];
    if (session2)
    {
      v9 = session2;
      session3 = [(SWURLSchemeHandlerManager *)self session];
      v11 = [session3 isEqual:session];

      if (v11)
      {
        session4 = [(SWURLSchemeHandlerManager *)self session];
        [session4 endSessionForHandler:v7 withTask:taskCopy];
      }
    }
  }

  handlers2 = [(SWURLSchemeHandlerManager *)self handlers];
  [handlers2 removeObjectForKey:taskCopy];

  logger = [(SWURLSchemeHandlerManager *)self logger];
  taskCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cancel URL scheme handler %@ for task %@", v7, taskCopy];
  [logger log:taskCopy];
}

- (WKWebViewConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

@end