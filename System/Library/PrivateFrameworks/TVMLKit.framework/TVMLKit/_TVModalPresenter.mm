@interface _TVModalPresenter
+ (id)presenter;
- (UIViewController)presentedViewController;
- (id)_hidden;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_configureModalController:(id)a3 withFromController:(id)a4 andConfiguration:(id)a5;
- (void)_dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)_forceOrientationBackToSupportedOrientation;
- (void)_willRotateNotification:(id)a3;
- (void)dealloc;
- (void)hideController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)showController:(id)a3 fromController:(id)a4 withCompletionBlock:(id)a5;
- (void)showController:(id)a3 fromController:(id)a4 withConfiguration:(id)a5 animated:(BOOL)a6 andCompletionBlock:(id)a7;
@end

@implementation _TVModalPresenter

- (id)_hidden
{
  v16.receiver = self;
  v16.super_class = _TVModalPresenter;
  v2 = [(_TVModalPresenter *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D28]);
    v4 = [[__TVModalPresenterNavigationController alloc] initWithRootViewController:v3];
    modalRootViewController = v2->_modalRootViewController;
    v2->_modalRootViewController = &v4->super;

    [(UINavigationController *)v2->_modalRootViewController setDelegate:v2];
    [(UINavigationController *)v2->_modalRootViewController setTransitioningDelegate:v2];
    [(UINavigationController *)v2->_modalRootViewController setModalPresentationCapturesStatusBarAppearance:1];
    [(UINavigationController *)v2->_modalRootViewController setModalPresentationStyle:5];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277D772D0];
    v8 = [*MEMORY[0x277D76620] keyWindow];
    [v6 addObserver:v2 selector:sel__willRotateNotification_ name:v7 object:v8];

    v9 = objc_alloc_init(_TVPlaybackFadeAnimator);
    playbackAnimator = v2->_playbackAnimator;
    v2->_playbackAnimator = v9;

    v11 = [objc_alloc(MEMORY[0x277D76190]) initForPresenting:1];
    presentingAnimator = v2->_presentingAnimator;
    v2->_presentingAnimator = v11;

    v13 = [objc_alloc(MEMORY[0x277D76190]) initForPresenting:0];
    dismissingAnimator = v2->_dismissingAnimator;
    v2->_dismissingAnimator = v13;
  }

  return v2;
}

+ (id)presenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30___TVModalPresenter_presenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (presenter_onceToken != -1)
  {
    dispatch_once(&presenter_onceToken, block);
  }

  v2 = presenter_presenter;

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVModalPresenter;
  [(_TVModalPresenter *)&v4 dealloc];
}

- (UIViewController)presentedViewController
{
  v3 = [(_TVModalPresenter *)self modalRootViewController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_TVModalPresenter *)self modalRootViewController];
    v6 = [v7 topViewController];
  }

  return v6;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = [a3 childViewControllers];
  v7 = [v6 lastObject];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = objc_getAssociatedObject(v7, "TVMLPresenterConfiguration");
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v8 configurationType];

  if (v10 == 4)
  {
    v11 = 8;
    goto LABEL_8;
  }

  if (v10 != 2)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_9;
  }

  v11 = 32;
LABEL_8:
  v12 = *(&self->super.isa + v11);
LABEL_9:

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = [a3 childViewControllers];
  v5 = [v4 lastObject];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = objc_getAssociatedObject(v5, "TVMLPresenterConfiguration");
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [v6 configurationType];

  if (v8 == 4)
  {
    v9 = 16;
    goto LABEL_8;
  }

  if (v8 != 2)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = 32;
LABEL_8:
  v10 = *(&self->super.isa + v9);
LABEL_9:

  return v10;
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

- (void)showController:(id)a3 fromController:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(TVModalPresenterConfiguration);
  [(_TVModalPresenter *)self showController:v10 fromController:v9 withConfiguration:v11 andCompletionBlock:v8];
}

