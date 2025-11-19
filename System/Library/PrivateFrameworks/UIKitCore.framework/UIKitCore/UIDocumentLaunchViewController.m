@interface UIDocumentLaunchViewController
@end

@implementation UIDocumentLaunchViewController

void __93___UIDocumentLaunchViewController_browserPresentationControllerPresentationTransitionDidEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIDocumentLaunchViewController *)WeakRetained _dismissBrowserViewController];
}

void __90___UIDocumentLaunchViewController_browserPresentationControllerDismissalTransitionDidEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIDocumentLaunchViewController *)WeakRetained _presentBrowserViewController];
}

void __53___UIDocumentLaunchViewController_animateTransition___block_invoke(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v79 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_37;
  }

  v3 = WeakRetained[140];
  if (v3)
  {
    v71 = v3[6] & 4;
  }

  else
  {
    v71 = 0;
  }

  if (v3)
  {
    v3 = v3[9];
  }

  v4 = *(WeakRetained + 1112);
  v76 = *(v1 + 32);
  v5 = v3;
  v6 = [v79 parentViewController];
  v7 = v79[140];
  if (v7)
  {
    v7 = v7[13];
  }

  v8 = v7;
  v9 = v79[125];
  v69 = [v79 view];
  v10 = v79[136];
  v78 = v79[130];
  v72 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:4];
  v11 = [v8 window];
  v75 = v6;
  if (v11)
  {
    v12 = [v6 view];
    v13 = [v8 isDescendantOfView:v12];

    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = v4 & 2;

  if (_AXSReduceMotionEnabled())
  {
    v16 = 1;
  }

  else
  {
    v16 = _AXSReduceMotionReduceSlideTransitionsEnabled() != 0;
  }

  v17 = [v78 selectedDetentIdentifier];
  v70 = [v17 isEqualToString:@"com.apple.UIKit.full"];

  v67 = v5;
  v68 = v1;
  v65 = v9;
  v66 = v8;
  v64 = v10;
  if ((v14 | v16))
  {
    v18 = 0;
LABEL_16:
    v19 = 0;
LABEL_17:
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    v73 = v19;
    goto LABEL_24;
  }

  v43 = v8;
  v19 = v43;
  if (v15)
  {
    if (!v10)
    {
      v18 = 0;
      goto LABEL_17;
    }

    v18 = _UIDocumentUnavailablePortalViewForAnimationInfo(v10);
    [v72 addObject:v18];
    v44 = [v79 view];
    [v44 addSubview:v18];

    v45 = v19;
    if (!v19)
    {
      goto LABEL_61;
    }

LABEL_46:
    if (v18)
    {
      v74 = v45;
      v48 = [v75 view];

      if (v19 == v48)
      {
        v49 = [_UIDocumentUnavailablePortalContainerView alloc];
        v50 = [v75 view];
        v45 = [(_UIDocumentUnavailablePortalContainerView *)v49 initWithSourceView:v50];

        [v72 addObject:v45];
        if (v15 || !v71)
        {
          v52 = [v79 view];
          [v52 addSubview:v45];
        }

        else
        {
          v51 = v79[131];
          v52 = [v79[129] view];
          [v51 insertSubview:v45 belowSubview:v52];
        }

        v53 = [v75 view];

        if (v74 == v53)
        {
          v54 = v74;
        }

        else
        {
          v54 = v18;
        }

        if (v74 != v53)
        {
          v18 = v45;
          v45 = v74;
        }
      }

      else
      {
        v45 = v74;
      }
    }

    goto LABEL_61;
  }

  if (!v71 || (v70 & 1) != 0)
  {
    if (!v10)
    {
      v18 = v43;
      goto LABEL_16;
    }

    v46 = _UIDocumentUnavailablePortalViewForAnimationInfo(v10);
    [v72 addObject:v46];
    v47 = [v79 view];
    [v47 addSubview:v46];

    v45 = v46;
  }

  else
  {
    v45 = v9;
  }

  v18 = v19;
  if (v45)
  {
    goto LABEL_46;
  }

LABEL_61:
  v21 = 0;
  v73 = v45;
  if (v45 && v18)
  {
    v55 = [v75 view];

    if (v15)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    if (v19 == v55)
    {
      v22 = 0;
      v63 = 0;
      v21 = 1;
      v23 = 1;
    }

    else
    {
      v57 = [v75 view];
      v58 = [(UIView *)v57 _backing_clientLayer];
      v56 = v24;
      *&v59 = v56;
      [v58 setOpacity:v59];

      v60 = [v75 view];
      v61 = [v75 view];
      v62 = [(UIView *)v61 _backing_clientLayer];
      if (v60)
      {
        [(UIView *)v60 _backing_addPrivateSubview:v69 positioned:-3 relativeTo:v62];
      }

      v23 = 0;
      v21 = 1;
      v22 = 1;
      v63 = 1;
    }

    goto LABEL_27;
  }

LABEL_24:
  v22 = 0;
  v63 = 0;
  v23 = 0;
  if (v15)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

LABEL_27:
  v25 = v18;
  v26 = v76;
  v27 = [v76 viewForKey:@"UITransitionContextFromView"];
  v28 = [v76 viewForKey:@"UITransitionContextToView"];
  if (v15)
  {
    v29 = [v76 containerView];
    [v29 addSubview:v28];

    v26 = v76;
  }

  v30 = [v79 interruptibleAnimatorForTransition:v26];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke;
  v89[3] = &unk_1E7124E80;
  v94 = v15 >> 1;
  v95 = v23;
  v89[4] = v79;
  v93 = v24;
  v96 = v21;
  v97 = v71 >> 2;
  v98 = v70;
  v31 = v28;
  v90 = v31;
  v32 = v27;
  v91 = v32;
  v99 = v22;
  v33 = v75;
  v92 = v33;
  [v30 addAnimations:v89];
  if (v21)
  {
    v34 = objc_alloc_init(_UIMagicMorphAnimation);
    v35 = v73;
    v77 = v31;
    v36 = [[UITargetedPreview alloc] initWithView:v73];
    [(_UIMagicMorphAnimation *)v34 morphTo:v36 reparentWithoutAnimation:v63 alongsideAnimations:0 completion:0];

    v37 = [[UITargetedPreview alloc] initWithView:v18];
    v80 = MEMORY[0x1E69E9820];
    v81 = 3221225472;
    v82 = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_6;
    v83 = &unk_1E70FF800;
    v84 = v26;
    v38 = v72;
    v85 = v72;
    v88 = v22;
    v86 = v33;
    v39 = v69;
    v87 = v69;
    [(_UIMagicMorphAnimation *)v34 morphTo:v37 reparentWithoutAnimation:v63 alongsideAnimations:0 completion:&v80];

    v40 = v79[135];
    v79[135] = v34;
    v41 = v34;

    v31 = v77;
    v42 = v66;
  }

  else
  {
    v80 = MEMORY[0x1E69E9820];
    v81 = 3221225472;
    v82 = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_7;
    v83 = &unk_1E70F5DB8;
    v84 = v26;
    [v30 addCompletion:&v80];
    v42 = v66;
    v39 = v69;
    v38 = v72;
    v35 = v73;
  }

  v1 = v68;
LABEL_37:
  [*(v1 + 40) startAnimation];
}

