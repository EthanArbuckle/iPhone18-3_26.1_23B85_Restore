@interface PNPWizardViewController
+ (CGSize)preferredContentSize;
- (PNPDeviceState)deviceState;
- (PNPWizardViewDelegate)wizardDelegate;
- (id)controllerForType:(int64_t)type buttonType:(int64_t)buttonType;
- (id)createControllerPlanForDeviceType:(int64_t)type isWhatsNew:(BOOL)new;
- (id)createOnboardingControllerWithPencilUUID:(id)d;
- (id)fullEducationControllerQueueForType:(int64_t)type;
- (id)welcomeControllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType;
- (id)whatsNewControllerQueueForType:(int64_t)type;
- (void)didCompleteAccessoryOnboarding:(id)onboarding pairingSuccessful:(BOOL)successful;
- (void)exit;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)prepareForPresentation;
- (void)prewarmFMUIController;
- (void)prewarmFMUIControllerIfNecessary;
- (void)processNextController;
- (void)setFindMyCoordinator:(id)coordinator;
- (void)setupWatchdogTimer;
- (void)showFindMyController;
- (void)syncVisibleTimestamp;
- (void)teardownWatchdogTimer;
- (void)viewDidLoad;
@end

@implementation PNPWizardViewController

- (void)didCompleteAccessoryOnboarding:(id)onboarding pairingSuccessful:(BOOL)successful
{
  [(PNPWizardViewController *)self setFindMyCoordinator:0, successful];

  [(PNPWizardViewController *)self processNextController];
}

- (void)viewDidLoad
{
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "Did load wizard view controller", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = PNPWizardViewController;
  [(PNPWizardViewController *)&v12 viewDidLoad];
  navigationBar = [(PNPWizardViewController *)self navigationBar];
  [navigationBar setBarStyle:4];

  navigationBar2 = [(PNPWizardViewController *)self navigationBar];
  v6 = objc_alloc_init(MEMORY[0x277D755B8]);
  [navigationBar2 setBackgroundImage:v6 forBarMetrics:0];

  v7 = objc_alloc_init(MEMORY[0x277D755B8]);
  navigationBar3 = [(PNPWizardViewController *)self navigationBar];
  [navigationBar3 setShadowImage:v7];

  navigationBar4 = [(PNPWizardViewController *)self navigationBar];
  [navigationBar4 setTranslucent:1];

  [(PNPWizardViewController *)self setDelegate:self];
  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  [(PNPWizardViewController *)self setTextInputSettings:mEMORY[0x277CD9698]];

  textInputSettings = [(PNPWizardViewController *)self textInputSettings];
  -[PNPWizardViewController setHasScribbleKeyboard:](self, "setHasScribbleKeyboard:", [textInputSettings supportedKeyboardLocaleExists]);

  [(PNPWizardViewController *)self setModalPresentationStyle:1];
  [(PNPWizardViewController *)self setControllerIndex:-1];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    viewControllers = [controllerCopy viewControllers];
    lastObject = [viewControllers lastObject];

    controllerType = [lastObject controllerType];
    controllerQueue = [(PNPWizardViewController *)self controllerQueue];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:controllerType];
    v15 = [controllerQueue indexOfObject:v14];

    v16 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_25E1BC000, v16, OS_LOG_TYPE_DEFAULT, "Setting index for PNPWelcomeController: %ld", &v17, 0xCu);
    }

    [(PNPWizardViewController *)self setControllerIndex:v15];
  }
}

- (PNPDeviceState)deviceState
{
  wizardDelegate = [(PNPWizardViewController *)self wizardDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    wizardDelegate2 = [(PNPWizardViewController *)self wizardDelegate];
    deviceState = [wizardDelegate2 deviceState];
  }

  else
  {
    deviceState = 0;
  }

  return deviceState;
}

- (void)prepareForPresentation
{
  v14 = *MEMORY[0x277D85DE8];
  [(PNPWizardViewController *)self setupWatchdogTimer];
  wizardDelegate = [(PNPWizardViewController *)self wizardDelegate];
  shouldShowWhatsNewController = [wizardDelegate shouldShowWhatsNewController];
  if (objc_opt_respondsToSelector())
  {
    deviceType = [wizardDelegate deviceType];
  }

  else
  {
    deviceType = 2;
  }

  if (objc_opt_respondsToSelector())
  {
    deviceState = [wizardDelegate deviceState];
    [(PNPWizardViewController *)self setDeviceState:deviceState];
  }

  [(PNPWizardViewController *)self setShowingWhatsNew:shouldShowWhatsNewController];
  [(PNPWizardViewController *)self setDeviceType:deviceType];
  v7 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = deviceType;
    v12 = 1024;
    v13 = shouldShowWhatsNewController;
    _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "PNPWizardViewController prepareForPresentation. Device type: %ld, shouldShowWhatsNew: %d", &v10, 0x12u);
  }

  v8 = [(PNPWizardViewController *)self createControllerPlanForDeviceType:deviceType isWhatsNew:shouldShowWhatsNewController];
  [(PNPWizardViewController *)self setControllerQueue:v8];

  if ([(PNPWizardViewController *)self deviceType]== 4)
  {
    v9 = +[PNPSqueezeThresholdController sharedController];
    [v9 initializeToDefaultThresholdIfUninitialized];
  }

  [(PNPWizardViewController *)self prewarmFMUIControllerIfNecessary];
  [(PNPWizardViewController *)self processNextController];
}

