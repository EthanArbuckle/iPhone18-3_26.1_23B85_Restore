@interface SBRecordingIndicatorManager
+ (BOOL)_supportsSecureIndicator;
+ (BOOL)_systemApertureManagedIndicatorEnabled;
- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)a3;
- (SBRecordingIndicatorManager)initWithWindowScene:(id)a3;
- (SBWindowScene)windowScene;
- (id)_indicatorIdentifierForSensorType:(int64_t)a3;
- (uint64_t)_configureSupportForRotatingIndicator;
- (unint64_t)_indicatorTypeForSensorType:(int64_t)a3;
- (void)_createRecordingIndicatorForStandaloneLocation:(BOOL)a3;
- (void)_createRecordingIndicatorForStatusBarLocation;
- (void)_createRecordingIndicatorForSystemApertureLocation;
- (void)_dataProviderDidUpdate:(id)a3;
- (void)_setIndicatorVisible:(BOOL)a3 atLocation:(unint64_t)a4;
- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)a3;
- (void)_updateIndicatorViewForSensorType:(int64_t)a3;
- (void)_updateRecordingIndicatorForStatusBarChanges;
- (void)_updateRecordingIndicatorLocationIfNecessary;
- (void)_updateSystemApertureElementAssertion;
- (void)activityDidChangeForSensorActivityDataProvider:(id)a3;
- (void)controlCenterDidDismiss:(id)a3;
- (void)controlCenterWillPresent:(id)a3;
- (void)dealloc;
- (void)differentiateWithoutColorDidChange:(id)a3;
- (void)recordingIndicatorViewController:(id)a3 didUpdateIndicatorState:(unint64_t)a4;
- (void)setIndicatorVisible:(BOOL)a3;
- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)systemApertureLayoutDidChange:(id)a3;
@end

@implementation SBRecordingIndicatorManager

- (void)_updateRecordingIndicatorForStatusBarChanges
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SBRecordingIndicatorManager *)self displayMode];
  if (v3 == 5)
  {

    [(SBRecordingIndicatorManager *)self _updateRecordingIndicatorLocationIfNecessary];
  }

  else if (v3 == 3 && [(SBRecordingIndicatorManager *)self isIndicatorVisible])
  {
    v4 = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
    v5 = [v4 statusBarManager];
    v6 = [v5 assertionManager];

    v7 = [v6 isFrontmostStatusBarPartHidden:2];
    if (self->_indicatorStatusBarPartIsHidden == v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBOOL();
      v11 = NSStringFromBOOL();
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] indicatorStatusBarPartIsHidden changed from %{public}@ to %{public}@", &v14, 0x16u);
    }

    self->_indicatorStatusBarPartIsHidden = v8;
    if (self->_indicatorIsHiddenForControlCenter)
    {
      goto LABEL_16;
    }

    recordingIndicatorViewController = self->_recordingIndicatorViewController;
    if (v8)
    {
      if ([(SBRecordingIndicatorViewController *)recordingIndicatorViewController indicatorState]== 1)
      {
LABEL_16:

        return;
      }

      recordingIndicatorViewController = self->_recordingIndicatorViewController;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    [(SBRecordingIndicatorViewController *)recordingIndicatorViewController updateIndicatorVisibilityWithFastFadeAnimation:v13];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:!v8 atLocation:2];
    goto LABEL_16;
  }
}

