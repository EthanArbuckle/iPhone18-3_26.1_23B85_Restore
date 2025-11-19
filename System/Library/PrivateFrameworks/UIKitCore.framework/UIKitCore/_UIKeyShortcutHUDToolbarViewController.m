@interface _UIKeyShortcutHUDToolbarViewController
- (BOOL)_shouldHideScrollingSeparatorView;
- (UIKeyShortcutHUDMetrics)metrics;
- (_UIKeyShortcutHUDCell)cellForSearchTransition;
- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager;
- (_UIKeyShortcutHUDIndexPath)firstCategoryIndexPath;
- (_UIKeyShortcutHUDMenu)menu;
- (_UIKeyShortcutHUDToolbarViewControllerDelegate)delegate;
- (id)_collectionViewLayout;
- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)a3;
- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)a3;
- (void)_configureCollectionView;
- (void)_configureSeparatorViewAppearance:(id)a3;
- (void)_setupSubviews;
- (void)categoriesPageControlCurrentPageChanged:(id)a3;
- (void)didCompleteSearchTransition;
- (void)flashCategoryAtIndex:(unint64_t)a3 completionHandler:(id)a4;
- (void)hudWillBecomeHidden:(BOOL)a3;
- (void)performActionForSelectingCellAtIndexPath:(id)a3;
- (void)prepareForSearchTransition:(BOOL)a3;
- (void)searchBar:(id)a3 didUpdateSearchText:(id)a4;
- (void)searchBarDidPressCancelButton:(id)a3;
- (void)searchButtonDidPress:(id)a3;
- (void)selectCategory:(id)a3 withCategoryIndex:(int64_t)a4;
- (void)setSearching:(BOOL)a3;
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
  v6 = [(UIViewController *)self view];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = *MEMORY[0x1E69796E8];
  v9 = [(UIViewController *)self view];
  v10 = [v9 layer];
  [v10 setCornerCurve:v8];

  v11 = objc_loadWeakRetained(&self->_metrics);
  v12 = [v11 toolbarPanelCornerMask];
  v13 = [(UIViewController *)self view];
  v14 = [v13 layer];
  [v14 setMaskedCorners:v12];

  v15 = [(UIViewController *)self view];
  v16 = [v15 layer];
  [v16 setMasksToBounds:1];

  v17 = objc_loadWeakRetained(&self->_metrics);
  [v17 toolbarPanelStrokeWidth];
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
  v40 = [(UIViewController *)self view];
  [v40 addSubview:self->_visualEffectView];

  v41 = objc_opt_new();
  toolbarContentView = self->_toolbarContentView;
  self->_toolbarContentView = v41;

  [(UIView *)self->_toolbarContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [v43 addSubview:self->_toolbarContentView];

  v128 = MEMORY[0x1E69977A0];
  v147 = [(UIView *)self->_toolbarContentView topAnchor];
  v151 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  v143 = [v151 topAnchor];
  v140 = [v147 constraintEqualToAnchor:v143];
  v162[0] = v140;
  v134 = [(UIView *)self->_toolbarContentView leadingAnchor];
  v137 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  v131 = [v137 leadingAnchor];
  v125 = [v134 constraintEqualToAnchor:v131];
  v162[1] = v125;
  v122 = [(UIView *)self->_toolbarContentView trailingAnchor];
  v44 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  v45 = [v44 trailingAnchor];
  v46 = [v122 constraintEqualToAnchor:v45];
  v162[2] = v46;
  v47 = [(UIView *)self->_toolbarContentView bottomAnchor];
  v48 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  v49 = [v48 safeAreaLayoutGuide];
  v50 = [v49 bottomAnchor];
  v51 = [v47 constraintEqualToAnchor:v50];
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
  v152 = [(UIView *)self->_searchButton leadingAnchor];
  v148 = [(UIView *)self->_toolbarContentView leadingAnchor];
  v144 = [v152 constraintEqualToAnchor:v148];
  v161[0] = v144;
  v141 = [(UIView *)self->_searchButton topAnchor];
  v138 = [(UIView *)self->_toolbarContentView topAnchor];
  v135 = [v141 constraintEqualToAnchor:v138];
  v161[1] = v135;
  v132 = [(UIView *)self->_searchButton bottomAnchor];
  v129 = [(UIView *)self->_toolbarContentView bottomAnchor];
  v126 = [v132 constraintEqualToAnchor:v129];
  v161[2] = v126;
  v118 = [(UIView *)self->_searchButton widthAnchor];
  v120 = objc_loadWeakRetained(&self->_metrics);
  [v120 searchButtonWidth];
  v117 = [v118 constraintEqualToConstant:?];
  v161[3] = v117;
  v116 = [(UIView *)self->_categoriesContentView leadingAnchor];
  v115 = [(UIView *)self->_searchButton trailingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v161[4] = v114;
  v113 = [(UIView *)self->_categoriesContentView topAnchor];
  v112 = [(UIView *)self->_toolbarContentView topAnchor];
  v60 = [v113 constraintEqualToAnchor:v112];
  v161[5] = v60;
  v61 = [(UIView *)self->_categoriesContentView bottomAnchor];
  v62 = [(UIView *)self->_toolbarContentView bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  v161[6] = v63;
  v64 = [(UIView *)self->_categoriesContentView trailingAnchor];
  v65 = [(UIView *)self->_toolbarContentView trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  v161[7] = v66;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:8];
  [v123 activateConstraints:v67];

  v68 = [UICollectionView alloc];
  [(UIView *)self->_categoriesContentView bounds];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = [(_UIKeyShortcutHUDToolbarViewController *)self _collectionViewLayout];
  v78 = [(UICollectionView *)v68 initWithFrame:v77 collectionViewLayout:v70, v72, v74, v76];
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
  v84 = [v83 standardHUDTextColor];
  [(UIPageControl *)self->_categoriesPageControl setCurrentPageIndicatorTintColor:v84];

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
  v153 = [(UIView *)self->_categoriesPageControl centerXAnchor];
  v149 = [(UIView *)self->_toolbarContentView centerXAnchor];
  v145 = [v153 constraintEqualToAnchor:v149];
  v160[0] = v145;
  v142 = [(UIView *)self->_categoriesPageControl centerYAnchor];
  v155 = [(UIView *)self->_toolbarContentView centerYAnchor];
  v139 = [v142 constraintEqualToAnchor:v155];
  v160[1] = v139;
  v136 = [(UIView *)self->_scrollingSeparatorView leadingAnchor];
  v133 = [(UIView *)self->_categoriesContentView leadingAnchor];
  v127 = [v136 constraintEqualToAnchor:v133];
  v160[2] = v127;
  v124 = [(UIView *)self->_scrollingSeparatorView topAnchor];
  v119 = [(UIView *)self->_categoriesContentView topAnchor];
  v121 = objc_loadWeakRetained(&self->_metrics);
  [v121 toolbarContentInset];
  v90 = [v124 constraintEqualToAnchor:v119 constant:?];
  v160[3] = v90;
  v91 = [(UIView *)self->_scrollingSeparatorView bottomAnchor];
  v92 = [(UIView *)self->_categoriesContentView bottomAnchor];
  v93 = objc_loadWeakRetained(&self->_metrics);
  [v93 toolbarContentInset];
  v95 = [v91 constraintEqualToAnchor:v92 constant:-v94];
  v160[4] = v95;
  v96 = [(UIView *)self->_scrollingSeparatorView widthAnchor];
  v97 = objc_loadWeakRetained(&self->_metrics);
  [v97 separatorWidth];
  v98 = [v96 constraintEqualToConstant:?];
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
    v157 = [v101 leadingAnchor];
    v156 = [(UIView *)self->_categoriesContentView leadingAnchor];
    v154 = [v157 constraintEqualToAnchor:v156];
    v158[0] = v154;
    v150 = [v101 topAnchor];
    v103 = [(UIView *)self->_categoriesContentView topAnchor];
    v104 = [v150 constraintEqualToAnchor:v103];
    v158[1] = v104;
    v105 = [v101 trailingAnchor];
    v106 = [(UIView *)self->_categoriesContentView trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];
    v158[2] = v107;
    v108 = [v101 bottomAnchor];
    v109 = [(UIView *)self->_categoriesContentView bottomAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];
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
    v15 = objc_loadWeakRetained(&self->_menu);
    v16 = [v15 children];
    -[UIPageControl setNumberOfPages:](self->_categoriesPageControl, "setNumberOfPages:", [v16 count]);
  }

  else
  {
    v15 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    [v15 appendSectionsWithIdentifiers:&unk_1EFE2E0E0];
    v17 = objc_loadWeakRetained(&self->_menu);
    v18 = [v17 children];
    [v15 appendItemsWithIdentifiers:v18];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v15 animatingDifferences:0];
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

- (void)performActionForSelectingCellAtIndexPath:(id)a3
{
  v9 = a3;
  if (![(_UIKeyShortcutHUDToolbarViewController *)self isSearching]&& ![(_UIKeyShortcutHUDToolbarViewController *)self isPreparingSearchTransition])
  {
    v4 = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
    [v4 client:self setCategoryVisibleForCellAtIndexPath:v9];

    v5 = [(_UIKeyShortcutHUDToolbarViewController *)self menu];
    v6 = [v5 children];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v9, "item")}];

    v8 = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
    [v8 toolbarViewController:self didSelectCategory:v7 categoryIndex:objc_msgSend(v9 animated:{"item"), 1}];
  }
}

