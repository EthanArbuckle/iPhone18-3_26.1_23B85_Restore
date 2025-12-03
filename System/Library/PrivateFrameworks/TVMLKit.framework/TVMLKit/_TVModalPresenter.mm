@interface _TVModalPresenter
+ (id)presenter;
- (UIViewController)presentedViewController;
- (id)_hidden;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_configureModalController:(id)controller withFromController:(id)fromController andConfiguration:(id)configuration;
- (void)_dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)_forceOrientationBackToSupportedOrientation;
- (void)_willRotateNotification:(id)notification;
- (void)dealloc;
- (void)hideController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)showController:(id)controller fromController:(id)fromController withCompletionBlock:(id)block;
- (void)showController:(id)controller fromController:(id)fromController withConfiguration:(id)configuration animated:(BOOL)animated andCompletionBlock:(id)block;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277D772D0];
    keyWindow = [*MEMORY[0x277D76620] keyWindow];
    [defaultCenter addObserver:v2 selector:sel__willRotateNotification_ name:v7 object:keyWindow];

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
  block[4] = self;
  if (presenter_onceToken != -1)
  {
    dispatch_once(&presenter_onceToken, block);
  }

  v2 = presenter_presenter;

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVModalPresenter;
  [(_TVModalPresenter *)&v4 dealloc];
}

- (UIViewController)presentedViewController
{
  modalRootViewController = [(_TVModalPresenter *)self modalRootViewController];
  viewControllers = [modalRootViewController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 1)
  {
    topViewController = 0;
  }

  else
  {
    modalRootViewController2 = [(_TVModalPresenter *)self modalRootViewController];
    topViewController = [modalRootViewController2 topViewController];
  }

  return topViewController;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  childViewControllers = [controller childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (!lastObject)
  {
    goto LABEL_6;
  }

  v8 = objc_getAssociatedObject(lastObject, "TVMLPresenterConfiguration");
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  configurationType = [v8 configurationType];

  if (configurationType == 4)
  {
    v11 = 8;
    goto LABEL_8;
  }

  if (configurationType != 2)
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

- (id)animationControllerForDismissedController:(id)controller
{
  childViewControllers = [controller childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (!lastObject)
  {
    goto LABEL_6;
  }

  v6 = objc_getAssociatedObject(lastObject, "TVMLPresenterConfiguration");
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  configurationType = [v6 configurationType];

  if (configurationType == 4)
  {
    v9 = 16;
    goto LABEL_8;
  }

  if (configurationType != 2)
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

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v6 = MEMORY[0x277D76198];
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[v6 alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [v9 setBlurStyle:4005];

  return v9;
}

- (void)showController:(id)controller fromController:(id)fromController withCompletionBlock:(id)block
{
  blockCopy = block;
  fromControllerCopy = fromController;
  controllerCopy = controller;
  v11 = objc_alloc_init(TVModalPresenterConfiguration);
  [(_TVModalPresenter *)self showController:controllerCopy fromController:fromControllerCopy withConfiguration:v11 andCompletionBlock:blockCopy];
}

- (void)showController:(id)controller fromController:(id)fromController withConfiguration:(id)configuration animated:(BOOL)animated andCompletionBlock:(id)block
{
  controllerCopy = controller;
  fromControllerCopy = fromController;
  configurationCopy = configuration;
  blockCopy = block;
  if (!controllerCopy)
  {
    v30 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVModalPresenter showController:v30 fromController:? withConfiguration:? animated:? andCompletionBlock:?];
      if (!blockCopy)
      {
        goto LABEL_14;
      }
    }

    else if (!blockCopy)
    {
      goto LABEL_14;
    }

    blockCopy[2](blockCopy);
    goto LABEL_14;
  }

  modalRootViewController = [(_TVModalPresenter *)self modalRootViewController];
  if (![fromControllerCopy isEqual:modalRootViewController])
  {
    goto LABEL_6;
  }

  v17 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVModalPresenter showController:v17 fromController:? withConfiguration:? animated:? andCompletionBlock:?];
  }

  presentingViewController = [modalRootViewController presentingViewController];

  fromControllerCopy = presentingViewController;
  if (!presentingViewController)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    fromControllerCopy = 0;
  }

  else
  {
LABEL_6:
    [(_TVModalPresenter *)self _configureModalController:modalRootViewController withFromController:fromControllerCopy andConfiguration:configurationCopy];
    objc_setAssociatedObject(controllerCopy, "TVMLPresenterConfiguration", configurationCopy, 1);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke;
    v45[3] = &unk_279D6FA88;
    v19 = controllerCopy;
    v46 = v19;
    v31 = modalRootViewController;
    v20 = modalRootViewController;
    v47 = v20;
    v32 = configurationCopy;
    v21 = configurationCopy;
    v48 = v21;
    v22 = fromControllerCopy;
    v49 = v22;
    v23 = blockCopy;
    v50 = v23;
    animatedCopy = animated;
    v24 = MEMORY[0x26D6AFBB0](v45);
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_3;
    v35[3] = &unk_279D6FAB0;
    objc_copyWeak(&v42, &location);
    v25 = v20;
    v36 = v25;
    fromControllerCopy = v22;
    v37 = fromControllerCopy;
    v26 = v24;
    v40 = v26;
    v38 = v19;
    v39 = v21;
    animatedCopy2 = animated;
    v41 = v23;
    v27 = MEMORY[0x26D6AFBB0](v35);
    transitionCoordinator = [v25 transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [v25 transitionCoordinator];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97___TVModalPresenter_showController_fromController_withConfiguration_animated_andCompletionBlock___block_invoke_6;
      v33[3] = &unk_279D6FAD8;
      v34 = v27;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v33];
    }

    else
    {
      v27[2](v27);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    modalRootViewController = v31;
    configurationCopy = v32;
  }

