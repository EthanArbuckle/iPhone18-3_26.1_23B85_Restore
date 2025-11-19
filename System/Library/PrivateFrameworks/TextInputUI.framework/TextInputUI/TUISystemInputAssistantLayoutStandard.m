@interface TUISystemInputAssistantLayoutStandard
- (void)_layoutViewSet:(id)a3 forFixedCenterViewWidth:(double)a4 inBounds:(CGRect)a5 forAssistantView:(id)a6;
- (void)_layoutViewSet:(id)a3 forFlexibleCenterViewInBounds:(CGRect)a4 forAssistantView:(id)a5;
- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6;
- (void)layoutViewSet:(id)a3 inBounds:(CGRect)a4 forAssistantView:(id)a5;
@end

@implementation TUISystemInputAssistantLayoutStandard

- (void)layoutViewSet:(id)a3 inBounds:(CGRect)a4 forAssistantView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v11 = a5;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectIsEmpty(v18))
  {
    v12 = [v11 showsButtonBarItemsInline];
    v13 = [v16 leftButtonBar];
    [v13 setHidden:v12 ^ 1u];

    v14 = [v16 rightButtonBar];
    [v14 setHidden:v12 ^ 1u];

    [v11 centerViewWidth];
    if (v15 <= 0.0)
    {
      [(TUISystemInputAssistantLayoutStandard *)self _layoutViewSet:v16 forFlexibleCenterViewInBounds:v11 forAssistantView:x, y, width, height];
    }

    else
    {
      [TUISystemInputAssistantLayoutStandard _layoutViewSet:"_layoutViewSet:forFixedCenterViewWidth:inBounds:forAssistantView:" forFixedCenterViewWidth:v16 inBounds:v11 forAssistantView:?];
    }
  }
}

- (void)_layoutViewSet:(id)a3 forFlexibleCenterViewInBounds:(CGRect)a4 forAssistantView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27 = a3;
  v10 = a5;
  v11 = [v27 viewSetContainer];
  v12 = [v11 translatesAutoresizingMaskIntoConstraints];

  if (v12)
  {
    v13 = [v27 viewSetContainer];
    [v10 bounds];
    [v13 setFrame:?];
  }

  else
  {
    [v10 resetContainerConstraints];
  }

  v14 = [v10 showsButtonBarItemsInline];

  if (v14)
  {
    v15 = [v27 leftButtonBar];
    [v15 intrinsicContentSize];
    v17 = v16;

    v18 = [v27 rightButtonBar];
    [v18 intrinsicContentSize];
    v20 = v19;

    v21 = v17 + v20;
    if (width > 0.0 && v21 > width)
    {
      v17 = v17 * (width / v21);
      v20 = v20 * (width / v21);
      v21 = v20 + v17;
    }

    v22 = [v27 leftButtonBar];
    y = 0.0;
    [v22 setFrame:{0.0, 0.0, v17, height}];

    v23 = [v27 leftButtonBar];
    [v23 frame];
    x = CGRectGetWidth(v29) + 0.0;

    width = width - v21;
    v30.origin.y = 0.0;
    v30.origin.x = x;
    v30.size.width = width;
    v30.size.height = height;
    v24 = x + CGRectGetWidth(v30);
    v25 = [v27 rightButtonBar];
    [v25 setFrame:{v24, 0.0, v20, height}];
  }

  v26 = [v27 centerView];
  [v26 setFrame:{x, y, width, height}];
}

