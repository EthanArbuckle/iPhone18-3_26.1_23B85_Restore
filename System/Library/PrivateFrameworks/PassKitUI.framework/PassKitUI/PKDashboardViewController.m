@interface PKDashboardViewController
- ($53A5F136F2571818685D7E4B154E8CAC)methodsForItemIdentifier:(id)a3;
- (BOOL)_isCellVisibleAtIndexPath:(id)a3 withTopSafeArea:(double)a4 contentOffset:(double)a5;
- (BOOL)_isIndexPathAFooter:(id)a3;
- (BOOL)_isIndexPathAHeader:(id)a3;
- (BOOL)_isListSectionAtIndex:(int64_t)a3;
- (BOOL)collectionView:(id)a3 layout:(id)a4 hasFooterForSectionAtIndex:(int64_t)a5;
- (BOOL)collectionView:(id)a3 layout:(id)a4 hasHeaderForSectionAtIndex:(int64_t)a5;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)itemIsIndependentInCollectionView:(id)a3 atIndexPath:(id)a4;
- (BOOL)itemIsStackableInCollectionView:(id)a3 atIndexPath:(id)a4;
- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)result translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSArray)actualIndexPathsForSelectedItems;
- (PKDashboardDelegate)delegate;
- (PKDashboardViewController)initWithCoder:(id)a3;
- (PKDashboardViewController)initWithCollectionViewLayout:(id)a3;
- (PKDashboardViewController)initWithDataSource:(id)a3 presenters:(id)a4 layout:(id)a5;
- (PKDashboardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_actualItemIndexPathForIndexPath:(id)a3;
- (id)_footerViewAtIndexPath:(id)a3 isCell:(BOOL)a4;
- (id)_headerViewAtIndexPath:(id)a3 isCell:(BOOL)a4;
- (id)_internalIndexPathForItemIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 layout:(id)a4 separatorInsetsForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 layout:(id)a4 trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_hideAllContentAnimated:(BOOL)a3;
- (void)_presentAllContent;
- (void)_resolveDismissInteractionForScrollView:(id)a3;
- (void)_setupPresenters:(id)a3;
- (void)_updateNavigationBarAppearance;
- (void)_updateNavigationBarVisibility;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)contentIsLoaded;
- (void)dealloc;
- (void)deleteItemsAtIndexPaths:(id)a3;
- (void)deleteSections:(id)a3;
- (void)insertItemsAtIndexPaths:(id)a3;
- (void)insertSections:(id)a3;
- (void)itemChanged:(id)a3 atIndexPath:(id)a4;
- (void)loadView;
- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4;
- (void)performBatchUpdates:(id)a3 completion:(id)a4;
- (void)performCollectionViewDataReload;
- (void)reloadSections:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setActionForVisibilityChange:(id)a3 indexPath:(id)a4;
- (void)setFreezeChromelessNavigationItem:(BOOL)a3;
- (void)setUseChromelessNavigationItem:(BOOL)a3;
- (void)shouldPresentAllContent:(BOOL)a3 animated:(BOOL)a4;
- (void)updateContent;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKDashboardViewController

- (PKDashboardViewController)initWithCollectionViewLayout:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (PKDashboardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (PKDashboardViewController)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (PKDashboardViewController)initWithDataSource:(id)a3 presenters:(id)a4 layout:(id)a5
{
  v39[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v12 setScrollDirection:0];
    [v12 setSectionInset:{12.0, 0.0, 12.0, 0.0}];
  }

  v38.receiver = self;
  v38.super_class = PKDashboardViewController;
  v13 = [(PKDashboardViewController *)&v38 initWithCollectionViewLayout:v12];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:1.0 stiffness:107.313414 damping:18.18598];
    collectionViewFactory = v13->_collectionViewFactory;
    v13->_collectionViewFactory = v14;

    v16 = v13->_collectionViewFactory;
    v17 = PKMagicCurve();
    [(PKUISpringAnimationFactory *)v16 setTiming:v17];

    [(PKDashboardViewController *)v13 _setupPresenters:v10];
    objc_storeStrong(&v13->_dataSource, a3);
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 setDataSourceDelegate:v13];
    }

    *&v13->_dataSourceOptionalMethods = objc_opt_respondsToSelector() & 1;
    if (v11)
    {
      objc_storeStrong(&v13->_customLayout, a5);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    titlesForSection = v13->_titlesForSection;
    v13->_titlesForSection = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    footerTextItemsBySection = v13->_footerTextItemsBySection;
    v13->_footerTextItemsBySection = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    blocksOnVisibilityChange = v13->_blocksOnVisibilityChange;
    v13->_blocksOnVisibilityChange = v22;

    v13->_useChromelessNavigationItem = 0;
    v24 = [PKDashboardTitleHeaderView alloc];
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
    v29 = [(PKDashboardTitleHeaderView *)v24 initWithFrame:*MEMORY[0x1E695F058], v26, v27, v28];
    sampleHeaderView = v13->_sampleHeaderView;
    v13->_sampleHeaderView = v29;

    v31 = [[PKDashboardFooterTextView alloc] initWithFrame:v25, v26, v27, v28];
    sampleFooterView = v13->_sampleFooterView;
    v13->_sampleFooterView = v31;

    [(PKDashboardViewController *)v13 _updateNavigationBarAppearance];
    v33 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v35 = [v33 arrayByAddingObjectsFromArray:v34];
    v36 = [(PKDashboardViewController *)v13 registerForTraitChanges:v35 withHandler:&__block_literal_global_150];
  }

  return v13;
}

