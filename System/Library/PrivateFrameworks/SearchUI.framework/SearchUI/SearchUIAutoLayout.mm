@interface SearchUIAutoLayout
+ (BOOL)frame:(CGRect)a3 isVisibleInBounds:(CGRect)a4;
+ (BOOL)view:(id)a3 isVisibleInBounds:(CGRect)a4 ofView:(id)a5;
+ (CGRect)rect:(CGRect)a3 insettedBy:(NSDirectionalEdgeInsets)a4 isLTR:(BOOL)a5;
+ (double)roundedItemCornerRadius;
+ (double)sectionCornerRadius;
+ (double)selectionBorderWidth;
+ (id)alignLeadingView:(id)a3 toTrailingView:(id)a4 spacing:(double)a5 minimum:(BOOL)a6 priority:(float)a7;
+ (id)alignView:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toView:(id)a6 attribute:(int64_t)a7 constant:(double)a8 priority:(float)a9;
+ (id)baselineAlignBottomView:(id)a3 toTopView:(id)a4 spacing:(double)a5 isDynamic:(BOOL)a6 forFont:(id)a7 minimum:(BOOL)a8 priority:(float)a9;
+ (id)installConstraintsWithVisualFormat:(id)a3 withViews:(id)a4 metrics:(id)a5 options:(unint64_t)a6;
+ (void)alignViews:(id)a3 withAttribute:(int64_t)a4;
+ (void)constrainViewHeightContainer:(id)a3;
+ (void)constrainViewToContainer:(id)a3;
+ (void)constrainViewWidthToContainer:(id)a3;
+ (void)enableAutoLayoutForItems:(id)a3;
+ (void)fillContainerWithView:(id)a3;
+ (void)requireIntrinsicSizeAsMaximumForView:(id)a3;
+ (void)requireIntrinsicSizeForView:(id)a3 withPriority:(float)a4;
+ (void)setSize:(CGSize)a3 forView:(id)a4;
+ (void)setVisibility:(BOOL)a3 forView:(id)a4;
+ (void)spanContainerHeightForView:(id)a3;
+ (void)spanContainerWidthForView:(id)a3;
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
  v2 = [MEMORY[0x1E69D9240] isMacOS];
  result = 3.0;
  if (v2)
  {
    return 2.0;
  }

  return result;
}

+ (id)installConstraintsWithVisualFormat:(id)a3 withViews:(id)a4 metrics:(id)a5 options:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 allValues];
  [a1 enableAutoLayoutForItems:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v12 options:a6 metrics:v10 views:v11];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

+ (id)alignLeadingView:(id)a3 toTrailingView:(id)a4 spacing:(double)a5 minimum:(BOOL)a6 priority:(float)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v13 searchui_isContainedByItem:v12];
  v15 = [v12 searchui_isContainedByItem:v13];
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

  *&v16 = a7;
  v19 = [a1 alignView:v12 attribute:v17 relatedBy:v8 toView:v13 attribute:v18 constant:a5 priority:v16];

  return v19;
}

+ (void)setSize:(CGSize)a3 forView:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v7 = [a1 setWidth:v9 forView:width];
  v8 = [a1 setHeight:v9 forView:height];
}

+ (id)alignView:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toView:(id)a6 attribute:(int64_t)a7 constant:(double)a8 priority:(float)a9
{
  v28[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a6;
  v18 = v17;
  if (v16)
  {
    if (v17 && ([v16 searchui_isContainedByItem:v17] & 1) == 0)
    {
      if (([v18 searchui_isContainedByItem:v16] & 1) == 0)
      {
        v26[0] = v16;
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
      v28[0] = v16;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v28;
    }

    v21 = 1;
LABEL_6:
    v22 = [v19 arrayWithObjects:v20 count:v21];
    [a1 enableAutoLayoutForItems:v22];

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:v16 attribute:a4 relatedBy:a5 toItem:v18 attribute:a7 multiplier:1.0 constant:a8];
    *&v24 = a9;
    [v23 setPriority:v24];
    [v23 setActive:1];
    goto LABEL_8;
  }

  v23 = 0;
LABEL_8:

  return v23;
}

+ (void)enableAutoLayoutForItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 searchui_view];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

        v10 = [v8 searchui_view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v8 searchui_view];
          v12 = [v11 textAlignment];

          if (v12)
          {
            continue;
          }

          v10 = [v8 searchui_view];
          [v10 setTextAlignment:4];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

