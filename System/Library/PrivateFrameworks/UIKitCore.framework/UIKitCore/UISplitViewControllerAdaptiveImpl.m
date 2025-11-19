@interface UISplitViewControllerAdaptiveImpl
@end

@implementation UISplitViewControllerAdaptiveImpl

uint64_t __81___UISplitViewControllerAdaptiveImpl_preferredScreenEdgesDeferringSystemGestures__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 999 || [*(a1 + 32) columnModeForSplitViewControllerColumn:a2] != 2)
  {
    return 0;
  }

  v4 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
  v5 = [(_UISplitViewControllerAdaptiveColumn *)v4 viewController];
  v6 = [v5 _effectiveScreenEdgesDeferringSystemGesturesViewController];

  if (v6)
  {
    v7 = [v6 preferredScreenEdgesDeferringSystemGestures];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __68___UISplitViewControllerAdaptiveImpl_prefersHomeIndicatorAutoHidden__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v8 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v8 viewController];
    v7 = [v6 _effectiveHomeIndicatorAutoHiddenViewController];

    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = [v7 prefersHomeIndicatorAutoHidden];
      *a3 = *(*(*(a1 + 48) + 8) + 24);
    }
  }
}

uint64_t __81___UISplitViewControllerAdaptiveImpl_preferredScreenEdgesDeferringSystemGestures__block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 32) + 8) + 24) |= result & 0xFFFFFFFFFFFFFFF5;
  return result;
}

void __68___UISplitViewControllerAdaptiveImpl_preferredLeadingStatusBarStyle__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    [*(a1 + 32) columnFrameForSplitViewControllerColumn:a2];
    if (v6 <= 0.0)
    {
      v10 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
      v7 = [(_UISplitViewControllerAdaptiveColumn *)v10 viewController];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *a3 = 1;
    }
  }
}

void __69___UISplitViewControllerAdaptiveImpl_preferredTrailingStatusBarStyle__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    [*(a1 + 32) columnFrameForSplitViewControllerColumn:a2];
    if (v6 <= 0.0)
    {
      v10 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
      v7 = [(_UISplitViewControllerAdaptiveColumn *)v10 viewController];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *a3 = 1;
    }
  }
}

void __53___UISplitViewControllerAdaptiveImpl_viewControllers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) viewControllerForColumn:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void __71___UISplitViewControllerAdaptiveImpl_prefersInterfaceOrientationLocked__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v8 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v8 viewController];
    v7 = [v6 _effectiveInterfaceOrientationLockViewController];

    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = [v7 prefersInterfaceOrientationLocked];
      *a3 = *(*(*(a1 + 48) + 8) + 24);
    }
  }
}

void __87___UISplitViewControllerAdaptiveImpl__updateForReselectionInContainingTabBarController__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v9 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v9 navigationController];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a3 = 1;
  }
}

void __74___UISplitViewControllerAdaptiveImpl__traitCollectionForChildEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  v4 = objc_opt_self();
  [v7 setNSIntegerValue:v3 forTrait:v4];

  [v7 _setNSIntegerValue:*(a1 + 48) forTraitToken:0x1EFE32590];
  v5 = v7;
  if ((*(a1 + 64) & 1) == 0)
  {
    if ([*(a1 + 32) primaryBackgroundStyle] == 1)
    {
      v6 = *(a1 + 56);
      if (!v6 || v6 == 1 && [*(a1 + 32) supplementaryColumnAdoptsPrimaryBackgroundStyle] && objc_msgSend(*(a1 + 32), "style") == 2)
      {
        [v7 _setNSIntegerValue:2 forTraitToken:0x1EFE32560];
      }
    }

    v5 = v7;
    if (*(a1 + 56) != 2)
    {
      [v7 setHorizontalSizeClass:1];
      v5 = v7;
    }
  }
}

void __103___UISplitViewControllerAdaptiveImpl__navigationControllerForTriggeringToolbarCustomizationWithSender___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v6 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v7 = [(_UISplitViewControllerAdaptiveColumn *)v6 topViewController];
    v8 = [v7 navigationController];

    if (v8)
    {
      if ([v8 _canPerformCustomizeBarActionWithSender:*(a1 + 48)])
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
        *a3 = 1;
      }
    }

    else
    {
      v9 = [(_UISplitViewControllerAdaptiveColumn *)v6 topViewController];
      v12 = 0;
      [v9 _wrapsSplitViewController:&v12];
      v10 = v12;

      if (v10)
      {
        v11 = [v10 _navigationControllerForTriggeringToolbarCustomizationWithSender:*(a1 + 48)];
        if (v11)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
          *a3 = 1;
        }
      }
    }
  }
}

void __64___UISplitViewControllerAdaptiveImpl_preferredFocusEnvironments__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) columnVisibilityForSplitViewControllerColumn:a2] == 2)
  {
    v10 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v4 = [(_UISplitViewControllerAdaptiveColumn *)v10 viewController];
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 48);
      v7 = [(_UISplitViewControllerAdaptiveColumn *)v10 viewController];
      LOBYTE(v6) = [v6 containsObject:v7];

      if ((v6 & 1) == 0)
      {
        v8 = *(a1 + 48);
        v9 = [(_UISplitViewControllerAdaptiveColumn *)v10 viewController];
        [v8 addObject:v9];
      }
    }
  }
}

void __64___UISplitViewControllerAdaptiveImpl_preferredTrafficLightStyle__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    [*(a1 + 32) columnFrameForSplitViewControllerColumn:a2];
    if (v6 <= 0.0)
    {
      v10 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
      v7 = [(_UISplitViewControllerAdaptiveColumn *)v10 viewController];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *a3 = 1;
    }
  }
}

void __58___UISplitViewControllerAdaptiveImpl_prefersPointerLocked__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v8 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v8 viewController];
    v7 = [v6 _effectivePointerLockViewController];

    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = [v7 prefersPointerLocked];
      *a3 = *(*(*(a1 + 48) + 8) + 24);
    }
  }
}

void __74___UISplitViewControllerAdaptiveImpl__effectiveActivityItemsConfiguration__block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v11 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v11 viewController];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 _effectiveActivityItemsConfiguration];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *a3 = *(*(*(a1 + 48) + 8) + 40) != 0;
    }
  }
}

