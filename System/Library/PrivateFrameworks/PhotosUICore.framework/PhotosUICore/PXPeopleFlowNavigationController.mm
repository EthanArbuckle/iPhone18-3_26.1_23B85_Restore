@interface PXPeopleFlowNavigationController
- (CGSize)preferredContentSize;
- (PXPeopleFlowNavigationController)initWithFlowController:(id)controller;
- (void)_updateActions;
- (void)back:(id)back;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)next:(id)next;
- (void)setAdvanceButtonEnabled:(BOOL)enabled;
- (void)viewDidLoad;
@end

@implementation PXPeopleFlowNavigationController

- (void)setAdvanceButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  nextButton = [(PXPeopleFlowNavigationController *)self nextButton];
  [nextButton setEnabled:enabledCopy];

  doneButton = [(PXPeopleFlowNavigationController *)self doneButton];
  [doneButton setEnabled:enabledCopy];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  v6 = [viewControllerCopy conformsToProtocol:&unk_1F1973A48];
  v7 = viewControllerCopy;
  if (v6)
  {
    v8 = viewControllerCopy;
    [(PXPeopleFlowNavigationController *)self setCurrentViewController:v8];
    if (objc_opt_respondsToSelector())
    {
      [v8 setActionDelegate:self];
    }

    [(PXPeopleFlowNavigationController *)self _updateActions];

    v7 = viewControllerCopy;
  }
}

- (void)_updateActions
{
  flowController = [(PXPeopleFlowNavigationController *)self flowController];
  if ([flowController hasPreviousViewController])
  {
    [(PXPeopleFlowNavigationController *)self backButton];
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self cancelButton];
  }
  v3 = ;
  if ([flowController hasNextViewController])
  {
    [(PXPeopleFlowNavigationController *)self nextButton];
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self doneButton];
  }
  v4 = ;
  currentViewController = [(PXPeopleFlowNavigationController *)self currentViewController];
  navigationItem = [currentViewController navigationItem];

  [navigationItem setLeftBarButtonItem:v3];
  [navigationItem setRightBarButtonItem:v4];
}

- (void)back:(id)back
{
  currentViewController = [(PXPeopleFlowNavigationController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [currentViewController willTransitionToPreviousInFlow];
  }

  [(PXPeopleFlowNavigationController *)self setAdvanceButtonEnabled:1];
  flowController = [(PXPeopleFlowNavigationController *)self flowController];
  if ([flowController hasPreviousViewController])
  {
    previousViewController = [flowController previousViewController];
    if (previousViewController)
    {
      v6 = [(PXPeopleFlowNavigationController *)self popViewControllerAnimated:1];
    }
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self cancel:self];
  }
}

- (void)next:(id)next
{
  currentViewController = [(PXPeopleFlowNavigationController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [currentViewController willTransitionToNextInFlow];
  }

  [(PXPeopleFlowNavigationController *)self setAdvanceButtonEnabled:1];
  flowController = [(PXPeopleFlowNavigationController *)self flowController];
  if ([flowController hasNextViewController])
  {
    nextViewController = [flowController nextViewController];
    if (objc_opt_respondsToSelector())
    {
      [nextViewController willTransitionIn];
    }

    [(PXPeopleFlowNavigationController *)self pushViewController:nextViewController animated:1];
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self done:self];
  }
}