LABEL_14:
}

- (void)hideController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  modalRootViewController = [(_TVModalPresenter *)self modalRootViewController];
  presentedViewController = [modalRootViewController presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [modalRootViewController presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:0 completion:completionCopy];
LABEL_3:

    goto LABEL_4;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  viewControllers = [modalRootViewController viewControllers];
  v14 = [viewControllers countByEnumeratingWithState:&v34 objects:v42 count:16];
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
        objc_enumerationMutation(viewControllers);
      }

      v18 = *(*(&v34 + 1) + 8 * v17);
      if (v18 == controllerCopy)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [viewControllers countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v19 = v18;

    if (!controllerCopy)
    {
      goto LABEL_17;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __60___TVModalPresenter_hideController_animated_withCompletion___block_invoke;
    v29[3] = &unk_279D6FB00;
    v29[4] = self;
    v20 = modalRootViewController;
    v30 = v20;
    v21 = v19;
    v31 = v21;
    animatedCopy = animated;
    v32 = completionCopy;
    v22 = MEMORY[0x26D6AFBB0](v29);
    transitionCoordinator = [v20 transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [v20 transitionCoordinator];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __60___TVModalPresenter_hideController_animated_withCompletion___block_invoke_2;
      v27[3] = &unk_279D6FAD8;
      v28 = v22;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v27];
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
      presentedViewController2 = v25;
      viewControllers2 = [modalRootViewController viewControllers];
      *buf = 138412546;
      v39 = controllerCopy;
      v40 = 2112;
      v41 = viewControllers2;
      _os_log_impl(&dword_26CD9A000, presentedViewController2, OS_LOG_TYPE_DEFAULT, "_TVModalPresenter: Cannot hide %@. It isn't in the stack: %@", buf, 0x16u);

      goto LABEL_3;
    }
  }

LABEL_4:
}

