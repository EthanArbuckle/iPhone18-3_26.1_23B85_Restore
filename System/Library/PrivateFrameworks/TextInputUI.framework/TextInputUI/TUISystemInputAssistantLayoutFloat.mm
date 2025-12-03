@interface TUISystemInputAssistantLayoutFloat
- (TUISystemInputAssistantLayoutFloat)init;
- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)item withSystemInputAssistantItem:(id)assistantItem forAssistantView:(id)view;
- (void)_layoutViewSet:(id)set forFixedCenterViewWidth:(double)width inBounds:(CGRect)bounds forAssistantView:(id)view;
- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view;
- (void)setCurrentRectEdge:(unint64_t)edge;
- (void)trackHorizontalMovement:(CGPoint)movement;
- (void)updatePostionForRectEdge:(unint64_t)edge;
@end

@implementation TUISystemInputAssistantLayoutFloat

- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)item withSystemInputAssistantItem:(id)assistantItem forAssistantView:(id)view
{
  v56[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  assistantItemCopy = assistantItem;
  itemCopy = item;
  leadingBarButtonGroups = [itemCopy leadingBarButtonGroups];
  v11 = leadingBarButtonGroups;
  v12 = MEMORY[0x1E695E0F0];
  if (leadingBarButtonGroups)
  {
    v13 = leadingBarButtonGroups;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = v13;

  trailingBarButtonGroups = [itemCopy trailingBarButtonGroups];

  if (trailingBarButtonGroups)
  {
    v16 = trailingBarButtonGroups;
  }

  else
  {
    v16 = v12;
  }

  v51 = v16;

  leadingBarButtonGroups2 = [assistantItemCopy leadingBarButtonGroups];
  v18 = leadingBarButtonGroups2;
  if (leadingBarButtonGroups2)
  {
    v19 = leadingBarButtonGroups2;
  }

  else
  {
    v19 = v12;
  }

  v52 = v19;

  trailingBarButtonGroups2 = [assistantItemCopy trailingBarButtonGroups];

  if (trailingBarButtonGroups2)
  {
    v21 = trailingBarButtonGroups2;
  }

  else
  {
    v21 = v12;
  }

  v22 = v21;

  v23 = objc_alloc_init(TUIButtonBarGroupSet);
  v24 = objc_alloc(MEMORY[0x1E69DC720]);
  v25 = +[TUIAssistantSeparatorView barButtonItem];
  v56[0] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  v27 = [v24 initWithBarButtonItems:v26 representativeItem:0];

  v28 = v14;
  v29 = objc_alloc(MEMORY[0x1E69DC720]);
  v30 = +[TUIAssistantSeparatorView barButtonItem];
  v55 = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v32 = [v29 initWithBarButtonItems:v31 representativeItem:0];

  LOBYTE(v31) = [viewCopy showsCenterView];
  v33 = MEMORY[0x1E695DF70];
  v34 = [v28 count];
  if (v31)
  {
    v35 = v52;
    v36 = [v33 arrayWithCapacity:{v34 + objc_msgSend(v52, "count") + 1}];
    [v36 addObjectsFromArray:v28];
    [v36 addObject:v27];
    [v36 addObjectsFromArray:v52];
    [(TUIButtonBarGroupSet *)v23 setLeadingButtonGroups:v36];
    v54 = v27;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    v37 = v50 = v28;
    [(TUIButtonBarGroupSet *)v23 setLeadingSeparators:v37];

    v38 = v51;
    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v51, "count") + objc_msgSend(v22, "count") + 1}];
    [v39 addObjectsFromArray:v22];
    [v39 addObject:v32];
    [v39 addObjectsFromArray:v51];
    [(TUIButtonBarGroupSet *)v23 setTrailingButtonGroups:v39];
    v53 = v32;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    [(TUIButtonBarGroupSet *)v23 setTrailingSeparators:v40];

    v41 = v50;
  }

  else
  {
    v38 = v51;
    v36 = [v33 arrayWithCapacity:{v34 + objc_msgSend(v22, "count") + objc_msgSend(v51, "count") + objc_msgSend(v22, "count") + 2}];
    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v35 = v52;
    if ([v52 count])
    {
      [v36 addObjectsFromArray:v52];
      [v36 addObject:v27];
      [v39 addObject:v27];
    }

    v41 = v28;
    [v36 addObjectsFromArray:v28];
    [v36 addObjectsFromArray:v51];
    if ([v22 count])
    {
      [v36 addObject:v32];
      [v36 addObjectsFromArray:v22];
      [v39 addObject:v32];
    }

    v42 = MEMORY[0x1E695E0F0];
    [(TUIButtonBarGroupSet *)v23 setLeadingButtonGroups:MEMORY[0x1E695E0F0]];
    [(TUIButtonBarGroupSet *)v23 setLeadingSeparators:v42];
    [(TUIButtonBarGroupSet *)v23 setTrailingButtonGroups:v36];
    [(TUIButtonBarGroupSet *)v23 setTrailingSeparators:v39];
  }

  leadingButtonGroups = [(TUIButtonBarGroupSet *)v23 leadingButtonGroups];
  trailingButtonGroups = [(TUIButtonBarGroupSet *)v23 trailingButtonGroups];
  v45 = [leadingButtonGroups arrayByAddingObjectsFromArray:trailingButtonGroups];
  [(TUIButtonBarGroupSet *)v23 setUnifiedButtonGroups:v45];

  leadingSeparators = [(TUIButtonBarGroupSet *)v23 leadingSeparators];
  trailingSeparators = [(TUIButtonBarGroupSet *)v23 trailingSeparators];
  v48 = [leadingSeparators arrayByAddingObjectsFromArray:trailingSeparators];
  [(TUIButtonBarGroupSet *)v23 setUnifiedSeparators:v48];

  return v23;
}

