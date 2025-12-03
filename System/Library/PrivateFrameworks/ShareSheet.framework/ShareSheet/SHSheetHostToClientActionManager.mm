@interface SHSheetHostToClientActionManager
+ (SHSheetHostToClientActionManager)shared;
+ (void)receivedAction:(id)action forWindowScene:(id)scene;
+ (void)registerHandler:(id)handler forHostedWindowScene:(id)scene;
+ (void)unregisterHandlerForHostedWindowScene:(id)scene;
- (SHSheetHostToClientActionManager)init;
- (id)_handlerForHostingController:(id)controller;
@end

@implementation SHSheetHostToClientActionManager

- (SHSheetHostToClientActionManager)init
{
  v6.receiver = self;
  v6.super_class = SHSheetHostToClientActionManager;
  v2 = [(SHSheetHostToClientActionManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sceneProvidersToHandlers = v2->_sceneProvidersToHandlers;
    v2->_sceneProvidersToHandlers = dictionary;
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

+ (void)registerHandler:(id)handler forHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  handlerCopy = handler;
  v11 = +[SHSheetHostToClientActionManager shared];
  sceneProvidersToHandlers = [v11 sceneProvidersToHandlers];
  [sceneProvidersToHandlers objectForKeyedSubscript:sceneCopy];

  v8 = [handlerCopy copy];
  v9 = MEMORY[0x18CFF58E0](v8);
  sceneProvidersToHandlers2 = [v11 sceneProvidersToHandlers];
  [sceneProvidersToHandlers2 setObject:v9 forKeyedSubscript:sceneCopy];
}

+ (void)unregisterHandlerForHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = +[SHSheetHostToClientActionManager shared];
  sceneProvidersToHandlers = [v5 sceneProvidersToHandlers];
  [sceneProvidersToHandlers removeObjectForKey:sceneCopy];
}

+ (void)receivedAction:(id)action forWindowScene:(id)scene
{
  actionCopy = action;
  sceneCopy = scene;
  v6 = +[SHSheetHostToClientActionManager shared];
  v7 = [v6 _handlerForHostingController:sceneCopy];

  if (v7)
  {
    (v7)[2](v7, actionCopy);
  }
}

- (id)_handlerForHostingController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sceneProvidersToHandlers = [(SHSheetHostToClientActionManager *)self sceneProvidersToHandlers];
  allKeys = [sceneProvidersToHandlers allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        hostedWindowScene = [v11 hostedWindowScene];

        if (hostedWindowScene == controllerCopy)
        {
          sceneProvidersToHandlers2 = [(SHSheetHostToClientActionManager *)self sceneProvidersToHandlers];
          v13 = [sceneProvidersToHandlers2 objectForKeyedSubscript:v11];

          goto LABEL_11;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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