- (void)showController:(id)a3 fromController:(id)a4 withConfiguration:(id)a5 animated:(BOOL)a6 andCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v12)
  {
    v30 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVModalPresenter showController:v30 fromController:? withConfiguration:? animated:? andCompletionBlock:?];
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else if (!v15)
    {
      goto LABEL_14;
    }

    v15[2](v15);
    goto LABEL_14;
  }

  v16 = [(_TVModalPresenter *)self modalRootViewController];
  if (![v13 isEqual:v16])
  {
    goto LABEL_6;
  }

  v17 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVModalPresenter showController:v17 fromController:? withConfiguration:? animated:? andCompletionBlock:?];
  }

  v18 = [v16 presentingViewController];

  v13 = v18;
  if (!v18)
  {
    if (v15)
    {
      v15[2](v15);
    }

    v13 = 0;
  }

  else
  {
LABEL_6:
    [(_TVModalPresenter *)self _configureModalController:v16 withFromController:v13 andConfiguration:v14];
    objc_setAssociatedObject(v12, "TVMLPresenterConfiguration", v14, 1);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke;
    v45[3] = &unk_279D6FA88;
    v19 = v12;
    v46 = v19;
    v31 = v16;
    v20 = v16;
    v47 = v20;
    v32 = v14;
    v21 = v14;
    v48 = v21;
    v22 = v13;
    v49 = v22;
    v23 = v15;
    v50 = v23;
    v51 = a6;
    v24 = MEMORY[0x26D6AFBB0](v45);
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_3;
    v35[3] = &unk_279D6FAB0;
    objc_copyWeak(&v42, &location);
    v25 = v20;
    v36 = v25;
    v13 = v22;
    v37 = v13;
    v26 = v24;
    v40 = v26;
    v38 = v19;
    v39 = v21;
    v43 = a6;
    v41 = v23;
    v27 = MEMORY[0x26D6AFBB0](v35);
    v28 = [v25 transitionCoordinator];

    if (v28)
    {
      v29 = [v25 transitionCoordinator];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_6;
      v33[3] = &unk_279D6FAD8;
      v34 = v27;
      [v29 animateAlongsideTransition:0 completion:v33];
    }

    else
    {
      v27[2](v27);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    v16 = v31;
    v14 = v32;
  }

LABEL_14:
}

- (void)hideController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(_TVModalPresenter *)self modalRootViewController];
  v11 = [v10 presentedViewController];

  if (v11)
  {
    v12 = [v10 presentedViewController];
    [v12 dismissViewControllerAnimated:0 completion:v9];
LABEL_3:

    goto LABEL_4;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [v10 viewControllers];
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v34 + 1) + 8 * v17);
      if (v18 == v8)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v19 = v18;

    if (!v8)
    {
      goto LABEL_17;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __60___TVModalPresenter_hideController_animated_withCompletion___block_invoke;
    v29[3] = &unk_279D6FB00;
    v29[4] = self;
    v20 = v10;
    v30 = v20;
    v21 = v19;
    v31 = v21;
    v33 = a4;
    v32 = v9;
    v22 = MEMORY[0x26D6AFBB0](v29);
    v23 = [v20 transitionCoordinator];

    if (v23)
    {
      v24 = [v20 transitionCoordinator];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __60___TVModalPresenter_hideController_animated_withCompletion___block_invoke_2;
      v27[3] = &unk_279D6FAD8;
      v28 = v22;
      [v24 animateAlongsideTransition:0 completion:v27];
    }

    else
    {
      v22[2](v22);
    }
  }

  else
  {
LABEL_13:

LABEL_17:
    v25 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v25;
      v26 = [v10 viewControllers];
      *buf = 138412546;
      v39 = v8;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_DEFAULT, "_TVModalPresenter: Cannot hide %@. It isn't in the stack: %@", buf, 0x16u);

      goto LABEL_3;
    }
  }

LABEL_4:
}

