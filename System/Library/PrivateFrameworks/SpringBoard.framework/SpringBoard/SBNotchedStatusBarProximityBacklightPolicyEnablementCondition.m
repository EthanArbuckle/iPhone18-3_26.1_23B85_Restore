@interface SBNotchedStatusBarProximityBacklightPolicyEnablementCondition
- (SBNotchedStatusBarProximityBacklightPolicyEnablementCondition)init;
- (SBNotchedStatusBarProximityBacklightPolicyEnablementCondition)initWithMainDisplaySceneManager:(id)a3 windowSceneStatusBarManager:(id)a4 statusBarServer:(id)a5 orientationProvider:(id)a6;
- (SBNotchedStatusBarProximityBacklightPolicyEnablementConditionDelegate)delegate;
- (void)_evaluateEnablement;
- (void)_setEnabled:(BOOL)a3 statusBarHeight:(double)a4;
- (void)dealloc;
- (void)invalidate;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4;
- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4;
- (void)statusBarAssertionManager:(id)a3 statusBarSettingsDidChange:(id)a4;
@end

@implementation SBNotchedStatusBarProximityBacklightPolicyEnablementCondition

- (SBNotchedStatusBarProximityBacklightPolicyEnablementCondition)init
{
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v4 = [SBApp windowSceneManager];
  v5 = [v4 embeddedDisplayWindowScene];
  v6 = [v5 statusBarManager];
  v7 = [objc_alloc(MEMORY[0x277D75A98]) initWithStatusBar:0];
  v8 = [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self initWithMainDisplaySceneManager:v3 windowSceneStatusBarManager:v6 statusBarServer:v7 orientationProvider:SBApp];

  return v8;
}

- (SBNotchedStatusBarProximityBacklightPolicyEnablementCondition)initWithMainDisplaySceneManager:(id)a3 windowSceneStatusBarManager:(id)a4 statusBarServer:(id)a5 orientationProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = SBNotchedStatusBarProximityBacklightPolicyEnablementCondition;
  v15 = [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mainDisplaySceneManager, a3);
    [(SBMainDisplaySceneManager *)v16->_mainDisplaySceneManager addObserver:v16];
    objc_storeStrong(&v16->_windowSceneStatusBarManager, a4);
    v17 = [v12 assertionManager];
    statusBarAssertionManager = v16->_statusBarAssertionManager;
    v16->_statusBarAssertionManager = v17;

    [(SBWindowSceneStatusBarAssertionManager *)v16->_statusBarAssertionManager addObserver:v16];
    objc_storeStrong(&v16->_orientationProvider, a6);
    [(SpringBoard *)v16->_orientationProvider addActiveOrientationObserver:v16];
    objc_storeStrong(&v16->_statusBarConnection, a5);
    [(UIStatusBarServer *)v16->_statusBarConnection setStatusBar:v16];
    [MEMORY[0x277D75A98] getStyleOverrides];
    v19 = STUIBackgroundActivityIdentifiersForStyleOverrides();
    v20 = [v19 copy];
    currentBackgroundActivityIdentifiers = v16->_currentBackgroundActivityIdentifiers;
    v16->_currentBackgroundActivityIdentifiers = v20;

    [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)v16 _evaluateEnablement];
  }

  return v16;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNotchedStatusBarProximityBacklightPolicyEnablementCondition.m" lineNumber:80 description:@"This object must be invalidated prior to being deallocated."];
}

- (void)invalidate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNotchedStatusBarProximityBacklightPolicyEnablementCondition.m" lineNumber:91 description:@"This object has already been invalidated."];
}