void __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    if (*(a1 + 73))
    {
      goto LABEL_6;
    }

LABEL_5:
    [*(*(a1 + 32) + 992) setAlpha:*(a1 + 64)];
    goto LABEL_6;
  }

  if (!*(a1 + 73))
  {
    goto LABEL_5;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_2;
  v36[3] = &unk_1E70F32F0;
  v36[4] = *(a1 + 32);
  v36[5] = *(a1 + 64);
  [UIView performWithoutAnimation:v36];
LABEL_6:
  if (*(a1 + 74) == 1 && (*(a1 + 72) & 1) == 0 && *(a1 + 75) == 1)
  {
    [*(*(a1 + 32) + 1072) setAlpha:*(a1 + 64)];
    v2 = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = 1064;
LABEL_14:
    [*(v3 + v4) setAlpha:v2];
    goto LABEL_15;
  }

  if (*(a1 + 73) != 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = 1048;
    goto LABEL_14;
  }

  if (*(a1 + 72) == 1)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_3;
    v35[3] = &unk_1E70F32F0;
    v35[4] = *(a1 + 32);
    v35[5] = *(a1 + 64);
    [UIView performWithoutAnimation:v35];
  }

LABEL_15:
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_4;
  v32[3] = &unk_1E70F8A10;
  v32[4] = *(a1 + 32);
  v33 = *(a1 + 72);
  v34 = *(a1 + 74);
  [UIView performWithoutAnimation:v32];
  if (*(a1 + 72))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 74);
  }

  v6 = *(*(a1 + 32) + 1024);
  if (v6)
  {
    v7 = v5 & 1;
    if (v6[424] != v7)
    {
      v6[424] = v7;
      [(_UIDocumentUnavailablePageBackgroundAccessoryView *)v6 _layoutPageViews];
    }
  }

  if ((*(a1 + 76) & 1) == 0 && ((*(a1 + 75) & 1) != 0 || (*(a1 + 74) & 1) == 0))
  {
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 40) frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_5;
      v26[3] = &unk_1E70F3B20;
      v27 = *(a1 + 40);
      v28 = v9;
      v29 = v11;
      v30 = v13;
      v31 = v15;
      [UIView performWithoutAnimation:v26];
      [*(a1 + 40) setFrame:{v9, v11, v13, v15}];
    }

    else
    {
      [*(a1 + 48) frame];
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      v20 = CGRectGetHeight(v37);
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v39 = CGRectOffset(v38, 0.0, v20);
      [*(a1 + 48) setFrame:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];
    }
  }

  if (*(a1 + 72))
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [(_UIDocumentLaunchViewController *)*(a1 + 32) _updateParentNavigationBarVisibility:v21];
  if (*(a1 + 77) == 1)
  {
    v22 = 1.0 - *(a1 + 64);
    v23 = [*(a1 + 56) view];
    v24 = [(UIView *)v23 _backing_clientLayer];
    *&v25 = v22;
    [v24 setOpacity:v25];
  }
}

