@interface SBHTodayIconListLayoutDelegate
- (CGPoint)iconListView:(id)a3 centerForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedCenter:(CGPoint)a6;
- (CGPoint)iconListView:(id)a3 originForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedOrigin:(CGPoint)a6;
- (CGRect)unadjustedBoundsForIconCoordinate:(SBIconCoordinate)a3;
- (CGSize)iconListView:(id)a3 sizeThatFits:(CGSize)a4 metrics:(id)a5 proposedSize:(CGSize)a6;
- (SBHTodayIconListLayoutDelegate)initWithIconListView:(id)a3;
- (SBIconListView)iconListView;
- (SBTodayIconListLayoutAttributes)layoutAttributesForIconCoordinate:(SEL)a3 metrics:(SBIconCoordinate)a4 adjustedForRevealProgress:(id)a5;
- (UIEdgeInsets)additionalLayoutInsets;
- (UIEdgeInsets)carouselInsets;
- (UIScrollView)scrollView;
- (UIView)containerView;
- (double)_iconListView:(id)a3 originYForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 adjustedForRevealProgress:(BOOL)a6;
- (double)unadjustedOriginYForIconCoordinate:(SBIconCoordinate)a3;
- (unint64_t)iconListView:(id)a3 rowAtPoint:(CGPoint)a4 metrics:(id)a5 proposedRow:(unint64_t)a6;
- (void)_layoutFocusGuideViewsInListView:(id)a3;
- (void)_reorderSubviewsForCarouselLayoutInListView:(id)a3;
- (void)iconListView:(id)a3 willLayoutIconView:(id)a4;
- (void)iconListViewDidLayoutIcons:(id)a3;
- (void)setAdditionalLayoutInsets:(UIEdgeInsets)a3;
- (void)setDismissProgress:(double)a3;
- (void)setRevealProgress:(double)a3;
- (void)setRevealed:(BOOL)a3;
- (void)setVisuallyRevealed:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SBHTodayIconListLayoutDelegate

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (SBHTodayIconListLayoutDelegate)initWithIconListView:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBHTodayIconListLayoutDelegate;
  v5 = [(SBHTodayIconListLayoutDelegate *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconListView, v4);
    v7 = [v4 layout];
    [v7 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
    v9 = v8;
    [v7 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
    v11 = v10;
    v6->_collapseHeight = v9;
    [v4 iconSpacing];
    v6->_distanceToApex = (v9 + v12) * 0.5;
    v6->_revealProgressMaxTranslation = v11;
    *&v6->_carouselLayout = 256;
    v6->_visuallyRevealed = 1;
    *&v6->_revealProgress = xmmword_1BEE886B0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    catchupProperties = v6->_catchupProperties;
    v6->_catchupProperties = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    catchupTimers = v6->_catchupTimers;
    v6->_catchupTimers = v15;
  }

  return v6;
}

- (SBTodayIconListLayoutAttributes)layoutAttributesForIconCoordinate:(SEL)a3 metrics:(SBIconCoordinate)a4 adjustedForRevealProgress:(id)a5
{
  v6 = a6;
  row = a4.row;
  column = a4.column;
  v65 = a5;
  v11 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
  v12 = [v11 iconAtCoordinate:column metrics:{row, v65}];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 gridSizeClass];
  }

  else
  {
    v14 = @"SBHIconGridSizeClassDefault";
  }

  v15 = v14;
  v16 = [v11 layout];
  SBHIconListLayoutIconImageInfoForGridSizeClass(v16, v15);
  v18 = v17;

  [(SBHTodayIconListLayoutDelegate *)self _iconListView:v11 originYForIconCoordinate:column metrics:row adjustedForRevealProgress:v65, v6];
  v20 = v19;
  SBRectWithSize();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = 1.0;
  if (![(SBHTodayIconListLayoutDelegate *)self isCarouselLayout])
  {
    v37 = 1.0;
    if (!v6)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v62 = v26;
  v63 = v24;
  v64 = v22;
  v30 = [(SBHTodayIconListLayoutDelegate *)self containerView];
  v31 = 0.0;
  [v30 convertPoint:v11 toView:{0.0, self->_carouselInsets.top}];
  v33 = v32;
  [v30 bounds];
  [v30 convertPoint:v11 toView:{0.0, v34 - self->_carouselInsets.bottom}];
  v36 = v35;
  if (v20 >= v33)
  {
    if (v20 + v18 > v35)
    {
      v31 = v20 + v18 - v35;
    }
  }

  else
  {
    v31 = v20 - v33;
  }

  if (BSFloatIsZero())
  {
    goto LABEL_12;
  }

  [(SBHTodayIconListLayoutDelegate *)self collapseHeight];
  v39 = v38;
  [(SBHTodayIconListLayoutDelegate *)self distanceToApex];
  v41 = fabs(v31);
  if (v28 - v41 >= v39)
  {
    v28 = v28 - v41;
  }

  else
  {
    v28 = v39;
  }

  if (v41 < v18 - v39)
  {
    if (v31 < 0.0)
    {
      v37 = 1.0;
      v20 = v33;
      goto LABEL_13;
    }

    v53 = v36 - v20;
    if (v36 - v20 < v39)
    {
      v53 = v39;
    }

    v20 = v36 - v53;
LABEL_12:
    v37 = 1.0;
LABEL_13:
    v26 = v62;
    v24 = v63;
    goto LABEL_35;
  }

  v42 = fmin(fmax((v41 - (v18 - v39)) / v40, -2.0), 2.0);
  v43 = v40;
  v44 = [(SBHTodayIconListLayoutDelegate *)self scrollView];
  [v44 _verticalVelocity];
  v46 = v45;

  v47 = 3.0;
  v48 = (fabs(v46) + -1.0) * 12.0 * 0.5 + 3.0;
  if (v48 >= 3.0)
  {
    v47 = v48;
  }

  v49 = v43 * (1.0 - (1.0 - v42) * (1.0 - v42)) / v47;
  v50 = v33 - v49;
  v51 = v36 - v39 + v49;
  if (v31 >= 0.0)
  {
    v20 = v51;
  }

  else
  {
    v20 = v50;
  }

  v52 = 1.0 - (1.0 - (v42 + -1.0)) * (1.0 - (v42 + -1.0)) + 1.0;
  if (v42 < 1.0)
  {
    v52 = v42 * v42;
  }

  v37 = 0.0;
  v26 = v62;
  v24 = v63;
  if (v52 <= 2.0)
  {
    if (v52 >= 1.0)
    {
      v37 = 0.8 - (v52 + -1.0) * 0.8;
    }

    else
    {
      v37 = v52 * -0.2 + 1.0;
    }
  }

  v29 = v52 * -0.04 * 0.5 + 1.0;
LABEL_35:
  if ([v11 alignsIconsOnPixelBoundaries])
  {
    v54 = [v11 layout];
    [v54 iconImageInfo];

    BSFloatRoundForScale();
    v20 = v55;
  }

  v22 = v64;

  if (v6)
  {
LABEL_38:
    if (!self->_visuallyRevealed)
    {
      catchupProperties = self->_catchupProperties;
      v57 = [v13 uniqueIdentifier];
      v58 = [(NSMutableDictionary *)catchupProperties objectForKey:v57];

      if (v58)
      {
        [v58 presentationValue];
        revealProgress = 1.0 - (v59 + v59);
      }

      else
      {
        revealProgress = self->_revealProgress;
      }

      v37 = v37 * revealProgress;
    }
  }

LABEL_43:
  retstr->var0.origin.x = v22;
  retstr->var0.origin.y = v24;
  retstr->var0.size.width = v26;
  retstr->var0.size.height = v28;
  retstr->var1 = v20;
  retstr->var2 = v37;
  retstr->var3 = v29;

  return result;
}

- (CGRect)unadjustedBoundsForIconCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
  v7 = [v6 layoutMetrics];
  [(SBHTodayIconListLayoutDelegate *)self layoutAttributesForIconCoordinate:column metrics:row adjustedForRevealProgress:v7, 0];

  v8 = v12;
  v9 = v13;
  v10 = v14;
  v11 = v15;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)unadjustedOriginYForIconCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
  v7 = [v6 layoutMetrics];
  [(SBHTodayIconListLayoutDelegate *)self _iconListView:v6 originYForIconCoordinate:column metrics:row adjustedForRevealProgress:v7, 0];
  v9 = v8;

  return v9;
}

- (void)setAdditionalLayoutInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalLayoutInsets.top, v3), vceqq_f64(*&self->_additionalLayoutInsets.bottom, v4)))) & 1) == 0)
  {
    self->_additionalLayoutInsets = a3;
    v5 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
    [v5 invalidateIntrinsicContentSize];
  }
}

- (void)setRevealed:(BOOL)a3
{
  if (self->_revealed != a3)
  {
    self->_revealed = a3;
    v4 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
    [v4 setIconsNeedLayout];
  }
}

- (void)setRevealProgress:(double)a3
{
  if (self->_revealProgress != a3)
  {
    self->_revealProgress = a3;
    v4 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
    [v4 setIconsNeedLayout];
  }
}

