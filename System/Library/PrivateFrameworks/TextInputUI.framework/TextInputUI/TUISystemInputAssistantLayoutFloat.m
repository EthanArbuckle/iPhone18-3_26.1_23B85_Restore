@interface TUISystemInputAssistantLayoutFloat
- (TUISystemInputAssistantLayoutFloat)init;
- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)a3 withSystemInputAssistantItem:(id)a4 forAssistantView:(id)a5;
- (void)_layoutViewSet:(id)a3 forFixedCenterViewWidth:(double)a4 inBounds:(CGRect)a5 forAssistantView:(id)a6;
- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6;
- (void)setCurrentRectEdge:(unint64_t)a3;
- (void)trackHorizontalMovement:(CGPoint)a3;
- (void)updatePostionForRectEdge:(unint64_t)a3;
@end

@implementation TUISystemInputAssistantLayoutFloat

- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)a3 withSystemInputAssistantItem:(id)a4 forAssistantView:(id)a5
{
  v56[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 leadingBarButtonGroups];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = v13;

  v15 = [v9 trailingBarButtonGroups];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v51 = v16;

  v17 = [v8 leadingBarButtonGroups];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  v52 = v19;

  v20 = [v8 trailingBarButtonGroups];

  if (v20)
  {
    v21 = v20;
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

  LOBYTE(v31) = [v7 showsCenterView];
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

  v43 = [(TUIButtonBarGroupSet *)v23 leadingButtonGroups];
  v44 = [(TUIButtonBarGroupSet *)v23 trailingButtonGroups];
  v45 = [v43 arrayByAddingObjectsFromArray:v44];
  [(TUIButtonBarGroupSet *)v23 setUnifiedButtonGroups:v45];

  v46 = [(TUIButtonBarGroupSet *)v23 leadingSeparators];
  v47 = [(TUIButtonBarGroupSet *)v23 trailingSeparators];
  v48 = [v46 arrayByAddingObjectsFromArray:v47];
  [(TUIButtonBarGroupSet *)v23 setUnifiedSeparators:v48];

  return v23;
}

- (void)_layoutViewSet:(id)a3 forFixedCenterViewWidth:(double)a4 inBounds:(CGRect)a5 forAssistantView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a6;
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
  [v14 updateContainerConstraintsForFloating];
  v24 = [v14 containerLeading];
  [(TUISystemInputAssistantLayoutFloat *)self setContainerLeadingHorizontalPosition:v24];

  v25 = [v14 containerTrailing];
  [(TUISystemInputAssistantLayoutFloat *)self setContainerTrailingHorizontalPosition:v25];

  v26 = [v14 containerCenter];
  [(TUISystemInputAssistantLayoutFloat *)self setCenterViewCenterConstraint:v26];

  if (([v14 showsCenterView] & 1) == 0 && objc_msgSend(v14, "isInputAssistantItemHidden"))
  {
    if ([v14 showsButtonBarItemsInline])
    {
      v27 = [v13 leftButtonBar];
      [v27 intrinsicContentSize];
      v29 = v28;

      v30 = [v13 rightButtonBar];
      [v30 intrinsicContentSize];
      v32 = v31;

      v33 = [MEMORY[0x1E69DCBE0] activeInstance];
      v34 = [v33 inputDelegate];
      v35 = [v34 textInputView];
      [v35 _shouldReverseLayoutDirection];

      v36 = [v13 leftButtonBar];
      [v36 setFrame:{0.0, 0.0, v29, v23}];

      v37 = [v13 rightButtonBar];
      [v37 setFrame:{v29 + 0.0, 0.0, v32, v23}];
    }

    v38 = [(TUISystemInputAssistantLayoutFloat *)self currentRectEdge];
    v39 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    v40 = [v39 isActive];

    if (v40)
    {
      [(TUISystemInputAssistantLayoutFloat *)self setCurrentRectEdge:0];
      [(TUISystemInputAssistantLayoutFloat *)self setCurrentRectEdge:v38];
    }

    goto LABEL_24;
  }

  if (([v14 showsCenterView] & 1) == 0)
  {
    if ([v14 showsButtonBarItemsInline])
    {
      v47 = [v13 leftButtonBar];
      [v47 intrinsicContentSize];
      v49 = v48;
      v50 = [v13 rightButtonBar];
      [v50 intrinsicContentSize];
      v52 = v49 + v51;

      if (v52 > v21 + -32.0)
      {
        v53 = [v13 leftButtonBar];
        [v53 collapsedSizeThatFits:{v21 + -32.0, height}];
        v55 = v54;
        v56 = [v13 rightButtonBar];
        [v56 collapsedSizeThatFits:{v21 + -32.0, height}];
        v52 = v55 + v57;
      }

      v58 = [v13 leftButtonBar];
      [v58 setFrame:{0.0, 0.0, v52, v23}];

      v59 = [v13 rightButtonBar];
      [v59 setFrame:{v52 + 0.0, 0.0, 0.0, v23}];

      [(TUISystemInputAssistantLayoutFloat *)self setCurrentRectEdge:4];
      goto LABEL_22;
    }

LABEL_24:
    v70 = [v13 centerView];
    [v70 setFrame:{v17, v19, v21, v23}];

    [(TUISystemInputAssistantLayoutFloat *)self updatePostionForRectEdge:[(TUISystemInputAssistantLayoutFloat *)self currentRectEdge]];
    goto LABEL_25;
  }

  _UISolariumEnabled();
  if (a4 <= 0.0)
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
    v45 = v21 - a4;
    v21 = v46;
  }

  if (![v14 showsButtonBarItemsInline])
  {
    v23 = v44;
    goto LABEL_24;
  }

  v60 = [v13 leftButtonBar];
  v61 = v15[2](v15, v60, 214.0, v45 * 0.5 + -16.0);

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

  v64 = [v13 rightButtonBar];
  v65 = v15[2](v15, v64, 214.0, v45 * 0.5 + -16.0);

  if (v65 != 0.0)
  {
    v62 = 10.0;
  }

  v66 = [v13 leftButtonBar];
  [v66 setFrame:{0.0, 0.0, v61, v23}];

  v17 = v61 + v63;
  v21 = v74;
  v76.origin.x = v17;
  v76.origin.y = v19;
  v76.size.width = v74;
  v76.size.height = v72;
  v67 = v62 + CGRectGetMaxX(v76);
  v68 = [v13 rightButtonBar];
  [v68 setFrame:{v67, 0.0, v65, v23}];

  [(TUISystemInputAssistantLayoutFloat *)self updatePostionForRectEdge:4];
  v23 = v72;
