@interface SKUIHorizontalScrollingContainerViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SKUIHorizontalScrollingContainerViewControllerDelegate)delegate;
- (UIEdgeInsets)viewControllerContentScrollViewContentInset;
- (id)_indexPathOfFocusedContentItemWithDistanceToFocusedPosition:(double *)position layoutAttributes:(id *)attributes;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contentScrollView;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_applyNewContentInset:(UIEdgeInsets)inset toViewController:(id)controller;
- (void)_applyNewContentInset:(UIEdgeInsets)inset toViewControllers:(id)controllers;
- (void)_scrollViewDidScroll:(id)scroll;
- (void)_scrollViewWillBeginDecelerating:(id)decelerating;
- (void)_setViewControllers:(id)controllers collectionViewsUpdateHandler:(id)handler;
- (void)_synchronizeContentCollectionViewWithMenuBarCollectionView;
- (void)_synchronizeMenuBarCollectionViewWithContentCollectionView;
- (void)_updateScrollViewContentOffsetsToTargetContentOffsets;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)replaceViewControllerAtIndex:(unint64_t)index withViewController:(id)controller;
- (void)scrollToItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)scrollViewDidChangeContentInset:(id)inset;
- (void)setClientContext:(id)context;
- (void)setMenuBarCollectionView:(id)view;
- (void)setNeedsViewControllerContentScrollViewContentInsetUpdate;
- (void)setViewControllers:(id)controllers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SKUIHorizontalScrollingContainerViewController

