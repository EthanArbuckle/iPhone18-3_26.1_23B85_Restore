@interface _UIKeyShortcutHUDToolbarViewController
- (BOOL)_shouldHideScrollingSeparatorView;
- (UIKeyShortcutHUDMetrics)metrics;
- (_UIKeyShortcutHUDCell)cellForSearchTransition;
- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager;
- (_UIKeyShortcutHUDIndexPath)firstCategoryIndexPath;
- (_UIKeyShortcutHUDMenu)menu;
- (_UIKeyShortcutHUDToolbarViewControllerDelegate)delegate;
- (id)_collectionViewLayout;
- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)path;
- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)path;
- (void)_configureCollectionView;
- (void)_configureSeparatorViewAppearance:(id)appearance;
- (void)_setupSubviews;
- (void)categoriesPageControlCurrentPageChanged:(id)changed;
- (void)didCompleteSearchTransition;
- (void)flashCategoryAtIndex:(unint64_t)index completionHandler:(id)handler;
- (void)hudWillBecomeHidden:(BOOL)hidden;
- (void)performActionForSelectingCellAtIndexPath:(id)path;
- (void)prepareForSearchTransition:(BOOL)transition;
- (void)searchBar:(id)bar didUpdateSearchText:(id)text;
- (void)searchBarDidPressCancelButton:(id)button;
- (void)searchButtonDidPress:(id)press;
- (void)selectCategory:(id)category withCategoryIndex:(int64_t)index;
- (void)setSearching:(BOOL)searching;
- (void)updateScrollingSeparatorViewVisibility;
- (void)viewDidLoad;
@end

@implementation _UIKeyShortcutHUDToolbarViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDToolbarViewController;
  [(UIViewController *)&v3 viewDidLoad];
  [(_UIKeyShortcutHUDToolbarViewController *)self _setupSubviews];
  [(_UIKeyShortcutHUDToolbarViewController *)self _configureCollectionView];
}

