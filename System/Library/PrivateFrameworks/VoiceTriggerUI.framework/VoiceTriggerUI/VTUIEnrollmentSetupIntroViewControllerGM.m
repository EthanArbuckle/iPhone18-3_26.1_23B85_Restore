@interface VTUIEnrollmentSetupIntroViewControllerGM
- (VTUIEnrollmentSetupIntroViewControllerGM)initWithDelegate:(id)a3;
- (void)_animateVisibility:(BOOL)a3;
- (void)didEnterBackground;
- (void)fadeIn;
- (void)prepareReInit;
- (void)viewDidLoad;
@end

@implementation VTUIEnrollmentSetupIntroViewControllerGM

- (void)viewDidLoad
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = VTUIEnrollmentSetupIntroViewControllerGM;
  [(VTUIEnrollmentSetupIntroViewControllerGM *)&v36 viewDidLoad];
  v3 = +[VTUIStyle sharedStyle];
  v4 = [v3 isIpad];

  if ((v4 & 1) == 0)
  {
    [(VTUIEnrollmentSetupIntroViewControllerGM *)self setOverrideUserInterfaceStyle:2];
  }

  v5 = objc_opt_new();
  buddyFlowViewWrapper = self->_buddyFlowViewWrapper;
  self->_buddyFlowViewWrapper = v5;

  v7 = self->_buddyFlowViewWrapper;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [(GMEnrollmentSetupIntroViewManager *)v7 createViewControllerWithIntroViewControllerDelegate:WeakRetained];
  introViewController = self->_introViewController;
  self->_introViewController = v9;

  [(VTUIEnrollmentSetupIntroViewControllerGM *)self addChildViewController:self->_introViewController];
  v11 = [(UIViewController *)self->_introViewController view];
  v12 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  [v12 addSubview:v11];

  [(UIViewController *)self->_introViewController didMoveToParentViewController:self];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self navigationController];
  v14 = [v13 navigationBar];
  [v14 frame];
  v16 = v15;

  v28 = MEMORY[0x277CCAAD0];
  v34 = [v11 topAnchor];
  v35 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-v16];
  v37[0] = v32;
  v30 = [v11 bottomAnchor];
  v31 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  v29 = [v31 bottomAnchor];
  v27 = [v30 constraintEqualToAnchor:v29];
  v37[1] = v27;
  v17 = [v11 leftAnchor];
  v18 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  v19 = [v18 leftAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v37[2] = v20;
  v21 = [v11 rightAnchor];
  v22 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  v23 = [v22 rightAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v37[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  [v28 activateConstraints:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (VTUIEnrollmentSetupIntroViewControllerGM)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VTUIEnrollmentSetupIntroViewControllerGM;
  v5 = [(VTUIEnrollmentSetupIntroViewControllerGM *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)didEnterBackground
{
  [(GMEnrollmentSetupIntroViewManager *)self->_buddyFlowViewWrapper resetIfInTraining];
  v3 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  [v3 setHidden:0];
}

- (void)fadeIn
{
  [(VTUIEnrollmentSetupIntroViewControllerGM *)self _animateVisibility:1];
  v3 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__VTUIEnrollmentSetupIntroViewControllerGM_fadeIn__block_invoke;
  block[3] = &unk_279E54220;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __50__VTUIEnrollmentSetupIntroViewControllerGM_fadeIn__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buddyFlowViewWrapper];
  [v1 proceedToReady];
}

- (void)prepareReInit
{
  v2 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self buddyFlowViewWrapper];
  [v2 proceedToReady];
}

- (void)_animateVisibility:(BOOL)a3
{
  if (a3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  [v6 setAlpha:v5];

  [(VTUIEnrollmentSetupIntroViewControllerGM *)self setHidden:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__VTUIEnrollmentSetupIntroViewControllerGM__animateVisibility___block_invoke;
  v7[3] = &unk_279E54990;
  v7[4] = self;
  v8 = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0 completion:0.400000006];
}

void __63__VTUIEnrollmentSetupIntroViewControllerGM__animateVisibility___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) view];
  [v2 setAlpha:v1];
}

@end