@interface PKDashboardViewController
- ($53A5F136F2571818685D7E4B154E8CAC)methodsForItemIdentifier:(id)identifier;
- (BOOL)_isCellVisibleAtIndexPath:(id)path withTopSafeArea:(double)area contentOffset:(double)offset;
- (BOOL)_isIndexPathAFooter:(id)footer;
- (BOOL)_isIndexPathAHeader:(id)header;
- (BOOL)_isListSectionAtIndex:(int64_t)index;
- (BOOL)collectionView:(id)view layout:(id)layout hasFooterForSectionAtIndex:(int64_t)index;
- (BOOL)collectionView:(id)view layout:(id)layout hasHeaderForSectionAtIndex:(int64_t)index;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)itemIsIndependentInCollectionView:(id)view atIndexPath:(id)path;
- (BOOL)itemIsStackableInCollectionView:(id)view atIndexPath:(id)path;
- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)result translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSArray)actualIndexPathsForSelectedItems;
- (PKDashboardDelegate)delegate;
- (PKDashboardViewController)initWithCoder:(id)coder;
- (PKDashboardViewController)initWithCollectionViewLayout:(id)layout;
- (PKDashboardViewController)initWithDataSource:(id)source presenters:(id)presenters layout:(id)layout;
- (PKDashboardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_actualItemIndexPathForIndexPath:(id)path;
- (id)_footerViewAtIndexPath:(id)path isCell:(BOOL)cell;
- (id)_headerViewAtIndexPath:(id)path isCell:(BOOL)cell;
- (id)_internalIndexPathForItemIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view layout:(id)layout separatorInsetsForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view layout:(id)layout trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_hideAllContentAnimated:(BOOL)animated;
- (void)_presentAllContent;
- (void)_resolveDismissInteractionForScrollView:(id)view;
- (void)_setupPresenters:(id)presenters;
- (void)_updateNavigationBarAppearance;
- (void)_updateNavigationBarVisibility;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)contentIsLoaded;
- (void)dealloc;
- (void)deleteItemsAtIndexPaths:(id)paths;
- (void)deleteSections:(id)sections;
- (void)insertItemsAtIndexPaths:(id)paths;
- (void)insertSections:(id)sections;
- (void)itemChanged:(id)changed atIndexPath:(id)path;
- (void)loadView;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)moveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)performCollectionViewDataReload;
- (void)reloadSections:(id)sections;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setActionForVisibilityChange:(id)change indexPath:(id)path;
- (void)setFreezeChromelessNavigationItem:(BOOL)item;
- (void)setUseChromelessNavigationItem:(BOOL)item;
- (void)shouldPresentAllContent:(BOOL)content animated:(BOOL)animated;
- (void)updateContent;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKDashboardViewController

- (PKDashboardViewController)initWithCollectionViewLayout:(id)layout
{
  result = layout;
  __break(1u);
  return result;
}

- (PKDashboardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  result = bundle;
  __break(1u);
  return result;
}