void __66__PKDashboardViewController_initWithDataSource_presenters_layout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (*(v4 + 1120) == 1)
  {
    v6 = [v4 traitCollection];
    v7 = *(v4 + 129);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__PKDashboardViewController_initWithDataSource_presenters_layout___block_invoke_2;
    v18[3] = &unk_1E801C498;
    v8 = v4;
    v19 = v8;
    v9 = v5;
    v20 = v9;
    v10 = v6;
    v21 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v18];
    if (v9)
    {
      if (v10)
      {
        v11 = [v9 preferredContentSizeCategory];
        v12 = [v10 preferredContentSizeCategory];
        v13 = UIContentSizeCategoryCompareToCategory(v11, v12);

        if (v13)
        {
          v14 = [PKDashboardTitleHeaderView alloc];
          v15 = [(PKDashboardTitleHeaderView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v16 = v8[133];
          v8[133] = v15;

          v17 = [v8 collectionView];
          [v17 reloadData];
        }
      }
    }
  }
}

void __66__PKDashboardViewController_initWithDataSource_presenters_layout___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (([*(a1 + 32) methodsForItemIdentifier:a2] & 8) != 0)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) collectionView];
    [v8 traitCollectionDidChangeFromTrait:v6 toTrait:v5 inCollectionView:v7];
  }
}

- (void)dealloc
{
  free(self->_presentersOptionalMethods);
  v3.receiver = self;
  v3.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v3 dealloc];
}

- (void)_setupPresenters:(id)a3
{
  v34 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v34 count];
  v7 = 1040;
  self->_presentersOptionalMethods = malloc_type_malloc(2 * v6, 0x10000401A82F6E5uLL);
  if (v6)
  {
    v8 = 0;
    v32 = sel_separatorInsetsForItem_inCollectionView_atIndexPath_;
    v33 = v5;
    do
    {
      v9 = [v34 objectAtIndex:{v8, v32}];
      v10 = [objc_msgSend(v9 "itemClass")];
      [v4 setObject:v9 forKey:v10];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v5 setObject:v11 forKey:v10];

      v12 = objc_opt_respondsToSelector();
      if (objc_opt_respondsToSelector())
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 & 0xFFFE | v12 & 1;
      if (objc_opt_respondsToSelector())
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      v35 = v14 | v15 | v16;
      if (objc_opt_respondsToSelector())
      {
        v17 = 16;
      }

      else
      {
        v17 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v18 = 32;
      }

      else
      {
        v18 = 0;
      }

      v19 = v7;
      v20 = v6;
      v21 = v4;
      v22 = self;
      if (objc_opt_respondsToSelector())
      {
        v23 = 64;
      }

      else
      {
        v23 = 0;
      }

      v24 = v17 | v18;
      if (objc_opt_respondsToSelector())
      {
        v25 = 128;
      }

      else
      {
        v25 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v26 = 256;
      }

      else
      {
        v26 = 0;
      }

      v27 = v24 | v23;
      v5 = v33;
      self = v22;
      v4 = v21;
      v6 = v20;
      v7 = v19;
      (*(&self->super.super.super.super.isa + v19))[v8] = v35 | v27 | v25 | v26;

      ++v8;
    }

    while (v6 != v8);
  }

  v28 = [v4 copy];
  presentersPerIdentifier = self->_presentersPerIdentifier;
  self->_presentersPerIdentifier = v28;

  v30 = [v5 copy];
  presenterMethodsIndexPerIdentifier = self->_presenterMethodsIndexPerIdentifier;
  self->_presenterMethodsIndexPerIdentifier = v30;
}

- ($53A5F136F2571818685D7E4B154E8CAC)methodsForItemIdentifier:(id)a3
{
  v4 = [(NSDictionary *)self->_presenterMethodsIndexPerIdentifier objectForKey:a3];
  v5 = [v4 integerValue];

  return *(self->_presentersOptionalMethods + v5);
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v6 loadView];
  v3 = [(PKDashboardViewController *)self collectionView];
  [v3 setAlwaysBounceVertical:1];
  [v3 setBounces:1];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setPrefetchDataSource:self];
  [v3 _setAdjustsContentInsetWhenScrollDisabled:1];
  v5 = [(PKDashboardViewController *)self view];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9678]];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v8 viewDidLoad];
  v3 = [(PKDashboardViewController *)self collectionView];
  presentersPerIdentifier = self->_presentersPerIdentifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PKDashboardViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E801C4C0;
  v5 = v3;
  v7 = v5;
  [(NSDictionary *)presentersPerIdentifier enumerateKeysAndObjectsUsingBlock:v6];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HeaderViewIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"FooterViewIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"HeaderSupplementaryViewIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"FooterSupplementaryViewIdentifier"];
  [(PKDashboardViewController *)self _updateNavigationBarVisibility];
  if (self->_contentIsLoaded)
  {
    [(PKDashboardViewController *)self updateContent];
  }
}

