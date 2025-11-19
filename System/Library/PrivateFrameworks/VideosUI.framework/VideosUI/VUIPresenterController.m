@interface VUIPresenterController
+ (BOOL)_setZoomPreferredTransitionForViewController:(id)a3 sourceView:(id)a4;
+ (id)sharedInstance;
+ (void)dismissViewController:(id)a3 completion:(id)a4;
+ (void)popOrDismissViewController:(id)a3 completion:(id)a4;
+ (void)popViewController:(id)a3 completion:(id)a4;
+ (void)presentViewController:(id)a3 fromViewController:(id)a4 WithConfiguration:(id)a5 completion:(id)a6;
+ (void)pushViewController:(id)a3 fromViewController:(id)a4 withZoomTransition:(BOOL)a5 sourceView:(id)a6 presentationSourceID:(id)a7 isAnimated:(BOOL)a8 completion:(id)a9;
- (VUIPresenterController)init;
- (void)_controllerDidDisplay:(id)a3;
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
    v3 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    presentingSourceViewMapTable = v2->_presentingSourceViewMapTable;
    v2->_presentingSourceViewMapTable = v3;
  }

  return v2;
}

+ (void)pushViewController:(id)a3 fromViewController:(id)a4 withZoomTransition:(BOOL)a5 sourceView:(id)a6 presentationSourceID:(id)a7 isAnimated:(BOOL)a8 completion:(id)a9
{
  v48 = a8;
  v11 = a5;
  v47 = a1;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v49 = a9;
  v17 = +[VUIApplicationRouter topMostVisibleViewController];
  v18 = +[VUIInterfaceFactory sharedInstance];
  v19 = [v18 documentCreator];
  v20 = [v19 isDocumentViewController:v17 equalToViewController:v13];

  if (v20)
  {
    v21 = VUIDefaultLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_INFO, "VUIPresenterController:pushViewController trying to push or zoom the same viewmodel view controller as the existing one on top.", buf, 2u);
    }

    v22 = v16;
    v23 = v49;
    goto LABEL_40;
  }

  if (!v14)
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

    v14 = v26;
    v27 = [v26 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v29 = [v14 presentedViewController];

      v14 = v29;
    }

    v30 = +[VUIPlaybackManager sharedInstance];
    v31 = [v30 isShowingExtras];

    if (v31)
    {
      v32 = +[VUIPlaybackManager sharedInstance];
      v33 = [v32 extrasNavigationController];

      v14 = v33;
    }

    if (v11)
    {
      goto LABEL_7;
    }

LABEL_22:
    v22 = v16;
    goto LABEL_38;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_7:
  v22 = v16;
  if (v16)
  {
    if (!v15)
    {
      if (v14)
      {
        v15 = [v14 topViewController];

        if (v15)
        {
          v24 = [v14 topViewController];
          if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v15 = [v24 findPresentationSourceViewWithId:v16];
          }

          else
          {
            v15 = 0;
          }
        }
      }
    }
  }

  if (v16 && !v15)
  {
    v34 = [v14 topViewController];
    v15 = [v34 vui_findPresentationSource:v16];
  }

  if ([v15 conformsToProtocol:{&unk_1F5F38C98, v47}])
  {
    v35 = [v15 zoomSourceView];
    v36 = v35;
    if (v35)
    {
      v37 = v35;

      v15 = v37;
    }
  }

  v38 = +[VUIPresenterController sharedInstance];
  v39 = [v38 presentingSourceViewMapTable];

  v40 = v39;
  objc_sync_enter(v40);
  v41 = [v40 objectForKey:v14];
  if (v41 != v15)
  {
    v42 = objc_opt_class();
    v43 = v15;
    LODWORD(v42) = [v42 _setZoomPreferredTransitionForViewController:v13 sourceView:v43];

    if (v42)
    {
      if (!v16)
      {
        v44 = [v43 layer];
        [v44 cornerRadius];

        _os_feature_enabled_impl();
      }

      [v40 setObject:v43 forKey:v14];
      v45 = [MEMORY[0x1E696AD88] defaultCenter];
      v46 = +[VUIPresenterController sharedInstance];
      [v45 addObserver:v46 selector:sel__controllerDidDisplay_ name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:v14];
    }
  }

  objc_sync_exit(v40);

LABEL_38:
  [v14 pushViewController:v13 animated:{v48, v47}];
  v23 = v49;
  if (v49)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __137__VUIPresenterController_pushViewController_fromViewController_withZoomTransition_sourceView_presentationSourceID_isAnimated_completion___block_invoke;
    block[3] = &unk_1E872D7E0;
    v51 = v49;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v21 = v51;