- (PKDashboardViewController)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (PKDashboardViewController)initWithDataSource:(id)source presenters:(id)presenters layout:(id)layout
{
  v39[3] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  presentersCopy = presenters;
  layoutCopy = layout;
  v12 = layoutCopy;
  if (!layoutCopy)
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

    [(PKDashboardViewController *)v13 _setupPresenters:presentersCopy];
    objc_storeStrong(&v13->_dataSource, source);
    if (sourceCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [sourceCopy setDataSourceDelegate:v13];
    }

    *&v13->_dataSourceOptionalMethods = objc_opt_respondsToSelector() & 1;
    if (layoutCopy)
    {
      objc_storeStrong(&v13->_customLayout, layout);
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
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v35 = [systemTraitsAffectingColorAppearance arrayByAddingObjectsFromArray:v34];
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

- (void)_setupPresenters:(id)presenters
{
  presentersCopy = presenters;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [presentersCopy count];
  v7 = 1040;
  self->_presentersOptionalMethods = malloc_type_malloc(2 * v6, 0x10000401A82F6E5uLL);
  if (v6)
  {
    v8 = 0;
    v32 = sel_separatorInsetsForItem_inCollectionView_atIndexPath_;
    v33 = v5;
    do
    {
      v9 = [presentersCopy objectAtIndex:{v8, v32}];
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
      selfCopy = self;
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
      self = selfCopy;
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

- ($53A5F136F2571818685D7E4B154E8CAC)methodsForItemIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_presenterMethodsIndexPerIdentifier objectForKey:identifier];
  integerValue = [v4 integerValue];

  return *(self->_presentersOptionalMethods + integerValue);
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v6 loadView];
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView setAlwaysBounceVertical:1];
  [collectionView setBounces:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [collectionView setBackgroundColor:clearColor];

  [collectionView setPrefetchDataSource:self];
  [collectionView _setAdjustsContentInsetWhenScrollDisabled:1];
  view = [(PKDashboardViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9678]];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v8 viewDidLoad];
  collectionView = [(PKDashboardViewController *)self collectionView];
  presentersPerIdentifier = self->_presentersPerIdentifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PKDashboardViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E801C4C0;
  v5 = collectionView;
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

- (void)setActionForVisibilityChange:(id)change indexPath:(id)path
{
  aBlock = change;
  pathCopy = path;
  if (pathCopy)
  {
    blocksOnVisibilityChange = self->_blocksOnVisibilityChange;
    if (aBlock)
    {
      v8 = _Block_copy(aBlock);
      [(NSMutableDictionary *)blocksOnVisibilityChange setObject:v8 forKey:pathCopy];

      collectionView = [(PKDashboardViewController *)self collectionView];
      [collectionView safeAreaInsets];
      v11 = v10;
      [collectionView contentOffset];
      if ([(PKDashboardViewController *)self _isCellVisibleAtIndexPath:pathCopy withTopSafeArea:v11 contentOffset:?])
      {
        v12 = [(NSSet *)self->_visibleCellsExcludingSafeArea setByAddingObject:pathCopy];
        visibleCellsExcludingSafeArea = self->_visibleCellsExcludingSafeArea;
        self->_visibleCellsExcludingSafeArea = v12;
      }
    }

    else
    {
      [(NSMutableDictionary *)blocksOnVisibilityChange removeObjectForKey:pathCopy];
      v14 = [(NSSet *)self->_visibleCellsExcludingSafeArea pk_setByRemovingObject:pathCopy];
      collectionView = self->_visibleCellsExcludingSafeArea;
      self->_visibleCellsExcludingSafeArea = v14;
    }
  }
}

- (BOOL)_isCellVisibleAtIndexPath:(id)path withTopSafeArea:(double)area contentOffset:(double)offset
{
  v8 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:path];
  collectionView = [(PKDashboardViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:v8];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
    v14 = area + offset <= v12 + v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)shouldPresentAllContent:(BOOL)content animated:(BOOL)animated
{
  if (self->_shouldPresentAllContent != content)
  {
    self->_shouldPresentAllContent = content;
    if (content)
    {
      self->_presentationAnimated = animated;
      if (self->_contentIsLoaded)
      {
        [(PKDashboardViewController *)self _presentAllContent];
      }
    }

    else
    {
      self->_presentationAnimated = 0;
      [(PKDashboardViewController *)self _hideAllContentAnimated:animated];
    }
  }
}

- (void)setFreezeChromelessNavigationItem:(BOOL)item
{
  itemCopy = item;
  if ((_UISolariumEnabled() & 1) == 0 && self->_freezeChromelessNavigationItem != itemCopy)
  {
    self->_freezeChromelessNavigationItem = itemCopy;

    [(PKDashboardViewController *)self _updateNavigationBarVisibility];
  }
}

- (void)setUseChromelessNavigationItem:(BOOL)item
{
  itemCopy = item;
  if ((_UISolariumEnabled() & 1) == 0 && self->_useChromelessNavigationItem != itemCopy)
  {
    self->_useChromelessNavigationItem = itemCopy;

    [(PKDashboardViewController *)self _updateNavigationBarAppearance];
  }
}

- (NSArray)actualIndexPathsForSelectedItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  collectionView = [(PKDashboardViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = indexPathsForSelectedItems;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = PKDashboardViewController;
  [(PKDashboardViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ((PKIsPad() & 1) != 0 || PKIsVision())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PKDashboardViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E80127E0;
    v8[4] = self;
    [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  }
}

void __80__PKDashboardViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PKDashboardDataSource *)self->_dataSource numberOfItemsInSection:section];
  v9 = [(PKDashboardDataSource *)self->_dataSource titleForSection:section];
  titlesForSection = self->_titlesForSection;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  if (v9)
  {
    [(NSMutableDictionary *)titlesForSection setObject:v9 forKey:v11];
  }

  else
  {
    [(NSMutableDictionary *)titlesForSection removeObjectForKey:v11];
  }

  v12 = [(PKDashboardDataSource *)self->_dataSource footerTextItemForSection:section];
  footerTextItemsBySection = self->_footerTextItemsBySection;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  if (v12)
  {
    [(NSMutableDictionary *)footerTextItemsBySection setObject:v12 forKey:v14];
  }

  else
  {
    [(NSMutableDictionary *)footerTextItemsBySection removeObjectForKey:v14];
  }

  v15 = [(PKDashboardViewController *)self _isListSectionAtIndex:section];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:pathCopy])
  {
    v8 = [(PKDashboardViewController *)self _headerViewAtIndexPath:pathCopy isCell:1];
LABEL_5:
    v9 = v8;
    goto LABEL_23;
  }

  if ([(PKDashboardViewController *)self _isIndexPathAFooter:pathCopy])
  {
    v8 = [(PKDashboardViewController *)self _footerViewAtIndexPath:pathCopy isCell:1];
    goto LABEL_5;
  }

  v10 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];
  v11 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v10];
  identifier = [objc_opt_class() identifier];
  v13 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
  v9 = [v13 cellForItem:v11 inCollectionView:viewCopy atIndexPath:v10];
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
  if (-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [pathCopy section]))
  {
    [v15 setWantsListBehavior:1];
    v16 = 0;
    goto LABEL_21;
  }

  if (([v15 wantsCustomAppearance] & 1) == 0)
  {
    v28 = identifier;
    v27 = [v10 row];
    footerTextItemsBySection = self->_footerTextItemsBySection;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    v19 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v18];

    v20 = [viewCopy numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];
    v21 = [pathCopy row];
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
        identifier = v28;
        if (([(PKDashboardViewController *)self methodsForItemIdentifier:v28]& 0x80) != 0)
        {
          v16 = [v13 hideSeparatorForItem:v11 inCollectionView:viewCopy] ^ 1;
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
    identifier = v28;
LABEL_21:
    [v15 setShowsBottomSeparator:v16];
  }