- (id)indexPathsForCellsUsingSeparatorAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    v6 = [v4 client];

    if (v6 == self)
    {
      v7 = [v4 indexPath];
      v8 = [v7 item];

      if (v8 >= 1)
      {
        [v5 addObject:v4];
        v9 = MEMORY[0x1E696AC88];
        v10 = [v4 indexPath];
        v11 = [v10 item] - 1;
        v12 = [v4 indexPath];
        v13 = [v9 indexPathForItem:v11 inSection:{objc_msgSend(v12, "section")}];
        v14 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v13];

        [v5 addObject:v14];
      }
    }
  }

  return v5;
}

- (id)indexPathsForSeparatorsUsedByCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    v6 = [v4 client];

    if (v6 == self)
    {
      v7 = [v4 indexPath];
      v8 = [v7 item];

      if (v8 >= 1)
      {
        [v5 addObject:v4];
      }

      v9 = [v4 indexPath];
      v10 = [v9 item];
      WeakRetained = objc_loadWeakRetained(&self->_menu);
      v12 = [WeakRetained children];
      v13 = [v12 count] - 1;

      if (v10 < v13)
      {
        v14 = MEMORY[0x1E696AC88];
        v15 = [v4 indexPath];
        v16 = [v15 item];
        v17 = [v4 indexPath];
        v18 = [v14 indexPathForItem:v16 + 1 inSection:{objc_msgSend(v17, "section")}];
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

- (void)_configureSeparatorViewAppearance:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  [WeakRetained toolbarSeparatorVerticalMargin];
  v7 = v6;

  [v4 setDirectionalLayoutMargins:{v7, 0.0, v7, 0.0}];
  v8 = objc_loadWeakRetained(&self->_metrics);
  v9 = [v8 toolbarSeparatorColor];
  [v4 setSeparatorColor:v9];

  v11 = objc_loadWeakRetained(&self->_metrics);
  v10 = [v11 toolbarSeparatorVisualEffect];
  [v4 setVisualEffect:v10];
}

- (void)updateScrollingSeparatorViewVisibility
{
  v3 = [(_UIKeyShortcutHUDToolbarViewController *)self _shouldHideScrollingSeparatorView];
  scrollingSeparatorView = self->_scrollingSeparatorView;

  [(_UIKeyShortcutHUDSeparatorView *)scrollingSeparatorView setSeparatorHidden:v3];
}

- (BOOL)_shouldHideScrollingSeparatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  v4 = [WeakRetained toolbarStylesCategoriesAsPageControl];

  if (v4)
  {
    return 1;
  }

  v6 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
  v7 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton searchButtonIndexPath];
  v8 = [v7 indexPath];
  v9 = [v6 cellForItemAtIndexPath:v8];

  if ([v9 isBackgroundVisible])
  {
    v5 = 1;
  }

  else
  {
    collectionView = self->_collectionView;
    v11 = [(_UIKeyShortcutHUDToolbarViewController *)self firstCategoryIndexPath];
    v12 = [v11 indexPath];
    v13 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v12];

    if ([v13 isBackgroundVisible] && (-[UIScrollView contentOffset](self->_collectionView, "contentOffset"), v14 < 0.0))
    {
      v5 = 1;
      v9 = v13;
    }

    else
    {
      [(UIScrollView *)self->_collectionView contentOffset];
      v16 = v15;
      [(UIView *)self->_collectionView bounds];
      v17 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:v16, CGRectGetMidY(v19)];
      v9 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v17];

      v5 = [v9 isBackgroundVisible];
    }
  }

  return v5;
}

