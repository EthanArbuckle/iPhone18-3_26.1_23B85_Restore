@interface SLDisambiguationCollectionViewController
- (CGRect)attributionViewFrame;
- (SLDisambiguationCollectionViewController)initWithHighlight:(id)highlight;
- (id)cellForIndexPath:(id)path inCollectionView:(id)view withItemIdentifier:(id)identifier;
- (id)createAttributionMapWithHighlight:(id)highlight;
- (id)dataSourceWithCollectionView:(id)view;
- (id)finalCompositionalLayout;
- (id)finalLayoutGroup:(id)group itemsCount:(unint64_t)count collectionWidth:(double)width targetItemHeight:(double)height;
- (id)finalLayoutSectionForEnvironment:(id)environment;
- (id)initialCompositionalLayout;
- (id)initialLayoutGroup:(id)group itemsCount:(unint64_t)count collectionWidth:(double)width targetItemHeight:(double)height;
- (id)initialLayoutSectionForEnvironment:(id)environment;
- (unint64_t)cellPillViewVariant;
- (void)collectionViewBackgroundTapped:(id)tapped;
- (void)loadView;
- (void)setHighlight:(id)highlight;
- (void)startAnimation;
- (void)updateDataSourceSnapshot;
- (void)viewDidLayoutSubviews;
@end

@implementation SLDisambiguationCollectionViewController

- (SLDisambiguationCollectionViewController)initWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  objc_initWeak(&location, self);
  v5 = [SLDisambiguationCompositionalLayout alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SLDisambiguationCollectionViewController_initWithHighlight___block_invoke;
  v11[3] = &unk_278927858;
  objc_copyWeak(&v12, &location);
  v6 = [(SLDisambiguationCompositionalLayout *)v5 initWithSectionProvider:v11];
  [(SLDisambiguationCollectionViewController *)self setLayout:v6];

  [(SLDisambiguationCollectionViewController *)self setIsInitialLoad:1];
  layout = [(SLDisambiguationCollectionViewController *)self layout];
  v10.receiver = self;
  v10.super_class = SLDisambiguationCollectionViewController;
  v8 = [(SLDisambiguationCollectionViewController *)&v10 initWithCollectionViewLayout:layout];

  if (v8)
  {
    [(SLDisambiguationCollectionViewController *)v8 setHighlight:highlightCopy];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

id __62__SLDisambiguationCollectionViewController_initWithHighlight___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained initialLayoutSectionForEnvironment:v4];

  return v6;
}

- (void)loadView
{
  v30.receiver = self;
  v30.super_class = SLDisambiguationCollectionViewController;
  [(SLDisambiguationCollectionViewController *)&v30 loadView];
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layout = [(SLDisambiguationCollectionViewController *)self layout];
  v14 = [v3 initWithFrame:layout collectionViewLayout:{v6, v8, v10, v12}];
  [(SLDisambiguationCollectionViewController *)self setCollectionView:v14];

  collectionView = [(SLDisambiguationCollectionViewController *)self collectionView];
  [collectionView setPrefetchingEnabled:0];

  collectionView2 = [(SLDisambiguationCollectionViewController *)self collectionView];
  v17 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_collectionViewBackgroundTapped_];
  [collectionView2 addGestureRecognizer:v17];

  collectionView3 = [(SLDisambiguationCollectionViewController *)self collectionView];
  v19 = [(SLDisambiguationCollectionViewController *)self dataSourceWithCollectionView:collectionView3];
  [(SLDisambiguationCollectionViewController *)self setDataSource:v19];

  dataSource = [(SLDisambiguationCollectionViewController *)self dataSource];
  collectionView4 = [(SLDisambiguationCollectionViewController *)self collectionView];
  [collectionView4 setDataSource:dataSource];

  collectionView5 = [(SLDisambiguationCollectionViewController *)self collectionView];
  [collectionView5 setDelegate:self];

  collectionView6 = [(SLDisambiguationCollectionViewController *)self collectionView];
  v24 = objc_opt_class();
  v25 = +[SLHighlightDisambiguationCell reuseIdentifier];
  [collectionView6 registerClass:v24 forCellWithReuseIdentifier:v25];

  clearColor = [MEMORY[0x277D75348] clearColor];
  v27 = [clearColor colorWithAlphaComponent:0.7];
  collectionView7 = [(SLDisambiguationCollectionViewController *)self collectionView];
  [collectionView7 setBackgroundColor:v27];

  collectionView8 = [(SLDisambiguationCollectionViewController *)self collectionView];
  [collectionView8 setAlpha:1.0];

  [(SLDisambiguationCollectionViewController *)self updateDataSourceSnapshot];
}

