@interface PXAssistantController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)a3;
- (CGSize)preferredContentSize;
- (PXAssistantController)init;
- (PXAssistantController)initWithCoder:(id)a3;
- (PXAssistantController)initWithContext:(id)a3;
- (PXAssistantController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXAssistantControllerDelegate)delegate;
- (id)_nextViewControllerFromViewController:(id)a3;
- (id)initialStepContexts;
- (id)nextStepContextForStepContextIdentifier:(id)a3;
- (void)_completeAssistantWithError:(id)a3;
- (void)_confirmCancellationOfAssistantWithDestruction;
- (void)_presentInitialViewControllers;
- (void)_setStepContext:(id)a3;
- (void)_setUseTransparentBarAppearance:(BOOL)a3;
- (void)_stepForwardInAssistantAnimated:(BOOL)a3 currentViewController:(id)a4;
- (void)_updateBarAppearance;
- (void)_updateNextStepContext:(id)a3;
- (void)_updateViewController:(id)a3 forChangesWithDescriptor:(unint64_t)a4;
- (void)assistantViewController:(id)a3 presentAlertWithConfiguration:(id)a4 animated:(BOOL)a5;
- (void)assistantViewController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5;
- (void)assistantViewController:(id)a3 pushViewController:(id)a4 animated:(BOOL)a5;
- (void)cancelAssistantWithDestruction:(BOOL)a3;
- (void)completeAssistantWithError:(id)a3;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)stepContextWithIdentifier:(id)a3 confirmCancellationWithAlertProperties:(id)a4;
- (void)stepForwardInAssistantForAssistantViewControllerAsCurrentViewController:(id)a3;
@end

@implementation PXAssistantController

- (PXAssistantControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  context = self->_context;
  v5 = [(PXAssistantStepContext *)self->_stepContext identifier];
  LOBYTE(context) = [(PXAssistantContext *)context shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:v5];

  return context ^ 1;
}

- (void)assistantViewController:(id)a3 presentAlertWithConfiguration:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v10 = [[off_1E7721438 alloc] initWithConfiguration:v7];

  navigationController = self->_navigationController;
  v9 = [v10 alertController];
  [(UINavigationController *)navigationController presentViewController:v9 animated:v5 completion:0];
}

- (void)assistantViewController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v10 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    v8 = 0;
  }

  [(UINavigationController *)self->_navigationController presentViewController:v8 animated:v5 completion:0];
}

- (void)assistantViewController:(id)a3 pushViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v10 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    v8 = 0;
  }

  [(UINavigationController *)self->_navigationController pushViewController:v8 animated:v5];
}

- (void)stepForwardInAssistantForAssistantViewControllerAsCurrentViewController:(id)a3
{
  v5 = a3;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(PXAssistantController *)self _stepForwardInAssistantAnimated:1 currentViewController:v4];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXAssistantStepContextObservationContext == a5)
  {
    v8 = [(UINavigationController *)self->_navigationController viewControllers];
    v9 = [v8 lastObject];

    [(PXAssistantController *)self _updateViewController:v9 forChangesWithDescriptor:a4];
  }
}

- (void)_updateBarAppearance
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  v3 = [v5 shadowColor];
  [v5 configureWithTransparentBackground];
  if (![(PXAssistantStepContext *)self->_stepContext useTransparentBarAppearance])
  {
    [v5 setShadowColor:v3];
  }

  v4 = [(UINavigationController *)self->_navigationController navigationBar];
  [v4 setStandardAppearance:v5];
}

- (void)_confirmCancellationOfAssistantWithDestruction
{
  v3 = [(PXAssistantStepContext *)self->_stepContext identifier];
  if ([(PXAssistantController *)self shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:v3])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke;
    v4[3] = &unk_1E772E4C8;
    v4[4] = self;
    [(PXAssistantController *)self stepContextWithIdentifier:v3 confirmCancellationWithAlertProperties:v4];
  }

  else
  {
    [(PXAssistantController *)self cancelAssistantWithDestruction:0];
  }
}

