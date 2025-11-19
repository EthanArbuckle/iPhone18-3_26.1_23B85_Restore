@interface _UIPageIndicatorFeed
- (BOOL)_isPageWithinActiveBounds:(int64_t)a3;
- (CGSize)indicatorSizeForCustomImage:(id)a3;
- (CGSize)indicatorSizeForPage:(int64_t)a3;
- (NSArray)indicators;
- (_UIPageIndicatorFeed)initWithPageControl:(id)a3;
- (_UIPageIndicatorFeedDelegate)delegate;
- (id)activeIndicatorForPage:(int64_t)a3;
- (id)indicatorForPage:(int64_t)a3 forSizeOnly:(BOOL)a4;
- (void)invalidateIndicators;
- (void)prepareIndicatorsFrom:(int64_t)a3 to:(int64_t)a4;
- (void)reloadIndicatorImageForPage:(int64_t)a3;
- (void)reloadIndicatorImages;
- (void)updateReuseQueue;
@end

@implementation _UIPageIndicatorFeed

- (NSArray)indicators
{
  v2 = [(_UIPageIndicatorFeed *)self activeQueue];
  v3 = [v2 copy];

  return v3;
}

- (void)updateReuseQueue
{
  v3 = [(_UIPageIndicatorFeed *)self activeQueue];
  v4 = [v3 count];

  if (v4 - 1 >= 0)
  {
    do
    {
      --v4;
      v5 = [(_UIPageIndicatorFeed *)self activeQueue];
      v6 = [v5 objectAtIndexedSubscript:v4];

      if ([v6 isInvalidated])
      {
        [v6 removeFromSuperview];
        v7 = [(_UIPageIndicatorFeed *)self reuseQueue];
        [v7 addObject:v6];

        v8 = [(_UIPageIndicatorFeed *)self activeQueue];
        [v8 removeObjectAtIndex:v4];
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

- (_UIPageIndicatorFeed)initWithPageControl:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIPageIndicatorFeed;
  v5 = [(_UIPageIndicatorFeed *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_pageControl = v4;
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
  v3 = [(_UIPageIndicatorFeed *)self activeQueue];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 invalidate];
        [v8 removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [(_UIPageIndicatorFeed *)self reuseQueue];
  v10 = [(_UIPageIndicatorFeed *)self activeQueue];
  [v9 addObjectsFromArray:v10];

  v11 = [(_UIPageIndicatorFeed *)self activeQueue];
  [v11 removeAllObjects];
}

- (void)reloadIndicatorImages
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(_UIPageIndicatorFeed *)self activeQueue];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(_UIPageIndicatorFeed *)self delegate];
        [v9 configureIndicatorImagesForIndicator:v8 atPage:{objc_msgSend(v8, "page")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)reloadIndicatorImageForPage:(int64_t)a3
{
  if ([(_UIPageIndicatorFeed *)self _isPageWithinActiveBounds:?])
  {
    v6 = [(_UIPageIndicatorFeed *)self indicatorForPage:a3];
    v5 = [(_UIPageIndicatorFeed *)self delegate];
    [v5 configureIndicatorImagesForIndicator:v6 atPage:{objc_msgSend(v6, "page")}];

    [v6 sizeToFit];
  }
}

- (BOOL)_isPageWithinActiveBounds:(int64_t)a3
{
  v5 = (a3 & 0x8000000000000000) == 0 && [(UIPageControl *)self->_pageControl numberOfPages]> a3;
  v6 = [(_UIPageIndicatorFeed *)self activeQueue];
  v7 = [v6 firstObject];
  if ([v7 page] <= a3)
  {
    v9 = [(_UIPageIndicatorFeed *)self activeQueue];
    v10 = [v9 lastObject];
    v8 = [v10 page] >= a3;
  }

  else
  {
    v8 = 0;
  }

  return v5 && v8;
}

- (void)prepareIndicatorsFrom:(int64_t)a3 to:(int64_t)a4
{
  v7 = [(_UIPageIndicatorFeed *)self activeQueue];
  v8 = [v7 firstObject];
  v9 = [v8 page];

  v10 = [(_UIPageIndicatorFeed *)self activeQueue];
  v11 = [v10 lastObject];
  v12 = [v11 page];

  if (v9 <= a4)
  {
    if (a3 <= v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = [(_UIPageIndicatorFeed *)self activeQueue];
    if (v9 - a4 >= [v10 count])
    {

      goto LABEL_16;
    }

    if (a3 <= v12)
    {

LABEL_9:
      v16 = [(_UIPageIndicatorFeed *)self activeQueue];
      v17 = [v16 firstObject];
      v18 = [v17 page];

      while (v18 > a3)
      {
        v19 = [(_UIPageIndicatorFeed *)self indicatorForPage:--v18];
      }

      v20 = [(_UIPageIndicatorFeed *)self activeQueue];
      v21 = [v20 lastObject];
      v22 = [v21 page];

      if (v22 < a4)
      {
        do
        {
          v23 = [(_UIPageIndicatorFeed *)self indicatorForPage:v22++];
        }

        while (a4 != v22);
      }

      return;
    }
  }

  v13 = a3 - v12;
  v14 = [(_UIPageIndicatorFeed *)self activeQueue];
  v15 = [v14 count];

  if (v9 > a4)
  {
  }

  if (v13 < v15)
  {
    goto LABEL_9;
  }

LABEL_16:
  [(_UIPageIndicatorFeed *)self invalidateIndicators];
  if (a3 < a4)
  {
    do
    {
      v24 = [(_UIPageIndicatorFeed *)self indicatorForPage:a3++];
    }

    while (a4 != a3);
  }
}

- (CGSize)indicatorSizeForPage:(int64_t)a3
{
  v3 = [(_UIPageIndicatorFeed *)self indicatorForPage:a3 forSizeOnly:1];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)activeIndicatorForPage:(int64_t)a3
{
  if ([(_UIPageIndicatorFeed *)self _isPageWithinActiveBounds:?])
  {
    v5 = [(_UIPageIndicatorFeed *)self indicatorForPage:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)indicatorSizeForCustomImage:(id)a3
{
  v4 = a3;
  v5 = [(_UIPageIndicatorFeed *)self reuseQueue];
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [(_UIPageIndicatorFeed *)self reuseQueue];
    v8 = [v7 lastObject];
  }

  else
  {
    v8 = objc_opt_new();
    v7 = [(_UIPageIndicatorFeed *)self reuseQueue];
    [v7 addObject:v8];
  }

  [v8 invalidate];
  v9 = [(_UIPageIndicatorFeed *)self activeQueue];
  v10 = [v9 firstObject];
  v11 = [v10 traitCollection];

  [v8 sizeForImage:v4 traits:v11];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)indicatorForPage:(int64_t)a3 forSizeOnly:(BOOL)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = [(_UIPageIndicatorFeed *)self activeQueue];
  v8 = [v7 firstObject];
  v9 = a3 - [v8 page];

  if ((v9 & 0x8000000000000000) != 0 || (-[_UIPageIndicatorFeed activeQueue](self, "activeQueue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9 >= v11))
  {
    v20 = [(_UIPageIndicatorFeed *)self reuseQueue];
    v21 = [v20 lastObject];

    if (v21)
    {
      v22 = [(_UIPageIndicatorFeed *)self reuseQueue];
      v13 = [v22 lastObject];

      v23 = [(_UIPageIndicatorFeed *)self reuseQueue];
      [v23 removeLastObject];
    }

    else
    {
      v13 = objc_opt_new();
    }

    v24 = [(_UIPageIndicatorFeed *)self delegate];
    [v24 configureIndicatorImagesForIndicator:v13 atPage:a3];

    if (a4)
    {
      [v13 sizeToFit];
      [v13 invalidate];
      v25 = [(_UIPageIndicatorFeed *)self reuseQueue];
    }

    else
    {
      [v13 setPage:a3];
      v26 = [(_UIPageIndicatorFeed *)self delegate];
      [v26 configureIndicator:v13 atPage:a3];

      v27 = [(_UIPageIndicatorFeed *)self activeQueue];
      v28 = [v27 firstObject];
      v29 = [v28 page] - 1;

      v30 = [(_UIPageIndicatorFeed *)self activeQueue];
      v16 = v30;
      if (v29 == a3)
      {
        [v30 insertObject:v13 atIndex:0];
LABEL_14:

        goto LABEL_25;
      }

      v31 = [v30 lastObject];
      if ([v31 page] + 1 == a3)
      {
      }

      else
      {
        v32 = [(_UIPageIndicatorFeed *)self activeQueue];
        v33 = [v32 count];

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
            v37 = [(_UIPageIndicatorFeed *)self activeQueue];
            v38 = [v37 firstObject];
            v48 = [v38 page];
            v40 = [(_UIPageIndicatorFeed *)self activeQueue];
            v41 = [v40 lastObject];
            v49 = 138413314;
            v50 = v18;
            v51 = 2048;
            v52 = pageControl;
            v53 = 2048;
            v54 = a3;
            v55 = 2048;
            v56 = v48;
            v57 = 2048;
            v58 = [v41 page];
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
            v37 = [(_UIPageIndicatorFeed *)self activeQueue];
            v38 = [v37 firstObject];
            v39 = [v38 page];
            v40 = [(_UIPageIndicatorFeed *)self activeQueue];
            v41 = [v40 lastObject];
            v49 = 138413314;
            v50 = v18;
            v51 = 2048;
            v52 = v36;
            v53 = 2048;
            v54 = a3;
            v55 = 2048;
            v56 = v39;
            v57 = 2048;
            v58 = [v41 page];
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "<%@ %p>: Attempting to fetch indicator outside of queue bound. Asked for %ld, bound is in %ld..<%ld. This is a UIKit bug.", &v49, 0x34u);
          }

          goto LABEL_22;
        }
      }

      v25 = [(_UIPageIndicatorFeed *)self activeQueue];
    }

    v42 = v25;
    [v25 addObject:v13];
  }

  else
  {
    v12 = [(_UIPageIndicatorFeed *)self activeQueue];
    v13 = [v12 objectAtIndexedSubscript:v9];

    LODWORD(v12) = os_variant_has_internal_diagnostics();
    v14 = [v13 page];
    if (v12)
    {
      if (v14 != a3)
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
        v54 = a3;
        v55 = 2048;
        v56 = [v13 page];
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "<%@ %p>: There is an inconsistency in the page control's reuse queue, expected (%ld) found (%ld). This is a UIKit bug.", &v49, 0x2Au);
        goto LABEL_22;
      }
    }

    else if (v14 != a3)
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
        v54 = a3;
        v55 = 2048;
        v56 = [v13 page];
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "<%@ %p>: There is an inconsistency in the page control's reuse queue, expected (%ld) found (%ld). This is a UIKit bug.", &v49, 0x2Au);
LABEL_22:

        goto LABEL_14;
      }
    }
  }

LABEL_25:

  return v13;
}

@end