- (void)prepareForSearchTransition:(BOOL)a3
{
  v3 = a3;
  [(_UIKeyShortcutHUDToolbarViewController *)self setPreparingSearchTransition:1];
  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton prepareForSearchTransition:v3];
  if (!v3)
  {
    [(UIView *)self->_categoriesContentView setUserInteractionEnabled:1];
    WeakRetained = objc_loadWeakRetained(&self->_collectionViewManager);
    [WeakRetained deselectCurrentlySelectedCell];

    v6 = [(_UIKeyShortcutHUDToolbarViewController *)self searchBar];
    [v6 resignFirstResponder];

    [(_UIKeyShortcutHUDSearchBar *)self->_searchBar setText:0];
    [(UIView *)self->_searchBar setUserInteractionEnabled:0];
    [(UIView *)self->_searchButton setUserInteractionEnabled:1];
    [(UIViewController *)self updateFocusIfNeeded];
    v7 = [(_UIKeyShortcutHUDSearchBar *)self->_searchBar searchTextField];
    if (__UIAccessibilityBroadcastCallback)
    {
      __UIAccessibilityBroadcastCallback(1001, v7);
    }
  }

  v8 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  if ([v8 count])
  {
    v9 = [(UIView *)self->_collectionView effectiveUserInterfaceLayoutDirection];

    if (v9 == UIUserInterfaceLayoutDirectionLeftToRight)
    {
      collectionView = self->_collectionView;
      v11 = [(UICollectionView *)collectionView indexPathsForSelectedItems];
      v12 = [v11 firstObject];
      v13 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v12];
      objc_storeWeak(&self->_cellForSearchTransition, v13);

      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
  v15 = [v14 indexPathsForSelectedItems];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
    v18 = [(_UIKeyShortcutHUDSearchButton *)self->_searchButton collectionView];
    v19 = [v18 indexPathsForSelectedItems];
    v20 = [v19 firstObject];
    v21 = [v17 cellForItemAtIndexPath:v20];
    objc_storeWeak(&self->_cellForSearchTransition, v21);
  }

