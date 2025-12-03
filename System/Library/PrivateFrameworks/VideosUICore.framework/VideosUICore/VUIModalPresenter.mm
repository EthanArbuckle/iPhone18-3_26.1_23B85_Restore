@interface VUIModalPresenter
+ (id)sharedInstance;
- (NSArray)presentedViewControllers;
- (VUIModalPresenter)init;
- (id)_presentationControllers;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller fromViewController:(id)viewController options:(id)options completion:(id)completion;
@end

@implementation VUIModalPresenter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[VUIModalPresenter sharedInstance];
  }

  v3 = sharedInstance___presenter;

  return v3;
}

uint64_t __35__VUIModalPresenter_sharedInstance__block_invoke()
{
  sharedInstance___presenter = objc_alloc_init(VUIModalPresenter);

  return MEMORY[0x2821F96F8]();
}

- (VUIModalPresenter)init
{
  v8.receiver = self;
  v8.super_class = VUIModalPresenter;
  v2 = [(VUIModalPresenter *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D76190]) initForPresenting:1];
    presentingAnimator = v2->_presentingAnimator;
    v2->_presentingAnimator = v3;

    v5 = [objc_alloc(MEMORY[0x277D76190]) initForPresenting:0];
    dismissingAnimator = v2->_dismissingAnimator;
    v2->_dismissingAnimator = v5;
  }

  return v2;
}

- (id)_presentationControllers
{
  presentationControllers = self->__presentationControllers;
  if (!presentationControllers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->__presentationControllers;
    self->__presentationControllers = weakObjectsHashTable;

    presentationControllers = self->__presentationControllers;
  }

  return presentationControllers;
}

- (NSArray)presentedViewControllers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  _presentationControllers = [(VUIModalPresenter *)self _presentationControllers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(_presentationControllers, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  _presentationControllers2 = [(VUIModalPresenter *)self _presentationControllers];
  v7 = [_presentationControllers2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(_presentationControllers2);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        viewControllers = [v11 viewControllers];
        v13 = [viewControllers countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(viewControllers);
              }

              v17 = *(*(&v20 + 1) + 8 * j);
              if (([v5 containsObject:v17] & 1) == 0)
              {
                [v5 addObject:v17];
              }
            }

            v14 = [viewControllers countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }
      }

      v8 = [_presentationControllers2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v18 = [v5 copy];

  return v18;
}

- (void)presentViewController:(id)controller fromViewController:(id)viewController options:(id)options completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  optionsCopy = options;
  completionCopy = completion;
  v14 = completionCopy;
  if (controllerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = viewControllerCopy;
      vuiPresentedViewController = [v15 vuiPresentedViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        vuiPresentedViewController2 = [v15 vuiPresentedViewController];
      }

      else
      {
        vuiPresentedViewController2 = 0;
      }
    }

    else
    {
      vuiPresentedViewController2 = 0;
    }

    configuration = [vuiPresentedViewController2 configuration];
    type = [configuration type];
    type2 = [(VUIModalPresenter *)optionsCopy type];

    if (type == type2)
    {
      if (!vuiPresentedViewController2)
      {
LABEL_16:
        v22 = [[VUIModalPresentationNavigationController alloc] initWithConfiguration:optionsCopy];
        v23 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      allowsModalOverModal = [(VUIModalPresenter *)optionsCopy allowsModalOverModal];
      if (!vuiPresentedViewController2 || (allowsModalOverModal & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v22 = vuiPresentedViewController2;
    v23 = 1;
LABEL_17:
    [(VUIModalPresentationNavigationController *)v22 setConfiguration:optionsCopy];
    isAnimated = [(VUIModalPresenter *)optionsCopy isAnimated];
    objc_initWeak(location, self);
    if ([(VUIModalPresenter *)optionsCopy conformsToProtocol:&unk_288115708])
    {
      selfCopy = optionsCopy;
    }

    else
    {
      selfCopy = self;
    }

    v26 = selfCopy;
    [(VUIModalPresentationNavigationController *)v22 setTransitioningDelegate:v26];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke;
    v33[3] = &unk_279E213C0;
    objc_copyWeak(&v40, location);
    v27 = v22;
    v34 = v27;
    v41 = v23;
    v35 = optionsCopy;
    selfCopy2 = self;
    v37 = controllerCopy;
    v39 = v14;
    v42 = isAnimated;
    v38 = viewControllerCopy;
    v28 = MEMORY[0x2743B7C30](v33);
    transitionCoordinator = [(VUIModalPresentationNavigationController *)v27 transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(VUIModalPresentationNavigationController *)v27 transitionCoordinator];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_4;
      v31[3] = &unk_279E213E8;
      v32 = v28;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v31];
    }

    else
    {
      v28[2](v28);
    }

    objc_destroyWeak(&v40);
    objc_destroyWeak(location);

    goto LABEL_24;
  }

  if (completionCopy)
  {
    vuiPresentedViewController2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VUIModalPresentationErrorDomain" code:0 userInfo:0];
    (v14)[2](v14, 0, vuiPresentedViewController2);
LABEL_24:
  }
}

void __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  v4 = [WeakRetained _presentationControllers];
  [v4 addObject:*(a1 + 32)];

  if (*(a1 + 88) == 1)
  {
    if ([*(a1 + 40) allowsModalOverModal])
    {
      [*(a1 + 48) presentViewController:*(a1 + 56) fromViewController:*(a1 + 32) options:*(a1 + 40) completion:*(a1 + 72)];
    }

    else
    {
      [*(a1 + 32) pushViewController:*(a1 + 56) animated:*(a1 + 89)];
    }

    goto LABEL_21;
  }

  v5 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 64) vuiPresentedViewController];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) pushViewController:*(a1 + 56) animated:0];
  if ([*(a1 + 40) type] == 7)
  {
    v8 = [*(a1 + 32) popoverPresentationController];
    v9 = [*(a1 + 40) popOverSourceBarButtonItem];
    [v8 setBarButtonItem:v9];

    v10 = [*(a1 + 32) popoverPresentationController];
    [*(a1 + 40) popOverSourceRect];
    [v10 setSourceRect:?];

    v11 = [*(a1 + 32) popoverPresentationController];
    v12 = [*(a1 + 40) popOverSourceView];
    [v11 setSourceView:v12];

    v13 = [*(a1 + 32) popoverPresentationController];
    [v13 setPermittedArrowDirections:{objc_msgSend(*(a1 + 40), "popOverArrowDirection")}];

    v14 = [*(a1 + 40) conformsToProtocol:&unk_28810A310];
    v15 = 48;
    if (v14)
    {
      v15 = 40;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + v15);
    v18 = [v16 popoverPresentationController];
    [v18 setDelegate:v17];

    goto LABEL_16;
  }

  if ([*(a1 + 40) type] == 1001 || objc_msgSend(*(a1 + 40), "type") == 1002)
  {
    v19 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:{objc_msgSend(*(a1 + 40), "type") == 1001}];
    [*(a1 + 40) _applyAlertActionsForController:v19];
    [v19 setContentViewController:*(a1 + 32)];
    [*(a1 + 32) setContainingAlertController:v19];
    v18 = v5;
    v5 = v19;