void __74___UISplitViewControllerAdaptiveImpl__childViewControllerForSpokenContent__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v9 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a3 = 1;
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [a2 previousLayout];
      v14 = [v13 displayMode];
      v15 = [a2 newLayout];
      v16 = 136316162;
      v17 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v14;
      v24 = 2048;
      v25 = [v15 displayMode];
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s willChangeDisplayMode: svc = %p; transition = %p; previousDisplayMode = %ld; newDisplayMode = %ld", &v16, 0x34u);
    }
  }

  if (WeakRetained && (WeakRetained[312] & 2) != 0)
  {
    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v9 = [a2 newLayout];
    [v7 splitViewController:v6 willChangeToDisplayMode:{objc_msgSend(v9, "displayMode")}];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_231(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_2___s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [a2 previousLayout];
      v16 = [v15 displayMode];
      v17 = [a2 newLayout];
      v18 = 136316162;
      v19 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = a2;
      v24 = 2048;
      v25 = v16;
      v26 = 2048;
      v27 = [v17 displayMode];
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%s didChangeDisplayMode: svc = %p; transition = %p; previousDisplayMode = %ld; newDisplayMode = %ld", &v18, 0x34u);
    }
  }

  if (WeakRetained && (WeakRetained[312] & 4) != 0)
  {
    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v9 = [a2 previousLayout];
    v10 = [v9 displayMode];
    v11 = [a2 newLayout];
    [v7 _splitViewController:v6 didChangeFromDisplayMode:v10 toDisplayMode:{objc_msgSend(v11, "displayMode")}];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_232(uint64_t a1, void *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697E8);
  if (*CategoryCachedImpl)
  {
    v47 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a1 + 32);
      v49 = v47;
      v50 = [a2 previousLayout];
      v51 = [v50 isCollapsed];
      v52 = [a2 newLayout];
      *buf = 136316162;
      v91 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v92 = 2048;
      v93 = v48;
      v94 = 2048;
      v95 = a2;
      v96 = 1024;
      v97 = v51;
      v98 = 1024;
      v99 = [v52 isCollapsed];
      _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "%s willChangeIsCollapsed: svc = %p; transition = %p; previousIsCollapsed = %d; newIsCollapsed = %d", buf, 0x2Cu);
    }
  }

  v6 = [a2 newLayout];
  v7 = [v6 isCollapsed];

  if (v7)
  {
    if (WeakRetained)
    {
      v8 = [WeakRetained splitViewController];
      v9 = objc_loadWeakRetained(WeakRetained + 72);
      v10 = [a2 newLayout];
      v11 = [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _suspendAppearanceTransitionsInSplitViewController];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v73 objects:buf count:16];
      if (v12)
      {
        v13 = *v74;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v74 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [a2 addViewControllerWithSuspendedAppearanceTransitions:*(*(&v73 + 1) + 8 * i)];
          }

          v12 = [v11 countByEnumeratingWithState:&v73 objects:buf count:16];
        }

        while (v12);
      }

      v15 = [WeakRetained style];
      v16 = WeakRetained[39];
      if (v15)
      {
        WeakRetained[39] = (v16 | 0x1000000000);
        v17 = [v10 preferredSplitViewControllerColumnAtEdge:{objc_msgSend(v10, "primaryEdge")}];
        *v83 = v17;
        v18 = WeakRetained[39];
        if ((v18 & 0x200) != 0)
        {
          v39 = [v9 splitViewController:v8 topColumnForCollapsingToProposedTopColumn:v17];
          *v83 = v39;
        }

        else
        {
          if ((v18 & 0x400) != 0)
          {
            [v9 splitViewController:v8 willCollapseToProposedTopColumn:v83];
          }

          else if ((v18 & 0x800) != 0)
          {
            [v9 _splitViewController:v8 willCollapseToProposedTopColumn:v83];
          }

          v39 = *v83;
        }

        if (v39 == 4)
        {
          v53 = [MEMORY[0x1E696AAA8] currentHandler];
          [v53 handleFailureInMethod:sel__prepareForCollapseWithTransition_ object:WeakRetained file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3006 description:{@"Inspector column cannot be the top column. Split view controller: %@", v8}];
        }

        v44 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969828);
        if (*v44)
        {
          v57 = *(v44 + 8);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = v57;
            v59 = [WeakRetained style];
            *v77 = 136315906;
            *&v77[4] = "[_UISplitViewControllerAdaptiveImpl _prepareForCollapseWithTransition:]";
            *&v77[12] = 2048;
            *&v77[14] = v8;
            *&v77[22] = 2048;
            v78 = v59;
            *v79 = 2048;
            *&v79[2] = *v83;
            _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_ERROR, "%s svc = %p; style = %ld; topColumn = %ld", v77, 0x2Au);
          }
        }

        if (*v83 != 3 && [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _updatePreferredColumnsToShowSplitViewControllerColumn:v10 layout:?])
        {
          [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateLayout];
        }
      }

      else if ((v16 & 0x100000) != 0 && ([v9 primaryViewControllerForCollapsingSplitViewController:v8], (v30 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(WeakRetained, "viewControllerForColumn:", 0), (v30 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [v30 _setAllowNestedNavigationControllers:1];
        v31 = [WeakRetained viewControllerForColumn:2];
        v32 = v31;
        if (v31)
        {
          *v83 = v30;
          *&v83[8] = v31;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
        }

        else
        {
          *v83 = v30;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
        }
        v45 = ;
        [v8 setViewControllers:v45];

        v46 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969830);
        if (*v46)
        {
          v63 = *(v46 + 8);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = v63;
            v65 = [WeakRetained style];
            *v77 = 136316162;
            *&v77[4] = "[_UISplitViewControllerAdaptiveImpl _prepareForCollapseWithTransition:]";
            *&v77[12] = 2048;
            *&v77[14] = v8;
            *&v77[22] = 2048;
            v78 = v65;
            *v79 = 2112;
            *&v79[2] = v30;
            *&v79[10] = 2112;
            *&v79[12] = v32;
            _os_log_impl(&dword_188A29000, v64, OS_LOG_TYPE_ERROR, "%s svc = %p; style = %ld; primaryViewController = %@; secondaryViewController = %@", v77, 0x34u);
          }
        }

        if (v32)
        {
          *v77 = MEMORY[0x1E69E9820];
          *&v77[8] = 3221225472;
          *&v77[16] = __72___UISplitViewControllerAdaptiveImpl__prepareForCollapseWithTransition___block_invoke;
          v78 = &unk_1E7109190;
          *v79 = WeakRetained;
          *&v79[8] = v9;
          *&v79[16] = v8;
          v80 = v32;
          v81 = v30;
          v82 = v10;
          [UIView performWithoutAnimation:v77];
          [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateLayout];
        }
      }
    }
  }

  else if (WeakRetained)
  {
    v19 = [WeakRetained splitViewController];
    v20 = objc_loadWeakRetained(WeakRetained + 72);
    v21 = [a2 newLayout];
    [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _suspendAppearanceTransitionsInSplitViewController];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v22 = v74 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v73 objects:buf count:16];
    if (v23)
    {
      v24 = *v74;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v74 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [a2 addViewControllerWithSuspendedAppearanceTransitions:*(*(&v73 + 1) + 8 * j)];
        }

        v23 = [v22 countByEnumeratingWithState:&v73 objects:buf count:16];
      }

      while (v23);
    }

    v26 = [WeakRetained style];
    v27 = WeakRetained[39];
    if (v26)
    {
      WeakRetained[39] = (v27 | 0x1000000000);
      v28 = [v21 displayMode];
      *v83 = v28;
      v29 = WeakRetained[39];
      if ((v29 & 0x1000) != 0)
      {
        *v83 = [v20 splitViewController:v19 displayModeForExpandingToProposedDisplayMode:v28];
      }

      else if ((v29 & 0x2000) != 0)
      {
        [v20 splitViewController:v19 willExpandToProposedDisplayMode:v83];
      }

      v40 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969838);
      if (*v40)
      {
        v54 = *(v40 + 8);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = v54;
          v56 = [WeakRetained style];
          *v77 = 136316162;
          *&v77[4] = "[_UISplitViewControllerAdaptiveImpl _prepareForExpansionWithTransition:]";
          *&v77[12] = 2048;
          *&v77[14] = v19;
          *&v77[22] = 2048;
          v78 = v56;
          *v79 = 2048;
          *&v79[2] = v28;
          *&v79[10] = 2048;
          *&v79[12] = *v83;
          _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_ERROR, "%s svc = %p; style = %ld; proposedDisplayMode = %ld; preferredDisplayMode = %ld", v77, 0x34u);
        }
      }

      v41 = *v83;
      if (v28 != *v83)
      {
        v42 = WeakRetained[63];
        if (v42 != *v83)
        {
          v43 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969840);
          if (*v43)
          {
            v66 = *(v43 + 8);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *v77 = 136315906;
              *&v77[4] = "[_UISplitViewControllerAdaptiveImpl _prepareForExpansionWithTransition:]";
              *&v77[12] = 2048;
              *&v77[14] = v19;
              *&v77[22] = 2048;
              v78 = v42;
              *v79 = 2048;
              *&v79[2] = *v83;
              _os_log_impl(&dword_188A29000, v66, OS_LOG_TYPE_ERROR, "%s svc = %p; previouslyRequestedDisplayMode = %ld; preferredDisplayMode = %ld; updating previously requested display mode", v77, 0x2Au);
            }
          }

          v41 = *v83;
          WeakRetained[63] = *v83;
        }

        if ([(_UISplitViewControllerAdaptiveImpl *)WeakRetained _updatePreferredColumnsToPreferredDisplayMode:v41])
        {
          [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateLayout];
        }
      }
    }

    else if ((v27 & 0x200000) != 0 && ([v20 primaryViewControllerForExpandingSplitViewController:v19], (v33 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(WeakRetained, "viewControllerForColumn:", 0), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v33 _setAllowNestedNavigationControllers:0];
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__210;
      v71 = __Block_byref_object_dispose__210;
      v72 = 0;
      *v77 = MEMORY[0x1E69E9820];
      *&v77[8] = 3221225472;
      *&v77[16] = __73___UISplitViewControllerAdaptiveImpl__prepareForExpansionWithTransition___block_invoke;
      v78 = &unk_1E70F6B90;
      *v79 = WeakRetained;
      v81 = &v67;
      *&v79[8] = v20;
      v34 = v19;
      *&v79[16] = v34;
      v35 = v33;
      v80 = v35;
      [UIView performWithoutAnimation:v77];
      v36 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969848);
      if (*v36)
      {
        v60 = *(v36 + 8);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = [WeakRetained style];
          v62 = v68[5];
          *v83 = 136316162;
          *&v83[4] = "[_UISplitViewControllerAdaptiveImpl _prepareForExpansionWithTransition:]";
          *&v83[12] = 2048;
          *&v83[14] = v34;
          v84 = 2048;
          v85 = v61;
          v86 = 2112;
          v87 = v35;
          v88 = 2112;
          v89 = v62;
          _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_ERROR, "%s svc = %p; style = %ld; primaryViewController = %@; secondaryViewController = %@", v83, 0x34u);
        }
      }

      v37 = v68[5];
      if (v37)
      {
        *v83 = v35;
        *&v83[8] = v37;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
      }

      else
      {
        *v83 = v35;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
      }
      v38 = ;
      [v34 setViewControllers:v38];

      [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateLayout];
      _Block_object_dispose(&v67, 8);
    }
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_233(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_4___s_category);
  if (*CategoryCachedImpl)
  {
    v20 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [a2 previousLayout];
      v24 = [v23 isCollapsed];
      v25 = [a2 newLayout];
      *buf = 136316162;
      v31 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v32 = 2048;
      v33 = v21;
      v34 = 2048;
      v35 = a2;
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = [v25 isCollapsed];
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "%s didChangeIsCollapsed: svc = %p; transition = %p; previousIsCollapsed = %d; newIsCollapsed = %d", buf, 0x2Cu);
    }
  }

  v6 = [a2 newLayout];
  v7 = [v6 isCollapsed];

  if (v7)
  {
    if (WeakRetained)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = [a2 viewControllersWithSuspendedAppearanceTransitions];
      v9 = [v8 countByEnumeratingWithState:&v26 objects:buf count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _enableAppearanceTransitionsInViewController:?];
          }

          v10 = [v8 countByEnumeratingWithState:&v26 objects:buf count:16];
        }

        while (v10);
      }

      if ((WeakRetained[39] & 0x80) != 0)
      {
        v13 = objc_loadWeakRetained(WeakRetained + 72);
        v14 = [WeakRetained splitViewController];
        [v13 splitViewControllerDidCollapse:v14];
LABEL_23:
      }
    }
  }

  else if (WeakRetained)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [a2 viewControllersWithSuspendedAppearanceTransitions];
    v16 = [v15 countByEnumeratingWithState:&v26 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _enableAppearanceTransitionsInViewController:?];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:buf count:16];
      }

      while (v17);
    }

    if (*(WeakRetained + 313))
    {
      v13 = objc_loadWeakRetained(WeakRetained + 72);
      v14 = [WeakRetained splitViewController];
      [v13 splitViewControllerDidExpand:v14];
      goto LABEL_23;
    }
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_234(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_5___s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v13 = 136316418;
      v14 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s willChangeColumnMode: svc = %p; transition = %p; column = %ld; previousColumnMode = %ld; newColumnMode = %ld", &v13, 0x3Eu);
    }
  }

  if (*(a1 + 72))
  {
    v6 = *(a1 + 40);
    v7 = [a2 newLayout];
    [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _prepareViewControllerInColumn:v6 layout:v7];
  }

  [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateSplitViewControllerPreferences];
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_235(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_6___s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v16 = *(a1 + 72);
      v17 = 136316418;
      v18 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s didChangeColumnMode: svc = %p; transition = %p; column = %ld; previousColumnMode = %ld; newColumnMode = %ld", &v17, 0x3Eu);
    }
  }

  if (*(a1 + 72) != 2)
  {
    [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _dismantleContentViewInColumn:?];
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = v6[20];
    }

    v7 = v6;
    [v7 removeFromSuperview];

    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = v8[19];
    }

    v9 = v8;
    [v9 removeFromSuperview];
  }

  v10 = *(a1 + 40);
  v11 = [a2 newLayout];
  [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _finalizeViewControllerInColumn:v10 layout:v11];
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_236(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_7___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = 136315906;
      v10 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s willShowColumn: svc = %p; transition = %p; column = %ld", &v9, 0x2Au);
    }
  }

  if (WeakRetained && (WeakRetained[312] & 8) != 0 && ([a2 hasSuspendedDelegateUpdatesForSplitViewControllerColumn:*(a1 + 56)] & 1) == 0)
  {
    [*(a1 + 40) splitViewController:*(a1 + 32) willShowColumn:*(a1 + 56)];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_237(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_8___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = 136315906;
      v10 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s didShowColumn: svc = %p; transition = %p; column = %ld", &v9, 0x2Au);
    }
  }

  if (WeakRetained && (WeakRetained[312] & 0x20) != 0 && ([a2 hasSuspendedDelegateUpdatesForSplitViewControllerColumn:*(a1 + 56)] & 1) == 0)
  {
    [*(a1 + 40) splitViewController:*(a1 + 32) didShowColumn:*(a1 + 56)];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_238(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_9___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = 136315906;
      v10 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s willHideColumn: svc = %p; transition = %p; column = %ld", &v9, 0x2Au);
    }
  }

  if (WeakRetained && (WeakRetained[312] & 0x10) != 0 && ([a2 hasSuspendedDelegateUpdatesForSplitViewControllerColumn:*(a1 + 56)] & 1) == 0)
  {
    [*(a1 + 40) splitViewController:*(a1 + 32) willHideColumn:*(a1 + 56)];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_239(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_10___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = 136315906;
      v10 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s didHideColumn: svc = %p; transition = %p; column = %ld", &v9, 0x2Au);
    }
  }

  if (WeakRetained && (WeakRetained[312] & 0x40) != 0 && ([a2 hasSuspendedDelegateUpdatesForSplitViewControllerColumn:*(a1 + 56)] & 1) == 0)
  {
    [*(a1 + 40) splitViewController:*(a1 + 32) didHideColumn:*(a1 + 56)];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_240(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_11___s_category);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v7;
      v11 = [(_UISplitViewControllerAdaptiveColumn *)v8 viewController];
      v12 = *(a1 + 56);
      v13 = NSStringFromCGSize(*(a1 + 80));
      v14 = NSStringFromCGSize(*(a1 + 112));
      v15 = 136316674;
      v16 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = a2;
      v21 = 2112;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s viewWillTransitionToSize: svc = %p; transition = %p; viewController = %@; column = %ld; previousSize = %@; newSize = %@", &v15, 0x48u);
    }
  }

  v6 = [(_UISplitViewControllerAdaptiveColumn *)*(a1 + 40) viewController];
  [v6 viewWillTransitionToSize:a2 withTransitionCoordinator:{*(a1 + 112), *(a1 + 120)}];
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_241(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_12___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = a1;
      v10 = v6;
      v11 = [(_UISplitViewControllerAdaptiveColumn *)v7 viewController];
      v12 = *(v9 + 56);
      v13 = NSStringFromCGSize(*(v9 + 80));
      v14 = NSStringFromCGSize(*(v9 + 112));
      v15 = 136316674;
      v16 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = a2;
      v21 = 2112;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s viewDidTransitionToSize: svc = %p; transition = %p; viewController = %@; column = %ld; previousSize = %@; newSize = %@", &v15, 0x48u);
    }
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_242(uint64_t a1, void *a2)
{
  v3 = a1;
  v121 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_13___s_category);
  if (*CategoryCachedImpl)
  {
    v81 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = *(v3 + 32);
      *buf = 136315650;
      v116 = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]_block_invoke";
      v117 = 2048;
      v118 = v82;
      v119 = 2048;
      v120 = a2;
      _os_log_impl(&dword_188A29000, v81, OS_LOG_TYPE_ERROR, "%s animations svc = %p; transition = %p", buf, 0x20u);
    }
  }

  if (WeakRetained)
  {
    v84 = v3;
    if ([WeakRetained presentsWithGesture])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [WeakRetained _visibleToggleButtonRequiresPresentsWithGesture] ^ 1;
    }

    v7 = UIApp;
    if ((*(WeakRetained + 315) & 0x10) != 0)
    {
      if (UIApp)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v8 = [WeakRetained visualStyle];
      v9 = [v8 alwaysHideSidebarToggleButton];

      if (v7)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      v92 = v10;
      if (!v9)
      {
LABEL_16:
        if (_UIInternalPreferencesRevisionOnce != -1)
        {
          dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
        }

        v11 = _UIInternalPreferencesRevisionVar;
        v91 = WeakRetained;
        if (_UIInternalPreferencesRevisionVar < 1 || (v83 = _UIInternalPreference_SplitViewControllerSecondaryEdgeBarButtonItemEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_SplitViewControllerSecondaryEdgeBarButtonItemEnabled))
        {
          v90 = 0;
        }

        else
        {
          while (v11 >= v83)
          {
            _UIInternalPreferenceSync(v11, &_UIInternalPreference_SplitViewControllerSecondaryEdgeBarButtonItemEnabled, @"SplitViewControllerSecondaryEdgeBarButtonItemEnabled", _UIInternalPreferenceUpdateBool);
            v90 = 0;
            v83 = _UIInternalPreference_SplitViewControllerSecondaryEdgeBarButtonItemEnabled;
            WeakRetained = v91;
            if (v11 == _UIInternalPreference_SplitViewControllerSecondaryEdgeBarButtonItemEnabled)
            {
              goto LABEL_20;
            }
          }

          if (byte_1EA95E764)
          {
            WeakRetained = v91;
            v90 = ((*(v91 + 315) & 0x20) == 0) & v10;
          }

          else
          {
            v90 = 0;
            WeakRetained = v91;
          }
        }

LABEL_20:
        v12 = [WeakRetained showsSecondaryOnlyButton];
        v13 = [WeakRetained primaryEdgeAdditionalBarButtonItemGroups];
        v14 = v13;
        v15 = MEMORY[0x1E695E0F0];
        if (v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = MEMORY[0x1E695E0F0];
        }

        v86 = v16;

        v17 = [WeakRetained secondaryEdgeAdditionalBarButtonItemGroups];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        v85 = v19;

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        obj = [WeakRetained[40] objectEnumerator];
        v94 = [obj countByEnumeratingWithState:&v111 objects:buf count:16];
        if (!v94)
        {
          v100 = 0;
          goto LABEL_99;
        }

        v100 = 0;
        v88 = v12 & v10;
        v93 = *v112;
        v89 = a2;
LABEL_28:
        v20 = 0;
        while (1)
        {
          if (*v112 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v111 + 1) + 8 * v20);
          v22 = [a2 newLayout];
          v23 = v22;
          if (v21)
          {
            v24 = v21[18];
          }

          else
          {
            v24 = 0;
          }

          v25 = [v22 columnModeForSplitViewControllerColumn:v24];

          if (!v25)
          {
            goto LABEL_87;
          }

          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __70___UISplitViewControllerAdaptiveImpl__updateColumnBarsWithTransition___block_invoke;
          v107[3] = &unk_1E7125FA8;
          v108 = v88;
          v107[4] = WeakRetained;
          v107[5] = v21;
          v107[6] = a2;
          v109 = v92;
          v110 = v90;
          v26 = [a2 newLayout];
          v27 = v26;
          if (v21)
          {
            v28 = v21[18];
          }

          else
          {
            v28 = 0;
          }

          v29 = [v26 primaryEdgeButtonForSplitViewControllerColumn:v28];

          v30 = [a2 newLayout];
          v31 = v30;
          if (v21)
          {
            v32 = v21[18];
          }

          else
          {
            v32 = 0;
          }

          v33 = [v30 secondaryEdgeButtonForSplitViewControllerColumn:v32];

          v34 = [a2 previousLayout];
          v35 = v34;
          if (v21)
          {
            v36 = v21[18];
          }

          else
          {
            v36 = 0;
          }

          v37 = [v34 columnModeForSplitViewControllerColumn:v36];

          v38 = [a2 isAnimated];
          v106[0] = MEMORY[0x1E69E9820];
          if (v37 == 2)
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v106[1] = 3221225472;
          v106[2] = __70___UISplitViewControllerAdaptiveImpl__updateColumnBarsWithTransition___block_invoke_2;
          v106[3] = &unk_1E7125FD0;
          v106[4] = v21;
          v106[5] = v107;
          v106[6] = v29;
          v106[7] = v33;
          [UIView _conditionallyPerformWithoutAnimation:v39 ^ 1 layout:v106];
          v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
          v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
          v42 = v40;
          if ((v29 & 0x10) != 0 || (v42 = v41, (v33 & 0x10) != 0))
          {
            [v42 addObjectsFromArray:v86];
          }

          v43 = v40;
          v99 = v29;
          if ((v29 & 0x20) != 0 || (v43 = v41, (v33 & 0x20) != 0))
          {
            [v43 addObjectsFromArray:v85];
          }

          v44 = [(_UISplitViewControllerAdaptiveColumn *)v21 primaryEdgeBarButtonItemGroup];
          [v40 addObject:v44];

          v45 = [(_UISplitViewControllerAdaptiveColumn *)v21 secondaryEdgeBarButtonItemGroup];
          [v41 addObject:v45];

          v46 = [(_UISplitViewControllerAdaptiveColumn *)v21 topViewController];
          v47 = [v46 navigationController];
          v48 = [v47 navigationBar];

          v96 = v46;
          v49 = [v46 navigationController];
          v50 = [v49 _floatingBarContainerView];

          if (v21)
          {
            v51 = objc_loadWeakRetained(v21 + 12);

            if (v48 != v51)
            {
              [_UISplitViewControllerAdaptiveImpl _dismantleEffectiveNavigationBarInColumn:v21];
              objc_storeWeak(v21 + 12, v48);
            }

            v52 = objc_loadWeakRetained(v21 + 13);
          }

          else
          {
            v52 = 0;
          }

          v98 = v33;

          if (v50 != v52)
          {
            [_UISplitViewControllerAdaptiveImpl _dismantleEffectiveToolbarInColumn:v21];
            if (v21)
            {
              objc_storeWeak(v21 + 13, v50);
            }
          }

          v53 = [a2 newLayout];
          v54 = [v53 primaryEdge];

          if (v54)
          {
            v55 = v41;
            v56 = v40;
          }

          else
          {
            v55 = v40;
            v56 = v41;
          }

          [v48 _setStaticLeadingItemGroups:v55 trailingItemGroups:v56 animated:v39];
          v57 = [a2 newLayout];
          v58 = v57;
          v97 = v41;
          if (v21)
          {
            v59 = v21[18];
          }

          else
          {
            v59 = 0;
          }

          v60 = [v57 splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn:v59];
          v61 = [v58 splitViewControllerColumnDisplayedAfterSplitViewControllerColumn:v59];
          v62 = [v58 levelForSplitViewControllerColumn:v59];
          v63 = v62 + 1;
          v95 = v50;
          if (v60 == 999 || !_UISplitViewControllerAdaptiveColumnVisibilityIsVisible([v58 columnVisibilityForSplitViewControllerColumn:v60]))
          {
            v66 = 0;
          }

          else
          {
            v64 = [v58 levelForSplitViewControllerColumn:v60];
            if ([v58 primaryEdge])
            {
              v65 = 8;
            }

            else
            {
              v65 = 2;
            }

            if (v64 == v63)
            {
              v66 = 0;
              goto LABEL_70;
            }

            if (v64 == v62)
            {
              v66 = v65;
            }

            else
            {
              v66 = 0;
            }
          }

          v65 = 0;
LABEL_70:
          if (v61 != 999 && _UISplitViewControllerAdaptiveColumnVisibilityIsVisible([v58 columnVisibilityForSplitViewControllerColumn:v61]))
          {
            v67 = [v58 levelForSplitViewControllerColumn:v61];
            v68 = [v58 primaryEdge];
            v69 = 2;
            if (!v68)
            {
              v69 = 8;
            }

            if (v67 == v63)
            {
              v65 |= v69;
            }

            else
            {
              if (v67 != v62)
              {
                v69 = 0;
              }

              v66 |= v69;
            }
          }

          a2 = v89;
          if (v21)
          {
            v70 = objc_loadWeakRetained(v21 + 12);
          }

          else
          {
            v70 = 0;
          }

          [v70 _setEdgesRequiringContentMargin:v65];
          [v70 _setAdjacentBarEdges:v66];
          if (v21)
          {
            v21 = objc_loadWeakRetained(v21 + 13);
          }

          v100 |= v99 | v98;
          [v21 _setEdgesRequiringContentMargin:v65];
          [v21 _setAdjacentBarEdges:v66];

          WeakRetained = v91;
LABEL_87:
          if (v94 == ++v20)
          {
            v71 = [obj countByEnumeratingWithState:&v111 objects:buf count:16];
            v94 = v71;
            if (!v71)
            {
LABEL_99:

              v72 = [WeakRetained style] != 0;
              v73 = 0x4000000000;
              if ((v72 & v100) == 0)
              {
                v73 = 0;
              }

              v74 = 0x8000000000;
              if (!v72 || (v100 & 2) == 0)
              {
                v74 = 0;
              }

              v75 = v73 | v74;
              v76 = !v72 || (v100 & 8) == 0;
              v77 = 0x10000000000;
              if (v76)
              {
                v77 = 0;
              }

              WeakRetained[39] = (WeakRetained[39] & 0xFFFFFE3FFFFFFFFFLL | v75 | v77);

              v3 = v84;
              goto LABEL_107;
            }

            goto LABEL_28;
          }
        }
      }
    }

    v92 = 0;
    goto LABEL_16;
  }

