@interface UIView(PhotosUICoreScrolling)
- (id)_px_leafScrollViewAtPoint:()PhotosUICoreScrolling;
- (id)px_rootScrollView;
- (uint64_t)px_areAllContainerScrollViewsScrolledAtEdge:()PhotosUICoreScrolling;
- (uint64_t)px_areAllScrollViewsContainingPoint:()PhotosUICoreScrolling scrolledAtEdge:;
- (uint64_t)px_containerScrollViewsScrollableAxes;
- (uint64_t)px_scrollableAxesAtPoint:()PhotosUICoreScrolling;
@end

@implementation UIView(PhotosUICoreScrolling)

- (id)px_rootScrollView
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v2;

        v3 = v4;
      }

      v5 = [v2 superview];

      v2 = v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)px_containerScrollViewsScrollableAxes
{
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0;
  do
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
      if ([v4 isScrollEnabled])
      {
        v3 |= [v4 px_scrollableAxis];
      }
    }

    v5 = [v2 superview];

    v2 = v5;
  }

  while (v5);
  return v3;
}

- (uint64_t)px_scrollableAxesAtPoint:()PhotosUICoreScrolling
{
  v6 = [a1 hitTest:0 withEvent:?];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1;
  }

  v9 = v8;

  v10 = [v9 _px_leafScrollViewAtPoint:{a2, a3}];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  v14 = [v13 px_containerScrollViewsScrollableAxes];
  return v14;
}

- (uint64_t)px_areAllContainerScrollViewsScrolledAtEdge:()PhotosUICoreScrolling
{
  v4 = a1;
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_7:
    v7 = [v5 superview];

    v5 = v7;
    if (!v7)
    {
      return 1;
    }
  }

  v6 = v5;
  if (![v6 isScrollEnabled] || objc_msgSend(v6, "px_isScrolledAtEdge:", a3))
  {

    goto LABEL_7;
  }

  return 0;
}

- (id)_px_leafScrollViewAtPoint:()PhotosUICoreScrolling
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a1 subviews];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      [v11 convertPoint:a1 fromView:{a2, a3}];
      v13 = v12;
      v15 = v14;
      if ([v11 pointInside:0 withEvent:?])
      {
        v16 = [v11 _px_leafScrollViewAtPoint:{v13, v15}];
        if (v16)
        {
          goto LABEL_13;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v6 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v6;
    v6 = v16;
LABEL_13:
    v17 = v16;
    goto LABEL_15;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (uint64_t)px_areAllScrollViewsContainingPoint:()PhotosUICoreScrolling scrolledAtEdge:
{
  v9 = [a1 hitTest:0 withEvent:?];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = a1;
  }

  v12 = v11;

  v13 = [v12 _px_leafScrollViewAtPoint:{a2, a3}];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  v17 = [v16 px_areAllContainerScrollViewsScrolledAtEdge:a5];
  return v17;
}

@end