- (void)_setupSubviews
{
  v162[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained toolbarPlatterCornerRadius];
  v5 = v4;
  view = [(UIViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:v5];

  v8 = *MEMORY[0x1E69796E8];
  view2 = [(UIViewController *)self view];
  layer2 = [view2 layer];
  [layer2 setCornerCurve:v8];

  v11 = objc_loadWeakRetained(&self->_metrics);
  toolbarPanelCornerMask = [v11 toolbarPanelCornerMask];
  view3 = [(UIViewController *)self view];
  layer3 = [view3 layer];
  [layer3 setMaskedCorners:toolbarPanelCornerMask];

  view4 = [(UIViewController *)self view];
  layer4 = [view4 layer];
  [layer4 setMasksToBounds:1];

  v17 = objc_loadWeakRetained(&self->_metrics);
  [v17 toolbarPanelStrokeWidth];
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
  view9 = [(UIViewController *)self view];
  [view9 addSubview:self->_visualEffectView];

  v41 = objc_opt_new();
  toolbarContentView = self->_toolbarContentView;
  self->_toolbarContentView = v41;

  [(UIView *)self->_toolbarContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [contentView addSubview:self->_toolbarContentView];

  v128 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)self->_toolbarContentView topAnchor];
  contentView2 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  topAnchor2 = [contentView2 topAnchor];
  v140 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v162[0] = v140;
  leadingAnchor = [(UIView *)self->_toolbarContentView leadingAnchor];
  contentView3 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v125 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v162[1] = v125;
  trailingAnchor = [(UIView *)self->_toolbarContentView trailingAnchor];
  contentView4 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v162[2] = v46;
  bottomAnchor = [(UIView *)self->_toolbarContentView bottomAnchor];
  contentView5 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  safeAreaLayoutGuide = [contentView5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v162[3] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:4];
  [v128 activateConstraints:v52];

  v53 = objc_opt_new();
  searchButton = self->_searchButton;
  self->_searchButton = v53;

  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton setDelegate:self];
  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton setToolbarVC:self];
  [(UIView *)self->_searchButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_toolbarContentView addSubview:self->_searchButton];
  v55 = [_UIKeyShortcutHUDSearchBar alloc];
  [(UIView *)self->_toolbarContentView bounds];
  v56 = [(_UIKeyShortcutHUDSearchBar *)v55 initWithFrame:?];
  searchBar = self->_searchBar;
  self->_searchBar = v56;

  [(UIView *)self->_searchBar setUserInteractionEnabled:0];
  [(_UIKeyShortcutHUDSearchBar *)self->_searchBar setDelegate:self];
  [(_UIKeyShortcutHUDSearchBar *)self->_searchBar setSearchButton:self->_searchButton];
  [(UIView *)self->_searchBar setAutoresizingMask:18];
  [(UIView *)self->_toolbarContentView addSubview:self->_searchBar];
  v58 = objc_opt_new();
  categoriesContentView = self->_categoriesContentView;
  self->_categoriesContentView = v58;

  [(UIView *)self->_categoriesContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_toolbarContentView addSubview:self->_categoriesContentView];
  v123 = MEMORY[0x1E69977A0];
  leadingAnchor3 = [(UIView *)self->_searchButton leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_toolbarContentView leadingAnchor];
  v144 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v161[0] = v144;
  topAnchor3 = [(UIView *)self->_searchButton topAnchor];
  topAnchor4 = [(UIView *)self->_toolbarContentView topAnchor];
  v135 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v161[1] = v135;
  bottomAnchor3 = [(UIView *)self->_searchButton bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_toolbarContentView bottomAnchor];
  v126 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v161[2] = v126;
  widthAnchor = [(UIView *)self->_searchButton widthAnchor];
  v120 = objc_loadWeakRetained(&self->_metrics);
  [v120 searchButtonWidth];
  v117 = [widthAnchor constraintEqualToConstant:?];
  v161[3] = v117;
  leadingAnchor5 = [(UIView *)self->_categoriesContentView leadingAnchor];
  trailingAnchor3 = [(UIView *)self->_searchButton trailingAnchor];
  v114 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
  v161[4] = v114;
  topAnchor5 = [(UIView *)self->_categoriesContentView topAnchor];
  topAnchor6 = [(UIView *)self->_toolbarContentView topAnchor];
  v60 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v161[5] = v60;
  bottomAnchor5 = [(UIView *)self->_categoriesContentView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_toolbarContentView bottomAnchor];
  v63 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v161[6] = v63;
  trailingAnchor4 = [(UIView *)self->_categoriesContentView trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_toolbarContentView trailingAnchor];
  v66 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v161[7] = v66;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:8];
  [v123 activateConstraints:v67];

  v68 = [UICollectionView alloc];
  [(UIView *)self->_categoriesContentView bounds];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  _collectionViewLayout = [(_UIKeyShortcutHUDToolbarViewController *)self _collectionViewLayout];
  v78 = [(UICollectionView *)v68 initWithFrame:_collectionViewLayout collectionViewLayout:v70, v72, v74, v76];
  collectionView = self->_collectionView;
  self->_collectionView = v78;

  v80 = objc_loadWeakRetained(&self->_metrics);
  -[UIView setHidden:](self->_collectionView, "setHidden:", [v80 toolbarStylesCategoriesAsPageControl]);

  [(UIView *)self->_collectionView setAutoresizingMask:18];
  [(UIView *)self->_categoriesContentView addSubview:self->_collectionView];
  v81 = objc_opt_new();
  categoriesPageControl = self->_categoriesPageControl;
  self->_categoriesPageControl = v81;

  [(UIControl *)self->_categoriesPageControl addTarget:self action:sel_categoriesPageControlCurrentPageChanged_ forControlEvents:4096];
  v83 = +[UIKeyShortcutHUDMetrics currentMetrics];
  standardHUDTextColor = [v83 standardHUDTextColor];
  [(UIPageControl *)self->_categoriesPageControl setCurrentPageIndicatorTintColor:standardHUDTextColor];

  v85 = +[UIColor tertiaryLabelColor];
  [(UIPageControl *)self->_categoriesPageControl setPageIndicatorTintColor:v85];

  v86 = [UIBlurEffect effectWithStyle:6];
  [(UIPageControl *)self->_categoriesPageControl _setPlatterEffect:v86];

  [(UIPageControl *)self->_categoriesPageControl setHidesForSinglePage:1];
  v87 = objc_loadWeakRetained(&self->_metrics);
  -[UIView setHidden:](self->_categoriesPageControl, "setHidden:", [v87 toolbarStylesCategoriesAsPageControl] ^ 1);

  [(UIView *)self->_categoriesPageControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_categoriesContentView addSubview:self->_categoriesPageControl];
  v88 = objc_opt_new();
  scrollingSeparatorView = self->_scrollingSeparatorView;
  self->_scrollingSeparatorView = v88;

  [(_UIKeyShortcutHUDToolbarViewController *)self _configureSeparatorViewAppearance:self->_scrollingSeparatorView];
  [(_UIKeyShortcutHUDSeparatorView *)self->_scrollingSeparatorView setSeparatorHidden:1];
  [(UIView *)self->_scrollingSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_categoriesContentView addSubview:self->_scrollingSeparatorView];
  v130 = MEMORY[0x1E69977A0];
  centerXAnchor = [(UIView *)self->_categoriesPageControl centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_toolbarContentView centerXAnchor];
  v145 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v160[0] = v145;
  centerYAnchor = [(UIView *)self->_categoriesPageControl centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_toolbarContentView centerYAnchor];
  v139 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v160[1] = v139;
  leadingAnchor6 = [(UIView *)self->_scrollingSeparatorView leadingAnchor];
  leadingAnchor7 = [(UIView *)self->_categoriesContentView leadingAnchor];
  v127 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v160[2] = v127;
  topAnchor7 = [(UIView *)self->_scrollingSeparatorView topAnchor];
  topAnchor8 = [(UIView *)self->_categoriesContentView topAnchor];
  v121 = objc_loadWeakRetained(&self->_metrics);
  [v121 toolbarContentInset];
  v90 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:?];
  v160[3] = v90;
  bottomAnchor7 = [(UIView *)self->_scrollingSeparatorView bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_categoriesContentView bottomAnchor];
  v93 = objc_loadWeakRetained(&self->_metrics);
  [v93 toolbarContentInset];
  v95 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v94];
  v160[4] = v95;
  widthAnchor2 = [(UIView *)self->_scrollingSeparatorView widthAnchor];
  v97 = objc_loadWeakRetained(&self->_metrics);
  [v97 separatorWidth];
  v98 = [widthAnchor2 constraintEqualToConstant:?];
  v160[5] = v98;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:6];
  [v130 activateConstraints:v99];

  v100 = objc_loadWeakRetained(&self->_metrics);
  LODWORD(v98) = [v100 toolbarStylesCategoriesAsPageControl];

  if (v98)
  {
    v101 = objc_opt_new();
    v159 = self->_searchButton;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
    [v101 setPreferredFocusEnvironments:v102];

    [(UIView *)self->_categoriesContentView addLayoutGuide:v101];
    v146 = MEMORY[0x1E69977A0];
    leadingAnchor8 = [v101 leadingAnchor];
    leadingAnchor9 = [(UIView *)self->_categoriesContentView leadingAnchor];
    v154 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v158[0] = v154;
    topAnchor9 = [v101 topAnchor];
    topAnchor10 = [(UIView *)self->_categoriesContentView topAnchor];
    v104 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v158[1] = v104;
    trailingAnchor6 = [v101 trailingAnchor];
    trailingAnchor7 = [(UIView *)self->_categoriesContentView trailingAnchor];
    v107 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v158[2] = v107;
    bottomAnchor9 = [v101 bottomAnchor];
    bottomAnchor10 = [(UIView *)self->_categoriesContentView bottomAnchor];
    v110 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v158[3] = v110;
    v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:4];
    [v146 activateConstraints:v111];
  }
}

