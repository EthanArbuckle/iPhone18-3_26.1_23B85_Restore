@interface TVModalPresenter
+ (id)_viewControllerForResponder:(id)responder;
+ (id)sharedInstance;
- (NSArray)presentedViewControllers;
- (NSHashTable)_presentationControllers;
- (TVModalPresenter)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)dismissAllViewControllersWithAnimation:(BOOL)animation completion:(id)completion;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)dismissViewControllerWithResponder:(id)responder animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller forResponder:(id)responder options:(id)options completion:(id)completion;
- (void)presentViewController:(id)controller fromViewController:(id)viewController options:(id)options completion:(id)completion;
@end

@implementation TVModalPresenter

uint64_t __30___TVModalPresenter_presenter__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _hidden];
  v2 = presenter_presenter;
  presenter_presenter = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAutomaticallyAdjustsScrollViewInsets:0];
  v2 = [*(a1 + 40) childViewControllers];
  v3 = [v2 containsObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 40) pushViewController:*(a1 + 32) animated:0];
  }

  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 48);
    v7 = v5;
    [v7 setOverrideOrientation:{objc_msgSend(v6, "configurationType") == 2}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 56) willPresentTraitsOverridingViewController];
  }

  if ([*(a1 + 48) configurationType] != 3)
  {
    goto LABEL_11;
  }

  v8 = [*(a1 + 40) popoverPresentationController];
  v9 = [v8 sourceView];
  if (v9)
  {

LABEL_11:
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_2;
    v15[3] = &unk_279D6FA60;
    v18 = *(a1 + 72);
    v16 = v13;
    v17 = *(a1 + 64);
    [v12 presentViewController:v16 animated:1 completion:v15];

    goto LABEL_12;
  }

  v10 = [*(a1 + 40) popoverPresentationController];
  v11 = [v10 barButtonItem];

  if (v11)
  {
    goto LABEL_11;
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))();
  }

LABEL_12:
}

uint64_t __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) view];
    [v2 setAlpha:1.0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [*(a1 + 32) presentingViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 40) presentedViewController];
    v6 = [v5 isEqual:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      v17 = [*(a1 + 32) presentingViewController];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_4;
      v26[3] = &unk_279D6E6F8;
      v27 = *(a1 + 64);
      [v17 dismissViewControllerAnimated:0 completion:v26];

      v18 = v27;
LABEL_12:

      goto LABEL_17;
    }
  }

  v7 = [*(a1 + 32) presentingViewController];

  if (!v7)
  {
    (*(*(a1 + 64) + 16))();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_5;
    v24[3] = &unk_279D6E7F8;
    v19 = *(a1 + 32);
    v25 = *(a1 + 40);
    [v19 setDismissalBlock:v24];
    v18 = v25;
    goto LABEL_12;
  }

  [*(a1 + 48) setAutomaticallyAdjustsScrollViewInsets:0];
  v8 = [*(a1 + 56) allowsModalOverModal];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9 presentedViewController];

    if (v10)
    {
      v11 = [*(a1 + 32) presentedViewController];
      [v11 dismissViewControllerAnimated:0 completion:0];
    }

    v12 = [[__TVModalPresenterNavigationController alloc] initWithRootViewController:*(a1 + 48)];
    [WeakRetained _configureModalController:v12 withFromController:*(a1 + 32) andConfiguration:*(a1 + 56)];
    [(__TVModalPresenterNavigationController *)v12 setNavigationBarHidden:1];
    v13 = *(a1 + 88);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v14 = [*(a1 + 48) appDocument];
    v15 = [v14 templateElement];
    v16 = [v15 elementName];
    if ([v16 isEqualToString:@"descriptiveAlertTemplate"])
    {
    }

    else
    {
      v20 = [*(a1 + 48) appDocument];
      v21 = [v20 templateElement];
      v22 = [v21 elementName];
      v23 = [v22 isEqualToString:@"alertTemplate"];

      if (!v23)
      {
LABEL_16:
        [*(a1 + 32) presentViewController:v12 animated:v13 completion:0];

        goto LABEL_17;
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

  [v9 pushViewController:*(a1 + 48) animated:*(a1 + 88) completion:*(a1 + 72)];
LABEL_17:
}

uint64_t __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_5(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 didPresentTraitsOverridingViewController];
  }

  return result;
}