+ (void)alignViews:(id)a3 withAttribute:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 firstObject];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
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
        if (v13 != v7)
        {
          v14 = [a1 alignView:v13 toView:v7 withAttribute:{a4, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

+ (void)constrainViewToContainer:(id)a3
{
  v4 = a3;
  [a1 constrainViewWidthToContainer:v4];
  [a1 constrainViewHeightContainer:v4];
}

+ (void)constrainViewWidthToContainer:(id)a3
{
  v8 = a3;
  v4 = [v8 searchui_containingView];
  v5 = [a1 alignLeadingView:v4 toTrailingView:v8];

  v6 = [v8 searchui_containingView];
  v7 = [a1 alignLeadingView:v8 toTrailingView:v6];
}

+ (void)constrainViewHeightContainer:(id)a3
{
  v8 = a3;
  v4 = [v8 searchui_containingView];
  v5 = [a1 alignView:v8 toView:v4 withAttribute:4];

  v6 = [v8 searchui_containingView];
  v7 = [a1 alignView:v8 toView:v6 withAttribute:3];
}

+ (void)fillContainerWithView:(id)a3
{
  v4 = a3;
  [a1 spanContainerWidthForView:v4];
  [a1 spanContainerHeightForView:v4];
}

+ (void)spanContainerWidthForView:(id)a3
{
  v11 = a3;
  [v11 frame];
  v4 = v3;
  v6 = v5;
  v7 = [v11 superview];
  [v7 bounds];
  MinX = CGRectGetMinX(v13);

  v9 = [v11 superview];
  [v9 bounds];
  Width = CGRectGetWidth(v14);

  [v11 setFrame:{MinX, v4, Width, v6}];
  [v11 setAutoresizingMask:{objc_msgSend(v11, "autoresizingMask") | 2}];
}

+ (void)spanContainerHeightForView:(id)a3
{
  v11 = a3;
  [v11 frame];
  v4 = v3;
  v6 = v5;
  v7 = [v11 superview];
  [v7 bounds];
  MinY = CGRectGetMinY(v13);

  v9 = [v11 superview];
  [v9 bounds];
  Height = CGRectGetHeight(v14);

  [v11 setFrame:{v4, MinY, v6, Height}];
  [v11 setAutoresizingMask:{objc_msgSend(v11, "autoresizingMask") | 0x10}];
}

+ (id)baselineAlignBottomView:(id)a3 toTopView:(id)a4 spacing:(double)a5 isDynamic:(BOOL)a6 forFont:(id)a7 minimum:(BOOL)a8 priority:(float)a9
{
  v47 = a8;
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = [v15 searchui_isContainedByItem:v16];
  v46 = [v16 searchui_isContainedByItem:v15];
  if ((v46 & 1) == 0)
  {
    v23 = [v15 searchui_view];
    if (v23)
    {
      v24 = [v15 searchui_view];
      v19 = [v24 viewForFirstBaselineLayout];
    }

    else
    {
      v19 = v15;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v22 = v16;
    v25 = 3;
    goto LABEL_12;
  }

  v19 = v15;
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_3:
  v20 = [v16 searchui_view];
  if (v20)
  {
    v21 = [v16 searchui_view];
    v22 = [v21 viewForLastBaselineLayout];
  }

  else
  {
    v22 = v16;
  }

  v25 = 4;
LABEL_12:
  v45 = v25;
  v48 = v19;
  v26 = objc_opt_respondsToSelector();
  v27 = objc_opt_respondsToSelector();
  v28 = v27;
  if (!v17 && v11)
  {
    if ((v26 | v27))
    {
      if (v26)
      {
        v29 = v48;
      }

      else
      {
        v29 = v22;
      }

      v17 = [v29 font];
    }

    else
    {
      v17 = 0;
    }
  }

  v30 = MEMORY[0x1E69D91A8];
  v31 = [v15 searchui_view];
  if (v31)
  {
    [v30 scaledValueForValue:v17 withFont:v31 view:a5];
    v33 = v32;
  }

  else
  {
    [v16 searchui_view];
    v34 = v44 = a1;
    [v30 scaledValueForValue:v17 withFont:v34 view:a5];
    v33 = v35;

    a1 = v44;
  }

  v36 = a5 > 0.0;
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

  if (v11)
  {
    v41 = v33;
  }

  else
  {
    v41 = a5;
  }

  *&v40 = a9;
  v42 = [a1 alignView:v48 attribute:v39 relatedBy:v47 toView:v22 attribute:v37 constant:v41 priority:v40];

  return v42;
}

+ (void)requireIntrinsicSizeForView:(id)a3 withPriority:(float)a4
{
  v9 = a3;
  *&v5 = a4;
  [v9 setContentCompressionResistancePriority:0 forAxis:v5];
  *&v6 = a4;
  [v9 setContentCompressionResistancePriority:1 forAxis:v6];
  *&v7 = a4;
  [v9 setContentHuggingPriority:0 forAxis:v7];
  *&v8 = a4;
  [v9 setContentHuggingPriority:1 forAxis:v8];
}

+ (void)requireIntrinsicSizeAsMaximumForView:(id)a3
{
  v5 = a3;
  LODWORD(v3) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v4];
}

+ (void)setVisibility:(BOOL)a3 forView:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = 1000.0;
  }

  else
  {
    v5 = 0.0;
  }

  v8 = a4;
  *&v6 = v5;
  [v8 setContentCompressionResistancePriority:0 forAxis:v6];
  *&v7 = v5;
  [v8 setContentCompressionResistancePriority:1 forAxis:v7];
  [v8 setHidden:!v4];
}

+ (BOOL)frame:(CGRect)a3 isVisibleInBounds:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = CGRectIntersection(a3, a4);
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

+ (BOOL)view:(id)a3 isVisibleInBounds:(CGRect)a4 ofView:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 isHidden])
  {
    v9 = 0;
  }

  else
  {
    [v7 bounds];
    [v8 convertRect:v7 fromView:?];
    v9 = [a1 frame:? isVisibleInBounds:?];
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

+ (CGRect)rect:(CGRect)a3 insettedBy:(NSDirectionalEdgeInsets)a4 isLTR:(BOOL)a5
{
  if (a5)
  {
    leading = a4.leading;
  }

  else
  {
    leading = a4.trailing;
  }

  v6 = a3.size.height - a4.top - a4.bottom;
  v7 = a3.size.width - a4.leading - a4.trailing;
  v8 = a3.origin.y + a4.top;
  v9 = a3.origin.x + leading;
  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

@end