LABEL_23:

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v9 = [(PKDashboardViewController *)self _headerViewAtIndexPath:pathCopy isCell:0];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  if ([kindCopy isEqualToString:*MEMORY[0x1E69DDC00]])
  {
    v9 = [(PKDashboardViewController *)self _footerViewAtIndexPath:pathCopy isCell:0];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  pathsCopy = paths;
  v7 = [pathsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(pathsCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (![(PKDashboardViewController *)self _isIndexPathAHeader:v12, viewCopy]&& ![(PKDashboardViewController *)self _isIndexPathAFooter:v12])
        {
          v13 = objc_autoreleasePoolPush();
          v14 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:v12];
          v15 = [*(&self->super.super.super.super.isa + v10[140]) itemAtIndexPath:v14];
          identifier = [objc_opt_class() identifier];
          if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 0x40) != 0)
          {
            [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
            v17 = v9;
            v18 = v13;
            v19 = pathsCopy;
            v21 = v20 = v10;
            [v21 prefetchForItem:v15 inCollectionView:viewCopy];

            v10 = v20;
            pathsCopy = v19;
            v13 = v18;
            v9 = v17;
            v8 = v23;
          }

          objc_autoreleasePoolPop(v13);
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [pathsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }
}

- (BOOL)_isListSectionAtIndex:(int64_t)index
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  dataSource = self->_dataSource;

  return [(PKDashboardDataSource *)dataSource isListLayoutForSection:index];
}

- (BOOL)_isIndexPathAHeader:(id)header
{
  headerCopy = header;
  section = [headerCopy section];
  if (-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", section) || [headerCopy row])
  {
    v6 = 0;
  }

  else
  {
    titlesForSection = self->_titlesForSection;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:section];
    v10 = [(NSMutableDictionary *)titlesForSection objectForKey:v9];
    v6 = v10 != 0;
  }

  return v6;
}