- (void)_configureModalController:(id)a3 withFromController:(id)a4 andConfiguration:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setModalPresentationStyle:{objc_msgSend(v10, "presentationStyle")}];
  v11 = [v8 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 _setShouldDismissWhenTappedOutside:1];
  }

  [v8 setNavigationBarHidden:objc_msgSend(v10 animated:{"navigationBarHidden"), 0}];
  if ([v10 configurationType] == 3)
  {
    v12 = [v9 childViewControllers];
    v13 = [v12 lastObject];

    v14 = [v13 navigationItem];
    v15 = [v10 barButtonID];

    v47 = v14;
    if (v15)
    {
      v46 = self;
      v16 = [MEMORY[0x277CBEB18] array];
      v17 = [v14 leftBarButtonItems];
      v18 = [v17 count];

      if (v18)
      {
        v19 = [v14 leftBarButtonItems];
        [v16 addObjectsFromArray:v19];
      }

      v45 = v13;
      v20 = [v14 rightBarButtonItems];
      v21 = [v20 count];

      if (v21)
      {
        v22 = [v14 rightBarButtonItems];
        [v16 addObjectsFromArray:v22];
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = v16;
      v23 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v42 = v11;
        v43 = v9;
        v44 = v8;
        v25 = *v50;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v50 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v49 + 1) + 8 * i);
            v28 = [v27 customView];
            v29 = [v28 tv_associatedIKViewElement];
            v30 = [v29 attributes];
            v31 = [v30 objectForKey:@"barButtonID"];

            v32 = [v10 barButtonID];
            v33 = [v31 isEqualToString:v32];

            if (v33)
            {
              v34 = v27;

              goto LABEL_23;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }

        v34 = 0;
LABEL_23:
        v9 = v43;
        v8 = v44;
        v11 = v42;
      }

      else
      {
        v34 = 0;
      }

      v13 = v45;
      self = v46;
    }

    else
    {
      v34 = 0;
    }

    v37 = [v8 popoverPresentationController];
    v38 = v37;
    if (v34)
    {
      [v37 setBarButtonItem:v34];
    }

    v39 = [v10 sourceView];

    if (v39)
    {
      v40 = [v10 sourceView];
      [v38 setSourceView:v40];

      [v10 sourceRect];
      [v38 setSourceRect:?];
    }

    v41 = [MEMORY[0x277D75348] whiteColor];
    [v38 setBackgroundColor:v41];

    [v38 setDelegate:self];
    [v10 popoverSize];
    [v8 setPreferredContentSize:?];
  }

  else
  {
    if ([v10 configurationType] == 1)
    {
      [v10 formSheetSize];
    }

    else
    {
      v35 = *MEMORY[0x277CBF3A8];
      v36 = *(MEMORY[0x277CBF3A8] + 8);
    }

    [v8 setPreferredContentSize:{v35, v36}];
  }
}

- (void)_dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_TVModalPresenter *)self modalRootViewController];
  self->_dismissing = 1;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49___TVModalPresenter__dismissAnimated_completion___block_invoke;
  v15[3] = &unk_279D6FB28;
  objc_copyWeak(&v18, &location);
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v16 = v9;
  v10 = MEMORY[0x26D6AFBB0](v15);
  v11 = [v9 presentingViewController];

  if (v11)
  {
    v12 = [v9 presentingViewController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49___TVModalPresenter__dismissAnimated_completion___block_invoke_2;
    v13[3] = &unk_279D6E6F8;
    v14 = v10;
    [v12 dismissViewControllerAnimated:v4 completion:v13];
  }

  else
  {
    v10[2](v10);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_willRotateNotification:(id)a3
{
  v7 = [(_TVModalPresenter *)self modalRootViewController];
  v4 = [v7 presentingViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v7 modalPresentationStyle];

    if (v6 == 7)
    {
      [(_TVModalPresenter *)self hideAllAnimated:0 withCompletion:0];
    }
  }
}

- (void)_forceOrientationBackToSupportedOrientation
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  if (([v7 statusBarOrientation] - 3) <= 1)
  {
    v2 = [v7 delegate];
    v3 = [v2 window];
    v4 = [v3 rootViewController];
    v5 = [v4 supportedInterfaceOrientations] & 0x18;

    if (!v5)
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      [v6 setOrientation:1];
    }
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = [(_TVModalPresenter *)self modalRootViewController];
  [v4 reset];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"TVModalPresenterDismissedNotification" object:0];
}

@end