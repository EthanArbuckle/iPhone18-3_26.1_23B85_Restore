@interface UINavigationBarVisualProviderModernIOS
@end

@implementation UINavigationBarVisualProviderModernIOS

uint64_t __69___UINavigationBarVisualProviderModernIOS__updateTitleViewForLayout___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setInlineTitleViewAlpha:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 56);

  return [v3 setAlpha:v2];
}

void __67___UINavigationBarVisualProviderModernIOS_setAppearanceAPIVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  if (v4[232] == 1)
  {
    [v4 _ensureLayoutsConfiguredForEntry:v3];
    v3 = v15;
  }

  v5 = [v3 normalLayout];
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 304) = *(v7 + 144);
    if (*(*(a1 + 32) + 232) != 1)
    {
      goto LABEL_7;
    }

    v8 = *(v5 + 176);
    goto LABEL_6;
  }

  if (*(v7 + 232))
  {
    v8 = 0;
LABEL_6:
    v9 = v8;
    [v9 setLayout:0];
  }

LABEL_7:
  [(_UINavigationBarLayout *)v6 setStandardBackgroundViewLayout:?];
  [(UIBackgroundConfiguration *)v6 __setMaterial:?];
  v10 = [v15 searchLayout];
  v11 = v10;
  v12 = *(a1 + 32);
  if (v10)
  {
    *(v10 + 304) = *(v12 + 144);
    if (*(*(a1 + 32) + 232) != 1)
    {
      goto LABEL_11;
    }

    v13 = *(v10 + 176);
    goto LABEL_10;
  }

  if (*(v12 + 232))
  {
    v13 = 0;
LABEL_10:
    v14 = v13;
    [v14 setLayout:0];
  }

LABEL_11:
  [(_UINavigationBarLayout *)v11 setStandardBackgroundViewLayout:?];
  [(UIBackgroundConfiguration *)v11 __setMaterial:?];
}

void __72___UINavigationBarVisualProviderModernIOS_setForceScrollEdgeAppearance___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 item];
  v4 = [v2 useManualScrollEdgeAppearanceForItem:?];
  v5 = [v3 normalLayout];

  if (v5 && v5[111] != v4)
  {
    v5[111] = v4;
    [v5 _updateLayoutOutputs];
  }
}

void __54___UINavigationBarVisualProviderModernIOS__popToItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addObject:v6];
  v7 = *(a1 + 40);

  if (v7 == v6)
  {
    *a3 = 1;
  }
}

void __58___UINavigationBarVisualProviderModernIOS__backButtonMenu__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = a1;
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [WeakRetained[2] topEntry];
    v6 = WeakRetained[2];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __58___UINavigationBarVisualProviderModernIOS__backButtonMenu__block_invoke_2;
    v33[3] = &unk_1E70F7668;
    v22 = v5;
    v34 = v22;
    v7 = v4;
    v35 = v7;
    [v6 reverseIterateEntries:v33];
    v8 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v9)
    {
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          objc_initWeak(&location, v12);
          v13 = [v12 _backButtonTitleAllowingGenericTitles:0];
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PopToItem<NavigationItem:%p>", v12];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __58___UINavigationBarVisualProviderModernIOS__backButtonMenu__block_invoke_3;
          v26[3] = &unk_1E70F69F8;
          objc_copyWeak(&v27, &location);
          v26[4] = WeakRetained;
          v15 = [UIAction actionWithTitle:v13 image:0 identifier:v14 handler:v26];
          [v8 addObject:v15];

          objc_destroyWeak(&v27);
          objc_destroyWeak(&location);
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v9);
    }

    v16 = [WeakRetained navigationBar];
    v17 = [v16 _effectiveDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [*(*(v21 + 32) + 8) _effectiveDelegate];
      v20 = [v19 _navigationBarAdditionalActionsForBackButtonMenu:v16];

      if ([v20 count])
      {
        [v8 addObjectsFromArray:v20];
      }
    }

    (v23)[2](v23, v8);
  }

  else
  {
    (*(v3 + 2))(v3, MEMORY[0x1E695E0F0]);
  }
}