void __60___TVModalPresenter_hideController_animated_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _forceOrientationBackToSupportedOrientation];
  v2 = [*(a1 + 40) viewControllers];
  v3 = [v2 lastObject];
  v4 = *(a1 + 48);

  v5 = [*(a1 + 40) viewControllers];
  v6 = v5;
  if (v3 == v4)
  {
    v8 = [v5 count];

    v9 = *(a1 + 64);
    v10 = *(a1 + 56);
    if (v8 == 2)
    {
      v11 = *(a1 + 32);

      [v11 _dismissAnimated:v9 completion:v10];
    }

    else
    {
      v12 = *(a1 + 40);

      [v12 popViewControllerAnimated:v9 completion:v10];
    }
  }

  else
  {
    v13 = [v5 mutableCopy];

    [v13 removeObject:*(a1 + 48)];
    [*(a1 + 40) setViewControllers:v13];
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void __49___TVModalPresenter__dismissAnimated_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    WeakRetained[24] = 0;
  }

  v4 = WeakRetained;
  if (a1[5])
  {
    dispatch_async(MEMORY[0x277D85CD0], a1[5]);
  }

  [a1[4] reset];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"TVModalPresenterDismissedNotification" object:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[TVModalPresenter sharedInstance];
  }

  v3 = sharedInstance___presenter;

  return v3;
}

uint64_t __34__TVModalPresenter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TVModalPresenter);
  v1 = sharedInstance___presenter;
  sharedInstance___presenter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (TVModalPresenter)init
{
  v10.receiver = self;
  v10.super_class = TVModalPresenter;
  v2 = [(TVModalPresenter *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D76190]) initForPresenting:1];
    presentingAnimator = v2->_presentingAnimator;
    v2->_presentingAnimator = v3;

    v5 = [objc_alloc(MEMORY[0x277D76190]) initForPresenting:0];
    dismissingAnimator = v2->_dismissingAnimator;
    v2->_dismissingAnimator = v5;

    v7 = objc_alloc_init(_TVPlaybackFadeAnimator);
    playbackAnimator = v2->_playbackAnimator;
    v2->_playbackAnimator = v7;
  }

  return v2;
}

