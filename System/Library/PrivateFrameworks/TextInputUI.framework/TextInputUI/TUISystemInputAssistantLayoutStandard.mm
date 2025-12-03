@interface TUISystemInputAssistantLayoutStandard
- (void)_layoutViewSet:(id)set forFixedCenterViewWidth:(double)width inBounds:(CGRect)bounds forAssistantView:(id)view;
- (void)_layoutViewSet:(id)set forFlexibleCenterViewInBounds:(CGRect)bounds forAssistantView:(id)view;
- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view;
- (void)layoutViewSet:(id)set inBounds:(CGRect)bounds forAssistantView:(id)view;
@end

@implementation TUISystemInputAssistantLayoutStandard

- (void)layoutViewSet:(id)set inBounds:(CGRect)bounds forAssistantView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  setCopy = set;
  viewCopy = view;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectIsEmpty(v18))
  {
    showsButtonBarItemsInline = [viewCopy showsButtonBarItemsInline];
    leftButtonBar = [setCopy leftButtonBar];
    [leftButtonBar setHidden:showsButtonBarItemsInline ^ 1u];

    rightButtonBar = [setCopy rightButtonBar];
    [rightButtonBar setHidden:showsButtonBarItemsInline ^ 1u];

    [viewCopy centerViewWidth];
    if (v15 <= 0.0)
    {
      [(TUISystemInputAssistantLayoutStandard *)self _layoutViewSet:setCopy forFlexibleCenterViewInBounds:viewCopy forAssistantView:x, y, width, height];
    }

    else
    {
      [TUISystemInputAssistantLayoutStandard _layoutViewSet:"_layoutViewSet:forFixedCenterViewWidth:inBounds:forAssistantView:" forFixedCenterViewWidth:setCopy inBounds:viewCopy forAssistantView:?];
    }
  }
}

- (void)_layoutViewSet:(id)set forFlexibleCenterViewInBounds:(CGRect)bounds forAssistantView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  setCopy = set;
  viewCopy = view;
  viewSetContainer = [setCopy viewSetContainer];
  translatesAutoresizingMaskIntoConstraints = [viewSetContainer translatesAutoresizingMaskIntoConstraints];

  if (translatesAutoresizingMaskIntoConstraints)
  {
    viewSetContainer2 = [setCopy viewSetContainer];
    [viewCopy bounds];
    [viewSetContainer2 setFrame:?];
  }

  else
  {
    [viewCopy resetContainerConstraints];
  }

  showsButtonBarItemsInline = [viewCopy showsButtonBarItemsInline];

  if (showsButtonBarItemsInline)
  {
    leftButtonBar = [setCopy leftButtonBar];
    [leftButtonBar intrinsicContentSize];
    v17 = v16;

    rightButtonBar = [setCopy rightButtonBar];
    [rightButtonBar intrinsicContentSize];
    v20 = v19;

    v21 = v17 + v20;
    if (width > 0.0 && v21 > width)
    {
      v17 = v17 * (width / v21);
      v20 = v20 * (width / v21);
      v21 = v20 + v17;
    }

    leftButtonBar2 = [setCopy leftButtonBar];
    y = 0.0;
    [leftButtonBar2 setFrame:{0.0, 0.0, v17, height}];

    leftButtonBar3 = [setCopy leftButtonBar];
    [leftButtonBar3 frame];
    x = CGRectGetWidth(v29) + 0.0;

    width = width - v21;
    v30.origin.y = 0.0;
    v30.origin.x = x;
    v30.size.width = width;
    v30.size.height = height;
    v24 = x + CGRectGetWidth(v30);
    rightButtonBar2 = [setCopy rightButtonBar];
    [rightButtonBar2 setFrame:{v24, 0.0, v20, height}];
  }

  centerView = [setCopy centerView];
  [centerView setFrame:{x, y, width, height}];
}