void __40__PKDashboardViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 collectionViewCellClasses];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) registerClass:objc_msgSend(v4 forCellWithReuseIdentifier:{"objectForKey:", *(*(&v9 + 1) + 8 * v8)), *(*(&v9 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setActionForVisibilityChange:(id)a3 indexPath:(id)a4
{
  aBlock = a3;
  v6 = a4;
  if (v6)
  {
    blocksOnVisibilityChange = self->_blocksOnVisibilityChange;
    if (aBlock)
    {
      v8 = _Block_copy(aBlock);
      [(NSMutableDictionary *)blocksOnVisibilityChange setObject:v8 forKey:v6];

      v9 = [(PKDashboardViewController *)self collectionView];
      [v9 safeAreaInsets];
      v11 = v10;
      [v9 contentOffset];
      if ([(PKDashboardViewController *)self _isCellVisibleAtIndexPath:v6 withTopSafeArea:v11 contentOffset:?])
      {
        v12 = [(NSSet *)self->_visibleCellsExcludingSafeArea setByAddingObject:v6];
        visibleCellsExcludingSafeArea = self->_visibleCellsExcludingSafeArea;
        self->_visibleCellsExcludingSafeArea = v12;
      }
    }

    else
    {
      [(NSMutableDictionary *)blocksOnVisibilityChange removeObjectForKey:v6];
      v14 = [(NSSet *)self->_visibleCellsExcludingSafeArea pk_setByRemovingObject:v6];
      v9 = self->_visibleCellsExcludingSafeArea;
      self->_visibleCellsExcludingSafeArea = v14;
    }
  }
}

- (BOOL)_isCellVisibleAtIndexPath:(id)a3 withTopSafeArea:(double)a4 contentOffset:(double)a5
{
  v8 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:a3];
  v9 = [(PKDashboardViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
    v14 = a4 + a5 <= v12 + v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)shouldPresentAllContent:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_shouldPresentAllContent != a3)
  {
    self->_shouldPresentAllContent = a3;
    if (a3)
    {
      self->_presentationAnimated = a4;
      if (self->_contentIsLoaded)
      {
        [(PKDashboardViewController *)self _presentAllContent];
      }
    }

    else
    {
      self->_presentationAnimated = 0;
      [(PKDashboardViewController *)self _hideAllContentAnimated:a4];
    }
  }
}

- (void)setFreezeChromelessNavigationItem:(BOOL)a3
{
  v3 = a3;
  if ((_UISolariumEnabled() & 1) == 0 && self->_freezeChromelessNavigationItem != v3)
  {
    self->_freezeChromelessNavigationItem = v3;

    [(PKDashboardViewController *)self _updateNavigationBarVisibility];
  }
}

- (void)setUseChromelessNavigationItem:(BOOL)a3
{
  v3 = a3;
  if ((_UISolariumEnabled() & 1) == 0 && self->_useChromelessNavigationItem != v3)
  {
    self->_useChromelessNavigationItem = v3;

    [(PKDashboardViewController *)self _updateNavigationBarAppearance];
  }
}

- (NSArray)actualIndexPathsForSelectedItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKDashboardViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:*(*(&v13 + 1) + 8 * i), v13];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ((PKIsPad() & 1) != 0 || PKIsVision())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PKDashboardViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E80127E0;
    v8[4] = self;
    [v7 animateAlongsideTransition:v8 completion:0];
  }
}

void __80__PKDashboardViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PKDashboardDataSource *)self->_dataSource numberOfItemsInSection:a4];
  v9 = [(PKDashboardDataSource *)self->_dataSource titleForSection:a4];
  titlesForSection = self->_titlesForSection;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v9)
  {
    [(NSMutableDictionary *)titlesForSection setObject:v9 forKey:v11];
  }

  else
  {
    [(NSMutableDictionary *)titlesForSection removeObjectForKey:v11];
  }

  v12 = [(PKDashboardDataSource *)self->_dataSource footerTextItemForSection:a4];
  footerTextItemsBySection = self->_footerTextItemsBySection;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v12)
  {
    [(NSMutableDictionary *)footerTextItemsBySection setObject:v12 forKey:v14];
  }

  else
  {
    [(NSMutableDictionary *)footerTextItemsBySection removeObjectForKey:v14];
  }

  v15 = [(PKDashboardViewController *)self _isListSectionAtIndex:a4];
  if (v9)
  {
    v16 = v8 + 1;
  }

  else
  {
    v16 = v8;
  }

  if (v12)
  {
    ++v16;
  }

  if (v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  objc_autoreleasePoolPop(v7);
  return v17;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:v7])
  {
    v8 = [(PKDashboardViewController *)self _headerViewAtIndexPath:v7 isCell:1];
LABEL_5:
    v9 = v8;
    goto LABEL_23;
  }

  if ([(PKDashboardViewController *)self _isIndexPathAFooter:v7])
  {
    v8 = [(PKDashboardViewController *)self _footerViewAtIndexPath:v7 isCell:1];
    goto LABEL_5;
  }

  v10 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v7];
  v11 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v10];
  v12 = [objc_opt_class() identifier];
  v13 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v12];
  v9 = [v13 cellForItem:v11 inCollectionView:v6 atIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v7 section]))
  {
    [v15 setWantsListBehavior:1];
    v16 = 0;
    goto LABEL_21;
  }

  if (([v15 wantsCustomAppearance] & 1) == 0)
  {
    v28 = v12;
    v27 = [v10 row];
    footerTextItemsBySection = self->_footerTextItemsBySection;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "section")}];
    v19 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v18];

    v20 = [v6 numberOfItemsInSection:{objc_msgSend(v7, "section")}];
    v21 = [v7 row];
    v22 = 1;
    if (v19)
    {
      v22 = 2;
    }

    v23 = v21 + v22;
    if (v27 || v20 != v23)
    {
      if (!v27 || v20 != v23)
      {
        [v15 setMaskType:v27 == 0];
        v12 = v28;
        if (([(PKDashboardViewController *)self methodsForItemIdentifier:v28]& 0x80) != 0)
        {
          v16 = [v13 hideSeparatorForItem:v11 inCollectionView:v6] ^ 1;
        }

        else
        {
          v16 = 1;
        }

        goto LABEL_21;
      }

      v24 = v15;
      v25 = 2;
    }

    else
    {
      v24 = v15;
      v25 = 3;
    }

    [v24 setMaskType:v25];
    v16 = 0;
    v12 = v28;
LABEL_21:
    [v15 setShowsBottomSeparator:v16];
  }

LABEL_23:

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v9 = [(PKDashboardViewController *)self _headerViewAtIndexPath:v8 isCell:0];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69DDC00]])
  {
    v9 = [(PKDashboardViewController *)self _footerViewAtIndexPath:v8 isCell:0];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = &OBJC_IVAR___PKPassSemanticTileFactoryCachedMapsItem__valid;
    do
    {
      v11 = 0;
      v23 = v8;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (![(PKDashboardViewController *)self _isIndexPathAHeader:v12, v22]&& ![(PKDashboardViewController *)self _isIndexPathAFooter:v12])
        {
          v13 = objc_autoreleasePoolPush();
          v14 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v12];
          v15 = [*(&self->super.super.super.super.isa + v10[140]) itemAtIndexPath:v14];
          v16 = [objc_opt_class() identifier];
          if (([(PKDashboardViewController *)self methodsForItemIdentifier:v16]& 0x40) != 0)
          {
            [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v16];
            v17 = v9;
            v18 = v13;
            v19 = v6;
            v21 = v20 = v10;
            [v21 prefetchForItem:v15 inCollectionView:v22];

            v10 = v20;
            v6 = v19;
            v13 = v18;
            v9 = v17;
            v8 = v23;
          }

          objc_autoreleasePoolPop(v13);
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }
}

