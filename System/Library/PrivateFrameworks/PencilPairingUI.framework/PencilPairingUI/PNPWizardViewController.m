@interface PNPWizardViewController
+ (CGSize)preferredContentSize;
- (PNPDeviceState)deviceState;
- (PNPWizardViewDelegate)wizardDelegate;
- (id)controllerForType:(int64_t)a3 buttonType:(int64_t)a4;
- (id)createControllerPlanForDeviceType:(int64_t)a3 isWhatsNew:(BOOL)a4;
- (id)createOnboardingControllerWithPencilUUID:(id)a3;
- (id)fullEducationControllerQueueForType:(int64_t)a3;
- (id)welcomeControllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5;
- (id)whatsNewControllerQueueForType:(int64_t)a3;
- (void)didCompleteAccessoryOnboarding:(id)a3 pairingSuccessful:(BOOL)a4;
- (void)exit;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)prepareForPresentation;
- (void)prewarmFMUIController;
- (void)prewarmFMUIControllerIfNecessary;
- (void)processNextController;
- (void)setFindMyCoordinator:(id)a3;
- (void)setupWatchdogTimer;
- (void)showFindMyController;
- (void)syncVisibleTimestamp;
- (void)teardownWatchdogTimer;
- (void)viewDidLoad;
@end

@implementation PNPWizardViewController

- (void)didCompleteAccessoryOnboarding:(id)a3 pairingSuccessful:(BOOL)a4
{
  [(PNPWizardViewController *)self setFindMyCoordinator:0, a4];

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
  v4 = [(PNPWizardViewController *)self navigationBar];
  [v4 setBarStyle:4];

  v5 = [(PNPWizardViewController *)self navigationBar];
  v6 = objc_alloc_init(MEMORY[0x277D755B8]);
  [v5 setBackgroundImage:v6 forBarMetrics:0];

  v7 = objc_alloc_init(MEMORY[0x277D755B8]);
  v8 = [(PNPWizardViewController *)self navigationBar];
  [v8 setShadowImage:v7];

  v9 = [(PNPWizardViewController *)self navigationBar];
  [v9 setTranslucent:1];

  [(PNPWizardViewController *)self setDelegate:self];
  v10 = [MEMORY[0x277CD9698] sharedSettings];
  [(PNPWizardViewController *)self setTextInputSettings:v10];

  v11 = [(PNPWizardViewController *)self textInputSettings];
  -[PNPWizardViewController setHasScribbleKeyboard:](self, "setHasScribbleKeyboard:", [v11 supportedKeyboardLocaleExists]);

  [(PNPWizardViewController *)self setModalPresentationStyle:1];
  [(PNPWizardViewController *)self setControllerIndex:-1];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 viewControllers];
    v11 = [v10 lastObject];

    v12 = [v11 controllerType];
    v13 = [(PNPWizardViewController *)self controllerQueue];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v15 = [v13 indexOfObject:v14];

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
  v3 = [(PNPWizardViewController *)self wizardDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PNPWizardViewController *)self wizardDelegate];
    v6 = [v5 deviceState];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prepareForPresentation
{
  v14 = *MEMORY[0x277D85DE8];
  [(PNPWizardViewController *)self setupWatchdogTimer];
  v3 = [(PNPWizardViewController *)self wizardDelegate];
  v4 = [v3 shouldShowWhatsNewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 deviceType];
  }

  else
  {
    v5 = 2;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v3 deviceState];
    [(PNPWizardViewController *)self setDeviceState:v6];
  }

  [(PNPWizardViewController *)self setShowingWhatsNew:v4];
  [(PNPWizardViewController *)self setDeviceType:v5];
  v7 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = v5;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "PNPWizardViewController prepareForPresentation. Device type: %ld, shouldShowWhatsNew: %d", &v10, 0x12u);
  }

  v8 = [(PNPWizardViewController *)self createControllerPlanForDeviceType:v5 isWhatsNew:v4];
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
  v3 = [(PNPWizardViewController *)self controllerIndex];
  v4 = [(PNPWizardViewController *)self controllerQueue];
  v5 = [v4 count];

  v6 = v3 >= 0 || v5 <= 0;
  v7 = !v6;
  if (!v6)
  {
    v8 = 0;
LABEL_12:
    v10 = [(PNPWizardViewController *)self controllerQueue];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v9 = [v11 integerValue];

    goto LABEL_13;
  }

  v9 = 0;
  v8 = -1;
  if ((v3 & 0x8000000000000000) == 0 && v3 < v5 - 1)
  {
    v8 = v3 + 1;
    goto LABEL_12;
  }