LABEL_107:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_243;
  aBlock[3] = &unk_1E7125E40;
  aBlock[4] = a2;
  aBlock[5] = WeakRetained;
  v78 = _Block_copy(aBlock);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_2;
  v103[3] = &unk_1E70F37C0;
  v103[4] = a2;
  v104 = v78;
  v79 = v78;
  [UIView performWithoutAnimation:v103];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_4;
  v102[3] = &unk_1E7125E90;
  v102[4] = WeakRetained;
  v80 = [a2 newLayout];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_5;
  v101[3] = &unk_1E7125EE0;
  v101[4] = a2;
  v101[5] = WeakRetained;
  v101[6] = v102;
  [v80 enumerateDisplayOrder:v101];

  [(_UISplitViewControllerAdaptiveTransitionView *)*(v3 + 40) animateTransition:a2];
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_243(uint64_t a1, uint64_t a2, int a3)
{
  v6 = [*(a1 + 32) newLayout];
  v7 = [v6 columnModeForSplitViewControllerColumn:a2];

  v8 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
  v15 = v8;
  if (v8)
  {
    v9 = 160;
    if (a3)
    {
      v9 = 152;
    }

    v10 = *(v8 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v7 == 2 || ([v11 superview], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [*(a1 + 32) containerView];
    [v14 addSubview:v12];
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) newLayout];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_3;
  v3[3] = &unk_1E7125E68;
  v4 = *(a1 + 40);
  [v2 enumerateSubviewZOrder:v3];
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return;
  }

  if (a2)
  {
    [a3 columnFrameForSplitViewControllerColumn:*(a2 + 144)];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = *(a2 + 160);
  }

  else
  {
    [a3 columnFrameForSplitViewControllerColumn:0];
    v8 = v113;
    v10 = v114;
    v12 = v115;
    v14 = v116;
    v15 = 0;
  }

  v16 = *MEMORY[0x1E695EFF8];
  v17 = *(MEMORY[0x1E695EFF8] + 8);
  v18 = v15;
  [v18 setBounds:{v16, v17, v12, v14}];

  v129.origin.x = v8;
  v129.origin.y = v10;
  v129.size.width = v12;
  v129.size.height = v14;
  MidX = CGRectGetMidX(v129);
  v130.origin.x = v8;
  v130.origin.y = v10;
  v130.size.width = v12;
  v130.size.height = v14;
  MidY = CGRectGetMidY(v130);
  if (a2)
  {
    v21 = *(a2 + 160);
    [v21 setCenter:{MidX, MidY}];

    v22 = *(a2 + 144);
  }

  else
  {
    [0 setCenter:{MidX, MidY}];
    v22 = 0;
  }

  v23 = [a3 backgroundStyleForSplitViewControllerColumn:v22];
  v24 = [v3 visualStyle];
  v25 = [v24 backgroundForBackgroundStyle:v23];

  if (a2)
  {
    v26 = *(a2 + 160);
    [v26 setBackground:v25];

    v27 = [a3 maskedCornersForSplitViewControllerColumn:*(a2 + 144)];
    v28 = *(a2 + 160);
  }

  else
  {
    [0 setBackground:v25];
    v27 = [a3 maskedCornersForSplitViewControllerColumn:0];
    v28 = 0;
  }

  v29 = v28;
  [v29 setMaskedCorners:v27];

  v30 = [v3 visualStyle];
  v31 = v30;
  if (a2)
  {
    [v30 cornerRadiusForColumn:*(a2 + 144)];
    v33 = v32;

    v34 = *(a2 + 160);
  }

  else
  {
    [v30 cornerRadiusForColumn:0];
    v33 = v117;

    v34 = 0;
  }

  v35 = v34;
  [v35 setFallbackCornerRadius:v33];

  if (a2)
  {
    [a3 scrollPocketInsetsForSplitViewControllerColumn:*(a2 + 144)];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = *(a2 + 160);
  }

  else
  {
    [a3 scrollPocketInsetsForSplitViewControllerColumn:0];
    v37 = v118;
    v39 = v119;
    v41 = v120;
    v43 = v121;
    v44 = 0;
  }

  v45 = v44;
  [v45 setScrollPocketInsets:{v37, v39, v41, v43}];

  if (a2)
  {
    if ([a3 columnModeForSplitViewControllerColumn:*(a2 + 144)] != 2)
    {

      v53 = *(a1 + 32);
      if (!v53)
      {
        return;
      }

      goto LABEL_21;
    }

    [a3 dimmingLevelForSplitViewControllerColumn:*(a2 + 144)];
    v47 = v46;
    v48 = *(a2 + 160);
  }

  else
  {
    if ([a3 columnModeForSplitViewControllerColumn:0] != 2)
    {

      v53 = *(a1 + 32);
      if (!v53)
      {
        return;
      }

LABEL_72:
      [a3 separatorFrameForSplitViewControllerColumn:0];
      v55 = v123;
      v57 = v124;
      v59 = v125;
      v61 = v126;
      v63 = 0;
      v62 = 1;
      goto LABEL_22;
    }

    [a3 dimmingLevelForSplitViewControllerColumn:0];
    v47 = v122;
    v48 = 0;
  }

  v49 = v48;
  [v49 setDimmingLevel:v47];

  if (a2)
  {
    v50 = [a3 levelForSplitViewControllerColumn:*(a2 + 144)];
    v51 = *(a2 + 160);
  }

  else
  {
    v50 = [a3 levelForSplitViewControllerColumn:0];
    v51 = 0;
  }

  v52 = v51;
  [v52 setLevel:v50];

  v53 = *(a1 + 32);
  if (!v53)
  {
    return;
  }

  if (!a2)
  {
    goto LABEL_72;
  }

LABEL_21:
  [a3 separatorFrameForSplitViewControllerColumn:*(a2 + 144)];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = 0;
  v63 = *(a2 + 152);
LABEL_22:
  v64 = v63;
  [v64 setBounds:{v16, v17, v59, v61}];

  v131.origin.x = v55;
  v131.origin.y = v57;
  v131.size.width = v59;
  v131.size.height = v61;
  v65 = CGRectGetMidX(v131);
  v132.origin.x = v55;
  v132.origin.y = v57;
  v132.size.width = v59;
  v132.size.height = v61;
  v66 = CGRectGetMidY(v132);
  if (v62)
  {
    [0 setCenter:{v65, v66}];
    v68 = 0;
  }

  else
  {
    v67 = *(a2 + 152);
    [v67 setCenter:{v65, v66}];

    v68 = *(a2 + 144);
  }

  v69 = [(_UISplitViewControllerAdaptiveImpl *)v53 layout];
  v70 = [v53 columnForSplitViewControllerColumn:v68];
  [v69 columnFrameForSplitViewControllerColumn:v68];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  [v69 contentInsetsForSplitViewControllerColumn:v68];
  v80 = v79;
  v82 = v81;
  v133.origin.x = v72;
  v133.origin.y = v74;
  v133.size.width = v76;
  v133.size.height = v78;
  Width = CGRectGetWidth(v133);
  [v69 minimumWidthForSplitViewControllerColumn:v68];
  v85 = v84;
  [v69 maximumWidthForSplitViewControllerColumn:v68];
  v87 = v86;
  v88 = [v69 edgeForSplitViewControllerColumn:v68];
  v89 = [v53 primaryEdge];
  v90 = [v53 isRTL];

  v91 = Width - v80 - v82;
  v92 = -1.0;
  if (!v89)
  {
    v92 = 1.0;
  }

  if (v89 != v88)
  {
    v92 = -v92;
  }

  if (v90)
  {
    v92 = -v92;
  }

  v93 = 8;
  if (v92 < 0.0)
  {
    v94 = 8;
  }

  else
  {
    v94 = 2;
  }

  if (v92 < 0.0)
  {
    v93 = 2;
  }

  if (v91 <= v85)
  {
    v95 = 0;
  }

  else
  {
    v95 = v94;
  }

  if (v91 >= v87)
  {
    v96 = 0;
  }

  else
  {
    v96 = v93;
  }

  if (v62)
  {
    [0 setPermittedResizeDirections:v95 | v96];
    v98 = [a3 canResizeSplitViewControllerColumn:0];
    v99 = 0;
  }

  else
  {
    v97 = *(a2 + 152);
    [v97 setPermittedResizeDirections:v95 | v96];

    v98 = [a3 canResizeSplitViewControllerColumn:*(a2 + 144)];
    v99 = *(a2 + 152);
  }

  v100 = v99;
  [v100 setUserInteractionEnabled:v98];

  v101 = *(a1 + 32);
  if (v101)
  {
    v102 = [(_UISplitViewControllerAdaptiveColumn *)a2 viewController];
    v103 = [v102 view];
    if (a2)
    {
      v104 = *(a2 + 160);
      [v104 setContentView:v103];

      v105 = *(a2 + 160);
    }

    else
    {
      [0 setContentView:v103];

      v105 = 0;
    }

    v106 = v105;
    [v106 setInteractionDelegate:v101];

    if (*(a1 + 32))
    {
      v107 = a2 ? *(a2 + 160) : 0;
      v108 = v107;
      v109 = [v108 window];

      if (v109)
      {
        v127 = [(_UISplitViewControllerAdaptiveColumn *)a2 navigationController];
        if (!v127 || ([v127 _isTransitioning] & 1) == 0)
        {
          v110 = [(_UISplitViewControllerAdaptiveColumn *)a2 viewController];
          [v110 _updateContentOverlayInsetsForSelfAndChildren];

          if (+[UIView _isInAnimationBlock])
          {
            if (a2)
            {
              v111 = *(a2 + 160);
            }

            else
            {
              v111 = 0;
            }

            v112 = v111;
            [v112 layoutIfNeeded];
          }
        }
      }
    }
  }
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) previousLayout];
  v5 = [v4 columnModeForSplitViewControllerColumn:a2];

  v6 = [*(a1 + 32) newLayout];
  v7 = [v6 columnModeForSplitViewControllerColumn:a2];

  v8 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
  if ([*(a1 + 32) isAnimated] && !v5 && v7 == 2)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_6;
    v25[3] = &unk_1E7125EB8;
    v28 = *(a1 + 48);
    v9 = v8;
    v10 = *(a1 + 32);
    v26 = v9;
    v27 = v10;
    [UIView performWithoutAnimation:v25];
    v11 = v26;
  }

  else
  {
    if (![*(a1 + 32) isAnimated] || v5 != 1 || v7 != 2)
    {
      v16 = *(a1 + 48);
      v17 = [*(a1 + 32) newLayout];
      (*(v16 + 16))(v16, v8, v17);

      goto LABEL_11;
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_7;
    v21 = &unk_1E7125EB8;
    v24 = *(a1 + 48);
    v12 = v8;
    v13 = *(a1 + 32);
    v22 = v12;
    v23 = v13;
    [UIView performWithoutAnimation:&v18];
    v14 = *(a1 + 48);
    v15 = [*(a1 + 32) newLayout];
    (*(v14 + 16))(v14, v12, v15);

    v11 = v22;
  }

LABEL_11:
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) newLayout];
  (*(v2 + 16))(v2, v1, v3);
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) previousLayout];
  (*(v2 + 16))(v2, v1, v3);
}

