@interface UIFloatingTabBar
@end

@implementation UIFloatingTabBar

void __34___UIFloatingTabBar_sidebarButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v9 = _UIFloatingTabBarGetPlatformMetrics([v3 userInterfaceIdiom]);

  v4 = [v2 configuration];
  v5 = [v9 contentPaletteProvider];
  v6 = [v2 traitCollection];
  v7 = v5[2](v5, [v6 userInterfaceStyle]);
  v8 = [v7 inactiveColor];
  [v4 setBaseForegroundColor:v8];

  [v2 setConfiguration:v4];
}

void __41___UIFloatingTabBar__createViewHierarchy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSelectionViewHighlightState];
}

void __41___UIFloatingTabBar__createViewHierarchy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollToSelectedItemIfNeeded];
  v1 = [WeakRetained _indexPathForSelectedItem];
  v2 = [v1 section];

  if (v2 != 3)
  {
    [WeakRetained _updateSelectionViewFrameAnimated:0 completion:0];
  }

  [WeakRetained _updateContentAlphaForVisibleCells];
}

void __41___UIFloatingTabBar__createViewHierarchy__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 targetItem];

  [WeakRetained _selectItemAtIndexPath:v5];
}

id __38___UIFloatingTabBar__createDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v9 isPlaceholder])
  {
    v11 = @"UIFloatingTabBar.PlaceholderCell";
  }

  else
  {
    v12 = [v9 contentTab];

    if (v12)
    {
      v11 = @"UIFloatingTabBar.Cell";
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 40) object:WeakRetained file:@"_UIFloatingTabBar.m" lineNumber:606 description:@"Cannot create cells for an unknown list item type"];

      v11 = 0;
    }
  }

  v14 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];
  [v14 setListItem:v9];

  return v14;
}

void __57___UIFloatingTabBar__updateDataSourceFromParserAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained collectionView];
    [v3 scrollToTargetPageAnimated:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __41___UIFloatingTabBar_setEditing_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) selectionContainerView];
  [v3 setAlpha:v2];

  if (*(a1 + 41) == 1)
  {
    v4 = [*(a1 + 32) collectionView];
    [v4 _setAutomaticContentOffsetAdjustmentEnabled:0];

    [*(a1 + 32) layoutIfNeeded];
    v5 = [*(a1 + 32) collectionView];
    [v5 _setAutomaticContentOffsetAdjustmentEnabled:1];
  }

  v7 = [*(a1 + 32) dragController];
  v6 = [v7 activeDropItem];
  [v6 setNeedsDropPreviewUpdate];
}

void __44___UIFloatingTabBar__selectItemAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained pointerInteraction];
    [v4 invalidate];

    WeakRetained = v5;
  }
}

uint64_t __42___UIFloatingTabBar__indexPathForTabItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabForSelection];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }
  }

  return v9;
}

void __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke(uint64_t a1)
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(*(a1 + 40), vmulq_f64(*(a1 + 56), _Q2));
  v6 = [*(a1 + 32) selectionContainerView];
  [v6 setSelectionViewPosition:*&v7];
}

void __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) selectionContainerView];
  [v6 setSelectionViewBounds:{v2, v3, v4, v5}];

  if (*(a1 + 72) == *(a1 + 73))
  {
    return;
  }

  if (*(a1 + 72))
  {
    v7 = [*(a1 + 32) traitOverrides];
    [v7 setNSIntegerValue:1 forTrait:objc_opt_class()];
LABEL_6:

    goto LABEL_7;
  }

  if (*(a1 + 74) == 1)
  {
    v7 = [*(a1 + 32) traitOverrides];
    [v7 removeTrait:objc_opt_class()];
    goto LABEL_6;
  }

LABEL_7:
  v8 = *(a1 + 32);

  [v8 updateTraitsIfNeeded];
}

uint64_t __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) complete];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __55___UIFloatingTabBar__updateSelectionViewHighlightState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitOverrides];
  [v2 removeTrait:objc_opt_class()];

  v3 = *(a1 + 32);

  return [v3 updateTraitsIfNeeded];
}

void __50___UIFloatingTabBar_selectionFrameGroupCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[59];
    WeakRetained[59] = 0;
    v4 = WeakRetained;

    v3 = [v4 traitOverrides];
    [v3 removeTrait:objc_opt_class()];

    WeakRetained = v4;
  }
}

unint64_t __50___UIFloatingTabBar__pageIndexForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  result = [a2 range];
  if (v7 >= result && v7 - result < v9)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void __60___UIFloatingTabBar__updateSelectionViewVisibilityAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v3 = [*(a1 + 32) selectionContainerView];
  v2 = [v3 selectionView];
  [v2 setAlpha:v1];
}

void __49___UIFloatingTabBar_scrollViewWillBeginDragging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionContainerView];
  v1 = [v2 selectionView];
  [v1 setAlpha:1.0];
}

@end