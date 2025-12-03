@interface SXMultiScrollViewDelegate
- (BOOL)allowsHorizontalScrollingForScrollView:(id)view;
- (BOOL)allowsVerticalRubberbandingForScrollView:(id)view;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (CGPoint)scrollView:(id)view restrictContentOffset:(CGPoint)offset;
- (SXMultiScrollViewDelegate)init;
- (id)viewForZoomingInScrollView:(id)view;
- (void)addDelegate:(id)delegate;
- (void)removeDelegate:(id)delegate;
- (void)replaceDelegate:(id)delegate withDelegate:(id)withDelegate;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidEndSwipe:(id)swipe;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidLayoutSubviews:(id)subviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)scrollViewWillScroll:(id)scroll;
@end

@implementation SXMultiScrollViewDelegate

- (SXMultiScrollViewDelegate)init
{
  v8.receiver = self;
  v8.super_class = SXMultiScrollViewDelegate;
  v2 = [(SXMultiScrollViewDelegate *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    scrollViewDelegates = v2->_scrollViewDelegates;
    v2->_scrollViewDelegates = v3;

    v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    tskScrollViewDelegates = v2->_tskScrollViewDelegates;
    v2->_tskScrollViewDelegates = v5;
  }

  return v2;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([delegateCopy conformsToProtocol:&unk_1F53E2C78])
  {
    tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  }

  else
  {
    if (![delegateCopy conformsToProtocol:&unk_1F53AE468])
    {
      goto LABEL_6;
    }

    tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  }

  v5 = tskScrollViewDelegates;
  [tskScrollViewDelegates addObject:delegateCopy];

LABEL_6:
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
    [scrollViewDelegates removeObject:delegateCopy];

    tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
    [tskScrollViewDelegates removeObject:delegateCopy];
  }
}

- (void)replaceDelegate:(id)delegate withDelegate:(id)withDelegate
{
  delegateCopy = delegate;
  withDelegateCopy = withDelegate;
  if (delegateCopy)
  {
    scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
    v8 = [scrollViewDelegates containsObject:delegateCopy];

    if (v8)
    {
      scrollViewDelegates2 = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
    }

    else
    {
      tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
      v11 = [tskScrollViewDelegates containsObject:delegateCopy];

      if (!v11)
      {
        goto LABEL_7;
      }

      scrollViewDelegates2 = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
    }

    v12 = scrollViewDelegates2;
    [scrollViewDelegates2 removeObject:delegateCopy];

    [(SXMultiScrollViewDelegate *)self addDelegate:delegateCopy];
  }

LABEL_7:
}

- (void)scrollViewDidScroll:(id)scroll
{
  v27 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidScroll:scrollCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewDidScroll:scrollCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  v27 = *MEMORY[0x1E69E9840];
  zoomCopy = zoom;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidZoom:zoomCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewDidZoom:zoomCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v27 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewWillBeginDragging:draggingCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewWillBeginDragging:draggingCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v32 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v11 = [scrollViewDelegates countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [scrollViewDelegates countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v17 = [tskScrollViewDelegates countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [tskScrollViewDelegates countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  v29 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v8 = [scrollViewDelegates countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [scrollViewDelegates countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v14 = [tskScrollViewDelegates countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [tskScrollViewDelegates countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  v27 = *MEMORY[0x1E69E9840];
  deceleratingCopy = decelerating;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewWillBeginDecelerating:deceleratingCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewWillBeginDecelerating:deceleratingCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v27 = *MEMORY[0x1E69E9840];
  deceleratingCopy = decelerating;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidEndDecelerating:deceleratingCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewDidEndDecelerating:deceleratingCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v27 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidEndScrollingAnimation:animationCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewDidEndScrollingAnimation:animationCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (id)viewForZoomingInScrollView:(id)view
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(scrollViewDelegates);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    scrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
    v11 = [scrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v11)
    {
LABEL_17:
      v15 = 0;
      goto LABEL_19;
    }

    v12 = v11;
    v13 = *v18;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(scrollViewDelegates);
      }

      v10 = *(*(&v17 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [scrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  v15 = [v10 viewForZoomingInScrollView:viewCopy];
LABEL_19:

  return v15;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  zoomingCopy = zooming;
  viewCopy = view;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v9 = [scrollViewDelegates countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 scrollViewWillBeginZooming:zoomingCopy withView:viewCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [scrollViewDelegates countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v15 = [tskScrollViewDelegates countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 scrollViewWillBeginZooming:zoomingCopy withView:viewCopy];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [tskScrollViewDelegates countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  v32 = *MEMORY[0x1E69E9840];
  zoomingCopy = zooming;
  viewCopy = view;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v11 = [scrollViewDelegates countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 scrollViewDidEndZooming:zoomingCopy withView:viewCopy atScale:scale];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [scrollViewDelegates countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v17 = [tskScrollViewDelegates countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 scrollViewDidEndZooming:zoomingCopy withView:viewCopy atScale:scale];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [tskScrollViewDelegates countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  v27 = *MEMORY[0x1E69E9840];
  topCopy = top;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(scrollViewDelegates);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    scrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
    v11 = [scrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v11)
    {
      v15 = 1;
      goto LABEL_19;
    }

    v12 = v11;
    v13 = *v18;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(scrollViewDelegates);
      }

      v10 = *(*(&v17 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [scrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
        v15 = 1;
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v15 = [v10 scrollViewShouldScrollToTop:topCopy];
LABEL_19:

  return v15;
}

- (void)scrollViewDidScrollToTop:(id)top
{
  v27 = *MEMORY[0x1E69E9840];
  topCopy = top;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidScrollToTop:topCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewDidScrollToTop:topCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  v27 = *MEMORY[0x1E69E9840];
  insetCopy = inset;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  scrollViewDelegates = [(SXMultiScrollViewDelegate *)self scrollViewDelegates];
  v6 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(scrollViewDelegates);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidChangeAdjustedContentInset:insetCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollViewDelegates countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v12 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 scrollViewDidChangeAdjustedContentInset:insetCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [tskScrollViewDelegates countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)scrollViewWillScroll:(id)scroll
{
  v16 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v6 = [tskScrollViewDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewWillScroll:scrollCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [tskScrollViewDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)allowsHorizontalScrollingForScrollView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v6 = [tskScrollViewDelegates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 allowsHorizontalScrollingForScrollView:viewCopy];
          goto LABEL_11;
        }
      }

      v7 = [tskScrollViewDelegates countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)allowsVerticalRubberbandingForScrollView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v6 = [tskScrollViewDelegates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 allowsVerticalRubberbandingForScrollView:viewCopy];
          goto LABEL_11;
        }
      }

      v7 = [tskScrollViewDelegates countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)scrollViewDidLayoutSubviews:(id)subviews
{
  v16 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v6 = [tskScrollViewDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidLayoutSubviews:subviewsCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [tskScrollViewDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (CGPoint)scrollView:(id)view restrictContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v9 = [tskScrollViewDelegates countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 scrollView:viewCopy restrictContentOffset:{x, y}];
          x = v14;
          y = v15;
          goto LABEL_11;
        }
      }

      v10 = [tskScrollViewDelegates countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)scrollViewDidEndSwipe:(id)swipe
{
  v16 = *MEMORY[0x1E69E9840];
  swipeCopy = swipe;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tskScrollViewDelegates = [(SXMultiScrollViewDelegate *)self tskScrollViewDelegates];
  v6 = [tskScrollViewDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(tskScrollViewDelegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewDidEndSwipe:swipeCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [tskScrollViewDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end