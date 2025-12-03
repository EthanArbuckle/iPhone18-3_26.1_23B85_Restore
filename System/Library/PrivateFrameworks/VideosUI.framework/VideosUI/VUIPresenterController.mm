@interface VUIPresenterController
+ (BOOL)_setZoomPreferredTransitionForViewController:(id)controller sourceView:(id)view;
+ (id)sharedInstance;
+ (void)dismissViewController:(id)controller completion:(id)completion;
+ (void)popOrDismissViewController:(id)controller completion:(id)completion;
+ (void)popViewController:(id)controller completion:(id)completion;
+ (void)presentViewController:(id)controller fromViewController:(id)viewController WithConfiguration:(id)configuration completion:(id)completion;
+ (void)pushViewController:(id)controller fromViewController:(id)viewController withZoomTransition:(BOOL)transition sourceView:(id)view presentationSourceID:(id)d isAnimated:(BOOL)animated completion:(id)completion;
- (VUIPresenterController)init;
- (void)_controllerDidDisplay:(id)display;
@end

@implementation VUIPresenterController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23 != -1)
  {
    +[VUIPresenterController sharedInstance];
  }

  v3 = sharedInstance___presenter;

  return v3;
}

void __40__VUIPresenterController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPresenterController);
  v1 = sharedInstance___presenter;
  sharedInstance___presenter = v0;
}

- (VUIPresenterController)init
{
  v6.receiver = self;
  v6.super_class = VUIPresenterController;
  v2 = [(VUIPresenterController *)&v6 init];
  if (v2)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    presentingSourceViewMapTable = v2->_presentingSourceViewMapTable;
    v2->_presentingSourceViewMapTable = weakToWeakObjectsMapTable;
  }

  return v2;
}

+ (void)pushViewController:(id)controller fromViewController:(id)viewController withZoomTransition:(BOOL)transition sourceView:(id)view presentationSourceID:(id)d isAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  transitionCopy = transition;
  selfCopy = self;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewCopy = view;
  dCopy = d;
  completionCopy = completion;
  v17 = +[VUIApplicationRouter topMostVisibleViewController];
  v18 = +[VUIInterfaceFactory sharedInstance];
  documentCreator = [v18 documentCreator];
  v20 = [documentCreator isDocumentViewController:v17 equalToViewController:controllerCopy];

  if (v20)
  {
    v21 = VUIDefaultLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_INFO, "VUIPresenterController:pushViewController trying to push or zoom the same viewmodel view controller as the existing one on top.", buf, 2u);
    }

    v22 = dCopy;
    v23 = completionCopy;
    goto LABEL_40;
  }

  if (!viewControllerCopy)
  {
    v25 = +[VUIApplicationRouter topPresentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = +[VUIApplicationRouter currentNavigationController];
    }

    viewControllerCopy = v26;
    presentedViewController = [v26 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentedViewController2 = [viewControllerCopy presentedViewController];

      viewControllerCopy = presentedViewController2;
    }

    v30 = +[VUIPlaybackManager sharedInstance];
    isShowingExtras = [v30 isShowingExtras];

    if (isShowingExtras)
    {
      v32 = +[VUIPlaybackManager sharedInstance];
      extrasNavigationController = [v32 extrasNavigationController];

      viewControllerCopy = extrasNavigationController;
    }

    if (transitionCopy)
    {
      goto LABEL_7;
    }

LABEL_22:
    v22 = dCopy;
    goto LABEL_38;
  }

  if (!transitionCopy)
  {
    goto LABEL_22;
  }

