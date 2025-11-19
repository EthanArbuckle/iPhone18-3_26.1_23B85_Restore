@interface _UIKeyShortcutHUDMenuViewController
- (BOOL)shouldPersistSelectionForCellAtIndexPath:(id)a3;
- (UIKeyShortcutHUDMetrics)metrics;
- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager;
- (_UIKeyShortcutHUDMenu)menu;
- (_UIKeyShortcutHUDMenuViewControllerDelegate)delegate;
- (id)_searchModeCollectionViewLayout;
- (id)_standardModeCollectionViewLayout;
- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)a3;
- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)a3;
- (void)_configureCollectionView;
- (void)_displayMenu:(id)a3 animatingDifferences:(BOOL)a4;
- (void)_setupSubviews;
- (void)didScrollCollectionView;
- (void)flashShortcutIfVisible:(id)a3 completionHandler:(id)a4;
- (void)performActionForSelectingCellAtIndexPath:(id)a3;
- (void)scrollToCategory:(id)a3 withCategoryIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)setMenu:(id)a3 animated:(BOOL)a4;
- (void)setSearching:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation _UIKeyShortcutHUDMenuViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDMenuViewController;
  [(UIViewController *)&v3 viewDidLoad];
  [(_UIKeyShortcutHUDMenuViewController *)self _setupSubviews];
  [(_UIKeyShortcutHUDMenuViewController *)self _configureCollectionView];
}

- (void)_setupSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained menuPlatterCornerRadius];
  v5 = v4;
  v6 = [(UIViewController *)self view];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = *MEMORY[0x1E69796E8];
  v9 = [(UIViewController *)self view];
  v10 = [v9 layer];
  [v10 setCornerCurve:v8];

  v11 = objc_loadWeakRetained(&self->_metrics);
  v12 = [v11 menuPanelCornerMask];
  v13 = [(UIViewController *)self view];
  v14 = [v13 layer];
  [v14 setMaskedCorners:v12];

  v15 = [(UIViewController *)self view];
  v16 = [v15 layer];
  [v16 setMasksToBounds:1];

  v17 = objc_loadWeakRetained(&self->_metrics);
  [v17 menuPanelStrokeWidth];
  v19 = v18;
  v20 = [(UIViewController *)self view];
  v21 = [v20 layer];
  [v21 setBorderWidth:v19];

  v22 = objc_loadWeakRetained(&self->_metrics);
  v23 = [v22 platterStrokeColor];
  v24 = [(UIViewController *)self traitCollection];
  v25 = [v23 resolvedColorWithTraitCollection:v24];
  v26 = [v25 CGColor];
  v27 = [(UIViewController *)self view];
  v28 = [v27 layer];
  [v28 setBorderColor:v26];

  v29 = objc_loadWeakRetained(&self->_metrics);
  [v29 platterZPosition];
  v31 = v30;
  v32 = [(UIViewController *)self view];
  v33 = [v32 layer];
  [v33 setZPosition:v31];

  v34 = [UIVisualEffectView alloc];
  v35 = objc_loadWeakRetained(&self->_metrics);
  v36 = [v35 platterVisualEffect];
  v37 = [(UIVisualEffectView *)v34 initWithEffect:v36];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v37;

  v39 = [(UIViewController *)self view];
  [v39 bounds];
  [(UIView *)self->_visualEffectView setFrame:?];

  [(UIView *)self->_visualEffectView setAutoresizingMask:18];
  v40 = [UICollectionView alloc];
  v41 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [(_UIKeyShortcutHUDMenuViewController *)self _standardModeCollectionViewLayout];
  v51 = [(UICollectionView *)v40 initWithFrame:v50 collectionViewLayout:v43, v45, v47, v49];
  collectionView = self->_collectionView;
  self->_collectionView = v51;

  v53 = objc_loadWeakRetained(&self->_metrics);
  [v53 menuHorizontalContentInset];
  v55 = v54;
  v56 = objc_loadWeakRetained(&self->_metrics);
  [v56 menuHorizontalContentInset];
  [(UICollectionView *)self->_collectionView setContentInset:0.0, v55, 0.0, v57];

  [(UIView *)self->_collectionView setAutoresizingMask:18];
  v58 = [(UIViewController *)self view];
  [v58 addSubview:self->_visualEffectView];

  v59 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [v59 addSubview:self->_collectionView];
}