void __58___UINavigationBarVisualProviderModernIOS__backButtonMenu__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(a1 + 32) != a2)
  {
    v8 = [a2 item];
    [*(a1 + 40) addObject:v8];
    if (([v8 hidesBackButton] & 1) != 0 || (objc_msgSend(v8, "leftItemsSupplementBackButton") & 1) == 0 && (objc_msgSend(v8, "leftBarButtonItems"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
    {
      *a3 = 1;
    }
  }
}

void __58___UINavigationBarVisualProviderModernIOS__backButtonMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _popToItem:WeakRetained];
    WeakRetained = v3;
  }
}

void __74___UINavigationBarVisualProviderModernIOS__staticNavBarButtonFakeBackMenu__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained navigationBar];
    v6 = [v5 _effectiveDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(*(a1 + 32) + 8) _effectiveDelegate];
      v9 = [v8 _navigationBarAdditionalActionsForBackButtonMenu:v5];

      if ([v9 count])
      {
        v10 = v9;
      }

      else
      {
        v10 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v11[2](v11, v10);
  }

  else
  {
    v11[2](v11, MEMORY[0x1E695E0F0]);
  }
}

void __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = [*(a1 + 32) _barCustomizationItemWithBarButtonGroup:a2];
  v7 = v5;
  v6 = 48;
  if (a3)
  {
    v6 = 40;
  }

  [*(a1 + v6) addObject:v5];
}

void __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setHidden:1];

  [*(*(a1 + 40) + 48) setAlpha:0.0];
  v5 = [UIImage systemImageNamed:@"circle"];
  v3 = [*(*(a1 + 40) + 48) layout];
  v4 = [v3 overflowItem];
  [v4 setImage:v5];
}

void __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[22];
    if (v5 == v11)
    {
      WeakRetained[22] = 0;

      v6 = [*(a1 + 32) view];
      [v6 setHidden:0];

      [v4[23] removeFromSuperview];
      v7 = v4[23];
      v4[23] = 0;

      v8 = [UIImage systemImageNamed:@"ellipsis.circle"];
      v9 = [v4[6] layout];
      v10 = [v9 overflowItem];
      [v10 setImage:v8];
    }
  }
}

id __79___UINavigationBarVisualProviderModernIOS__sourceViewProviderForBarButtonItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _contentViewFromBarButton(v1);

    v1 = v2;
  }

  return v1;
}

void __81___UINavigationBarVisualProviderModernIOS_barCustomizer_willEndSession_didReset___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void __81___UINavigationBarVisualProviderModernIOS_barCustomizer_willEndSession_didReset___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

id __86___UINavigationBarVisualProviderModernIOS__updateContentForTopItem_backItem_animated___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [UIMenu menuWithChildren:v1];

  return v2;
}

void __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[2] topItem];
  v4 = [v3 _bottomPalette];
  [*(*(a1 + 32) + 8) _contentMargin];
  [v2 _configureMarginsOnContentViewsAndPalette:v4 withContentMargin:?];

  v5 = *(a1 + 32);
  v7 = [v5[2] topItem];
  v6 = [*(*(a1 + 32) + 16) backItem];
  [v5 _updateContentForTopItem:v7 backItem:v6 animated:0];
}

uint64_t __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) _sendNavigationBarAnimateTransition];
  [*(*(a1 + 32) + 96) animate];
  v2 = *(*(a1 + 32) + 8);

  return [v2 layoutIfNeeded];
}

void __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 96) complete];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;
}

void __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 cancelledTransition];
  (*(*(a1 + 40) + 16))();

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v8 = [v6[2] topEntry];
    v7 = [v8 item];
    [v6 navigationItemUpdatedLargeTitleDisplayMode:v7];
  }
}