LABEL_13:
  [(PNPWizardViewController *)self setControllerIndex:v8];
  if (v8 == -1 || v9 == 7)
  {

    [(PNPWizardViewController *)self exit];
  }

  else if (v9 == 5)
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

    v13 = [(PNPWizardViewController *)self wizardDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(PNPWizardViewController *)self wizardDelegate];
      v16 = [v15 featuresForWelcomeControllerType:v9];
    }

    else
    {
      v16 = 3;
    }

    v17 = [PNPWelcomeController controllerWithType:v9 buttonType:v12 deviceType:[(PNPWizardViewController *)self deviceType] features:v16 delegate:self];
    v18 = [(PNPWizardViewController *)self wizardDelegate];

    if (v18)
    {
      v19 = [(PNPWizardViewController *)self wizardDelegate];
      v20 = [v19 backgroundColorForWizardController:self];
      v21 = [v17 view];
      [v21 setBackgroundColor:v20];
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
  v3 = [(PNPWizardViewController *)self watchdogTimer];

  if (v3)
  {
    v4 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E1BC000, v4, OS_LOG_TYPE_DEFAULT, "PNPWizardController teardown watchdog timer.", v6, 2u);
    }

    v5 = [(PNPWizardViewController *)self watchdogTimer];
    [v5 invalidate];

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
  v5 = [(PNPWizardViewController *)self controllerQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__PNPWizardViewController_exit__block_invoke;
  v11[3] = &unk_279A0A5A0;
  v11[4] = buf;
  [v5 enumerateObjectsUsingBlock:v11];

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
  v10 = [(PNPWizardViewController *)self wizardDelegate];
  [v10 wizardViewRequestsDismiss:self];

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
  v3 = [(PNPWizardViewController *)self controllerQueue];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) integerValue] == 5)
        {
          [(PNPWizardViewController *)self prewarmFMUIController];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setFindMyCoordinator:(id)a3
{
  objc_storeStrong(&self->_findMyCoordinator, a3);
  v4 = [(PNPWizardViewController *)self didCreateFindMyCoordinator]|| self->_findMyCoordinator != 0;

  [(PNPWizardViewController *)self setDidCreateFindMyCoordinator:v4];
}

- (void)prewarmFMUIController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(PNPWizardViewController *)self deviceState];
  v4 = [v3 identifier];

  v5 = [(PNPWizardViewController *)self findMyCoordinator];
  if (v5 || !v4)
  {

    if (!v4)
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
    v6 = [(PNPWizardViewController *)self createOnboardingControllerWithPencilUUID:v4];
    [(PNPWizardViewController *)self setFindMyCoordinator:v6];

    v7 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "Prewarming find my controller for pencilID: %@", &v8, 0xCu);
    }

LABEL_9:
  }
}

- (id)createOnboardingControllerWithPencilUUID:(id)a3
{
  v4 = a3;
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
  v10 = [[v8 alloc] initWithIdentifier:v4 productType:2 productImage:v7];
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
  v3 = [(PNPWizardViewController *)self deviceState];
  v4 = [v3 identifier];

  v5 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_25E1BC000, v5, OS_LOG_TYPE_DEFAULT, "showFindMyController pencilUUID: %@", &v11, 0xCu);
  }

  if (v4)
  {
    v6 = [(PNPWizardViewController *)self findMyCoordinator];

    if (!v6)
    {
      v7 = [(PNPWizardViewController *)self createOnboardingControllerWithPencilUUID:v4];
      [(PNPWizardViewController *)self setFindMyCoordinator:v7];
    }

    v8 = [(PNPWizardViewController *)self findMyCoordinator];
    v9 = [v8 shouldShowFMOnboardingFlow];
    v10 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = v9;
      _os_log_impl(&dword_25E1BC000, v10, OS_LOG_TYPE_DEFAULT, "FMUICoordinator result for should show find my controller: %d", &v11, 8u);
    }

    if (v9)
    {
      [v8 setDelegate:self];
      [v8 start];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PNPWizardViewController *)v8 showFindMyController];
    }
  }
}

- (id)controllerForType:(int64_t)a3 buttonType:(int64_t)a4
{
  v7 = [(PNPWizardViewController *)self wizardDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PNPWizardViewController *)self wizardDelegate];
    v10 = [v9 featuresForWelcomeControllerType:a3];
  }

  else
  {
    v10 = 3;
  }

  v11 = [(PNPWizardViewController *)self deviceType];

  return [PNPWelcomeController controllerWithType:a3 buttonType:a4 deviceType:v11 features:v10 delegate:self];
}

- (id)createControllerPlanForDeviceType:(int64_t)a3 isWhatsNew:(BOOL)a4
{
  if (a4)
  {
    [(PNPWizardViewController *)self whatsNewControllerQueueForType:a3];
  }

  else
  {
    [(PNPWizardViewController *)self fullEducationControllerQueueForType:a3];
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

- (id)whatsNewControllerQueueForType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_279A0A620[a3];
  }
}

- (id)fullEducationControllerQueueForType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_279A0A648[a3];
  }
}

+ (CGSize)preferredContentSize
{
  [MEMORY[0x277D37698] preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)welcomeControllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5
{
  v9 = [(PNPWizardViewController *)self wizardDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PNPWizardViewController *)self wizardDelegate];
    v12 = [v11 featuresForWelcomeControllerType:a3];
  }

  else
  {
    v12 = 3;
  }

  v13 = [PNPWelcomeController controllerWithType:a3 buttonType:a4 deviceType:a5 features:v12 delegate:self];
  v14 = [(PNPWizardViewController *)self wizardDelegate];

  if (v14)
  {
    v15 = [(PNPWizardViewController *)self wizardDelegate];
    v16 = [v15 backgroundColorForWizardController:self];
    v17 = [v13 view];
    [v17 setBackgroundColor:v16];
  }

  return v13;
}

- (PNPWizardViewDelegate)wizardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wizardDelegate);

  return WeakRetained;
}

@end