void __106__SBNotchedStatusBarProximityBacklightPolicyEnablementCondition_statusBarServer_didReceiveStyleOverrides___block_invoke(uint64_t a1)
{
  v5 = STUIBackgroundActivityIdentifiersForStyleOverrides();
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

- (void)statusBarAssertionManager:(id)a3 statusBarSettingsDidChange:(id)a4
{
  BSDispatchQueueAssertMain();

  [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self _evaluateEnablement];
}

- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4
{
  v5 = a4;
  BSDispatchQueueAssertMain();
  [v5 addObserver:self];

  [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self _evaluateEnablement];
}

- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4
{
  v5 = a4;
  BSDispatchQueueAssertMain();
  [v5 removeObserver:self];

  [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self _evaluateEnablement];
}

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  BSDispatchQueueAssertMain();
  applicationSceneSettingsDiffInspector = self->_applicationSceneSettingsDiffInspector;
  if (!applicationSceneSettingsDiffInspector)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75178]);
    v13 = self->_applicationSceneSettingsDiffInspector;
    self->_applicationSceneSettingsDiffInspector = v12;

    objc_initWeak(&location, self);
    v14 = self->_applicationSceneSettingsDiffInspector;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __120__SBNotchedStatusBarProximityBacklightPolicyEnablementCondition_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v18[3] = &unk_2783AC8A0;
    objc_copyWeak(&v19, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v14 observeStatusBarStyleOverridesToSuppressWithBlock:v18];
    v15 = self->_applicationSceneSettingsDiffInspector;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __120__SBNotchedStatusBarProximityBacklightPolicyEnablementCondition_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2;
    v16[3] = &unk_2783AC8A0;
    objc_copyWeak(&v17, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v15 observeForcedStatusBarForegroundTransparentWithBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    applicationSceneSettingsDiffInspector = self->_applicationSceneSettingsDiffInspector;
  }

  [(UIApplicationSceneSettingsDiffInspector *)applicationSceneSettingsDiffInspector inspectDiff:v9 withContext:0];
}

void __120__SBNotchedStatusBarProximityBacklightPolicyEnablementCondition_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateEnablement];
}

void __120__SBNotchedStatusBarProximityBacklightPolicyEnablementCondition_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateEnablement];
}

- (void)_setEnabled:(BOOL)a3 statusBarHeight:(double)a4
{
  if (self->_isEnabled != a3)
  {
    self->_isEnabled = a3;
    if (!a3)
    {
      a4 = 0.0;
    }

    self->_statusBarHeight = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained condition:self enablementDidChange:self->_isEnabled];
  }
}

- (void)_evaluateEnablement
{
  v28 = *MEMORY[0x277D85DE8];
  if (![(NSSet *)self->_currentBackgroundActivityIdentifiers count]|| [(SpringBoard *)self->_orientationProvider activeInterfaceOrientation]!= 1)
  {
    v13 = 0.0;
    v14 = self;
    v15 = 0;
LABEL_18:

    [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)v14 _setEnabled:v15 statusBarHeight:v13];
    return;
  }

  if (![(SBWindowSceneStatusBarManager *)self->_windowSceneStatusBarManager isStatusBarEffectivelyHidden])
  {
    currentBackgroundActivityIdentifiers = self->_currentBackgroundActivityIdentifiers;
    v17 = [(SBWindowSceneStatusBarAssertionManager *)self->_statusBarAssertionManager currentStatusBarSettings];
    v18 = [v17 backgroundActivitiesToSuppress];
    v19 = _STBackgroundActivityIdentifiersNotEmptyAfterSubtractingIdentifiers(currentBackgroundActivityIdentifiers, v18);

    [*MEMORY[0x277D76620] statusBarHeight];
    v14 = self;
    v15 = v19;
    goto LABEL_18;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(SBMainDisplaySceneManager *)self->_mainDisplaySceneManager externalForegroundApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v5 = 0.0;
  if (v4)
  {
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v23 + 1) + 8 * i) sceneIfExists];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 uiSettings];
          if (([v10 statusBarDisabled] & 1) == 0 && (objc_msgSend(v10, "forcedStatusBarForegroundTransparent") & 1) == 0)
          {
            v11 = self->_currentBackgroundActivityIdentifiers;
            [v10 statusBarStyleOverridesToSuppress];
            v12 = STUIBackgroundActivityIdentifiersForStyleOverrides();
            LOBYTE(v11) = _STBackgroundActivityIdentifiersNotEmptyAfterSubtractingIdentifiers(v11, v12);

            if (v11)
            {
              v20 = MEMORY[0x277D75A78];
              v21 = [v9 uiClientSettings];
              v4 = 1;
              [v20 heightForStyle:objc_msgSend(v21 orientation:{"statusBarStyle"), 1}];
              v5 = v22;

              goto LABEL_23;
            }
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self _setEnabled:v4 statusBarHeight:v5];
}

- (SBNotchedStatusBarProximityBacklightPolicyEnablementConditionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end