- (void)setDismissProgress:(double)a3
{
  if (self->_dismissProgress != a3)
  {
    self->_dismissProgress = a3;
    v4 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
    [v4 setIconsNeedLayout];
  }
}

- (void)setVisuallyRevealed:(BOOL)a3 animated:(BOOL)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->_visuallyRevealed != a3)
  {
    v4 = a4;
    self->_visuallyRevealed = a3;
    v6 = [(SBHTodayIconListLayoutDelegate *)self iconListView];
    [v6 setIconsNeedLayout];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [(NSMutableDictionary *)self->_catchupTimers allValues];
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v32 + 1) + 8 * v11++) invalidate];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    [(NSMutableDictionary *)self->_catchupTimers removeAllObjects];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [(NSMutableDictionary *)self->_catchupProperties allValues];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v28 + 1) + 8 * v16++) invalidate];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v14);
    }

    [(NSMutableDictionary *)self->_catchupProperties removeAllObjects];
    if (v4)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke;
      v27[3] = &unk_1E808AEC0;
      v27[4] = self;
      [v6 enumerateIconViewsUsingBlock:v27];
      v17 = MEMORY[0x1E69DD250];
      v18 = [(NSMutableDictionary *)self->_catchupProperties allValues];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_2;
      v25[3] = &unk_1E8088C90;
      v19 = v6;
      v26 = v19;
      [v17 _createTransformerWithInputAnimatableProperties:v18 presentationValueChangedCallback:v25];

      if (self->_visuallyRevealed)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_3;
      v21[3] = &unk_1E808FA50;
      v22 = v19;
      v23 = self;
      v24 = v20;
      [v22 enumerateIconViewsUsingBlock:v21];
    }
  }
}

void __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 icon];
  v7 = [v3 uniqueIdentifier];

  v4 = objc_alloc_init(MEMORY[0x1E69DD268]);
  v5 = v4;
  v6 = 0.0;
  if (*(*(a1 + 32) + 10))
  {
    v6 = 1.0;
  }

  [v4 setValue:v6];
  [*(*(a1 + 32) + 56) setObject:v5 forKey:v7];
}

void __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 icon];
  v6 = [v5 uniqueIdentifier];

  [*(a1 + 32) coordinateForIconAtIndex:a3];
  v8 = ((v7 - 1) / 2);
  v9 = pow(0.9, v8);
  v10 = *(a1 + 40);
  v11 = v9 * 0.05 * v8;
  if (*(v10 + 10))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = MEMORY[0x1E695DFF0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_4;
  v17[3] = &unk_1E808FA28;
  v17[4] = v10;
  v18 = v6;
  v19 = *(a1 + 48);
  v14 = v6;
  v15 = [v13 timerWithTimeInterval:0 repeats:v17 block:v12];
  [*(*(a1 + 40) + 64) setObject:v15 forKey:v14];
  v16 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v16 addTimer:v15 forMode:*MEMORY[0x1E695DA28]];
}

