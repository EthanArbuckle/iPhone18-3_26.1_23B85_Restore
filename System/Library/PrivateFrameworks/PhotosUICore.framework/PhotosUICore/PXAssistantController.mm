@interface PXAssistantController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)identifier;
- (CGSize)preferredContentSize;
- (PXAssistantController)init;
- (PXAssistantController)initWithCoder:(id)coder;
- (PXAssistantController)initWithContext:(id)context;
- (PXAssistantController)initWithNibName:(id)name bundle:(id)bundle;
- (PXAssistantControllerDelegate)delegate;
- (id)_nextViewControllerFromViewController:(id)controller;
- (id)initialStepContexts;
- (id)nextStepContextForStepContextIdentifier:(id)identifier;
- (void)_completeAssistantWithError:(id)error;
- (void)_confirmCancellationOfAssistantWithDestruction;
- (void)_presentInitialViewControllers;
- (void)_setStepContext:(id)context;
- (void)_setUseTransparentBarAppearance:(BOOL)appearance;
- (void)_stepForwardInAssistantAnimated:(BOOL)animated currentViewController:(id)controller;
- (void)_updateBarAppearance;
- (void)_updateNextStepContext:(id)context;
- (void)_updateViewController:(id)controller forChangesWithDescriptor:(unint64_t)descriptor;
- (void)assistantViewController:(id)controller presentAlertWithConfiguration:(id)configuration animated:(BOOL)animated;
- (void)assistantViewController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated;
- (void)assistantViewController:(id)controller pushViewController:(id)viewController animated:(BOOL)animated;
- (void)cancelAssistantWithDestruction:(BOOL)destruction;
- (void)completeAssistantWithError:(id)error;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)stepContextWithIdentifier:(id)identifier confirmCancellationWithAlertProperties:(id)properties;
- (void)stepForwardInAssistantForAssistantViewControllerAsCurrentViewController:(id)controller;
@end

@implementation PXAssistantController

- (PXAssistantControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  context = self->_context;
  identifier = [(PXAssistantStepContext *)self->_stepContext identifier];
  LOBYTE(context) = [(PXAssistantContext *)context shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:identifier];

  return context ^ 1;
}

- (void)assistantViewController:(id)controller presentAlertWithConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  v10 = [[off_1E7721438 alloc] initWithConfiguration:configurationCopy];

  navigationController = self->_navigationController;
  alertController = [v10 alertController];
  [(UINavigationController *)navigationController presentViewController:alertController animated:animatedCopy completion:0];
}

- (void)assistantViewController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  v10 = viewControllerCopy;
  if (!viewControllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    viewControllerCopy = 0;
  }

  [(UINavigationController *)self->_navigationController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)assistantViewController:(id)controller pushViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  v10 = viewControllerCopy;
  if (!viewControllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    viewControllerCopy = 0;
  }

  [(UINavigationController *)self->_navigationController pushViewController:viewControllerCopy animated:animatedCopy];
}

- (void)stepForwardInAssistantForAssistantViewControllerAsCurrentViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = controllerCopy;
  }

  else
  {
    v4 = 0;
  }

  [(PXAssistantController *)self _stepForwardInAssistantAnimated:1 currentViewController:v4];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXAssistantStepContextObservationContext == context)
  {
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    lastObject = [viewControllers lastObject];

    [(PXAssistantController *)self _updateViewController:lastObject forChangesWithDescriptor:change];
  }
}

- (void)_updateBarAppearance
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  shadowColor = [v5 shadowColor];
  [v5 configureWithTransparentBackground];
  if (![(PXAssistantStepContext *)self->_stepContext useTransparentBarAppearance])
  {
    [v5 setShadowColor:shadowColor];
  }

  navigationBar = [(UINavigationController *)self->_navigationController navigationBar];
  [navigationBar setStandardAppearance:v5];
}

- (void)_confirmCancellationOfAssistantWithDestruction
{
  identifier = [(PXAssistantStepContext *)self->_stepContext identifier];
  if ([(PXAssistantController *)self shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:identifier])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__PXAssistantController__confirmCancellationOfAssistantWithDestruction__block_invoke;
    v4[3] = &unk_1E772E4C8;
    v4[4] = self;
    [(PXAssistantController *)self stepContextWithIdentifier:identifier confirmCancellationWithAlertProperties:v4];
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

- (void)_setUseTransparentBarAppearance:(BOOL)appearance
{
  if (self->_useTransparentBarAppearance != appearance)
  {
    self->_useTransparentBarAppearance = appearance;
    [(PXAssistantController *)self _updateBarAppearance];
  }
}

- (void)_stepForwardInAssistantAnimated:(BOOL)animated currentViewController:(id)controller
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    lastObject = [viewControllers lastObject];

    controllerCopy = lastObject;
  }

  v10 = controllerCopy;
  v8 = [(PXAssistantController *)self _nextViewControllerFromViewController:controllerCopy];
  [(UINavigationController *)self->_navigationController pushViewController:v8 animated:animatedCopy];
  if ([v8 conformsToProtocol:&unk_1F1967078])
  {
    [v8 setAssistantViewControllerDelegate:self];
  }
}