- (void)_configureCollectionView
{
  objc_initWeak(&location, self);
  v3 = objc_opt_self();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke;
  v25[3] = &unk_1E712CE70;
  objc_copyWeak(&v26, &location);
  v4 = [UICollectionViewCellRegistration registrationWithCellClass:v3 configurationHandler:v25];

  v5 = objc_opt_self();
  v6 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke_3;
  v23[3] = &unk_1E7109620;
  objc_copyWeak(&v24, &location);
  v7 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v5 elementKind:v6 configurationHandler:v23];

  v8 = [UICollectionViewDiffableDataSource alloc];
  collectionView = self->_collectionView;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke_4;
  v21[3] = &unk_1E7109670;
  v10 = v4;
  v22 = v10;
  v11 = [(UICollectionViewDiffableDataSource *)v8 initWithCollectionView:collectionView cellProvider:v21];
  dataSource = self->_dataSource;
  self->_dataSource = v11;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66___UIKeyShortcutHUDToolbarViewController__configureCollectionView__block_invoke_5;
  v19[3] = &unk_1E712CE98;
  v13 = v7;
  v20 = v13;
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:v19];
  objc_storeStrong(&self->_categoryCellRegistration, v4);
  objc_storeStrong(&self->_cellSeparatorRegistration, v7);
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  LODWORD(v7) = [WeakRetained toolbarStylesCategoriesAsPageControl];

  if (v7)
  {
    snapshot = objc_loadWeakRetained(&self->_menu);
    children = [snapshot children];
    -[UIPageControl setNumberOfPages:](self->_categoriesPageControl, "setNumberOfPages:", [children count]);
  }

  else
  {
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [snapshot appendSectionsWithIdentifiers:&unk_1EFE2E0E0];
    v17 = objc_loadWeakRetained(&self->_menu);
    children2 = [v17 children];
    [snapshot appendItemsWithIdentifiers:children2];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (id)_collectionViewLayout
{
  v3 = objc_opt_new();
  [v3 setScrollDirection:1];
  objc_initWeak(&location, self);
  v4 = [UICollectionViewCompositionalLayout alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UIKeyShortcutHUDToolbarViewController__collectionViewLayout__block_invoke;
  v7[3] = &unk_1E711BBD8;
  objc_copyWeak(&v8, &location);
  v5 = [(UICollectionViewCompositionalLayout *)v4 initWithSectionProvider:v7 configuration:v3];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (void)performActionForSelectingCellAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(_UIKeyShortcutHUDToolbarViewController *)self isSearching]&& ![(_UIKeyShortcutHUDToolbarViewController *)self isPreparingSearchTransition])
  {
    collectionViewManager = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
    [collectionViewManager client:self setCategoryVisibleForCellAtIndexPath:pathCopy];

    menu = [(_UIKeyShortcutHUDToolbarViewController *)self menu];
    children = [menu children];
    v7 = [children objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    delegate = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
    [delegate toolbarViewController:self didSelectCategory:v7 categoryIndex:objc_msgSend(pathCopy animated:{"item"), 1}];
  }
}

- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (pathCopy)
  {
    client = [pathCopy client];

    if (client == self)
    {
      indexPath = [pathCopy indexPath];
      item = [indexPath item];

      if (item >= 1)
      {
        [v5 addObject:pathCopy];
        v9 = MEMORY[0x1E696AC88];
        indexPath2 = [pathCopy indexPath];
        v11 = [indexPath2 item] - 1;
        indexPath3 = [pathCopy indexPath];
        v13 = [v9 indexPathForItem:v11 inSection:{objc_msgSend(indexPath3, "section")}];
        v14 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v13];

        [v5 addObject:v14];
      }
    }
  }

  return v5;
}

- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (pathCopy)
  {
    client = [pathCopy client];

    if (client == self)
    {
      indexPath = [pathCopy indexPath];
      item = [indexPath item];

      if (item >= 1)
      {
        [v5 addObject:pathCopy];
      }

      indexPath2 = [pathCopy indexPath];
      item2 = [indexPath2 item];
      WeakRetained = objc_loadWeakRetained(&self->_menu);
      children = [WeakRetained children];
      v13 = [children count] - 1;

      if (item2 < v13)
      {
        v14 = MEMORY[0x1E696AC88];
        indexPath3 = [pathCopy indexPath];
        item3 = [indexPath3 item];
        indexPath4 = [pathCopy indexPath];
        v18 = [v14 indexPathForItem:item3 + 1 inSection:{objc_msgSend(indexPath4, "section")}];
        v19 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v18];

        [v5 addObject:v19];
      }
    }
  }

  return v5;
}

- (_UIKeyShortcutHUDIndexPath)firstCategoryIndexPath
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v3];

  return v4;
}

- (void)_configureSeparatorViewAppearance:(id)appearance
{
  appearanceCopy = appearance;
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained toolbarSeparatorVerticalMargin];
  v7 = v6;

  [appearanceCopy setDirectionalLayoutMargins:{v7, 0.0, v7, 0.0}];
  v8 = objc_loadWeakRetained(&self->_metrics);
  toolbarSeparatorColor = [v8 toolbarSeparatorColor];
  [appearanceCopy setSeparatorColor:toolbarSeparatorColor];

  v11 = objc_loadWeakRetained(&self->_metrics);
  toolbarSeparatorVisualEffect = [v11 toolbarSeparatorVisualEffect];
  [appearanceCopy setVisualEffect:toolbarSeparatorVisualEffect];
}