void __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = a2;
  v18 = PLUIGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Will confirm request to cancel assistant controller: %@", buf, 0xCu);
  }

  v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v17 message:v16 preferredStyle:0];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke_275;
  v26[3] = &unk_1E7749600;
  v26[4] = *(a1 + 32);
  v21 = [MEMORY[0x1E69DC648] actionWithTitle:v15 style:2 handler:v26];

  [v20 addAction:v21];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke_277;
  v25[3] = &unk_1E7749600;
  v25[4] = *(a1 + 32);
  v22 = [MEMORY[0x1E69DC648] actionWithTitle:v14 style:1 handler:v25];

  [v20 addAction:v22];
  if (v13)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke_278;
    v24[3] = &unk_1E77343F8;
    v24[4] = *(a1 + 32);
    v24[5] = a7;
    v23 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:0 handler:v24];
    [v20 addAction:v23];
  }

  [*(*(a1 + 32) + 992) presentViewController:v20 animated:1 completion:0];
}

uint64_t __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke_275(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Did confirm request to cancel assistant controller: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) cancelAssistantWithDestruction:1];
}

void __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke_277(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User canceled confirmation of request to cancel assistant controller: %@", &v4, 0xCu);
  }
}

uint64_t __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke_278(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User chose to continue when requested to cancel assistant controller: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    return [v4 cancelAssistantWithDestruction:0];
  }

  else
  {
    return [v4 _stepForwardInAssistantAnimated:1 currentViewController:0];
  }
}

- (void)_setUseTransparentBarAppearance:(BOOL)a3
{
  if (self->_useTransparentBarAppearance != a3)
  {
    self->_useTransparentBarAppearance = a3;
    [(PXAssistantController *)self _updateBarAppearance];
  }
}

- (void)_stepForwardInAssistantAnimated:(BOOL)a3 currentViewController:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = [(UINavigationController *)self->_navigationController viewControllers];
    v9 = [v7 lastObject];

    v6 = v9;
  }

  v10 = v6;
  v8 = [(PXAssistantController *)self _nextViewControllerFromViewController:v6];
  [(UINavigationController *)self->_navigationController pushViewController:v8 animated:v4];
  if ([v8 conformsToProtocol:&unk_1F1967078])
  {
    [v8 setAssistantViewControllerDelegate:self];
  }
}

- (void)_updateViewController:(id)a3 forChangesWithDescriptor:(unint64_t)a4
{
  v4 = a4;
  v23 = a3;
  if ((v4 & 5) != 0)
  {
    v6 = [(PXAssistantStepContext *)self->_stepContext firstButtonType];
    v7 = 0;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v6 == 4)
        {
          v8 = objc_alloc(MEMORY[0x1E69DC708]);
          v9 = sel__cancelBarButtonItemDestructiveAction_;
          v10 = 1;
          goto LABEL_9;
        }

LABEL_13:
        v14 = [v23 navigationItem];
        [v14 setRightBarButtonItem:v7];

        goto LABEL_14;
      }

      v11 = [(PXAssistantStepContext *)self->_stepContext firstButtonTitle];
      v12 = objc_alloc(MEMORY[0x1E69DC708]);
      v13 = sel__completeBarButtonItemAction_;
    }

    else
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v8 = objc_alloc(MEMORY[0x1E69DC708]);
          v9 = sel__completeBarButtonItemAction_;
          v10 = 0;
LABEL_9:
          v7 = [v8 initWithBarButtonSystemItem:v10 target:self action:v9];
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      v11 = PXLocalizedStringFromTable(@"PXAssistant_ButtonTitle_Next", @"PhotosUICore");
      v12 = objc_alloc(MEMORY[0x1E69DC708]);
      v13 = sel__stepForwardBarButtonItemAction_;
    }

    v7 = [v12 initWithTitle:v11 style:0 target:self action:v13];

    goto LABEL_13;
  }