void __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 56);
  v5 = a2;
  v6 = [v4 objectForKey:v3];
  v7 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_5;
  v15[3] = &unk_1E8088CB8;
  v16 = v6;
  v17 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_6;
  v11[3] = &unk_1E808F510;
  v8 = a1[4];
  v9 = a1[5];
  v12 = v16;
  v13 = v8;
  v14 = v9;
  v10 = v16;
  [v7 _animateUsingSpringWithTension:0 friction:v15 interactive:v11 animations:145.0 completion:24.0];
  [v5 invalidate];

  [*(a1[4] + 64) removeObjectForKey:a1[5]];
}

void *__63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result setValue:*(a1 + 40)];
  }

  return result;
}

void __63__SBHTodayIconListLayoutDelegate_setVisuallyRevealed_animated___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 56) objectForKey:*(a1 + 48)];

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 40) + 56);

    [v5 removeObjectForKey:v4];
  }
}

- (CGPoint)iconListView:(id)a3 originForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedOrigin:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  row = a4.row;
  column = a4.column;
  v12 = a3;
  v13 = a5;
  if ([(SBHTodayIconListLayoutDelegate *)self isCarouselLayout])
  {
    [(SBHTodayIconListLayoutDelegate *)self layoutAttributesForIconCoordinate:column metrics:row adjustedForRevealProgress:v13, 1, 0, 0, 0];
    v14 = [v12 iconAtCoordinate:column metrics:{row, v13}];
    v15 = [v12 layout];
    v16 = [v14 gridSizeClass];
    [v15 iconImageInfoForGridSizeClass:v16];
    v18 = v17;

    y = 0.0 * 0.5 + 0.0 - v18 * 0.5;
  }

  v19 = x;
  v20 = y;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)iconListView:(id)a3 centerForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedCenter:(CGPoint)a6
{
  x = a6.x;
  [(SBHTodayIconListLayoutDelegate *)self layoutAttributesForIconCoordinate:a4.column metrics:a4.row adjustedForRevealProgress:a5, 1, 0, 0, 0];
  v7 = 0.0 * 0.5 + 0.0;
  v8 = x;
  result.y = v7;
  result.x = v8;
  return result;
}

- (unint64_t)iconListView:(id)a3 rowAtPoint:(CGPoint)a4 metrics:(id)a5 proposedRow:(unint64_t)a6
{
  y = a4.y;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [a5 listModel];
  [v10 iconSpacing];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v11 icons];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v30 = a6;
    v31 = v11;
    v15 = *v33;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [v10 coordinateForIcon:{v17, v30}];
        v20 = v19;
        if (!SBIconCoordinateIsNotFound(v18, v19))
        {
          [(SBHTodayIconListLayoutDelegate *)self unadjustedOriginYForIconCoordinate:v18, v20];
          v22 = v21;
          v23 = [v17 gridSizeClass];
          v24 = [v10 iconGridSizeForClass:v23];

          v25 = [v10 layout];
          v26 = [v17 gridSizeClass];
          SBHIconListLayoutIconImageInfoForGridSizeClass(v25, v26);
          v28 = v27;

          if (BSFloatGreaterThanOrEqualToFloat())
          {
            if (BSFloatLessThanOrEqualToFloat())
            {
              a6 = v20 + ((y - v22) / (v28 / HIWORD(v24))) - 1;
              goto LABEL_13;
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    a6 = v30;
LABEL_13:
    v11 = v31;
  }

  return a6;
}

- (CGSize)iconListView:(id)a3 sizeThatFits:(CGSize)a4 metrics:(id)a5 proposedSize:(CGSize)a6
{
  width = a6.width;
  v9 = a3;
  v10 = a5;
  v11 = [v9 icons];
  v12 = [v11 lastObject];

  [v10 iconInsets];
  v14 = v13;
  v16 = v15;

  if (v12)
  {
    v17 = [v9 coordinateForIcon:v12];
    [(SBHTodayIconListLayoutDelegate *)self unadjustedOriginYForIconCoordinate:v17, v18];
    v20 = v19;
    v21 = [v9 layout];
    v22 = [v12 gridSizeClass];
    [v21 iconImageInfoForGridSizeClass:v22];
    v24 = v23;
  }

  else
  {
    v20 = v14 + self->_additionalLayoutInsets.top;
    v24 = *(MEMORY[0x1E695F060] + 8);
  }

  v25 = self->_additionalLayoutInsets.bottom + v16 + v20 + v24;

  v26 = width;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)iconListView:(id)a3 willLayoutIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 layoutMetrics];
  v9 = [v7 icon];
  v10 = [v6 coordinateForIcon:v9];
  v12 = v11;

  sx = 0.0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  [(SBHTodayIconListLayoutDelegate *)self layoutAttributesForIconCoordinate:v10 metrics:v12 adjustedForRevealProgress:v8, 1];
  if (([v7 allIconElementsButLabelHidden] & 1) == 0)
  {
    [v7 setIconImageAndAccessoryAlpha:*(&v27 + 1)];
  }

  [v7 setIconImageSizeMatchesBoundsSize:1];
  [v7 setBounds:{v25, v26}];
  [v7 setUserInteractionEnabled:BSFloatGreaterThanFloat()];
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, sx, sx);
  [v7 center];
  v14 = v13;
  [v6 bounds];
  v22 = v24;
  CGAffineTransformTranslate(&v23, &v22, (1.0 - sx) * (v15 * 0.5 - v14), 0.0);
  v24 = v23;
  [v7 setTransform:&v23];
  v16 = [v7 customIconImageViewController];
  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [(SBHTodayIconListLayoutDelegate *)self containerView];
    [v7 bounds];
    UIRectGetCenter();
    [v7 convertPoint:v17 toView:?];
    v19 = v18;
    [v17 bounds];
    [v16 setImageViewAlignment:v19 < self->_carouselInsets.top + v20 + (v21 - (self->_carouselInsets.top + self->_carouselInsets.bottom)) * 0.5];
  }

  [v7 layoutIfNeeded];
}