LABEL_7:
  v22 = dCopy;
  if (dCopy)
  {
    if (!viewCopy)
    {
      if (viewControllerCopy)
      {
        viewCopy = [viewControllerCopy topViewController];

        if (viewCopy)
        {
          topViewController = [viewControllerCopy topViewController];
          if (topViewController && (objc_opt_respondsToSelector() & 1) != 0)
          {
            viewCopy = [topViewController findPresentationSourceViewWithId:dCopy];
          }

          else
          {
            viewCopy = 0;
          }
        }
      }
    }
  }

  if (dCopy && !viewCopy)
  {
    topViewController2 = [viewControllerCopy topViewController];
    viewCopy = [topViewController2 vui_findPresentationSource:dCopy];
  }

  if ([viewCopy conformsToProtocol:{&unk_1F5F38C98, selfCopy}])
  {
    zoomSourceView = [viewCopy zoomSourceView];
    v36 = zoomSourceView;
    if (zoomSourceView)
    {
      v37 = zoomSourceView;

      viewCopy = v37;
    }
  }

  v38 = +[VUIPresenterController sharedInstance];
  presentingSourceViewMapTable = [v38 presentingSourceViewMapTable];

  v40 = presentingSourceViewMapTable;
  objc_sync_enter(v40);
  v41 = [v40 objectForKey:viewControllerCopy];
  if (v41 != viewCopy)
  {
    v42 = objc_opt_class();
    v43 = viewCopy;
    LODWORD(v42) = [v42 _setZoomPreferredTransitionForViewController:controllerCopy sourceView:v43];

    if (v42)
    {
      if (!dCopy)
      {
        layer = [v43 layer];
        [layer cornerRadius];

        _os_feature_enabled_impl();
      }

      [v40 setObject:v43 forKey:viewControllerCopy];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v46 = +[VUIPresenterController sharedInstance];
      [defaultCenter addObserver:v46 selector:sel__controllerDidDisplay_ name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:viewControllerCopy];
    }
  }

  objc_sync_exit(v40);

LABEL_38:
  [viewControllerCopy pushViewController:controllerCopy animated:{animatedCopy, selfCopy}];
  v23 = completionCopy;
  if (completionCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __137__VUIPresenterController_pushViewController_fromViewController_withZoomTransition_sourceView_presentationSourceID_isAnimated_completion___block_invoke;
    block[3] = &unk_1E872D7E0;
    v51 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v21 = v51;
LABEL_40:
  }
}

- (void)_controllerDidDisplay:(id)display
{
  object = [display object];
  if (object)
  {
    v8 = object;
    v5 = +[VUIPresenterController sharedInstance];
    presentingSourceViewMapTable = [v5 presentingSourceViewMapTable];
    [presentingSourceViewMapTable removeObjectForKey:v8];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:v8];

    object = v8;
  }
}