LABEL_14:
  if ((v4 & 4) != 0)
  {
    v15 = [(PXAssistantStepContext *)self->_stepContext firstButtonEnabled];
    v16 = [v23 navigationItem];
    v17 = [v16 rightBarButtonItem];

    [v17 setEnabled:v15];
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  [(PXAssistantController *)self _setUseTransparentBarAppearance:[(PXAssistantStepContext *)self->_stepContext useTransparentBarAppearance]];
  if ((v4 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v18 = [v23 navigationItem];
  if ([(PXAssistantStepContext *)self->_stepContext secondButtonType]== 2)
  {
    [v18 setLeftBarButtonItem:0];
    [v18 setHidesBackButton:1];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F1741150 style:0 target:0 action:0];
    [v18 setBackBarButtonItem:v19];

    v20 = [(UINavigationController *)self->_navigationController viewControllers];
    v21 = [v20 count];

    if (!v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelBarButtonItemAction_];
      [v18 setLeftBarButtonItem:v22];
    }
  }

  [v18 setBackButtonTitle:&stru_1F1741150];

LABEL_25:
}

- (void)_setStepContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"stepContext"}];
  }

  stepContext = self->_stepContext;
  v8 = v6;
  v11 = v8;
  if (stepContext == v8)
  {
  }

  else
  {
    v9 = [(PXAssistantStepContext *)v8 isEqual:stepContext];

    if ((v9 & 1) == 0)
    {
      [(PXAssistantStepContext *)self->_stepContext unregisterChangeObserver:self context:PXAssistantStepContextObservationContext];
      objc_storeStrong(&self->_stepContext, a3);
      [(PXAssistantStepContext *)self->_stepContext registerChangeObserver:self context:PXAssistantStepContextObservationContext];
      [(PXAssistantController *)self _setUseTransparentBarAppearance:[(PXAssistantStepContext *)v11 useTransparentBarAppearance]];
    }
  }
}

- (void)_presentInitialViewControllers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PXAssistantController *)self initialStepContexts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [(PXAssistantController *)self _updateNextStepContext:v8];
        v9 = [v8 viewController];
        navigationController = self->_navigationController;
        v11 = [v8 viewController];
        [(UINavigationController *)navigationController pushViewController:v11 animated:0];

        if ([v9 conformsToProtocol:&unk_1F1967078])
        {
          [v9 setAssistantViewControllerDelegate:self];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)_nextViewControllerFromViewController:(id)a3
{
  v4 = [(NSMapTable *)self->_viewControllerToStepContext objectForKey:a3];
  v5 = [v4 identifier];
  v6 = [(PXAssistantController *)self nextStepContextForStepContextIdentifier:v5];
  [(PXAssistantController *)self _updateNextStepContext:v6];
  v7 = [v6 viewController];

  return v7;
}

- (void)_updateNextStepContext:(id)a3
{
  v4 = a3;
  v5 = [v4 viewController];
  [(NSMapTable *)self->_viewControllerToStepContext setObject:v4 forKey:v5];
  [(PXAssistantController *)self _setStepContext:v4];

  [(PXAssistantController *)self _updateViewController:v5 forChangesWithDescriptor:13];
}

- (CGSize)preferredContentSize
{
  if (self->_navigationController && ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, v4 == 1))
  {
    navigationController = self->_navigationController;

    [(UINavigationController *)navigationController preferredContentSize];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXAssistantController;
    [(PXAssistantController *)&v8 preferredContentSize];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(PXAssistantController *)self setView:v3];
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNibName:0 bundle:0];
  navigationController = self->_navigationController;
  self->_navigationController = v4;

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    [(UINavigationController *)self->_navigationController setModalPresentationStyle:2];
  }

  [(PXAssistantController *)self _updateBarAppearance];
  [(PXAssistantController *)self addChildViewController:self->_navigationController];
  v8 = [(UINavigationController *)self->_navigationController view];
  v9 = [(UINavigationController *)self->_navigationController view];
  [v3 addSubview:v9];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x1E696ACD8];
  v27 = [v8 topAnchor];
  v26 = [v3 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v24 = [v8 leadingAnchor];
  v23 = [v3 leadingAnchor];
  v10 = [v24 constraintEqualToAnchor:v23];
  v29[1] = v10;
  v11 = [v8 bottomAnchor];
  v12 = [v3 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v29[2] = v13;
  v28 = v8;
  v14 = [v8 trailingAnchor];
  [v3 trailingAnchor];
  v16 = v15 = v3;
  v17 = [v14 constraintEqualToAnchor:v16];
  v29[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v22 activateConstraints:v18];

  if (objc_opt_respondsToSelector())
  {
    [v15 px_screenScale];
    v20 = -[PXAssistantTraitCollection initWithDisplayScale:isRTL:]([PXAssistantTraitCollection alloc], "initWithDisplayScale:isRTL:", [v15 effectiveUserInterfaceLayoutDirection] == 1, v19);
    [(PXAssistantContext *)self->_context setAssistantTraitCollection:v20];
  }

  [(PXAssistantController *)self _presentInitialViewControllers];
  v21 = [(PXAssistantController *)self presentationController];
  [v21 setDelegate:self];
}

- (PXAssistantController)initWithContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v15.receiver = self;
  v15.super_class = PXAssistantController;
  v7 = [(PXAssistantController *)&v15 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_context, a3);
    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    viewControllerToStepContext = v8->_viewControllerToStepContext;
    v8->_viewControllerToStepContext = v9;

    v8->_useTransparentBarAppearance = 1;
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 1)
    {
      [(PXAssistantController *)v8 setModalPresentationStyle:2];
    }
  }

  return v8;
}