unsigned __int8 *__84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 41);
  }

  else
  {
    v1 = 1;
  }

  result = *(*(a1 + 32) + 1024);
  if (result)
  {
    v3 = v1 & 1;
    if (result[424] != v3)
    {
      result[424] = v3;
      return [(_UIDocumentUnavailablePageBackgroundAccessoryView *)result _layoutPageViews];
    }
  }

  return result;
}

uint64_t __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_5(uint64_t a1)
{
  Height = CGRectGetHeight(*(a1 + 40));
  v6 = CGRectOffset(*(a1 + 40), 0.0, Height);
  v3 = *(a1 + 32);

  return [v3 setFrame:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
}

void __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_6(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v14 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  if (*(a1 + 64) == 1)
  {
    v7 = [*(a1 + 48) view];
    v8 = [(UIView *)v7 _backing_clientLayer];
    LODWORD(v9) = 1.0;
    [v8 setOpacity:v9];

    v10 = [*(a1 + 48) view];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 48) view];
    v13 = [(UIView *)v12 _backing_clientLayer];
    if (v10)
    {
      [(UIView *)v10 _backing_addPrivateSubview:v11 positioned:-2 relativeTo:v13];
    }
  }
}

uint64_t __84___UIDocumentLaunchViewController__configureBrowserTransitionWithTransitionContext___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

void __79___UIDocumentLaunchViewController__prepareDocumentAnimationInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 136, a2);
  }

  (*(*(a1 + 32) + 16))();
}

void __64___UIDocumentLaunchViewController__presentBrowserViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  [*(*(a1 + 32) + 1048) setAlpha:0.0];
  [*(*(a1 + 32) + 1072) setAlpha:1.0];
  [*(*(a1 + 32) + 1064) setAlpha:1.0];
  isParentViewControllerDisappearedOr = [(_UIDocumentLaunchViewController *)*(a1 + 32) _isParentViewControllerDisappearedOrAppearing];
  v4 = *(*(a1 + 32) + 992);
  if (isParentViewControllerDisappearedOr)
  {
    [v4 setAlpha:1.0];
    v5 = *(a1 + 32);

    [(_UIDocumentLaunchViewController *)v5 _updateParentNavigationBarVisibility:?];
  }

  else
  {

    [v4 setAlpha:0.0];
  }
}

void __64___UIDocumentLaunchViewController__dismissBrowserViewController__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setAlpha:0.0];
  v2 = *(a1 + 32);

  [(_UIDocumentLaunchViewController *)v2 _updateParentNavigationBarVisibility:?];
}

id __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_2;
  v11[3] = &unk_1E7124ED0;
  v12 = *(a1 + 32);
  v13 = a2;
  v9 = [UIAction actionWithTitle:a3 image:a4 identifier:a5 handler:v11];

  return v9;
}

void __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentUnavailableBrowserViewController(*(a1 + 32));
  v3 = [v2 activeDocumentCreationIntent];

  if (v3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("UIDocument", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_19) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Ignoring document creation request as the import handler for a previous request has not been called. When implementing [UIDocumentBrowserViewControllerDelegate documentBrowser:didRequestDocumentCreationWithHandler:], be sure to call the import handler when either the document has been created or the request has been canceled. Browser view controller: %@", &v5, 0xCu);
    }
  }

  else
  {
    [v2 _initiateDocumentCreationWithIntent:*(a1 + 40)];
  }
}

