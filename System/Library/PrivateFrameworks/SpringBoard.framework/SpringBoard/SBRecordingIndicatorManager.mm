@interface SBRecordingIndicatorManager
+ (BOOL)_supportsSecureIndicator;
+ (BOOL)_systemApertureManagedIndicatorEnabled;
- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)scene;
- (SBRecordingIndicatorManager)initWithWindowScene:(id)scene;
- (SBWindowScene)windowScene;
- (id)_indicatorIdentifierForSensorType:(int64_t)type;
- (uint64_t)_configureSupportForRotatingIndicator;
- (unint64_t)_indicatorTypeForSensorType:(int64_t)type;
- (void)_createRecordingIndicatorForStandaloneLocation:(BOOL)location;
- (void)_createRecordingIndicatorForStatusBarLocation;
- (void)_createRecordingIndicatorForSystemApertureLocation;
- (void)_dataProviderDidUpdate:(id)update;
- (void)_setIndicatorVisible:(BOOL)visible atLocation:(unint64_t)location;
- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)attributions;
- (void)_updateIndicatorViewForSensorType:(int64_t)type;
- (void)_updateRecordingIndicatorForStatusBarChanges;
- (void)_updateRecordingIndicatorLocationIfNecessary;
- (void)_updateSystemApertureElementAssertion;
- (void)activityDidChangeForSensorActivityDataProvider:(id)provider;
- (void)controlCenterDidDismiss:(id)dismiss;
- (void)controlCenterWillPresent:(id)present;
- (void)dealloc;
- (void)differentiateWithoutColorDidChange:(id)change;
- (void)recordingIndicatorViewController:(id)controller didUpdateIndicatorState:(unint64_t)state;
- (void)setIndicatorVisible:(BOOL)visible;
- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)location;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)systemApertureLayoutDidChange:(id)change;
@end

@implementation SBRecordingIndicatorManager

- (void)_updateRecordingIndicatorForStatusBarChanges
{
  v18 = *MEMORY[0x277D85DE8];
  displayMode = [(SBRecordingIndicatorManager *)self displayMode];
  if (displayMode == 5)
  {

    [(SBRecordingIndicatorManager *)self _updateRecordingIndicatorLocationIfNecessary];
  }

  else if (displayMode == 3 && [(SBRecordingIndicatorManager *)self isIndicatorVisible])
  {
    _sbWindowScene = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v7 = [assertionManager isFrontmostStatusBarPartHidden:2];
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
  isIndicatorVisible = [(SBRecordingIndicatorManager *)self isIndicatorVisible];
  indicatorState = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorState];
  isValid = [(SAInvalidatable *)self->_recordingIndicatorElementAssertion isValid];
  if (!isIndicatorVisible && !indicatorState)
  {
    if (!isValid)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!self->_canSystemApertureRegisterRecordingIndicatorElement && ((isValid ^ 1) & 1) == 0)
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

  if (((isValid | !isIndicatorVisible) & 1) == 0 && self->_canSystemApertureRegisterRecordingIndicatorElement)
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
    selfCopy5 = self;
    v6 = 0;
LABEL_6:
    [(SBRecordingIndicatorManager *)selfCopy5 _setIndicatorVisible:v6 atLocation:0];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
    selfCopy4 = self;
    canSystemApertureRegisterRecordingIndicatorElement = 0;
    goto LABEL_7;
  }

  if ([(SBRecordingIndicatorManager *)self isSystemApertureEmpty]&& self->_canSystemApertureRegisterRecordingIndicatorElement)
  {
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:0];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
    selfCopy4 = self;
    canSystemApertureRegisterRecordingIndicatorElement = 1;
LABEL_7:

    [(SBRecordingIndicatorManager *)selfCopy4 _setIndicatorVisible:canSystemApertureRegisterRecordingIndicatorElement atLocation:3];
    return;
  }

  displayMode = [(SBRecordingIndicatorManager *)self displayMode];
  if (displayMode == 2)
  {
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:!self->_canSystemApertureRegisterRecordingIndicatorElement atLocation:0];
    [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
    canSystemApertureRegisterRecordingIndicatorElement = self->_canSystemApertureRegisterRecordingIndicatorElement;
    selfCopy4 = self;
    goto LABEL_7;
  }

  if (displayMode != 5)
  {
    if (displayMode != 4)
    {
      return;
    }

    selfCopy5 = self;
    v6 = 1;
    goto LABEL_6;
  }

  _sbWindowScene = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  LOBYTE(_sbWindowScene) = [assertionManager isFrontmostStatusBarPartHidden:2];
  LOBYTE(_sbWindowScene) = _sbWindowScene | [(SBRecordingIndicatorManager *)self systemApertureIsSoLargeThatTheStatusBarIsProbablyHidden];
  [(SBRecordingIndicatorManager *)self _setIndicatorVisible:_sbWindowScene & 1 atLocation:0];
  [(SBRecordingIndicatorManager *)self _setIndicatorVisible:(_sbWindowScene & 1) == 0 atLocation:2];
  [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:3];
}