- (BOOL)_isListSectionAtIndex:(int64_t)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  dataSource = self->_dataSource;

  return [(PKDashboardDataSource *)dataSource isListLayoutForSection:a3];
}

- (BOOL)_isIndexPathAHeader:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", v5) || [v4 row])
  {
    v6 = 0;
  }

  else
  {
    titlesForSection = self->_titlesForSection;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v10 = [(NSMutableDictionary *)titlesForSection objectForKey:v9];
    v6 = v10 != 0;
  }

  return v6;
}

- (BOOL)_isIndexPathAFooter:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if ([(PKDashboardViewController *)self _isListSectionAtIndex:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 row] + 1;
    v8 = [(PKDashboardViewController *)self collectionView];
    if (v7 == [(PKDashboardViewController *)self collectionView:v8 numberOfItemsInSection:v5])
    {
      footerTextItemsBySection = self->_footerTextItemsBySection;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      v11 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v10];
      v6 = v11 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_actualItemIndexPathForIndexPath:(id)a3
{
  v4 = a3;
  titlesForSection = self->_titlesForSection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "section")}];
  v7 = [(NSMutableDictionary *)titlesForSection objectForKey:v6];

  if (v7 && !-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v4 section]) && objc_msgSend(v4, "row") >= 1)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v4 inSection:{"row") - 1, objc_msgSend(v4, "section")}];

    v4 = v8;
  }

  return v4;
}

- (id)_internalIndexPathForItemIndexPath:(id)a3
{
  v4 = a3;
  titlesForSection = self->_titlesForSection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "section")}];
  v7 = [(NSMutableDictionary *)titlesForSection objectForKey:v6];

  if (v7 && !-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v4 section]))
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v4 inSection:{"row") + 1, objc_msgSend(v4, "section")}];

    v4 = v8;
  }

  return v4;
}

- (id)_headerViewAtIndexPath:(id)a3 isCell:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  titlesForSection = self->_titlesForSection;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "section")}];
  v9 = [(NSMutableDictionary *)titlesForSection objectForKey:v8];

  if (!v9)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v10 = [(PKDashboardViewController *)self collectionView];
  v11 = v10;
  if (v4)
  {
    [v10 dequeueReusableCellWithReuseIdentifier:@"HeaderViewIdentifier" forIndexPath:v6];
  }

  else
  {
    [v10 dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"HeaderSupplementaryViewIdentifier" forIndexPath:v6];
  }
  v12 = ;

  v13 = [v9 title];
  [v12 setTitle:v13];

  v14 = [v9 titleColor];
  if (v14)
  {
    v15 = [MEMORY[0x1E69DC888] systemGrayColor];
    [v12 setTitleColor:v15];
  }

  [v12 setTitleStyle:{objc_msgSend(v9, "style")}];
  v16 = [v9 actionTitle];

  if (v16)
  {
    v17 = [v9 actionTitle];
    [v12 setActionTitle:v17];
  }

  else
  {
    v18 = [v9 actionImage];

    if (!v18)
    {
      goto LABEL_13;
    }

    v17 = [v9 actionImage];
    [v12 setActionImage:v17];
  }

LABEL_13:
  v19 = [v9 action];

  if (v19)
  {
    v20 = [v9 action];
    [v12 setAction:v20];
LABEL_17:

    goto LABEL_18;
  }

  v21 = [v9 menu];

  if (v21)
  {
    v20 = [v9 menu];
    [v12 setMenu:v20];
    goto LABEL_17;
  }

LABEL_18:
  v22 = [v9 actionColor];

  if (v22)
  {
    v23 = [v9 actionColor];
    [v12 setActionColor:v23];
  }

  [v12 setActionStyle:{objc_msgSend(v9, "actionStyle")}];

LABEL_21:

  return v12;
}

- (id)_footerViewAtIndexPath:(id)a3 isCell:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  footerTextItemsBySection = self->_footerTextItemsBySection;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "section")}];
  v9 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v8];

  if (v9)
  {
    v10 = [(PKDashboardViewController *)self collectionView];
    v11 = v10;
    if (v4)
    {
      [v10 dequeueReusableCellWithReuseIdentifier:@"FooterViewIdentifier" forIndexPath:v6];
    }

    else
    {
      [v10 dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"FooterSupplementaryViewIdentifier" forIndexPath:v6];
    }
    v12 = ;

    [v12 setMaximumLines:{objc_msgSend(v9, "maximumNumberOfLines")}];
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [v12 setHorizontalInset:?];
    v13 = [v9 footerText];
    [v12 setFooterText:v13];

    v14 = [v9 sources];
    [v12 setSources:v14];

    v15 = [v9 linkTextColor];
    [v12 setLinkTextColor:v15];

    [v12 setBottomInsetType:{objc_msgSend(v9, "bottomInsetType")}];
    [v12 setUseCustomContentInsets:{objc_msgSend(v9, "useCustomContentInsets")}];
    [v9 customContentInsets];
    [v12 setCustomContentInsets:?];
    v16 = [v9 font];
    [v12 setFont:v16];

    v17 = [v9 fdicConfiguration];
    if (v17)
    {
      v18 = [[PKFDICSignageView alloc] initWithConfiguration:v17];
    }

    else
    {
      v18 = 0;
    }

    [v12 setAdditionalView:v18];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  self->_dragging = 1;
  v4 = MEMORY[0x1E695EFF8];
  self->_draggingVelocity = *MEMORY[0x1E695EFF8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 panGestureRecognizer];

  if (([v6 state] - 1) > 1)
  {
    v12 = 0;
    v10 = *v4;
    v11 = v4[1];
  }

  else
  {
    v7 = [(PKDashboardViewController *)self viewIfLoaded];
    [v6 locationInView:v7];
    v10 = v8;
    v11 = v9;
    v12 = 0;
    if (v7 && WeakRetained)
    {
      v12 = [WeakRetained dashboardViewController:self shouldStartDismissInteractionFromPoint:{v8, v9}];
    }
  }

  self->_trackingDismissInteraction = v12;
  self->_dismissInteractionNeedsInitialAdjustment = 1;
  v13 = !self->_trackingDismissInteraction || WeakRetained == 0;
  if (!v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained dashboardViewController:self willStartDismissInteractionFromPoint:{v10, v11}];
  }
}

- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)result translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9
{
  x = result.x;
  if (self->_trackingDismissInteraction)
  {
    y = a5.y;
    if (self->_dismissInteractionNeedsInitialAdjustment)
    {
      self->_dismissInteractionNeedsInitialAdjustment = 0;
      self->_dismissInteractionAdjustment.horizontal = 0.0;
      self->_dismissInteractionAdjustment.vertical = a5.y;
    }

    [a3 adjustedContentInset];
    x = x + self->_dismissInteractionAdjustment.horizontal;
    result.y = self->_dismissInteractionAdjustment.vertical - v12 - y;
  }

  v13 = x;
  result.x = v13;
  return result;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  self->_dragging = 0;
  if (!a4)
  {
    [(PKDashboardViewController *)self _resolveDismissInteractionForScrollView:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentDidFinishScrollInteraction];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentDidFinishScrollInteraction];
}

- (void)_resolveDismissInteractionForScrollView:(id)a3
{
  v4 = a3;
  if (self->_trackingDismissInteraction)
  {
    v13 = v4;
    self->_trackingDismissInteraction = 0;
    x = self->_draggingVelocity.x;
    y = self->_draggingVelocity.y;
    self->_draggingVelocity = *MEMORY[0x1E695EFF8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v8 = objc_opt_respondsToSelector();
      [v13 contentOffset];
      v10 = v9;
      v12 = v11;
      if ([WeakRetained dashboardViewController:self dismissInteractionShouldDismissForContentOffset:? velocity:?])
      {
        [v13 stopScrollingAndZooming];
        [v13 setContentOffset:{v10, v12}];
        if (v8)
        {
          [WeakRetained dashboardViewController:self didEndDismissInteraction:1];
        }

        [WeakRetained dashboardViewController:self dismissInteractionDismissedForContentOffset:v10 velocity:{v12, x, y}];
      }

      else if (v8)
      {
        [WeakRetained dashboardViewController:self didEndDismissInteraction:0];
      }
    }

    v4 = v13;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = [(PKDashboardViewController *)self collectionView];
  [v4 contentOffset];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained contentDidScroll];
  }

  [(PKDashboardViewController *)self _updateNavigationBarVisibility];
  [v4 safeAreaInsets];
  v10 = v9;
  if (vabdd_f64(v6, self->_lastScrollOffset) > 10.0)
  {
    self->_lastScrollOffset = v6;
    v11 = [(NSMutableDictionary *)self->_blocksOnVisibilityChange allKeys];
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v11];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v48;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          if (![(PKDashboardViewController *)self _isCellVisibleAtIndexPath:v18 withTopSafeArea:v10 contentOffset:v6])
          {
            [v12 removeObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v15);
    }

    if (self->_visibleCellsExcludingSafeArea)
    {
      v38 = v4;
      v19 = [v12 mutableCopy];
      [v19 minusSet:self->_visibleCellsExcludingSafeArea];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v44;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [(NSMutableDictionary *)self->_blocksOnVisibilityChange objectForKey:*(*(&v43 + 1) + 8 * j)];
            v26 = v25;
            if (v25)
            {
              (*(v25 + 16))(v25, 1);
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v22);
      }

      v37 = v8;

      v27 = [(NSSet *)self->_visibleCellsExcludingSafeArea mutableCopy];
      [v27 minusSet:v12];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v40;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v40 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [(NSMutableDictionary *)self->_blocksOnVisibilityChange objectForKey:*(*(&v39 + 1) + 8 * k)];
            v34 = v33;
            if (v33)
            {
              (*(v33 + 16))(v33, 0);
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v30);
      }

      v8 = v37;
      v4 = v38;
    }

    v35 = [v12 copy];
    visibleCellsExcludingSafeArea = self->_visibleCellsExcludingSafeArea;
    self->_visibleCellsExcludingSafeArea = v35;
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:v7]|| [(PKDashboardViewController *)self _isIndexPathAFooter:v7])
  {
    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v7];

    v10 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v9];
    v11 = [objc_opt_class() identifier];
    if (([(PKDashboardViewController *)self methodsForItemIdentifier:v11]& 1) != 0)
    {
      v12 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v11];
      v8 = [v12 canSelectItem:v10 inCollectionView:v6 atIndexPath:v9];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!-[PKDashboardViewController _isIndexPathAHeader:](self, "_isIndexPathAHeader:", v6) && !-[PKDashboardViewController _isIndexPathAFooter:](self, "_isIndexPathAFooter:", v6) && ([v12 isEditing] & 1) == 0)
  {
    v7 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v6];

    v8 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v7];
    v9 = [objc_opt_class() identifier];
    v10 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v9];
    v11 = [(PKDashboardViewController *)self navigationController];
    [v10 didSelectItem:v8 inCollectionView:v12 atIndexPath:v7 navigationController:v11 canPresent:0];

    v6 = v7;
  }
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v6];
  v8 = -[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v7 section]);
  if ([v7 item] >= 1)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v6 inSection:{"item") - 1, objc_msgSend(v6, "section")}];
    v10 = [v11 cellForItemAtIndexPath:v9];
    if (!v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setBottomSeparatorVisible:1 animated:1];
      }
    }
  }
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v6];
  v8 = -[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v7 section]);
  if ([v7 item] >= 1)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v6 inSection:{"item") - 1, objc_msgSend(v6, "section")}];
    v10 = [v11 cellForItemAtIndexPath:v9];
    if (!v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setBottomSeparatorVisible:0 animated:1];
      }
    }
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  [v7 safeAreaInsets];
  v12 = v11;
  v14 = v13;
  [v7 bounds];
  v16 = v15 - v12 - v14;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:v8])
  {
    titlesForSection = self->_titlesForSection;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "section")}];
    v19 = [(NSMutableDictionary *)titlesForSection objectForKey:v18];

    if (v19)
    {
      sampleHeaderView = self->_sampleHeaderView;
      v21 = [v19 title];
      [(PKDashboardTitleHeaderView *)sampleHeaderView setTitle:v21];

      -[PKDashboardTitleHeaderView setTitleStyle:](self->_sampleHeaderView, "setTitleStyle:", [v19 style]);
      v22 = self->_sampleHeaderView;
      v23 = [v19 actionTitle];
      [(PKDashboardTitleHeaderView *)v22 setActionTitle:v23];

      v24 = self->_sampleHeaderView;
      v25 = [v19 actionImage];
      [(PKDashboardTitleHeaderView *)v24 setActionImage:v25];

      v26 = self->_sampleHeaderView;
      v27 = [v19 action];
      [(PKDashboardTitleHeaderView *)v26 setAction:v27];

      -[PKDashboardTitleHeaderView setActionStyle:](self->_sampleHeaderView, "setActionStyle:", [v19 actionStyle]);
      v28 = self->_sampleHeaderView;
      +[PKDashboardCollectionViewCell defaultHorizontalInset];
      [(PKDashboardTitleHeaderView *)v28 sizeThatFits:v16 + v29 * -2.0, 3.40282347e38];
      v9 = v30;
      v10 = v31;
    }
  }

  else if ([(PKDashboardViewController *)self _isIndexPathAFooter:v8])
  {
    footerTextItemsBySection = self->_footerTextItemsBySection;
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "section")}];
    v19 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v33];

    if (v19)
    {
      v34 = [v19 footerText];
      v35 = [v19 fdicConfiguration];
      if ([v34 length])
      {
        v36 = 0;
      }

      else
      {
        v36 = v35 == 0;
      }

      if (!v36)
      {
        -[PKDashboardFooterTextView setMaximumLines:](self->_sampleFooterView, "setMaximumLines:", [v19 maximumNumberOfLines]);
        [(PKDashboardFooterTextView *)self->_sampleFooterView setFooterText:v34];
        -[PKDashboardFooterTextView setBottomInsetType:](self->_sampleFooterView, "setBottomInsetType:", [v19 bottomInsetType]);
        -[PKDashboardFooterTextView setUseCustomContentInsets:](self->_sampleFooterView, "setUseCustomContentInsets:", [v19 useCustomContentInsets]);
        sampleFooterView = self->_sampleFooterView;
        [v19 customContentInsets];
        [(PKDashboardFooterTextView *)sampleFooterView setCustomContentInsets:?];
        v38 = self->_sampleFooterView;
        v39 = [v19 font];
        [(PKDashboardFooterTextView *)v38 setFont:v39];

        if (v35)
        {
          v40 = [[PKFDICSignageView alloc] initWithConfiguration:v35];
        }

        else
        {
          v40 = 0;
        }

        [(PKDashboardFooterTextView *)self->_sampleFooterView setAdditionalView:v40];
        v46 = self->_sampleFooterView;
        +[PKDashboardCollectionViewCell defaultHorizontalInset];
        [(PKDashboardFooterTextView *)v46 sizeThatFits:v16 + v47 * -2.0, 3.40282347e38];
        v9 = v48;
        v10 = v49;
      }
    }
  }

  else
  {
    v41 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v8];

    v19 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v41];
    v42 = [objc_opt_class() identifier];
    v43 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v42];
    [v43 sizeForItem:v19 inCollectionView:v7 safeAreaWidth:v41 atIndexPath:v16];
    v9 = v44;
    v10 = v45;

    v8 = v41;
  }

  v50 = v9;
  v51 = v10;
  result.height = v51;
  result.width = v50;
  return result;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 section];
  if (v10 >= -[PKDashboardViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", v16) || (v11 = [v9 item], v11 >= -[PKDashboardViewController collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v16, objc_msgSend(v9, "section"))) || -[PKDashboardViewController _isIndexPathAHeader:](self, "_isIndexPathAHeader:", v9) || -[PKDashboardViewController _isIndexPathAFooter:](self, "_isIndexPathAFooter:", v9))
  {
    v12 = v9;
  }

  else
  {
    v12 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v9];

    v13 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v12];
    if (v13)
    {
      v14 = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:v14]& 2) != 0)
      {
        v15 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v14];
        [v15 cellDidDisappear:v8 forItem:v13 inCollectionView:v16 atIndexPath:v12];
      }
    }
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:v9]|| [(PKDashboardViewController *)self _isIndexPathAFooter:v9])
  {
    v10 = v9;
  }

  else
  {
    v10 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v9];

    v11 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v10];
    if (v11)
    {
      v12 = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:v12]& 4) != 0)
      {
        v13 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v12];
        [v13 cellWillAppear:v8 forItem:v11 inCollectionView:v14 atIndexPath:v10];
      }
    }

    if (*&self->_dataSourceOptionalMethods)
    {
      [(PKDashboardDataSource *)self->_dataSource willDisplayItemAtIndexPath:v10];
    }
  }
}