- (void)dealloc
{
  [(SKUIProxyScrollView *)self->_proxyScrollView setDelegate:0];
  [(UICollectionView *)self->_contentCollectionView setDataSource:0];
  [(UICollectionView *)self->_contentCollectionView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIHorizontalScrollingContainerViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIHorizontalScrollingContainerViewController;
  [(SKUIHorizontalScrollingContainerViewController *)&v22 viewDidLayoutSubviews];
  view = [(SKUIHorizontalScrollingContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  proxyScrollView = self->_proxyScrollView;
  if (proxyScrollView)
  {
    superview = [(SKUIProxyScrollView *)proxyScrollView superview];

    if (!superview)
    {
      [view addSubview:self->_proxyScrollView];
    }
  }

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Width = CGRectGetWidth(v23);
  if (Width >= 2.0)
  {
    v15 = Width;
  }

  else
  {
    v15 = 2.0;
  }

  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v15;
  v24.size.height = v11;
  Height = CGRectGetHeight(v24);
  if (Height >= 2.0)
  {
    v17 = Height;
  }

  else
  {
    v17 = 2.0;
  }

  [(UICollectionView *)self->_contentCollectionView setFrame:v5, v7, v15, v17];
  if (self->_contentCollectionViewItemSize.width != v9 || self->_contentCollectionViewItemSize.height != v11)
  {
    self->_contentCollectionViewItemSize.width = v9;
    self->_contentCollectionViewItemSize.height = v11;
    collectionViewLayout = [(UICollectionView *)self->_contentCollectionView collectionViewLayout];
    v20 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

    [v20 setInvalidateFlowLayoutDelegateMetrics:1];
    collectionViewLayout2 = [(UICollectionView *)self->_contentCollectionView collectionViewLayout];
    [collectionViewLayout2 invalidateLayoutWithContext:v20];
  }
}

- (void)viewDidLoad
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIHorizontalScrollingContainerViewController viewDidLoad]";
}

- (id)contentScrollView
{
  if (!self->_proxyScrollView && [(SKUIHorizontalScrollingContainerViewController *)self isViewLoaded])
  {
    v3 = [SKUIProxyScrollView alloc];
    v4 = [(SKUIProxyScrollView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    proxyScrollView = self->_proxyScrollView;
    self->_proxyScrollView = v4;

    [(SKUIProxyScrollView *)self->_proxyScrollView setHidden:1];
    [(SKUIProxyScrollView *)self->_proxyScrollView setDelegate:self];
    [(SKUIProxyScrollView *)self->_proxyScrollView setScrollEnabled:0];
    [(SKUIProxyScrollView *)self->_proxyScrollView setScrollsToTop:0];
    view = [(SKUIHorizontalScrollingContainerViewController *)self view];
    [view addSubview:self->_proxyScrollView];
  }

  v7 = self->_proxyScrollView;

  return v7;
}

- (void)setClientContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SKUIHorizontalScrollingContainerViewController;
  [(SKUIViewController *)&v15 setClientContext:contextCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_viewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_2828EAAC0, v11}])
        {
          [v10 setClientContext:contextCopy];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)scrollViewDidChangeContentInset:(id)inset
{
  if (self->_proxyScrollView == inset)
  {
    [inset contentInset];
    v8.f64[0] = v4;
    v8.f64[1] = v5;
    v9.f64[0] = v6;
    v9.f64[1] = v7;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.top, v8), vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.bottom, v9)))) & 1) == 0)
    {
      self->_proxyScrollViewContentInsetAdjustment.top = v4;
      self->_proxyScrollViewContentInsetAdjustment.left = v5;
      self->_proxyScrollViewContentInsetAdjustment.bottom = v6;
      self->_proxyScrollViewContentInsetAdjustment.right = v7;
      [(SKUIHorizontalScrollingContainerViewController *)self viewControllerContentScrollViewContentInset];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      viewControllers = [(SKUIHorizontalScrollingContainerViewController *)self viewControllers];
      [(SKUIHorizontalScrollingContainerViewController *)self _applyNewContentInset:viewControllers toViewControllers:v11, v13, v15, v17];
    }
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (self->_contentCollectionView == view)
  {
    return [(NSArray *)self->_viewControllers count];
  }

  else
  {
    return 0;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  if (self->_contentCollectionView == view)
  {
    pathCopy = path;
    v4 = [view dequeueReusableCellWithReuseIdentifier:0x282809408 forIndexPath:pathCopy];
    viewControllers = self->_viewControllers;
    item = [pathCopy item];

    v10 = [(NSArray *)viewControllers objectAtIndex:item % [(NSArray *)self->_viewControllers count]];
    view = [v10 view];
    [(SKUIHorizontalScrollingContainerViewController *)self viewControllerContentScrollViewContentInset];
    [(SKUIHorizontalScrollingContainerViewController *)self _applyNewContentInset:v10 toViewController:?];
    [v4 setViewController:v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_contentCollectionView == view)
  {
    v9 = pathCopy;
    delegate = [(SKUIHorizontalScrollingContainerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate horizontalScrollingContainerViewController:self willDisplayViewControllerAtIndex:{objc_msgSend(v9, "item") % -[NSArray count](self->_viewControllers, "count")}];
    }

    pathCopy = v9;
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_contentCollectionView == view)
  {
    v9 = pathCopy;
    delegate = [(SKUIHorizontalScrollingContainerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate horizontalScrollingContainerViewController:self didEndDisplayingViewControllerAtIndex:{objc_msgSend(v9, "item") % -[NSArray count](self->_viewControllers, "count")}];
    }

    pathCopy = v9;
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  if (self->_contentCollectionView == view)
  {
    p_contentCollectionViewItemSize = &self->_contentCollectionViewItemSize;
  }

  else
  {
    p_contentCollectionViewItemSize = MEMORY[0x277CBF3A8];
  }

  width = p_contentCollectionViewItemSize->width;
  height = p_contentCollectionViewItemSize->height;
  if (p_contentCollectionViewItemSize->width < 2.0)
  {
    width = 2.0;
  }

  if (height < 2.0)
  {
    height = 2.0;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setMenuBarCollectionView:(id)view
{
  viewCopy = view;
  menuBarCollectionView = self->_menuBarCollectionView;
  if (menuBarCollectionView != viewCopy)
  {
    v9 = viewCopy;
    [(UICollectionView *)menuBarCollectionView _setContentOffsetRoundingEnabled:1];
    delegate = [(UICollectionView *)self->_menuBarCollectionView delegate];
    if ([delegate conformsToProtocol:&unk_2828EEFB8])
    {
      [delegate setScrollViewDelegateObserver:0];
    }

    objc_storeStrong(&self->_menuBarCollectionView, view);
    [(UICollectionView *)self->_menuBarCollectionView _setContentOffsetRoundingEnabled:0];
    delegate2 = [(UICollectionView *)self->_menuBarCollectionView delegate];

    if ([delegate2 conformsToProtocol:&unk_2828EEFB8])
    {
      [delegate2 setScrollViewDelegateObserver:self];
    }

    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](menuBarCollectionView, viewCopy);
}

- (void)setViewControllers:(id)controllers
{
  selfCopy = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SKUIHorizontalScrollingContainerViewController_setViewControllers___block_invoke;
  v6[3] = &unk_2781F80F0;
  v7 = selfCopy;
  v5 = selfCopy;
  [(SKUIHorizontalScrollingContainerViewController *)v5 _setViewControllers:controllers collectionViewsUpdateHandler:v6];
}

uint64_t __69__SKUIHorizontalScrollingContainerViewController_setViewControllers___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1168) reloadData];
  [*(*(a1 + 32) + 1080) reloadData];
  v2 = *(a1 + 32);

  return [v2 _updateScrollViewContentOffsetsToTargetContentOffsets];
}

- (void)replaceViewControllerAtIndex:(unint64_t)index withViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [(NSArray *)self->_viewControllers mutableCopy];
  [v7 replaceObjectAtIndex:index withObject:controllerCopy];
  v8 = [(NSArray *)self->_viewControllers objectAtIndex:index];
  title = [v8 title];
  title2 = [controllerCopy title];
  v11 = [title isEqualToString:title2];

  if (v11)
  {
    v12 = [(NSArray *)self->_viewControllers count];
    selfCopy = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__SKUIHorizontalScrollingContainerViewController_replaceViewControllerAtIndex_withViewController___block_invoke;
    v15[3] = &unk_2781FB698;
    v16 = selfCopy;
    v18 = v12;
    indexCopy = index;
    v17 = controllerCopy;
    v14 = selfCopy;
    [(SKUIHorizontalScrollingContainerViewController *)v14 _setViewControllers:v7 collectionViewsUpdateHandler:v15];
  }

  else
  {
    [(SKUIHorizontalScrollingContainerViewController *)self setViewControllers:v7];
  }
}