- (void)_configureCollectionView
{
  objc_initWeak(location, self);
  v3 = objc_opt_self();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke;
  v30[3] = &unk_1E71095F8;
  objc_copyWeak(&v31, location);
  v4 = [UICollectionViewCellRegistration registrationWithCellClass:v3 configurationHandler:v30];

  v5 = objc_opt_self();
  v6 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_2;
  v28[3] = &unk_1E7109620;
  objc_copyWeak(&v29, location);
  v7 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v5 elementKind:v6 configurationHandler:v28];

  v8 = objc_opt_self();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_3;
  v26[3] = &unk_1E7109648;
  objc_copyWeak(&v27, location);
  v9 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v8 elementKind:@"UICollectionElementKindSectionHeader" configurationHandler:v26];

  v10 = [UICollectionViewDiffableDataSource alloc];
  collectionView = self->_collectionView;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_4;
  v24[3] = &unk_1E7109670;
  v12 = v4;
  v25 = v12;
  v13 = [(UICollectionViewDiffableDataSource *)v10 initWithCollectionView:collectionView cellProvider:v24];
  dataSource = self->_dataSource;
  self->_dataSource = v13;

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_5;
  v21 = &unk_1E7109698;
  v15 = v9;
  v22 = v15;
  v16 = v7;
  v23 = v16;
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:&v18];
  objc_storeStrong(&self->_cellRegistration, v4);
  objc_storeStrong(&self->_cellSeparatorRegistration, v7);
  objc_storeStrong(&self->_sectionHeaderRegistration, v9);
  WeakRetained = objc_loadWeakRetained(&self->_menu);
  [(_UIKeyShortcutHUDMenuViewController *)self _displayMenu:WeakRetained animatingDifferences:0, v18, v19, v20, v21];

  self->_currentScrolledToCategoryIndex = 0;
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (id)_standardModeCollectionViewLayout
{
  v55[1] = *MEMORY[0x1E69E9840];
  v3 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v4 = [off_1E70ECB18 absoluteDimension:1.0];
  v53 = [off_1E70ECB40 sizeWithWidthDimension:v3 heightDimension:v4];

  v5 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v6 = [off_1E70ECB00 layoutAnchorWithEdges:4];
  v52 = [off_1E70ECB50 supplementaryItemWithLayoutSize:v53 elementKind:v5 containerAnchor:v6];

  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained minShortcutCellWidth];
  v8 = [off_1E70ECB18 estimatedDimension:?];
  v9 = objc_loadWeakRetained(&self->_metrics);
  v10 = [off_1E70ECB18 fractionalHeightDimension:{1.0 / objc_msgSend(v9, "numCellsPerColumn")}];
  v51 = [off_1E70ECB40 sizeWithWidthDimension:v8 heightDimension:v10];

  v55[0] = v52;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  v50 = [off_1E70ECB30 itemWithLayoutSize:v51 supplementaryItems:v11];

  v12 = self;
  v13 = objc_loadWeakRetained(&self->_metrics);
  [v13 minShortcutCellWidth];
  v14 = [off_1E70ECB18 estimatedDimension:?];
  v15 = objc_loadWeakRetained(&self->_metrics);
  [v15 menuCellHeight];
  v17 = v16;
  v18 = objc_loadWeakRetained(&self->_metrics);
  v19 = [off_1E70ECB18 absoluteDimension:{v17 * objc_msgSend(v18, "numCellsPerColumn")}];
  v49 = [off_1E70ECB40 sizeWithWidthDimension:v14 heightDimension:v19];

  v20 = objc_loadWeakRetained(&v12->_metrics);
  v21 = [off_1E70ECB28 verticalGroupWithLayoutSize:v49 repeatingSubitem:v50 count:{objc_msgSend(v20, "numCellsPerColumn")}];

  v22 = v12;
  v23 = objc_loadWeakRetained(&v12->_metrics);
  [v23 menuCellHeight];
  v24 = [off_1E70ECB48 fixedSpacing:?];
  v25 = [off_1E70ECB20 spacingForLeading:0 top:v24 trailing:0 bottom:0];
  [v21 setEdgeSpacing:v25];

  v26 = [off_1E70ECB38 sectionWithGroup:v21];
  v27 = objc_loadWeakRetained(&v12->_metrics);
  [v27 menuColumnSpacing];
  [v26 setInterGroupSpacing:?];

  v28 = objc_loadWeakRetained(&v12->_metrics);
  [v28 minShortcutCellWidth];
  v29 = [off_1E70ECB18 estimatedDimension:?];
  v30 = objc_loadWeakRetained(&v12->_metrics);
  [v30 menuCellHeight];
  v31 = [off_1E70ECB18 absoluteDimension:?];
  v32 = [off_1E70ECB40 sizeWithWidthDimension:v29 heightDimension:v31];

  v33 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v32 elementKind:@"UICollectionElementKindSectionHeader" alignment:2];
  [v33 setExtendsBoundary:0];
  [v33 setPinToVisibleBounds:1];
  v54 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  [v26 setBoundarySupplementaryItems:v34];

  [v26 contentInsets];
  v36 = v35;
  v38 = v37;
  v39 = objc_loadWeakRetained(&v22->_metrics);
  [v39 menuTopContentInset];
  v41 = v40;

  v42 = objc_loadWeakRetained(&v22->_metrics);
  [v42 menuBottomContentInset];
  v44 = v43;

  [v26 setContentInsets:{v41, v36, v44, v38}];
  v45 = objc_opt_new();
  [v45 setScrollDirection:1];
  v46 = objc_loadWeakRetained(&v22->_metrics);
  [v46 menuColumnSpacing];
  [v45 setInterSectionSpacing:?];

  v47 = [[UICollectionViewCompositionalLayout alloc] initWithSection:v26 configuration:v45];

  return v47;
}

