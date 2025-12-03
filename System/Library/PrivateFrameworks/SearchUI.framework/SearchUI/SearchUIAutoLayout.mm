@interface SearchUIAutoLayout
+ (BOOL)frame:(CGRect)frame isVisibleInBounds:(CGRect)bounds;
+ (BOOL)view:(id)view isVisibleInBounds:(CGRect)bounds ofView:(id)ofView;
+ (CGRect)rect:(CGRect)rect insettedBy:(NSDirectionalEdgeInsets)by isLTR:(BOOL)r;
+ (double)roundedItemCornerRadius;
+ (double)sectionCornerRadius;
+ (double)selectionBorderWidth;
+ (id)alignLeadingView:(id)view toTrailingView:(id)trailingView spacing:(double)spacing minimum:(BOOL)minimum priority:(float)priority;
+ (id)alignView:(id)view attribute:(int64_t)attribute relatedBy:(int64_t)by toView:(id)toView attribute:(int64_t)a7 constant:(double)constant priority:(float)priority;
+ (id)baselineAlignBottomView:(id)view toTopView:(id)topView spacing:(double)spacing isDynamic:(BOOL)dynamic forFont:(id)font minimum:(BOOL)minimum priority:(float)priority;
+ (id)installConstraintsWithVisualFormat:(id)format withViews:(id)views metrics:(id)metrics options:(unint64_t)options;
+ (void)alignViews:(id)views withAttribute:(int64_t)attribute;
+ (void)constrainViewHeightContainer:(id)container;
+ (void)constrainViewToContainer:(id)container;
+ (void)constrainViewWidthToContainer:(id)container;
+ (void)enableAutoLayoutForItems:(id)items;
+ (void)fillContainerWithView:(id)view;
+ (void)requireIntrinsicSizeAsMaximumForView:(id)view;
+ (void)requireIntrinsicSizeForView:(id)view withPriority:(float)priority;
+ (void)setSize:(CGSize)size forView:(id)view;
+ (void)setVisibility:(BOOL)visibility forView:(id)view;
+ (void)spanContainerHeightForView:(id)view;
+ (void)spanContainerWidthForView:(id)view;
@end

@implementation SearchUIAutoLayout

+ (double)sectionCornerRadius
{
  if (!_UISolariumEnabled())
  {
    return 20.0;
  }

  [MEMORY[0x1E69D9240] standardTableCellContentInset];
  v3 = v2;
  [MEMORY[0x1E69D91A8] maxThumbnailSize];
  v5 = v4;
  [MEMORY[0x1E69D9240] appIconCornerRadiusRatio];
  return v3 + v5 * v6;
}

+ (double)selectionBorderWidth
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 3.0;
  if (isMacOS)
  {
    return 2.0;
  }

  return result;
}

+ (id)installConstraintsWithVisualFormat:(id)format withViews:(id)views metrics:(id)metrics options:(unint64_t)options
{
  metricsCopy = metrics;
  viewsCopy = views;
  formatCopy = format;
  allValues = [viewsCopy allValues];
  [self enableAutoLayoutForItems:allValues];

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:formatCopy options:options metrics:metricsCopy views:viewsCopy];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

+ (id)alignLeadingView:(id)view toTrailingView:(id)trailingView spacing:(double)spacing minimum:(BOOL)minimum priority:(float)priority
{
  minimumCopy = minimum;
  trailingViewCopy = trailingView;
  viewCopy = view;
  v14 = [viewCopy searchui_isContainedByItem:trailingViewCopy];
  v15 = [trailingViewCopy searchui_isContainedByItem:viewCopy];
  if (v14)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  if (v15)
  {
    v18 = 5;
  }

  else
  {
    v18 = 6;
  }

  *&v16 = priority;
  v19 = [self alignView:trailingViewCopy attribute:v17 relatedBy:minimumCopy toView:viewCopy attribute:v18 constant:spacing priority:v16];

  return v19;
}

+ (void)setSize:(CGSize)size forView:(id)view
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v7 = [self setWidth:viewCopy forView:width];
  v8 = [self setHeight:viewCopy forView:height];
}

+ (id)alignView:(id)view attribute:(int64_t)attribute relatedBy:(int64_t)by toView:(id)toView attribute:(int64_t)a7 constant:(double)constant priority:(float)priority
{
  v28[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  toViewCopy = toView;
  v18 = toViewCopy;
  if (viewCopy)
  {
    if (toViewCopy && ([viewCopy searchui_isContainedByItem:toViewCopy] & 1) == 0)
    {
      if (([v18 searchui_isContainedByItem:viewCopy] & 1) == 0)
      {
        v26[0] = viewCopy;
        v26[1] = v18;
        v19 = MEMORY[0x1E695DEC8];
        v20 = v26;
        v21 = 2;
        goto LABEL_6;
      }

      v27 = v18;
      v19 = MEMORY[0x1E695DEC8];
      v20 = &v27;
    }

    else
    {
      v28[0] = viewCopy;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v28;
    }

    v21 = 1;
LABEL_6:
    v22 = [v19 arrayWithObjects:v20 count:v21];
    [self enableAutoLayoutForItems:v22];

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:attribute relatedBy:by toItem:v18 attribute:a7 multiplier:1.0 constant:constant];
    *&v24 = priority;
    [v23 setPriority:v24];
    [v23 setActive:1];
    goto LABEL_8;
  }

  v23 = 0;
LABEL_8:

  return v23;
}