void __98__SKUIHorizontalScrollingContainerViewController_replaceViewControllerAtIndex_withViewController___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 1168) indexPathsForVisibleItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 item] % *(a1 + 48) == *(a1 + 56))
        {
          v8 = [*(*(a1 + 32) + 1080) cellForItemAtIndexPath:v7];
          if (v8)
          {
            v9 = v8;
            goto LABEL_12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  v10 = [*(a1 + 40) view];
  v11 = *(a1 + 32);
  [v11 viewControllerContentScrollViewContentInset];
  [v11 _applyNewContentInset:*(a1 + 40) toViewController:?];
  [v9 setViewController:*(a1 + 40)];
}

- (void)scrollToItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = [(UICollectionView *)self->_contentCollectionView layoutAttributesForItemAtIndexPath:path];
  [(UICollectionView *)self->_contentCollectionView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UICollectionView *)self->_contentCollectionView contentOffset];
  v15 = v14;
  [v20 frame];
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v17 = MidX + CGRectGetWidth(v23) * -0.5;
  contentCollectionView = self->_contentCollectionView;
  collectionViewLayout = [(UICollectionView *)contentCollectionView collectionViewLayout];
  [collectionViewLayout targetContentOffsetForProposedContentOffset:{v17, v15}];
  [(UICollectionView *)contentCollectionView setContentOffset:animatedCopy animated:?];
}