+ (void)presentViewController:(id)controller fromViewController:(id)viewController WithConfiguration:(id)configuration completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  configurationCopy = configuration;
  completionCopy = completion;
  if (!viewControllerCopy)
  {
    viewControllerCopy = +[VUIApplicationRouter topPresentedViewController];
  }

  if ([viewControllerCopy vuiIsBeingDismissed])
  {
    vuiPresentingViewController = [viewControllerCopy vuiPresentingViewController];

    viewControllerCopy = vuiPresentingViewController;
  }

  isAnimated = [configurationCopy isAnimated];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isModalOverModalAllowed = [configurationCopy isModalOverModalAllowed];
  }

  else
  {
    isModalOverModalAllowed = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configuration = [viewControllerCopy configuration];
    type = [configuration type];
    v17 = (type != [configurationCopy type]) | isModalOverModalAllowed;

    if ((v17 & 1) == 0)
    {
      v41 = objc_opt_class();
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __96__VUIPresenterController_presentViewController_fromViewController_WithConfiguration_completion___block_invoke;
      v76[3] = &unk_1E872D7E0;
      v77 = completionCopy;
      [v41 pushViewController:controllerCopy fromViewController:viewControllerCopy withZoomTransition:0 sourceView:0 presentationSourceID:0 isAnimated:1 completion:v76];
      v19 = v77;
      goto LABEL_56;
    }
  }

  v18 = MEMORY[0x1E695F060];
  if ([configurationCopy shouldWrapModalInNavigationController])
  {
    v19 = [(VUIAppNavigationController *)[VUINavigationController alloc] initWithRootViewController:controllerCopy];
    [(VUINavigationController *)v19 setConfiguration:configurationCopy];
  }

  else
  {
    v19 = controllerCopy;
  }

  v21 = *v18;
  v20 = v18[1];
  if ([configurationCopy type] == 2)
  {
    v22 = v19;
    v23 = 0;
LABEL_17:
    [(VUINavigationController *)v22 setModalPresentationStyle:v23];
LABEL_18:
    v24 = v20;
    v25 = v21;
    goto LABEL_19;
  }

  if ([configurationCopy type] == 3)
  {
    v22 = v19;
    v23 = 8;
    goto LABEL_17;
  }

  if ([configurationCopy type] == 4)
  {
    [(VUINavigationController *)v19 setModalPresentationStyle:2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    v42 = configurationCopy;
    presentationController = [(VUINavigationController *)v19 presentationController];
    if ([v42 isTapDismissable])
    {
      [presentationController _setShouldDismissWhenTappedOutside:1];
    }

    v44 = isAnimated;
    if ([v42 prefersGrabberVisible])
    {
      [presentationController setPrefersGrabberVisible:1];
    }

    detents = [v42 detents];
    v46 = [detents count];

    if (v46)
    {
      detents2 = [v42 detents];
      [presentationController setDetents:detents2];
    }

    [v42 preferredSize];
    isAnimated = v44;
    if (v49 != v21 || (v24 = v20, v25 = v21, v48 != v20))
    {
      [v42 preferredSize];
      v25 = v50;
      v24 = v51;
    }
  }

  else
  {
    if ([configurationCopy type] == 9)
    {
      if ([MEMORY[0x1E69DF6F0] isPhone])
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      [(VUINavigationController *)v19 setModalPresentationStyle:v52];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        presentationController2 = [(VUINavigationController *)v19 presentationController];
        [presentationController2 _setShouldDismissWhenTappedOutside:0];
        if ([MEMORY[0x1E69DF6F0] isPad])
        {
          [presentationController2 _setWantsFullScreen:1];
        }

        [presentationController2 _setAllowsInteractiveDismissWhenFullScreen:1];
      }

      goto LABEL_18;
    }

    if ([configurationCopy type] != 5)
    {
      goto LABEL_54;
    }

    v54 = configurationCopy;
    sourceView = [v54 sourceView];
    [v54 sourceRect];
    if (CGRectIsEmpty(v78))
    {
      [sourceView bounds];
    }

    else
    {
      [v54 sourceRect];
    }

    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v59;
    popOverArrowDirection = [v54 popOverArrowDirection];
    [v54 preferredSize];
    if (v65 == v21 && v64 == v20)
    {
      v25 = 340.0;
      v24 = 168.0;
    }

    else
    {
      [v54 preferredSize];
      v25 = v66;
      v24 = v67;
    }

    v68 = isAnimated;
    if ([v54 isPresentationAdjustedToSizeClass])
    {
      v69 = objc_alloc_init(MEMORY[0x1E69DC650]);
      [controllerCopy setVuiPreferredContentSize:{v25, v24}];
      [(VUINavigationController *)v69 setContentViewController:v19];
      [(VUINavigationController *)v69 setPreferredStyle:0];

      v19 = v69;
    }

    [(VUINavigationController *)v19 setModalPresentationStyle:7];
    popoverPresentationController = [(VUINavigationController *)v19 popoverPresentationController];
    [popoverPresentationController setSourceRect:{v60, v61, v62, v63}];
    [popoverPresentationController setSourceView:sourceView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [popoverPresentationController setDelegate:v19];
    }

    [popoverPresentationController setPermittedArrowDirections:popOverArrowDirection];
    [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];

    isAnimated = v68;
  }

