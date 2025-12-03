@interface SBMainDisplayRootWindowScenePresentationBinder
+ (id)sharedInstance;
- (id)_init;
- (id)assertDisconnectionFromRenderServerForReason:(id)reason;
- (void)_disconnectFromRenderServer;
- (void)_reconnectToRenderServer;
@end

@implementation SBMainDisplayRootWindowScenePresentationBinder

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_0 != -1)
  {
    +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
  }

  v3 = sharedInstance___instance_10;

  return v3;
}

void __64__SBMainDisplayRootWindowScenePresentationBinder_sharedInstance__block_invoke()
{
  v0 = [[SBMainDisplayRootWindowScenePresentationBinder alloc] _init];
  v1 = sharedInstance___instance_10;
  sharedInstance___instance_10 = v0;
}

- (id)_init
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"SBRootSceneWindow-%@-%p", v5, self];

  v7 = [SBRootSceneWindow alloc];
  mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
  v9 = [(SBRootSceneWindow *)v7 initWithDisplayConfiguration:mainConfiguration];

  v13.receiver = self;
  v13.super_class = SBMainDisplayRootWindowScenePresentationBinder;
  v10 = [(SBRootWindowScenePresentationBinder *)&v13 initWithIdentifier:v6 priority:-10 appearanceStyle:0 rootWindow:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_rootWindow, v9);
  }

  return v11;
}

- (id)assertDisconnectionFromRenderServerForReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  if (!self->_disconnectionAssertions)
  {
    v5 = objc_opt_new();
    disconnectionAssertions = self->_disconnectionAssertions;
    self->_disconnectionAssertions = v5;
  }

  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__SBMainDisplayRootWindowScenePresentationBinder_assertDisconnectionFromRenderServerForReason___block_invoke;
  v12[3] = &unk_2783A8A98;
  v12[4] = self;
  v8 = [v7 initWithIdentifier:@"RenderServerDisconnect" forReason:reasonCopy queue:MEMORY[0x277D85CD0] invalidationBlock:v12];

  [(NSMutableArray *)self->_disconnectionAssertions addObject:v8];
  if ([(NSMutableArray *)self->_disconnectionAssertions count]== 1)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_disconnectionAssertions;
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "disconnect from renderserver:%{public}@", buf, 0xCu);
    }

    [(SBMainDisplayRootWindowScenePresentationBinder *)self _disconnectFromRenderServer];
  }

  return v8;
}

uint64_t __95__SBMainDisplayRootWindowScenePresentationBinder_assertDisconnectionFromRenderServerForReason___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 144) removeObject:a2];
  result = [*(*(a1 + 32) + 144) count];
  if (!result)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "reconnect to renderserver", v5, 2u);
    }

    return [*(a1 + 32) _reconnectToRenderServer];
  }

  return result;
}

- (void)_disconnectFromRenderServer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBMainDisplayRootWindowScenePresentationBinder.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"_disconnectedFromScene == nil"}];
}

- (void)_reconnectToRenderServer
{
  if (self->_disconnectedFromScene)
  {
    [(SBRootSceneWindow *)self->_rootWindow setWindowScene:?];
    disconnectedFromScene = self->_disconnectedFromScene;
    self->_disconnectedFromScene = 0;
  }

  rootWindow = self->_rootWindow;

  [(_UIRootWindow *)rootWindow setHidden:0];
}

@end