- (id)_searchModeCollectionViewLayout
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained separatorWidth];
  v6 = [off_1E70ECB18 absoluteDimension:?];
  v41 = [off_1E70ECB40 sizeWithWidthDimension:v3 heightDimension:v6];

  v7 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v8 = [off_1E70ECB00 layoutAnchorWithEdges:4];
  v40 = [off_1E70ECB50 supplementaryItemWithLayoutSize:v41 elementKind:v7 containerAnchor:v8];

  v9 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v10 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v39 = [off_1E70ECB40 sizeWithWidthDimension:v9 heightDimension:v10];

  v44[0] = v40;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v12 = [off_1E70ECB30 itemWithLayoutSize:v39 supplementaryItems:v11];

  v13 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v14 = v4;
  v15 = objc_loadWeakRetained(&v4->_metrics);
  [v15 menuCellHeight];
  v16 = [off_1E70ECB18 absoluteDimension:?];
  v17 = [off_1E70ECB40 sizeWithWidthDimension:v13 heightDimension:v16];

  v43 = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v19 = [off_1E70ECB28 verticalGroupWithLayoutSize:v17 subitems:v18];

  v20 = [off_1E70ECB38 sectionWithGroup:v19];
  v21 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v22 = objc_loadWeakRetained(&v14->_metrics);
  [v22 menuCellHeight];
  v23 = [off_1E70ECB18 absoluteDimension:?];
  v24 = [off_1E70ECB40 sizeWithWidthDimension:v21 heightDimension:v23];

  v25 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v24 elementKind:@"UICollectionElementKindSectionHeader" alignment:1];
  [v25 setPinToVisibleBounds:1];
  v42 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  [v20 setBoundarySupplementaryItems:v26];

  [v20 contentInsets];
  v28 = v27;
  v30 = v29;
  v31 = objc_loadWeakRetained(&v14->_metrics);
  [v31 menuHorizontalContentInset];
  v33 = v32;

  v34 = objc_loadWeakRetained(&v14->_metrics);
  [v34 menuHorizontalContentInset];
  v36 = v35;

  [v20 setContentInsets:{v28, v33, v30, v36}];
  v37 = [[UICollectionViewCompositionalLayout alloc] initWithSection:v20];

  return v37;
}

- (void)setMenu:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  v7 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_menu, obj);
    v8 = [(UIViewController *)self isViewLoaded];
    v7 = obj;
    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_menu);
      [(_UIKeyShortcutHUDMenuViewController *)self _displayMenu:v9 animatingDifferences:v4];

      v10 = objc_loadWeakRetained(&self->_collectionViewManager);
      [v10 reloadAllVisibleSeparatorsForClient:self];

      v7 = obj;
    }
  }
}

- (void)_displayMenu:(id)a3 animatingDifferences:(BOOL)a4
{
  v16 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 children];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v21 = *(*(&v17 + 1) + 8 * i);
        v12 = v21;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        [v6 appendSectionsWithIdentifiers:v13];

        v14 = [v12 children];
        [v6 appendItemsWithIdentifiers:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  dataSource = self->_dataSource;
  if (v16)
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v6 animatingDifferences:1];
  }

  else
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v6];
  }
}