- (void)_updateViewController:(id)controller forChangesWithDescriptor:(unint64_t)descriptor
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  if ((descriptorCopy & 5) != 0)
  {
    firstButtonType = [(PXAssistantStepContext *)self->_stepContext firstButtonType];
    v7 = 0;
    if (firstButtonType > 1)
    {
      if (firstButtonType != 2)
      {
        if (firstButtonType == 4)
        {
          v8 = objc_alloc(MEMORY[0x1E69DC708]);
          v9 = sel__cancelBarButtonItemDestructiveAction_;
          v10 = 1;
          goto LABEL_9;
        }

LABEL_13:
        navigationItem = [controllerCopy navigationItem];
        [navigationItem setRightBarButtonItem:v7];

        goto LABEL_14;
      }

      firstButtonTitle = [(PXAssistantStepContext *)self->_stepContext firstButtonTitle];
      v12 = objc_alloc(MEMORY[0x1E69DC708]);
      v13 = sel__completeBarButtonItemAction_;
    }

    else
    {
      if (firstButtonType)
      {
        if (firstButtonType == 1)
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

      firstButtonTitle = PXLocalizedStringFromTable(@"PXAssistant_ButtonTitle_Next", @"PhotosUICore");
      v12 = objc_alloc(MEMORY[0x1E69DC708]);
      v13 = sel__stepForwardBarButtonItemAction_;
    }

    v7 = [v12 initWithTitle:firstButtonTitle style:0 target:self action:v13];

    goto LABEL_13;
  }

LABEL_14:
  if ((descriptorCopy & 4) != 0)
  {
    firstButtonEnabled = [(PXAssistantStepContext *)self->_stepContext firstButtonEnabled];
    navigationItem2 = [controllerCopy navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];

    [rightBarButtonItem setEnabled:firstButtonEnabled];
    if ((descriptorCopy & 0x200) == 0)
    {
LABEL_16:
      if ((descriptorCopy & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  else if ((descriptorCopy & 0x200) == 0)
  {
    goto LABEL_16;
  }

  [(PXAssistantController *)self _setUseTransparentBarAppearance:[(PXAssistantStepContext *)self->_stepContext useTransparentBarAppearance]];
  if ((descriptorCopy & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  navigationItem3 = [controllerCopy navigationItem];
  if ([(PXAssistantStepContext *)self->_stepContext secondButtonType]== 2)
  {
    [navigationItem3 setLeftBarButtonItem:0];
    [navigationItem3 setHidesBackButton:1];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F1741150 style:0 target:0 action:0];
    [navigationItem3 setBackBarButtonItem:v19];

    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    v21 = [viewControllers count];

    if (!v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelBarButtonItemAction_];
      [navigationItem3 setLeftBarButtonItem:v22];
    }
  }

  [navigationItem3 setBackButtonTitle:&stru_1F1741150];

LABEL_25:
}

- (void)_setStepContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"stepContext"}];
  }

  stepContext = self->_stepContext;
  v8 = contextCopy;
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
      objc_storeStrong(&self->_stepContext, context);
      [(PXAssistantStepContext *)self->_stepContext registerChangeObserver:self context:PXAssistantStepContextObservationContext];
      [(PXAssistantController *)self _setUseTransparentBarAppearance:[(PXAssistantStepContext *)v11 useTransparentBarAppearance]];
    }
  }
}

- (void)_presentInitialViewControllers
{
  v17 = *MEMORY[0x1E69E9840];
  initialStepContexts = [(PXAssistantController *)self initialStepContexts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [initialStepContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(initialStepContexts);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [(PXAssistantController *)self _updateNextStepContext:v8];
        viewController = [v8 viewController];
        navigationController = self->_navigationController;
        viewController2 = [v8 viewController];
        [(UINavigationController *)navigationController pushViewController:viewController2 animated:0];

        if ([viewController conformsToProtocol:&unk_1F1967078])
        {
          [viewController setAssistantViewControllerDelegate:self];
        }
      }

      v5 = [initialStepContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)_nextViewControllerFromViewController:(id)controller
{
  v4 = [(NSMapTable *)self->_viewControllerToStepContext objectForKey:controller];
  identifier = [v4 identifier];
  v6 = [(PXAssistantController *)self nextStepContextForStepContextIdentifier:identifier];
  [(PXAssistantController *)self _updateNextStepContext:v6];
  viewController = [v6 viewController];

  return viewController;
}

- (void)_updateNextStepContext:(id)context
{
  contextCopy = context;
  viewController = [contextCopy viewController];
  [(NSMapTable *)self->_viewControllerToStepContext setObject:contextCopy forKey:viewController];
  [(PXAssistantController *)self _setStepContext:contextCopy];

  [(PXAssistantController *)self _updateViewController:viewController forChangesWithDescriptor:13];
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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(UINavigationController *)self->_navigationController setModalPresentationStyle:2];
  }

  [(PXAssistantController *)self _updateBarAppearance];
  [(PXAssistantController *)self addChildViewController:self->_navigationController];
  view = [(UINavigationController *)self->_navigationController view];
  view2 = [(UINavigationController *)self->_navigationController view];
  [v3 addSubview:view2];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  topAnchor2 = [v3 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v25;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[1] = v10;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[2] = v13;
  v28 = view;
  trailingAnchor = [view trailingAnchor];
  [v3 trailingAnchor];
  v16 = v15 = v3;
  v17 = [trailingAnchor constraintEqualToAnchor:v16];
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
  presentationController = [(PXAssistantController *)self presentationController];
  [presentationController setDelegate:self];
}

- (PXAssistantController)initWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v15.receiver = self;
  v15.super_class = PXAssistantController;
  v7 = [(PXAssistantController *)&v15 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_context, context);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    viewControllerToStepContext = v8->_viewControllerToStepContext;
    v8->_viewControllerToStepContext = strongToStrongObjectsMapTable;

    v8->_useTransparentBarAppearance = 1;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(PXAssistantController *)v8 setModalPresentationStyle:2];
    }
  }

  return v8;
}

