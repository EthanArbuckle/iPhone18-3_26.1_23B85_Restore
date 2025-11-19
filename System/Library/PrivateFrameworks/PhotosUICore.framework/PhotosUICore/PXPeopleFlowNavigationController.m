@interface PXPeopleFlowNavigationController
- (CGSize)preferredContentSize;
- (PXPeopleFlowNavigationController)initWithFlowController:(id)a3;
- (void)_updateActions;
- (void)back:(id)a3;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)next:(id)a3;
- (void)setAdvanceButtonEnabled:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PXPeopleFlowNavigationController

- (void)setAdvanceButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPeopleFlowNavigationController *)self nextButton];
  [v5 setEnabled:v3];

  v6 = [(PXPeopleFlowNavigationController *)self doneButton];
  [v6 setEnabled:v3];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v9 = a4;
  v6 = [v9 conformsToProtocol:&unk_1F1973A48];
  v7 = v9;
  if (v6)
  {
    v8 = v9;
    [(PXPeopleFlowNavigationController *)self setCurrentViewController:v8];
    if (objc_opt_respondsToSelector())
    {
      [v8 setActionDelegate:self];
    }

    [(PXPeopleFlowNavigationController *)self _updateActions];

    v7 = v9;
  }
}

- (void)_updateActions
{
  v7 = [(PXPeopleFlowNavigationController *)self flowController];
  if ([v7 hasPreviousViewController])
  {
    [(PXPeopleFlowNavigationController *)self backButton];
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self cancelButton];
  }
  v3 = ;
  if ([v7 hasNextViewController])
  {
    [(PXPeopleFlowNavigationController *)self nextButton];
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self doneButton];
  }
  v4 = ;
  v5 = [(PXPeopleFlowNavigationController *)self currentViewController];
  v6 = [v5 navigationItem];

  [v6 setLeftBarButtonItem:v3];
  [v6 setRightBarButtonItem:v4];
}

- (void)back:(id)a3
{
  v7 = [(PXPeopleFlowNavigationController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [v7 willTransitionToPreviousInFlow];
  }

  [(PXPeopleFlowNavigationController *)self setAdvanceButtonEnabled:1];
  v4 = [(PXPeopleFlowNavigationController *)self flowController];
  if ([v4 hasPreviousViewController])
  {
    v5 = [v4 previousViewController];
    if (v5)
    {
      v6 = [(PXPeopleFlowNavigationController *)self popViewControllerAnimated:1];
    }
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self cancel:self];
  }
}

- (void)next:(id)a3
{
  v6 = [(PXPeopleFlowNavigationController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 willTransitionToNextInFlow];
  }

  [(PXPeopleFlowNavigationController *)self setAdvanceButtonEnabled:1];
  v4 = [(PXPeopleFlowNavigationController *)self flowController];
  if ([v4 hasNextViewController])
  {
    v5 = [v4 nextViewController];
    if (objc_opt_respondsToSelector())
    {
      [v5 willTransitionIn];
    }

    [(PXPeopleFlowNavigationController *)self pushViewController:v5 animated:1];
  }

  else
  {
    [(PXPeopleFlowNavigationController *)self done:self];
  }
}

- (void)done:(id)a3
{
  v5 = a3;
  v6 = [(PXPeopleFlowNavigationController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 willTransitionToNextInFlow];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldConfirmAdvancement];
  }

  else
  {
    v7 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PXPeopleFlowNavigationController_done___block_invoke;
  aBlock[3] = &unk_1E774A2C8;
  aBlock[4] = self;
  v8 = v5;
  v31 = v8;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    (*(v9 + 2))(v9, 0);
    goto LABEL_13;
  }

  v11 = [v6 bootstrapContext];
  v12 = [v11 localizedName];
  v29 = v11;
  v13 = [v11 sourcePerson];
  if (!v13)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 handleFailureInMethod:a2 object:self file:@"PXPeopleFlowNavigationController.m" lineNumber:99 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v24}];
LABEL_16:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    v26 = [v13 px_descriptionForAssertionMessage];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPeopleFlowNavigationController.m" lineNumber:99 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v24, v26}];

    goto LABEL_16;
  }

LABEL_9:
  v27 = v12;
  v28 = self;
  if ([v12 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, @"PXPeopleBootstrapVerifyAlertMessageNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v14 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, @"PXPeopleBootstrapVerifyAlertMessageUnnamed");
  v15 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, @"PXPeopleBootstrapVerifyAlertConfirmTitleUnnamed");
  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v14 preferredStyle:0];
  v17 = [MEMORY[0x1E69DC648] actionWithTitle:v15 style:0 handler:v10];
  v18 = MEMORY[0x1E69DC648];
  v19 = PXLocalizedStringFromTable(@"PXPeopleBootstrapVerifyAlertCancel", @"PhotosUICore");
  v20 = [v18 actionWithTitle:v19 style:1 handler:&__block_literal_global_111360];

  [v16 addAction:v17];
  [v16 addAction:v20];
  v21 = [v16 popoverPresentationController];
  [v21 setBarButtonItem:v8];

  [(PXPeopleFlowNavigationController *)v28 presentViewController:v16 animated:1 completion:0];
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

- (void)cancel:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleFlowNavigationController *)self flowController];
  [v5 cancel:v4];

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

- (PXPeopleFlowNavigationController)initWithFlowController:(id)a3
{
  v5 = a3;
  if ([v5 hasNextViewController])
  {
    v6 = [v5 nextViewController];
    v10.receiver = self;
    v10.super_class = PXPeopleFlowNavigationController;
    v7 = [(PXPeopleFlowNavigationController *)&v10 initWithRootViewController:v6];

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
    objc_storeStrong(&v7->_flowController, a3);
  }

LABEL_6:

  return v7;
}

@end