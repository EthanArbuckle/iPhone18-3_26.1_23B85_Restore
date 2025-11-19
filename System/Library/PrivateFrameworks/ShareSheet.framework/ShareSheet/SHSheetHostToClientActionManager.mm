@interface SHSheetHostToClientActionManager
+ (SHSheetHostToClientActionManager)shared;
+ (void)receivedAction:(id)a3 forWindowScene:(id)a4;
+ (void)registerHandler:(id)a3 forHostedWindowScene:(id)a4;
+ (void)unregisterHandlerForHostedWindowScene:(id)a3;
- (SHSheetHostToClientActionManager)init;
- (id)_handlerForHostingController:(id)a3;
@end

@implementation SHSheetHostToClientActionManager

- (SHSheetHostToClientActionManager)init
{
  v6.receiver = self;
  v6.super_class = SHSheetHostToClientActionManager;
  v2 = [(SHSheetHostToClientActionManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    sceneProvidersToHandlers = v2->_sceneProvidersToHandlers;
    v2->_sceneProvidersToHandlers = v3;
  }

  return v2;
}

+ (SHSheetHostToClientActionManager)shared
{
  if (shared_onceToken != -1)
  {
    +[SHSheetHostToClientActionManager shared];
  }

  v3 = shared_sharedHandler;

  return v3;
}

void __42__SHSheetHostToClientActionManager_shared__block_invoke()
{
  v0 = objc_alloc_init(SHSheetHostToClientActionManager);
  v1 = shared_sharedHandler;
  shared_sharedHandler = v0;
}

+ (void)registerHandler:(id)a3 forHostedWindowScene:(id)a4
{
  v5 = a4;
  v6 = a3;
  v11 = +[SHSheetHostToClientActionManager shared];
  v7 = [v11 sceneProvidersToHandlers];
  [v7 objectForKeyedSubscript:v5];

  v8 = [v6 copy];
  v9 = MEMORY[0x18CFF58E0](v8);
  v10 = [v11 sceneProvidersToHandlers];
  [v10 setObject:v9 forKeyedSubscript:v5];
}

+ (void)unregisterHandlerForHostedWindowScene:(id)a3
{
  v3 = a3;
  v5 = +[SHSheetHostToClientActionManager shared];
  v4 = [v5 sceneProvidersToHandlers];
  [v4 removeObjectForKey:v3];
}

+ (void)receivedAction:(id)a3 forWindowScene:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = +[SHSheetHostToClientActionManager shared];
  v7 = [v6 _handlerForHostingController:v5];

  if (v7)
  {
    (v7)[2](v7, v8);
  }
}

- (id)_handlerForHostingController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SHSheetHostToClientActionManager *)self sceneProvidersToHandlers];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 hostedWindowScene];

        if (v12 == v4)
        {
          v14 = [(SHSheetHostToClientActionManager *)self sceneProvidersToHandlers];
          v13 = [v14 objectForKeyedSubscript:v11];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end