- (void)updateScrollingSeparatorViewVisibility
{
  _shouldHideScrollingSeparatorView = [(_UIKeyShortcutHUDToolbarViewController *)self _shouldHideScrollingSeparatorView];
  scrollingSeparatorView = self->_scrollingSeparatorView;

  [(_UIKeyShortcutHUDSeparatorView *)scrollingSeparatorView setSeparatorHidden:_shouldHideScrollingSeparatorView];
}

- (BOOL)_shouldHideScrollingSeparatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  toolbarStylesCategoriesAsPageControl = [WeakRetained toolbarStylesCategoriesAsPageControl];

  if (toolbarStylesCategoriesAsPageControl)
  {
    return 1;
  }

  collectionView = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
  searchButtonIndexPath = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton searchButtonIndexPath];
  indexPath = [searchButtonIndexPath indexPath];
  v9 = [collectionView cellForItemAtIndexPath:indexPath];

  if ([v9 isBackgroundVisible])
  {
    isBackgroundVisible = 1;
  }

  else
  {
    collectionView = self->_collectionView;
    firstCategoryIndexPath = [(_UIKeyShortcutHUDToolbarViewController *)self firstCategoryIndexPath];
    indexPath2 = [firstCategoryIndexPath indexPath];
    v13 = [(UICollectionView *)collectionView cellForItemAtIndexPath:indexPath2];

    if ([v13 isBackgroundVisible] && (-[UIScrollView contentOffset](self->_collectionView, "contentOffset"), v14 < 0.0))
    {
      isBackgroundVisible = 1;
      v9 = v13;
    }

    else
    {
      [(UIScrollView *)self->_collectionView contentOffset];
      v16 = v15;
      [(UIView *)self->_collectionView bounds];
      v17 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:v16, CGRectGetMidY(v19)];
      v9 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v17];

      isBackgroundVisible = [v9 isBackgroundVisible];
    }
  }

  return isBackgroundVisible;
}