- (BOOL)_isIndexPathAFooter:(id)footer
{
  footerCopy = footer;
  section = [footerCopy section];
  if ([(PKDashboardViewController *)self _isListSectionAtIndex:section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [footerCopy row] + 1;
    collectionView = [(PKDashboardViewController *)self collectionView];
    if (v7 == [(PKDashboardViewController *)self collectionView:collectionView numberOfItemsInSection:section])
    {
      footerTextItemsBySection = self->_footerTextItemsBySection;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:section];
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

- (id)_actualItemIndexPathForIndexPath:(id)path
{
  pathCopy = path;
  titlesForSection = self->_titlesForSection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v7 = [(NSMutableDictionary *)titlesForSection objectForKey:v6];

  if (v7 && !-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [pathCopy section]) && objc_msgSend(pathCopy, "row") >= 1)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") - 1, objc_msgSend(pathCopy, "section")}];

    pathCopy = v8;
  }

  return pathCopy;
}

- (id)_internalIndexPathForItemIndexPath:(id)path
{
  pathCopy = path;
  titlesForSection = self->_titlesForSection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v7 = [(NSMutableDictionary *)titlesForSection objectForKey:v6];

  if (v7 && !-[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [pathCopy section]))
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") + 1, objc_msgSend(pathCopy, "section")}];

    pathCopy = v8;
  }

  return pathCopy;
}

- (id)_headerViewAtIndexPath:(id)path isCell:(BOOL)cell
{
  cellCopy = cell;
  pathCopy = path;
  titlesForSection = self->_titlesForSection;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v9 = [(NSMutableDictionary *)titlesForSection objectForKey:v8];

  if (!v9)
  {
    v12 = 0;
    goto LABEL_21;
  }

  collectionView = [(PKDashboardViewController *)self collectionView];
  v11 = collectionView;
  if (cellCopy)
  {
    [collectionView dequeueReusableCellWithReuseIdentifier:@"HeaderViewIdentifier" forIndexPath:pathCopy];
  }

  else
  {
    [collectionView dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"HeaderSupplementaryViewIdentifier" forIndexPath:pathCopy];
  }
  v12 = ;

  title = [v9 title];
  [v12 setTitle:title];

  titleColor = [v9 titleColor];
  if (titleColor)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [v12 setTitleColor:systemGrayColor];
  }

  [v12 setTitleStyle:{objc_msgSend(v9, "style")}];
  actionTitle = [v9 actionTitle];

  if (actionTitle)
  {
    actionTitle2 = [v9 actionTitle];
    [v12 setActionTitle:actionTitle2];
  }

  else
  {
    actionImage = [v9 actionImage];

    if (!actionImage)
    {
      goto LABEL_13;
    }

    actionTitle2 = [v9 actionImage];
    [v12 setActionImage:actionTitle2];
  }

LABEL_13:
  action = [v9 action];

  if (action)
  {
    action2 = [v9 action];
    [v12 setAction:action2];
LABEL_17:

    goto LABEL_18;
  }

  menu = [v9 menu];

  if (menu)
  {
    action2 = [v9 menu];
    [v12 setMenu:action2];
    goto LABEL_17;
  }

LABEL_18:
  actionColor = [v9 actionColor];

  if (actionColor)
  {
    actionColor2 = [v9 actionColor];
    [v12 setActionColor:actionColor2];
  }

  [v12 setActionStyle:{objc_msgSend(v9, "actionStyle")}];

LABEL_21:

  return v12;
}

