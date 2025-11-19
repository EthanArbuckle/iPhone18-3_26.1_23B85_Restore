@interface TVCarouselLayout
+ (TVCarouselLayout)layoutWithLayout:(id)a3 element:(id)a4;
+ (int64_t)layoutTypeForElement:(id)a3;
+ (int64_t)layoutTypeForString:(id)a3;
+ (unint64_t)scrollModeForString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)cellSize;
- (UIEdgeInsets)cellPadding;
@end

@implementation TVCarouselLayout

+ (int64_t)layoutTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"upsell"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ribbon"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"centerGrowth"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (unint64_t)scrollModeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"continuous"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"none"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)layoutTypeForElement:(id)a3
{
  v4 = [a3 attributes];
  v5 = [v4 objectForKey:@"tv_layout"];

  if (v5)
  {
    v6 = [a1 layoutTypeForString:v5];
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

+ (TVCarouselLayout)layoutWithLayout:(id)a3 element:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_alloc_init(TVCarouselLayout);
  }

  v23.receiver = a1;
  v23.super_class = &OBJC_METACLASS___TVCarouselLayout;
  v10 = objc_msgSendSuper2(&v23, sel_layoutWithLayout_element_, v9, v7);
  v11 = [v7 style];
  v12 = [a1 layoutTypeForElement:v7];
  if (v12 != 3)
  {
    [(TVCarouselLayout *)v9 setLayoutType:v12];
  }

  v13 = [v11 tv_scrollMode];
  -[TVCarouselLayout setScrollMode:](v9, "setScrollMode:", [a1 scrollModeForString:v13]);

  if ([(TVCarouselLayout *)v9 layoutType]== 2 || [(TVCarouselLayout *)v9 layoutType]== 1)
  {
    v14 = [(TVCarouselLayout *)v9 layoutType];
    v15 = 130.0;
    if (v14 == 2)
    {
      v15 = 480.0;
    }

    v16 = 0.0;
    if (v14 == 2)
    {
      v17 = 100.0;
    }

    else
    {
      v17 = 0.0;
    }

    [(TVCarouselLayout *)v9 setRevealDistance:v15];
    [(TVCarouselLayout *)v9 setFocusedEdgeExpansion:v17];
    goto LABEL_13;
  }

  [v11 tv_interitemSpacing];
  if (v21 != 0.0)
  {
    [v11 tv_interitemSpacing];
    v16 = v22;
LABEL_13:
    [(TVCarouselLayout *)v9 setInteritemSpacing:v16];
  }

  if ([(TVCarouselLayout *)v9 layoutType]== 2)
  {
    [(TVCarouselLayout *)v9 setParallaxEnabled:1];
    [(TVCarouselLayout *)v9 setShearAngle:-0.162444763];
  }

  v18 = [v7 attributes];
  v19 = [v18 objectForKey:@"pageControl"];

  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    -[TVCarouselLayout setShowsPageControl:](v9, "setShowsPageControl:", [v19 BOOLValue]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_TVLockupFactory cellMetricsForCollectionElement:v7];
    [(TVCarouselLayout *)v9 setCellPadding:0, 0];
    [(TVCarouselLayout *)v9 setCellSize:0];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v5 = v4;
  [(TVCarouselLayout *)self interitemSpacing];
  v7 = v6;
  [(TVCarouselLayout *)v5 interitemSpacing];
  if (v7 != v8)
  {
    goto LABEL_16;
  }

  v9 = [(TVCarouselLayout *)self layoutType];
  if (v9 != [(TVCarouselLayout *)v5 layoutType])
  {
    goto LABEL_16;
  }

  [(TVCarouselLayout *)self cellSize];
  v11 = v10;
  v13 = v12;
  [(TVCarouselLayout *)v5 cellSize];
  v15 = 0;
  if (v11 != v16)
  {
    goto LABEL_17;
  }

  if (v13 != v14)
  {
    goto LABEL_17;
  }

  [(TVCarouselLayout *)self cellPadding];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(TVCarouselLayout *)v5 cellPadding];
  v15 = 0;
  if (v20 != v28 || v18 != v25 || v24 != v27 || v22 != v26)
  {
    goto LABEL_17;
  }

  [(TVCarouselLayout *)self focusedEdgeExpansion];
  v30 = v29;
  [(TVCarouselLayout *)v5 focusedEdgeExpansion];
  if (v30 == v31 && ([(TVCarouselLayout *)self revealDistance], v33 = v32, [(TVCarouselLayout *)v5 revealDistance], v33 == v34) && (v35 = [(TVCarouselLayout *)self isParallaxEnabled], v35 == [(TVCarouselLayout *)v5 isParallaxEnabled]) && ([(TVCarouselLayout *)self shearAngle], v37 = v36, [(TVCarouselLayout *)v5 shearAngle], v37 == v38) && (v39 = [(TVCarouselLayout *)self showsPageControl], v39 == [(TVCarouselLayout *)v5 showsPageControl]))
  {
    v41 = [(TVCarouselLayout *)self pageControlMarginNumber];
    [v41 floatValue];
    v43 = v42;
    v44 = [(TVCarouselLayout *)v5 pageControlMarginNumber];
    [v44 floatValue];
    v15 = v43 == v45;
  }

  else
  {
LABEL_16:
    v15 = 0;
  }

LABEL_17:

LABEL_20:
  return v15;
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)cellPadding
{
  top = self->_cellPadding.top;
  left = self->_cellPadding.left;
  bottom = self->_cellPadding.bottom;
  right = self->_cellPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end