- (void)viewDidLayoutSubviews
{
  v39 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = SLDisambiguationCollectionViewController;
  [(SLDisambiguationCollectionViewController *)&v37 viewDidLayoutSubviews];
  if ([(SLDisambiguationCollectionViewController *)self isInitialLoad])
  {
    view = [(SLDisambiguationCollectionViewController *)self view];
    window = [view window];
    [(SLDisambiguationCollectionViewController *)self attributionViewFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    collectionView = [(SLDisambiguationCollectionViewController *)self collectionView];
    [window convertRect:collectionView toView:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    collectionView2 = [(SLDisambiguationCollectionViewController *)self collectionView];
    visibleCells = [collectionView2 visibleCells];
    v24 = [visibleCells count];

    if (v24)
    {
      if ([(SLDisambiguationCollectionViewController *)self isInitialLoad])
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        collectionView3 = [(SLDisambiguationCollectionViewController *)self collectionView];
        visibleCells2 = [collectionView3 visibleCells];

        v27 = [visibleCells2 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v34;
          do
          {
            v30 = 0;
            do
            {
              if (*v34 != v29)
              {
                objc_enumerationMutation(visibleCells2);
              }

              v31 = *(*(&v33 + 1) + 8 * v30);
              [v31 setContentMode:1];
              [v31 setFrame:{v15, v17, v19, v21}];

              ++v30;
            }

            while (v28 != v30);
            v28 = [visibleCells2 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v28);
        }

        [(SLDisambiguationCollectionViewController *)self startAnimation];
        [(SLDisambiguationCollectionViewController *)self setIsInitialLoad:0];
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)startAnimation
{
  v3 = +[SLDisambiguationCollectionViewAnimator init];
  objc_initWeak(&location, self);
  v4 = [SLDisambiguationCompositionalLayout alloc];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__SLDisambiguationCollectionViewController_startAnimation__block_invoke;
  v10 = &unk_278927858;
  objc_copyWeak(&v11, &location);
  v5 = [(SLDisambiguationCompositionalLayout *)v4 initWithSectionProvider:&v7];
  v6 = [(SLDisambiguationCollectionViewController *)self collectionView:v7];
  [v6 setCollectionViewLayout:v5 withAnimator:v3];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __58__SLDisambiguationCollectionViewController_startAnimation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained finalLayoutSectionForEnvironment:v4];

  return v6;
}

- (void)setHighlight:(id)highlight
{
  highlightCopy = highlight;
  if (self->_highlight != highlightCopy)
  {
    v7 = highlightCopy;
    objc_storeStrong(&self->_highlight, highlight);
    v6 = [(SLDisambiguationCollectionViewController *)self createAttributionMapWithHighlight:v7];
    [(SLDisambiguationCollectionViewController *)self setAttributionMap:v6];

    highlightCopy = v7;
  }
}

- (void)updateDataSourceSnapshot
{
  v3 = objc_alloc_init(MEMORY[0x277CFB890]);
  [(SLDisambiguationCollectionViewController *)self setSnapshot:v3];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__SLDisambiguationCollectionViewController_updateDataSourceSnapshot__block_invoke;
  aBlock[3] = &unk_278925D90;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __68__SLDisambiguationCollectionViewController_updateDataSourceSnapshot__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [*(a1 + 32) attributionMap];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (([v2 containsObject:v9] & 1) == 0)
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = [*(a1 + 32) snapshot];
  v11 = [v10 indexOfSectionIdentifier:@"MainSection"];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [*(a1 + 32) snapshot];
    v22 = @"MainSection";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v12 appendSectionsWithIdentifiers:v13];
  }

  v14 = [*(a1 + 32) snapshot];
  [v14 appendItemsWithIdentifiers:v2 intoSectionWithIdentifier:@"MainSection"];

  v15 = [*(a1 + 32) dataSource];
  v16 = [*(a1 + 32) snapshot];
  [v15 applySnapshot:v16 animatingDifferences:1];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)createAttributionMapWithHighlight:(id)highlight
{
  v23 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = highlightCopy;
  attributions = [highlightCopy attributions];
  v7 = [attributions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(attributions);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        uniqueIdentifier = [v11 uniqueIdentifier];
        v13 = [uniqueIdentifier length];

        if (v13)
        {
          uniqueIdentifier2 = [v11 uniqueIdentifier];
          [dictionary setObject:v11 forKey:uniqueIdentifier2];
        }

        else
        {
          NSLog(&cfstr_Slattributiond.isa, self, v11);
        }
      }

      v8 = [attributions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)collectionViewBackgroundTapped:(id)tapped
{
  view = [tapped view];
  collectionView = [(SLDisambiguationCollectionViewController *)self collectionView];

  if (view == collectionView)
  {

    [(SLDisambiguationCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)dataSourceWithCollectionView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D752D0]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SLDisambiguationCollectionViewController_dataSourceWithCollectionView___block_invoke;
  v8[3] = &unk_278927880;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithCollectionView:viewCopy cellProvider:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __73__SLDisambiguationCollectionViewController_dataSourceWithCollectionView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained cellForIndexPath:v8 inCollectionView:v9 withItemIdentifier:v7];

  return v11;
}

- (id)cellForIndexPath:(id)path inCollectionView:(id)view withItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  pathCopy = path;
  v11 = +[SLHighlightDisambiguationCell reuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  attributionMap = [(SLDisambiguationCollectionViewController *)self attributionMap];
  v14 = [attributionMap objectForKey:identifierCopy];

  if (v14)
  {
    [v12 updateWithAttribution:v14];
  }

  return v12;
}

- (id)finalCompositionalLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D752B8]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SLDisambiguationCollectionViewController_finalCompositionalLayout__block_invoke;
  v5[3] = &unk_278927858;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __68__SLDisambiguationCollectionViewController_finalCompositionalLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained finalLayoutSectionForEnvironment:v4];

  return v6;
}