LABEL_16:
  }

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_2;
  v26 = &unk_279E21398;
  v27 = *(a1 + 64);
  v20 = v5;
  v28 = v20;
  v30 = *(a1 + 89);
  v29 = *(a1 + 72);
  v21 = MEMORY[0x2743B7C30](&v23);
  v22 = v21;
  if (v7)
  {
    [*(a1 + 64) dismissViewControllerAnimated:0 completion:{v21, v23, v24, v25, v26, v27, v28}];
  }

  else
  {
    (*(v21 + 16))(v21);
  }

LABEL_21:
}

void __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_3;
  v4[3] = &unk_279E21370;
  v5 = *(a1 + 48);
  [v1 presentViewController:v2 animated:v3 completion:v4];
}

uint64_t __81__VUIModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentingViewController = [controllerCopy presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentingViewController2 = [controllerCopy presentingViewController];

    if (presentingViewController2)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __63__VUIModalPresenter_dismissViewController_animated_completion___block_invoke;
      v18[3] = &unk_279E21370;
      v19 = completionCopy;
      [presentingViewController2 dismissViewControllerAnimated:animatedCopy completion:v18];

      goto LABEL_13;
    }
  }

  else
  {
  }

  navigationController = [controllerCopy navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentingViewController2 = [controllerCopy navigationController];
  }

  else
  {
    presentingViewController2 = 0;
  }

  topViewController = [presentingViewController2 topViewController];

  if (topViewController == controllerCopy)
  {
    v15 = [presentingViewController2 popViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    viewControllers = [presentingViewController2 viewControllers];
    v14 = [viewControllers mutableCopy];

    [v14 removeObject:controllerCopy];
    [presentingViewController2 setViewControllers:v14 animated:animatedCopy];
    if (completionCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __63__VUIModalPresenter_dismissViewController_animated_completion___block_invoke_2;
      v16[3] = &unk_279E21370;
      v17 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v16);
    }
  }

LABEL_13:
}

uint64_t __63__VUIModalPresenter_dismissViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = 0;
  if (controllerCopy && (isKindOfClass & 1) != 0)
  {
    v8 = self->_presentingAnimator;
  }

  return v8;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (controllerCopy && (isKindOfClass & 1) != 0)
  {
    v6 = self->_dismissingAnimator;
  }

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v6 = MEMORY[0x277D76198];
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[v6 alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [v9 setBlurStyle:4005];

  return v9;
}

@end