- (void)_layoutViewSet:(id)set forFixedCenterViewWidth:(double)width inBounds:(CGRect)bounds forAssistantView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  setCopy = set;
  viewCopy = view;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__TUISystemInputAssistantLayoutFloat__layoutViewSet_forFixedCenterViewWidth_inBounds_forAssistantView___block_invoke;
  aBlock[3] = &__block_descriptor_64_e41_d32__0__TUIAssistantButtonBarView_8d16d24l;
  *&aBlock[4] = x;
  *&aBlock[5] = y;
  *&aBlock[6] = width;
  *&aBlock[7] = height;
  v15 = _Block_copy(aBlock);
  UIRectRoundToScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [viewCopy updateContainerConstraintsForFloating];
  containerLeading = [viewCopy containerLeading];
  [(TUISystemInputAssistantLayoutFloat *)self setContainerLeadingHorizontalPosition:containerLeading];

  containerTrailing = [viewCopy containerTrailing];
  [(TUISystemInputAssistantLayoutFloat *)self setContainerTrailingHorizontalPosition:containerTrailing];

  containerCenter = [viewCopy containerCenter];
  [(TUISystemInputAssistantLayoutFloat *)self setCenterViewCenterConstraint:containerCenter];

  if (([viewCopy showsCenterView] & 1) == 0 && objc_msgSend(viewCopy, "isInputAssistantItemHidden"))
  {
    if ([viewCopy showsButtonBarItemsInline])
    {
      leftButtonBar = [setCopy leftButtonBar];
      [leftButtonBar intrinsicContentSize];
      v29 = v28;

      rightButtonBar = [setCopy rightButtonBar];
      [rightButtonBar intrinsicContentSize];
      v32 = v31;

      activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
      inputDelegate = [activeInstance inputDelegate];
      textInputView = [inputDelegate textInputView];
      [textInputView _shouldReverseLayoutDirection];

      leftButtonBar2 = [setCopy leftButtonBar];
      [leftButtonBar2 setFrame:{0.0, 0.0, v29, v23}];

      rightButtonBar2 = [setCopy rightButtonBar];
      [rightButtonBar2 setFrame:{v29 + 0.0, 0.0, v32, v23}];
    }

    currentRectEdge = [(TUISystemInputAssistantLayoutFloat *)self currentRectEdge];
    centerViewCenterConstraint = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    isActive = [centerViewCenterConstraint isActive];

    if (isActive)
    {
      [(TUISystemInputAssistantLayoutFloat *)self setCurrentRectEdge:0];
      [(TUISystemInputAssistantLayoutFloat *)self setCurrentRectEdge:currentRectEdge];
    }

    goto LABEL_24;
  }

  if (([viewCopy showsCenterView] & 1) == 0)
  {
    if ([viewCopy showsButtonBarItemsInline])
    {
      leftButtonBar3 = [setCopy leftButtonBar];
      [leftButtonBar3 intrinsicContentSize];
      v49 = v48;
      rightButtonBar3 = [setCopy rightButtonBar];
      [rightButtonBar3 intrinsicContentSize];
      v52 = v49 + v51;

      if (v52 > v21 + -32.0)
      {
        leftButtonBar4 = [setCopy leftButtonBar];
        [leftButtonBar4 collapsedSizeThatFits:{v21 + -32.0, height}];
        v55 = v54;
        rightButtonBar4 = [setCopy rightButtonBar];
        [rightButtonBar4 collapsedSizeThatFits:{v21 + -32.0, height}];
        v52 = v55 + v57;
      }

      leftButtonBar5 = [setCopy leftButtonBar];
      [leftButtonBar5 setFrame:{0.0, 0.0, v52, v23}];

      rightButtonBar5 = [setCopy rightButtonBar];
      [rightButtonBar5 setFrame:{v52 + 0.0, 0.0, 0.0, v23}];

      [(TUISystemInputAssistantLayoutFloat *)self setCurrentRectEdge:4];
      goto LABEL_22;
    }

LABEL_24:
    centerView = [setCopy centerView];
    [centerView setFrame:{v17, v19, v21, v23}];

    [(TUISystemInputAssistantLayoutFloat *)self updatePostionForRectEdge:[(TUISystemInputAssistantLayoutFloat *)self currentRectEdge]];
    goto LABEL_25;
  }

  _UISolariumEnabled();
  if (width <= 0.0)
  {
    v44 = v23;
    v45 = v21;
  }

  else
  {
    UIRectCenteredRect();
    v17 = v41;
    v19 = v42;
    v44 = v43;
    v45 = v21 - width;
    v21 = v46;
  }

  if (![viewCopy showsButtonBarItemsInline])
  {
    v23 = v44;
    goto LABEL_24;
  }

  leftButtonBar6 = [setCopy leftButtonBar];
  v61 = v15[2](v15, leftButtonBar6, 214.0, v45 * 0.5 + -16.0);

  v71 = v44;
  v73 = v21;
  v62 = 4.0;
  if (v61 == 0.0)
  {
    v63 = 4.0;
  }

  else
  {
    v63 = 10.0;
  }

  rightButtonBar6 = [setCopy rightButtonBar];
  v65 = v15[2](v15, rightButtonBar6, 214.0, v45 * 0.5 + -16.0);

  if (v65 != 0.0)
  {
    v62 = 10.0;
  }

  leftButtonBar7 = [setCopy leftButtonBar];
  [leftButtonBar7 setFrame:{0.0, 0.0, v61, v23}];

  v17 = v61 + v63;
  v21 = v74;
  v76.origin.x = v17;
  v76.origin.y = v19;
  v76.size.width = v74;
  v76.size.height = v72;
  v67 = v62 + CGRectGetMaxX(v76);
  rightButtonBar7 = [setCopy rightButtonBar];
  [rightButtonBar7 setFrame:{v67, 0.0, v65, v23}];

  [(TUISystemInputAssistantLayoutFloat *)self updatePostionForRectEdge:4];
  v23 = v72;