- (void)_updateSystemApertureElementAssertion
{
  v3 = [(SBRecordingIndicatorManager *)self isIndicatorVisible];
  v4 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorState];
  v5 = [(SAInvalidatable *)self->_recordingIndicatorElementAssertion isValid];
  if (!v3 && !v4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!self->_canSystemApertureRegisterRecordingIndicatorElement && ((v5 ^ 1) & 1) == 0)
  {
LABEL_7:
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Invalidating SystemAperture element", buf, 2u);
    }

    [(SAInvalidatable *)self->_recordingIndicatorElementAssertion invalidateWithReason:@"SBRecordingIndicatorViewController isIndicatorIdleAndOff changed"];
    recordingIndicatorElementAssertion = self->_recordingIndicatorElementAssertion;
    self->_recordingIndicatorElementAssertion = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (((v5 | !v3) & 1) == 0 && self->_canSystemApertureRegisterRecordingIndicatorElement)
  {
    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Registering SystemAperture element", v11, 2u);
    }

    [(SBRecordingIndicatorSystemApertureElement *)self->_recordingIndicatorElement resetInternalState];
    recordingIndicatorElementAssertion = [SBApp systemApertureControllerForMainDisplay];
    v9 = [recordingIndicatorElementAssertion registerElement:self->_recordingIndicatorElement];
    v10 = self->_recordingIndicatorElementAssertion;
    self->_recordingIndicatorElementAssertion = v9;

    goto LABEL_10;
  }

LABEL_11:
  [(SBRecordingIndicatorManager *)self _updateRecordingIndicatorLocationIfNecessary];
}

- (void)_updateRecordingIndicatorLocationIfNecessary
{
  if (![(SBRecordingIndicatorManager *)self isIndicatorVisible])
  {
    v5 = self;
    v6 = 0;
LABEL_6:
    [(SBRecordingIndicatorManager *)v5 _setIndicatorVisible:v6 atLocation:0];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
    v3 = self;
    canSystemApertureRegisterRecordingIndicatorElement = 0;
    goto LABEL_7;
  }

  if ([(SBRecordingIndicatorManager *)self isSystemApertureEmpty]&& self->_canSystemApertureRegisterRecordingIndicatorElement)
  {
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:0];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
    v3 = self;
    canSystemApertureRegisterRecordingIndicatorElement = 1;
LABEL_7:

    [(SBRecordingIndicatorManager *)v3 _setIndicatorVisible:canSystemApertureRegisterRecordingIndicatorElement atLocation:3];
    return;
  }

  v7 = [(SBRecordingIndicatorManager *)self displayMode];
  if (v7 == 2)
  {
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:!self->_canSystemApertureRegisterRecordingIndicatorElement atLocation:0];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
    canSystemApertureRegisterRecordingIndicatorElement = self->_canSystemApertureRegisterRecordingIndicatorElement;
    v3 = self;
    goto LABEL_7;
  }

  if (v7 != 5)
  {
    if (v7 != 4)
    {
      return;
    }

    v5 = self;
    v6 = 1;
    goto LABEL_6;
  }

  v8 = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
  v9 = [v8 statusBarManager];
  v10 = [v9 assertionManager];

  LOBYTE(v8) = [v10 isFrontmostStatusBarPartHidden:2];
  LOBYTE(v8) = v8 | [(SBRecordingIndicatorManager *)self systemApertureIsSoLargeThatTheStatusBarIsProbablyHidden];
  [(SBRecordingIndicatorManager *)self _setIndicatorVisible:v8 & 1 atLocation:0];
  [(SBRecordingIndicatorManager *)self _setIndicatorVisible:(v8 & 1) == 0 atLocation:2];
  [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:3];
}

