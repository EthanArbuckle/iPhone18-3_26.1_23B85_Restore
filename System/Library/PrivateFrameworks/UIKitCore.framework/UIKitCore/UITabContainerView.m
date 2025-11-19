@interface UITabContainerView
@end

@implementation UITabContainerView

void __37___UITabContainerView_floatingTabBar__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v10 = objc_loadWeakRetained(WeakRetained + 76);
    [v10 tabBarContainerDidLayoutFloatingTabBar:v11];

    [v11 _updateSidebarContentMarginsWithTabBarContentFrame:{a2, a3, a4, a5}];
    [v11 _updateFloatingTabBarFrame];
    WeakRetained = v11;
  }
}

void __74___UITabContainerView__updateSidebarContentMarginsWithTabBarContentFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sidebarView];
  if (!v2)
  {
LABEL_4:
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9 = [*(a1 + 32) sidebarView];
    [(_UITabOutlineView *)v9 setAdditionalEditingInsets:v4, v5, v6, v7];

    return;
  }

  v3 = v2[53];

  if (v3 != 1)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_4;
  }

  v8 = *(a1 + 32);

  [v8 _updateSidebarViewFrame];
}

void __43___UITabContainerView__sidebarToggleAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained sidebar];
  v2 = [v1 isHidden];

  v3 = [WeakRetained sidebar];
  [(UITabBarControllerSidebar *)v3 _setHidden:1 source:?];
}

uint64_t __64___UITabContainerView__handleSidebarResizeTapGestureRecognizer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSidebarViewFrame];
  v2 = [*(a1 + 32) delegate];
  [v2 updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:*(a1 + 40)];

  v3 = *(a1 + 40);

  return [v3 runAnimations];
}

void __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[64];
    WeakRetained[64] = 0;
    v3 = WeakRetained;

    [v3 _updateVisibleBarAnimated:0];
    WeakRetained = v3;
  }
}

void __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 63) = *(WeakRetained + 62);
    [a1[4] increment];
    v4 = [[_UITabSidebarTransitionAnimator alloc] initWithContainerView:v3 duration:0.5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_3;
    v10[3] = &unk_1E70F6228;
    v10[4] = v3;
    v11 = v4;
    v12 = a1[5];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_4;
    v6[3] = &unk_1E70F4638;
    v7 = a1[5];
    v8 = v11;
    v9 = a1[4];
    v5 = v11;
    [UIView animateWithDuration:0 delay:v10 usingSpringWithDamping:v6 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  }
}

uint64_t __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) floatingTabBarHost];
  [v2 tabBarContainerWillChangeFloatingTabBarVisibility:*(a1 + 32)];

  v3 = [*(a1 + 32) delegate];
  [v3 updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:*(a1 + 40)];

  [*(a1 + 48) runAnimations];
  v4 = *(a1 + 40);

  return [v4 runAnimations];
}

uint64_t __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) runCompletions];
  [*(a1 + 40) runCompletions];
  v2 = *(a1 + 48);

  return [v2 complete];
}

uint64_t __56___UITabContainerView_updateEditModeAppearanceAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setAlpha:v2];
  if (*(a1 + 89))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(a1 + 40) setAlpha:v3];
  [*(a1 + 40) updateBarForEditingState];
  if (*(a1 + 90))
  {
    v4 = *(a1 + 48);

    return [v4 _updateSidebarViewFrame];
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 32);

    return [(_UITabOutlineView *)v10 setAdditionalEditingInsets:v6, v7, v8, v9];
  }
}

void __49___UITabContainerView__configuredGroupCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[51];
    WeakRetained[51] = 0;
    v3 = WeakRetained;

    [v3 _updateVisibleBarAnimated:0];
    [v3 _finalizeEditingState];
    WeakRetained = v3;
  }
}