- (void)prepareForSearchTransition:(BOOL)transition
{
  transitionCopy = transition;
  [(_UIKeyShortcutHUDToolbarViewController *)self setPreparingSearchTransition:1];
  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton prepareForSearchTransition:transitionCopy];
  if (!transitionCopy)
  {
    [(UIView *)self->_categoriesContentView setUserInteractionEnabled:1];
    WeakRetained = objc_loadWeakRetained(&self->_collectionViewManager);
    [WeakRetained deselectCurrentlySelectedCell];

    searchBar = [(_UIKeyShortcutHUDToolbarViewController *)self searchBar];
    [searchBar resignFirstResponder];

    [(_UIKeyShortcutHUDSearchBar *)self->_searchBar setText:0];
    [(UIView *)self->_searchBar setUserInteractionEnabled:0];
    [(UIView *)self->_searchButton setUserInteractionEnabled:1];
    [(UIViewController *)self updateFocusIfNeeded];
    searchTextField = [(_UIKeyShortcutHUDSearchBar *)self->_searchBar searchTextField];
    if (__UIAccessibilityBroadcastCallback)
    {
      __UIAccessibilityBroadcastCallback(1001, searchTextField);
    }
  }

  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count])
  {
    effectiveUserInterfaceLayoutDirection = [(UIView *)self->_collectionView effectiveUserInterfaceLayoutDirection];

    if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionLeftToRight)
    {
      collectionView = self->_collectionView;
      indexPathsForSelectedItems2 = [(UICollectionView *)collectionView indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems2 firstObject];
      v13 = [(UICollectionView *)collectionView cellForItemAtIndexPath:firstObject];
      objc_storeWeak(&self->_cellForSearchTransition, v13);

      goto LABEL_11;
    }
  }

  else
  {
  }

  collectionView = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
  indexPathsForSelectedItems3 = [collectionView indexPathsForSelectedItems];
  v16 = [indexPathsForSelectedItems3 count];

  if (v16)
  {
    collectionView2 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
    collectionView3 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
    indexPathsForSelectedItems4 = [collectionView3 indexPathsForSelectedItems];
    firstObject2 = [indexPathsForSelectedItems4 firstObject];
    v21 = [collectionView2 cellForItemAtIndexPath:firstObject2];
    objc_storeWeak(&self->_cellForSearchTransition, v21);
  }

LABEL_11:
  v22 = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [v22 setDrawsBackground:1];

  v23 = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [v23 layoutIfNeeded];

  searchBar = self->_searchBar;
  v25 = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [(_UIKeyShortcutHUDSearchBar *)searchBar prepareForSearchTransition:transitionCopy usingCell:v25];

  if (transitionCopy)
  {
    [(UIView *)self->_searchBar setUserInteractionEnabled:1];
    [(_UIKeyShortcutHUDSearchBar *)self->_searchBar becomeFirstResponder];
    [(UIView *)self->_categoriesContentView setUserInteractionEnabled:0];
    [(UIView *)self->_searchButton setUserInteractionEnabled:0];
    if (self->_searching)
    {
      [(_UIKeyShortcutHUDSearchBar *)self->_searchBar selectAll:0];
    }

    if (__UIAccessibilityBroadcastCallback)
    {
      __UIAccessibilityBroadcastCallback(1001, self->_searchButton);
    }
  }

  [(_UIKeyShortcutHUDToolbarViewController *)self setPreparingSearchTransition:0];
}

- (void)setSearching:(BOOL)searching
{
  searchingCopy = searching;
  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton setSearching:?];
  [(_UIKeyShortcutHUDSearchBar *)self->_searchBar setSearching:searchingCopy];
  if (self->_searching != searchingCopy)
  {
    self->_searching = searchingCopy;
    categoriesContentView = self->_categoriesContentView;
    if (searchingCopy)
    {

      [(UIView *)categoriesContentView setAlpha:0.0];
    }

    else
    {
      [(UIView *)categoriesContentView setAlpha:1.0];
      WeakRetained = objc_loadWeakRetained(&self->_cellForSearchTransition);
      superview = [WeakRetained superview];
      collectionView = self->_collectionView;

      if (superview == collectionView)
      {
        v9 = self->_collectionView;
        v10 = objc_loadWeakRetained(&self->_cellForSearchTransition);
        v11 = [(UICollectionView *)v9 indexPathForCell:v10];

        [(_UIKeyShortcutHUDToolbarViewController *)self performActionForSelectingCellAtIndexPath:v11];
      }

      collectionView = [(_UIKeyShortcutHUDToolbarViewController *)self collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }
  }
}

