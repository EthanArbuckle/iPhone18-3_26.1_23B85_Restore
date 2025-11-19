@interface UIKeyShortcutHUDToolbarViewController
@end

@implementation UIKeyShortcutHUDToolbarViewController

void __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v7 configureForDisplayingInHUDWithCategory:v9];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke_2;
    v12[3] = &unk_1E71261C0;
    objc_copyWeak(&v13, (a1 + 32));
    [v7 setConfigurationUpdateHandler:v12];
    v11 = [WeakRetained collectionViewManager];
    [v7 setCategoryVisible:{objc_msgSend(v11, "client:isCategoryVisibleForCellAtIndexPath:", WeakRetained, v8)}];

    objc_destroyWeak(&v13);
  }
}

void __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateScrollingSeparatorViewVisibility];
    WeakRetained = v2;
  }
}

void __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v12 separatorView];
    [WeakRetained _configureSeparatorViewAppearance:v8];

    v9 = [WeakRetained collectionViewManager];
    v10 = [v9 client:WeakRetained shouldHideSeparatorAtIndexPath:v6];
    v11 = [v12 separatorView];
    [v11 setSeparatorHidden:v10];
  }
}

id __63___UIKeyShortcutHUDToolbarViewController__collectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained menu];
    v8 = [v7 children];
    v9 = [v8 count];

    v10 = [v4 container];
    [v10 contentSize];
    v11 = v9;
    v13 = v12 / v9;

    v14 = [v6 metrics];
    [v14 widestToolbarCategoryCellWidth];
    v16 = v15;

    if (v13 >= v16)
    {
      v16 = v13;
    }

    v43 = v4;
    v17 = [v6 metrics];
    [v17 separatorWidth];
    v18 = [off_1E70ECB18 absoluteDimension:?];
    v19 = [off_1E70ECB18 fractionalHeightDimension:1.0];
    v20 = [off_1E70ECB40 sizeWithWidthDimension:v18 heightDimension:v19];

    v21 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
    v22 = [off_1E70ECB00 layoutAnchorWithEdges:2];
    v23 = [off_1E70ECB50 supplementaryItemWithLayoutSize:v20 elementKind:v21 containerAnchor:v22];

    v24 = [off_1E70ECB18 fractionalWidthDimension:1.0 / v11];
    v25 = [off_1E70ECB18 fractionalHeightDimension:1.0];
    v26 = [off_1E70ECB40 sizeWithWidthDimension:v24 heightDimension:v25];

    v44[0] = v23;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v28 = [off_1E70ECB30 itemWithLayoutSize:v26 supplementaryItems:v27];

    v29 = [off_1E70ECB18 absoluteDimension:v16 * v11];
    v30 = [off_1E70ECB18 fractionalHeightDimension:1.0];
    v31 = [off_1E70ECB40 sizeWithWidthDimension:v29 heightDimension:v30];

    v32 = [off_1E70ECB28 horizontalGroupWithLayoutSize:v31 repeatingSubitem:v28 count:v9];
    v33 = [v6 metrics];
    [v33 toolbarContentInset];
    v35 = v34;
    v36 = [v6 metrics];
    [v36 toolbarContentInset];
    v38 = v37;
    v39 = [v6 metrics];
    [v39 toolbarContentInset];
    [v32 setContentInsets:{v35, 0.0, v38, v40}];

    v4 = v43;
    v41 = [off_1E70ECB38 sectionWithGroup:v32];
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

void __69___UIKeyShortcutHUDToolbarViewController_didCompleteSearchTransition__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSearching])
  {
    v2 = [*(a1 + 32) searchBar];
    [v2 becomeFirstResponder];
  }
}

@end