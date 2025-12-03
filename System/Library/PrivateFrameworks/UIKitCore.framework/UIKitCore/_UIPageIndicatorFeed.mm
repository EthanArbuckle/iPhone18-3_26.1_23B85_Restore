@interface _UIPageIndicatorFeed
- (BOOL)_isPageWithinActiveBounds:(int64_t)bounds;
- (CGSize)indicatorSizeForCustomImage:(id)image;
- (CGSize)indicatorSizeForPage:(int64_t)page;
- (NSArray)indicators;
- (_UIPageIndicatorFeed)initWithPageControl:(id)control;
- (_UIPageIndicatorFeedDelegate)delegate;
- (id)activeIndicatorForPage:(int64_t)page;
- (id)indicatorForPage:(int64_t)page forSizeOnly:(BOOL)only;
- (void)invalidateIndicators;
- (void)prepareIndicatorsFrom:(int64_t)from to:(int64_t)to;
- (void)reloadIndicatorImageForPage:(int64_t)page;
- (void)reloadIndicatorImages;
- (void)updateReuseQueue;
@end

@implementation _UIPageIndicatorFeed

- (NSArray)indicators
{
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  v3 = [activeQueue copy];

  return v3;
}

- (void)updateReuseQueue
{
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  v4 = [activeQueue count];

  if (v4 - 1 >= 0)
  {
    do
    {
      --v4;
      activeQueue2 = [(_UIPageIndicatorFeed *)self activeQueue];
      v6 = [activeQueue2 objectAtIndexedSubscript:v4];

      if ([v6 isInvalidated])
      {
        [v6 removeFromSuperview];
        reuseQueue = [(_UIPageIndicatorFeed *)self reuseQueue];
        [reuseQueue addObject:v6];

        activeQueue3 = [(_UIPageIndicatorFeed *)self activeQueue];
        [activeQueue3 removeObjectAtIndex:v4];
      }
    }

    while (v4 > 0);
  }
}

- (_UIPageIndicatorFeedDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIPageIndicatorFeed)initWithPageControl:(id)control
{
  controlCopy = control;
  v10.receiver = self;
  v10.super_class = _UIPageIndicatorFeed;
  v5 = [(_UIPageIndicatorFeed *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_pageControl = controlCopy;
    v7 = objc_opt_new();
    [(_UIPageIndicatorFeed *)v6 setActiveQueue:v7];

    v8 = objc_opt_new();
    [(_UIPageIndicatorFeed *)v6 setReuseQueue:v8];
  }

  return v6;
}

- (void)invalidateIndicators
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  v4 = [activeQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(activeQueue);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 invalidate];
        [v8 removeFromSuperview];
      }

      v5 = [activeQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  reuseQueue = [(_UIPageIndicatorFeed *)self reuseQueue];
  activeQueue2 = [(_UIPageIndicatorFeed *)self activeQueue];
  [reuseQueue addObjectsFromArray:activeQueue2];

  activeQueue3 = [(_UIPageIndicatorFeed *)self activeQueue];
  [activeQueue3 removeAllObjects];
}