- (id)initialCompositionalLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D752B8]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SLDisambiguationCollectionViewController_initialCompositionalLayout__block_invoke;
  v5[3] = &unk_278927858;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __70__SLDisambiguationCollectionViewController_initialCompositionalLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained initialLayoutSectionForEnvironment:v4];

  return v6;
}

- (id)finalLayoutSectionForEnvironment:(id)environment
{
  v4 = MEMORY[0x277CFB840];
  environmentCopy = environment;
  v22 = [v4 absoluteDimension:335.0];
  v6 = [MEMORY[0x277CFB840] absoluteDimension:64.0];
  v7 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v22 heightDimension:v6];
  v8 = [MEMORY[0x277CFB860] itemWithLayoutSize:v7];
  [v8 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v9 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v10 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v11 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v9 heightDimension:v10];
  v12 = [(SLDisambiguationCollectionViewController *)self finalLayoutGroup:v11 itemsCount:[(NSDiffableDataSourceSnapshot *)self->_snapshot numberOfItems] collectionWidth:335.0 targetItemHeight:64.0];
  v13 = [MEMORY[0x277CFB878] fixedSpacing:10.0];
  [v12 setInterItemSpacing:v13];

  container = [environmentCopy container];
  [container contentSize];
  traitCollection = [environmentCopy traitCollection];

  [traitCollection displayScale];
  UIRoundToScale();
  v17 = v16;

  [v12 contentInsets];
  v19 = v18;
  [v12 contentInsets];
  [v12 setContentInsets:{v19, v17}];
  v20 = [MEMORY[0x277CFB868] sectionWithGroup:v12];

  return v20;
}