- (id)_footerViewAtIndexPath:(id)path isCell:(BOOL)cell
{
  cellCopy = cell;
  pathCopy = path;
  footerTextItemsBySection = self->_footerTextItemsBySection;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v9 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v8];

  if (v9)
  {
    collectionView = [(PKDashboardViewController *)self collectionView];
    v11 = collectionView;
    if (cellCopy)
    {
      [collectionView dequeueReusableCellWithReuseIdentifier:@"FooterViewIdentifier" forIndexPath:pathCopy];
    }

    else
    {
      [collectionView dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"FooterSupplementaryViewIdentifier" forIndexPath:pathCopy];
    }
    v12 = ;

    [v12 setMaximumLines:{objc_msgSend(v9, "maximumNumberOfLines")}];
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [v12 setHorizontalInset:?];
    footerText = [v9 footerText];
    [v12 setFooterText:footerText];

    sources = [v9 sources];
    [v12 setSources:sources];

    linkTextColor = [v9 linkTextColor];
    [v12 setLinkTextColor:linkTextColor];

    [v12 setBottomInsetType:{objc_msgSend(v9, "bottomInsetType")}];
    [v12 setUseCustomContentInsets:{objc_msgSend(v9, "useCustomContentInsets")}];
    [v9 customContentInsets];
    [v12 setCustomContentInsets:?];
    font = [v9 font];
    [v12 setFont:font];

    fdicConfiguration = [v9 fdicConfiguration];
    if (fdicConfiguration)
    {
      v18 = [[PKFDICSignageView alloc] initWithConfiguration:fdicConfiguration];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  self->_dragging = 1;
  v4 = MEMORY[0x1E695EFF8];
  self->_draggingVelocity = *MEMORY[0x1E695EFF8];
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  panGestureRecognizer = [draggingCopy panGestureRecognizer];

  if (([panGestureRecognizer state] - 1) > 1)
  {
    v12 = 0;
    v10 = *v4;
    v11 = v4[1];
  }

  else
  {
    viewIfLoaded = [(PKDashboardViewController *)self viewIfLoaded];
    [panGestureRecognizer locationInView:viewIfLoaded];
    v10 = v8;
    v11 = v9;
    v12 = 0;
    if (viewIfLoaded && WeakRetained)
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

- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)result translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  x = result.x;
  if (self->_trackingDismissInteraction)
  {
    y = translation.y;
    if (self->_dismissInteractionNeedsInitialAdjustment)
    {
      self->_dismissInteractionNeedsInitialAdjustment = 0;
      self->_dismissInteractionAdjustment.horizontal = 0.0;
      self->_dismissInteractionAdjustment.vertical = translation.y;
    }

    [view adjustedContentInset];
    x = x + self->_dismissInteractionAdjustment.horizontal;
    result.y = self->_dismissInteractionAdjustment.vertical - v12 - y;
  }

  v13 = x;
  result.x = v13;
  return result;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  self->_dragging = 0;
  if (!decelerate)
  {
    [(PKDashboardViewController *)self _resolveDismissInteractionForScrollView:dragging];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentDidFinishScrollInteraction];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentDidFinishScrollInteraction];
}