- (SBRecordingIndicatorManager)initWithWindowScene:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SBRecordingIndicatorManager;
  v5 = [(SBRecordingIndicatorManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = [v4 isMainDisplayWindowScene];
    v8 = SBSIsSystemApertureAvailable();
    v9 = objc_opt_class();
    if (v8)
    {
      if (([v9 _systemApertureManagedIndicatorEnabled] & 1) == 0)
      {
        v6->_displayMode = 4;
        v11 = v6;
        v12 = 0;
        goto LABEL_12;
      }

      v10 = 2;
      if (!v7)
      {
        v10 = 0;
      }

      v6->_displayMode = v10;
      if (v7)
      {
        if (![v4 isMainDisplayWindowScene])
        {
LABEL_13:
          [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForSystemApertureLocation];
          goto LABEL_24;
        }

        v11 = v6;
        v12 = 1;
LABEL_12:
        [(SBRecordingIndicatorManager *)v11 _createRecordingIndicatorForStandaloneLocation:v12];
        goto LABEL_13;
      }

LABEL_22:
      [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStandaloneLocation:0];
      goto LABEL_24;
    }

    if (([v9 _supportsSecureIndicator] & v7) == 1)
    {
      v6->_displayMode = 1;
      [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStandaloneLocation:0];
      [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForSecureIndicator];
LABEL_24:
      v15 = [SBApp sensorActivityDataProvider];
      [v15 addObserver:v6];
      v16 = objc_alloc_init(SBSecureIndicatorMinimumOnTimeCoordinator);
      minimumOnTimeCoordinator = v6->_minimumOnTimeCoordinator;
      v6->_minimumOnTimeCoordinator = v16;

      v18 = +[SBRecordingIndicatorDomain rootSettings];
      [v18 addKeyObserver:v6];

      v19 = [(UIWindow *)v6->_recordingIndicatorWindow _sbWindowScene];
      v20 = [v19 statusBarManager];
      v21 = [v20 assertionManager];
      [v21 addObserver:v6];

      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 addObserver:v6 selector:sel_controlCenterWillPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
      [v22 addObserver:v6 selector:sel_controlCenterDidDismiss_ name:@"SBControlCenterDidDismissNotification" object:0];
      [v22 addObserver:v6 selector:sel_systemApertureLayoutDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
      [v22 addObserver:v6 selector:sel_differentiateWithoutColorDidChange_ name:*MEMORY[0x277D764E0] object:0];
      [(SBRecordingIndicatorManager *)v6 activityDidChangeForSensorActivityDataProvider:v15];

      goto LABEL_25;
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2 || SBFEffectiveHomeButtonType() != 2)
      {
        goto LABEL_23;
      }

LABEL_21:
      v6->_displayMode = 0;
      goto LABEL_22;
    }

    v13 = [MEMORY[0x277D75418] currentDevice];
    if ([v13 userInterfaceIdiom] == 1)
    {
    }

    else
    {
      v14 = SBFEffectiveHomeButtonType();

      if (v14 == 2)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v6->_displayMode = 3;
    [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStandaloneLocation:0];
    [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStatusBarLocation];
    goto LABEL_24;
  }

LABEL_25:

  return v6;
}

- (void)_createRecordingIndicatorForStandaloneLocation:(BOOL)a3
{
  v3 = a3;
  v13 = [(SBRecordingIndicatorManager *)self windowScene];
  v5 = [[SBRecordingIndicatorWindow alloc] initWithWindowScene:v13 debugName:@"Recording Indicator"];
  v6 = [SBRecordingIndicatorViewController alloc];
  v7 = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v8 = [(SBRecordingIndicatorViewController *)v6 initForLocation:v3 windowScene:v13 minimumOnTimeCoordinator:v7];
  recordingIndicatorViewController = self->_recordingIndicatorViewController;
  self->_recordingIndicatorViewController = v8;

  [(SBRecordingIndicatorWindow *)v5 setRootViewController:self->_recordingIndicatorViewController];
  [(SBRecordingIndicatorWindow *)v5 setWindowLevel:*MEMORY[0x277D76EB0] + 10.0];
  [(SBRecordingIndicatorWindow *)v5 setUserInteractionEnabled:0];
  [(SBWindow *)v5 setHidden:0];
  if (v3)
  {
    SBRecordingIndicatorApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(v5, v13);
  }

  recordingIndicatorWindow = self->_recordingIndicatorWindow;
  self->_recordingIndicatorWindow = &v5->super.super.super.super.super;
  v11 = v5;

  v12 = +[SBReachabilityManager sharedInstance];
  [v12 ignoreWindowForReachability:self->_recordingIndicatorWindow];

  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController setDelegate:self];
}

