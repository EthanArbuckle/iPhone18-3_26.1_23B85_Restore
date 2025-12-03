@interface _UIKeyShortcutHUDMenuViewController
- (BOOL)shouldPersistSelectionForCellAtIndexPath:(id)path;
- (UIKeyShortcutHUDMetrics)metrics;
- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager;
- (_UIKeyShortcutHUDMenu)menu;
- (_UIKeyShortcutHUDMenuViewControllerDelegate)delegate;
- (id)_searchModeCollectionViewLayout;
- (id)_standardModeCollectionViewLayout;
- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)path;
- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)path;
- (void)_configureCollectionView;
- (void)_displayMenu:(id)menu animatingDifferences:(BOOL)differences;
- (void)_setupSubviews;
- (void)didScrollCollectionView;
- (void)flashShortcutIfVisible:(id)visible completionHandler:(id)handler;
- (void)performActionForSelectingCellAtIndexPath:(id)path;
- (void)scrollToCategory:(id)category withCategoryIndex:(int64_t)index animated:(BOOL)animated;
- (void)setMenu:(id)menu animated:(BOOL)animated;
- (void)setSearching:(BOOL)searching;
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
  view = [(UIViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:v5];

  v8 = *MEMORY[0x1E69796E8];
  view2 = [(UIViewController *)self view];
  layer2 = [view2 layer];
  [layer2 setCornerCurve:v8];

  v11 = objc_loadWeakRetained(&self->_metrics);
  menuPanelCornerMask = [v11 menuPanelCornerMask];
  view3 = [(UIViewController *)self view];
  layer3 = [view3 layer];
  [layer3 setMaskedCorners:menuPanelCornerMask];

  view4 = [(UIViewController *)self view];
  layer4 = [view4 layer];
  [layer4 setMasksToBounds:1];

  v17 = objc_loadWeakRetained(&self->_metrics);
  [v17 menuPanelStrokeWidth];
  v19 = v18;
  view5 = [(UIViewController *)self view];
  layer5 = [view5 layer];
  [layer5 setBorderWidth:v19];

  v22 = objc_loadWeakRetained(&self->_metrics);
  platterStrokeColor = [v22 platterStrokeColor];
  traitCollection = [(UIViewController *)self traitCollection];
  v25 = [platterStrokeColor resolvedColorWithTraitCollection:traitCollection];
  cGColor = [v25 CGColor];
  view6 = [(UIViewController *)self view];
  layer6 = [view6 layer];
  [layer6 setBorderColor:cGColor];

  v29 = objc_loadWeakRetained(&self->_metrics);
  [v29 platterZPosition];
  v31 = v30;
  view7 = [(UIViewController *)self view];
  layer7 = [view7 layer];
  [layer7 setZPosition:v31];

  v34 = [UIVisualEffectView alloc];
  v35 = objc_loadWeakRetained(&self->_metrics);
  platterVisualEffect = [v35 platterVisualEffect];
  v37 = [(UIVisualEffectView *)v34 initWithEffect:platterVisualEffect];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v37;

  view8 = [(UIViewController *)self view];
  [view8 bounds];
  [(UIView *)self->_visualEffectView setFrame:?];

  [(UIView *)self->_visualEffectView setAutoresizingMask:18];
  v40 = [UICollectionView alloc];
  contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [contentView bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  _standardModeCollectionViewLayout = [(_UIKeyShortcutHUDMenuViewController *)self _standardModeCollectionViewLayout];
  v51 = [(UICollectionView *)v40 initWithFrame:_standardModeCollectionViewLayout collectionViewLayout:v43, v45, v47, v49];
  collectionView = self->_collectionView;
  self->_collectionView = v51;

  v53 = objc_loadWeakRetained(&self->_metrics);
  [v53 menuHorizontalContentInset];
  v55 = v54;
  v56 = objc_loadWeakRetained(&self->_metrics);
  [v56 menuHorizontalContentInset];
  [(UICollectionView *)self->_collectionView setContentInset:0.0, v55, 0.0, v57];

  [(UIView *)self->_collectionView setAutoresizingMask:18];
  view9 = [(UIViewController *)self view];
  [view9 addSubview:self->_visualEffectView];

  contentView2 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [contentView2 addSubview:self->_collectionView];
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

  selfCopy = self;
  v13 = objc_loadWeakRetained(&self->_metrics);
  [v13 minShortcutCellWidth];
  v14 = [off_1E70ECB18 estimatedDimension:?];
  v15 = objc_loadWeakRetained(&self->_metrics);
  [v15 menuCellHeight];
  v17 = v16;
  v18 = objc_loadWeakRetained(&self->_metrics);
  v19 = [off_1E70ECB18 absoluteDimension:{v17 * objc_msgSend(v18, "numCellsPerColumn")}];
  v49 = [off_1E70ECB40 sizeWithWidthDimension:v14 heightDimension:v19];

  v20 = objc_loadWeakRetained(&selfCopy->_metrics);
  v21 = [off_1E70ECB28 verticalGroupWithLayoutSize:v49 repeatingSubitem:v50 count:{objc_msgSend(v20, "numCellsPerColumn")}];

  v22 = selfCopy;
  v23 = objc_loadWeakRetained(&selfCopy->_metrics);
  [v23 menuCellHeight];
  v24 = [off_1E70ECB48 fixedSpacing:?];
  v25 = [off_1E70ECB20 spacingForLeading:0 top:v24 trailing:0 bottom:0];
  [v21 setEdgeSpacing:v25];

  v26 = [off_1E70ECB38 sectionWithGroup:v21];
  v27 = objc_loadWeakRetained(&selfCopy->_metrics);
  [v27 menuColumnSpacing];
  [v26 setInterGroupSpacing:?];

  v28 = objc_loadWeakRetained(&selfCopy->_metrics);
  [v28 minShortcutCellWidth];
  v29 = [off_1E70ECB18 estimatedDimension:?];
  v30 = objc_loadWeakRetained(&selfCopy->_metrics);
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
  selfCopy = self;
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
  v14 = selfCopy;
  v15 = objc_loadWeakRetained(&selfCopy->_metrics);
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

- (void)setMenu:(id)menu animated:(BOOL)animated
{
  animatedCopy = animated;
  obj = menu;
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  v7 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_menu, obj);
    isViewLoaded = [(UIViewController *)self isViewLoaded];
    v7 = obj;
    if (isViewLoaded)
    {
      v9 = objc_loadWeakRetained(&self->_menu);
      [(_UIKeyShortcutHUDMenuViewController *)self _displayMenu:v9 animatingDifferences:animatedCopy];

      v10 = objc_loadWeakRetained(&self->_collectionViewManager);
      [v10 reloadAllVisibleSeparatorsForClient:self];

      v7 = obj;
    }
  }
}