uint64_t __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(*(a1 + 32) + 632) superview];

    if (!v2)
    {
      [*(a1 + 32) addSubview:*(*(a1 + 32) + 632)];
    }
  }

  if (*(a1 + 73) == 1)
  {
    v3 = [*(*(a1 + 32) + 616) superview];

    if (!v3)
    {
      [*(a1 + 40) addSubview:*(*(a1 + 32) + 616)];
      [*(a1 + 32) _updateBottomTabBarFrame];
      if (*(a1 + 74) == 1)
      {
        [*(*(a1 + 32) + 616) layoutIfNeeded];
      }

      v4 = [*(a1 + 32) tabBarContentLayoutManager];
      [v4 updateHostedElementsAnimated:0];

      *(*(a1 + 32) + 417) = 1;
    }
  }

  if (*(a1 + 75) == 1)
  {
    v5 = [*(a1 + 48) superview];

    if (!v5)
    {
      [*(a1 + 32) addSubview:*(a1 + 48)];
      if (*(a1 + 56))
      {
        [*(a1 + 32) addSubview:?];
      }

      [*(a1 + 32) _updateSidebarViewFrame];
      if (*(a1 + 74) == 1)
      {
        [*(a1 + 48) layoutIfNeeded];
      }

      *(*(a1 + 32) + 417) = 1;
    }
  }

  if (*(a1 + 76) == 1)
  {
    v6 = [*(a1 + 64) superview];

    if (!v6)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 608));
      [WeakRetained tabBarContainerWillChangeFloatingTabBarVisibility:*(a1 + 32)];

      [*(a1 + 32) addSubview:*(a1 + 64)];
      [*(a1 + 32) _updateFloatingTabBarFrame];
      [*(a1 + 64) updateEditingStateIfNeeded];
      if (*(a1 + 74) == 1)
      {
        [*(a1 + 64) layoutIfNeeded];
      }

      *(*(a1 + 32) + 417) = 1;
    }
  }

  v8 = *(a1 + 32);

  return [v8 _updatePassthroughScrollInteractionIfNeeded];
}

void __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_3;
  v6[3] = &unk_1E70F6228;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_4;
  v3[3] = &unk_1E70F3C60;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [UIView animateWithDuration:0 delay:v6 usingSpringWithDamping:v3 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
}

uint64_t __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:*(a1 + 40)];

  [*(a1 + 40) runAnimations];
  v3 = *(a1 + 48);

  return [v3 runAnimations];
}

uint64_t __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) runCompletions];
  v2 = *(a1 + 40);

  return [v2 runCompletions];
}

uint64_t __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 56)];
  v2 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = v2;
  v8 = *(a1 + 96);
  [*(a1 + 32) setAdditionalTransform:&v6];
  [*(a1 + 40) setAlpha:*(a1 + 112)];
  v3 = *(a1 + 136);
  v6 = *(a1 + 120);
  v7 = v3;
  v8 = *(a1 + 152);
  [*(a1 + 40) setTransform:&v6];
  [*(a1 + 48) setAlpha:*(a1 + 112)];
  v4 = *(a1 + 136);
  v6 = *(a1 + 120);
  v7 = v4;
  v8 = *(a1 + 152);
  return [*(a1 + 48) setTransform:&v6];
}

void __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!*(WeakRetained + 51))
    {
      v19 = WeakRetained;
      v6 = [WeakRetained _currentVisibleComponents] == *(a1 + 56);
      WeakRetained = v19;
      if (v6)
      {
        [v19 _updateVisibleItemIfNeeded];
        v3 = *(v19 + 79);
        v4 = v3;
        v5 = *(a1 + 56);
        v6 = (v5 & 9) == 0 || v3 == 0;
        v7 = !v6;
        v8 = v19[417];
        if ((v5 & 2) == 0)
        {
          v9 = [*(a1 + 32) superview];

          if (v9)
          {
            v10 = objc_loadWeakRetained(v19 + 76);
            [v10 tabBarContainerWillChangeFloatingTabBarVisibility:v19];

            [*(a1 + 32) removeFromSuperview];
            v8 = 1;
          }
        }

        if ((v5 & 4) == 0)
        {
          v11 = [*(a1 + 40) superview];

          if (v11)
          {
            [*(a1 + 40) removeFromSuperview];
            v12 = [v19 sidebarBorderView];
            [v12 removeFromSuperview];

            v8 = 1;
          }
        }

        v13 = [v19 tabBar];
        v14 = v13;
        if ((v5 & 1) == 0)
        {
          v15 = [v13 superview];

          if (v15)
          {
            [v14 removeFromSuperview];
            v16 = [v19 tabBarContentLayoutManager];
            [v16 updateHostedElementsAnimated:0];

            v8 = 1;
          }
        }

        if ((v7 & 1) == 0)
        {
          v17 = [v4 superview];

          if (v17)
          {
            [v4 removeFromSuperview];
          }
        }

        if (v8)
        {
          v18 = [v19 delegate];
          [v18 didUpdateVisibleAppearance];

          v19[417] = 0;
        }

        [v19 _updatePassthroughScrollInteractionIfNeeded];

        WeakRetained = v19;
      }
    }
  }
}

uint64_t __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_7(void *a1)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __49___UITabContainerView_updateDimmingViewAnimated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    if ((*(result + 40) & 1) == 0)
    {
      return [*(result + 32) removeFromSuperview];
    }
  }

  return result;
}

@end