- (void)_createRecordingIndicatorForStatusBarLocation
{
  v12 = [(SBRecordingIndicatorManager *)self windowScene];
  v3 = [[SBRecordingIndicatorWindow alloc] initWithWindowScene:v12 debugName:@"Recording Indicator (UIKit Status Bar Portal)"];
  v4 = [SBRecordingIndicatorViewController alloc];
  v5 = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v6 = [(SBRecordingIndicatorViewController *)v4 initForLocation:2 windowScene:v12 minimumOnTimeCoordinator:v5];
  recordingIndicatorViewControllerUIKitStatusBarPortal = self->_recordingIndicatorViewControllerUIKitStatusBarPortal;
  self->_recordingIndicatorViewControllerUIKitStatusBarPortal = v6;

  [(SBRecordingIndicatorWindow *)v3 setRootViewController:self->_recordingIndicatorViewControllerUIKitStatusBarPortal];
  [(SBRecordingIndicatorWindow *)v3 setWindowLevel:*MEMORY[0x277D772B0] + -1.0];
  [(SBRecordingIndicatorWindow *)v3 setUserInteractionEnabled:0];
  [(SBWindow *)v3 setHidden:0];
  objc_storeStrong(&self->_recordingIndicatorWindowUIKitStatusBarPortal, v3);
  SBStatusBarIsSpeakeasy();
  v8 = objc_opt_class();
  v9 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal indicator];
  v10 = [v9 contentView];

  v11 = [v12 screen];
  [v8 registerSensorActivityIndicator:v10 forScreen:v11];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal setDelegate:self];
  [(SBRecordingIndicatorManager *)self _configureSupportForRotatingIndicator];
}

- (void)_createRecordingIndicatorForSystemApertureLocation
{
  v3 = [objc_opt_class() _systemApertureManagedIndicatorEnabled];
  v18 = [(SBRecordingIndicatorManager *)self windowScene];
  v4 = [[SBRecordingIndicatorWindow alloc] initWithWindowScene:v18 debugName:@"Recording Indicator (SystemAperture Portal)"];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  v6 = [SBRecordingIndicatorViewController alloc];
  v7 = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v8 = [(SBRecordingIndicatorViewController *)v6 initForLocation:v5 windowScene:v18 minimumOnTimeCoordinator:v7];
  recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewControllerSystemAperturePortal;
  self->_recordingIndicatorViewControllerSystemAperturePortal = v8;

  [(SBRecordingIndicatorWindow *)v4 setRootViewController:self->_recordingIndicatorViewControllerSystemAperturePortal];
  [(SBRecordingIndicatorWindow *)v4 setWindowLevel:*MEMORY[0x277D76EB0] + 5.0];
  [(SBRecordingIndicatorWindow *)v4 setUserInteractionEnabled:0];
  [(SBWindow *)v4 setHidden:0];
  objc_storeStrong(&self->_recordingIndicatorWindowSystemAperturePortal, v4);
  v10 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicator];
  if (v3)
  {
    v11 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal secondaryIndicator];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(SBSecureIndicatorMinimumOnTimeCoordinator);
  }

  v15 = v14;

  v16 = [[SBRecordingIndicatorSystemApertureElement alloc] initWithInterSensorRegionIndicatorVisualRepresentation:v11 microRegionIndicatorVisualRepresentation:v10 recordingIndicatorManager:self minimumOnTimeCoordinator:v15];
  recordingIndicatorElement = self->_recordingIndicatorElement;
  self->_recordingIndicatorElement = v16;

  SBRecordingIndicatorApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(v4, v18);
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal setDelegate:self];
}

- (void)dealloc
{
  [(SAInvalidatable *)self->_recordingIndicatorElementAssertion invalidateWithReason:@"dealloc"];
  [(SBSensorActivityDataProvider *)self->_dataProvider removeObserver:self];
  v3 = +[SBRecordingIndicatorDomain rootSettings];
  [v3 removeKeyObserver:self];

  v4 = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
  v5 = [v4 statusBarManager];
  v6 = [v5 assertionManager];
  [v6 removeObserver:self];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = SBRecordingIndicatorManager;
  [(SBRecordingIndicatorManager *)&v8 dealloc];
}

- (unint64_t)_indicatorTypeForSensorType:(int64_t)a3
{
  if (a3 != 1)
  {
    return 0;
  }

  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
    return 2;
  }

  return 1;
}

