@interface SWScriptsManager
- (SWScriptsManager)initWithWebView:(id)a3 documentStateProvider:(id)a4 logger:(id)a5;
- (void)_resumeScriptExecution;
- (void)addScript:(id)a3;
- (void)executeQueuedScripts;
- (void)executeScript:(id)a3 completion:(id)a4;
- (void)executeScriptWithReturnObject:(id)a3 completion:(id)a4;
- (void)queueExecutableScript:(id)a3 scriptExecutionCompletion:(id)a4;
- (void)removeAllScripts;
- (void)removeScript:(id)a3;
- (void)removeScriptByIdentifier:(id)a3;
@end

@implementation SWScriptsManager

- (SWScriptsManager)initWithWebView:(id)a3 documentStateProvider:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = SWScriptsManager;
  v12 = [(SWScriptsManager *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_webView, a3);
    objc_storeStrong(&v13->_logger, a5);
    v14 = [MEMORY[0x1E695DF70] array];
    queuedExecutableScripts = v13->_queuedExecutableScripts;
    v13->_queuedExecutableScripts = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scripts = v13->_scripts;
    v13->_scripts = v16;

    objc_initWeak(&location, v13);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke;
    v23[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v24, &location);
    [v10 onUnload:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke_2;
    v21[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v22, &location);
    [v10 onLoad:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke_3;
    v19[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v20, &location);
    [v10 onReady:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pauseScriptExecution];
}

void __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pauseScriptExecution];
}

void __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeScriptExecution];
}

- (void)addScript:(id)a3
{
  v11 = a3;
  v4 = [v11 userScript];

  if (v4)
  {
    v5 = [(SWScriptsManager *)self scripts];
    v6 = [v11 identifier];
    [v5 setObject:v11 forKey:v6];

    v7 = [(SWScriptsManager *)self webView];
    v8 = [v7 configuration];
    v9 = [v8 userContentController];
    v10 = [v11 userScript];
    [v9 addUserScript:v10];
  }
}

- (void)removeAllScripts
{
  v3 = [(SWScriptsManager *)self scripts];
  [v3 removeAllObjects];

  v6 = [(SWScriptsManager *)self webView];
  v4 = [v6 configuration];
  v5 = [v4 userContentController];
  [v5 removeAllUserScripts];
}

- (void)removeScript:(id)a3
{
  v11 = a3;
  v4 = [v11 userScript];

  if (v4)
  {
    v5 = [(SWScriptsManager *)self scripts];
    v6 = [v11 identifier];
    [v5 removeObjectForKey:v6];

    v7 = [(SWScriptsManager *)self webView];
    v8 = [v7 configuration];
    v9 = [v8 userContentController];
    v10 = [v11 userScript];
    [v9 _removeUserScript:v10];
  }
}

- (void)removeScriptByIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SWScriptsManager *)self scripts];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [(SWScriptsManager *)self removeScript:v7];
    v6 = v7;
  }
}

- (void)_resumeScriptExecution
{
  [(SWScriptsManager *)self setReadyToExecuteScripts:1];

  [(SWScriptsManager *)self executeQueuedScripts];
}

- (void)executeScript:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SWScriptsManager_executeScript_completion___block_invoke;
  v8[3] = &unk_1E84DB2E0;
  v9 = v6;
  v7 = v6;
  [(SWScriptsManager *)self executeScriptWithReturnObject:a3 completion:v8];
}

uint64_t __45__SWScriptsManager_executeScript_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)executeScriptWithReturnObject:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 executableScript];
  if (v8)
  {
    v9 = [(SWScriptsManager *)self readyToExecuteScripts];
    v10 = [(SWScriptsManager *)self logger];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v6 identifier];
    v13 = v12;
    if (v9)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v11 stringWithFormat:@"Script: Executing script with identifier: %@ script: %@", v13, v15];;
      [v10 log:v16];

      v17 = [(SWScriptsManager *)self webView];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__SWScriptsManager_executeScriptWithReturnObject_completion___block_invoke;
      v19[3] = &unk_1E84DBC20;
      v19[4] = self;
      v20 = v6;
      v21 = v8;
      v22 = v7;
      [v17 evaluateJavaScript:v21 completionHandler:v19];
    }

    else
    {
      v18 = [v11 stringWithFormat:@"Script: Queuing script with identifier: %@", v12];
      [v10 log:v18];

      [(SWScriptsManager *)self queueExecutableScript:v6 scriptExecutionCompletion:v7];
    }
  }
}

void __61__SWScriptsManager_executeScriptWithReturnObject_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) logger];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v6 localizedDescription];
    v10 = *(a1 + 40);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v8 stringWithFormat:@"Failed to evaluate JavaScript with error: %@ script class=%@; script=%@", v9, v12, *(a1 + 48)];;
    [v7 logError:v13];
  }

  if (*(a1 + 56))
  {
    v14 = [*(a1 + 32) webView];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__SWScriptsManager_executeScriptWithReturnObject_completion___block_invoke_2;
    v15[3] = &unk_1E84DBBF8;
    v17 = *(a1 + 56);
    v16 = v5;
    [v14 _doAfterNextPresentationUpdate:v15];
  }
}

- (void)queueExecutableScript:(id)a3 scriptExecutionCompletion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 queueable] & 1) == 0)
  {
    v23 = v7;
    v24 = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [(SWScriptsManager *)self queuedExecutableScripts];
    v9 = [v8 copy];

    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          v15 = [v6 identifier];
          v16 = [v14 script];
          v17 = [v16 identifier];
          v18 = [v15 isEqualToString:v17];

          if (v18)
          {
            v19 = [(SWScriptsManager *)v24 queuedExecutableScripts];
            [v19 removeObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v7 = v23;
    self = v24;
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }
  }

  v20 = [[SWQueueableScriptWithCompletion alloc] initWithScript:v6 completion:v7];
  v21 = [(SWScriptsManager *)self queuedExecutableScripts];
  [v21 addObject:v20];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)executeQueuedScripts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SWScriptsManager *)self queuedExecutableScripts];
  v4 = [v3 copy];

  v5 = [(SWScriptsManager *)self queuedExecutableScripts];
  [v5 removeAllObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 script];
        v13 = [v11 completion];
        [(SWScriptsManager *)self executeScriptWithReturnObject:v12 completion:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end