@interface SBPrototypeController
+ (SBPrototypeController)sharedInstance;
- (BOOL)_handlePrototypingEvent:(int64_t)a3;
- (BOOL)_shouldSendEvent:(int64_t)a3;
- (SBPrototypeController)init;
- (SBRestartManager)restartManager;
- (SBWindowScene)windowScene;
- (id)rootSettings;
- (void)_acquireRemotePrototypingAssertion;
- (void)_createConnection;
- (void)_invalidateRemotePrototypingAssertion;
- (void)_sendEvent:(int64_t)a3;
- (void)_updateRemoteEditingState;
- (void)killSpringBoard;
- (void)restartSpringBoard;
- (void)setWindowScene:(id)a3;
@end

@implementation SBPrototypeController

+ (SBPrototypeController)sharedInstance
{
  if (sharedInstance___once_10 != -1)
  {
    +[SBPrototypeController sharedInstance];
  }

  v3 = sharedInstance___instance_11;

  return v3;
}

- (id)rootSettings
{
  rootSettings = self->_rootSettings;
  if (!rootSettings)
  {
    v4 = [(_UISettings *)[SBRootSettings alloc] initWithDefaultValues];
    v5 = self->_rootSettings;
    self->_rootSettings = v4;

    rootSettings = self->_rootSettings;
  }

  return rootSettings;
}

void __39__SBPrototypeController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBPrototypeController);
  v1 = sharedInstance___instance_11;
  sharedInstance___instance_11 = v0;
}

- (SBPrototypeController)init
{
  v12.receiver = self;
  v12.super_class = SBPrototypeController;
  v2 = [(SBPrototypeController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(SBPrototypeController *)v2 _updateKeyHIDEventRouters];
    [(SBPrototypeController *)v3 _updateRemoteEditingState];
    v4 = [MEMORY[0x277D431C0] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__SBPrototypeController_init__block_invoke;
    v10[3] = &unk_2783A8C18;
    v5 = v3;
    v11 = v5;
    v6 = [v4 observeEventDefaultsOnQueue:MEMORY[0x277D85CD0] withBlock:v10];

    +[SBTestRecipeRegistrar registerAllTestRecipes];
    v7 = objc_alloc_init(SBPrototypeDumpingGround);
    dumpingGround = v5->_dumpingGround;
    v5->_dumpingGround = v7;
  }

  return v3;
}

uint64_t __29__SBPrototypeController_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateKeyHIDEventRouters];
  v2 = *(a1 + 32);

  return [v2 _updateRemoteEditingState];
}

- (void)setWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_windowScene, obj);
    [SBTestRecipeRegistrar registerWindowScene:obj];
    [(SBPrototypeDumpingGround *)self->_dumpingGround setWindowScene:obj];
  }
}

- (void)restartSpringBoard
{
  v4 = [[SBRestartTransitionRequest alloc] initWithRequester:@"SBPrototypeController" reason:@"Prototyping"];
  v3 = [(SBPrototypeController *)self restartManager];
  [v3 restartWithTransitionRequest:v4];
}

- (void)killSpringBoard
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SBPrototypeController_killSpringBoard__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_handlePrototypingEvent:(int64_t)a3
{
  v5 = [(SBPrototypeController *)self _shouldSendEvent:?];
  if (v5)
  {
    [(SBPrototypeController *)self _sendEvent:a3];
  }

  return v5;
}

- (BOOL)_shouldSendEvent:(int64_t)a3
{
  v4 = +[SBPlatformController sharedInstance];
  if ([v4 isInternalInstall])
  {
    v5 = [MEMORY[0x277D431C0] sharedInstance];
    v6 = [v5 prototypingServerWantsEvent:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_sendEvent:(int64_t)a3
{
  prototypingUIServerConnection = self->_prototypingUIServerConnection;
  if (!prototypingUIServerConnection)
  {
    [(SBPrototypeController *)self _createConnection];
    prototypingUIServerConnection = self->_prototypingUIServerConnection;
  }

  v6 = [(NSXPCConnection *)prototypingUIServerConnection remoteObjectProxy];
  [v6 handlePrototypingEvent:a3];
}

- (void)_createConnection
{
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x277D432E8] options:4096];
  prototypingUIServerConnection = self->_prototypingUIServerConnection;
  self->_prototypingUIServerConnection = v4;

  v6 = self->_prototypingUIServerConnection;
  v7 = PTUIServerInterface();
  [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

  v8 = self->_prototypingUIServerConnection;
  v9 = PTUIClientInterface();
  [(NSXPCConnection *)v8 setExportedInterface:v9];

  [(NSXPCConnection *)self->_prototypingUIServerConnection setExportedObject:self];
  v10 = self->_prototypingUIServerConnection;

  [(NSXPCConnection *)v10 resume];
}

- (void)_updateRemoteEditingState
{
  v3 = +[SBPlatformController sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = [MEMORY[0x277D431C0] sharedInstance];
    v6 = [v5 remotePrototypingEnabled];

    if (v6)
    {
      prototypingUIServerConnection = self->_prototypingUIServerConnection;
      if (!prototypingUIServerConnection)
      {
        [(SBPrototypeController *)self _createConnection];
        prototypingUIServerConnection = self->_prototypingUIServerConnection;
      }

      v8 = [(NSXPCConnection *)prototypingUIServerConnection remoteObjectProxy];
      [v8 launchForRemoteEditing];

      [(SBPrototypeController *)self _acquireRemotePrototypingAssertion];
    }

    else
    {

      [(SBPrototypeController *)self _invalidateRemotePrototypingAssertion];
    }
  }
}

- (void)_acquireRemotePrototypingAssertion
{
  if (!self->_remotePrototypingAssertion)
  {
    v3 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BC30] forPID:getpid() exclusive:1 showsWhenForeground:0];
    remotePrototypingAssertion = self->_remotePrototypingAssertion;
    self->_remotePrototypingAssertion = v3;

    [(SBSBackgroundActivityAssertion *)self->_remotePrototypingAssertion setStatusString:@"Remote Prototyping"];
    objc_initWeak(&location, self);
    v5 = self->_remotePrototypingAssertion;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SBPrototypeController__acquireRemotePrototypingAssertion__block_invoke;
    v8[3] = &unk_2783AC358;
    objc_copyWeak(&v9, &location);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__SBPrototypeController__acquireRemotePrototypingAssertion__block_invoke_2;
    v6[3] = &unk_2783A8C68;
    objc_copyWeak(&v7, &location);
    [(SBSBackgroundActivityAssertion *)v5 acquireWithHandler:v8 invalidationHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __59__SBPrototypeController__acquireRemotePrototypingAssertion__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _invalidateRemotePrototypingAssertion];
  }
}

void __59__SBPrototypeController__acquireRemotePrototypingAssertion__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateRemotePrototypingAssertion];
}

- (void)_invalidateRemotePrototypingAssertion
{
  remotePrototypingAssertion = self->_remotePrototypingAssertion;
  if (remotePrototypingAssertion)
  {
    [(SBSBackgroundActivityAssertion *)remotePrototypingAssertion invalidate];
    v4 = self->_remotePrototypingAssertion;
    self->_remotePrototypingAssertion = 0;
  }
}

- (SBRestartManager)restartManager
{
  WeakRetained = objc_loadWeakRetained(&self->_restartManager);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end