- (void)_configureModalController:(id)controller withFromController:(id)fromController andConfiguration:(id)configuration
{
  v54 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  fromControllerCopy = fromController;
  configurationCopy = configuration;
  [controllerCopy setModalPresentationStyle:{objc_msgSend(configurationCopy, "presentationStyle")}];
  presentationController = [controllerCopy presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentationController _setShouldDismissWhenTappedOutside:1];
  }

  [controllerCopy setNavigationBarHidden:objc_msgSend(configurationCopy animated:{"navigationBarHidden"), 0}];
  if ([configurationCopy configurationType] == 3)
  {
    childViewControllers = [fromControllerCopy childViewControllers];
    lastObject = [childViewControllers lastObject];

    navigationItem = [lastObject navigationItem];
    barButtonID = [configurationCopy barButtonID];

    v47 = navigationItem;
    if (barButtonID)
    {
      selfCopy = self;
      array = [MEMORY[0x277CBEB18] array];
      leftBarButtonItems = [navigationItem leftBarButtonItems];
      v18 = [leftBarButtonItems count];

      if (v18)
      {
        leftBarButtonItems2 = [navigationItem leftBarButtonItems];
        [array addObjectsFromArray:leftBarButtonItems2];
      }

      v45 = lastObject;
      rightBarButtonItems = [navigationItem rightBarButtonItems];
      v21 = [rightBarButtonItems count];

      if (v21)
      {
        rightBarButtonItems2 = [navigationItem rightBarButtonItems];
        [array addObjectsFromArray:rightBarButtonItems2];
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = array;
      v23 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v42 = presentationController;
        v43 = fromControllerCopy;
        v44 = controllerCopy;
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
            customView = [v27 customView];
            tv_associatedIKViewElement = [customView tv_associatedIKViewElement];
            attributes = [tv_associatedIKViewElement attributes];
            v31 = [attributes objectForKey:@"barButtonID"];

            barButtonID2 = [configurationCopy barButtonID];
            v33 = [v31 isEqualToString:barButtonID2];

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
        fromControllerCopy = v43;
        controllerCopy = v44;
        presentationController = v42;
      }

      else
      {
        v34 = 0;
      }

      lastObject = v45;
      self = selfCopy;
    }

    else
    {
      v34 = 0;
    }

    popoverPresentationController = [controllerCopy popoverPresentationController];
    v38 = popoverPresentationController;
    if (v34)
    {
      [popoverPresentationController setBarButtonItem:v34];
    }

    sourceView = [configurationCopy sourceView];

    if (sourceView)
    {
      sourceView2 = [configurationCopy sourceView];
      [v38 setSourceView:sourceView2];

      [configurationCopy sourceRect];
      [v38 setSourceRect:?];
    }

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v38 setBackgroundColor:whiteColor];

    [v38 setDelegate:self];
    [configurationCopy popoverSize];
    [controllerCopy setPreferredContentSize:?];
  }

  else
  {
    if ([configurationCopy configurationType] == 1)
    {
      [configurationCopy formSheetSize];
    }

    else
    {
      v35 = *MEMORY[0x277CBF3A8];
      v36 = *(MEMORY[0x277CBF3A8] + 8);
    }

    [controllerCopy setPreferredContentSize:{v35, v36}];
  }
}

- (void)_dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  modalRootViewController = [(_TVModalPresenter *)self modalRootViewController];
  self->_dismissing = 1;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49___TVModalPresenter__dismissAnimated_completion___block_invoke;
  v15[3] = &unk_279D6FB28;
  objc_copyWeak(&v18, &location);
  v8 = completionCopy;
  v17 = v8;
  v9 = modalRootViewController;
  v16 = v9;
  v10 = MEMORY[0x26D6AFBB0](v15);
  presentingViewController = [v9 presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [v9 presentingViewController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49___TVModalPresenter__dismissAnimated_completion___block_invoke_2;
    v13[3] = &unk_279D6E6F8;
    v14 = v10;
    [presentingViewController2 dismissViewControllerAnimated:animatedCopy completion:v13];
  }

  else
  {
    v10[2](v10);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_willRotateNotification:(id)notification
{
  modalRootViewController = [(_TVModalPresenter *)self modalRootViewController];
  presentingViewController = [modalRootViewController presentingViewController];
  if (presentingViewController)
  {
    v5 = presentingViewController;
    modalPresentationStyle = [modalRootViewController modalPresentationStyle];

    if (modalPresentationStyle == 7)
    {
      [(_TVModalPresenter *)self hideAllAnimated:0 withCompletion:0];
    }
  }
}

- (void)_forceOrientationBackToSupportedOrientation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (([mEMORY[0x277D75128] statusBarOrientation] - 3) <= 1)
  {
    delegate = [mEMORY[0x277D75128] delegate];
    window = [delegate window];
    rootViewController = [window rootViewController];
    v5 = [rootViewController supportedInterfaceOrientations] & 0x18;

    if (!v5)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      [currentDevice setOrientation:1];
    }
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  modalRootViewController = [(_TVModalPresenter *)self modalRootViewController];
  [modalRootViewController reset];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVModalPresenterDismissedNotification" object:0];
}

@end