void __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_8(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969850);
    if (*CategoryCachedImpl)
    {
      v22 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
        v24 = [WeakRetained splitViewController];
        *buf = 136315650;
        *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _completeTransition:]";
        *&buf[12] = 2048;
        *&buf[14] = v24;
        *&buf[22] = 2048;
        *&buf[24] = a2;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "%s svc = %p; transition = %p", buf, 0x20u);
      }
    }

    if ([a2 isCancelled])
    {
      [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateLayout];
    }

    v4 = [_UISplitViewControllerLayoutState alloc];
    v5 = [a2 newLayout];
    *buf = *(WeakRetained + 424);
    v6 = *(WeakRetained + 440);
    v7 = *(WeakRetained + 456);
    v8 = *(WeakRetained + 472);
    v30 = *(WeakRetained + 61);
    v28 = v7;
    v29 = v8;
    *&buf[16] = v6;
    v9 = [(_UISplitViewControllerLayoutState *)v4 initWithLayout:v5 preferredColumns:buf];

    v10 = *(WeakRetained + 52);
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
      v14 = v11;
    }

    else
    {
      if (v11 && v10)
      {
        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      objc_storeStrong(WeakRetained + 52, v9);
      if ((WeakRetained[316] & 4) == 0)
      {
LABEL_14:
        [(_UISplitViewControllerAdaptiveTransitionView *)*(WeakRetained + 78) completeTransition:a2];

        goto LABEL_15;
      }

      v10 = [WeakRetained splitViewController];
      v15 = [v10 _window];
      v14 = [v15 windowScene];

      if (v14)
      {
        v16 = [v14 _FBSScene];
        v17 = [v16 isPersistable];

        if (v17)
        {
          v18 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698C8);
          if (*v18)
          {
            v25 = *(v18 + 8);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _saveLayoutStateIfNeeded]";
              *&buf[12] = 2048;
              *&buf[14] = v10;
              _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "%s svc = %p", buf, 0x16u);
            }
          }

          v19 = [v14 session];
          v20 = [_UIHybridStateStore stateStoreForSceneSession:v19];

          v21 = [(_UISplitViewControllerLayoutState *)*(WeakRetained + 52) dictionary];
          [(_UIHybridStateStore *)v20 setObject:v21 forKey:@"com.apple.UIKit.UISplitViewController.Root"];
        }
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __56___UISplitViewControllerAdaptiveImpl__performTransition__block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v13 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v13 viewController];
    v7 = [v6 _isNavigationController];

    if (v7)
    {
      v8 = [(_UISplitViewControllerAdaptiveColumn *)v13 viewController];
      v9 = [v8 _transitionConductor];
      v10 = [v9 transitionCoordinator];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    *a3 = *(a1 + 48) != 0;
  }
}