- (void)_resolveDismissInteractionForScrollView:(id)view
{
  viewCopy = view;
  if (self->_trackingDismissInteraction)
  {
    v13 = viewCopy;
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

    viewCopy = v13;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v54 = *MEMORY[0x1E69E9840];
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView contentOffset];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained contentDidScroll];
  }

  [(PKDashboardViewController *)self _updateNavigationBarVisibility];
  [collectionView safeAreaInsets];
  v10 = v9;
  if (vabdd_f64(v6, self->_lastScrollOffset) > 10.0)
  {
    self->_lastScrollOffset = v6;
    allKeys = [(NSMutableDictionary *)self->_blocksOnVisibilityChange allKeys];
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:allKeys];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v13 = allKeys;
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
      v38 = collectionView;
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
      collectionView = v38;
    }

    v35 = [v12 copy];
    visibleCellsExcludingSafeArea = self->_visibleCellsExcludingSafeArea;
    self->_visibleCellsExcludingSafeArea = v35;
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:pathCopy]|| [(PKDashboardViewController *)self _isIndexPathAFooter:pathCopy])
  {
    v8 = 0;
    v9 = pathCopy;
  }

  else
  {
    v9 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v10 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v9];
    identifier = [objc_opt_class() identifier];
    if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 1) != 0)
    {
      v12 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
      v8 = [v12 canSelectItem:v10 inCollectionView:viewCopy atIndexPath:v9];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!-[PKDashboardViewController _isIndexPathAHeader:](self, "_isIndexPathAHeader:", pathCopy) && !-[PKDashboardViewController _isIndexPathAFooter:](self, "_isIndexPathAFooter:", pathCopy) && ([viewCopy isEditing] & 1) == 0)
  {
    v7 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v8 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v7];
    identifier = [objc_opt_class() identifier];
    v10 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
    navigationController = [(PKDashboardViewController *)self navigationController];
    [v10 didSelectItem:v8 inCollectionView:viewCopy atIndexPath:v7 navigationController:navigationController canPresent:0];

    pathCopy = v7;
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];
  v8 = -[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v7 section]);
  if ([v7 item] >= 1)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") - 1, objc_msgSend(pathCopy, "section")}];
    v10 = [viewCopy cellForItemAtIndexPath:v9];
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

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];
  v8 = -[PKDashboardViewController _isListSectionAtIndex:](self, "_isListSectionAtIndex:", [v7 section]);
  if ([v7 item] >= 1)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") - 1, objc_msgSend(pathCopy, "section")}];
    v10 = [viewCopy cellForItemAtIndexPath:v9];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  [viewCopy safeAreaInsets];
  v12 = v11;
  v14 = v13;
  [viewCopy bounds];
  v16 = v15 - v12 - v14;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:pathCopy])
  {
    titlesForSection = self->_titlesForSection;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    v19 = [(NSMutableDictionary *)titlesForSection objectForKey:v18];

    if (v19)
    {
      sampleHeaderView = self->_sampleHeaderView;
      title = [v19 title];
      [(PKDashboardTitleHeaderView *)sampleHeaderView setTitle:title];

      -[PKDashboardTitleHeaderView setTitleStyle:](self->_sampleHeaderView, "setTitleStyle:", [v19 style]);
      v22 = self->_sampleHeaderView;
      actionTitle = [v19 actionTitle];
      [(PKDashboardTitleHeaderView *)v22 setActionTitle:actionTitle];

      v24 = self->_sampleHeaderView;
      actionImage = [v19 actionImage];
      [(PKDashboardTitleHeaderView *)v24 setActionImage:actionImage];

      v26 = self->_sampleHeaderView;
      action = [v19 action];
      [(PKDashboardTitleHeaderView *)v26 setAction:action];

      -[PKDashboardTitleHeaderView setActionStyle:](self->_sampleHeaderView, "setActionStyle:", [v19 actionStyle]);
      v28 = self->_sampleHeaderView;
      +[PKDashboardCollectionViewCell defaultHorizontalInset];
      [(PKDashboardTitleHeaderView *)v28 sizeThatFits:v16 + v29 * -2.0, 3.40282347e38];
      v9 = v30;
      v10 = v31;
    }
  }

  else if ([(PKDashboardViewController *)self _isIndexPathAFooter:pathCopy])
  {
    footerTextItemsBySection = self->_footerTextItemsBySection;
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    v19 = [(NSMutableDictionary *)footerTextItemsBySection objectForKey:v33];

    if (v19)
    {
      footerText = [v19 footerText];
      fdicConfiguration = [v19 fdicConfiguration];
      if ([footerText length])
      {
        v36 = 0;
      }

      else
      {
        v36 = fdicConfiguration == 0;
      }

      if (!v36)
      {
        -[PKDashboardFooterTextView setMaximumLines:](self->_sampleFooterView, "setMaximumLines:", [v19 maximumNumberOfLines]);
        [(PKDashboardFooterTextView *)self->_sampleFooterView setFooterText:footerText];
        -[PKDashboardFooterTextView setBottomInsetType:](self->_sampleFooterView, "setBottomInsetType:", [v19 bottomInsetType]);
        -[PKDashboardFooterTextView setUseCustomContentInsets:](self->_sampleFooterView, "setUseCustomContentInsets:", [v19 useCustomContentInsets]);
        sampleFooterView = self->_sampleFooterView;
        [v19 customContentInsets];
        [(PKDashboardFooterTextView *)sampleFooterView setCustomContentInsets:?];
        v38 = self->_sampleFooterView;
        font = [v19 font];
        [(PKDashboardFooterTextView *)v38 setFont:font];

        if (fdicConfiguration)
        {
          v40 = [[PKFDICSignageView alloc] initWithConfiguration:fdicConfiguration];
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
    v41 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v19 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v41];
    identifier = [objc_opt_class() identifier];
    v43 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
    [v43 sizeForItem:v19 inCollectionView:viewCopy safeAreaWidth:v41 atIndexPath:v16];
    v9 = v44;
    v10 = v45;

    pathCopy = v41;
  }

  v50 = v9;
  v51 = v10;
  result.height = v51;
  result.width = v50;
  return result;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= -[PKDashboardViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", viewCopy) || (v11 = [pathCopy item], v11 >= -[PKDashboardViewController collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", viewCopy, objc_msgSend(pathCopy, "section"))) || -[PKDashboardViewController _isIndexPathAHeader:](self, "_isIndexPathAHeader:", pathCopy) || -[PKDashboardViewController _isIndexPathAFooter:](self, "_isIndexPathAFooter:", pathCopy))
  {
    v12 = pathCopy;
  }

  else
  {
    v12 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v13 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v12];
    if (v13)
    {
      identifier = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 2) != 0)
      {
        v15 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
        [v15 cellDidDisappear:cellCopy forItem:v13 inCollectionView:viewCopy atIndexPath:v12];
      }
    }
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:pathCopy]|| [(PKDashboardViewController *)self _isIndexPathAFooter:pathCopy])
  {
    v10 = pathCopy;
  }

  else
  {
    v10 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v11 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v10];
    if (v11)
    {
      identifier = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 4) != 0)
      {
        v13 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
        [v13 cellWillAppear:cellCopy forItem:v11 inCollectionView:viewCopy atIndexPath:v10];
      }
    }

    if (*&self->_dataSourceOptionalMethods)
    {
      [(PKDashboardDataSource *)self->_dataSource willDisplayItemAtIndexPath:v10];
    }
  }
}

