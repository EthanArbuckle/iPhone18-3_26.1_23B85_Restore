@interface OKNavigatorCollectionViewControllerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)currentPageViewControllerIndexPath;
- (void)_scrollViewDidCompleteScrolling;
- (void)commonInit;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)navigateToPageWithName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)prepareAdjacentPages:(unint64_t)pages withDirection:(unint64_t)direction;
- (void)prepareAdjacentPagesForScrolling;
- (void)resolutionDidChange;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setSettingOrientation:(unint64_t)orientation;
- (void)setSettingTransition:(unint64_t)transition;
- (void)updateCollectionView;
- (void)updateCollectionViewLayoutItemSize;
- (void)updateCurrentPageViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation OKNavigatorCollectionViewControllerProxy

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewController *)&v3 commonInit];
  self->_collectionView = 0;
  self->_collectionViewContentPreviousOffset.x = 0.0;
  self->_collectionViewContentPreviousOffset.y = 0.0;
  self->_scrollViewDidEndDragging = 0;
  self->_orderedPagesNames = 0;
}

- (void)dealloc
{
  [(OKNavigatorCollectionView *)self->_collectionView setDataSource:0];
  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(OKNavigatorCollectionView *)collectionView setDelegate:0];

    self->_collectionView = 0;
  }

  lastPageViewController = self->_lastPageViewController;
  if (lastPageViewController)
  {

    self->_lastPageViewController = 0;
  }

  orderedPagesNames = self->_orderedPagesNames;
  if (orderedPagesNames)
  {

    self->_orderedPagesNames = 0;
  }

  v6.receiver = self;
  v6.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewController *)&v18 viewDidLoad];
  self->_orderedPagesNames = [(NSMutableArray *)[(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames] copy];
  v3 = objc_alloc_init(OKNavigatorCollectionViewLayout);
  [-[OKNavigatorCollectionViewControllerProxy view](self "view")];
  [(UICollectionViewFlowLayout *)v3 setItemSize:v4, v5];
  [(OKNavigatorCollectionViewLayout *)v3 setCollectionViewController:self];
  v6 = [OKNavigatorCollectionView alloc];
  [-[OKNavigatorCollectionViewControllerProxy view](self "view")];
  self->_collectionView = [(OKNavigatorCollectionView *)v6 initWithFrame:v3 collectionViewLayout:?];

  [(OKNavigatorCollectionView *)self->_collectionView setCollectionViewController:self];
  [(OKNavigatorCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"OKNavigatorCollectionViewCellIdentifier"];
  [(OKNavigatorCollectionView *)self->_collectionView setAllowsSelection:0];
  [(OKNavigatorCollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(OKNavigatorCollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(OKNavigatorCollectionView *)self->_collectionView setClipsToBounds:1];
  [(OKNavigatorCollectionView *)self->_collectionView setAutoresizingMask:18];
  -[OKNavigatorCollectionView setBackgroundColor:](self->_collectionView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [-[OKNavigatorCollectionView layer](self->_collectionView "layer")];
  [(OKNavigatorCollectionView *)self->_collectionView setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(OKNavigatorCollectionView *)self->_collectionView setPagingEnabled:1];
  [(OKNavigatorCollectionView *)self->_collectionView setDelegate:self];
  [(OKNavigatorCollectionView *)self->_collectionView setDataSource:self];
  [-[OKNavigatorCollectionViewControllerProxy view](self "view")];
  currentPageViewController = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
  if (currentPageViewController || (currentPageViewController = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSArray *)self->_orderedPagesNames firstObject] createIfNeeded:1]) != 0)
  {
    v8 = currentPageViewController;
    v9 = [(NSArray *)self->_orderedPagesNames indexOfObject:[(OKPresentationCanvas *)[(OKPageViewController *)currentPageViewController page] name]];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      [-[OKNavigatorCollectionViewControllerProxy view](self "view")];
      [-[OKPageViewController view](v8 "view")];
      v15 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:0];
      [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:v8];
      collectionView = self->_collectionView;
      if ([(OKNavigatorCollectionViewControllerProxy *)self isHorizontal])
      {
        v17 = 16;
      }

      else
      {
        v17 = 2;
      }

      [(OKNavigatorCollectionView *)collectionView scrollToItemAtIndexPath:v15 atScrollPosition:v17 animated:0];
    }
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewDidLayoutSubviews];
}