LABEL_11:
  v22 = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [v22 setDrawsBackground:1];

  v23 = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [v23 layoutIfNeeded];

  searchBar = self->_searchBar;
  v25 = objc_loadWeakRetained(&self->_cellForSearchTransition);
  [(_UIKeyShortcutHUDSearchBar *)searchBar prepareForSearchTransition:v3 usingCell:v25];

  if (v3)
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

- (void)setSearching:(BOOL)a3
{
  v3 = a3;
  [(_UIKeyShortcutHUDSearchButton *)self->_searchButton setSearching:?];
  [(_UIKeyShortcutHUDSearchBar *)self->_searchBar setSearching:v3];
  if (self->_searching != v3)
  {
    self->_searching = v3;
    categoriesContentView = self->_categoriesContentView;
    if (v3)
    {

      [(UIView *)categoriesContentView setAlpha:0.0];
    }

    else
    {
      [(UIView *)categoriesContentView setAlpha:1.0];
      WeakRetained = objc_loadWeakRetained(&self->_cellForSearchTransition);
      v7 = [WeakRetained superview];
      collectionView = self->_collectionView;

      if (v7 == collectionView)
      {
        v9 = self->_collectionView;
        v10 = objc_loadWeakRetained(&self->_cellForSearchTransition);
        v11 = [(UICollectionView *)v9 indexPathForCell:v10];

        [(_UIKeyShortcutHUDToolbarViewController *)self performActionForSelectingCellAtIndexPath:v11];
      }

      v13 = [(_UIKeyShortcutHUDToolbarViewController *)self collectionView];
      v12 = [v13 collectionViewLayout];
      [v12 invalidateLayout];
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

- (void)searchBarDidPressCancelButton:(id)a3
{
  v4 = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  [v4 toolbarViewControllerDidPressCancelSearchButton:self];
}

- (void)searchBar:(id)a3 didUpdateSearchText:(id)a4
{
  v5 = a4;
  v6 = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  [v6 toolbarViewController:self didUpdateSearchText:v5];
}

- (void)searchButtonDidPress:(id)a3
{
  v4 = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  [v4 toolbarViewControllerDidPressSearchButton:self];
}

- (void)hudWillBecomeHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = [(_UIKeyShortcutHUDToolbarViewController *)self visualEffectView];
    v3 = [v4 contentView];
    [v3 _setSafeAreaInsetsFrozen:1];
  }
}

- (void)selectCategory:(id)a3 withCategoryIndex:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_metrics);
  v7 = [WeakRetained toolbarStylesCategoriesAsPageControl];

  if (v7)
  {
    if ([(UIPageControl *)self->_categoriesPageControl interactionState]== UIPageControlInteractionStateNone)
    {
      categoriesPageControl = self->_categoriesPageControl;

      [(UIPageControl *)categoriesPageControl setCurrentPage:a4];
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AC88] indexPathForItem:a4 inSection:0];
    v8 = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
    [v8 client:self setCategoryVisibleForCellAtIndexPath:v23];

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
    v19 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
      [v21 client:self selectCellAtIndexPath:v23];
    }
  }
}

- (void)categoriesPageControlCurrentPageChanged:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDToolbarViewController *)self menu];
  v6 = [v5 children];
  v10 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "currentPage")}];

  v7 = [v4 interactionState] == 1;
  v8 = [(_UIKeyShortcutHUDToolbarViewController *)self delegate];
  v9 = [v4 currentPage];

  [v8 toolbarViewController:self didSelectCategory:v10 categoryIndex:v9 animated:v7];
}

- (void)flashCategoryAtIndex:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v8 = [(_UIKeyShortcutHUDToolbarViewController *)self collectionViewManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___UIKeyShortcutHUDToolbarViewController_flashCategoryAtIndex_completionHandler___block_invoke;
  v10[3] = &unk_1E70F3608;
  v11 = v6;
  v9 = v6;
  [v8 client:self flashCellIfPossibleAtIndexPath:v7 completionHandler:v10];
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