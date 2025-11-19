@interface TVModalPresenter
+ (id)_viewControllerForResponder:(id)a3;
+ (id)sharedInstance;
- (NSArray)presentedViewControllers;
- (NSHashTable)_presentationControllers;
- (TVModalPresenter)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)dismissAllViewControllersWithAnimation:(BOOL)a3 completion:(id)a4;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dismissViewControllerWithResponder:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentViewController:(id)a3 forResponder:(id)a4 options:(id)a5 completion:(id)a6;
- (void)presentViewController:(id)a3 fromViewController:(id)a4 options:(id)a5 completion:(id)a6;
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
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->__presentationControllers;
    self->__presentationControllers = v4;

    presentationControllers = self->__presentationControllers;
  }

  return presentationControllers;
}

- (NSArray)presentedViewControllers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(TVModalPresenter *)self _presentationControllers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(TVModalPresenter *)self _presentationControllers];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 viewControllers];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v20 + 1) + 8 * j);
              if (([v5 containsObject:v17] & 1) == 0)
              {
                [v5 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v18 = [v5 copy];

  return v18;
}

- (void)presentViewController:(id)a3 forResponder:(id)a4 options:(id)a5 completion:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_opt_class() _viewControllerForResponder:v10];
  v14 = [v13 navigationController];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;

  if ([v11 type] == 7)
  {
    [v11 popOverSourceRect];
    if (CGRectIsEmpty(v23))
    {
      v18 = [v11 popOverSourceView];
      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v20 = [v11 popOverSourceBarButtonItem];
        v19 = v20 != 0;
      }
    }

    else
    {
      v19 = 1;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !v19)
    {
      [v11 setPopOverSourceView:v10];
    }
  }

  [(TVModalPresenter *)self presentViewController:v21 fromViewController:v17 options:v11 completion:v12];
}

- (void)presentViewController:(id)a3 fromViewController:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(location, self);
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v10;
      [v14 setPresentedModal:1];
    }

    v15 = [v11 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v11 presentedViewController];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 configuration];
    v18 = [v17 type];
    v19 = [(TVModalPresenter *)v12 type];

    if (v18 == v19)
    {
      if (v16)
      {
LABEL_11:
        v20 = v16;
        v21 = 1;
LABEL_17:
        [(TVModalPresentationNavigationController *)v20 setConfiguration:v12];
        if ([(TVModalPresenter *)v12 conformsToProtocol:&unk_287E8F540])
        {
          v24 = v12;
        }

        else
        {
          v24 = self;
        }

        v25 = v24;
        [(TVModalPresentationNavigationController *)v20 setTransitioningDelegate:v25];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke;
        v32[3] = &unk_279D70BF0;
        objc_copyWeak(&v39, location);
        v26 = v20;
        v33 = v26;
        v40 = v21;
        v34 = v12;
        v35 = self;
        v36 = v10;
        v38 = v13;
        v37 = v11;
        v27 = MEMORY[0x26D6AFBB0](v32);
        v28 = [(TVModalPresentationNavigationController *)v26 transitionCoordinator];

        if (v28)
        {
          v29 = [(TVModalPresentationNavigationController *)v26 transitionCoordinator];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __80__TVModalPresenter_presentViewController_fromViewController_options_completion___block_invoke_4;
          v30[3] = &unk_279D6FAD8;
          v31 = v27;
          [v29 animateAlongsideTransition:0 completion:v30];
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
      v22 = [(TVModalPresenter *)v12 allowsModalOverModal];
      if (v16)
      {
        v23 = v22;
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

    v20 = [[TVModalPresentationNavigationController alloc] initWithConfiguration:v12];
    v21 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVModalPresentationErrorDomain" code:0 userInfo:0];
    (*(v13 + 2))(v13, 0, v16);
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

- (void)dismissViewControllerWithResponder:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v19 = a3;
  v8 = a5;
  v9 = [objc_opt_class() _viewControllerForResponder:v19];
  v10 = [(TVModalPresenter *)self presentedViewControllers];
  v11 = [v10 containsObject:v9];

  v12 = [(TVModalPresenter *)self presentedViewControllers];
  v13 = [v9 presentingViewController];
  v14 = [v12 containsObject:v13];

  if (!v9 || (v11 & 1) != 0 || (v14 & 1) != 0)
  {
    if (v9)
    {
      [(TVModalPresenter *)self dismissViewController:v9 animated:v6 completion:v8];
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      v15 = [v9 parentViewController];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [v9 presentingViewController];
      }

      v18 = v17;

      v9 = v18;
    }

    while (v18);
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVModalPresentationErrorDomain" code:1 userInfo:0];
  v8[2](v8, 0, v9);
LABEL_13:

LABEL_14:
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [v7 presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 presentingViewController];

    if (v10)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __62__TVModalPresenter_dismissViewController_animated_completion___block_invoke;
      v18[3] = &unk_279D6E6F8;
      v19 = v8;
      [v10 dismissViewControllerAnimated:v6 completion:v18];

      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [v7 navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 navigationController];
  }

  else
  {
    v10 = 0;
  }

  v12 = [v10 topViewController];

  if (v12 == v7)
  {
    v15 = [v10 popViewControllerAnimated:v6 completion:v8];
  }

  else
  {
    v13 = [v10 viewControllers];
    v14 = [v13 mutableCopy];

    [v14 removeObject:v7];
    [v10 setViewControllers:v14 animated:v6];
    if (v8)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __62__TVModalPresenter_dismissViewController_animated_completion___block_invoke_2;
      v16[3] = &unk_279D6E6F8;
      v17 = v8;
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

- (void)dismissAllViewControllersWithAnimation:(BOOL)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(TVModalPresenter *)self _presentationControllers];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        v13 = [v12 presentingViewController];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __70__TVModalPresenter_dismissAllViewControllersWithAnimation_completion___block_invoke;
        v17[3] = &unk_279D6E7F8;
        v18 = v6;
        [v13 dismissViewControllerAnimated:1 completion:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__TVModalPresenter_dismissAllViewControllersWithAnimation_completion___block_invoke_2;
  v15[3] = &unk_279D6E6F8;
  v16 = v5;
  v14 = v5;
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

+ (id)_viewControllerForResponder:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = [v5 nextResponder];

      v5 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 configuration];
    v11 = [v10 type];

    if (v11 == 1000)
    {
      v12 = 32;
LABEL_9:
      v15 = *(&self->super.isa + v12);
      goto LABEL_11;
    }

    v13 = [v9 configuration];
    v14 = [v13 type];

    if (v14 == 4)
    {
      v12 = 16;
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 configuration];
    v9 = [v8 type];

    if (v9 == 1000)
    {
      v10 = 32;
LABEL_9:
      v13 = *(&self->super.isa + v10);
      goto LABEL_11;
    }

    v11 = [v7 configuration];
    v12 = [v11 type];

    if (v12 == 4)
    {
      v10 = 24;
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = MEMORY[0x277D76198];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  [v9 setBlurStyle:4005];

  return v9;
}

@end