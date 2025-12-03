@interface SBBiometricMonitorTestRecipe
- (SBWindowScene)windowScene;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
- (void)windowSceneDidUpdate:(id)update;
@end

@implementation SBBiometricMonitorTestRecipe

- (void)handleVolumeIncrease
{
  if (self->_monitorUI)
  {
    dataSource = self->_dataSource;

    [(SBBiometricMonitorTestRecipeDummyDataSource *)dataSource cycleState];
  }

  else
  {
    v4 = objc_alloc_init(SBBiometricMonitorTestRecipeDummyDataSource);
    v5 = self->_dataSource;
    self->_dataSource = v4;

    v6 = objc_alloc_init(SBBiometricMonitorUI);
    monitorUI = self->_monitorUI;
    self->_monitorUI = v6;

    v8 = self->_monitorUI;
    windowScene = [(SBBiometricMonitorTestRecipe *)self windowScene];
    [(SBBiometricMonitorUI *)v8 setWindowScene:windowScene];

    [(SBBiometricMonitorUI *)self->_monitorUI setDataSource:self->_dataSource];
    v10 = self->_monitorUI;

    [(SBBiometricMonitorUI *)v10 enable];
  }
}

- (void)handleVolumeDecrease
{
  [(SBBiometricMonitorUI *)self->_monitorUI disable];
  monitorUI = self->_monitorUI;
  self->_monitorUI = 0;

  dataSource = self->_dataSource;
  self->_dataSource = 0;
}

- (void)windowSceneDidUpdate:(id)update
{
  updateCopy = update;
  windowScene = [(SBBiometricMonitorTestRecipe *)self windowScene];

  v5 = updateCopy;
  if (windowScene != updateCopy)
  {
    [(SBBiometricMonitorTestRecipe *)self setWindowScene:updateCopy];
    v5 = updateCopy;
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end