void __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke(id *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke_2;
  v2[3] = &unk_1E70F6228;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  [UIViewController _performWithoutDeferringTransitions:v2];
}

void __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke_3;
  v3[3] = &unk_1E70F6228;
  v4 = v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v4 _executeSplitViewControllerActions:v3];
}

void __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke_259(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke_2_260;
  v1[3] = &unk_1E70F3590;
  v2 = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v1];
}

void __78___UISplitViewControllerAdaptiveImpl__dismantleViewControllerInColumn_layout___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __78___UISplitViewControllerAdaptiveImpl__dismantleViewControllerInColumn_layout___block_invoke_2;
  v1[3] = &unk_1E70F3590;
  v2 = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v1];
}

void __84___UISplitViewControllerAdaptiveImpl__prepareModelNavigationViewControllerInColumn___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __84___UISplitViewControllerAdaptiveImpl__prepareModelNavigationViewControllerInColumn___block_invoke_2;
  v2[3] = &unk_1E70F35B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [UIViewController _performWithoutDeferringTransitions:v2];
}

void __84___UISplitViewControllerAdaptiveImpl__prepareModelNavigationViewControllerInColumn___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84___UISplitViewControllerAdaptiveImpl__prepareModelNavigationViewControllerInColumn___block_invoke_3;
  v3[3] = &unk_1E70F35B8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _executeSplitViewControllerActions:v3];
}