- (void)_layoutViewSet:(id)set forFixedCenterViewWidth:(double)width inBounds:(CGRect)bounds forAssistantView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  setCopy = set;
  viewCopy = view;
  viewSetContainer = [setCopy viewSetContainer];
  translatesAutoresizingMaskIntoConstraints = [viewSetContainer translatesAutoresizingMaskIntoConstraints];

  if (translatesAutoresizingMaskIntoConstraints)
  {
    viewSetContainer2 = [setCopy viewSetContainer];
    [viewCopy bounds];
    [viewSetContainer2 setFrame:?];
  }

  else
  {
    [viewCopy resetContainerConstraints];
  }

  v17 = width - width;
  if (((width > 0.0) & [viewCopy showsCenterView]) != 0)
  {
    widthCopy = width - width;
  }

  else
  {
    widthCopy = width;
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
    v21 = widthCopy * 0.5;
    dx = v21;
  }

  showsCenterView = [viewCopy showsCenterView];
  if (width <= 0.0)
  {
    v23 = height;
    widthCopy3 = width;
  }

  else
  {
    v23 = height;
    widthCopy3 = width;
    if (showsCenterView)
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = CGRectInset(v36, v17 * 0.5, 0.0);
      x = v37.origin.x;
      y = v37.origin.y;
      widthCopy3 = v37.size.width;
      v23 = v37.size.height;
    }
  }

  if ([viewCopy showsButtonBarItemsInline])
  {
    leftButtonBar = [setCopy leftButtonBar];
    [leftButtonBar setFrame:{0.0, 0.0, dx, height}];

    if ([viewCopy showsCenterView])
    {
      v32 = height;
      leftButtonBar2 = [setCopy leftButtonBar];
      [leftButtonBar2 frame];
      v27 = y;
      MaxX = CGRectGetMaxX(v38);
      v39.origin.x = x;
      v39.origin.y = v27;
      v39.size.width = widthCopy3;
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
        v40.size.width = widthCopy3;
        v40.size.height = v23;
        v41 = CGRectInset(v40, dx, 0.0);
        x = v41.origin.x;
        y = v41.origin.y;
        widthCopy3 = v41.size.width;
        v23 = v41.size.height;
      }

      height = v32;
    }

    rightButtonBar = [setCopy rightButtonBar];
    [rightButtonBar setFrame:{width - v21, 0.0, v21, height}];
  }

  centerView = [setCopy centerView];
  [centerView setFrame:{x, y, widthCopy3, v23}];
}

- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view
{
  setCopy = set;
  viewCopy = view;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__TUISystemInputAssistantLayoutStandard_configureButtonBarsInViewSet_forApplicationAssistantItem_withSystemAssistantItem_withAssistantView___block_invoke;
  aBlock[3] = &unk_1E72D7A48;
  v12 = viewCopy;
  v30 = v12;
  assistantItemCopy = assistantItem;
  itemCopy = item;
  v15 = _Block_copy(aBlock);
  v16 = [(TUISystemInputAssistantLayout *)self _buttonBarGroupSetForApplicationAssistantItem:itemCopy withSystemInputAssistantItem:assistantItemCopy forAssistantView:v12];

  LODWORD(assistantItemCopy) = [v12 showsCenterView];
  centerView = [setCopy centerView];
  [centerView setHidden:assistantItemCopy ^ 1];

  if ([(TUISystemInputAssistantLayout *)self usesUnifiedButtonBar])
  {
    unifiedButtonBar = [setCopy unifiedButtonBar];
    unifiedButtonGroups = [v16 unifiedButtonGroups];
    [unifiedButtonBar setButtonGroups:unifiedButtonGroups];
  }

  else
  {
    leftButtonBar = [setCopy leftButtonBar];
    effectiveUserInterfaceLayoutDirection = [leftButtonBar effectiveUserInterfaceLayoutDirection];

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      rightButtonBar = [setCopy rightButtonBar];
      leadingButtonGroups = [v16 leadingButtonGroups];
      leadingSeparators = [v16 leadingSeparators];
      v15[2](v15, rightButtonBar, leadingButtonGroups, leadingSeparators);

      [setCopy leftButtonBar];
    }

    else
    {
      leftButtonBar2 = [setCopy leftButtonBar];
      leadingButtonGroups2 = [v16 leadingButtonGroups];
      leadingSeparators2 = [v16 leadingSeparators];
      v15[2](v15, leftButtonBar2, leadingButtonGroups2, leadingSeparators2);

      [setCopy rightButtonBar];
    }
    unifiedButtonBar = ;
    unifiedButtonGroups = [v16 trailingButtonGroups];
    trailingSeparators = [v16 trailingSeparators];
    v15[2](v15, unifiedButtonBar, unifiedButtonGroups, trailingSeparators);
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