LABEL_22:
  v69 = [v13 centerView];
  [v69 setFrame:{v17, v19, v21, v23}];

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

- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 showsCenterView] & 1) != 0 || (objc_msgSend(v13, "isInputAssistantItemHidden"))
  {
    v14 = [v10 leftButtonBar];
    v15 = [v14 effectiveUserInterfaceLayoutDirection];

    if (v15 == 1)
    {
      v16 = objc_opt_new();
      v17 = [v12 trailingBarButtonGroups];
      [v16 setLeadingBarButtonGroups:v17];

      v18 = [v12 leadingBarButtonGroups];
      [v16 setTrailingBarButtonGroups:v18];
    }

    else
    {
      v16 = v12;
    }

    v28.receiver = self;
    v28.super_class = TUISystemInputAssistantLayoutFloat;
    [(TUISystemInputAssistantLayoutStandard *)&v28 configureButtonBarsInViewSet:v10 forApplicationAssistantItem:v11 withSystemAssistantItem:v16 withAssistantView:v13];
  }

  else
  {
    v19 = [(TUISystemInputAssistantLayoutFloat *)self _buttonBarGroupSetForApplicationAssistantItem:v11 withSystemInputAssistantItem:v12 forAssistantView:v13];
    v20 = [v10 leftButtonBar];
    v21 = [v19 unifiedButtonGroups];
    [v20 setButtonGroups:v21 animated:{objc_msgSend(v13, "isTransitioning")}];

    v22 = [v10 leftButtonBar];
    v23 = [v19 unifiedSeparators];
    [v22 setSeparatorGroups:v23];

    v24 = [v10 rightButtonBar];
    v25 = [v13 isTransitioning];
    v26 = MEMORY[0x1E695E0F0];
    [v24 setButtonGroups:MEMORY[0x1E695E0F0] animated:v25];

    v27 = [v10 rightButtonBar];
    [v27 setSeparatorGroups:v26];
  }
}

- (void)trackHorizontalMovement:(CGPoint)a3
{
  x = a3.x;
  v4 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition:a3.x];
  [v4 setConstant:x];
}

- (void)setCurrentRectEdge:(unint64_t)a3
{
  v5 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];

  if (v5)
  {
    [(TUISystemInputAssistantLayoutFloat *)self updatePostionForRectEdge:a3];
  }

  self->_centerViewCenterConstraint = a3;
}

- (void)updatePostionForRectEdge:(unint64_t)a3
{
  if (a3 == 4)
  {
    v9 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    v10 = [v9 isActive];

    if (v10)
    {
      return;
    }

    v11 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
    [v11 setActive:0];

    v12 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
    [v12 setActive:0];

    v8 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
  }

  else if (a3 == 8)
  {
    v4 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
    v5 = [v4 isActive];

    if (v5)
    {
      return;
    }

    v6 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
    [v6 setActive:0];

    v7 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    [v7 setActive:0];

    v8 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
  }

  else
  {
    v13 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
    v14 = [v13 isActive];

    if (v14)
    {
      return;
    }

    v15 = [(TUISystemInputAssistantLayoutFloat *)self containerTrailingHorizontalPosition];
    [v15 setActive:0];

    v16 = [(TUISystemInputAssistantLayoutFloat *)self centerViewCenterConstraint];
    [v16 setActive:0];

    v8 = [(TUISystemInputAssistantLayoutFloat *)self containerLeadingHorizontalPosition];
  }

  v17 = v8;
  [v8 setActive:1];
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