void __86___UISplitViewControllerAdaptiveImpl__dismantleModelNavigationViewControllerInColumn___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __86___UISplitViewControllerAdaptiveImpl__dismantleModelNavigationViewControllerInColumn___block_invoke_2;
  v1[3] = &unk_1E70F3590;
  v2 = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v1];
}

void __86___UISplitViewControllerAdaptiveImpl__dismantleModelNavigationViewControllerInColumn___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86___UISplitViewControllerAdaptiveImpl__dismantleModelNavigationViewControllerInColumn___block_invoke_3;
  v2[3] = &unk_1E70F3590;
  v3 = v1;
  [v3 _executeSplitViewControllerActions:v2];
}

void __72___UISplitViewControllerAdaptiveImpl__prepareForCollapseWithTransition___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72___UISplitViewControllerAdaptiveImpl__prepareForCollapseWithTransition___block_invoke_2;
  v7[3] = &unk_1E7109190;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [UIViewController _performWithoutDeferringTransitions:v7];
}

void __72___UISplitViewControllerAdaptiveImpl__prepareForCollapseWithTransition___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 32) + 314) & 0x40) != 0)
  {
    v2 = [*(a1 + 40) splitViewController:*(a1 + 48) collapseSecondaryViewController:*(a1 + 56) ontoPrimaryViewController:*(a1 + 64)] ^ 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = [*(a1 + 72) preferredSplitViewControllerColumnAtEdge:{objc_msgSend(*(a1 + 72), "primaryEdge")}];
  if (v2 && v3 == 2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __72___UISplitViewControllerAdaptiveImpl__prepareForCollapseWithTransition___block_invoke_3;
    v6 = &unk_1E70F6228;
    v7 = *(a1 + 64);
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if ([*(a1 + 64) _isNavigationController])
    {
      [*(a1 + 64) _executeSplitViewControllerActions:v4];
    }

    else
    {
      v5(v4);
    }
  }
}