- (void)processNextController
{
  controllerIndex = [(PNPWizardViewController *)self controllerIndex];
  controllerQueue = [(PNPWizardViewController *)self controllerQueue];
  v5 = [controllerQueue count];

  v6 = controllerIndex >= 0 || v5 <= 0;
  v7 = !v6;
  if (!v6)
  {
    v8 = 0;
LABEL_12:
    controllerQueue2 = [(PNPWizardViewController *)self controllerQueue];
    v11 = [controllerQueue2 objectAtIndexedSubscript:v8];
    integerValue = [v11 integerValue];

    goto LABEL_13;
  }

  integerValue = 0;
  v8 = -1;
  if ((controllerIndex & 0x8000000000000000) == 0 && controllerIndex < v5 - 1)
  {
    v8 = controllerIndex + 1;
    goto LABEL_12;
  }

LABEL_13:
  [(PNPWizardViewController *)self setControllerIndex:v8];
  if (v8 == -1 || integerValue == 7)
  {

    [(PNPWizardViewController *)self exit];
  }

  else if (integerValue == 5)
  {

    [(PNPWizardViewController *)self showFindMyController];
  }

  else
  {
    if (v8 == v5 - 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    wizardDelegate = [(PNPWizardViewController *)self wizardDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      wizardDelegate2 = [(PNPWizardViewController *)self wizardDelegate];
      v16 = [wizardDelegate2 featuresForWelcomeControllerType:integerValue];
    }

    else
    {
      v16 = 3;
    }

    v17 = [PNPWelcomeController controllerWithType:integerValue buttonType:v12 deviceType:[(PNPWizardViewController *)self deviceType] features:v16 delegate:self];
    wizardDelegate3 = [(PNPWizardViewController *)self wizardDelegate];

    if (wizardDelegate3)
    {
      wizardDelegate4 = [(PNPWizardViewController *)self wizardDelegate];
      v20 = [wizardDelegate4 backgroundColorForWizardController:self];
      view = [v17 view];
      [view setBackgroundColor:v20];
    }

    if (v7)
    {
      v22 = MEMORY[0x277D75D18];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __48__PNPWizardViewController_processNextController__block_invoke;
      v23[3] = &unk_279A0A1F0;
      v23[4] = self;
      v24 = v17;
      [v22 performWithoutAnimation:v23];
    }

    else
    {
      [(PNPWizardViewController *)self pushViewController:v17 animated:1];
    }
  }
}

void __48__PNPWizardViewController_processNextController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) pushViewController:*(a1 + 40) animated:0];
  v2 = [*(a1 + 40) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 40) view];
  [v3 layoutIfNeeded];
}

- (void)syncVisibleTimestamp
{
  v2 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E1BC000, v2, OS_LOG_TYPE_DEFAULT, "PNPWizardController sync visible timestamp.", v5, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.sharingd"];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSinceReferenceDate];
  [v3 setDouble:@"latestTimestampForVisibleEduUI" forKey:?];
  [v3 synchronize];
}

- (void)setupWatchdogTimer
{
  [(PNPWizardViewController *)self teardownWatchdogTimer];
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "PNPWizardController setup watchdog timer.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277CBEBB8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PNPWizardViewController_setupWatchdogTimer__block_invoke;
  v6[3] = &unk_279A0A0D8;
  objc_copyWeak(&v7, buf);
  v5 = [v4 scheduledTimerWithTimeInterval:1 repeats:v6 block:1.0];
  [(PNPWizardViewController *)self setWatchdogTimer:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __45__PNPWizardViewController_setupWatchdogTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained syncVisibleTimestamp];
}