- (PXAssistantController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXAssistantController initWithNibName:bundle:]"}];

  abort();
}

- (PXAssistantController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXAssistantController initWithCoder:]"}];

  abort();
}

- (PXAssistantController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXAssistantController init]"}];

  abort();
}

- (void)stepContextWithIdentifier:(id)a3 confirmCancellationWithAlertProperties:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"alertProperties"}];

LABEL_3:
  v8 = [(PXAssistantController *)self context];
  [v8 stepContextWithIdentifier:v11 confirmCancellationWithAlertProperties:v7];
}

- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [(PXAssistantController *)self context];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nextStepContextForStepContextIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXAssistantController *)self context];
  v6 = [v5 nextStepContextIdentifierFromStepContextIdentifier:v4];

  v7 = [v5 stepContextForStepContextIdentifier:v6];

  return v7;
}

- (id)initialStepContexts
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PXAssistantController *)self context];
  v3 = [v2 initialStepContextIdentifiers];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v2 stepContextForStepContextIdentifier:{*(*(&v12 + 1) + 8 * i), v12}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)completeAssistantWithError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PXAssistantController *)self completed])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Ignoring attempt to complete already completed assistant controller: %@, error: %@", &v8, 0x16u);
    }
  }

  else
  {
    v6 = PLUIGetLog();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412546;
        v9 = self;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Assistant controller: %@, failed with error: %@", &v8, 0x16u);
      }

      v5 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAssistantErrorDomain" code:-1000 underlyingError:v4 debugDescription:@"Assistant failed with an error"];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = self;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Assistant completed successfully: %@", &v8, 0xCu);
      }

      v5 = 0;
    }

    [(PXAssistantController *)self _completeAssistantWithError:v5];
  }
}

- (void)cancelAssistantWithDestruction:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if ([(PXAssistantController *)self completed])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Ignoring attempt to cancel already completed assistant controller: %@", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [(PXAssistantController *)self context];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PXAssistantController *)self context];
      [v8 willCancelAssistant];
    }

    v9 = PLUIGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = self;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Assistant cancelled with destruction by the user: %@", &v12, 0xCu);
      }

      v11 = -1002;
    }

    else
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = self;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Assistant cancelled by the user: %@", &v12, 0xCu);
      }

      v11 = -1001;
    }

    v5 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAssistantErrorDomain" code:v11 debugDescription:@"Assistant was cancelled by the user"];
    [(PXAssistantController *)self _completeAssistantWithError:v5];
  }
}

- (void)_completeAssistantWithError:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(PXAssistantController *)self completed])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"!self.completed"}];
  }

  [(PXAssistantController *)self setCompleted:1];
  v6 = [(PXAssistantController *)self delegate];
  v7 = v6;
  if (v6)
  {
    [v6 assistantController:self completedWithError:v5];
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "No PXAssistantControllerDelegate available to handle assistantController: %@ completedWithError: %@", buf, 0x16u);
    }
  }
}

@end