void __73___UISplitViewControllerAdaptiveImpl__prepareForExpansionWithTransition___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73___UISplitViewControllerAdaptiveImpl__prepareForExpansionWithTransition___block_invoke_2;
  v7[3] = &unk_1E70F6B90;
  v10 = *(a1 + 64);
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [UIViewController _performWithoutDeferringTransitions:v7];
}

void __73___UISplitViewControllerAdaptiveImpl__prepareForExpansionWithTransition___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 32) + 314) & 0x80) != 0)
  {
    v2 = [*(a1 + 40) splitViewController:*(a1 + 48) separateSecondaryViewControllerFromPrimaryViewController:*(a1 + 56)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 64);
  v6 = *(*(v5 + 8) + 40);
  if (v6)
  {
    v7 = [v6 parentViewController];
    v8 = *(a1 + 56);

    if (v7 != v8)
    {
      goto LABEL_10;
    }

    v5 = *(a1 + 64);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __73___UISplitViewControllerAdaptiveImpl__prepareForExpansionWithTransition___block_invoke_3;
  v14 = &unk_1E70FB728;
  v17 = v5;
  v15 = *(a1 + 56);
  v16 = *(a1 + 48);
  if ([*(a1 + 56) _isNavigationController])
  {
    [*(a1 + 56) _executeSplitViewControllerActions:v12];
  }

  else
  {
    v13(v12);
  }

LABEL_10:
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = [*(a1 + 32) viewControllerForColumn:2];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void __73___UISplitViewControllerAdaptiveImpl__prepareForExpansionWithTransition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) separateSecondaryViewControllerForSplitViewController:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61___UISplitViewControllerAdaptiveImpl__prepareSceneForLayout___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UISplitViewControllerColumnResizeTapGestureRecognizerName_block_invoke_14___s_category);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = v7;
      v25.width = v10;
      v25.height = v11;
      v13 = NSStringFromCGSize(v25);
      v14 = 136316162;
      v15 = "[_UISplitViewControllerAdaptiveImpl _prepareSceneForLayout:]_block_invoke";
      v16 = 2048;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s svc = %p; layout = %@; requestSize = %@; error = %@", &v14, 0x34u);
    }
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[39];
    if ((v6 & 0x80000000) != 0)
    {
      WeakRetained[39] = v6 & 0xFFFFFFFF7FFFFFFFLL;
      if ([(_UISplitViewControllerAdaptiveImpl *)WeakRetained _updatePreferredColumnsEnforcingColumnPreferences:?])
      {
        [(_UISplitViewControllerAdaptiveImpl *)WeakRetained _invalidateLayout];
      }
    }
  }
}

void __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3632 description:{@"Invalid parameter not satisfying: %@", @"targetViewController != nil"}];
  }

  if (([*(a1 + 40) _allowNestedNavigationControllers] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3633 description:{@"UISplitViewController internal inconsistency: navigation controller is not configured for pushing columns. Split view controller: %@", *(a1 + 48)}];
  }

  if ((*(*(a1 + 32) + 316) & 0x10) != 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke_2;
    v21[3] = &unk_1E7101EC8;
    v22 = *(a1 + 40);
    v27 = a3;
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v23 = v9;
    v24 = a2;
    v25 = *(a1 + 32);
    v26 = v10;
    [UIView performWithoutAnimation:v21];
  }

  else if (a3)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969888);
    if (*CategoryCachedImpl)
    {
      v15 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        v17 = *(a1 + 64);
        *buf = 136315906;
        v29 = "[_UISplitViewControllerAdaptiveImpl splitViewControllerLayout:didRequestToCollapseSplitViewControllerColumns:inSplitViewControllerColumn:]_block_invoke";
        v30 = 2048;
        v31 = v16;
        v32 = 2048;
        v33 = v17;
        v34 = 2112;
        v35 = a2;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; viewController = %@; pushing view controller", buf, 0x2Au);
      }
    }

    [*(a1 + 40) pushViewController:a2 animated:a4];
  }

  else
  {
    v11 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969890);
    if (*v11)
    {
      v18 = *(v11 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 48);
        v20 = *(a1 + 64);
        *buf = 136315906;
        v29 = "[_UISplitViewControllerAdaptiveImpl splitViewControllerLayout:didRequestToCollapseSplitViewControllerColumns:inSplitViewControllerColumn:]_block_invoke";
        v30 = 2048;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        v34 = 2112;
        v35 = a2;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; viewController = %@; popping view controller", buf, 0x2Au);
      }
    }

    v12 = [*(a1 + 40) popToViewController:a2 animated:a4];
  }
}

void __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke_3;
  v2[3] = &unk_1E7101EC8;
  v3 = *(a1 + 32);
  v7 = *(a1 + 72);
  v4 = *(a1 + 40);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  [UIViewController _performWithoutDeferringTransitions:v2];
}

void __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke_3(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke_4;
  v9[3] = &unk_1E7101EC8;
  v13 = *(a1 + 72);
  v2 = (a1 + 48);
  v3 = (a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = *(a1 + 64);
  *&v6 = v5;
  *(&v6 + 1) = *v2;
  v8 = v6;
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = *v3;
  v10 = v8;
  v11 = v7;
  [v4 _executeSplitViewControllerActions:v9];
}

void __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969878);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 64);
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v20 = 136315906;
        v21 = "[_UISplitViewControllerAdaptiveImpl splitViewControllerLayout:didRequestToCollapseSplitViewControllerColumns:inSplitViewControllerColumn:]_block_invoke_4";
        v22 = 2048;
        v23 = v14;
        v24 = 2048;
        v25 = v13;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; viewController = %@; collapsing view controller", &v20, 0x2Au);
      }
    }

    [*(a1 + 48) _collapseViewController:*(a1 + 40) forSplitViewController:*(a1 + 32)];
  }

  else
  {
    v3 = [*(a1 + 48) viewControllers];
    v4 = [v3 indexOfObject:*(a1 + 40)];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [*(a1 + 48) viewControllers];
      v6 = [v5 count] - 1;

      if (v4 < v6)
      {
        v7 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969880);
        if (*v7)
        {
          v16 = *(v7 + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 64);
            v18 = *(a1 + 32);
            v19 = *(a1 + 40);
            v20 = 136315906;
            v21 = "[_UISplitViewControllerAdaptiveImpl splitViewControllerLayout:didRequestToCollapseSplitViewControllerColumns:inSplitViewControllerColumn:]_block_invoke";
            v22 = 2048;
            v23 = v18;
            v24 = 2048;
            v25 = v17;
            v26 = 2112;
            v27 = v19;
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; viewController = %@; separating view controller", &v20, 0x2Au);
          }
        }

        v8 = *(a1 + 48);
        v9 = [v8 viewControllers];
        v10 = [v9 objectAtIndexedSubscript:v4 + 1];
        v11 = [v8 _separateViewControllersAfterAndIncludingViewController:v10 forSplitViewController:*(a1 + 32)];
      }
    }
  }

  [(_UISplitViewControllerAdaptiveImpl *)*(a1 + 56) _invalidateLayout];
}

