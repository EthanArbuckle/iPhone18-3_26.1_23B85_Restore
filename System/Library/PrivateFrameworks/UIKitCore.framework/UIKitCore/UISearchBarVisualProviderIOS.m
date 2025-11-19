@interface UISearchBarVisualProviderIOS
@end

@implementation UISearchBarVisualProviderIOS

void __53___UISearchBarVisualProviderIOS_setEnabled_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _searchBarTextField];
  [v2 _setEnabled:*(a1 + 40) animated:*(a1 + 41)];
}

uint64_t __53___UISearchBarVisualProviderIOS_setEnabled_animated___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 256) numberOfSegments])
  {
    v2 = 0;
    do
    {
      if (*(a1 + 40))
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.4;
      }

      v4 = [*(*(a1 + 32) + 256) infoViewForSegment:v2];
      [v4 setAlpha:v3];

      ++v2;
    }

    while (v2 < [*(*(a1 + 32) + 256) numberOfSegments]);
  }

  v5 = *(a1 + 32);

  return [v5 updateMagnifyingGlassView];
}

uint64_t __87___UISearchBarVisualProviderIOS_setShowsCancelButton_animated_protectSearchController___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    result = *(result + 32);
    if (!*(result + 208))
    {
      result = [result setUpCancelButton];
    }

    if ((*(v1 + 49) & 1) == 0)
    {
      result = [*(*(v1 + 32) + 208) setAlpha:1.0];
    }
  }

  if (*(v1 + 49) == 1)
  {
    v2 = *(v1 + 40);

    return [v2 layoutBelowIfNeeded];
  }

  return result;
}

void __87___UISearchBarVisualProviderIOS_setShowsCancelButton_animated_protectSearchController___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) centerPlaceholder])
  {
    v2 = *(a1 + 32);
    if ((v2[170] & 4) != 0)
    {
      [v2 allowCursorToAppear:1];
    }

    v3 = [*(a1 + 40) textInputTraits];
    [v3 setDeferBecomingResponder:1];
  }

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 49);

    [v4 _setClipsToBounds:v5];
  }
}

void __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_2;
  v8[3] = &unk_1E70F35E0;
  v9 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_5;
  v4[3] = &unk_1E70F8A60;
  v7 = v9;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5 = v2;
  v6 = v3;
  [UIView animateKeyframesWithDuration:0 delay:v8 options:v4 animations:0.0 completion:0.0];
}

uint64_t __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_3;
    v12 = &unk_1E70F3590;
    v13 = *(a1 + 32);
    v1 = 0.0;
    v2 = &v9;
  }

  else
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_4;
    v7 = &unk_1E70F3590;
    v8 = *(a1 + 32);
    v1 = 0.7;
    v2 = &v4;
  }

  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:v1 animations:0.3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13];
}

uint64_t __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_5(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v2 = result;
    [*(result + 32) setNeedsLayout];
    v3 = *(*(v2 + 40) + 56);

    return [v3 setNeedsLayout];
  }

  return result;
}

uint64_t __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setHidden:0];
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  v3 = *(*(a1 + 32) + 56);

  return [v3 setAlpha:v2];
}

uint64_t __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_7(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) frame];
    x = v9.origin.x;
    y = v9.origin.y;
    width = v9.size.width;
    [*(a1 + 40) sizeThatFits:{CGRectGetWidth(v9), 0.0}];
    [*(a1 + 32) setFrame:{x, y, width, v5}];
    [*(a1 + 32) layoutIfNeeded];
  }

  v6 = *(*(a1 + 48) + 16);

  return v6();
}

uint64_t __93___UISearchBarVisualProviderIOS_setDeferredAutomaticShowsScopeBarInNavigationBar_hasContent___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 56);

  return [v2 layoutIfNeeded];
}

void __63___UISearchBarVisualProviderIOS_revertViewHierarchyIfNecessary__block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 superview];
  if (v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [v1 subviews];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 addSubview:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [v1 removeFromSuperview];
    [v2 setNeedsLayout];
  }
}

void __63___UISearchBarVisualProviderIOS_updateRightViewForSearchField___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sizeToFit];
  v2 = [*(a1 + 40) rightView];

  if (v2)
  {
    v3 = [*(a1 + 40) rightView];
    [v3 frame];
    [*(a1 + 32) setFrame:?];
  }
}

void __63___UISearchBarVisualProviderIOS_updateRightViewForSearchField___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) sizeToFit];
  v2 = [*(a1 + 40) rightView];

  if (v2)
  {
    v3 = [*(a1 + 40) rightView];
    [v3 frame];
    [*(a1 + 32) setFrame:?];
  }
}

void __66___UISearchBarVisualProviderIOS_dictationButtonPressed_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained text];
  v2 = [v1 length];

  if (v2)
  {
    v3 = [WeakRetained textualRange];
    [WeakRetained setSelectedTextRange:v3];
  }
}

void __53___UISearchBarVisualProviderIOS_setUpNewSearchField___block_invoke(uint64_t a1)
{
  if ([*(a1 + 40) barStyle])
  {
    [*(a1 + 40) colorForComponent:4 disabled:0];
  }

  else
  {
    +[UIColor labelColor];
  }
  v2 = ;
  [*(a1 + 32) setTextColor:v2];
}

void *__68___UISearchBarVisualProviderIOS_driveTransitionToSearchLayoutState___block_invoke_2(void *a1)
{
  *(a1[4] + 88) &= ~1uLL;
  result = a1[5];
  if (result[48] != a1[6])
  {
    return [result completeTransitionToSearchLayoutState:?];
  }

  return result;
}

double __85___UISearchBarVisualProviderIOS__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    Width = CGRectGetWidth(*&v9);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v17 = CGRectIntersection(*(a1 + 32), v19);
    return Width - CGRectGetMinX(v17);
  }

  else
  {
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    v18 = CGRectIntersection(*&v9, v20);

    return CGRectGetMaxX(v18);
  }
}

double __85___UISearchBarVisualProviderIOS__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v17 = CGRectIntersection(*&v9, v19);

    return CGRectGetMaxX(v17);
  }

  else
  {
    Width = CGRectGetWidth(*&v9);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    v18 = CGRectIntersection(*(a1 + 32), v20);
    return Width - CGRectGetMinX(v18);
  }
}

uint64_t __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _resolvedSearchBarMargins];
  }

  else
  {
    return [*(a1 + 32) directionalLayoutMargins];
  }
}

double __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (!v3)
  {
    return fmax(result, *(v2 + 424));
  }

  if (v3)
  {
    return *(v2 + 424);
  }

  return result;
}

double __58___UISearchBarVisualProviderIOS_configureLayout_forState___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostedScopeBarHeightForBarMetrics:a2];
  v5 = v4;

  return v5;
}

double __58___UISearchBarVisualProviderIOS_configureLayout_forState___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostedScopeBarTopInsetForBarMetrics:a2];
  v5 = v4;

  return v5;
}

@end