- (id)_indicatorIdentifierForSensorType:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"microphone-recording-indicator";
  }

  else
  {
    return @"camera-recording-indicator";
  }
}

- (void)_dataProviderDidUpdate:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_dataProvider, a3);
  if (self->_visibilityIsForcedByPrototypeSettings)
  {
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Visibility is forced by prototype settings", v9, 2u);
    }

    goto LABEL_12;
  }

  v7 = [v5 activeCameraAndMicrophoneActivityAttributions];
  v8 = [v7 count];
  if (v8)
  {
    [(SBRecordingIndicatorManager *)self _updateIndicatorStyleForSensorActivityAttributions:v7];
LABEL_8:
    [(SBRecordingIndicatorManager *)self setIndicatorVisible:v8 != 0];
    goto LABEL_9;
  }

  if ([(SBRecordingIndicatorManager *)self isIndicatorVisible])
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([(SBRecordingIndicatorManager *)self _supportsStatusBarItem])
  {
    [(SBRecordingIndicatorManager *)self _updateRecordingIndicatorForStatusBarChanges];
  }

LABEL_12:
}

- (void)setIndicatorVisible:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_indicatorVisible != a3)
  {
    v3 = a3;
    self->_indicatorVisible = a3;
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"off";
      if (v3)
      {
        v6 = @"on";
      }

      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@...", &v15, 0xCu);
    }

    v7 = [(SBRecordingIndicatorManager *)self displayMode];
    if (v7 <= 5)
    {
      if (((1 << v7) & 0x34) != 0)
      {
        [(SBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
        if (v3)
        {
          [(SBRecordingIndicatorSystemApertureElement *)self->_recordingIndicatorElement pulse];
        }
      }

      else
      {
        if (((1 << v7) & 3) != 0)
        {
          v8 = self;
          v9 = v3;
          v10 = 0;
        }

        else
        {
          if (v3)
          {
            v11 = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
            v12 = [v11 statusBarManager];
            v13 = [v12 assertionManager];
            v14 = [v13 isFrontmostStatusBarHidden];
            [(SBRecordingIndicatorManager *)self _setIndicatorVisible:v14 atLocation:0];
            [(SBRecordingIndicatorManager *)self _setIndicatorVisible:v14 ^ 1 atLocation:2];

            return;
          }

          [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:0];
          v8 = self;
          v9 = 0;
          v10 = 2;
        }

        [(SBRecordingIndicatorManager *)v8 _setIndicatorVisible:v9 atLocation:v10];
      }
    }
  }
}

- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_indicatorVisibleAtStatusBarLocation != a3)
  {
    v3 = a3;
    self->_indicatorVisibleAtStatusBarLocation = a3;
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"off";
      if (v3)
      {
        v5 = @"on";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at Status Bar location (via status bar data change)", &v7, 0xCu);
    }

    v6 = [SBApp statusBarStateAggregator];
    [v6 updateStatusBarItem:28];
  }
}

+ (BOOL)_supportsSecureIndicator
{
  if (_supportsSecureIndicator_onceToken != -1)
  {
    +[SBRecordingIndicatorManager _supportsSecureIndicator];
  }

  return _supportsSecureIndicator_supportsSecureIndicator;
}

uint64_t __55__SBRecordingIndicatorManager__supportsSecureIndicator__block_invoke()
{
  result = MGGetBoolAnswer();
  _supportsSecureIndicator_supportsSecureIndicator = result;
  return result;
}

+ (BOOL)_systemApertureManagedIndicatorEnabled
{
  if (_systemApertureManagedIndicatorEnabled_onceToken != -1)
  {
    +[SBRecordingIndicatorManager _systemApertureManagedIndicatorEnabled];
  }

  return _systemApertureManagedIndicatorEnabled_systemApertureManagedIndicatorEnabled;
}

uint64_t __69__SBRecordingIndicatorManager__systemApertureManagedIndicatorEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  _systemApertureManagedIndicatorEnabled_systemApertureManagedIndicatorEnabled = result;
  return result;
}