void __70___UISplitViewControllerAdaptiveImpl__updateColumnBarsWithTransition___block_invoke(uint64_t a1, void *a2, char a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3 & 4) != 0 && (*(a1 + 56))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [*(a1 + 48) newLayout];
    if (v5)
    {
      if (!v4 || (v7 = *(v4 + 128)) == 0)
      {
        v7 = objc_alloc_init(UIBarButtonItem);
        [(UIBarButtonItem *)v7 setColumnToggleItemType:3];
        [(UIBarButtonItem *)v7 setTarget:v5];
        [(UIBarButtonItem *)v7 setIdentifier:@"com.apple.UISplitViewController.secondaryOnly"];
        [(_UISplitViewControllerAdaptiveColumn *)v4 setToggleSecondaryOnlyBarButtonItem:v7];
      }

      if ([v6 canShowSplitViewControllerColumn:objc_msgSend(v6 withSplitViewControllerColumn:{"splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn:", 2), 2}])
      {
        if ([v6 displayMode] == 1)
        {
          v8 = @"arrow.down.right.and.arrow.up.left";
        }

        else
        {
          v8 = @"arrow.up.left.and.arrow.down.right";
        }

        v9 = [UIImage systemImageNamed:v8];
        v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
        [(UIBarButtonItem *)v7 setImage:v10];

        v11 = &selRef__handleSecondaryOnlyBarButtonItem_;
      }

      else
      {
        if ([v6 primaryEdge])
        {
          v30 = @"sidebar.trailing";
        }

        else
        {
          v30 = @"sidebar.leading";
        }

        v9 = [UIImage systemImageNamed:v30];
        [(UIBarButtonItem *)v7 setImage:v9];
        v11 = &selRef__handlePrimaryEdgeBarButtonItem_;
      }

      [(UIBarButtonItem *)v7 setAction:*v11];
    }

    else
    {
      v7 = 0;
    }

    v35 = v7;
    v22 = MEMORY[0x1E695DEC8];
    v23 = &v35;
  }

  else if (a3 & 1) != 0 && (*(a1 + 57))
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v6 = [*(a1 + 48) newLayout];
    if (v13)
    {
      if (!v12 || (v7 = *(v12 + 112)) == 0)
      {
        v7 = objc_alloc_init(UIBarButtonItem);
        v14 = _UINSLocalizedStringWithDefaultValue(@"Sidebar", @"Sidebar");
        [(UIBarButtonItem *)v7 setTitle:v14];

        [(UIBarButtonItem *)v7 setAction:sel__handlePrimaryEdgeBarButtonItem_];
        [(UIBarButtonItem *)v7 setColumnToggleItemType:1];
        [(UIBarButtonItem *)v7 setTarget:v13];
        [(UIBarButtonItem *)v7 setIdentifier:@"com.apple.UISplitViewController.primaryEdge"];
        [(_UISplitViewControllerAdaptiveColumn *)v12 setTogglePrimaryEdgeBarButtonItem:v7];
      }

      if ([v6 primaryEdge])
      {
        v15 = @"sidebar.trailing";
      }

      else
      {
        v15 = @"sidebar.leading";
      }

      v16 = [UIImage systemImageNamed:v15];
      [(UIBarButtonItem *)v7 setImage:v16];

      v17 = [(_UISplitViewControllerAdaptiveImpl *)v13 _accessibilityLabelForTogglingSidebarWithLayout:v6];
      [v7 setAccessibilityLabel:v17];

      if ((*(v13 + 315) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v13 + 576));
        v19 = [v13 splitViewController];
        if (v12)
        {
          v20 = *(v12 + 144);
        }

        else
        {
          v20 = 0;
        }

        v21 = [WeakRetained _splitViewController:v19 displayModeButtonViewInColumn:v20];
        [(_UISplitViewControllerAdaptiveColumn *)v12 setTogglePrimaryEdgeButtonView:v21];
      }
    }

    else
    {
      v7 = 0;
    }

    v34 = v7;
    v22 = MEMORY[0x1E695DEC8];
    v23 = &v34;
  }

  else
  {
    if ((a3 & 2) == 0 || (*(a1 + 58) & 1) == 0)
    {
      [a2 setBarButtonItems:MEMORY[0x1E695E0F0]];
      goto LABEL_44;
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v6 = [*(a1 + 48) newLayout];
    if (v24)
    {
      if (!v25 || (v7 = *(v25 + 120)) == 0)
      {
        v7 = objc_alloc_init(UIBarButtonItem);
        v26 = _UINSLocalizedStringWithDefaultValue(@"Inspector", @"Inspector");
        [(UIBarButtonItem *)v7 setTitle:v26];

        [(UIBarButtonItem *)v7 setAction:sel__handleSecondaryEdgeBarButtonItem_];
        [(UIBarButtonItem *)v7 setColumnToggleItemType:2];
        [(UIBarButtonItem *)v7 setTarget:v24];
        [(UIBarButtonItem *)v7 setIdentifier:@"com.apple.UISplitViewController.secondaryEdge"];
        [(_UISplitViewControllerAdaptiveColumn *)v25 setToggleSecondaryEdgeBarButtonItem:v7];
      }

      if ([v6 primaryEdge])
      {
        v27 = @"sidebar.leading";
      }

      else
      {
        v27 = @"sidebar.trailing";
      }

      v28 = [UIImage systemImageNamed:v27];
      [(UIBarButtonItem *)v7 setImage:v28];

      v29 = [(_UISplitViewControllerAdaptiveImpl *)v24 _accessibilityLabelForTogglingInspectorWithLayout:v6];
      [v7 setAccessibilityLabel:v29];
    }

    else
    {
      v7 = 0;
    }

    v33 = v7;
    v22 = MEMORY[0x1E695DEC8];
    v23 = &v33;
  }

  v31 = [v22 arrayWithObjects:v23 count:{1, v33, v34, v35, v36}];
  [a2 setBarButtonItems:v31];

LABEL_44:
  v32 = [a2 barButtonItems];
  [a2 setHidden:{objc_msgSend(v32, "count") == 0}];
}

void __70___UISplitViewControllerAdaptiveImpl__updateColumnBarsWithTransition___block_invoke_2(uint64_t *a1)
{
  v2 = a1[5];
  v3 = [(_UISplitViewControllerAdaptiveColumn *)a1[4] primaryEdgeBarButtonItemGroup];
  (*(v2 + 16))(v2, v3, a1[6]);

  v4 = a1[5];
  v5 = [(_UISplitViewControllerAdaptiveColumn *)a1[4] secondaryEdgeBarButtonItemGroup];
  (*(v4 + 16))(v4, v5, a1[7]);
}

uint64_t __64___UISplitViewControllerAdaptiveImpl__isRootSplitViewController__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 _isSplitViewController])
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 32) == a2;
    *a3 = 1;
  }

  return 1;
}

void __88___UISplitViewControllerAdaptiveImpl__suspendAppearanceTransitionsInSplitViewController__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a2 _existingView];
  v5 = v4;
  if (v4)
  {
    if (([v4 isHidden] & 1) == 0)
    {
      v6 = [v5 window];

      if (v6)
      {
        if (([a2 appearanceTransitionsAreDisabled] & 1) == 0 && objc_msgSend(a2, "_appearState") != 1 && objc_msgSend(a2, "_appearState") != 3)
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_UIInternalPreference_SplitViewControllerSecondaryEdgeBarButtonItemEnabled_block_invoke_17___s_category);
          if (*CategoryCachedImpl)
          {
            v8 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = *(a1 + 32);
              v10 = 136315650;
              v11 = "[_UISplitViewControllerAdaptiveImpl _suspendAppearanceTransitionsInSplitViewController]_block_invoke";
              v12 = 2048;
              v13 = v9;
              v14 = 2112;
              v15 = a2;
              _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; suspending appearance transitions", &v10, 0x20u);
            }
          }

          [a2 setAppearanceTransitionsAreDisabled:1];
          [*(a1 + 40) addObject:a2];
        }
      }
    }
  }
}

void __79___UISplitViewControllerAdaptiveImpl__presentSplitViewControllerColumn_layout___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __79___UISplitViewControllerAdaptiveImpl__presentSplitViewControllerColumn_layout___block_invoke_2;
  v2[3] = &unk_1E70F35B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [UIViewController _performWithoutDeferringTransitions:v2];
}

void __79___UISplitViewControllerAdaptiveImpl__presentSplitViewControllerColumn_layout___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [(_UISplitViewControllerAdaptiveColumn *)*(a1 + 40) viewController];
  [v1 presentViewController:v2 animated:0 completion:0];
}

void __79___UISplitViewControllerAdaptiveImpl__dismissSplitViewControllerColumn_layout___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __79___UISplitViewControllerAdaptiveImpl__dismissSplitViewControllerColumn_layout___block_invoke_2;
  v1[3] = &unk_1E70F3590;
  v2 = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v1];
}

void __79___UISplitViewControllerAdaptiveImpl__dismissSplitViewControllerColumn_layout___block_invoke_2(uint64_t a1)
{
  v1 = [(_UISplitViewControllerAdaptiveColumn *)*(a1 + 32) viewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void __67___UISplitViewControllerAdaptiveImpl__designatedGlobalSearchColumn__block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v9 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = [(_UISplitViewControllerAdaptiveColumn *)v9 topViewController];
    v7 = [v6 navigationItem];
    v8 = [v7 searchBarPlacementAllowsExternalIntegration];

    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) = a2;
    }

    *a3 = *(*(*(a1 + 48) + 8) + 24) != 999;
  }
}

void __75___UISplitViewControllerAdaptiveImpl_updateForGlobalSearchControllerChange__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) columnModeForSplitViewControllerColumn:a2] == 2)
  {
    v4 = [*(a1 + 40) columnForSplitViewControllerColumn:a2];
    v6 = v4;
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 96));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained setNeedsLayout];
  }
}

uint64_t __93___UISplitViewControllerAdaptiveImpl_showViewControllerForGlobalSearchController_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

@end