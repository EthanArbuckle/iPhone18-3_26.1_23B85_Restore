@interface SWScriptsManager
- (SWScriptsManager)initWithWebView:(id)view documentStateProvider:(id)provider logger:(id)logger;
- (void)_resumeScriptExecution;
- (void)addScript:(id)script;
- (void)executeQueuedScripts;
- (void)executeScript:(id)script completion:(id)completion;
- (void)executeScriptWithReturnObject:(id)object completion:(id)completion;
- (void)queueExecutableScript:(id)script scriptExecutionCompletion:(id)completion;
- (void)removeAllScripts;
- (void)removeScript:(id)script;
- (void)removeScriptByIdentifier:(id)identifier;
@end

@implementation SWScriptsManager

- (SWScriptsManager)initWithWebView:(id)view documentStateProvider:(id)provider logger:(id)logger
{
  viewCopy = view;
  providerCopy = provider;
  loggerCopy = logger;
  v26.receiver = self;
  v26.super_class = SWScriptsManager;
  v12 = [(SWScriptsManager *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_webView, view);
    objc_storeStrong(&v13->_logger, logger);
    array = [MEMORY[0x1E695DF70] array];
    queuedExecutableScripts = v13->_queuedExecutableScripts;
    v13->_queuedExecutableScripts = array;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scripts = v13->_scripts;
    v13->_scripts = v16;

    objc_initWeak(&location, v13);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke;
    v23[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v24, &location);
    [providerCopy onUnload:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke_2;
    v21[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v22, &location);
    [providerCopy onLoad:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__SWScriptsManager_initWithWebView_documentStateProvider_logger___block_invoke_3;
    v19[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v20, &location);
    [providerCopy onReady:v19];
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

- (void)addScript:(id)script
{
  scriptCopy = script;
  userScript = [scriptCopy userScript];

  if (userScript)
  {
    scripts = [(SWScriptsManager *)self scripts];
    identifier = [scriptCopy identifier];
    [scripts setObject:scriptCopy forKey:identifier];

    webView = [(SWScriptsManager *)self webView];
    configuration = [webView configuration];
    userContentController = [configuration userContentController];
    userScript2 = [scriptCopy userScript];
    [userContentController addUserScript:userScript2];
  }
}

- (void)removeAllScripts
{
  scripts = [(SWScriptsManager *)self scripts];
  [scripts removeAllObjects];

  webView = [(SWScriptsManager *)self webView];
  configuration = [webView configuration];
  userContentController = [configuration userContentController];
  [userContentController removeAllUserScripts];
}

- (void)removeScript:(id)script
{
  scriptCopy = script;
  userScript = [scriptCopy userScript];

  if (userScript)
  {
    scripts = [(SWScriptsManager *)self scripts];
    identifier = [scriptCopy identifier];
    [scripts removeObjectForKey:identifier];

    webView = [(SWScriptsManager *)self webView];
    configuration = [webView configuration];
    userContentController = [configuration userContentController];
    userScript2 = [scriptCopy userScript];
    [userContentController _removeUserScript:userScript2];
  }
}

- (void)removeScriptByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scripts = [(SWScriptsManager *)self scripts];
  v7 = [scripts objectForKey:identifierCopy];

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

- (void)executeScript:(id)script completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SWScriptsManager_executeScript_completion___block_invoke;
  v8[3] = &unk_1E84DB2E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SWScriptsManager *)self executeScriptWithReturnObject:script completion:v8];
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

- (void)executeScriptWithReturnObject:(id)object completion:(id)completion
{
  objectCopy = object;
  completionCopy = completion;
  executableScript = [objectCopy executableScript];
  if (executableScript)
  {
    readyToExecuteScripts = [(SWScriptsManager *)self readyToExecuteScripts];
    logger = [(SWScriptsManager *)self logger];
    v11 = MEMORY[0x1E696AEC0];
    identifier = [objectCopy identifier];
    v13 = identifier;
    if (readyToExecuteScripts)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v11 stringWithFormat:@"Script: Executing script with identifier: %@ script: %@", v13, v15];;
      [logger log:v16];

      webView = [(SWScriptsManager *)self webView];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__SWScriptsManager_executeScriptWithReturnObject_completion___block_invoke;
      v19[3] = &unk_1E84DBC20;
      v19[4] = self;
      v20 = objectCopy;
      v21 = executableScript;
      v22 = completionCopy;
      [webView evaluateJavaScript:v21 completionHandler:v19];
    }

    else
    {
      v18 = [v11 stringWithFormat:@"Script: Queuing script with identifier: %@", identifier];
      [logger log:v18];

      [(SWScriptsManager *)self queueExecutableScript:objectCopy scriptExecutionCompletion:completionCopy];
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

- (void)queueExecutableScript:(id)script scriptExecutionCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  scriptCopy = script;
  completionCopy = completion;
  if (([scriptCopy queueable] & 1) == 0)
  {
    v23 = completionCopy;
    selfCopy = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    queuedExecutableScripts = [(SWScriptsManager *)self queuedExecutableScripts];
    v9 = [queuedExecutableScripts copy];

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
          identifier = [scriptCopy identifier];
          script = [v14 script];
          identifier2 = [script identifier];
          v18 = [identifier isEqualToString:identifier2];

          if (v18)
          {
            queuedExecutableScripts2 = [(SWScriptsManager *)selfCopy queuedExecutableScripts];
            [queuedExecutableScripts2 removeObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    completionCopy = v23;
    self = selfCopy;
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }
  }

  v20 = [[SWQueueableScriptWithCompletion alloc] initWithScript:scriptCopy completion:completionCopy];
  queuedExecutableScripts3 = [(SWScriptsManager *)self queuedExecutableScripts];
  [queuedExecutableScripts3 addObject:v20];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)executeQueuedScripts
{
  v20 = *MEMORY[0x1E69E9840];
  queuedExecutableScripts = [(SWScriptsManager *)self queuedExecutableScripts];
  v4 = [queuedExecutableScripts copy];

  queuedExecutableScripts2 = [(SWScriptsManager *)self queuedExecutableScripts];
  [queuedExecutableScripts2 removeAllObjects];

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
        script = [v11 script];
        completion = [v11 completion];
        [(SWScriptsManager *)self executeScriptWithReturnObject:script completion:completion];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end