- (void)setNeedsViewControllerContentScrollViewContentInsetUpdate
{
  [(SKUIHorizontalScrollingContainerViewController *)self viewControllerContentScrollViewContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  viewControllers = [(SKUIHorizontalScrollingContainerViewController *)self viewControllers];
  [(SKUIHorizontalScrollingContainerViewController *)self _applyNewContentInset:viewControllers toViewControllers:v4, v6, v8, v10];
}

- (UIEdgeInsets)viewControllerContentScrollViewContentInset
{
  top = self->_proxyScrollViewContentInsetAdjustment.top;
  left = self->_proxyScrollViewContentInsetAdjustment.left;
  bottom = self->_proxyScrollViewContentInsetAdjustment.bottom;
  right = self->_proxyScrollViewContentInsetAdjustment.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_applyNewContentInset:(UIEdgeInsets)inset toViewController:(id)controller
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  controllerCopy = controller;
  v10 = controllerCopy;
  if (controllerCopy)
  {
    v50 = controllerCopy;
    v11 = [(NSMapTable *)self->_viewControllerToExistingContentInsetAdjustment objectForKey:controllerCopy];
    [v11 UIEdgeInsetsValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v10 = v50;
    v20 = left == v15 && top == v13;
    v21 = v20 && right == v19;
    if (!v21 || bottom != v17)
    {
      contentScrollView = [v50 contentScrollView];
      if (contentScrollView)
      {
        viewControllerToExistingContentInsetAdjustment = self->_viewControllerToExistingContentInsetAdjustment;
        if (!viewControllerToExistingContentInsetAdjustment)
        {
          v25 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
          v26 = self->_viewControllerToExistingContentInsetAdjustment;
          self->_viewControllerToExistingContentInsetAdjustment = v25;

          viewControllerToExistingContentInsetAdjustment = self->_viewControllerToExistingContentInsetAdjustment;
        }

        v27 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{top, left, bottom, right}];
        [(NSMapTable *)viewControllerToExistingContentInsetAdjustment setObject:v27 forKey:v50];

        [contentScrollView contentOffset];
        v48 = v29;
        v49 = v28;
        [contentScrollView contentInset];
        v40 = v30;
        v41 = v31;
        v42 = v32;
        v43 = v33;
        [contentScrollView scrollIndicatorInsets];
        v44 = v34;
        v45 = v35;
        v46 = v36;
        v47 = v37;
        [contentScrollView setContentInset:{top + v40 - v13, left + v41 - v15, bottom + v42 - v17, right + v43 - v19}];
        [contentScrollView setScrollIndicatorInsets:{top + v44 - v13, left + v45 - v15, bottom + v46 - v17, right + v47 - v19}];
        [contentScrollView setContentOffset:{v49, v13 + v48 - top}];
      }

      v38 = self->_viewControllerToExistingContentInsetAdjustment;
      if (v38 && ![(NSMapTable *)v38 count])
      {
        v39 = self->_viewControllerToExistingContentInsetAdjustment;
        self->_viewControllerToExistingContentInsetAdjustment = 0;
      }

      v10 = v50;
    }
  }

  MEMORY[0x2821F96F8](controllerCopy, v10);
}

- (void)_applyNewContentInset:(UIEdgeInsets)inset toViewControllers:(id)controllers
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  v19 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [controllersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(controllersCopy);
        }

        [(SKUIHorizontalScrollingContainerViewController *)self _applyNewContentInset:*(*(&v14 + 1) + 8 * v13++) toViewController:top, left, bottom, right];
      }

      while (v11 != v13);
      v11 = [controllersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)_indexPathOfFocusedContentItemWithDistanceToFocusedPosition:(double *)position layoutAttributes:(id *)attributes
{
  v30 = *MEMORY[0x277D85DE8];
  [(UICollectionView *)self->_contentCollectionView layoutIfNeeded];
  [(UICollectionView *)self->_contentCollectionView bounds];
  UIRectGetCenter();
  v6 = v5;
  [(UICollectionView *)self->_contentCollectionView visibleCells];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v26;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(UICollectionView *)self->_contentCollectionView indexPathForCell:*(*(&v25 + 1) + 8 * i)];
        if (v14)
        {
          v15 = [(UICollectionView *)self->_contentCollectionView layoutAttributesForItemAtIndexPath:v14];
          [v15 frame];
          v16 = CGRectGetMidX(v32) - v6;
          if (!v9 || fabs(v16) < fabs(v12))
          {
            v17 = v14;

            v18 = v15;
            v19 = v10;
            v10 = v18;

            v9 = v17;
            v12 = v16;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v12 = 0.0;
  }

  if (position)
  {
    *position = v12;
  }

  if (attributes)
  {
    v20 = v10;
    *attributes = v10;
  }

  return v9;
}