- (NSHashTable)_presentationControllers
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
  _presentationControllers = [(TVModalPresenter *)self _presentationControllers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(_presentationControllers, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  _presentationControllers2 = [(TVModalPresenter *)self _presentationControllers];
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

- (void)presentViewController:(id)controller forResponder:(id)responder options:(id)options completion:(id)completion
{
  controllerCopy = controller;
  responderCopy = responder;
  optionsCopy = options;
  completionCopy = completion;
  v13 = [objc_opt_class() _viewControllerForResponder:responderCopy];
  navigationController = [v13 navigationController];
  v15 = navigationController;
  if (navigationController)
  {
    v16 = navigationController;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;

  if ([optionsCopy type] == 7)
  {
    [optionsCopy popOverSourceRect];
    if (CGRectIsEmpty(v23))
    {
      popOverSourceView = [optionsCopy popOverSourceView];
      if (popOverSourceView)
      {
        v19 = 1;
      }

      else
      {
        popOverSourceBarButtonItem = [optionsCopy popOverSourceBarButtonItem];
        v19 = popOverSourceBarButtonItem != 0;
      }
    }

    else
    {
      v19 = 1;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !v19)
    {
      [optionsCopy setPopOverSourceView:responderCopy];
    }
  }

  [(TVModalPresenter *)self presentViewController:controllerCopy fromViewController:v17 options:optionsCopy completion:completionCopy];
}

- (void)presentViewController:(id)controller fromViewController:(id)viewController options:(id)options completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(location, self);
  if (controllerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = controllerCopy;
      [v14 setPresentedModal:1];
    }

    presentedViewController = [viewControllerCopy presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presentedViewController2 = [viewControllerCopy presentedViewController];
    }

    else
    {
      presentedViewController2 = 0;
    }

    configuration = [presentedViewController2 configuration];
    type = [configuration type];
    type2 = [(TVModalPresenter *)optionsCopy type];

    if (type == type2)
    {
      if (presentedViewController2)
      {
LABEL_11:
        v20 = presentedViewController2;
        v21 = 1;
LABEL_17:
        [(TVModalPresentationNavigationController *)v20 setConfiguration:optionsCopy];
        if ([(TVModalPresenter *)optionsCopy conformsToProtocol:&unk_287E8F540])
        {
          selfCopy = optionsCopy;
        }

        else
        {
          selfCopy = self;
        }

        v25 = selfCopy;
        [(TVModalPresentationNavigationController *)v20 setTransitioningDelegate:v25];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke;
        v32[3] = &unk_279D70BF0;
        objc_copyWeak(&v39, location);
        v26 = v20;
        v33 = v26;
        v40 = v21;
        v34 = optionsCopy;
        selfCopy2 = self;
        v36 = controllerCopy;
        v38 = completionCopy;
        v37 = viewControllerCopy;
        v27 = MEMORY[0x26D6AFBB0](v32);
        transitionCoordinator = [(TVModalPresentationNavigationController *)v26 transitionCoordinator];

        if (transitionCoordinator)
        {
          transitionCoordinator2 = [(TVModalPresentationNavigationController *)v26 transitionCoordinator];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_4;
          v30[3] = &unk_279D6FAD8;
          v31 = v27;
          [transitionCoordinator2 animateAlongsideTransition:0 completion:v30];
        }

        else
        {
          v27[2](v27);
        }

        objc_destroyWeak(&v39);
        goto LABEL_24;
      }
    }

    else
    {
      allowsModalOverModal = [(TVModalPresenter *)optionsCopy allowsModalOverModal];
      if (presentedViewController2)
      {
        v23 = allowsModalOverModal;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        goto LABEL_11;
      }
    }

    v20 = [[TVModalPresentationNavigationController alloc] initWithConfiguration:optionsCopy];
    v21 = 0;
    goto LABEL_17;
  }

  if (completionCopy)
  {
    presentedViewController2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVModalPresentationErrorDomain" code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, presentedViewController2);
LABEL_24:
  }

  objc_destroyWeak(location);
}

void __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_18;
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
      [*(a1 + 32) pushViewController:*(a1 + 56) animated:{objc_msgSend(*(a1 + 40), "isAnimated")}];
    }

    goto LABEL_18;
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 64) presentedViewController];

  [*(a1 + 32) pushViewController:*(a1 + 56) animated:0];
  if ([*(a1 + 40) type] == 7)
  {
    v7 = [*(a1 + 32) popoverPresentationController];
    v8 = [*(a1 + 40) popOverSourceBarButtonItem];
    [v7 setBarButtonItem:v8];

    v9 = [*(a1 + 32) popoverPresentationController];
    [*(a1 + 40) popOverSourceRect];
    [v9 setSourceRect:?];

    v10 = [*(a1 + 32) popoverPresentationController];
    v11 = [*(a1 + 40) popOverSourceView];
    [v10 setSourceView:v11];

    v12 = [*(a1 + 32) popoverPresentationController];
    [v12 setPermittedArrowDirections:{objc_msgSend(*(a1 + 40), "popOverArrowDirection")}];

    v13 = [*(a1 + 40) conformsToProtocol:&unk_287E8C878];
    v14 = 48;
    if (v13)
    {
      v14 = 40;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + v14);
    v17 = [v15 popoverPresentationController];
    [v17 setDelegate:v16];

    goto LABEL_13;
  }

  if ([*(a1 + 40) type] == 1001 || objc_msgSend(*(a1 + 40), "type") == 1002)
  {
    v18 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:{objc_msgSend(*(a1 + 40), "type") == 1001}];
    [*(a1 + 40) _applyAlertActionsForController:v18];
    [v18 setContentViewController:*(a1 + 32)];
    [*(a1 + 32) setContainingAlertController:v18];
    v17 = v5;
    v5 = v18;
