@interface UITabBarControllerAdaptiveVisualStyle
@end

@implementation UITabBarControllerAdaptiveVisualStyle

uint64_t __60___UITabBarControllerAdaptiveVisualStyle_updateTabBarLayout__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 <= v3)
  {
    v4 = 1194.0;
  }

  else
  {
    v4 = 1024.0;
  }

  v5 = v2 > v4;
  v6 = *(a1 + 88);
  if (v6 <= *(a1 + 96))
  {
    v7 = 1194.0;
  }

  else
  {
    v7 = 1024.0;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  result = CGRectEqualToRect(*(&v2 - 2), *MEMORY[0x1E695F058]);
  if (((v5 ^ (v6 > v7)) & 1) != 0 || result)
  {
    v11 = [*(a1 + 32) sidebar];
    v12 = v11;
    if (v11 && (*(v11 + 16) & 2) != 0)
    {
      v14 = [*(a1 + 32) sidebar];
      v13 = [v14 isHidden] ^ 1;
    }

    else
    {
      v13 = 1;
    }

    v15 = [*(a1 + 32) sidebar];
    [(UITabBarControllerSidebar *)v15 _setHidden:0 source:?];

    v16 = *(a1 + 32);

    return [v16 _setNeedsContentLayout];
  }

  return result;
}

uint64_t __90___UITabBarControllerAdaptiveVisualStyle__updateContentLayoutForSidebarAppearanceIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSidebarResolvedLayout];
  [*(a1 + 40) setNeedsStatusBarAppearanceUpdate];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v2 = [*(a1 + 40) _existingView];
    [v2 layoutIfNeeded];
  }

  v3 = *(a1 + 40);

  return [v3 _updateLayoutForStatusBarAndInterfaceOrientation];
}

@end