- (BOOL)itemIsStackableInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:v7]|| [(PKDashboardViewController *)self _isIndexPathAFooter:v7])
  {
    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v7];

    v10 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v9];
    if (v10)
    {
      v11 = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:v11]& 0x10) != 0)
      {
        v12 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v11];
        v8 = [v12 cellIsStackableForItem:v10 inCollectionView:v6 atIndexPath:v9];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)itemIsIndependentInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:v7]|| [(PKDashboardViewController *)self _isIndexPathAFooter:v7])
  {
    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v7];

    v10 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v9];
    if (v10)
    {
      v11 = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:v11]& 0x20) != 0)
      {
        v12 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v11];
        v8 = [v12 cellIsIndependentForItem:v10 inCollectionView:v6 atIndexPath:v9];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)collectionView:(id)a3 layout:(id)a4 hasHeaderForSectionAtIndex:(int64_t)a5
{
  titlesForSection = self->_titlesForSection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{a5, a4}];
  v7 = [(NSMutableDictionary *)titlesForSection objectForKeyedSubscript:v6];
  LOBYTE(titlesForSection) = v7 != 0;

  return titlesForSection;
}

- (BOOL)collectionView:(id)a3 layout:(id)a4 hasFooterForSectionAtIndex:(int64_t)a5
{
  footerTextItemsBySection = self->_footerTextItemsBySection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{a5, a4}];
  v7 = [(NSMutableDictionary *)footerTextItemsBySection objectForKeyedSubscript:v6];
  LOBYTE(footerTextItemsBySection) = v7 != 0;

  return footerTextItemsBySection;
}