- (void)resolutionDidChange
{
  v2.receiver = self;
  v2.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 resolutionDidChange];
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 willMoveToParentViewController:controller];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 didMoveToParentViewController:controller];
}

+ (id)supportedSettings
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKNavigatorCollectionViewControllerProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v10[0] = @"transition";
  v8[0] = @"type";
  v8[1] = @"mapping";
  v9[0] = &unk_287AF0590;
  v9[1] = &unk_287AF1EB0;
  v8[2] = @"default";
  v9[2] = @"scroll";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v10[1] = @"orientation";
  v11[0] = v3;
  v6[0] = @"type";
  v6[1] = @"mapping";
  v7[0] = &unk_287AF0590;
  v7[1] = &unk_287AF1ED8;
  v6[2] = @"default";
  v7[2] = @"horizontal";
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (void)setSettingTransition:(unint64_t)transition
{
  if ([-[OKNavigatorCollectionView collectionViewLayout](self->_collectionView "collectionViewLayout")] != transition)
  {
    collectionViewLayout = [(OKNavigatorCollectionView *)self->_collectionView collectionViewLayout];

    [collectionViewLayout setTransitionStyle:transition];
  }
}

- (void)setSettingOrientation:(unint64_t)orientation
{
  if ([-[OKNavigatorCollectionView collectionViewLayout](self->_collectionView "collectionViewLayout")] != orientation)
  {
    if (orientation == 1)
    {
      v6 = 0;
      v5 = 1;
    }

    else
    {
      if (orientation)
      {
        return;
      }

      v5 = 0;
      v6 = 1;
    }

    [-[OKNavigatorCollectionView collectionViewLayout](self->_collectionView "collectionViewLayout")];
    [(OKNavigatorCollectionView *)self->_collectionView setAlwaysBounceHorizontal:v5];
    collectionView = self->_collectionView;

    [(OKNavigatorCollectionView *)collectionView setAlwaysBounceVertical:v6];
  }
}

- (void)updateCollectionView
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = [-[OKNavigatorCollectionView visibleCells](self->_collectionView "visibleCells")];
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v28;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v27 + 1) + 8 * i) prepareForDisplay];
        }

        v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v5);
    }

LABEL_18:
    [(OKNavigatorCollectionViewControllerProxy *)self prepareAdjacentPages];
    return;
  }

  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v8 = [-[OKNavigatorCollectionView visibleCells](self->_collectionView "visibleCells")];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v23 + 1) + 8 * j) prepareForWarmup];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v10);
    }

    goto LABEL_18;
  }

  v21 = 0uLL;
  v22 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v13 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllerForPageWithNames:self->_orderedPagesNames, 0];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v18 prepareForUnload];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v15);
  }
}

- (void)updateCollectionViewLayoutItemSize
{
  [(OKNavigatorCollectionView *)self->_collectionView bounds];
  v4 = v3;
  v6 = v5;
  collectionViewLayout = [(OKNavigatorCollectionView *)self->_collectionView collectionViewLayout];

  [collectionViewLayout setItemSize:{v4, v6}];
}

- (BOOL)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = OKNavigatorCollectionViewControllerProxy;
  prepareForDisplay = [(OKNavigatorViewControllerProxy *)&v5 prepareForDisplay];
  if (prepareForDisplay)
  {
    [(OKNavigatorCollectionViewControllerProxy *)self updateCollectionView];
  }

  return prepareForDisplay;
}

- (BOOL)prepareForWarmup
{
  v5.receiver = self;
  v5.super_class = OKNavigatorCollectionViewControllerProxy;
  prepareForWarmup = [(OKNavigatorViewControllerProxy *)&v5 prepareForWarmup];
  if (prepareForWarmup)
  {
    [(OKNavigatorCollectionViewControllerProxy *)self updateCollectionView];
  }

  return prepareForWarmup;
}

- (BOOL)prepareForUnload
{
  v5.receiver = self;
  v5.super_class = OKNavigatorCollectionViewControllerProxy;
  prepareForUnload = [(OKNavigatorViewControllerProxy *)&v5 prepareForUnload];
  if (prepareForUnload)
  {
    [(OKNavigatorCollectionViewControllerProxy *)self updateCollectionView];
  }

  return prepareForUnload;
}