- (void)reloadIndicatorImages
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  v4 = [activeQueue countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(activeQueue);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        delegate = [(_UIPageIndicatorFeed *)self delegate];
        [delegate configureIndicatorImagesForIndicator:v8 atPage:{objc_msgSend(v8, "page")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [activeQueue countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)reloadIndicatorImageForPage:(int64_t)page
{
  if ([(_UIPageIndicatorFeed *)self _isPageWithinActiveBounds:?])
  {
    v6 = [(_UIPageIndicatorFeed *)self indicatorForPage:page];
    delegate = [(_UIPageIndicatorFeed *)self delegate];
    [delegate configureIndicatorImagesForIndicator:v6 atPage:{objc_msgSend(v6, "page")}];

    [v6 sizeToFit];
  }
}

- (BOOL)_isPageWithinActiveBounds:(int64_t)bounds
{
  v5 = (bounds & 0x8000000000000000) == 0 && [(UIPageControl *)self->_pageControl numberOfPages]> bounds;
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  firstObject = [activeQueue firstObject];
  if ([firstObject page] <= bounds)
  {
    activeQueue2 = [(_UIPageIndicatorFeed *)self activeQueue];
    lastObject = [activeQueue2 lastObject];
    v8 = [lastObject page] >= bounds;
  }

  else
  {
    v8 = 0;
  }

  return v5 && v8;
}

- (void)prepareIndicatorsFrom:(int64_t)from to:(int64_t)to
{
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  firstObject = [activeQueue firstObject];
  page = [firstObject page];

  activeQueue2 = [(_UIPageIndicatorFeed *)self activeQueue];
  lastObject = [activeQueue2 lastObject];
  page2 = [lastObject page];

  if (page <= to)
  {
    if (from <= page2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    activeQueue2 = [(_UIPageIndicatorFeed *)self activeQueue];
    if (page - to >= [activeQueue2 count])
    {

      goto LABEL_16;
    }

    if (from <= page2)
    {

LABEL_9:
      activeQueue3 = [(_UIPageIndicatorFeed *)self activeQueue];
      firstObject2 = [activeQueue3 firstObject];
      page3 = [firstObject2 page];

      while (page3 > from)
      {
        v19 = [(_UIPageIndicatorFeed *)self indicatorForPage:--page3];
      }

      activeQueue4 = [(_UIPageIndicatorFeed *)self activeQueue];
      lastObject2 = [activeQueue4 lastObject];
      page4 = [lastObject2 page];

      if (page4 < to)
      {
        do
        {
          v23 = [(_UIPageIndicatorFeed *)self indicatorForPage:page4++];
        }

        while (to != page4);
      }

      return;
    }
  }

  v13 = from - page2;
  activeQueue5 = [(_UIPageIndicatorFeed *)self activeQueue];
  v15 = [activeQueue5 count];

  if (page > to)
  {
  }

  if (v13 < v15)
  {
    goto LABEL_9;
  }

LABEL_16:
  [(_UIPageIndicatorFeed *)self invalidateIndicators];
  if (from < to)
  {
    do
    {
      v24 = [(_UIPageIndicatorFeed *)self indicatorForPage:from++];
    }

    while (to != from);
  }
}

- (CGSize)indicatorSizeForPage:(int64_t)page
{
  v3 = [(_UIPageIndicatorFeed *)self indicatorForPage:page forSizeOnly:1];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)activeIndicatorForPage:(int64_t)page
{
  if ([(_UIPageIndicatorFeed *)self _isPageWithinActiveBounds:?])
  {
    v5 = [(_UIPageIndicatorFeed *)self indicatorForPage:page];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)indicatorSizeForCustomImage:(id)image
{
  imageCopy = image;
  reuseQueue = [(_UIPageIndicatorFeed *)self reuseQueue];
  lastObject = [reuseQueue lastObject];

  if (lastObject)
  {
    reuseQueue2 = [(_UIPageIndicatorFeed *)self reuseQueue];
    lastObject2 = [reuseQueue2 lastObject];
  }

  else
  {
    lastObject2 = objc_opt_new();
    reuseQueue2 = [(_UIPageIndicatorFeed *)self reuseQueue];
    [reuseQueue2 addObject:lastObject2];
  }

  [lastObject2 invalidate];
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  firstObject = [activeQueue firstObject];
  traitCollection = [firstObject traitCollection];

  [lastObject2 sizeForImage:imageCopy traits:traitCollection];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)indicatorForPage:(int64_t)page forSizeOnly:(BOOL)only
{
  v59 = *MEMORY[0x1E69E9840];
  activeQueue = [(_UIPageIndicatorFeed *)self activeQueue];
  firstObject = [activeQueue firstObject];
  v9 = page - [firstObject page];

  if ((v9 & 0x8000000000000000) != 0 || (-[_UIPageIndicatorFeed activeQueue](self, "activeQueue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9 >= v11))
  {
    reuseQueue = [(_UIPageIndicatorFeed *)self reuseQueue];
    lastObject = [reuseQueue lastObject];

    if (lastObject)
    {
      reuseQueue2 = [(_UIPageIndicatorFeed *)self reuseQueue];
      lastObject2 = [reuseQueue2 lastObject];

      reuseQueue3 = [(_UIPageIndicatorFeed *)self reuseQueue];
      [reuseQueue3 removeLastObject];
    }

    else
    {
      lastObject2 = objc_opt_new();
    }

    delegate = [(_UIPageIndicatorFeed *)self delegate];
    [delegate configureIndicatorImagesForIndicator:lastObject2 atPage:page];

    if (only)
    {
      [lastObject2 sizeToFit];
      [lastObject2 invalidate];
      reuseQueue4 = [(_UIPageIndicatorFeed *)self reuseQueue];
    }

    else
    {
      [lastObject2 setPage:page];
      delegate2 = [(_UIPageIndicatorFeed *)self delegate];
      [delegate2 configureIndicator:lastObject2 atPage:page];

      activeQueue2 = [(_UIPageIndicatorFeed *)self activeQueue];
      firstObject2 = [activeQueue2 firstObject];
      v29 = [firstObject2 page] - 1;

      activeQueue3 = [(_UIPageIndicatorFeed *)self activeQueue];
      v16 = activeQueue3;
      if (v29 == page)
      {
        [activeQueue3 insertObject:lastObject2 atIndex:0];
LABEL_14:

        goto LABEL_25;
      }

      lastObject3 = [activeQueue3 lastObject];
      if ([lastObject3 page] + 1 == page)
      {
      }

      else
      {
        activeQueue4 = [(_UIPageIndicatorFeed *)self activeQueue];
        v33 = [activeQueue4 count];

        if (v33)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v16 = __UIFaultDebugAssertLog();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_14;
            }

            v46 = objc_opt_class();
            v18 = NSStringFromClass(v46);
            pageControl = self->_pageControl;
            activeQueue5 = [(_UIPageIndicatorFeed *)self activeQueue];
            firstObject3 = [activeQueue5 firstObject];
            page = [firstObject3 page];
            activeQueue6 = [(_UIPageIndicatorFeed *)self activeQueue];
            lastObject4 = [activeQueue6 lastObject];
            v49 = 138413314;
            v50 = v18;
            v51 = 2048;
            v52 = pageControl;
            v53 = 2048;
            pageCopy4 = page;
            v55 = 2048;
            page5 = page;
            v57 = 2048;
            page2 = [lastObject4 page];
            _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "<%@ %p>: Attempting to fetch indicator outside of queue bound. Asked for %ld, bound is in %ld..<%ld. This is a UIKit bug.", &v49, 0x34u);
          }

          else
          {
            v34 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0888) + 8);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v16 = v34;
            v35 = objc_opt_class();
            v18 = NSStringFromClass(v35);
            v36 = self->_pageControl;
            activeQueue5 = [(_UIPageIndicatorFeed *)self activeQueue];
            firstObject3 = [activeQueue5 firstObject];
            page3 = [firstObject3 page];
            activeQueue6 = [(_UIPageIndicatorFeed *)self activeQueue];
            lastObject4 = [activeQueue6 lastObject];
            v49 = 138413314;
            v50 = v18;
            v51 = 2048;
            v52 = v36;
            v53 = 2048;
            pageCopy4 = page;
            v55 = 2048;
            page5 = page3;
            v57 = 2048;
            page2 = [lastObject4 page];
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "<%@ %p>: Attempting to fetch indicator outside of queue bound. Asked for %ld, bound is in %ld..<%ld. This is a UIKit bug.", &v49, 0x34u);
          }

          goto LABEL_22;
        }
      }

      reuseQueue4 = [(_UIPageIndicatorFeed *)self activeQueue];
    }

    v42 = reuseQueue4;
    [reuseQueue4 addObject:lastObject2];
  }

  else
  {
    activeQueue7 = [(_UIPageIndicatorFeed *)self activeQueue];
    lastObject2 = [activeQueue7 objectAtIndexedSubscript:v9];

    LODWORD(activeQueue7) = os_variant_has_internal_diagnostics();
    page4 = [lastObject2 page];
    if (activeQueue7)
    {
      if (page4 != page)
      {
        v16 = __UIFaultDebugAssertLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_14;
        }

        v44 = objc_opt_class();
        v18 = NSStringFromClass(v44);
        v45 = self->_pageControl;
        v49 = 138413058;
        v50 = v18;
        v51 = 2048;
        v52 = v45;
        v53 = 2048;
        pageCopy4 = page;
        v55 = 2048;
        page5 = [lastObject2 page];
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "<%@ %p>: There is an inconsistency in the page control's reuse queue, expected (%ld) found (%ld). This is a UIKit bug.", &v49, 0x2Au);
        goto LABEL_22;
      }
    }

    else if (page4 != page)
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1274) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = self->_pageControl;
        v49 = 138413058;
        v50 = v18;
        v51 = 2048;
        v52 = v19;
        v53 = 2048;
        pageCopy4 = page;
        v55 = 2048;
        page5 = [lastObject2 page];
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "<%@ %p>: There is an inconsistency in the page control's reuse queue, expected (%ld) found (%ld). This is a UIKit bug.", &v49, 0x2Au);
LABEL_22:

        goto LABEL_14;
      }
    }
  }

LABEL_25:

  return lastObject2;
}

@end