- (void)_scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_proxyScrollView != scrollCopy && !self->_isHandlingScrollViewDidScroll)
  {
    self->_isHandlingScrollViewDidScroll = 1;
    if (self->_menuBarCollectionView == scrollCopy)
    {
      v5 = scrollCopy;
      [(SKUIHorizontalScrollingContainerViewController *)self _synchronizeContentCollectionViewWithMenuBarCollectionView];
    }

    else
    {
      if (self->_contentCollectionView != scrollCopy)
      {
LABEL_8:
        self->_isHandlingScrollViewDidScroll = 0;
        goto LABEL_9;
      }

      v5 = scrollCopy;
      [(SKUIHorizontalScrollingContainerViewController *)self _synchronizeMenuBarCollectionViewWithContentCollectionView];
    }

    scrollCopy = v5;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  contentCollectionView = self->_contentCollectionView;
  if (self->_menuBarCollectionView == deceleratingCopy)
  {
    v7 = deceleratingCopy;
  }

  else
  {
    if (contentCollectionView != deceleratingCopy)
    {
      goto LABEL_7;
    }

    v7 = deceleratingCopy;
    contentCollectionView = self->_menuBarCollectionView;
  }

  v6 = contentCollectionView;
  deceleratingCopy = v7;
  if (v6)
  {
    [(UICollectionView *)v6 contentOffset];
    [(UICollectionView *)v6 setContentOffset:0 animated:?];

    deceleratingCopy = v7;
  }

LABEL_7:
}

- (void)_setViewControllers:(id)controllers collectionViewsUpdateHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  handlerCopy = handler;
  viewControllers = self->_viewControllers;
  if (viewControllers != controllersCopy && ![(NSArray *)viewControllers isEqualToArray:controllersCopy])
  {
    v48 = handlerCopy;
    v9 = [(NSArray *)self->_viewControllers copy];
    v47 = controllersCopy;
    v10 = [(NSArray *)controllersCopy copy];
    v11 = self->_viewControllers;
    self->_viewControllers = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          if (![(NSArray *)self->_viewControllers containsObject:v18])
          {
            [v12 addObject:v18];
            parentViewController = [v18 parentViewController];

            if (parentViewController == self)
            {
              [v18 willMoveToParentViewController:0];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v15);
    }

    if ([v12 count])
    {
      [(SKUIHorizontalScrollingContainerViewController *)self _applyNewContentInset:v12 toViewControllers:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_viewControllers, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v21 = self->_viewControllers;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v58 objects:v68 count:16];
    v23 = &selRef_performCommitTransitionForPreviewViewController_completion_;
    if (v22)
    {
      v24 = v22;
      v25 = *v59;
      do
      {
        v26 = 0;
        v49 = v24;
        do
        {
          if (*v59 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v58 + 1) + 8 * v26);
          if (([v13 containsObject:v27] & 1) == 0)
          {
            [v20 addObject:v27];
            if ([v27 conformsToProtocol:v23[232]])
            {
              [(SKUIViewController *)self clientContext];
              v28 = v25;
              selfCopy = self;
              v30 = v21;
              v31 = v20;
              v32 = v13;
              v33 = v23;
              v35 = v34 = v12;
              [v27 setClientContext:v35];

              v12 = v34;
              v23 = v33;
              v13 = v32;
              v20 = v31;
              v21 = v30;
              self = selfCopy;
              v25 = v28;
              v24 = v49;
            }

            [(SKUIHorizontalScrollingContainerViewController *)self addChildViewController:v27];
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [(NSArray *)v21 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v24);
    }

    v48[2]();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v36 = v20;
    v37 = [v36 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v55;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [*(*(&v54 + 1) + 8 * j) didMoveToParentViewController:self];
        }

        v38 = [v36 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v38);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v12;
    v42 = [v41 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v51;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v50 + 1) + 8 * k);
          [v46 removeFromParentViewController];
          if ([v46 conformsToProtocol:v23[232]])
          {
            [v46 setClientContext:0];
          }

          [(NSMapTable *)self->_viewControllerToExistingContentInsetAdjustment removeObjectForKey:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v43);
    }

    controllersCopy = v47;
    handlerCopy = v48;
  }
}