LABEL_13:
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_2;
  v22[3] = &unk_279D6E908;
  v23 = *(a1 + 64);
  v19 = v5;
  v24 = v19;
  v25 = *(a1 + 72);
  v20 = MEMORY[0x26D6AFBB0](v22);
  v21 = v20;
  if (v6)
  {
    [*(a1 + 64) dismissViewControllerAnimated:0 completion:v20];
  }

  else
  {
    (*(v20 + 16))(v20);
  }

LABEL_18:
}

void __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_3;
  v3[3] = &unk_279D6E6F8;
  v4 = *(a1 + 48);
  [v1 presentViewController:v2 animated:1 completion:v3];
}

uint64_t __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)dismissViewControllerWithResponder:(id)responder animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  responderCopy = responder;
  completionCopy = completion;
  v9 = [objc_opt_class() _viewControllerForResponder:responderCopy];
  presentedViewControllers = [(TVModalPresenter *)self presentedViewControllers];
  v11 = [presentedViewControllers containsObject:v9];

  presentedViewControllers2 = [(TVModalPresenter *)self presentedViewControllers];
  presentingViewController = [v9 presentingViewController];
  v14 = [presentedViewControllers2 containsObject:presentingViewController];

  if (!v9 || (v11 & 1) != 0 || (v14 & 1) != 0)
  {
    if (v9)
    {
      [(TVModalPresenter *)self dismissViewController:v9 animated:animatedCopy completion:completionCopy];
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      parentViewController = [v9 parentViewController];
      v16 = parentViewController;
      if (parentViewController)
      {
        presentingViewController2 = parentViewController;
      }

      else
      {
        presentingViewController2 = [v9 presentingViewController];
      }

      v18 = presentingViewController2;

      v9 = v18;
    }

    while (v18);
  }

  if (!completionCopy)
  {
    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVModalPresentationErrorDomain" code:1 userInfo:0];
  completionCopy[2](completionCopy, 0, v9);
LABEL_13:

LABEL_14:
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
      v18[2] = __62__TVModalPresenter_dismissViewController_animated_completion___block_invoke;
      v18[3] = &unk_279D6E6F8;
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
      v16[2] = __62__TVModalPresenter_dismissViewController_animated_completion___block_invoke_2;
      v16[3] = &unk_279D6E6F8;
      v17 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v16);
    }
  }

LABEL_13:
}

uint64_t __62__TVModalPresenter_dismissViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)dismissAllViewControllersWithAnimation:(BOOL)animation completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _presentationControllers = [(TVModalPresenter *)self _presentationControllers];
  v8 = [_presentationControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(_presentationControllers);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        presentingViewController = [v12 presentingViewController];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __70__TVModalPresenter_dismissAllViewControllersWithAnimation_completion___block_invoke;
        v17[3] = &unk_279D6E7F8;
        v18 = v6;
        [presentingViewController dismissViewControllerAnimated:1 completion:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [_presentationControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__TVModalPresenter_dismissAllViewControllersWithAnimation_completion___block_invoke_2;
  v15[3] = &unk_279D6E6F8;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], v15);
}

uint64_t __70__TVModalPresenter_dismissAllViewControllersWithAnimation_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

+ (id)_viewControllerForResponder:(id)responder
{
  responderCopy = responder;
  v4 = responderCopy;
  if (responderCopy)
  {
    v5 = responderCopy;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [v5 nextResponder];

      v5 = nextResponder;
    }

    while (nextResponder);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = controllerCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    configuration = [v8 configuration];
    type = [configuration type];

    if (type == 1000)
    {
      v12 = 32;
LABEL_9:
      v15 = *(&self->super.isa + v12);
      goto LABEL_11;
    }

    configuration2 = [v9 configuration];
    type2 = [configuration2 type];

    if (type2 == 4)
    {
      v12 = 16;
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = controllerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    configuration = [v6 configuration];
    type = [configuration type];

    if (type == 1000)
    {
      v10 = 32;
LABEL_9:
      v13 = *(&self->super.isa + v10);
      goto LABEL_11;
    }

    configuration2 = [v7 configuration];
    type2 = [configuration2 type];

    if (type2 == 4)
    {
      v10 = 24;
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
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