- (void)updateCurrentPageViewController
{
  collectionView = self->_collectionView;
  [(OKNavigatorCollectionView *)collectionView contentOffset];
  v5 = v4;
  [(OKNavigatorCollectionView *)self->_collectionView bounds];
  v7 = v5 + v6 * 0.5;
  [(OKNavigatorCollectionView *)self->_collectionView contentOffset];
  v9 = v8;
  [(OKNavigatorCollectionView *)self->_collectionView bounds];
  v11 = [-[OKNavigatorCollectionView cellForItemAtIndexPath:](self->_collectionView cellForItemAtIndexPath:{-[OKNavigatorCollectionView indexPathForItemAtPoint:](collectionView, "indexPathForItemAtPoint:", v7, v9 + v10 * 0.5)), "pageViewController"}];

  [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:v11];
}

- (id)currentPageViewControllerIndexPath
{
  v2 = MEMORY[0x277CCAA70];
  v3 = [(NSArray *)self->_orderedPagesNames indexOfObject:[(OKPresentationCanvas *)[(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] page] name]];

  return [v2 indexPathForItem:v3 inSection:1];
}

- (void)prepareAdjacentPages:(unint64_t)pages withDirection:(unint64_t)direction
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  indexPathsForVisibleItems = [(OKNavigatorCollectionView *)self->_collectionView indexPathsForVisibleItems];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  if (indexPathsForVisibleItems && [indexPathsForVisibleItems count])
  {
    v29 = v6;
    v9 = [objc_msgSend(indexPathsForVisibleItems "firstObject")];
    v10 = [objc_msgSend(indexPathsForVisibleItems "firstObject")];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = [indexPathsForVisibleItems countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          if (v9 >= [v15 row])
          {
            v9 = [v15 row];
          }

          if (v10 <= [v15 row])
          {
            v10 = [v15 row];
          }
        }

        v12 = [indexPathsForVisibleItems countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    if (v9 >= 1)
    {
      if (v9 >= pages)
      {
        pagesCopy = pages;
      }

      else
      {
        pagesCopy = v9;
      }

      [indexSet addIndexesInRange:{(v9 - pages) & ~((v9 - pages) >> 63), pagesCopy}];
    }

    v6 = v29;
    if (v10 < [(NSArray *)self->_orderedPagesNames count]- 1)
    {
      if ([(NSArray *)self->_orderedPagesNames count]- (v10 + 1) <= pages)
      {
        pages = [(NSArray *)self->_orderedPagesNames count]- (v10 + 1);
      }

      [indexSet addIndexesInRange:{v10 + 1, pages}];
    }
  }

  else if ([(NSArray *)self->_orderedPagesNames count])
  {
    if ([(NSArray *)self->_orderedPagesNames count]<= pages)
    {
      pages = [(NSArray *)self->_orderedPagesNames count];
    }

    [indexSet addIndexesInRange:{0, pages}];
  }

  v17 = [MEMORY[0x277CBEB58] setWithSet:{-[OKNavigatorViewControllerProxy cachedPageViewControllers](self, "cachedPageViewControllers")}];
  [v17 minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", objc_msgSend(-[OKNavigatorCollectionView visibleCells](self->_collectionView, "visibleCells"), "valueForKeyPath:", @"pageViewController"}];
  firstIndex = [indexSet firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (j = firstIndex; j != 0x7FFFFFFFFFFFFFFFLL; j = [indexSet indexGreaterThanIndex:j])
    {
      v20 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSArray *)self->_orderedPagesNames objectAtIndex:j] createIfNeeded:1];
      [v17 removeObject:v20];
      if ([v20 prepareMode] != 2)
      {
        [-[OKNavigatorCollectionViewControllerProxy view](self "view")];
        [objc_msgSend(v20 "view")];
        [v20 prepareForWarmup];
      }
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v30 + 1) + 8 * k) prepareForUnload];
      }

      v26 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)prepareAdjacentPagesForScrolling
{
  isHorizontal = [(OKNavigatorCollectionViewControllerProxy *)self isHorizontal];
  [(OKNavigatorCollectionView *)self->_collectionView contentOffset];
  v6 = 8;
  if (isHorizontal)
  {
    v6 = 0;
  }

  else
  {
    v4 = v5;
  }

  if (v4 <= *(&self->_collectionViewContentPreviousOffset.x + v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(OKNavigatorCollectionViewControllerProxy *)self prepareAdjacentPages:1 withDirection:v7];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (([dragging isDecelerating] & 1) == 0)
  {
    self->_scrollViewDidEndDragging = 0;
    [(OKNavigatorCollectionView *)self->_collectionView contentOffset];
    self->_collectionViewContentPreviousOffset.x = v4;
    self->_collectionViewContentPreviousOffset.y = v5;
  }
}

- (void)_scrollViewDidCompleteScrolling
{
  if (!self->_scrollViewDidEndDragging)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_prepareAdjacentPagesForScrolling object:0];
    [(OKNavigatorCollectionViewControllerProxy *)self prepareAdjacentPages];
    self->_scrollViewDidEndDragging = 1;
  }

  [(OKNavigatorCollectionViewControllerProxy *)self updateCurrentPageViewController];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(OKNavigatorCollectionViewControllerProxy *)self _scrollViewDidCompleteScrolling];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_prepareAdjacentPagesForScrolling object:0];

  [(OKNavigatorCollectionViewControllerProxy *)self performSelectorOnMainThread:sel_prepareAdjacentPagesForScrolling withObject:0 waitUntilDone:0];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v7 = -[OKNavigatorViewControllerProxy pageViewControllerForPageWithName:createIfNeeded:](self, "pageViewControllerForPageWithName:createIfNeeded:", -[NSArray objectAtIndex:](self->_orderedPagesNames, "objectAtIndex:", [path item]), 1);
  v8 = [view dequeueReusableCellWithReuseIdentifier:@"OKNavigatorCollectionViewCellIdentifier" forIndexPath:path];
  [v8 setPageViewController:v7];
  [v7 setNavigatorViewController:self];
  -[OKNavigatorCollectionViewControllerProxy addChildViewControllerInstantly:toView:](self, "addChildViewControllerInstantly:toView:", v7, [v8 contentView]);
  [v7 prepareForMode:{-[OKNavigatorViewControllerProxy prepareMode](self, "prepareMode")}];
  return v8;
}