- (SBRecordingIndicatorManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v24.receiver = self;
  v24.super_class = SBRecordingIndicatorManager;
  v5 = [(SBRecordingIndicatorManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
    isMainDisplayWindowScene = [sceneCopy isMainDisplayWindowScene];
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
      if (!isMainDisplayWindowScene)
      {
        v10 = 0;
      }

      v6->_displayMode = v10;
      if (isMainDisplayWindowScene)
      {
        if (![sceneCopy isMainDisplayWindowScene])
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

    if (([v9 _supportsSecureIndicator] & isMainDisplayWindowScene) == 1)
    {
      v6->_displayMode = 1;
      [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStandaloneLocation:0];
      [(SBRecordingIndicatorManager *)v6 _createRecordingIndicatorForSecureIndicator];
LABEL_24:
      sensorActivityDataProvider = [SBApp sensorActivityDataProvider];
      [sensorActivityDataProvider addObserver:v6];
      v16 = objc_alloc_init(SBSecureIndicatorMinimumOnTimeCoordinator);
      minimumOnTimeCoordinator = v6->_minimumOnTimeCoordinator;
      v6->_minimumOnTimeCoordinator = v16;

      v18 = +[SBRecordingIndicatorDomain rootSettings];
      [v18 addKeyObserver:v6];

      _sbWindowScene = [(UIWindow *)v6->_recordingIndicatorWindow _sbWindowScene];
      statusBarManager = [_sbWindowScene statusBarManager];
      assertionManager = [statusBarManager assertionManager];
      [assertionManager addObserver:v6];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel_controlCenterWillPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
      [defaultCenter addObserver:v6 selector:sel_controlCenterDidDismiss_ name:@"SBControlCenterDidDismissNotification" object:0];
      [defaultCenter addObserver:v6 selector:sel_systemApertureLayoutDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
      [defaultCenter addObserver:v6 selector:sel_differentiateWithoutColorDidChange_ name:*MEMORY[0x277D764E0] object:0];
      [(SBRecordingIndicatorManager *)v6 activityDidChangeForSensorActivityDataProvider:sensorActivityDataProvider];

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

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
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

- (void)_createRecordingIndicatorForStandaloneLocation:(BOOL)location
{
  locationCopy = location;
  windowScene = [(SBRecordingIndicatorManager *)self windowScene];
  v5 = [[SBRecordingIndicatorWindow alloc] initWithWindowScene:windowScene debugName:@"Recording Indicator"];
  v6 = [SBRecordingIndicatorViewController alloc];
  minimumOnTimeCoordinator = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v8 = [(SBRecordingIndicatorViewController *)v6 initForLocation:locationCopy windowScene:windowScene minimumOnTimeCoordinator:minimumOnTimeCoordinator];
  recordingIndicatorViewController = self->_recordingIndicatorViewController;
  self->_recordingIndicatorViewController = v8;

  [(SBRecordingIndicatorWindow *)v5 setRootViewController:self->_recordingIndicatorViewController];
  [(SBRecordingIndicatorWindow *)v5 setWindowLevel:*MEMORY[0x277D76EB0] + 10.0];
  [(SBRecordingIndicatorWindow *)v5 setUserInteractionEnabled:0];
  [(SBWindow *)v5 setHidden:0];
  if (locationCopy)
  {
    SBRecordingIndicatorApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(v5, windowScene);
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
  windowScene = [(SBRecordingIndicatorManager *)self windowScene];
  v3 = [[SBRecordingIndicatorWindow alloc] initWithWindowScene:windowScene debugName:@"Recording Indicator (UIKit Status Bar Portal)"];
  v4 = [SBRecordingIndicatorViewController alloc];
  minimumOnTimeCoordinator = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v6 = [(SBRecordingIndicatorViewController *)v4 initForLocation:2 windowScene:windowScene minimumOnTimeCoordinator:minimumOnTimeCoordinator];
  recordingIndicatorViewControllerUIKitStatusBarPortal = self->_recordingIndicatorViewControllerUIKitStatusBarPortal;
  self->_recordingIndicatorViewControllerUIKitStatusBarPortal = v6;

  [(SBRecordingIndicatorWindow *)v3 setRootViewController:self->_recordingIndicatorViewControllerUIKitStatusBarPortal];
  [(SBRecordingIndicatorWindow *)v3 setWindowLevel:*MEMORY[0x277D772B0] + -1.0];
  [(SBRecordingIndicatorWindow *)v3 setUserInteractionEnabled:0];
  [(SBWindow *)v3 setHidden:0];
  objc_storeStrong(&self->_recordingIndicatorWindowUIKitStatusBarPortal, v3);
  SBStatusBarIsSpeakeasy();
  v8 = objc_opt_class();
  indicator = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal indicator];
  contentView = [indicator contentView];

  screen = [windowScene screen];
  [v8 registerSensorActivityIndicator:contentView forScreen:screen];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal setDelegate:self];
  [(SBRecordingIndicatorManager *)self _configureSupportForRotatingIndicator];
}

- (void)_createRecordingIndicatorForSystemApertureLocation
{
  _systemApertureManagedIndicatorEnabled = [objc_opt_class() _systemApertureManagedIndicatorEnabled];
  windowScene = [(SBRecordingIndicatorManager *)self windowScene];
  v4 = [[SBRecordingIndicatorWindow alloc] initWithWindowScene:windowScene debugName:@"Recording Indicator (SystemAperture Portal)"];
  if (_systemApertureManagedIndicatorEnabled)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  v6 = [SBRecordingIndicatorViewController alloc];
  minimumOnTimeCoordinator = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v8 = [(SBRecordingIndicatorViewController *)v6 initForLocation:v5 windowScene:windowScene minimumOnTimeCoordinator:minimumOnTimeCoordinator];
  recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewControllerSystemAperturePortal;
  self->_recordingIndicatorViewControllerSystemAperturePortal = v8;

  [(SBRecordingIndicatorWindow *)v4 setRootViewController:self->_recordingIndicatorViewControllerSystemAperturePortal];
  [(SBRecordingIndicatorWindow *)v4 setWindowLevel:*MEMORY[0x277D76EB0] + 5.0];
  [(SBRecordingIndicatorWindow *)v4 setUserInteractionEnabled:0];
  [(SBWindow *)v4 setHidden:0];
  objc_storeStrong(&self->_recordingIndicatorWindowSystemAperturePortal, v4);
  indicator = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicator];
  if (_systemApertureManagedIndicatorEnabled)
  {
    secondaryIndicator = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal secondaryIndicator];
  }

  else
  {
    secondaryIndicator = 0;
  }

  minimumOnTimeCoordinator2 = [(SBRecordingIndicatorManager *)self minimumOnTimeCoordinator];
  v13 = minimumOnTimeCoordinator2;
  if (minimumOnTimeCoordinator2)
  {
    v14 = minimumOnTimeCoordinator2;
  }

  else
  {
    v14 = objc_alloc_init(SBSecureIndicatorMinimumOnTimeCoordinator);
  }

  v15 = v14;

  v16 = [[SBRecordingIndicatorSystemApertureElement alloc] initWithInterSensorRegionIndicatorVisualRepresentation:secondaryIndicator microRegionIndicatorVisualRepresentation:indicator recordingIndicatorManager:self minimumOnTimeCoordinator:v15];
  recordingIndicatorElement = self->_recordingIndicatorElement;
  self->_recordingIndicatorElement = v16;

  SBRecordingIndicatorApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(v4, windowScene);
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal setDelegate:self];
}

- (void)dealloc
{
  [(SAInvalidatable *)self->_recordingIndicatorElementAssertion invalidateWithReason:@"dealloc"];
  [(SBSensorActivityDataProvider *)self->_dataProvider removeObserver:self];
  v3 = +[SBRecordingIndicatorDomain rootSettings];
  [v3 removeKeyObserver:self];

  _sbWindowScene = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];
  [assertionManager removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v8.receiver = self;
  v8.super_class = SBRecordingIndicatorManager;
  [(SBRecordingIndicatorManager *)&v8 dealloc];
}

- (unint64_t)_indicatorTypeForSensorType:(int64_t)type
{
  if (type != 1)
  {
    return 0;
  }

  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
    return 2;
  }

  return 1;
}

- (id)_indicatorIdentifierForSensorType:(int64_t)type
{
  if (type == 1)
  {
    return @"microphone-recording-indicator";
  }

  else
  {
    return @"camera-recording-indicator";
  }
}

- (void)_dataProviderDidUpdate:(id)update
{
  updateCopy = update;
  objc_storeStrong(&self->_dataProvider, update);
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

  activeCameraAndMicrophoneActivityAttributions = [updateCopy activeCameraAndMicrophoneActivityAttributions];
  v8 = [activeCameraAndMicrophoneActivityAttributions count];
  if (v8)
  {
    [(SBRecordingIndicatorManager *)self _updateIndicatorStyleForSensorActivityAttributions:activeCameraAndMicrophoneActivityAttributions];
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

- (void)setIndicatorVisible:(BOOL)visible
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_indicatorVisible != visible)
  {
    visibleCopy = visible;
    self->_indicatorVisible = visible;
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"off";
      if (visibleCopy)
      {
        v6 = @"on";
      }

      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@...", &v15, 0xCu);
    }

    displayMode = [(SBRecordingIndicatorManager *)self displayMode];
    if (displayMode <= 5)
    {
      if (((1 << displayMode) & 0x34) != 0)
      {
        [(SBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
        if (visibleCopy)
        {
          [(SBRecordingIndicatorSystemApertureElement *)self->_recordingIndicatorElement pulse];
        }
      }

      else
      {
        if (((1 << displayMode) & 3) != 0)
        {
          selfCopy2 = self;
          v9 = visibleCopy;
          v10 = 0;
        }

        else
        {
          if (visibleCopy)
          {
            _sbWindowScene = [(UIWindow *)self->_recordingIndicatorWindow _sbWindowScene];
            statusBarManager = [_sbWindowScene statusBarManager];
            assertionManager = [statusBarManager assertionManager];
            isFrontmostStatusBarHidden = [assertionManager isFrontmostStatusBarHidden];
            [(SBRecordingIndicatorManager *)self _setIndicatorVisible:isFrontmostStatusBarHidden atLocation:0];
            [(SBRecordingIndicatorManager *)self _setIndicatorVisible:isFrontmostStatusBarHidden ^ 1 atLocation:2];

            return;
          }

          [(SBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:0];
          selfCopy2 = self;
          v9 = 0;
          v10 = 2;
        }

        [(SBRecordingIndicatorManager *)selfCopy2 _setIndicatorVisible:v9 atLocation:v10];
      }
    }
  }
}

- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)location
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_indicatorVisibleAtStatusBarLocation != location)
  {
    locationCopy = location;
    self->_indicatorVisibleAtStatusBarLocation = location;
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"off";
      if (locationCopy)
      {
        v5 = @"on";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at Status Bar location (via status bar data change)", &v7, 0xCu);
    }

    statusBarStateAggregator = [SBApp statusBarStateAggregator];
    [statusBarStateAggregator updateStatusBarItem:28];
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

- (void)_setIndicatorVisible:(BOOL)visible atLocation:(unint64_t)location
{
  visibleCopy = visible;
  if (location < 2)
  {
    indicatorState = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorState];
    if (visibleCopy)
    {
      if (indicatorState - 1 < 2)
      {
        return;
      }

      recordingIndicatorViewController = self->_recordingIndicatorViewController;
      goto LABEL_9;
    }

    if (indicatorState)
    {
      v11 = indicatorState == 3;
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
    if (location - 3 < 2)
    {
      indicatorState2 = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorState];
      if (visibleCopy)
      {
        if (indicatorState2 - 1 < 2)
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

      if (!indicatorState2 || indicatorState2 == 3)
      {
        return;
      }

      recordingIndicatorViewController = self->_recordingIndicatorViewControllerSystemAperturePortal;
LABEL_24:
      v9 = 0;
      goto LABEL_25;
    }

    if (location == 2)
    {
      visibleCopy2 = visible;

      [(SBRecordingIndicatorManager *)self setIndicatorVisibleAtStatusBarLocation:visibleCopy2];
    }
  }
}

- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)attributions
{
  v15 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  if ([attributionsCopy count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = attributionsCopy;
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

- (void)_updateIndicatorViewForSensorType:(int64_t)type
{
  v5 = [(SBRecordingIndicatorManager *)self _indicatorTypeForSensorType:?];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorType:v5];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal updateIndicatorType:v5];
  [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal updateIndicatorType:v5];
  v10 = [(SBRecordingIndicatorManager *)self _indicatorIdentifierForSensorType:type];
  indicator = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicator];
  contentView = [indicator contentView];
  [contentView setAccessibilityIdentifier:v10];

  secondaryIndicator = [(SBRecordingIndicatorViewController *)self->_recordingIndicatorViewController secondaryIndicator];
  contentView2 = [secondaryIndicator contentView];
  [contentView2 setAccessibilityIdentifier:v10];
}

- (void)recordingIndicatorViewController:(id)controller didUpdateIndicatorState:(unint64_t)state
{
  controllerCopy = controller;
  v12 = controllerCopy;
  if (self->_recordingIndicatorViewControllerSystemAperturePortal == controllerCopy)
  {
    [(SBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
    controllerCopy = v12;
  }

  viewIfLoaded = [(SBRecordingIndicatorViewController *)controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  traitCollection = [windowScene traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (_backlightLuminance == 1)
  {
    _backlightSceneEnvironment = [windowScene _backlightSceneEnvironment];
    [_backlightSceneEnvironment invalidateAllTimelinesForReason:@"recording indicator visibility change"];
  }
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)provider
{
  v9 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  activeCameraAndMicrophoneActivityAttributions = [providerCopy activeCameraAndMicrophoneActivityAttributions];
  if (![(NSSet *)self->_activeCameraAndMicrophoneActivityAttributions isEqualToSet:activeCameraAndMicrophoneActivityAttributions])
  {
    objc_storeStrong(&self->_activeCameraAndMicrophoneActivityAttributions, activeCameraAndMicrophoneActivityAttributions);
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = activeCameraAndMicrophoneActivityAttributions;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Active camera/microphone activity changed:\n%{public}@", &v7, 0xCu);
    }

    [(SBRecordingIndicatorManager *)self _dataProviderDidUpdate:providerCopy];
  }
}

- (void)controlCenterWillPresent:(id)present
{
  if ([(SBRecordingIndicatorManager *)self _controlCenterIsOnTheSameWindowScene:present]&& [(SBRecordingIndicatorManager *)self displayMode]== 3)
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

- (void)controlCenterDidDismiss:(id)dismiss
{
  if ([(SBRecordingIndicatorManager *)self _controlCenterIsOnTheSameWindowScene:dismiss]&& [(SBRecordingIndicatorManager *)self displayMode]== 3)
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

- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)scene
{
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  object = [sceneCopy object];

  v7 = [object objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  return WeakRetained == v7;
}

- (void)systemApertureLayoutDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKey:@"SBSystemApertureOriginatingDisplayIdentity"];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _sbDisplayConfiguration = [WeakRetained _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];

  if (identity == v4)
  {
    v8 = [userInfo objectForKey:@"SBSystemApertureVisibleElementIdentifiers"];
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
    v11 = [userInfo objectForKey:@"SBSystemApertureCanRegisterRecordingIndicator"];
    bOOLValue = [v11 BOOLValue];

    [(SBRecordingIndicatorManager *)self setCanSystemApertureRegisterRecordingIndicatorElement:bOOLValue];
    displayMode = [(SBRecordingIndicatorManager *)self displayMode];
    switch(displayMode)
    {
      case 2uLL:
        goto LABEL_8;
      case 5uLL:
        v14 = [userInfo objectForKey:@"SBSystemApertureFrames"];
        if ([v14 count])
        {
          firstObject = [v14 firstObject];
          [firstObject CGRectValue];
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

- (void)differentiateWithoutColorDidChange:(id)change
{
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Received UIAccessibility setting differentiateWithoutColorDidChange notification, simulating Recording Indicator UI updates...", v5, 2u);
  }

  [(SBRecordingIndicatorManager *)self _dataProviderDidUpdate:self->_dataProvider];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = [SBRecordingIndicatorDomain rootSettings:settings];
  sensorType = [v5 sensorType];

  if (sensorType == 1)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(SBRecordingIndicatorManager *)self setIndicatorVisible:1];
    selfCopy2 = self;
    v8 = 0;
    goto LABEL_5;
  }

  if (sensorType == 2)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(SBRecordingIndicatorManager *)self setIndicatorVisible:1];
    selfCopy2 = self;
    v8 = 1;
LABEL_5:

    [(SBRecordingIndicatorManager *)selfCopy2 _updateIndicatorViewForSensorType:v8];
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
    activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
    v3 = *(v1 + 32);

    return [v3 setActiveInterfaceOrientation:activeInterfaceOrientation withDuration:0.0];
  }

  return result;
}

@end