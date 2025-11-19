@interface UISearchBarVisualProviderLegacy
@end

@implementation UISearchBarVisualProviderLegacy

uint64_t __56___UISearchBarVisualProviderLegacy_setEnabled_animated___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 200) numberOfSegments])
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

      v4 = [*(*(a1 + 32) + 200) infoViewForSegment:v2];
      [v4 setAlpha:v3];

      ++v2;
    }

    while (v2 < [*(*(a1 + 32) + 200) numberOfSegments]);
  }

  v5 = *(a1 + 32);

  return [v5 updateMagnifyingGlassView];
}

uint64_t __66___UISearchBarVisualProviderLegacy_setShowsCancelButton_animated___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    result = *(result + 32);
    if (!*(result + 152))
    {
      result = [result setUpCancelButton];
    }

    if ((*(v1 + 49) & 1) == 0)
    {
      result = [*(*(v1 + 32) + 152) setAlpha:1.0];
    }
  }

  if (*(v1 + 49) == 1)
  {
    v2 = *(v1 + 40);

    return [v2 layoutBelowIfNeeded];
  }

  return result;
}

void __66___UISearchBarVisualProviderLegacy_setShowsCancelButton_animated___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) centerPlaceholder])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));

    if (!WeakRetained)
    {
      v3 = *(a1 + 32);
      if ((v3[106] & 4) != 0)
      {
        [v3 allowCursorToAppear:1];
      }

      v4 = [*(a1 + 40) textInputTraits];
      [v4 setDeferBecomingResponder:1];
    }
  }
}

uint64_t __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke_2;
    v12 = &unk_1E70F3590;
    v13 = *(a1 + 32);
    v1 = 0.7;
    v2 = &v9;
  }

  else
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke_3;
    v7 = &unk_1E70F3590;
    v8 = *(a1 + 32);
    v1 = 0.0;
    v2 = &v4;
  }

  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:v1 animations:0.3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13];
}

uint64_t __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke_4(uint64_t result)
{
  *(*(result + 32) + 104) &= ~0x40000000u;
  v1 = *(result + 32);
  v2 = *(v1 + 104);
  *(v1 + 104) = v2 & 0x7FFFFFFF;
  if (v2 < 0)
  {
    return [*(result + 32) updateScopeBarFrame];
  }

  return result;
}

void __51___UISearchBarVisualProviderLegacy_updateRightView__block_invoke(uint64_t a1)
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

void __51___UISearchBarVisualProviderLegacy_updateRightView__block_invoke_2(uint64_t a1)
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

uint64_t __55___UISearchBarVisualProviderLegacy_updateScopeBarFrame__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 200) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 200);

  return [v2 layoutIfNeeded];
}

uint64_t __49___UISearchBarVisualProviderLegacy_setUpScopeBar__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 200);

  return [v2 layoutBelowIfNeeded];
}

void __52___UISearchBarVisualProviderLegacy_setUpSearchField__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) barStyle])
  {
    [*(a1 + 32) colorForComponent:4 disabled:0];
  }

  else
  {
    +[UIColor labelColor];
  }
  v2 = ;
  [*(*(a1 + 32) + 112) setTextColor:v2];
}

double __88___UISearchBarVisualProviderLegacy__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
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

double __88___UISearchBarVisualProviderLegacy__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
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

uint64_t __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_3(uint64_t a1)
{
  v2 = CGRectGetMaxX(*(a1 + 48)) + 13.0;
  __asm { FMOV            V1.2D, #0.5 }

  UIRoundToViewScale(*(a1 + 40));
  v9 = v8 + 1.0;
  [*(a1 + 32) landscapeScopeBarWidth];
  v11 = *(*(a1 + 32) + 208);
  v12 = *(a1 + 112);

  return [v11 setFrame:{v2, v9, v10, v12}];
}

uint64_t __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 152) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 152) layoutIfNeeded];
  v2 = *(a1 + 32);
  v3 = 1.0;
  if ((*(v2 + 104) & 0x40000) == 0)
  {
    v3 = 0.0;
  }

  v4 = *(v2 + 152);

  return [v4 setAlpha:v3];
}

void __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) setHidden:0];
  [*(*(a1 + 32) + 128) setAlpha:0.0];
  [*(*(a1 + 32) + 128) transitionToPrivateStyle:*(a1 + 48)];
  v2 = *(a1 + 32);
  if (!*(v2 + 240) && (*(v2 + 104) & 0x38) == 0x10)
  {
    v3 = [*(a1 + 40) _searchBarTextField];
    [v3 _setBottomEffectBackgroundVisible:1];
  }
}

uint64_t __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 128) transitionToPrivateStyle:-2];
  v2 = *(*(a1 + 32) + 128);

  return [v2 setHidden:1];
}

@end