- (void)iconListViewDidLayoutIcons:(id)a3
{
  v4 = a3;
  if ([(SBHTodayIconListLayoutDelegate *)self isCarouselLayout])
  {
    [(SBHTodayIconListLayoutDelegate *)self _reorderSubviewsForCarouselLayoutInListView:v4];
    [(SBHTodayIconListLayoutDelegate *)self _layoutFocusGuideViewsInListView:v4];
  }
}

- (void)_reorderSubviewsForCarouselLayoutInListView:(id)a3
{
  v4 = a3;
  if ([(SBHTodayIconListLayoutDelegate *)self isCarouselLayout])
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__20;
    v74 = __Block_byref_object_dispose__20;
    v75 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__20;
    v68 = __Block_byref_object_dispose__20;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__20;
    v62 = __Block_byref_object_dispose__20;
    v63 = 0;
    v5 = [(SBHTodayIconListLayoutDelegate *)self containerView];
    [v5 bounds];
    top = self->_carouselInsets.top;
    left = self->_carouselInsets.left;
    v9 = v8 + left;
    v11 = v10 + top;
    v13 = v12 - (left + self->_carouselInsets.right);
    v15 = v14 - (top + self->_carouselInsets.bottom);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __78__SBHTodayIconListLayoutDelegate__reorderSubviewsForCarouselLayoutInListView___block_invoke;
    v49[3] = &unk_1E808FA78;
    v16 = v5;
    v54 = v9;
    v55 = v11;
    v56 = v13;
    v57 = v15;
    v50 = v16;
    v51 = &v70;
    v52 = &v64;
    v53 = &v58;
    [v4 enumerateIconViewsUsingBlock:v49];
    v17 = v71[5];
    if (!v17)
    {
      v17 = v65[5];
      if (!v17)
      {
        v17 = v59[5];
      }
    }

    v18 = v17;
    v19 = [v18 icon];
    if (v19)
    {
      v20 = [v4 layoutMetrics];
      v21 = [v20 listModel];
      v22 = [v4 gridCellInfo];
      v23 = [v21 gridCellIndexForIcon:v19 gridCellInfo:v22];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v22 coordinateForGridCellIndex:v23];
        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = v20;
          v35 = v16;
          v25 = [v21 iconsInGridRow:v24 - 1 gridCellInfo:v22];
          v37 = [v25 firstObject];
          v36 = [v25 lastObject];
          v26 = [v21 gridCellIndexForIcon:v37 gridCellInfo:v22];
          v38 = [v21 gridCellIndexForIcon:v36 gridCellInfo:v22];
          v27 = [v22 lastUsedGridCellIndex];
          v32 = [v21 gridSize];
          v43 = 0;
          v44 = &v43;
          v45 = 0x3032000000;
          v46 = __Block_byref_object_copy__20;
          v47 = __Block_byref_object_dispose__20;
          v48 = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __78__SBHTodayIconListLayoutDelegate__reorderSubviewsForCarouselLayoutInListView___block_invoke_2;
          aBlock[3] = &unk_1E808FAA0;
          v33 = v25;
          v40 = v33;
          v41 = v4;
          v42 = &v43;
          v28 = _Block_copy(aBlock);
          if (v26)
          {
            v29 = v26 - 1;
            do
            {
              v26 = [v21 iconAtGridCellIndex:v29 gridCellInfo:v22];
              v28[2](v28, v26);

              --v29;
            }

            while (v29 != -1);
          }

          objc_storeStrong(v44 + 5, v17);
          v30 = v38 + 1;
          if (v38 + 1 <= v27)
          {
            while (1)
            {
              v31 = [v21 iconAtGridCellIndex:v30 gridCellInfo:v22];
              if (!v31)
              {
                v26 = v26 & 0xFFFFFFFF00000000 | v32;
                if (SBIconCoordinateMakeWithGridCellIndex(v30, v26) == 1)
                {
                  break;
                }
              }

              v28[2](v28, v31);

              if (++v30 > v27)
              {
                goto LABEL_17;
              }
            }
          }

LABEL_17:

          _Block_object_dispose(&v43, 8);
          v16 = v35;
          v20 = v34;
        }
      }
    }

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(&v70, 8);
  }
}