LABEL_40:
  }
}

- (void)_controllerDidDisplay:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v8 = v4;
    v5 = +[VUIPresenterController sharedInstance];
    v6 = [v5 presentingSourceViewMapTable];
    [v6 removeObjectForKey:v8];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:v8];

    v4 = v8;
  }
}

+ (void)presentViewController:(id)a3 fromViewController:(id)a4 WithConfiguration:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v10 = +[VUIApplicationRouter topPresentedViewController];
  }

  if ([v10 vuiIsBeingDismissed])
  {
    v13 = [v10 vuiPresentingViewController];

    v10 = v13;
  }

  v14 = [v11 isAnimated];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v73 = [v11 isModalOverModalAllowed];
  }

  else
  {
    v73 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v10 configuration];
    v16 = [v15 type];
    v17 = (v16 != [v11 type]) | v73;

    if ((v17 & 1) == 0)
    {
      v41 = objc_opt_class();
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __96__VUIPresenterController_presentViewController_fromViewController_WithConfiguration_completion___block_invoke;
      v76[3] = &unk_1E872D7E0;
      v77 = v12;
      [v41 pushViewController:v9 fromViewController:v10 withZoomTransition:0 sourceView:0 presentationSourceID:0 isAnimated:1 completion:v76];
      v19 = v77;
      goto LABEL_56;
    }
  }

  v18 = MEMORY[0x1E695F060];
  if ([v11 shouldWrapModalInNavigationController])
  {
    v19 = [(VUIAppNavigationController *)[VUINavigationController alloc] initWithRootViewController:v9];
    [(VUINavigationController *)v19 setConfiguration:v11];
  }

  else
  {
    v19 = v9;
  }

  v21 = *v18;
  v20 = v18[1];
  if ([v11 type] == 2)
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

  if ([v11 type] == 3)
  {
    v22 = v19;
    v23 = 8;
    goto LABEL_17;
  }

  if ([v11 type] == 4)
  {
    [(VUINavigationController *)v19 setModalPresentationStyle:2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    v42 = v11;
    v43 = [(VUINavigationController *)v19 presentationController];
    if ([v42 isTapDismissable])
    {
      [v43 _setShouldDismissWhenTappedOutside:1];
    }

    v44 = v14;
    if ([v42 prefersGrabberVisible])
    {
      [v43 setPrefersGrabberVisible:1];
    }

    v45 = [v42 detents];
    v46 = [v45 count];

    if (v46)
    {
      v47 = [v42 detents];
      [v43 setDetents:v47];
    }

    [v42 preferredSize];
    v14 = v44;
    if (v49 != v21 || (v24 = v20, v25 = v21, v48 != v20))
    {
      [v42 preferredSize];
      v25 = v50;
      v24 = v51;
    }
  }

  else
  {
    if ([v11 type] == 9)
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
        v53 = [(VUINavigationController *)v19 presentationController];
        [v53 _setShouldDismissWhenTappedOutside:0];
        if ([MEMORY[0x1E69DF6F0] isPad])
        {
          [v53 _setWantsFullScreen:1];
        }

        [v53 _setAllowsInteractiveDismissWhenFullScreen:1];
      }

      goto LABEL_18;
    }

    if ([v11 type] != 5)
    {
      goto LABEL_54;
    }

    v54 = v11;
    v55 = [v54 sourceView];
    [v54 sourceRect];
    if (CGRectIsEmpty(v78))
    {
      [v55 bounds];
    }

    else
    {
      [v54 sourceRect];
    }

    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v59;
    v72 = [v54 popOverArrowDirection];
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

    v68 = v14;
    if ([v54 isPresentationAdjustedToSizeClass])
    {
      v69 = objc_alloc_init(MEMORY[0x1E69DC650]);
      [v9 setVuiPreferredContentSize:{v25, v24}];
      [(VUINavigationController *)v69 setContentViewController:v19];
      [(VUINavigationController *)v69 setPreferredStyle:0];

      v19 = v69;
    }

    [(VUINavigationController *)v19 setModalPresentationStyle:7];
    v70 = [(VUINavigationController *)v19 popoverPresentationController];
    [v70 setSourceRect:{v60, v61, v62, v63}];
    [v70 setSourceView:v55];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v70 setDelegate:v19];
    }

    [v70 setPermittedArrowDirections:v72];
    [v70 _setCentersPopoverIfSourceViewNotSet:1];

    v14 = v68;
  }