- (void)navigateToPageWithName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v9 = [(NSArray *)self->_orderedPagesNames indexOfObject:?];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (completion)
    {
      v10 = *(completion + 2);

      v10(completion, 0);
    }
  }

  else
  {
    v11 = v9;
    v12 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:name createIfNeeded:1];
    [v12 setNavigatorViewController:self];
    [-[OKNavigatorCollectionViewControllerProxy view](self "view")];
    [objc_msgSend(v12 "view")];
    [v12 prepareForMode:{-[OKNavigatorViewControllerProxy prepareMode](self, "prepareMode")}];
    v17 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:0];
    collectionView = self->_collectionView;
    [(OKNavigatorCollectionView *)collectionView contentOffset];
    v20 = v19;
    [(OKNavigatorCollectionView *)self->_collectionView bounds];
    v22 = v20 + v21 * 0.5;
    [(OKNavigatorCollectionView *)self->_collectionView contentOffset];
    v24 = v23;
    [(OKNavigatorCollectionView *)self->_collectionView bounds];
    [-[OKNavigatorCollectionView collectionViewLayout](self->_collectionView "collectionViewLayout")];
    v26 = 0.0;
    if (animatedCopy)
    {
      v26 = 0.25;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __87__OKNavigatorCollectionViewControllerProxy_navigateToPageWithName_animated_completion___block_invoke;
    v28[3] = &unk_279C906B0;
    v28[4] = self;
    v28[5] = v17;
    v29 = animatedCopy;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__OKNavigatorCollectionViewControllerProxy_navigateToPageWithName_animated_completion___block_invoke_2;
    v27[3] = &unk_279C906D8;
    v27[4] = self;
    v27[5] = v12;
    v27[6] = completion;
    [MEMORY[0x277D75D18] animateWithDuration:v28 animations:v27 completion:v26];
  }
}

uint64_t __87__OKNavigatorCollectionViewControllerProxy_navigateToPageWithName_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[147];
  if ([v2 isHorizontal])
  {
    v5 = 16;
  }

  else
  {
    v5 = 2;
  }

  v6 = *(a1 + 48);

  return [v4 scrollToItemAtIndexPath:v3 atScrollPosition:v5 animated:v6];
}

uint64_t __87__OKNavigatorCollectionViewControllerProxy_navigateToPageWithName_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentPageViewController:*(a1 + 40)];
  [*(a1 + 32) prepareAdjacentPages];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorCollectionViewController"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end