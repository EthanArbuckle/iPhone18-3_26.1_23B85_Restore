@interface SBDashBoardStatusBarController
- (NSNumber)statusBarAlpha;
- (SBDashBoardStatusBarController)initWithWindowSceneStatusBarManager:(id)a3;
- (_UILegibilitySettings)statusBarLegibilitySettings;
- (id)createFakeStatusBarWithReason:(id)a3 withFrame:(CGRect)a4;
- (id)effectiveStatusBarStyleRequestForAlpha:(id)a3 style:(int64_t)a4 legibilitySettings:(id)a5;
- (int64_t)statusBarStyle;
- (void)_enumerateStatusBarsAndPartAssertions:(id)a3;
- (void)clearStatusBarParameters;
- (void)dealloc;
- (void)destroyFakeStatusBar:(id)a3;
- (void)setStatusBarAlpha:(id)a3 style:(int64_t)a4 legibilitySettings:(id)a5;
- (void)setStatusBarHidden:(BOOL)a3 forReason:(id)a4;
- (void)setStatusBarPart:(unint64_t)a3 hidden:(BOOL)a4 animationDuration:(double)a5;
@end

@implementation SBDashBoardStatusBarController

- (_UILegibilitySettings)statusBarLegibilitySettings
{
  v2 = [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarParametersAssertion settings];
  v3 = [v2 legibilitySettings];

  return v3;
}

- (void)clearStatusBarParameters
{
  v16 = *MEMORY[0x277D85DE8];
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarParametersAssertion invalidate];
  statusBarParametersAssertion = self->_statusBarParametersAssertion;
  self->_statusBarParametersAssertion = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_statusBars;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_statusBarsToVisbilityAssertions objectForKey:v9, v11];
        [v10 invalidate];

        [(NSMapTable *)self->_statusBarsToVisbilityAssertions removeObjectForKey:v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (SBDashBoardStatusBarController)initWithWindowSceneStatusBarManager:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBDashBoardStatusBarController;
  v5 = [(SBDashBoardStatusBarController *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    statusBarHiddenReasons = v5->_statusBarHiddenReasons;
    v5->_statusBarHiddenReasons = v6;

    objc_storeWeak(&v5->_windowSceneStatusBarManager, v4);
    v8 = MEMORY[0x277CBEB58];
    v9 = [v4 statusBar];
    v10 = [v8 setWithObject:v9];
    statusBars = v5->_statusBars;
    v5->_statusBars = v10;

    v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    statusBarsToVisbilityAssertions = v5->_statusBarsToVisbilityAssertions;
    v5->_statusBarsToVisbilityAssertions = v12;
  }

  return v5;
}

- (void)dealloc
{
  if ([(NSMutableSet *)self->_statusBarHiddenReasons count])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_Sbdashboardsta.isa);
    }
  }

  v5.receiver = self;
  v5.super_class = SBDashBoardStatusBarController;
  [(SBDashBoardStatusBarController *)&v5 dealloc];
}

- (id)effectiveStatusBarStyleRequestForAlpha:(id)a3 style:(int64_t)a4 legibilitySettings:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(SBMutableStatusBarSettings);
  v11 = v10;
  if (v8)
  {
    [(SBMutableStatusBarSettings *)v10 setAlpha:v8];
  }

  if (a4 != -1)
  {
    [(SBMutableStatusBarSettings *)v11 setStyle:a4];
  }

  if (v9)
  {
    [(SBMutableStatusBarSettings *)v11 setLegibilitySettings:v9];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowSceneStatusBarManager);
  v13 = [WeakRetained assertionManager];
  v14 = [v13 effectiveStatusBarStyleRequestWithSettings:v11];

  return v14;
}

- (id)createFakeStatusBarWithReason:(id)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneStatusBarManager);
  v11 = [WeakRetained reusePool];
  v12 = [v11 getReusableStatusBarWithReason:v9 withFrame:{x, y, width, height}];

  [(NSMutableSet *)self->_statusBars addObject:v12];

  return v12;
}

- (void)destroyFakeStatusBar:(id)a3
{
  statusBarsToVisbilityAssertions = self->_statusBarsToVisbilityAssertions;
  v5 = a3;
  v6 = [(NSMapTable *)statusBarsToVisbilityAssertions objectForKey:v5];
  [v6 invalidate];

  [(NSMapTable *)self->_statusBarsToVisbilityAssertions removeObjectForKey:v5];
  [(NSMutableSet *)self->_statusBars removeObject:v5];
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneStatusBarManager);
  v7 = [WeakRetained reusePool];
  [v7 recycleStatusBar:v5];
}