- (void)_synchronizeContentCollectionViewWithMenuBarCollectionView
{
  collectionViewLayout = [(UICollectionView *)self->_menuBarCollectionView collectionViewLayout];
  if ([collectionViewLayout conformsToProtocol:&unk_2829749B0])
  {
    v10 = 0.0;
    v4 = [collectionViewLayout menuBarFocusedItemIndexPathWithTransitionProgress:&v10];
    v5 = [(UICollectionView *)self->_contentCollectionView layoutAttributesForItemAtIndexPath:v4];
    [v5 frame];
    Width = CGRectGetWidth(v11);
    [(UICollectionView *)self->_contentCollectionView contentOffset];
    v8 = v7;
    [v5 frame];
    v9 = CGRectGetMidX(v12) - v10 * Width;
    [(UICollectionView *)self->_contentCollectionView bounds];
    [(UICollectionView *)self->_contentCollectionView setContentOffset:v9 + CGRectGetWidth(v13) * -0.5, v8];
  }
}

- (void)_synchronizeMenuBarCollectionViewWithContentCollectionView
{
  v10 = 0;
  v11 = 0.0;
  v3 = [(SKUIHorizontalScrollingContainerViewController *)self _indexPathOfFocusedContentItemWithDistanceToFocusedPosition:&v11 layoutAttributes:&v10];
  v4 = v10;
  v5 = v4;
  if (v3 && v4)
  {
    [v4 frame];
    Width = CGRectGetWidth(v12);
    v7 = v11;
    collectionViewLayout = [(UICollectionView *)self->_menuBarCollectionView collectionViewLayout];
    if ([collectionViewLayout conformsToProtocol:&unk_2829749B0])
    {
      v9 = v7 / Width;
      if (v7 / Width < -1.0)
      {
        v9 = -1.0;
      }

      [collectionViewLayout setMenuBarFocusedItemIndexPath:v3 withTransitionProgress:{fmin(v9, 1.0)}];
    }
  }
}

- (void)_updateScrollViewContentOffsetsToTargetContentOffsets
{
  [(UICollectionView *)self->_menuBarCollectionView contentOffset];
  v4 = v3;
  v6 = v5;
  collectionViewLayout = [(UICollectionView *)self->_menuBarCollectionView collectionViewLayout];
  [collectionViewLayout targetContentOffsetForProposedContentOffset:{v4, v6}];
  v9 = v8;
  v11 = v10;

  if (v4 != v9 || v6 != v11)
  {
    [(UICollectionView *)self->_menuBarCollectionView setContentOffset:v9, v11];
  }

  [(UICollectionView *)self->_contentCollectionView contentOffset];
  v14 = v13;
  v16 = v15;
  collectionViewLayout2 = [(UICollectionView *)self->_contentCollectionView collectionViewLayout];
  [collectionViewLayout2 targetContentOffsetForProposedContentOffset:{v14, v16}];
  v19 = v18;
  v21 = v20;

  if (v14 != v19 || v16 != v21)
  {
    contentCollectionView = self->_contentCollectionView;

    [(UICollectionView *)contentCollectionView setContentOffset:v19, v21];
  }
}

- (SKUIHorizontalScrollingContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end