id __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_31(uint64_t a1, void *a2)
{
  v4 = [a2 identifier];
  v5 = _UIDocumentCreationIntentForActionIdentifier(v4);

  if (v5)
  {
    if ([v5 isEqualToString:@"UIDocumentCreationIntentPasteboard"])
    {
      v6 = *(__UILogGetCategoryCachedImpl("UIDocument", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_2___s_category_2) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "UIDocumentCreationIntentPasteboard is only supported in the overflow menu of the secondary action.", v13, 2u);
      }

      v7 = 0;
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = [a2 title];
      v10 = [a2 image];
      v11 = [a2 identifier];
      v7 = (*(v8 + 16))(v8, v5, v9, v10, v11);
    }
  }

  else
  {
    v7 = a2;
  }

  return v7;
}

uint64_t __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_33(uint64_t a1, void *a2)
{
  if ((*(a1 + 40) & 1) == 0 && *(a1 + 41) != 1)
  {
    return 0;
  }

  v3 = [a2 identifier];
  v4 = _UIDocumentCreationIntentForActionIdentifier(v3);

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = v5;
  v7 = [v6 isEqualToString:v4];

  return v7;
}

id __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_2_35(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = (*(*(a1 + 40) + 16))();
    v4 = +[UIPasteboard generalPasteboard];
    v5 = [v4 itemProviders];

    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) registeredTypeIdentifiers];
          [v6 addObjectsFromArray:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v13 = [v6 allObjects];
    v14 = *(*(a1 + 32) + 1120);
    if (v14)
    {
      v14 = v14[4];
    }

    v15 = v14;
    v16 = [v15 bs_map:&__block_literal_global_40_1];
    v17 = _UIOneOfTypesConformsToAcceptableTypes(v13, v16);

    [v3 setAttributes:v17 ^ 1u];
    v24 = v3;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

id __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_4(uint64_t a1, void *a2)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = a2;
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 identifier];
    v8 = _UIDocumentCreationIntentForActionIdentifier(v7);

    if ([v8 isEqualToString:@"UIDocumentCreationIntentPasteboard"])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_5;
      v11[3] = &unk_1E7124FB8;
      v12 = *(a1 + 32);
      v9 = [UIDeferredMenuElement elementWithUncachedProvider:v11];
    }

    else
    {
      v9 = (*(*(a1 + 40) + 16))();
    }

    v6 = v9;
  }

  return v6;
}

void __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a1 + 32) + 16))();
  (*(a2 + 16))(a2, v3);
}

uint64_t __60___UIDocumentLaunchViewController__firstResponderDidChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFirstResponder];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 becomeFirstResponder];
  }

  return result;
}

void __54___UIDocumentLaunchViewController__layoutContentViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIDocumentLaunchViewController _layoutContentViews]_block_invoke"];
    [v24 handleFailureInFunction:v25 file:@"_UIDocumentLaunchViewController.m" lineNumber:884 description:{@"Invalid parameter not satisfying: %@", @"containerView != nil"}];

    if (!a2)
    {
      return;
    }
  }

  [a3 center];
  [a2 setCenter:?];
  [a3 bounds];
  [a2 setBounds:?];
  v6 = [a2 superview];

  if (v6 != a3)
  {
    [a3 addSubview:a2];
  }

  v7 = vdupq_n_s64([a2 edgesInsettingLayoutMarginsFromSafeArea]);
  v8 = vnegq_f64(0);
  v9 = vbslq_s8(vceqzq_s64(vandq_s8(v7, xmmword_18A64BFB0)), v8, vnegq_f64(vaddq_f64(*(a1 + 32), 0)));
  v10 = vsubq_f64(vsubq_f64(vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL), v9), vbslq_s8(vceqzq_s64(vandq_s8(v7, xmmword_18A64C6E0)), v8, vnegq_f64(vaddq_f64(*(a1 + 48), 0))));
  v11 = vmuld_lane_f64(0.5, v10, 1);
  v12 = vmovn_s64(vmvnq_s8(vcgezq_f64(v10)));
  if (v12.i8[4])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10.f64[1];
  }

  if (v12.i8[4])
  {
    v14 = v11;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = 0.5 * v10.f64[0];
  if (v12.i8[0])
  {
    v16 = 0.0;
  }

  else
  {
    v15 = 0.0;
    v16 = v10.f64[0];
  }

  v27.origin.x = v9.f64[1] + *(a1 + 64) + v14;
  x = v27.origin.x;
  v27.origin.y = v9.f64[0] + *(a1 + 72) + v15;
  y = v27.origin.y;
  v27.size.width = v13;
  v27.size.height = v16;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = v13;
  v28.size.height = v16;
  MinX = CGRectGetMinX(v28);
  v21 = *(a1 + 96);
  [a3 bounds];
  Width = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = v13;
  v30.size.height = v16;
  v23 = Width - CGRectGetMaxX(v30);

  [a2 setLayoutMargins:{MinY, MinX, v21, v23}];
}

@end