- (void)performActionForSelectingCellAtIndexPath:(id)a3
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(_UIKeyShortcutHUDMenuViewController *)self delegate];
    [v5 menuViewController:self didSelectShortcut:v6];

    v4 = v6;
  }
}

- (BOOL)shouldPersistSelectionForCellAtIndexPath:(id)a3
{
  v3 = self;
  v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a3];
  v5 = [(_UIKeyShortcutHUDMenuViewController *)v3 delegate];
  LOBYTE(v3) = [v5 menuViewController:v3 shouldPersistSelectionForShortcut:v4];

  return v3;
}

- (void)didScrollCollectionView
{
  if (![(UIScrollView *)self->_collectionView isScrollAnimating]&& ![(_UIKeyShortcutHUDMenuViewController *)self isSearching]&& ![(_UIKeyShortcutHUDMenuViewController *)self isTransitioningSearch])
  {
    [(_UIKeyShortcutHUDMenuViewController *)self currentScrolledToCategoryIndex];
    [(UIScrollView *)self->_collectionView contentOffset];
    v4 = v3;
    [(UIScrollView *)self->_collectionView contentSize];
    v6 = v5;
    [(UIView *)self->_collectionView bounds];
    v8 = v7;
    [(UIScrollView *)self->_collectionView contentInset];
    v10 = v9;
    [(UIScrollView *)self->_collectionView contentInset];
    if (v4 + v11 > 0.0 || (v12 = objc_loadWeakRetained(&self->_menu), v13 = [v12 isEmpty], v12, v13))
    {
      if (v4 < v6 - v8 + v10 || (v14 = objc_loadWeakRetained(&self->_menu), v15 = [v14 isEmpty], v14, (v15 & 1) != 0))
      {
        [(UIScrollView *)self->_collectionView contentInset];
        v17 = v4 + v16 + v16;
        WeakRetained = objc_loadWeakRetained(&self->_metrics);
        v19 = [WeakRetained categoryIndexAtHorizontalOffset:v17];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_menu);
        v20 = [WeakRetained children];
        v19 = [v20 count] - 1;
      }
    }

    else
    {
      v19 = 0;
    }

    if ([(_UIKeyShortcutHUDMenuViewController *)self currentScrolledToCategoryIndex]!= v19)
    {
      [(_UIKeyShortcutHUDMenuViewController *)self setCurrentScrolledToCategoryIndex:v19];
      v21 = objc_loadWeakRetained(&self->_menu);
      v22 = [v21 children];
      v24 = [v22 objectAtIndexedSubscript:{-[_UIKeyShortcutHUDMenuViewController currentScrolledToCategoryIndex](self, "currentScrolledToCategoryIndex")}];

      v23 = [(_UIKeyShortcutHUDMenuViewController *)self delegate];
      [v23 menuViewController:self didScrollToCategory:v24 withCategoryIndex:{-[_UIKeyShortcutHUDMenuViewController currentScrolledToCategoryIndex](self, "currentScrolledToCategoryIndex")}];
    }
  }
}

- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [v4 indexPath];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 client];

    if (v8 == self)
    {
      if (-[_UIKeyShortcutHUDMenuViewController isSearching](self, "isSearching") || ([v4 indexPath], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "item") + 1, WeakRetained = objc_loadWeakRetained(&self->_metrics), v12 = v10 % objc_msgSend(WeakRetained, "numCellsPerColumn"), WeakRetained, v9, v12))
      {
        [v5 addObject:v4];
        v13 = [v4 indexPath];
        v14 = [v13 section];
        if (v14 < [(UICollectionView *)self->_collectionView numberOfSections])
        {
          v15 = [v4 indexPath];
          v16 = [v15 item];
          collectionView = self->_collectionView;
          v18 = [v4 indexPath];
          v19 = -[UICollectionView numberOfItemsInSection:](collectionView, "numberOfItemsInSection:", [v18 section]) - 1;

          if (v16 >= v19)
          {
            goto LABEL_9;
          }

          v20 = MEMORY[0x1E696AC88];
          v21 = [v4 indexPath];
          v22 = [v21 item];
          v23 = [v4 indexPath];
          v24 = [v20 indexPathForItem:v22 + 1 inSection:{objc_msgSend(v23, "section")}];
          v13 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v24];

          [v5 addObject:v13];
        }
      }
    }
  }

LABEL_9:

  return v5;
}

- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [v4 indexPath];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 client];

    if (v8 == self)
    {
      if ([(_UIKeyShortcutHUDMenuViewController *)self isSearching])
      {
        [v5 addObject:v4];
        v9 = [v4 indexPath];
        v10 = [v9 item];

        if (v10 <= 0)
        {
          goto LABEL_10;
        }

LABEL_9:
        v19 = MEMORY[0x1E696AC88];
        v20 = [v4 indexPath];
        v21 = [v20 item] - 1;
        v22 = [v4 indexPath];
        v23 = [v19 indexPathForItem:v21 inSection:{objc_msgSend(v22, "section")}];
        v24 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v23];

        [v5 addObject:v24];
        goto LABEL_10;
      }

      v11 = [v4 indexPath];
      v12 = [v11 item] + 1;
      WeakRetained = objc_loadWeakRetained(&self->_metrics);
      v14 = v12 % [WeakRetained numCellsPerColumn];

      if (v14)
      {
        [v5 addObject:v4];
      }

      v15 = [v4 indexPath];
      v16 = [v15 item];
      v17 = objc_loadWeakRetained(&self->_metrics);
      v18 = v16 % [v17 numCellsPerColumn];

      if (v18)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  return v5;
}

- (void)setSearching:(BOOL)a3
{
  if (self->_searching != a3)
  {
    self->_searching = a3;
    collectionView = self->_collectionView;
    if (a3)
    {
      v6 = [(_UIKeyShortcutHUDMenuViewController *)self _searchModeCollectionViewLayout];
      [(UICollectionView *)collectionView setCollectionViewLayout:v6];

      WeakRetained = objc_loadWeakRetained(&self->_metrics);
      [WeakRetained searchModeMenuTopContentInset];
      v9 = v8;
      v10 = objc_loadWeakRetained(&self->_metrics);
      [v10 searchModeMenuBottomContentInset];
      v12 = v11;
      v13 = self->_collectionView;
      v14 = 0.0;
      v15 = 0.0;
      v16 = v9;
    }

    else
    {
      v17 = [(_UIKeyShortcutHUDMenuViewController *)self _standardModeCollectionViewLayout];
      [(UICollectionView *)collectionView setCollectionViewLayout:v17];

      WeakRetained = objc_loadWeakRetained(&self->_metrics);
      [WeakRetained menuHorizontalContentInset];
      v19 = v18;
      v10 = objc_loadWeakRetained(&self->_metrics);
      [v10 menuHorizontalContentInset];
      v15 = v20;
      v13 = self->_collectionView;
      v16 = 0.0;
      v12 = 0.0;
      v14 = v19;
    }

    [(UICollectionView *)v13 setContentInset:v16, v14, v12, v15];

    v21 = objc_loadWeakRetained(&self->_collectionViewManager);
    [v21 reloadAllVisibleSeparatorsForClient:self];
  }
}

- (void)scrollToCategory:(id)a3 withCategoryIndex:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  [(UIScrollView *)self->_collectionView contentInset];
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained horizontalOffsetForCategoryAtIndex:a4];
  v12 = v11;

  v13 = v12 - (v9 + v9);
  v14 = objc_loadWeakRetained(&self->_metrics);
  [v14 displayedMenuContentWidth];
  v16 = v15;
  [(UIView *)self->_collectionView bounds];
  v18 = v16 - v17 - v9;

  if (v13 < v18)
  {
    v18 = v13;
  }

  collectionView = self->_collectionView;
  [(UIScrollView *)collectionView contentOffset];
  [(UICollectionView *)collectionView setContentOffset:v5 animated:v18];

  [(_UIKeyShortcutHUDMenuViewController *)self setCurrentScrolledToCategoryIndex:a4];
}

- (void)flashShortcutIfVisible:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:a3];
  v8 = [(_UIKeyShortcutHUDMenuViewController *)self collectionViewManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80___UIKeyShortcutHUDMenuViewController_flashShortcutIfVisible_completionHandler___block_invoke;
  v11[3] = &unk_1E7107E48;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  [v8 client:self flashCellIfPossibleAtIndexPath:v9 completionHandler:v11];
}

- (_UIKeyShortcutHUDMenuViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewManager);

  return WeakRetained;
}

- (_UIKeyShortcutHUDMenu)menu
{
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  return WeakRetained;
}

- (UIKeyShortcutHUDMetrics)metrics
{
  WeakRetained = objc_loadWeakRetained(&self->_metrics);

  return WeakRetained;
}

@end