LABEL_22:
  centerView2 = [setCopy centerView];
  [centerView2 setFrame:{v17, v19, v21, v23}];

LABEL_25:
}

double __103__TUISystemInputAssistantLayoutFloat__layoutViewSet_forFixedCenterViewWidth_inBounds_forAssistantView___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 >= a4)
  {
    a3 = a4;
  }

  v9 = 0.0;
  if ([v7 hasVisibleItem])
  {
    [v8 intrinsicContentSize];
    v11 = v10;
    if (v10 > a3)
    {
      [v8 collapsedSizeThatFits:{a3, *(a1 + 56)}];
      v9 = v12;
      if (v12 < a3)
      {
        goto LABEL_8;
      }

      [v8 uncollapseAllGroups];
    }

    v9 = v11;
LABEL_8:
    if (v9 > a4)
    {
      [v8 sizeThatFits:{a4, *(a1 + 56)}];
      v9 = v13;
    }
  }

  return v9;
}

- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view
{
  setCopy = set;
  itemCopy = item;
  assistantItemCopy = assistantItem;
  viewCopy = view;
  if ([viewCopy showsCenterView] & 1) != 0 || (objc_msgSend(viewCopy, "isInputAssistantItemHidden"))
  {
    leftButtonBar = [setCopy leftButtonBar];
    effectiveUserInterfaceLayoutDirection = [leftButtonBar effectiveUserInterfaceLayoutDirection];

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v16 = objc_opt_new();
      trailingBarButtonGroups = [assistantItemCopy trailingBarButtonGroups];
      [v16 setLeadingBarButtonGroups:trailingBarButtonGroups];

      leadingBarButtonGroups = [assistantItemCopy leadingBarButtonGroups];
      [v16 setTrailingBarButtonGroups:leadingBarButtonGroups];
    }

    else
    {
      v16 = assistantItemCopy;
    }

    v28.receiver = self;
    v28.super_class = TUISystemInputAssistantLayoutFloat;
    [(TUISystemInputAssistantLayoutStandard *)&v28 configureButtonBarsInViewSet:setCopy forApplicationAssistantItem:itemCopy withSystemAssistantItem:v16 withAssistantView:viewCopy];
  }

  else
  {
    v19 = [(TUISystemInputAssistantLayoutFloat *)self _buttonBarGroupSetForApplicationAssistantItem:itemCopy withSystemInputAssistantItem:assistantItemCopy forAssistantView:viewCopy];
    leftButtonBar2 = [setCopy leftButtonBar];
    unifiedButtonGroups = [v19 unifiedButtonGroups];
    [leftButtonBar2 setButtonGroups:unifiedButtonGroups animated:{objc_msgSend(viewCopy, "isTransitioning")}];

    leftButtonBar3 = [setCopy leftButtonBar];
    unifiedSeparators = [v19 unifiedSeparators];
    [leftButtonBar3 setSeparatorGroups:unifiedSeparators];

    rightButtonBar = [setCopy rightButtonBar];
    isTransitioning = [viewCopy isTransitioning];
    v26 = MEMORY[0x1E695E0F0];
    [rightButtonBar setButtonGroups:MEMORY[0x1E695E0F0] animated:isTransitioning];

    rightButtonBar2 = [setCopy rightButtonBar];
    [rightButtonBar2 setSeparatorGroups:v26];
  }
}

