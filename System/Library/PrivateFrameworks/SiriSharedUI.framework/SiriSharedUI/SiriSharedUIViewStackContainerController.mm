@interface SiriSharedUIViewStackContainerController
- (BOOL)_canShowWhileLocked;
- (SiriSharedUIViewStackContainer)viewStackContainer;
- (void)loadView;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SiriSharedUIViewStackContainerController

- (void)loadView
{
  v3 = [SiriSharedUIViewStackContainer alloc];
  v4 = [(SiriSharedUIViewStackContainer *)v3 initWithFrame:MEMORY[0x277CBEBF8] contentViews:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SiriSharedUIViewStackContainer *)v4 setDelegate:self];
  [(SiriSharedUIViewStackContainerController *)self setView:v4];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = SiriSharedUIViewStackContainerController;
  coordinatorCopy = coordinator;
  [(SiriSharedUIViewStackContainerController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__SiriSharedUIViewStackContainerController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_278354A18;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:v7 completion:0];
}

void __102__SiriSharedUIViewStackContainerController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewStackContainer];
  [v1 relayout];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SiriSharedUIViewStackContainerController;
  coordinatorCopy = coordinator;
  [(SiriSharedUIViewStackContainerController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__SiriSharedUIViewStackContainerController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278354A18;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __95__SiriSharedUIViewStackContainerController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewStackContainer];
  [v1 updateConstraints];
}

- (SiriSharedUIViewStackContainer)viewStackContainer
{
  view = [(SiriSharedUIViewStackContainerController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = view;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)_canShowWhileLocked
{
  mEMORY[0x277D61AB8] = [MEMORY[0x277D61AB8] sharedInstance];
  isSiriSafeForLockScreen = [mEMORY[0x277D61AB8] isSiriSafeForLockScreen];

  return isSiriSafeForLockScreen;
}

@end