- (BOOL)itemIsStackableInCollectionView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:pathCopy]|| [(PKDashboardViewController *)self _isIndexPathAFooter:pathCopy])
  {
    v8 = 0;
    v9 = pathCopy;
  }

  else
  {
    v9 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v10 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v9];
    if (v10)
    {
      identifier = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 0x10) != 0)
      {
        v12 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
        v8 = [v12 cellIsStackableForItem:v10 inCollectionView:viewCopy atIndexPath:v9];
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

- (BOOL)itemIsIndependentInCollectionView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PKDashboardViewController *)self _isIndexPathAHeader:pathCopy]|| [(PKDashboardViewController *)self _isIndexPathAFooter:pathCopy])
  {
    v8 = 0;
    v9 = pathCopy;
  }

  else
  {
    v9 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];

    v10 = [(PKDashboardDataSource *)self->_dataSource itemAtIndexPath:v9];
    if (v10)
    {
      identifier = [objc_opt_class() identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 0x20) != 0)
      {
        v12 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
        v8 = [v12 cellIsIndependentForItem:v10 inCollectionView:viewCopy atIndexPath:v9];
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

- (BOOL)collectionView:(id)view layout:(id)layout hasHeaderForSectionAtIndex:(int64_t)index
{
  titlesForSection = self->_titlesForSection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{index, layout}];
  v7 = [(NSMutableDictionary *)titlesForSection objectForKeyedSubscript:v6];
  LOBYTE(titlesForSection) = v7 != 0;

  return titlesForSection;
}

- (BOOL)collectionView:(id)view layout:(id)layout hasFooterForSectionAtIndex:(int64_t)index
{
  footerTextItemsBySection = self->_footerTextItemsBySection;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{index, layout}];
  v7 = [(NSMutableDictionary *)footerTextItemsBySection objectForKeyedSubscript:v6];
  LOBYTE(footerTextItemsBySection) = v7 != 0;

  return footerTextItemsBySection;
}