- (id)initialLayoutSectionForEnvironment:(id)environment
{
  v4 = MEMORY[0x277CFB840];
  environmentCopy = environment;
  v22 = [v4 absoluteDimension:335.0];
  v6 = [MEMORY[0x277CFB840] absoluteDimension:64.0];
  v7 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v22 heightDimension:v6];
  v8 = [MEMORY[0x277CFB860] itemWithLayoutSize:v7];
  [v8 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v9 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v10 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v11 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v9 heightDimension:v10];
  v12 = [(SLDisambiguationCollectionViewController *)self initialLayoutGroup:v11 itemsCount:[(NSDiffableDataSourceSnapshot *)self->_snapshot numberOfItems] collectionWidth:335.0 targetItemHeight:64.0];
  v13 = [MEMORY[0x277CFB878] fixedSpacing:10.0];
  [v12 setInterItemSpacing:v13];

  container = [environmentCopy container];
  [container contentSize];
  traitCollection = [environmentCopy traitCollection];

  [traitCollection displayScale];
  UIRoundToScale();
  v17 = v16;

  [v12 contentInsets];
  v19 = v18;
  [v12 contentInsets];
  [v12 setContentInsets:{v19, v17}];
  v20 = [MEMORY[0x277CFB868] sectionWithGroup:v12];

  return v20;
}

- (id)initialLayoutGroup:(id)group itemsCount:(unint64_t)count collectionWidth:(double)width targetItemHeight:(double)height
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277CFB850];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__SLDisambiguationCollectionViewController_initialLayoutGroup_itemsCount_collectionWidth_targetItemHeight___block_invoke;
  v12[3] = &unk_2789278A8;
  v13[1] = count;
  objc_copyWeak(v13, &location);
  v10 = [v9 customGroupWithLayoutSize:groupCopy itemProvider:v12];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v10;
}

id __107__SLDisambiguationCollectionViewController_initialLayoutGroup_itemsCount_collectionWidth_targetItemHeight___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained view];
  v5 = [v4 window];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 attributionViewFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 collectionView];
  [v5 convertRect:v16 toView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (*(a1 + 40))
  {
    v25 = 0;
    do
    {
      v26 = [MEMORY[0x277CFB858] customItemWithFrame:v25 zIndex:{v18, v20, v22, v24}];
      [v2 addObject:v26];
      ++v25;
    }

    while (*(a1 + 40) > v25);
  }

  return v2;
}

- (id)finalLayoutGroup:(id)group itemsCount:(unint64_t)count collectionWidth:(double)width targetItemHeight:(double)height
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277CFB850];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__SLDisambiguationCollectionViewController_finalLayoutGroup_itemsCount_collectionWidth_targetItemHeight___block_invoke;
  v14[3] = &unk_2789278D0;
  v15[1] = count;
  objc_copyWeak(v15, &location);
  v15[2] = *&width;
  v15[3] = *&height;
  v12 = [v11 customGroupWithLayoutSize:groupCopy itemProvider:v14];
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v12;
}

id __105__SLDisambiguationCollectionViewController_finalLayoutGroup_itemsCount_collectionWidth_targetItemHeight___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collectionView];
  [v4 frame];
  v6 = v5;

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 collectionView];
  [v8 frame];
  v10 = v9;
  v11 = *(a1 + 48);

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = 0;
    v14 = v6 * 0.5;
    v15 = (v10 - v11) * 0.5;
    MaxY = 0.0;
    do
    {
      v18 = *(a1 + 48);
      v17 = *(a1 + 56);
      v19 = v14 + v12 * -0.5 * v17;
      if (v13)
      {
        v19 = MaxY;
      }

      v20 = v19 + 10.0;
      v21 = [MEMORY[0x277CFB858] customItemWithFrame:v13 zIndex:{v15, v19 + 10.0, *(a1 + 48), *(a1 + 56)}];
      [v2 addObject:v21];
      v24.origin.x = v15;
      v24.origin.y = v20;
      v24.size.width = v18;
      v24.size.height = v17;
      MaxY = CGRectGetMaxY(v24);
      ++v13;

      v12 = *(a1 + 40);
    }

    while (v12 > v13);
  }

  return v2;
}

- (unint64_t)cellPillViewVariant
{
  collectionView = [(SLDisambiguationCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  if (!visibleCells)
  {
    return 0;
  }

  collectionView2 = [(SLDisambiguationCollectionViewController *)self collectionView];
  visibleCells2 = [collectionView2 visibleCells];
  firstObject = [visibleCells2 firstObject];

  expandedAttributionView = [firstObject expandedAttributionView];
  pillVariant = [expandedAttributionView pillVariant];

  return pillVariant;
}

- (CGRect)attributionViewFrame
{
  x = self->_attributionViewFrame.origin.x;
  y = self->_attributionViewFrame.origin.y;
  width = self->_attributionViewFrame.size.width;
  height = self->_attributionViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end