- (void)done:(id)done
{
  doneCopy = done;
  currentViewController = [(PXPeopleFlowNavigationController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [currentViewController willTransitionToNextInFlow];
  }

  if (objc_opt_respondsToSelector())
  {
    shouldConfirmAdvancement = [currentViewController shouldConfirmAdvancement];
  }

  else
  {
    shouldConfirmAdvancement = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PXPeopleFlowNavigationController_done___block_invoke;
  aBlock[3] = &unk_1E774A2C8;
  aBlock[4] = self;
  v8 = doneCopy;
  v31 = v8;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if ((shouldConfirmAdvancement & 1) == 0)
  {
    (*(v9 + 2))(v9, 0);
    goto LABEL_13;
  }

  bootstrapContext = [currentViewController bootstrapContext];
  localizedName = [bootstrapContext localizedName];
  v29 = bootstrapContext;
  sourcePerson = [bootstrapContext sourcePerson];
  if (!sourcePerson)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFlowNavigationController.m" lineNumber:99 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v24}];
LABEL_16:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    px_descriptionForAssertionMessage = [sourcePerson px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFlowNavigationController.m" lineNumber:99 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v24, px_descriptionForAssertionMessage}];

    goto LABEL_16;
  }

LABEL_9:
  v27 = localizedName;
  selfCopy = self;
  if ([localizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapVerifyAlertMessageNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v14 = PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapVerifyAlertMessageUnnamed");
  v15 = PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapVerifyAlertConfirmTitleUnnamed");
  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v14 preferredStyle:0];
  v17 = [MEMORY[0x1E69DC648] actionWithTitle:v15 style:0 handler:v10];
  v18 = MEMORY[0x1E69DC648];
  v19 = PXLocalizedStringFromTable(@"PXPeopleBootstrapVerifyAlertCancel", @"PhotosUICore");
  v20 = [v18 actionWithTitle:v19 style:1 handler:&__block_literal_global_111360];

  [v16 addAction:v17];
  [v16 addAction:v20];
  popoverPresentationController = [v16 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:v8];

  [(PXPeopleFlowNavigationController *)selfCopy presentViewController:v16 animated:1 completion:0];
LABEL_13:
}

uint64_t __41__PXPeopleFlowNavigationController_done___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) flowController];
  [v4 done:*(a1 + 40)];

  result = [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  if (a2)
  {
    v6 = MEMORY[0x1E6991F28];
    v7 = MEMORY[0x1E695E0F8];

    return [v6 sendEvent:@"com.apple.photos.CPAnalytics.people.bootstrap.speedbump.advance" withPayload:v7];
  }

  return result;
}

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  flowController = [(PXPeopleFlowNavigationController *)self flowController];
  [flowController cancel:cancelCopy];

  [(PXPeopleFlowNavigationController *)self dismissViewControllerAnimated:1 completion:0];
}

- (CGSize)preferredContentSize
{
  v2 = 540.0;
  v3 = 700.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PXPeopleFlowNavigationController;
  [(PXPeopleFlowNavigationController *)&v16 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  [(PXPeopleFlowNavigationController *)self setCancelButton:v3];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  v19 = *MEMORY[0x1E69DB648];
  v5 = v19;
  v6 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] buttonFontSize];
  v7 = [v6 systemFontOfSize:? weight:?];
  v20[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v4 setTitleTextAttributes:v8 forState:0];

  [(PXPeopleFlowNavigationController *)self setDoneButton:v4];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:101 target:self action:sel_back_];
  [(PXPeopleFlowNavigationController *)self setBackButton:v9];
  v10 = objc_alloc(MEMORY[0x1E69DC708]);
  v11 = PXLocalizedStringFromTable(@"PXNext", @"PhotosUICore");
  v12 = [v10 initWithTitle:v11 style:0 target:self action:sel_next_];

  v17 = v5;
  v13 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] buttonFontSize];
  v14 = [v13 systemFontOfSize:? weight:?];
  v18 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v12 setTitleTextAttributes:v15 forState:0];

  [(PXPeopleFlowNavigationController *)self setNextButton:v12];
  [(PXPeopleFlowNavigationController *)self setDelegate:self];
}

- (PXPeopleFlowNavigationController)initWithFlowController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy hasNextViewController])
  {
    nextViewController = [controllerCopy nextViewController];
    v10.receiver = self;
    v10.super_class = PXPeopleFlowNavigationController;
    v7 = [(PXPeopleFlowNavigationController *)&v10 initWithRootViewController:nextViewController];

    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = PXPeopleFlowNavigationController;
  v7 = [(PXPeopleFlowNavigationController *)&v9 init];
  if (v7)
  {
LABEL_5:
    objc_storeStrong(&v7->_flowController, controller);
  }

LABEL_6:

  return v7;
}

@end