- (void)didCompleteSearchTransition
{
  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton didCompleteSearchTransition];
  [(_UIKeyShortcutHUDSearchBar *)self->_searchBar didCompleteSearchTransition];
  WeakRetained = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [WeakRetained setDrawsBackground:0];

  objc_storeWeak(&self->_cellForSearchTransition, 0);
  if ([(_UIKeyShortcutHUDToolbarViewController *)self isSearching])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___UIKeyShortcutHUDToolbarViewController_didCompleteSearchTransition__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)searchBarDidPressCancelButton:(id)button
{
  delegate = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  [delegate toolbarViewControllerDidPressCancelSearchButton:self];
}

- (void)searchBar:(id)bar didUpdateSearchText:(id)text
{
  textCopy = text;
  delegate = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  [delegate toolbarViewController:self didUpdateSearchText:textCopy];
}

- (void)searchButtonDidPress:(id)press
{
  delegate = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  [delegate toolbarViewControllerDidPressSearchButton:self];
}

- (void)hudWillBecomeHidden:(BOOL)hidden
{
  if (hidden)
  {
    visualEffectView = [(_UIKeyShortcutHUDToolbarViewController *)self visualEffectView];
    contentView = [visualEffectView contentView];
    [contentView _setSafeAreaInsetsFrozen:1];
  }
}

- (void)selectCategory:(id)category withCategoryIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  toolbarStylesCategoriesAsPageControl = [WeakRetained toolbarStylesCategoriesAsPageControl];

  if (toolbarStylesCategoriesAsPageControl)
  {
    if ([(UIPageControl *)self->_categoriesPageControl interactionState]== UIPageControlInteractionStateNone)
    {
      categoriesPageControl = self->_categoriesPageControl;

      [(UIPageControl *)categoriesPageControl setCurrentPage:index];
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
    collectionViewManager = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
    [collectionViewManager client:self setCategoryVisibleForCellAtIndexPath:v23];

    v9 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:v23];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    v18 = CGRectGetWidth(v25) * -0.5;
    v26.origin.x = v11;
    v26.origin.y = v13;
    v26.size.width = v15;
    v26.size.height = v17;
    v27 = CGRectInset(v26, v18, 0.0);
    [(UIScrollView *)self->_collectionView scrollRectToVisible:1 animated:v27.origin.x, v27.origin.y, v27.size.width, v27.size.height];
    indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
    v20 = [indexPathsForSelectedItems count];

    if (v20)
    {
      collectionViewManager2 = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
      [collectionViewManager2 client:self selectCellAtIndexPath:v23];
    }
  }
}

- (void)categoriesPageControlCurrentPageChanged:(id)changed
{
  changedCopy = changed;
  menu = [(_UIKeyShortcutHUDToolbarViewController *)self menu];
  children = [menu children];
  v10 = [children objectAtIndexedSubscript:{objc_msgSend(changedCopy, "currentPage")}];

  v7 = [changedCopy interactionState] == 1;
  delegate = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  currentPage = [changedCopy currentPage];

  [delegate toolbarViewController:self didSelectCategory:v10 categoryIndex:currentPage animated:v7];
}

- (void)flashCategoryAtIndex:(unint64_t)index completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
  collectionViewManager = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___UIKeyShortcutHUDToolbarViewController_flashCategoryAtIndex_completionHandler___block_invoke;
  v10[3] = &unk_1E70F3608;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [collectionViewManager client:self flashCellIfPossibleAtIndexPath:v7 completionHandler:v10];
}

- (_UIKeyShortcutHUDToolbarViewControllerDelegate)delegate
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

- (_UIKeyShortcutHUDCell)cellForSearchTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_cellForSearchTransition);

  return WeakRetained;
}

@end