- (void)setStatusBarHidden:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  statusBarHiddenReasons = self->_statusBarHiddenReasons;
  v16 = v6;
  if (v4)
  {
    [(NSMutableSet *)statusBarHiddenReasons addObject:v6];
    v8 = v16;
    if (self->_hideStatusBarAssertion)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_windowSceneStatusBarManager);
    v10 = [WeakRetained assertionManager];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBDashBoardStatusBarController-0x%p", self];
    v12 = [v10 newSettingsAssertionWithStatusBarHidden:1 atLevel:9 reason:v11];
    hideStatusBarAssertion = self->_hideStatusBarAssertion;
    self->_hideStatusBarAssertion = v12;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_hideStatusBarAssertion acquire];
    goto LABEL_7;
  }

  [(NSMutableSet *)statusBarHiddenReasons removeObject:v6];
  v14 = [(NSMutableSet *)self->_statusBarHiddenReasons count];
  v8 = v16;
  if (!v14)
  {
    v15 = self->_hideStatusBarAssertion;
    if (v15)
    {
      [(SBWindowSceneStatusBarSettingsAssertion *)v15 invalidate];
      v10 = self->_hideStatusBarAssertion;
      self->_hideStatusBarAssertion = 0;
LABEL_7:

      v8 = v16;
    }
  }

LABEL_8:
}

- (void)setStatusBarAlpha:(id)a3 style:(int64_t)a4 legibilitySettings:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__SBDashBoardStatusBarController_setStatusBarAlpha_style_legibilitySettings___block_invoke;
  v19[3] = &unk_2783C4E40;
  v10 = v8;
  v20 = v10;
  v22 = a4;
  v11 = v9;
  v21 = v11;
  v12 = MEMORY[0x223D6F7F0](v19);
  statusBarParametersAssertion = self->_statusBarParametersAssertion;
  if (statusBarParametersAssertion)
  {
    [(SBWindowSceneStatusBarSettingsAssertion *)statusBarParametersAssertion modifySettingsWithBlock:v12];
  }

  else
  {
    v14 = objc_alloc_init(SBMutableStatusBarSettings);
    (v12)[2](v12, v14);
    WeakRetained = objc_loadWeakRetained(&self->_windowSceneStatusBarManager);
    v16 = [WeakRetained assertionManager];

    v17 = [v16 newSettingsAssertionWithSettings:v14 atLevel:8 reason:@"SBDashBoardStatusBar"];
    v18 = self->_statusBarParametersAssertion;
    self->_statusBarParametersAssertion = v17;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarParametersAssertion acquire];
  }
}

void __77__SBDashBoardStatusBarController_setStatusBarAlpha_style_legibilitySettings___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4])
  {
    [v3 setAlpha:?];
    v3 = v4;
  }

  if (a1[6] != -1)
  {
    [v4 setStyle:?];
    v3 = v4;
  }

  if (a1[5])
  {
    [v4 setLegibilitySettings:?];
    v3 = v4;
  }
}

- (NSNumber)statusBarAlpha
{
  v2 = [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarParametersAssertion settings];
  v3 = [v2 alpha];

  return v3;
}

- (int64_t)statusBarStyle
{
  v2 = [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarParametersAssertion settings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 style];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)_enumerateStatusBarsAndPartAssertions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBDashBoardStatusBarController *)a2 _enumerateStatusBarsAndPartAssertions:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_statusBars;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_statusBarsToVisbilityAssertions objectForKey:v11];
        if (!v12)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBDashBoardStatusBarController-<%@: %p>", objc_opt_class(), v11, v14];
          v12 = [[SBStatusBarPartVisibilityAssertion alloc] initWithIdentifier:v13 statusBar:v11 forReason:@"SBDashBoardStatusBarController"];
          [(NSMapTable *)self->_statusBarsToVisbilityAssertions setObject:v12 forKey:v11];
        }

        v5[2](v5, v11, v12);
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)setStatusBarPart:(unint64_t)a3 hidden:(BOOL)a4 animationDuration:(double)a5
{
  if (a3 == 1)
  {
    v8 = MEMORY[0x277D775D8];
  }

  else
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277D775B8];
  }

  v9 = *v8;
LABEL_7:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SBDashBoardStatusBarController_setStatusBarPart_hidden_animationDuration___block_invoke;
  v11[3] = &unk_2783C4E68;
  v12 = v9;
  v14 = a4;
  v13 = a5;
  v10 = v9;
  [(SBDashBoardStatusBarController *)self _enumerateStatusBarsAndPartAssertions:v11];
}

- (void)_enumerateStatusBarsAndPartAssertions:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardStatusBarController.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock"}];
}

@end