- (void)_setIndicatorVisible:(BOOL)a3 atLocation:(unint64_t)a4
{
  v4 = a3;
  if (a4 < 2)
  {
    v8 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorState];
    if (v4)
    {
      if (v8 - 1 < 2)
      {
        return;
      }

      recordingIndicatorViewController = self->_recordingIndicatorViewController;
      goto LABEL_9;
    }

    if (v8)
    {
      v11 = v8 == 3;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      recordingIndicatorViewController = self->_recordingIndicatorViewController;
      goto LABEL_24;
    }
  }

  else
  {
    if (a4 - 3 < 2)
    {
      v6 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorState];
      if (v4)
      {
        if (v6 - 1 < 2)
        {
          return;
        }

        recordingIndicatorViewController = self->_recordingIndicatorViewControllerSystemAperturePortal;
LABEL_9:
        v9 = 1;
LABEL_25:

        [(SBRecordingIndicatorViewController *)recordingIndicatorViewController updateIndicatorVisibility:v9];
        return;
      }

      if (!v6 || v6 == 3)
      {
        return;
      }

      recordingIndicatorViewController = self->_recordingIndicatorViewControllerSystemAperturePortal;
LABEL_24:
      v9 = 0;
      goto LABEL_25;
    }

    if (a4 == 2)
    {
      v10 = a3;

      [(SBRecordingIndicatorManager *)self setIndicatorVisibleAtStatusBarLocation:v10];
    }
  }
}

- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v10 + 1) + 8 * v9) sensor])
          {
            [(SBRecordingIndicatorManager *)self _updateIndicatorViewForSensorType:0];

            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(SBRecordingIndicatorManager *)self _updateIndicatorViewForSensorType:1];
  }

LABEL_12:
}

- (void)_updateIndicatorViewForSensorType:(int64_t)a3
{
  v5 = [(SBRecordingIndicatorManager *)self _indicatorTypeForSensorType:?];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorType:v5];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal updateIndicatorType:v5];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal updateIndicatorType:v5];
  v10 = [(SBRecordingIndicatorManager *)self _indicatorIdentifierForSensorType:a3];
  v6 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicator];
  v7 = [v6 contentView];
  [v7 setAccessibilityIdentifier:v10];

  v8 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController secondaryIndicator];
  v9 = [v8 contentView];
  [v9 setAccessibilityIdentifier:v10];
}

- (void)recordingIndicatorViewController:(id)a3 didUpdateIndicatorState:(unint64_t)a4
{
  v5 = a3;
  v12 = v5;
  if (self->_recordingIndicatorViewControllerSystemAperturePortal == v5)
  {
    [(SBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
    v5 = v12;
  }

  v6 = [(SBRecordingIndicatorViewController *)v5 viewIfLoaded];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  v9 = [v8 traitCollection];
  v10 = [v9 _backlightLuminance];

  if (v10 == 1)
  {
    v11 = [v8 _backlightSceneEnvironment];
    [v11 invalidateAllTimelinesForReason:@"recording indicator visibility change"];
  }
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 activeCameraAndMicrophoneActivityAttributions];
  if (![(NSSet *)self->_activeCameraAndMicrophoneActivityAttributions isEqualToSet:v5])
  {
    objc_storeStrong(&self->_activeCameraAndMicrophoneActivityAttributions, v5);
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Active camera/microphone activity changed:\n%{public}@", &v7, 0xCu);
    }

    [(SBRecordingIndicatorManager *)self _dataProviderDidUpdate:v4];
  }
}

- (void)controlCenterWillPresent:(id)a3
{
  if ([(SBRecordingIndicatorManager *)self _controlCenterIsOnTheSameWindowScene:a3]&& [(SBRecordingIndicatorManager *)self displayMode]== 3)
  {
    if ([(SBRecordingIndicatorManager *)self isIndicatorVisible]&& self->_indicatorStatusBarPartIsHidden)
    {
      v4 = SBLogStatusBarish();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Now hiding for Control Center", v5, 2u);
      }

      [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorVisibilityWithFastFadeAnimation:0];
    }

    self->_indicatorIsHiddenForControlCenter = 1;
  }
}