- (id)collectionView:(id)a3 layout:(id)a4 trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dataSource = self->_dataSource;
  v12 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v10];
  v13 = [(PKDashboardDataSource *)dataSource itemAtIndexPath:v12];

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(PKDashboardDataSource *)self->_dataSource canDeleteItem:v13])
  {
    v14 = PKLocalizedString(&cfstr_DashboardTrail.isa);
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69DC8E8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __103__PKDashboardViewController_collectionView_layout_trailingSwipeActionsConfigurationForItemAtIndexPath___block_invoke;
    v22[3] = &unk_1E801BDA8;
    objc_copyWeak(&v24, &location);
    v23 = v13;
    v16 = [v15 contextualActionWithStyle:1 title:v14 handler:v22];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    [v16 setImage:v17];

    v18 = MEMORY[0x1E69DCFC0];
    v26[0] = v16;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v20 = [v18 configurationWithActions:v19];

    [v20 setPerformsFirstActionWithFullSwipe:0];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __103__PKDashboardViewController_collectionView_layout_trailingSwipeActionsConfigurationForItemAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[149] deleteItem:*(a1 + 32) completionHandler:v5];
}

- (void)updateContent
{
  if (self->_contentIsLoaded)
  {
    [(PKDashboardViewController *)self performCollectionViewDataReload];
    if (self->_shouldPresentAllContent)
    {
      self->_presentationAnimated = 1;

      [(PKDashboardViewController *)self _presentAllContent];
    }
  }
}

- (void)performCollectionViewDataReload
{
  v3 = [(PKDashboardViewController *)self collectionView];
  [v3 reloadData];

  v4 = [(PKDashboardViewController *)self collectionViewLayout];
  [v4 invalidateLayout];
}

- (id)collectionView:(id)a3 layout:(id)a4 separatorInsetsForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 section];
  if (v9 >= -[PKDashboardViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", v7) || (v10 = [v8 item], v10 >= -[PKDashboardViewController collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v7, objc_msgSend(v8, "section"))) || -[PKDashboardViewController _isIndexPathAHeader:](self, "_isIndexPathAHeader:", v8) || -[PKDashboardViewController _isIndexPathAFooter:](self, "_isIndexPathAFooter:", v8))
  {
    v11 = 0;
  }

  else
  {
    dataSource = self->_dataSource;
    v14 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v8];
    v15 = [(PKDashboardDataSource *)dataSource itemAtIndexPath:v14];

    if (v15)
    {
      v16 = [objc_opt_class() identifier];
      v17 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v16];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:v16]& 0x100) != 0)
      {
        v11 = [v17 separatorInsetsForItem:v15 inCollectionView:v7 atIndexPath:v8];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)contentIsLoaded
{
  if (!self->_contentIsLoaded)
  {
    self->_contentIsLoaded = 1;
    if ([(PKDashboardViewController *)self isViewLoaded])
    {

      [(PKDashboardViewController *)self updateContent];
    }
  }
}

- (void)itemChanged:(id)a3 atIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PKDashboardViewController *)self collectionView];
  v8 = [(PKDashboardViewController *)self _internalIndexPathForItemIndexPath:v6];
  v9 = [v7 cellForItemAtIndexPath:v8];
  if (v9)
  {
    v10 = [objc_opt_class() identifier];
    v11 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:v10];
    [v11 updateCell:v9 forItem:v12 inCollectionView:v7 atIndexPath:v6];
  }
}

- (void)performBatchUpdates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKDashboardViewController *)self collectionView];
  v12 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKDashboardViewController_performBatchUpdates_completion___block_invoke;
  v13[3] = &unk_1E8010B50;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PKDashboardViewController_performBatchUpdates_completion___block_invoke_2;
  v11[3] = &unk_1E8010AD8;
  v9 = v7;
  v10 = v6;
  [v8 performBatchUpdates:v13 completion:v11];
}

uint64_t __60__PKDashboardViewController_performBatchUpdates_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __60__PKDashboardViewController_performBatchUpdates_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadSections:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKDashboardViewController_reloadSections___block_invoke;
  v6[3] = &unk_1E8011A68;
  v6[4] = self;
  v4 = a3;
  [v4 enumerateIndexesUsingBlock:v6];
  v5 = [(PKDashboardViewController *)self collectionView];
  [v5 reloadSections:v4];
}

