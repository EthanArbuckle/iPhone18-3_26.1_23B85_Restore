@interface SWDocumentStateManager
- (BOOL)isDocumentReady;
- (SWDocumentStateManager)initWithUserContentController:(id)a3;
- (void)documentIsReady;
- (void)documentStartedLoading;
- (void)documentWillUnload;
- (void)onLoad:(id)a3;
- (void)onReady:(id)a3;
- (void)onUnload:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation SWDocumentStateManager

- (SWDocumentStateManager)initWithUserContentController:(id)a3
{
  v43[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v41.receiver = self;
  v41.super_class = SWDocumentStateManager;
  v6 = [(SWDocumentStateManager *)&v41 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userContentController, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    onReadyBlocks = v7->_onReadyBlocks;
    v7->_onReadyBlocks = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    onLoadBlocks = v7->_onLoadBlocks;
    v7->_onLoadBlocks = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    onUnloadBlocks = v7->_onUnloadBlocks;
    v7->_onUnloadBlocks = v12;

    v39 = [[SWWeakScriptMessageHandler alloc] initWithScriptMessageHandler:v7];
    [v5 addScriptMessageHandler:v39 name:@"documentReady"];
    v38 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:@"window.webkit.messageHandlers.documentReady.postMessage({});" injectionTime:0 forMainFrameOnly:1];
    [v5 addUserScript:v38];
    v36 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
    v14 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"loading"];
    v15 = [v14 onWillEnter:&__block_literal_global];
    v16 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"ready"];
    v17 = [v16 onWillEnter:&__block_literal_global_18];
    v18 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"unload"];
    v19 = [v18 onWillEnter:&__block_literal_global_23];
    v40 = v5;
    v20 = objc_alloc(MEMORY[0x1E69B6910]);
    v21 = MEMORY[0x1E695DFD8];
    v43[0] = v36;
    v43[1] = v18;
    v43[2] = v16;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
    v23 = [v21 setWithArray:v22];
    v37 = [v20 initWithName:@"loading" transitionFromStates:v23 toState:v14];

    v24 = objc_alloc(MEMORY[0x1E69B6910]);
    v25 = [MEMORY[0x1E695DFD8] setWithObject:v14];
    v26 = [v24 initWithName:@"ready" transitionFromStates:v25 toState:v16];

    v27 = objc_alloc(MEMORY[0x1E69B6910]);
    v28 = MEMORY[0x1E695DFD8];
    v42[0] = v14;
    v42[1] = v16;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v30 = [v28 setWithArray:v29];
    v31 = [v27 initWithName:@"unload" transitionFromStates:v30 toState:v18];

    v5 = v40;
    v32 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v36 withOwner:v7];
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v32;

    [(NFStateMachine *)v7->_stateMachine addState:v14];
    [(NFStateMachine *)v7->_stateMachine addState:v16];
    [(NFStateMachine *)v7->_stateMachine addState:v18];
    [(NFStateMachine *)v7->_stateMachine addEvent:v37];
    [(NFStateMachine *)v7->_stateMachine addEvent:v26];
    [(NFStateMachine *)v7->_stateMachine addEvent:v31];
    [(NFStateMachine *)v7->_stateMachine activate];
  }

  v34 = *MEMORY[0x1E69E9840];
  return v7;
}

void __56__SWDocumentStateManager_initWithUserContentController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 onLoadBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__SWDocumentStateManager_initWithUserContentController___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 onReadyBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__SWDocumentStateManager_initWithUserContentController___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 onUnloadBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)documentStartedLoading
{
  v3 = [(SWDocumentStateManager *)self stateMachine];
  v2 = [v3 fireEventWithName:@"loading" withContext:0];
}

- (void)documentIsReady
{
  v3 = [(SWDocumentStateManager *)self stateMachine];
  v2 = [v3 fireEventWithName:@"ready" withContext:0];
}

- (void)documentWillUnload
{
  v3 = [(SWDocumentStateManager *)self stateMachine];
  v2 = [v3 fireEventWithName:@"unload" withContext:0];
}

- (void)onReady:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWDocumentStateManager *)self onReadyBlocks];
    v5 = MEMORY[0x1DA6FDA60](v4);

    [v6 addObject:v5];
  }
}

- (void)onLoad:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWDocumentStateManager *)self onLoadBlocks];
    v5 = MEMORY[0x1DA6FDA60](v4);

    [v6 addObject:v5];
  }
}

- (void)onUnload:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWDocumentStateManager *)self onUnloadBlocks];
    v5 = MEMORY[0x1DA6FDA60](v4);

    [v6 addObject:v5];
  }
}

- (BOOL)isDocumentReady
{
  v2 = [(SWDocumentStateManager *)self stateMachine];
  v3 = [v2 state];
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"ready"];

  return v5;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v5 = [a4 name];
  v6 = [v5 isEqualToString:@"documentReady"];

  if (v6)
  {

    [(SWDocumentStateManager *)self documentIsReady];
  }
}

@end