- (void)teardownWatchdogTimer
{
  watchdogTimer = [(PNPWizardViewController *)self watchdogTimer];

  if (watchdogTimer)
  {
    v4 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E1BC000, v4, OS_LOG_TYPE_DEFAULT, "PNPWizardController teardown watchdog timer.", v6, 2u);
    }

    watchdogTimer2 = [(PNPWizardViewController *)self watchdogTimer];
    [watchdogTimer2 invalidate];

    [(PNPWizardViewController *)self setWatchdogTimer:0];
  }
}

- (void)exit
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "PNPWizardController exit", buf, 2u);
  }

  [(PNPWizardViewController *)self teardownWatchdogTimer];
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.sharingd"];
  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = [v4 BOOLForKey:@"hasSeenScribbleEducationPanelsKey"];
  controllerQueue = [(PNPWizardViewController *)self controllerQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__PNPWizardViewController_exit__block_invoke;
  v11[3] = &unk_279A0A5A0;
  v11[4] = buf;
  [controllerQueue enumerateObjectsUsingBlock:v11];

  [v4 setBool:1 forKey:@"hasEverShownEduUI"];
  v6 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_25E1BC000, v6, OS_LOG_TYPE_DEFAULT, "Setting PPUIHasShownEducationUIKey", v16, 2u);
  }

  [v4 setBool:v13[24] forKey:@"hasSeenScribbleEducationPanelsKey"];
  v7 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v13[24];
    *v16 = 67109120;
    v17 = v8;
    _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "Setting PPUIHasSeenScribbleEducationPanelsKey: %d", v16, 8u);
  }

  [v4 setInteger:2 forKey:@"lastSeenWhatsNewVersionKey"];
  v9 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 67109120;
    v17 = 2;
    _os_log_impl(&dword_25E1BC000, v9, OS_LOG_TYPE_DEFAULT, "Setting PPUILastSeenWhatsNewVersionKey: %d", v16, 8u);
  }

  [v4 synchronize];
  wizardDelegate = [(PNPWizardViewController *)self wizardDelegate];
  [wizardDelegate wizardViewRequestsDismiss:self];

  _Block_object_dispose(buf, 8);
}

void __31__PNPWizardViewController_exit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v10 = v3;
  if (*(v4 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 integerValue] == 3;
    v4 = *(*(a1 + 32) + 8);
  }

  *(v4 + 24) = v5;
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24))
  {
    v7 = 1;
    v8 = v10;
  }

  else
  {
    v9 = [v10 integerValue] == 1;
    v8 = v10;
    v7 = v9;
    v6 = *(*(a1 + 32) + 8);
  }

  *(v6 + 24) = v7;
}

- (void)prewarmFMUIControllerIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  controllerQueue = [(PNPWizardViewController *)self controllerQueue];
  v4 = [controllerQueue countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(controllerQueue);
        }

        if ([*(*(&v8 + 1) + 8 * i) integerValue] == 5)
        {
          [(PNPWizardViewController *)self prewarmFMUIController];
          goto LABEL_11;
        }
      }

      v5 = [controllerQueue countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setFindMyCoordinator:(id)coordinator
{
  objc_storeStrong(&self->_findMyCoordinator, coordinator);
  v4 = [(PNPWizardViewController *)self didCreateFindMyCoordinator]|| self->_findMyCoordinator != 0;

  [(PNPWizardViewController *)self setDidCreateFindMyCoordinator:v4];
}

- (void)prewarmFMUIController
{
  v10 = *MEMORY[0x277D85DE8];
  deviceState = [(PNPWizardViewController *)self deviceState];
  identifier = [deviceState identifier];

  findMyCoordinator = [(PNPWizardViewController *)self findMyCoordinator];
  if (findMyCoordinator || !identifier)
  {

    if (!identifier)
    {
      v7 = os_log_create("com.apple.pencilpairingui", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(PNPWizardViewController *)v7 prewarmFMUIController];
      }

      goto LABEL_9;
    }
  }

  else if (![(PNPWizardViewController *)self didCreateFindMyCoordinator])
  {
    v6 = [(PNPWizardViewController *)self createOnboardingControllerWithPencilUUID:identifier];
    [(PNPWizardViewController *)self setFindMyCoordinator:v6];

    v7 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = identifier;
      _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "Prewarming find my controller for pencilID: %@", &v8, 0xCu);
    }

LABEL_9:
  }
}

- (id)createOnboardingControllerWithPencilUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"PencilFindMyPin" inBundle:v6];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getFMUIDiscoveredAccessoryClass_softClass;
  v23 = getFMUIDiscoveredAccessoryClass_softClass;
  if (!getFMUIDiscoveredAccessoryClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getFMUIDiscoveredAccessoryClass_block_invoke;
    v18 = &unk_279A0A5C8;
    v19 = &v20;
    __getFMUIDiscoveredAccessoryClass_block_invoke(&v15);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = [[v8 alloc] initWithIdentifier:dCopy productType:2 productImage:v7];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v11 = getFMUIAccessoryOnboardingCoordinatorClass_softClass;
  v23 = getFMUIAccessoryOnboardingCoordinatorClass_softClass;
  if (!getFMUIAccessoryOnboardingCoordinatorClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getFMUIAccessoryOnboardingCoordinatorClass_block_invoke;
    v18 = &unk_279A0A5C8;
    v19 = &v20;
    __getFMUIAccessoryOnboardingCoordinatorClass_block_invoke(&v15);
    v11 = v21[3];
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);
  v13 = [[v11 alloc] initWithPresenter:self accessory:v10];

  return v13;
}

- (void)showFindMyController
{
  v13 = *MEMORY[0x277D85DE8];
  deviceState = [(PNPWizardViewController *)self deviceState];
  identifier = [deviceState identifier];

  v5 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_25E1BC000, v5, OS_LOG_TYPE_DEFAULT, "showFindMyController pencilUUID: %@", &v11, 0xCu);
  }

  if (identifier)
  {
    findMyCoordinator = [(PNPWizardViewController *)self findMyCoordinator];

    if (!findMyCoordinator)
    {
      v7 = [(PNPWizardViewController *)self createOnboardingControllerWithPencilUUID:identifier];
      [(PNPWizardViewController *)self setFindMyCoordinator:v7];
    }

    findMyCoordinator2 = [(PNPWizardViewController *)self findMyCoordinator];
    shouldShowFMOnboardingFlow = [findMyCoordinator2 shouldShowFMOnboardingFlow];
    v10 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = shouldShowFMOnboardingFlow;
      _os_log_impl(&dword_25E1BC000, v10, OS_LOG_TYPE_DEFAULT, "FMUICoordinator result for should show find my controller: %d", &v11, 8u);
    }

    if (shouldShowFMOnboardingFlow)
    {
      [findMyCoordinator2 setDelegate:self];
      [findMyCoordinator2 start];
    }
  }

  else
  {
    findMyCoordinator2 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(findMyCoordinator2, OS_LOG_TYPE_ERROR))
    {
      [(PNPWizardViewController *)findMyCoordinator2 showFindMyController];
    }
  }
}

- (id)controllerForType:(int64_t)type buttonType:(int64_t)buttonType
{
  wizardDelegate = [(PNPWizardViewController *)self wizardDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    wizardDelegate2 = [(PNPWizardViewController *)self wizardDelegate];
    v10 = [wizardDelegate2 featuresForWelcomeControllerType:type];
  }

  else
  {
    v10 = 3;
  }

  deviceType = [(PNPWizardViewController *)self deviceType];

  return [PNPWelcomeController controllerWithType:type buttonType:buttonType deviceType:deviceType features:v10 delegate:self];
}

- (id)createControllerPlanForDeviceType:(int64_t)type isWhatsNew:(BOOL)new
{
  if (new)
  {
    [(PNPWizardViewController *)self whatsNewControllerQueueForType:type];
  }

  else
  {
    [(PNPWizardViewController *)self fullEducationControllerQueueForType:type];
  }
  v5 = ;
  if (![(PNPWizardViewController *)self hasScribbleKeyboard])
  {
    v6 = [v5 mutableCopy];
    [v6 removeObject:&unk_286FED1A0];
    v7 = [v6 copy];

    v5 = v7;
  }

  return v5;
}

- (id)whatsNewControllerQueueForType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return qword_279A0A620[type];
  }
}

- (id)fullEducationControllerQueueForType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return qword_279A0A648[type];
  }
}

+ (CGSize)preferredContentSize
{
  [MEMORY[0x277D37698] preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)welcomeControllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType
{
  wizardDelegate = [(PNPWizardViewController *)self wizardDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    wizardDelegate2 = [(PNPWizardViewController *)self wizardDelegate];
    v12 = [wizardDelegate2 featuresForWelcomeControllerType:type];
  }

  else
  {
    v12 = 3;
  }

  v13 = [PNPWelcomeController controllerWithType:type buttonType:buttonType deviceType:deviceType features:v12 delegate:self];
  wizardDelegate3 = [(PNPWizardViewController *)self wizardDelegate];

  if (wizardDelegate3)
  {
    wizardDelegate4 = [(PNPWizardViewController *)self wizardDelegate];
    v16 = [wizardDelegate4 backgroundColorForWizardController:self];
    view = [v13 view];
    [view setBackgroundColor:v16];
  }

  return v13;
}

- (PNPWizardViewDelegate)wizardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wizardDelegate);

  return WeakRetained;
}

@end