+ (void)enableAutoLayoutForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        searchui_view = [v8 searchui_view];
        [searchui_view setTranslatesAutoresizingMaskIntoConstraints:0];

        searchui_view2 = [v8 searchui_view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          searchui_view3 = [v8 searchui_view];
          textAlignment = [searchui_view3 textAlignment];

          if (textAlignment)
          {
            continue;
          }

          searchui_view2 = [v8 searchui_view];
          [searchui_view2 setTextAlignment:4];
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

+ (void)alignViews:(id)views withAttribute:(int64_t)attribute
{
  v20 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  firstObject = [viewsCopy firstObject];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = viewsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (v13 != firstObject)
        {
          v14 = [self alignView:v13 toView:firstObject withAttribute:{attribute, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

+ (void)constrainViewToContainer:(id)container
{
  containerCopy = container;
  [self constrainViewWidthToContainer:containerCopy];
  [self constrainViewHeightContainer:containerCopy];
}

+ (void)constrainViewWidthToContainer:(id)container
{
  containerCopy = container;
  searchui_containingView = [containerCopy searchui_containingView];
  v5 = [self alignLeadingView:searchui_containingView toTrailingView:containerCopy];

  searchui_containingView2 = [containerCopy searchui_containingView];
  v7 = [self alignLeadingView:containerCopy toTrailingView:searchui_containingView2];
}

+ (void)constrainViewHeightContainer:(id)container
{
  containerCopy = container;
  searchui_containingView = [containerCopy searchui_containingView];
  v5 = [self alignView:containerCopy toView:searchui_containingView withAttribute:4];

  searchui_containingView2 = [containerCopy searchui_containingView];
  v7 = [self alignView:containerCopy toView:searchui_containingView2 withAttribute:3];
}

+ (void)fillContainerWithView:(id)view
{
  viewCopy = view;
  [self spanContainerWidthForView:viewCopy];
  [self spanContainerHeightForView:viewCopy];
}

+ (void)spanContainerWidthForView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v4 = v3;
  v6 = v5;
  superview = [viewCopy superview];
  [superview bounds];
  MinX = CGRectGetMinX(v13);

  superview2 = [viewCopy superview];
  [superview2 bounds];
  Width = CGRectGetWidth(v14);

  [viewCopy setFrame:{MinX, v4, Width, v6}];
  [viewCopy setAutoresizingMask:{objc_msgSend(viewCopy, "autoresizingMask") | 2}];
}

+ (void)spanContainerHeightForView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v4 = v3;
  v6 = v5;
  superview = [viewCopy superview];
  [superview bounds];
  MinY = CGRectGetMinY(v13);

  superview2 = [viewCopy superview];
  [superview2 bounds];
  Height = CGRectGetHeight(v14);

  [viewCopy setFrame:{v4, MinY, v6, Height}];
  [viewCopy setAutoresizingMask:{objc_msgSend(viewCopy, "autoresizingMask") | 0x10}];
}

+ (id)baselineAlignBottomView:(id)view toTopView:(id)topView spacing:(double)spacing isDynamic:(BOOL)dynamic forFont:(id)font minimum:(BOOL)minimum priority:(float)priority
{
  minimumCopy = minimum;
  dynamicCopy = dynamic;
  viewCopy = view;
  topViewCopy = topView;
  fontCopy = font;
  v18 = [viewCopy searchui_isContainedByItem:topViewCopy];
  v46 = [topViewCopy searchui_isContainedByItem:viewCopy];
  if ((v46 & 1) == 0)
  {
    searchui_view = [viewCopy searchui_view];
    if (searchui_view)
    {
      searchui_view2 = [viewCopy searchui_view];
      viewForFirstBaselineLayout = [searchui_view2 viewForFirstBaselineLayout];
    }

    else
    {
      viewForFirstBaselineLayout = viewCopy;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    viewForLastBaselineLayout = topViewCopy;
    v25 = 3;
    goto LABEL_12;
  }

  viewForFirstBaselineLayout = viewCopy;
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_3:
  searchui_view3 = [topViewCopy searchui_view];
  if (searchui_view3)
  {
    searchui_view4 = [topViewCopy searchui_view];
    viewForLastBaselineLayout = [searchui_view4 viewForLastBaselineLayout];
  }

  else
  {
    viewForLastBaselineLayout = topViewCopy;
  }

  v25 = 4;
LABEL_12:
  v45 = v25;
  v48 = viewForFirstBaselineLayout;
  v26 = objc_opt_respondsToSelector();
  v27 = objc_opt_respondsToSelector();
  v28 = v27;
  if (!fontCopy && dynamicCopy)
  {
    if ((v26 | v27))
    {
      if (v26)
      {
        v29 = v48;
      }

      else
      {
        v29 = viewForLastBaselineLayout;
      }

      fontCopy = [v29 font];
    }

    else
    {
      fontCopy = 0;
    }
  }

  v30 = MEMORY[0x1E69D91A8];
  searchui_view5 = [viewCopy searchui_view];
  if (searchui_view5)
  {
    [v30 scaledValueForValue:fontCopy withFont:searchui_view5 view:spacing];
    v33 = v32;
  }

  else
  {
    [topViewCopy searchui_view];
    v34 = v44 = self;
    [v30 scaledValueForValue:fontCopy withFont:v34 view:spacing];
    v33 = v35;

    self = v44;
  }

  v36 = spacing > 0.0;
  if ((v36 & v28) != 0)
  {
    v37 = 11;
  }

  else
  {
    v37 = v45;
  }

  v38 = 3;
  if (v46)
  {
    v38 = 4;
  }

  if ((v36 & v26) != 0)
  {
    v39 = 12;
  }

  else
  {
    v39 = v38;
  }

  if (dynamicCopy)
  {
    spacingCopy = v33;
  }

  else
  {
    spacingCopy = spacing;
  }

  *&v40 = priority;
  v42 = [self alignView:v48 attribute:v39 relatedBy:minimumCopy toView:viewForLastBaselineLayout attribute:v37 constant:spacingCopy priority:v40];

  return v42;
}

+ (void)requireIntrinsicSizeForView:(id)view withPriority:(float)priority
{
  viewCopy = view;
  *&v5 = priority;
  [viewCopy setContentCompressionResistancePriority:0 forAxis:v5];
  *&v6 = priority;
  [viewCopy setContentCompressionResistancePriority:1 forAxis:v6];
  *&v7 = priority;
  [viewCopy setContentHuggingPriority:0 forAxis:v7];
  *&v8 = priority;
  [viewCopy setContentHuggingPriority:1 forAxis:v8];
}

+ (void)requireIntrinsicSizeAsMaximumForView:(id)view
{
  viewCopy = view;
  LODWORD(v3) = 1148846080;
  [viewCopy setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [viewCopy setContentHuggingPriority:1 forAxis:v4];
}

+ (void)setVisibility:(BOOL)visibility forView:(id)view
{
  visibilityCopy = visibility;
  if (visibility)
  {
    v5 = 1000.0;
  }

  else
  {
    v5 = 0.0;
  }

  viewCopy = view;
  *&v6 = v5;
  [viewCopy setContentCompressionResistancePriority:0 forAxis:v6];
  *&v7 = v5;
  [viewCopy setContentCompressionResistancePriority:1 forAxis:v7];
  [viewCopy setHidden:!visibilityCopy];
}

+ (BOOL)frame:(CGRect)frame isVisibleInBounds:(CGRect)bounds
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = CGRectIntersection(frame, bounds);
  v8 = v15.origin.y;
  v9 = v15.size.width;
  v10 = v15.size.height;
  rect = v15.origin.x;
  v11 = CGRectGetHeight(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (v11 / CGRectGetHeight(v16) <= 0.5)
  {
    return 0;
  }

  v17.origin.x = rect;
  v17.origin.y = v8;
  v17.size.width = v9;
  v17.size.height = v10;
  v12 = CGRectGetWidth(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  return v12 / CGRectGetWidth(v18) > 0.5;
}

+ (BOOL)view:(id)view isVisibleInBounds:(CGRect)bounds ofView:(id)ofView
{
  viewCopy = view;
  ofViewCopy = ofView;
  if ([viewCopy isHidden])
  {
    v9 = 0;
  }

  else
  {
    [viewCopy bounds];
    [ofViewCopy convertRect:viewCopy fromView:?];
    v9 = [self frame:? isVisibleInBounds:?];
  }

  return v9;
}

+ (double)roundedItemCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 10.0;
  if (v2)
  {
    return 14.0;
  }

  return result;
}

+ (CGRect)rect:(CGRect)rect insettedBy:(NSDirectionalEdgeInsets)by isLTR:(BOOL)r
{
  if (r)
  {
    leading = by.leading;
  }

  else
  {
    leading = by.trailing;
  }

  v6 = rect.size.height - by.top - by.bottom;
  v7 = rect.size.width - by.leading - by.trailing;
  v8 = rect.origin.y + by.top;
  v9 = rect.origin.x + leading;
  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

@end