- (id)collectionView:(id)view layout:(id)layout trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path
{
  v26[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  dataSource = self->_dataSource;
  v12 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];
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
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView reloadData];

  collectionViewLayout = [(PKDashboardViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (id)collectionView:(id)view layout:(id)layout separatorInsetsForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= -[PKDashboardViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", viewCopy) || (v10 = [pathCopy item], v10 >= -[PKDashboardViewController collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", viewCopy, objc_msgSend(pathCopy, "section"))) || -[PKDashboardViewController _isIndexPathAHeader:](self, "_isIndexPathAHeader:", pathCopy) || -[PKDashboardViewController _isIndexPathAFooter:](self, "_isIndexPathAFooter:", pathCopy))
  {
    v11 = 0;
  }

  else
  {
    dataSource = self->_dataSource;
    v14 = [(PKDashboardViewController *)self _actualItemIndexPathForIndexPath:pathCopy];
    v15 = [(PKDashboardDataSource *)dataSource itemAtIndexPath:v14];

    if (v15)
    {
      identifier = [objc_opt_class() identifier];
      v17 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
      if (([(PKDashboardViewController *)self methodsForItemIdentifier:identifier]& 0x100) != 0)
      {
        v11 = [v17 separatorInsetsForItem:v15 inCollectionView:viewCopy atIndexPath:pathCopy];
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

- (void)itemChanged:(id)changed atIndexPath:(id)path
{
  changedCopy = changed;
  pathCopy = path;
  collectionView = [(PKDashboardViewController *)self collectionView];
  v8 = [(PKDashboardViewController *)self _internalIndexPathForItemIndexPath:pathCopy];
  v9 = [collectionView cellForItemAtIndexPath:v8];
  if (v9)
  {
    identifier = [objc_opt_class() identifier];
    v11 = [(NSDictionary *)self->_presentersPerIdentifier objectForKey:identifier];
    [v11 updateCell:v9 forItem:changedCopy inCollectionView:collectionView atIndexPath:pathCopy];
  }
}

- (void)performBatchUpdates:(id)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  collectionView = [(PKDashboardViewController *)self collectionView];
  v12 = completionCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKDashboardViewController_performBatchUpdates_completion___block_invoke;
  v13[3] = &unk_1E8010B50;
  v14 = updatesCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PKDashboardViewController_performBatchUpdates_completion___block_invoke_2;
  v11[3] = &unk_1E8010AD8;
  v9 = completionCopy;
  v10 = updatesCopy;
  [collectionView performBatchUpdates:v13 completion:v11];
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

- (void)reloadSections:(id)sections
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKDashboardViewController_reloadSections___block_invoke;
  v6[3] = &unk_1E8011A68;
  v6[4] = self;
  sectionsCopy = sections;
  [sectionsCopy enumerateIndexesUsingBlock:v6];
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView reloadSections:sectionsCopy];
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

- (void)deleteItemsAtIndexPaths:(id)paths
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = pathsCopy;
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

  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView deleteItemsAtIndexPaths:v5];
}

- (void)insertItemsAtIndexPaths:(id)paths
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = pathsCopy;
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

  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView insertItemsAtIndexPaths:v5];
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
}

- (void)insertSections:(id)sections
{
  sectionsCopy = sections;
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView insertSections:sectionsCopy];
}

- (void)deleteSections:(id)sections
{
  sectionsCopy = sections;
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView deleteSections:sectionsCopy];
}

- (void)moveSection:(int64_t)section toSection:(int64_t)toSection
{
  collectionView = [(PKDashboardViewController *)self collectionView];
  [collectionView moveSection:section toSection:toSection];
}

- (void)_presentAllContent
{
  if (!self->_isPresentingContent)
  {
    collectionView = [(PKDashboardViewController *)self collectionView];
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
          v6 = collectionView;
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

- (void)_hideAllContentAnimated:(BOOL)animated
{
  if (!self->_isHidingContent)
  {
    animatedCopy = animated;
    collectionView = [(PKDashboardViewController *)self collectionView];
    if (self->_customLayout && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (animatedCopy)
      {
        self->_isHidingContent = 1;
        v6 = MEMORY[0x1E69DD250];
        collectionViewFactory = self->_collectionViewFactory;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __53__PKDashboardViewController__hideAllContentAnimated___block_invoke;
        v8[3] = &unk_1E8010A10;
        v9 = collectionView;
        selfCopy = self;
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
    navigationItem = [(PKDashboardViewController *)self navigationItem];
    v5 = navigationItem;
    if (self->_useChromelessNavigationItem)
    {
      if (self->_freezeChromelessNavigationItem)
      {
        [navigationItem _setManualScrollEdgeAppearanceProgress:0.0];
      }

      else
      {
        [(PKDashboardViewController *)self _updateNavigationBarVisibility];
      }

      [v5 pkui_setupScrollEdgeChromelessAppearance];
      useChromelessNavigationItem = self->_useChromelessNavigationItem;
      navigationItem = v5;
    }

    else
    {
      useChromelessNavigationItem = 0;
    }

    [navigationItem _setManualScrollEdgeAppearanceEnabled:useChromelessNavigationItem];
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
    navigationItem = [(PKDashboardViewController *)self navigationItem];
    if ([(PKDashboardViewController *)self isViewLoaded])
    {
      collectionView = [(PKDashboardViewController *)self collectionView];
      [collectionView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
    }

    else
    {
      [navigationItem _setManualScrollEdgeAppearanceProgress:0.0];
    }
  }
}

- (PKDashboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end