void __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[2] topItem];
  v4 = [v3 _topPalette];
  [*(*(a1 + 32) + 8) _contentMargin];
  [v2 _configureMarginsOnContentViewsAndPalette:v4 withContentMargin:?];

  v5 = *(a1 + 32);
  v6 = [v5[2] topItem];
  v7 = [v6 _bottomPalette];
  [*(*(a1 + 32) + 8) _contentMargin];
  [v5 _configureMarginsOnContentViewsAndPalette:v7 withContentMargin:?];

  v8 = *(a1 + 32);
  v9 = [v8[2] topItem];
  v10 = [*(*(a1 + 32) + 16) backItem];
  [v8 _updateContentForTopItem:v9 backItem:v10];

  if (_UIBarsDesktopNavigationBarEnabled())
  {
    v11 = [*(*(a1 + 32) + 48) layout];
    [v11 layoutSubviews];
  }
}

uint64_t __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 8) _sendNavigationBarAnimateTransition];
  v2 = [*(*(a1 + 32) + 16) previousTopItem];
  v3 = [v2 _weeTitle];
  if ([v3 length] && *(a1 + 48) == 1)
  {
    v4 = *(a1 + 56);

    if (v4 == 1)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_4;
      v19 = &unk_1E70F3590;
      v20 = *(a1 + 32);
      v5 = &v16;
LABEL_10:
      [UIView animateKeyframesWithDuration:0 delay:v5 options:0 animations:0.0 completion:0.0, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v6 = [*(*(a1 + 32) + 16) topItem];
  v7 = [v6 _weeTitle];
  if (![v7 length] || *(a1 + 48) != 2)
  {

    goto LABEL_12;
  }

  v8 = *(a1 + 57);

  if (v8 == 1)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_6;
    v14 = &unk_1E70F3590;
    v15 = *(a1 + 32);
    v5 = &v11;
    goto LABEL_10;
  }

LABEL_12:
  [*(a1 + 32) _updatePromptViewAndActuallyHide:0];
  v9 = *(a1 + 32);
  [v9[1] bounds];
  [v9 _layoutInBounds:?];
  [*(a1 + 32) _updateTitleViewForLayout:*(a1 + 40)];
  [*(a1 + 32) updateBarVisibilityForTopItem];
  [*(*(a1 + 32) + 8) layoutIfNeeded];
  [*(a1 + 32) applyBarBackground:*(*(a1 + 32) + 40) alpha:*(*(a1 + 32) + 120)];
  return [*(*(a1 + 32) + 96) animate];
}

uint64_t __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_5;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.0 animations:0.2];
}

uint64_t __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_6(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_7;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.93 animations:0.07];
}

uint64_t __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_8(uint64_t a1)
{
  [*(a1 + 40) _endTransitionCompleted:{objc_msgSend(*(a1 + 32), "cancelledTransition") ^ 1}];
  v2 = *(*(a1 + 40) + 8);

  return [v2 setNeedsLayout];
}

void __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_9(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 48) traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    (*(*(a1 + 48) + 16))();
    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    if ([*(a1 + 32) allowsUserInteractionDuringTransitions])
    {
      v5 = 393826;
    }

    else
    {
      v5 = 393824;
    }

    [*(a1 + 40) duration];
    [UIView _animateWithDuration:"_animateWithDuration:delay:options:factory:animations:completion:" delay:v5 options:*(a1 + 32) factory:*(a1 + 48) animations:v6 completion:?];
  }
}

uint64_t __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_2;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.333333333];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_3;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.333333333 animations:0.333333333];
}

uint64_t __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setAlpha:*(a1 + 40)];
  result = [*(*(a1 + 32) + 56) setAlpha:*(a1 + 48)];
  *(*(a1 + 32) + 225) = 0;
  return result;
}

uint64_t __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_5(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_6;
  v4[3] = &unk_1E70F32F0;
  v4[4] = a1[4];
  v4[5] = a1[5];
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.666666667 animations:0.333333333];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_7;
  v3[3] = &unk_1E70F32F0;
  v3[4] = a1[4];
  v3[5] = a1[6];
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.333333333 animations:0.333333333];
}

uint64_t __101___UINavigationBarVisualProviderModernIOS_navigationItemUpdatedSearchController_oldSearchController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActive:0];
  v2 = *(a1 + 40);

  return [v2 setSearchActive:0];
}

uint64_t __78___UINavigationBarVisualProviderModernIOS__immediatelyFinishRunningTransition__block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end