- (void)_layoutViewSet:(id)a3 forFixedCenterViewWidth:(double)a4 inBounds:(CGRect)a5 forAssistantView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v34 = a3;
  v13 = a6;
  v14 = [v34 viewSetContainer];
  v15 = [v14 translatesAutoresizingMaskIntoConstraints];

  if (v15)
  {
    v16 = [v34 viewSetContainer];
    [v13 bounds];
    [v16 setFrame:?];
  }

  else
  {
    [v13 resetContainerConstraints];
  }

  v17 = width - a4;
  if (((a4 > 0.0) & [v13 showsCenterView]) != 0)
  {
    v18 = width - a4;
  }

  else
  {
    v18 = width;
  }

  if ([(TUISystemInputAssistantLayoutStandard *)self isSplit])
  {
    [(TUISystemInputAssistantLayoutStandard *)self leftSplitWidth];
    dx = v19;
    [(TUISystemInputAssistantLayoutStandard *)self rightSplitWidth];
    v21 = v20;
  }

  else
  {
    v21 = v18 * 0.5;
    dx = v21;
  }

  v22 = [v13 showsCenterView];
  if (a4 <= 0.0)
  {
    v23 = height;
    v24 = width;
  }

  else
  {
    v23 = height;
    v24 = width;
    if (v22)
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = CGRectInset(v36, v17 * 0.5, 0.0);
      x = v37.origin.x;
      y = v37.origin.y;
      v24 = v37.size.width;
      v23 = v37.size.height;
    }
  }

  if ([v13 showsButtonBarItemsInline])
  {
    v25 = [v34 leftButtonBar];
    [v25 setFrame:{0.0, 0.0, dx, height}];

    if ([v13 showsCenterView])
    {
      v32 = height;
      v26 = [v34 leftButtonBar];
      [v26 frame];
      v27 = y;
      MaxX = CGRectGetMaxX(v38);
      v39.origin.x = x;
      v39.origin.y = v27;
      v39.size.width = v24;
      v39.size.height = v23;
      MinX = CGRectGetMinX(v39);

      if (MaxX <= MinX)
      {
        y = v27;
      }

      else
      {
        v40.origin.x = x;
        v40.origin.y = v27;
        v40.size.width = v24;
        v40.size.height = v23;
        v41 = CGRectInset(v40, dx, 0.0);
        x = v41.origin.x;
        y = v41.origin.y;
        v24 = v41.size.width;
        v23 = v41.size.height;
      }

      height = v32;
    }

    v30 = [v34 rightButtonBar];
    [v30 setFrame:{width - v21, 0.0, v21, height}];
  }

  v31 = [v34 centerView];
  [v31 setFrame:{x, y, v24, v23}];
}

- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6
{
  v10 = a3;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__TUISystemInputAssistantLayoutStandard_configureButtonBarsInViewSet_forApplicationAssistantItem_withSystemAssistantItem_withAssistantView___block_invoke;
  aBlock[3] = &unk_1E72D7A48;
  v12 = v11;
  v30 = v12;
  v13 = a5;
  v14 = a4;
  v15 = _Block_copy(aBlock);
  v16 = [(TUISystemInputAssistantLayout *)self _buttonBarGroupSetForApplicationAssistantItem:v14 withSystemInputAssistantItem:v13 forAssistantView:v12];

  LODWORD(v13) = [v12 showsCenterView];
  v17 = [v10 centerView];
  [v17 setHidden:v13 ^ 1];

  if ([(TUISystemInputAssistantLayout *)self usesUnifiedButtonBar])
  {
    v18 = [v10 unifiedButtonBar];
    v19 = [v16 unifiedButtonGroups];
    [v18 setButtonGroups:v19];
  }

  else
  {
    v20 = [v10 leftButtonBar];
    v21 = [v20 effectiveUserInterfaceLayoutDirection];

    if (v21 == 1)
    {
      v22 = [v10 rightButtonBar];
      v23 = [v16 leadingButtonGroups];
      v24 = [v16 leadingSeparators];
      v15[2](v15, v22, v23, v24);

      [v10 leftButtonBar];
    }

    else
    {
      v25 = [v10 leftButtonBar];
      v26 = [v16 leadingButtonGroups];
      v27 = [v16 leadingSeparators];
      v15[2](v15, v25, v26, v27);

      [v10 rightButtonBar];
    }
    v18 = ;
    v19 = [v16 trailingButtonGroups];
    v28 = [v16 trailingSeparators];
    v15[2](v15, v18, v19, v28);
  }
}

void __140__TUISystemInputAssistantLayoutStandard_configureButtonBarsInViewSet_forApplicationAssistantItem_withSystemAssistantItem_withAssistantView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  [v9 setButtonGroups:v8 animated:{objc_msgSend(v6, "isTransitioning")}];

  [v9 setSeparatorGroups:v7];
}

@end