void __44__PKDashboardViewController_reloadSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = [*(*(a1 + 32) + 1192) titleForSection:a2];
  v4 = *(*(a1 + 32) + 1072);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  if (v9)
  {
    [v4 setObject:v9 forKey:v5];
  }

  else
  {
    [v4 removeObjectForKey:v5];
  }

  v6 = [*(*(a1 + 32) + 1192) footerTextItemForSection:a2];
  v7 = *(*(a1 + 32) + 1088);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  if (v6)
  {
    [v7 setObject:v6 forKey:v8];
  }

  else
  {
    [v7 removeObjectForKey:v8];
  }
}

- (void)deleteItemsAtIndexPaths:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PKDashboardViewController *)self _internalIndexPathForItemIndexPath:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [(PKDashboardViewController *)self collectionView];
  [v12 deleteItemsAtIndexPaths:v5];
}

- (void)insertItemsAtIndexPaths:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PKDashboardViewController *)self _internalIndexPathForItemIndexPath:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [(PKDashboardViewController *)self collectionView];
  [v12 insertItemsAtIndexPaths:v5];
}

- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKDashboardViewController *)self collectionView];
  [v8 moveItemAtIndexPath:v7 toIndexPath:v6];
}

- (void)insertSections:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardViewController *)self collectionView];
  [v5 insertSections:v4];
}

- (void)deleteSections:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardViewController *)self collectionView];
  [v5 deleteSections:v4];
}

- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4
{
  v6 = [(PKDashboardViewController *)self collectionView];
  [v6 moveSection:a3 toSection:a4];
}

- (void)_presentAllContent
{
  if (!self->_isPresentingContent)
  {
    v3 = [(PKDashboardViewController *)self collectionView];
    customLayout = self->_customLayout;
    if (customLayout)
    {
      if (objc_opt_respondsToSelector())
      {
        self->_isPresentingContent = 1;
        if (self->_presentationAnimated)
        {
          v5[0] = MEMORY[0x1E69E9820];
          v5[1] = 3221225472;
          v5[2] = __47__PKDashboardViewController__presentAllContent__block_invoke_2;
          v5[3] = &unk_1E8012FD0;
          v5[4] = self;
          v6 = v3;
          [v6 performBatchUpdates:&__block_literal_global_100 completion:v5];
        }

        else
        {
          [(PKDashboardLayout *)self->_customLayout revealContentAnimated:0];
          [(PKDashboardLayout *)self->_customLayout invalidateLayout];
          self->_isPresentingContent = 0;
        }

        goto LABEL_8;
      }

      customLayout = self->_customLayout;
    }

    [(PKDashboardLayout *)customLayout invalidateLayout];
LABEL_8:
  }
}

void __47__PKDashboardViewController__presentAllContent__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v3 = *(*(a1 + 32) + 1168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PKDashboardViewController__presentAllContent__block_invoke_3;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v2 pkui_animateUsingFactory:v3 withDelay:0 options:v6 animations:0 completion:0.0];
}

uint64_t __47__PKDashboardViewController__presentAllContent__block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PKDashboardViewController__presentAllContent__block_invoke_4;
  v4[3] = &unk_1E8010970;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__PKDashboardViewController__presentAllContent__block_invoke_5;
  v3[3] = &unk_1E8011D28;
  v3[4] = v5;
  return [v1 performBatchUpdates:v4 completion:v3];
}

- (void)_hideAllContentAnimated:(BOOL)a3
{
  if (!self->_isHidingContent)
  {
    v3 = a3;
    v5 = [(PKDashboardViewController *)self collectionView];
    if (self->_customLayout && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (v3)
      {
        self->_isHidingContent = 1;
        v6 = MEMORY[0x1E69DD250];
        collectionViewFactory = self->_collectionViewFactory;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __53__PKDashboardViewController__hideAllContentAnimated___block_invoke;
        v8[3] = &unk_1E8010A10;
        v9 = v5;
        v10 = self;
        [v6 pkui_animateUsingFactory:collectionViewFactory withDelay:0x20000 options:v8 animations:0 completion:0.0];
      }

      else
      {
        [(PKDashboardLayout *)self->_customLayout hideContent];
      }
    }
  }
}

uint64_t __53__PKDashboardViewController__hideAllContentAnimated___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PKDashboardViewController__hideAllContentAnimated___block_invoke_2;
  v4[3] = &unk_1E8010970;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PKDashboardViewController__hideAllContentAnimated___block_invoke_3;
  v3[3] = &unk_1E8011D28;
  v3[4] = v5;
  return [v1 performBatchUpdates:v4 completion:v3];
}

- (void)_updateNavigationBarAppearance
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKDashboardViewController *)self navigationItem];
    v5 = v3;
    if (self->_useChromelessNavigationItem)
    {
      if (self->_freezeChromelessNavigationItem)
      {
        [v3 _setManualScrollEdgeAppearanceProgress:0.0];
      }

      else
      {
        [(PKDashboardViewController *)self _updateNavigationBarVisibility];
      }

      [v5 pkui_setupScrollEdgeChromelessAppearance];
      useChromelessNavigationItem = self->_useChromelessNavigationItem;
      v3 = v5;
    }

    else
    {
      useChromelessNavigationItem = 0;
    }

    [v3 _setManualScrollEdgeAppearanceEnabled:useChromelessNavigationItem];
    if (!self->_useChromelessNavigationItem)
    {
      [v5 setScrollEdgeAppearance:0];
      [v5 _setManualScrollEdgeAppearanceProgress:1.0];
    }
  }
}

- (void)_updateNavigationBarVisibility
{
  if (self->_useChromelessNavigationItem && !self->_freezeChromelessNavigationItem && (_UISolariumEnabled() & 1) == 0)
  {
    v4 = [(PKDashboardViewController *)self navigationItem];
    if ([(PKDashboardViewController *)self isViewLoaded])
    {
      v3 = [(PKDashboardViewController *)self collectionView];
      [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
    }

    else
    {
      [v4 _setManualScrollEdgeAppearanceProgress:0.0];
    }
  }
}

- (PKDashboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end