- (PXAssistantController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXAssistantController initWithNibName:bundle:]"}];

  abort();
}

- (PXAssistantController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXAssistantController initWithCoder:]"}];

  abort();
}

- (PXAssistantController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController+iOS.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXAssistantController init]"}];

  abort();
}

- (void)stepContextWithIdentifier:(id)identifier confirmCancellationWithAlertProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  if (identifierCopy)
  {
    if (propertiesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (propertiesCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"alertProperties"}];

LABEL_3:
  context = [(PXAssistantController *)self context];
  [context stepContextWithIdentifier:identifierCopy confirmCancellationWithAlertProperties:propertiesCopy];
}

- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  context = [(PXAssistantController *)self context];
  if (objc_opt_respondsToSelector())
  {
    v7 = [context shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nextStepContextForStepContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  context = [(PXAssistantController *)self context];
  v6 = [context nextStepContextIdentifierFromStepContextIdentifier:identifierCopy];

  v7 = [context stepContextForStepContextIdentifier:v6];

  return v7;
}

- (id)initialStepContexts
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(PXAssistantController *)self context];
  initialStepContextIdentifiers = [context initialStepContextIdentifiers];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(initialStepContextIdentifiers, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = initialStepContextIdentifiers;
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

        v10 = [context stepContextForStepContextIdentifier:{*(*(&v12 + 1) + 8 * i), v12}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)completeAssistantWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(PXAssistantController *)self completed])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      selfCopy3 = self;
      v10 = 2112;
      v11 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Ignoring attempt to complete already completed assistant controller: %@, error: %@", &v8, 0x16u);
    }
  }

  else
  {
    v6 = PLUIGetLog();
    v7 = v6;
    if (errorCopy)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412546;
        selfCopy3 = self;
        v10 = 2112;
        v11 = errorCopy;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Assistant controller: %@, failed with error: %@", &v8, 0x16u);
      }

      v5 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAssistantErrorDomain" code:-1000 underlyingError:errorCopy debugDescription:@"Assistant failed with an error"];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Assistant completed successfully: %@", &v8, 0xCu);
      }

      v5 = 0;
    }

    [(PXAssistantController *)self _completeAssistantWithError:v5];
  }
}

- (void)cancelAssistantWithDestruction:(BOOL)destruction
{
  destructionCopy = destruction;
  v14 = *MEMORY[0x1E69E9840];
  if ([(PXAssistantController *)self completed])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Ignoring attempt to cancel already completed assistant controller: %@", &v12, 0xCu);
    }
  }

  else
  {
    context = [(PXAssistantController *)self context];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      context2 = [(PXAssistantController *)self context];
      [context2 willCancelAssistant];
    }

    v9 = PLUIGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (destructionCopy)
    {
      if (v10)
      {
        v12 = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Assistant cancelled with destruction by the user: %@", &v12, 0xCu);
      }

      v11 = -1002;
    }

    else
    {
      if (v10)
      {
        v12 = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Assistant cancelled by the user: %@", &v12, 0xCu);
      }

      v11 = -1001;
    }

    v5 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAssistantErrorDomain" code:v11 debugDescription:@"Assistant was cancelled by the user"];
    [(PXAssistantController *)self _completeAssistantWithError:v5];
  }
}

- (void)_completeAssistantWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(PXAssistantController *)self completed])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantController_Internal.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"!self.completed"}];
  }

  [(PXAssistantController *)self setCompleted:1];
  delegate = [(PXAssistantController *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate assistantController:self completedWithError:errorCopy];
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "No PXAssistantControllerDelegate available to handle assistantController: %@ completedWithError: %@", buf, 0x16u);
    }
  }
}

@end