LABEL_19:
  if (v25 != v21 || v24 != v20)
  {
    [(VUINavigationController *)v19 setVuiPreferredContentSize:v25, v24];
  }

  v26 = +[VUIPlaybackManager sharedInstance];
  isShowingExtras = [v26 isShowingExtras];

  if (isShowingExtras)
  {
    v28 = +[VUIPlaybackManager sharedInstance];
    [v28 extrasNavigationController];
    v71 = viewControllerCopy;
    v29 = configurationCopy;
    v30 = v19;
    v31 = completionCopy;
    v32 = controllerCopy;
    v34 = v33 = isAnimated;

    topViewController = [v34 topViewController];
    presentedViewController = [topViewController presentedViewController];
    v36PresentedViewController = [presentedViewController presentedViewController];

    v38 = v36PresentedViewController == 0;
    isAnimated = v33;
    controllerCopy = v32;
    completionCopy = v31;
    v19 = v30;
    configurationCopy = v29;
    viewControllerCopy = v71;
  }

  else
  {
    v38 = 1;
  }

  vuiPresentingViewController2 = [viewControllerCopy vuiPresentingViewController];
  v40 = vuiPresentingViewController2 != 0;

  if (v40 & ~isShowingExtras)
  {
    if ((isModalOverModalAllowed & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_29:
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __96__VUIPresenterController_presentViewController_fromViewController_WithConfiguration_completion___block_invoke_2;
    v74[3] = &unk_1E872D7E0;
    v75 = completionCopy;
    [viewControllerCopy vui_presentViewController:v19 animated:isAnimated completion:v74];

    goto LABEL_56;
  }

  if ((v38 | isModalOverModalAllowed))
  {
    goto LABEL_29;
  }

LABEL_54:
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_56:
}

uint64_t __96__VUIPresenterController_presentViewController_fromViewController_WithConfiguration_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __96__VUIPresenterController_presentViewController_fromViewController_WithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

+ (void)dismissViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy && ([controllerCopy vuiPresentingViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__VUIPresenterController_dismissViewController_completion___block_invoke;
    v8[3] = &unk_1E872D7E0;
    v9 = completionCopy;
    [controllerCopy vui_dismissViewControllerAnimated:1 completion:v8];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __59__VUIPresenterController_dismissViewController_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)popViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  vuiNavigationController = [controllerCopy vuiNavigationController];
  if (vuiNavigationController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (vuiNavigationController = controllerCopy) != 0)
  {
    v8 = vuiNavigationController;
    v9 = [vuiNavigationController popViewControllerAnimated:1];
    if (completionCopy)
    {
      transitionCoordinator = [v8 transitionCoordinator];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__VUIPresenterController_popViewController_completion___block_invoke;
      v11[3] = &unk_1E8733950;
      v12 = completionCopy;
      [transitionCoordinator animateAlongsideTransition:0 completion:v11];
    }
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    v8 = 0;
  }
}

+ (void)popOrDismissViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  vuiNavigationController = [controllerCopy vuiNavigationController];

  if (vuiNavigationController)
  {
    vuiNavigationController2 = [controllerCopy vuiNavigationController];
    v9 = [vuiNavigationController2 popToViewController:controllerCopy animated:1];

    vuiPresentedViewController = [controllerCopy vuiPresentedViewController];

    if (vuiPresentedViewController)
    {
      vuiPresentedViewController2 = [controllerCopy vuiPresentedViewController];
      [vuiPresentedViewController2 vui_dismissViewControllerAnimated:1 completion:0];
    }

    if (completionCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke;
      block[3] = &unk_1E872D7E0;
      v24 = completionCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v12 = v24;
LABEL_9:
    }
  }

  else
  {
    if (controllerCopy)
    {
      vuiPresentingViewController = [controllerCopy vuiPresentingViewController];

      if (vuiPresentingViewController)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke_2;
        v21[3] = &unk_1E872D7E0;
        v22 = completionCopy;
        [controllerCopy vui_dismissViewControllerAnimated:1 completion:v21];
        v12 = v22;
        goto LABEL_9;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = controllerCopy;
      v15 = [v14 popViewControllerAnimated:1];
      if (+[VUITVExtension isRunningInTVAppExtension])
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"TVAppExtensionDidDismissNotification" object:v14];
      }

      if (completionCopy)
      {
        transitionCoordinator = [v14 transitionCoordinator];

        if (transitionCoordinator)
        {
          transitionCoordinator2 = [v14 transitionCoordinator];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke_3;
          v19[3] = &unk_1E8733950;
          v20 = completionCopy;
          [transitionCoordinator2 animateAlongsideTransition:0 completion:v19];
        }

        else
        {
          completionCopy[2](completionCopy);
        }
      }
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)_setZoomPreferredTransitionForViewController:(id)controller sourceView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v7 = viewCopy;
  if (!viewCopy)
  {
LABEL_4:
    LOBYTE(window) = 0;
    goto LABEL_6;
  }

  window = [viewCopy window];

  if (window)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__VUIPresenterController__setZoomPreferredTransitionForViewController_sourceView___block_invoke;
      aBlock[3] = &unk_1E8733978;
      v12 = v7;
      window = _Block_copy(aBlock);
      v9 = [MEMORY[0x1E69DD800] zoomWithSourceViewProvider:window];
      [controllerCopy _setPreferredTransition:v9];

      LOBYTE(window) = 1;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return window;
}

@end