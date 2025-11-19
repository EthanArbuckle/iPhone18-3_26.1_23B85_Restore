@interface SWURLSchemeHandlerManager
- (SWURLSchemeHandlerManager)initWithConfiguration:(id)a3 logger:(id)a4;
- (WKWebViewConfiguration)configuration;
- (void)registerFactory:(id)a3 forScheme:(id)a4;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
@end

@implementation SWURLSchemeHandlerManager

- (SWURLSchemeHandlerManager)initWithConfiguration:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SWURLSchemeHandlerManager;
  v8 = [(SWURLSchemeHandlerManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_configuration, v6);
    objc_storeStrong(&v9->_logger, a4);
    v10 = [MEMORY[0x1E695DF90] dictionary];
    factories = v9->_factories;
    v9->_factories = v10;

    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    handlers = v9->_handlers;
    v9->_handlers = v12;
  }

  return v9;
}

- (void)registerFactory:(id)a3 forScheme:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWURLSchemeHandlerManager *)self factories];
  [v8 setObject:v7 forKey:v6];

  v12 = [[SWWeakURLSchemeHandler alloc] initWithURLSchemeHandler:self];
  v9 = [(SWURLSchemeHandlerManager *)self configuration];
  [v9 setURLSchemeHandler:v12 forURLScheme:v6];

  v10 = [(SWURLSchemeHandlerManager *)self logger];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Register URL scheme handler factory %@ for scheme %@", v7, v6];

  [v10 log:v11];
}

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v32 = a3;
  v6 = a4;
  v33 = [(SWURLSchemeHandlerManager *)self session];
  v7 = [(SWURLSchemeHandlerManager *)self logger];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start URL scheme task with %@", v6];
  [v7 log:v8];

  v9 = [v6 request];
  v10 = [v9 URL];
  v11 = [v10 scheme];

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [(SWURLSchemeHandlerManager *)self factories];
  v13 = [v12 objectForKey:v11];

  v14 = [(SWURLSchemeHandlerManager *)self logger];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found URL scheme handler factory %@ for task %@", v13, v6];
  [v14 log:v15];

  if (!v13)
  {
    goto LABEL_9;
  }

  v16 = [SWURLSchemeTask alloc];
  v17 = [(SWURLSchemeHandlerManager *)self logger];
  v18 = [(SWURLSchemeTask *)v16 initWithTask:v6 logger:v17];

  v19 = [(SWURLSchemeHandlerManager *)self logger];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Created wrapping task %@ for task %@", v18, v6];
  [v19 log:v20];

  objc_initWeak(&location, self);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__SWURLSchemeHandlerManager_webView_startURLSchemeTask___block_invoke;
  v34[3] = &unk_1E84DB9B0;
  objc_copyWeak(&v36, &location);
  v21 = v33;
  v35 = v21;
  [(SWURLSchemeTask *)v18 onCompletion:v34];
  v22 = [v13 createURLSchemeHandlerWithTask:v18];
  if (!v22)
  {

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);

LABEL_9:
    v30 = [(SWURLSchemeHandlerManager *)self logger];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create URL scheme handler for task %@", v6];
    [v30 logError:v31];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:3 userInfo:0];
    [v6 didFailWithError:v13];
    v22 = 0;
    goto LABEL_10;
  }

  v23 = [(SWURLSchemeHandlerManager *)self logger];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Created URL scheme handler %@ for task %@", v22, v6];
  [v23 log:v24];

  v25 = [(SWURLSchemeHandlerManager *)self handlers];
  [v25 setObject:v22 forKey:v6];

  v26 = [(SWURLSchemeHandlerManager *)self session];
  if (v26)
  {
    v27 = [(SWURLSchemeHandlerManager *)self session];
    v28 = [v27 isEqual:v21];

    if (v28)
    {
      v29 = [(SWURLSchemeHandlerManager *)self session];
      [v29 startSessionForHandler:v22 withTask:v6];
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

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  v16 = a4;
  v5 = [(SWURLSchemeHandlerManager *)self session];
  v6 = [(SWURLSchemeHandlerManager *)self handlers];
  v7 = [v6 objectForKey:v16];

  [v7 cancel];
  if (v7)
  {
    v8 = [(SWURLSchemeHandlerManager *)self session];
    if (v8)
    {
      v9 = v8;
      v10 = [(SWURLSchemeHandlerManager *)self session];
      v11 = [v10 isEqual:v5];

      if (v11)
      {
        v12 = [(SWURLSchemeHandlerManager *)self session];
        [v12 endSessionForHandler:v7 withTask:v16];
      }
    }
  }

  v13 = [(SWURLSchemeHandlerManager *)self handlers];
  [v13 removeObjectForKey:v16];

  v14 = [(SWURLSchemeHandlerManager *)self logger];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cancel URL scheme handler %@ for task %@", v7, v16];
  [v14 log:v15];
}

- (WKWebViewConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

@end