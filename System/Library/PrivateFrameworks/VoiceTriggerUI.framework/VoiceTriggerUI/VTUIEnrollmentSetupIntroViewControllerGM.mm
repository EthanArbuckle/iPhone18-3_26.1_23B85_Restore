@interface VTUIEnrollmentSetupIntroViewControllerGM
- (VTUIEnrollmentSetupIntroViewControllerGM)initWithDelegate:(id)delegate;
- (void)_animateVisibility:(BOOL)visibility;
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
  isIpad = [v3 isIpad];

  if ((isIpad & 1) == 0)
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
  view = [(UIViewController *)self->_introViewController view];
  view2 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  [view2 addSubview:view];

  [(UIViewController *)self->_introViewController didMoveToParentViewController:self];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  navigationController = [(VTUIEnrollmentSetupIntroViewControllerGM *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v16 = v15;

  v28 = MEMORY[0x277CCAAD0];
  topAnchor = [view topAnchor];
  view3 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  topAnchor2 = [view3 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v16];
  v37[0] = v32;
  bottomAnchor = [view bottomAnchor];
  view4 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[1] = v27;
  leftAnchor = [view leftAnchor];
  view5 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v37[2] = v20;
  rightAnchor = [view rightAnchor];
  view6 = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  rightAnchor2 = [view6 rightAnchor];
  v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v37[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  [v28 activateConstraints:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (VTUIEnrollmentSetupIntroViewControllerGM)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = VTUIEnrollmentSetupIntroViewControllerGM;
  v5 = [(VTUIEnrollmentSetupIntroViewControllerGM *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)didEnterBackground
{
  [(GMEnrollmentSetupIntroViewManager *)self->_buddyFlowViewWrapper resetIfInTraining];
  view = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  [view setHidden:0];
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
  buddyFlowViewWrapper = [(VTUIEnrollmentSetupIntroViewControllerGM *)self buddyFlowViewWrapper];
  [buddyFlowViewWrapper proceedToReady];
}

- (void)_animateVisibility:(BOOL)visibility
{
  if (visibility)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  view = [(VTUIEnrollmentSetupIntroViewControllerGM *)self view];
  [view setAlpha:v5];

  [(VTUIEnrollmentSetupIntroViewControllerGM *)self setHidden:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__VTUIEnrollmentSetupIntroViewControllerGM__animateVisibility___block_invoke;
  v7[3] = &unk_279E54990;
  v7[4] = self;
  visibilityCopy = visibility;
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