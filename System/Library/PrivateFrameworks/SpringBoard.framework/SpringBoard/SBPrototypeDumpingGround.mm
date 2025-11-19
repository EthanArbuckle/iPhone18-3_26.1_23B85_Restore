@interface SBPrototypeDumpingGround
- (SBPrototypeDumpingGround)init;
- (SBWindowScene)windowScene;
- (void)_updatePearlDebugUI;
- (void)dealloc;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBPrototypeDumpingGround

- (SBPrototypeDumpingGround)init
{
  v23.receiver = self;
  v23.super_class = SBPrototypeDumpingGround;
  v2 = [(SBPrototypeDumpingGround *)&v23 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D02C20] rootSettings];
    v4 = [v3 pearlSettings];
    [v4 addKeyObserver:v2];

    [(SBPrototypeDumpingGround *)v2 _updatePearlDebugUI];
    v5 = [MEMORY[0x277D02C20] rootSettings];
    v6 = [v5 addNotificationOutlet];
    v7 = [v6 addAction:&__block_literal_global_262];

    v8 = +[SBMedusaDomain rootSettings];
    v9 = [v8 killSpringBoardOutlet];
    v10 = [v9 addAction:&__block_literal_global_4_0];

    v11 = +[SBExternalDisplaySettingsDomain rootSettings];
    v12 = [v11 killSpringBoardOutlet];
    v13 = [v12 addAction:&__block_literal_global_8_2];

    v14 = +[SBAppSwitcherDomain rootSettings];
    v15 = [v14 windowingSettings];
    v16 = [v15 killSpringBoardOutlet];
    v17 = [v16 addAction:&__block_literal_global_11_4];

    v18 = [MEMORY[0x277D661A0] rootSettings];
    v19 = [v18 iconEditingSettings];
    v20 = [v19 resetHomeScreenLayoutOutlet];
    v21 = [v20 addAction:&__block_literal_global_14_1];
  }

  return v2;
}

void __32__SBPrototypeDumpingGround_init__block_invoke()
{
  v0 = +[SBExampleUserNotificationCenter sharedInstance];
  [v0 publish];
}

void __32__SBPrototypeDumpingGround_init__block_invoke_2()
{
  v0 = +[SBPrototypeController sharedInstance];
  [v0 restartSpringBoard];
}

void __32__SBPrototypeDumpingGround_init__block_invoke_3()
{
  v0 = +[SBPrototypeController sharedInstance];
  [v0 restartSpringBoard];
}

void __32__SBPrototypeDumpingGround_init__block_invoke_4()
{
  v0 = +[SBPrototypeController sharedInstance];
  [v0 restartSpringBoard];
}

void __32__SBPrototypeDumpingGround_init__block_invoke_5()
{
  v2 = [SBApp windowSceneManager];
  v0 = [v2 embeddedDisplayWindowScene];
  v1 = [v0 iconController];
  [v1 resetHomeScreenLayout];
}

- (void)dealloc
{
  if (self->_appLaunchedNotificationToken)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_appLaunchedNotificationToken];

    appLaunchedNotificationToken = self->_appLaunchedNotificationToken;
    self->_appLaunchedNotificationToken = 0;
  }

  v5.receiver = self;
  v5.super_class = SBPrototypeDumpingGround;
  [(SBPrototypeDumpingGround *)&v5 dealloc];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = MEMORY[0x277D02C20];
  v6 = a3;
  v7 = [v5 rootSettings];
  v8 = [v7 pearlSettings];

  if (v8 == v6)
  {

    [(SBPrototypeDumpingGround *)self _updatePearlDebugUI];
  }
}

- (void)_updatePearlDebugUI
{
  if ([SBApp hasFinishedLaunching])
  {
    v3 = [MEMORY[0x277D02C20] rootSettings];
    v4 = [v3 pearlSettings];
    v5 = [v4 pearlDebugUIEnabled];

    pearlMonitorUI = self->_pearlMonitorUI;
    if (v5)
    {
      if (!pearlMonitorUI)
      {
        v7 = objc_alloc_init(SBBiometricMonitorUI);
        v8 = self->_pearlMonitorUI;
        self->_pearlMonitorUI = v7;

        v9 = self->_pearlMonitorUI;
        v10 = [(SBPrototypeDumpingGround *)self windowScene];
        [(SBBiometricMonitorUI *)v9 setWindowScene:v10];

        v11 = self->_pearlMonitorUI;
        v12 = objc_alloc_init(SBBiometricMonitorPearlDataSource);
        [(SBBiometricMonitorUI *)v11 setDataSource:v12];

        pearlMonitorUI = self->_pearlMonitorUI;
      }

      [(SBBiometricMonitorUI *)pearlMonitorUI enable];
    }

    else
    {
      [(SBBiometricMonitorUI *)pearlMonitorUI disable];
      [(SBBiometricMonitorUI *)self->_pearlMonitorUI setDataSource:0];
      v17 = self->_pearlMonitorUI;
      self->_pearlMonitorUI = 0;
    }
  }

  else if (!self->_appLaunchedNotificationToken)
  {
    objc_initWeak(&location, self);
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCABD8] mainQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__SBPrototypeDumpingGround__updatePearlDebugUI__block_invoke;
    v18[3] = &unk_2783AFD98;
    objc_copyWeak(&v19, &location);
    v15 = [v13 addObserverForName:@"SBBootCompleteNotification" object:0 queue:v14 usingBlock:v18];
    appLaunchedNotificationToken = self->_appLaunchedNotificationToken;
    self->_appLaunchedNotificationToken = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __47__SBPrototypeDumpingGround__updatePearlDebugUI__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 removeObserver:v4[2]];

    v3 = v4[2];
    v4[2] = 0;

    [v4 _updatePearlDebugUI];
    WeakRetained = v4;
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end