- (void)controlCenterDidDismiss:(id)a3
{
  if ([(SBRecordingIndicatorManager *)self _controlCenterIsOnTheSameWindowScene:a3]&& [(SBRecordingIndicatorManager *)self displayMode]== 3)
  {
    if ([(SBRecordingIndicatorManager *)self isIndicatorVisible]&& self->_indicatorStatusBarPartIsHidden)
    {
      v4 = SBLogStatusBarish();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] No longer hiding for Control Center", v5, 2u);
      }

      [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorVisibilityWithFastFadeAnimation:1];
    }

    self->_indicatorIsHiddenForControlCenter = 0;
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [v4 object];

  v7 = [v6 objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  return WeakRetained == v7;
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v17 = [a3 userInfo];
  v4 = [v17 objectForKey:@"SBSystemApertureOriginatingDisplayIdentity"];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained _sbDisplayConfiguration];
  v7 = [v6 identity];

  if (v7 == v4)
  {
    v8 = [v17 objectForKey:@"SBSystemApertureVisibleElementIdentifiers"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 count] == 0;
    }

    else
    {
      v10 = 1;
    }

    [(SBRecordingIndicatorManager *)self setSystemApertureEmpty:v10];
    v11 = [v17 objectForKey:@"SBSystemApertureCanRegisterRecordingIndicator"];
    v12 = [v11 BOOLValue];

    [(SBRecordingIndicatorManager *)self setCanSystemApertureRegisterRecordingIndicatorElement:v12];
    v13 = [(SBRecordingIndicatorManager *)self displayMode];
    switch(v13)
    {
      case 2uLL:
        goto LABEL_8;
      case 5uLL:
        v14 = [v17 objectForKey:@"SBSystemApertureFrames"];
        if ([v14 count])
        {
          v15 = [v14 firstObject];
          [v15 CGRectValue];
          v16 = BSFloatGreaterThanFloat();
          if (self->_systemApertureIsSoLargeThatTheStatusBarIsProbablyHidden != v16)
          {
            [(SBRecordingIndicatorManager *)self setSystemApertureIsSoLargeThatTheStatusBarIsProbablyHidden:v16];
            [(SBRecordingIndicatorManager *)self _updateRecordingIndicatorLocationIfNecessary];
          }
        }

        break;
      case 4uLL:
LABEL_8:
        [(SBRecordingIndicatorManager *)self _updateRecordingIndicatorLocationIfNecessary];
        break;
    }
  }
}

- (void)differentiateWithoutColorDidChange:(id)a3
{
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Received UIAccessibility setting differentiateWithoutColorDidChange notification, simulating Recording Indicator UI updates...", v5, 2u);
  }

  [(SBRecordingIndicatorManager *)self _dataProviderDidUpdate:self->_dataProvider];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = [SBRecordingIndicatorDomain rootSettings:a3];
  v6 = [v5 sensorType];

  if (v6 == 1)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(SBRecordingIndicatorManager *)self setIndicatorVisible:1];
    v7 = self;
    v8 = 0;
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(SBRecordingIndicatorManager *)self setIndicatorVisible:1];
    v7 = self;
    v8 = 1;
LABEL_5:

    [(SBRecordingIndicatorManager *)v7 _updateIndicatorViewForSensorType:v8];
    return;
  }

  self->_visibilityIsForcedByPrototypeSettings = 0;

  [(SBRecordingIndicatorManager *)self setIndicatorVisible:0];
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (uint64_t)_configureSupportForRotatingIndicator
{
  if (result)
  {
    v1 = result;
    [SBApp addActiveOrientationObserver:result];
    v2 = [SBApp activeInterfaceOrientation];
    v3 = *(v1 + 32);

    return [v3 setActiveInterfaceOrientation:v2 withDuration:0.0];
  }

  return result;
}

@end