LABEL_19:
  if (v25 != v21 || v24 != v20)
  {
    [(VUINavigationController *)v19 setVuiPreferredContentSize:v25, v24];
  }

  v26 = +[VUIPlaybackManager sharedInstance];
  v27 = [v26 isShowingExtras];

  if (v27)
  {
    v28 = +[VUIPlaybackManager sharedInstance];
    [v28 extrasNavigationController];
    v71 = v10;
    v29 = v11;
    v30 = v19;
    v31 = v12;
    v32 = v9;
    v34 = v33 = v14;

    v35 = [v34 topViewController];
    v36 = [v35 presentedViewController];
    v37 = [v36 presentedViewController];

    v38 = v37 == 0;
    v14 = v33;
    v9 = v32;
    v12 = v31;
    v19 = v30;
    v11 = v29;
    v10 = v71;
  }

  else
  {
    v38 = 1;
  }

  v39 = [v10 vuiPresentingViewController];
  v40 = v39 != 0;

  if (v40 & ~v27)
  {
    if ((v73 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_29:
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __96__VUIPresenterController_presentViewController_fromViewController_WithConfiguration_completion___block_invoke_2;
    v74[3] = &unk_1E872D7E0;
    v75 = v12;
    [v10 vui_presentViewController:v19 animated:v14 completion:v74];

    goto LABEL_56;
  }

  if ((v38 | v73))
  {
    goto LABEL_29;
  }

LABEL_54:
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
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

+ (void)dismissViewController:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 vuiPresentingViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__VUIPresenterController_dismissViewController_completion___block_invoke;
    v8[3] = &unk_1E872D7E0;
    v9 = v6;
    [v5 vui_dismissViewControllerAnimated:1 completion:v8];
  }

  else if (v6)
  {
    v6[2](v6);
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

+ (void)popViewController:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 vuiNavigationController];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v7 = v5) != 0)
  {
    v8 = v7;
    v9 = [v7 popViewControllerAnimated:1];
    if (v6)
    {
      v10 = [v8 transitionCoordinator];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__VUIPresenterController_popViewController_completion___block_invoke;
      v11[3] = &unk_1E8733950;
      v12 = v6;
      [v10 animateAlongsideTransition:0 completion:v11];
    }
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
    }

    v8 = 0;
  }
}

+ (void)popOrDismissViewController:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 vuiNavigationController];

  if (v7)
  {
    v8 = [v5 vuiNavigationController];
    v9 = [v8 popToViewController:v5 animated:1];

    v10 = [v5 vuiPresentedViewController];

    if (v10)
    {
      v11 = [v5 vuiPresentedViewController];
      [v11 vui_dismissViewControllerAnimated:1 completion:0];
    }

    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke;
      block[3] = &unk_1E872D7E0;
      v24 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v12 = v24;
LABEL_9:
    }
  }

  else
  {
    if (v5)
    {
      v13 = [v5 vuiPresentingViewController];

      if (v13)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke_2;
        v21[3] = &unk_1E872D7E0;
        v22 = v6;
        [v5 vui_dismissViewControllerAnimated:1 completion:v21];
        v12 = v22;
        goto LABEL_9;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v5;
      v15 = [v14 popViewControllerAnimated:1];
      if (+[VUITVExtension isRunningInTVAppExtension])
      {
        v16 = [MEMORY[0x1E696AD88] defaultCenter];
        [v16 postNotificationName:@"TVAppExtensionDidDismissNotification" object:v14];
      }

      if (v6)
      {
        v17 = [v14 transitionCoordinator];

        if (v17)
        {
          v18 = [v14 transitionCoordinator];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __64__VUIPresenterController_popOrDismissViewController_completion___block_invoke_3;
          v19[3] = &unk_1E8733950;
          v20 = v6;
          [v18 animateAlongsideTransition:0 completion:v19];
        }

        else
        {
          v6[2](v6);
        }
      }
    }

    else if (v6)
    {
      v6[2](v6);
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

+ (BOOL)_setZoomPreferredTransitionForViewController:(id)a3 sourceView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
LABEL_4:
    LOBYTE(v8) = 0;
    goto LABEL_6;
  }

  v8 = [v6 window];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__VUIPresenterController__setZoomPreferredTransitionForViewController_sourceView___block_invoke;
      aBlock[3] = &unk_1E8733978;
      v12 = v7;
      v8 = _Block_copy(aBlock);
      v9 = [MEMORY[0x1E69DD800] zoomWithSourceViewProvider:v8];
      [v5 _setPreferredTransition:v9];

      LOBYTE(v8) = 1;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v8;
}

@end