- (void)_displayMenu:(id)menu animatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  v23 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  children = [menuCopy children];
  v8 = [children countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(children);
        }

        v21 = *(*(&v17 + 1) + 8 * i);
        v12 = v21;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        [v6 appendSectionsWithIdentifiers:v13];

        children2 = [v12 children];
        [v6 appendItemsWithIdentifiers:children2];
      }

      v9 = [children countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  dataSource = self->_dataSource;
  if (differencesCopy)
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v6 animatingDifferences:1];
  }

  else
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v6];
  }
}

- (void)performActionForSelectingCellAtIndexPath:(id)path
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  if (v4)
  {
    v6 = v4;
    delegate = [(_UIKeyShortcutHUDMenuViewController *)self delegate];
    [delegate menuViewController:self didSelectShortcut:v6];

    v4 = v6;
  }
}

- (BOOL)shouldPersistSelectionForCellAtIndexPath:(id)path
{
  selfCopy = self;
  v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  delegate = [(_UIKeyShortcutHUDMenuViewController *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate menuViewController:selfCopy shouldPersistSelectionForShortcut:v4];

  return selfCopy;
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
        children = [WeakRetained children];
        v19 = [children count] - 1;
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
      children2 = [v21 children];
      v24 = [children2 objectAtIndexedSubscript:{-[_UIKeyShortcutHUDMenuViewController currentScrolledToCategoryIndex](self, "currentScrolledToCategoryIndex")}];

      delegate = [(_UIKeyShortcutHUDMenuViewController *)self delegate];
      [delegate menuViewController:self didScrollToCategory:v24 withCategoryIndex:{-[_UIKeyShortcutHUDMenuViewController currentScrolledToCategoryIndex](self, "currentScrolledToCategoryIndex")}];
    }
  }
}

- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E695DFA8] set];
  indexPath = [pathCopy indexPath];
  if (indexPath)
  {
    v7 = indexPath;
    client = [pathCopy client];

    if (client == self)
    {
      if (-[_UIKeyShortcutHUDMenuViewController isSearching](self, "isSearching") || ([pathCopy indexPath], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "item") + 1, WeakRetained = objc_loadWeakRetained(&self->_metrics), v12 = v10 % objc_msgSend(WeakRetained, "numCellsPerColumn"), WeakRetained, v9, v12))
      {
        [v5 addObject:pathCopy];
        indexPath2 = [pathCopy indexPath];
        section = [indexPath2 section];
        if (section < [(UICollectionView *)self->_collectionView numberOfSections])
        {
          indexPath3 = [pathCopy indexPath];
          item = [indexPath3 item];
          collectionView = self->_collectionView;
          indexPath4 = [pathCopy indexPath];
          v19 = -[UICollectionView numberOfItemsInSection:](collectionView, "numberOfItemsInSection:", [indexPath4 section]) - 1;

          if (item >= v19)
          {
            goto LABEL_9;
          }

          v20 = MEMORY[0x1E696AC88];
          indexPath5 = [pathCopy indexPath];
          item2 = [indexPath5 item];
          indexPath6 = [pathCopy indexPath];
          v24 = [v20 indexPathForItem:item2 + 1 inSection:{objc_msgSend(indexPath6, "section")}];
          indexPath2 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v24];

          [v5 addObject:indexPath2];
        }
      }
    }
  }

LABEL_9:

  return v5;
}

- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E695DFA8] set];
  indexPath = [pathCopy indexPath];
  if (indexPath)
  {
    v7 = indexPath;
    client = [pathCopy client];

    if (client == self)
    {
      if ([(_UIKeyShortcutHUDMenuViewController *)self isSearching])
      {
        [v5 addObject:pathCopy];
        indexPath2 = [pathCopy indexPath];
        item = [indexPath2 item];

        if (item <= 0)
        {
          goto LABEL_10;
        }

LABEL_9:
        v19 = MEMORY[0x1E696AC88];
        indexPath3 = [pathCopy indexPath];
        v21 = [indexPath3 item] - 1;
        indexPath4 = [pathCopy indexPath];
        v23 = [v19 indexPathForItem:v21 inSection:{objc_msgSend(indexPath4, "section")}];
        v24 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v23];

        [v5 addObject:v24];
        goto LABEL_10;
      }

      indexPath5 = [pathCopy indexPath];
      v12 = [indexPath5 item] + 1;
      WeakRetained = objc_loadWeakRetained(&self->_metrics);
      v14 = v12 % [WeakRetained numCellsPerColumn];

      if (v14)
      {
        [v5 addObject:pathCopy];
      }

      indexPath6 = [pathCopy indexPath];
      item2 = [indexPath6 item];
      v17 = objc_loadWeakRetained(&self->_metrics);
      v18 = item2 % [v17 numCellsPerColumn];

      if (v18)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  return v5;
}

- (void)setSearching:(BOOL)searching
{
  if (self->_searching != searching)
  {
    self->_searching = searching;
    collectionView = self->_collectionView;
    if (searching)
    {
      _searchModeCollectionViewLayout = [(_UIKeyShortcutHUDMenuViewController *)self _searchModeCollectionViewLayout];
      [(UICollectionView *)collectionView setCollectionViewLayout:_searchModeCollectionViewLayout];

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
      _standardModeCollectionViewLayout = [(_UIKeyShortcutHUDMenuViewController *)self _standardModeCollectionViewLayout];
      [(UICollectionView *)collectionView setCollectionViewLayout:_standardModeCollectionViewLayout];

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

- (void)scrollToCategory:(id)category withCategoryIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIScrollView *)self->_collectionView contentInset];
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained horizontalOffsetForCategoryAtIndex:index];
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
  [(UICollectionView *)collectionView setContentOffset:animatedCopy animated:v18];

  [(_UIKeyShortcutHUDMenuViewController *)self setCurrentScrolledToCategoryIndex:index];
}

- (void)flashShortcutIfVisible:(id)visible completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:visible];
  collectionViewManager = [(_UIKeyShortcutHUDMenuViewController *)self collectionViewManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80___UIKeyShortcutHUDMenuViewController_flashShortcutIfVisible_completionHandler___block_invoke;
  v11[3] = &unk_1E7107E48;
  v12 = v7;
  v13 = handlerCopy;
  v9 = v7;
  v10 = handlerCopy;
  [collectionViewManager client:self flashCellIfPossibleAtIndexPath:v9 completionHandler:v11];
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