void __78__SBHTodayIconListLayoutDelegate__reorderSubviewsForCarouselLayoutInListView___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 bounds];
  [v17 convertRect:*(a1 + 32) toView:?];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinY = CGRectGetMinY(v19);
  if (MinY < CGRectGetMinY(*(a1 + 64)) || (v20.origin.x = x, v20.origin.y = y, v20.size.width = width, v20.size.height = height, v9 = CGRectGetMaxY(v20), v9 > CGRectGetMaxY(*(a1 + 64))) || ([v17 effectiveIconImageAlpha], (BSFloatIsZero() & 1) != 0))
  {
    v10 = *(*(a1 + 48) + 8);
    if (*(v10 + 40))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v11 = CGRectGetMinY(v21);
      [*(*(*(a1 + 48) + 8) + 40) frame];
      if (v11 < CGRectGetMinY(v22))
      {
        v12 = *(a1 + 48);
        goto LABEL_10;
      }

      v10 = *(*(a1 + 56) + 8);
      if (*(v10 + 40))
      {
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        MaxY = CGRectGetMaxY(v23);
        [*(*(*(a1 + 56) + 8) + 40) frame];
        if (MaxY <= CGRectGetMaxY(v24))
        {
          goto LABEL_13;
        }

        v12 = *(a1 + 56);
LABEL_10:
        v10 = *(v12 + 8);
        if (*(v10 + 40))
        {
          goto LABEL_13;
        }
      }
    }

    v14 = (v10 + 40);
LABEL_12:
    objc_storeStrong(v14, a2);
    goto LABEL_13;
  }

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  v14 = (v15 + 40);
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t __78__SBHTodayIconListLayoutDelegate__reorderSubviewsForCarouselLayoutInListView___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v3 = [*(a1 + 40) displayedIconViewForIcon:v5];
    if (v3)
    {
      [*(a1 + 40) insertSubview:v3 belowSubview:*(*(*(a1 + 48) + 8) + 40)];
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)_layoutFocusGuideViewsInListView:(id)a3
{
  v4 = a3;
  v5 = [(SBHTodayIconListLayoutDelegate *)self isCarouselLayout];
  v6 = [v4 layout];
  v7 = [v4 gridCellInfo];
  v8 = [v4 layoutMetrics];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SBHTodayIconListLayoutDelegate__layoutFocusGuideViewsInListView___block_invoke;
  v13[3] = &unk_1E808FAC8;
  v14 = v7;
  v15 = v6;
  v16 = v4;
  v17 = v8;
  v19 = v5;
  v18 = self;
  v9 = v8;
  v10 = v4;
  v11 = v6;
  v12 = v7;
  [v10 enumerateIconViewsUsingBlock:v13];
}