- (void)trackHorizontalMovement:(CGPoint)movement
{
  x = movement.x;
  v4 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition:movement.x];
  [v4 setConstant:x];
}

- (void)setCurrentRectEdge:(unint64_t)edge
{
  containerLeadingHorizontalPosition = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];

  if (containerLeadingHorizontalPosition)
  {
    [(TUISystemInputAssistantLayoutFloat *)self updatePostionForRectEdge:edge];
  }

  self->_centerViewCenterConstraint = edge;
}

- (void)updatePostionForRectEdge:(unint64_t)edge
{
  if (edge == 4)
  {
    centerViewCenterConstraint = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    isActive = [centerViewCenterConstraint isActive];

    if (isActive)
    {
      return;
    }

    containerLeadingHorizontalPosition = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
    [containerLeadingHorizontalPosition setActive:0];

    containerTrailingHorizontalPosition = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
    [containerTrailingHorizontalPosition setActive:0];

    centerViewCenterConstraint2 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
  }

  else if (edge == 8)
  {
    containerTrailingHorizontalPosition2 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
    isActive2 = [containerTrailingHorizontalPosition2 isActive];

    if (isActive2)
    {
      return;
    }

    containerLeadingHorizontalPosition2 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
    [containerLeadingHorizontalPosition2 setActive:0];

    centerViewCenterConstraint3 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    [centerViewCenterConstraint3 setActive:0];

    centerViewCenterConstraint2 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
  }

  else
  {
    containerLeadingHorizontalPosition3 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
    isActive3 = [containerLeadingHorizontalPosition3 isActive];

    if (isActive3)
    {
      return;
    }

    containerTrailingHorizontalPosition3 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
    [containerTrailingHorizontalPosition3 setActive:0];

    centerViewCenterConstraint4 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    [centerViewCenterConstraint4 setActive:0];

    centerViewCenterConstraint2 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
  }

  v17 = centerViewCenterConstraint2;
  [centerViewCenterConstraint2 setActive:1];
}

- (TUISystemInputAssistantLayoutFloat)init
{
  v3.receiver = self;
  v3.super_class = TUISystemInputAssistantLayoutFloat;
  result = [(TUISystemInputAssistantLayoutFloat *)&v3 init];
  if (result)
  {
    result->_centerViewCenterConstraint = 8;
  }

  return result;
}

@end