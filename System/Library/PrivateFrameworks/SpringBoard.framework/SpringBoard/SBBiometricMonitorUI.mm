@interface SBBiometricMonitorUI
- (SBBiometricMonitorUI)init;
- (SBWindowScene)windowScene;
- (void)_deferredUpdateMatchState;
- (void)_deferredUpdatePresenceDetectState;
- (void)_updateMatchState;
- (void)_updatePresenceDetectState;
- (void)biometricMonitorDataSourceMatchingEnded:(id)ended;
- (void)biometricMonitorDataSourceMatchingFailed:(id)failed;
- (void)biometricMonitorDataSourceMatchingStarted:(id)started;
- (void)biometricMonitorDataSourceMatchingSucceeded:(id)succeeded;
- (void)biometricMonitorDataSourcePoseUpdated:(id)updated;
- (void)biometricMonitorDataSourcePresenceDetectionEnded:(id)ended;
- (void)biometricMonitorDataSourcePresenceDetectionFailed:(id)failed;
- (void)biometricMonitorDataSourcePresenceDetectionStarted:(id)started;
- (void)biometricMonitorDataSourcePresenceDetectionSucceeded:(id)succeeded;
- (void)disable;
- (void)enable;
- (void)setDataSource:(id)source;
@end

@implementation SBBiometricMonitorUI

- (SBBiometricMonitorUI)init
{
  v5.receiver = self;
  v5.super_class = SBBiometricMonitorUI;
  v2 = [(SBBiometricMonitorUI *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBBiometricMonitorUI *)v2 setDataSource:0];
  }

  return v3;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  p_dataSource = &self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v8 = sourceCopy;
    objc_storeStrong(p_dataSource, source);
    sourceCopy = v8;
  }
}

- (void)enable
{
  if (!self->_enabled)
  {
    [(SBBiometricMonitorDataSource *)self->_dataSource addObserver:self];
    v3 = objc_alloc_init(SBBiometricMonitorViewController);
    debugViewController = self->_debugViewController;
    self->_debugViewController = v3;

    [(SBBiometricMonitorUI *)self _updateMatchState];
    [(SBBiometricMonitorUI *)self _updatePresenceDetectState];
    v5 = [SBSecureWindow alloc];
    windowScene = [(SBBiometricMonitorUI *)self windowScene];
    v7 = [(SBWindow *)v5 initWithWindowScene:windowScene role:@"SBTraitsParticipantRoleBiometricMonitorUI" debugName:@"SBBiometricMonitorUI"];
    debugWindow = self->_debugWindow;
    self->_debugWindow = v7;

    [(UIWindow *)self->_debugWindow setLevel:*MEMORY[0x277D76EE8] + 250.0 + -5.0];
    [(UIWindow *)self->_debugWindow setAlpha:0.8];
    [(UIWindow *)self->_debugWindow setRootViewController:self->_debugViewController];
    [(UIWindow *)self->_debugWindow setHidden:0];
    layer = [(UIWindow *)self->_debugWindow layer];
    [layer setAllowsHitTesting:0];

    [(UIWindow *)self->_debugWindow setUserInteractionEnabled:0];
    v10 = self->_debugWindow;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIWindow *)v10 setBackgroundColor:clearColor];

    self->_enabled = 1;
  }
}

- (void)disable
{
  if (self->_enabled)
  {
    [(SBBiometricMonitorDataSource *)self->_dataSource removeObserver:self];
    debugViewController = self->_debugViewController;
    self->_debugViewController = 0;

    [(UIWindow *)self->_debugWindow setRootViewController:0];
    debugWindow = self->_debugWindow;
    self->_debugWindow = 0;

    self->_enabled = 0;
  }
}

- (void)_updateMatchState
{
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setMatchState:{-[SBBiometricMonitorDataSource matchRunning](self->_dataSource, "matchRunning")}];
}

- (void)_updatePresenceDetectState
{
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setPresenceDetectState:{-[SBBiometricMonitorDataSource presenceDetectRunning](self->_dataSource, "presenceDetectRunning")}];
}

- (void)_deferredUpdateMatchState
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdateMatchState];
  self->_deferredMatchUpdatePending = 1;

  [(SBBiometricMonitorUI *)self performSelector:sel__doDeferredMatchStateUpdate withObject:0 afterDelay:1.0];
}

- (void)_deferredUpdatePresenceDetectState
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdateMatchState];
  self->_deferredPresenceDetectUpdatePending = 1;

  [(SBBiometricMonitorUI *)self performSelector:sel__doDeferredPresenceDetectUpdate withObject:0 afterDelay:1.0];
}

- (void)biometricMonitorDataSourceMatchingStarted:(id)started
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdateMatchState];
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setMatchState:1];

  [(SBBiometricMonitorUI *)self _updatePresenceDetectState];
}

- (void)biometricMonitorDataSourceMatchingFailed:(id)failed
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdateMatchState];
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setMatchState:3];

  [(SBBiometricMonitorUI *)self _updatePresenceDetectState];

  [(SBBiometricMonitorUI *)self _deferredUpdateMatchState];
}

- (void)biometricMonitorDataSourceMatchingSucceeded:(id)succeeded
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdateMatchState];
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setMatchState:2];

  [(SBBiometricMonitorUI *)self _updatePresenceDetectState];

  [(SBBiometricMonitorUI *)self _deferredUpdateMatchState];
}

- (void)biometricMonitorDataSourceMatchingEnded:(id)ended
{
  if (![(SBBiometricMonitorUI *)self _isDeferredMatchStateUpdatePending])
  {
    [(SBBiometricMonitorUI *)self _updateMatchState];
  }

  if (![(SBBiometricMonitorUI *)self _isDeferredPresenceDetectStateUpdatePending])
  {

    [(SBBiometricMonitorUI *)self _updatePresenceDetectState];
  }
}

- (void)biometricMonitorDataSourcePresenceDetectionStarted:(id)started
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdatePresenceDetectState];

  [(SBBiometricMonitorUI *)self _updatePresenceDetectState];
}

- (void)biometricMonitorDataSourcePresenceDetectionFailed:(id)failed
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdatePresenceDetectState];
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setPresenceDetectState:3];

  [(SBBiometricMonitorUI *)self _deferredUpdatePresenceDetectState];
}

- (void)biometricMonitorDataSourcePresenceDetectionSucceeded:(id)succeeded
{
  [(SBBiometricMonitorUI *)self _cancelDeferredUpdatePresenceDetectState];
  monitorView = [(SBBiometricMonitorViewController *)self->_debugViewController monitorView];
  [monitorView setPresenceDetectState:2];

  [(SBBiometricMonitorUI *)self _deferredUpdatePresenceDetectState];
}

- (void)biometricMonitorDataSourcePresenceDetectionEnded:(id)ended
{
  if (![(SBBiometricMonitorUI *)self _isDeferredPresenceDetectStateUpdatePending])
  {

    [(SBBiometricMonitorUI *)self _updatePresenceDetectState];
  }
}

- (void)biometricMonitorDataSourcePoseUpdated:(id)updated
{
  debugViewController = self->_debugViewController;
  updatedCopy = updated;
  monitorView = [(SBBiometricMonitorViewController *)debugViewController monitorView];
  LODWORD(debugViewController) = [updatedCopy poseIsMarginal];

  [monitorView setPoseState:debugViewController];
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end