void __67__SBHTodayIconListLayoutDelegate__layoutFocusGuideViewsInListView___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  if ([v20 wantsFocusProxyView])
  {
    v5 = [*(a1 + 32) coordinateForGridCellIndex:{objc_msgSend(*(a1 + 32), "gridCellIndexForIconIndex:", a3)}];
    v7 = v6;
    v8 = [v20 focusProxyView];
    v9 = *(a1 + 40);
    v10 = [v20 icon];
    v11 = [v10 gridSizeClass];
    [v9 iconImageInfoForGridSizeClass:v11];
    v13 = v12;
    v15 = v14;

    [*(a1 + 48) originForIconAtCoordinate:v5 metrics:{v7, *(a1 + 56)}];
    v18 = v17;
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 64) _iconListView:*(a1 + 48) originYForIconCoordinate:v5 metrics:v7 adjustedForRevealProgress:{*(a1 + 56), 0}];
      v16 = v19;
    }

    [v8 setFrame:{v18, v16, v13, v15}];
    [*(a1 + 48) sendSubviewToBack:v8];
  }
}

- (double)_iconListView:(id)a3 originYForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 adjustedForRevealProgress:(BOOL)a6
{
  row = a4.row;
  column = a4.column;
  v10 = a3;
  v11 = a5;
  v12 = [v11 gridCellInfo];
  v13 = [v11 columns];
  [v11 iconSpacing];
  v15 = v14;
  [v11 iconInsets];
  v17 = v16;
  v42 = column;
  v43 = row;
  v18 = column - 1;
  v19 = column - 1 + v13 * (row - 1);
  v20 = [v12 iconIndexForGridCellIndex:v19];
  v47 = v10;
  v21 = [v10 layout];
  v46 = v11;
  v22 = [v11 listModel];
  v44 = self;
  v23 = v17 + self->_additionalLayoutInsets.top;
  if (v18 < v19)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v25 = [v12 iconIndexForGridCellIndex:v18];
      v26 = v25;
      if (v25 == v24 || v25 >= v20)
      {
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v21 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
          v23 = v23 + v15 + v31;
        }
      }

      else
      {
        v27 = [v22 iconAtIndex:v25];
        v28 = [v27 gridSizeClass];
        [v21 iconImageInfoForGridSizeClass:v28];
        v30 = v29;

        v23 = v23 + v15 + v30;
        v24 = v26;
      }

      v18 += v13;
    }

    while (v18 < v19);
  }

  if (a6)
  {
    v33 = v46;
    v32 = v47;
    v34 = [v47 iconAtCoordinate:v42 metrics:{v43, v46}];
    catchupProperties = v44->_catchupProperties;
    v36 = [v34 uniqueIdentifier];
    v37 = [(NSMutableDictionary *)catchupProperties objectForKey:v36];

    [(SBHTodayIconListLayoutDelegate *)v44 revealProgressMaxTranslation];
    v39 = v38;
    if (v37)
    {
      [v37 presentationValue];
      v23 = v23 + v39 * v40;
    }

    else if (!v44->_visuallyRevealed)
    {
      v23 = v23 + v38;
    }
  }

  else
  {
    v33 = v46;
    v32 = v47;
  }

  return v23;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIEdgeInsets)carouselInsets
{
  top = self->_carouselInsets.top;
  left = self->_carouselInsets.left;
  bottom = self->_carouselInsets.bottom;
  right = self->_carouselInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)additionalLayoutInsets
{
  top = self->_additionalLayoutInsets.top;
  left = self->_additionalLayoutInsets.left;
  bottom = self->_additionalLayoutInsets.bottom;
  right = self->_additionalLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end