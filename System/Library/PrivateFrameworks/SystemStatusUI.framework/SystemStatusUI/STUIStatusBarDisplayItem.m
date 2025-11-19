@interface STUIStatusBarDisplayItem
- (BOOL)clearPreviousTokenDisablementIfNecessary;
- (BOOL)hoverHighlightsAsRegion;
- (BOOL)visible;
- (CGAffineTransform)dynamicHidingTransform;
- (CGAffineTransform)dynamicScaleTransform;
- (CGAffineTransform)transform;
- (CGAffineTransform)viewTransform;
- (CGRect)absoluteFrame;
- (CGRect)absoluteHoverFrame;
- (CGRect)absolutePresentationFrame;
- (NSDirectionalEdgeInsets)extendedHoverInsets;
- (STUIStatusBarDisplayItem)initWithIdentifier:(id)a3 item:(id)a4;
- (STUIStatusBarDisplayable)displayable;
- (STUIStatusBarDisplayable)view;
- (STUIStatusBarItem)item;
- (STUIStatusBarRegion)region;
- (UIEdgeInsets)actionInsets;
- (UILayoutItem)layoutItem;
- (UIView)containerView;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)overriddenVerticalAlignment;
- (void)_detectedErrorInFloatingState;
- (void)_updateComputedAlpha;
- (void)_updateComputedTransform;
- (void)applyStyleAttributes:(id)a3;
- (void)enableWithToken:(unint64_t)a3;
- (void)setAbsoluteFrame:(CGRect)a3;
- (void)setContainerView:(id)a3;
- (void)setDynamicHidingTransform:(CGAffineTransform *)a3;
- (void)setDynamicScaleTransform:(CGAffineTransform *)a3;
- (void)setFloating:(BOOL)a3;
- (void)setHighlightView:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)setViewTransform:(CGAffineTransform *)a3;
@end

@implementation STUIStatusBarDisplayItem

- (BOOL)visible
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  v3 = WeakRetained != 0;

  return v3;
}

- (UILayoutItem)layoutItem
{
  layoutItem = self->_layoutItem;
  if (layoutItem)
  {
    v3 = layoutItem;
  }

  else
  {
    v3 = [(STUIStatusBarDisplayItem *)self view];
  }

  return v3;
}

- (STUIStatusBarDisplayable)view
{
  if (self->_layoutItem)
  {
    v3 = 0;
  }

  else
  {
    view = self->_view;
    if (!view)
    {
      v7 = [(STUIStatusBarDisplayItem *)self item];
      v8 = [(STUIStatusBarDisplayItem *)self identifier];
      v9 = [v7 viewForIdentifier:v8];
      [v9 setUserInteractionEnabled:0];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = self->_view;
      self->_view = v9;

      [(STUIStatusBarDisplayItem *)self _updateComputedAlpha];
      [(STUIStatusBarDisplayItem *)self _updateComputedTransform];

      view = self->_view;
    }

    v3 = view;
  }

  return v3;
}

- (BOOL)clearPreviousTokenDisablementIfNecessary
{
  wasPreviouslyDisabledWithToken = self->_wasPreviouslyDisabledWithToken;
  self->_wasPreviouslyDisabledWithToken = 0;
  return wasPreviouslyDisabledWithToken;
}

- (STUIStatusBarDisplayable)displayable
{
  layoutItem = self->_layoutItem;
  if (layoutItem)
  {
    if ([(UILayoutItem *)layoutItem conformsToProtocol:&unk_287D2CAC8])
    {
      v4 = self->_layoutItem;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [(STUIStatusBarDisplayItem *)self view];
  }

  return v4;
}

- (void)_updateComputedAlpha
{
  if (self->_dynamicallyHidden)
  {
    dynamicHidingAlpha = self->_dynamicHidingAlpha;
  }

  else
  {
    dynamicHidingAlpha = self->_alpha * self->_viewAlpha;
  }

  view = self->_view;
  if (view)
  {
    [(STUIStatusBarDisplayable *)view alpha];
    if (vabdd_f64(dynamicHidingAlpha, v5) > 2.22044605e-16)
    {
      v6 = self->_view;

      [(STUIStatusBarDisplayable *)v6 setAlpha:dynamicHidingAlpha];
    }
  }
}

- (STUIStatusBarItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)_updateComputedTransform
{
  memset(&v13, 0, sizeof(v13));
  if (self->_dynamicallyHidden)
  {
    v3 = *&self->_dynamicHidingTransform.c;
    *&v13.a = *&self->_dynamicHidingTransform.a;
    *&v13.c = v3;
    *&v13.tx = *&self->_dynamicHidingTransform.tx;
  }

  else
  {
    v4 = *&self->_viewTransform.c;
    v5 = *&self->_viewTransform.tx;
    v6 = *&self->_transform.tx;
    *&t1.a = *&self->_viewTransform.a;
    *&t1.c = v4;
    *&t1.tx = v5;
    v7 = *&self->_transform.c;
    *&v10.a = *&self->_transform.a;
    *&v10.c = v7;
    *&v10.tx = v6;
    CGAffineTransformConcat(&t2, &t1, &v10);
    v8 = *&self->_dynamicScaleTransform.c;
    *&t1.a = *&self->_dynamicScaleTransform.a;
    *&t1.c = v8;
    *&t1.tx = *&self->_dynamicScaleTransform.tx;
    CGAffineTransformConcat(&v13, &t1, &t2);
  }

  view = self->_view;
  if (view)
  {
    [(STUIStatusBarDisplayable *)view transform];
    t1 = v13;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      t2 = v13;
      [(STUIStatusBarDisplayable *)self->_view setTransform:&t2];
    }
  }
}

- (int64_t)overriddenVerticalAlignment
{
  result = self->_overriddenVerticalAlignment;
  if (!result)
  {
    result = [(STUIStatusBarDisplayItem *)self displayable];
    if (result)
    {
      v4 = result;
      v5 = [(STUIStatusBarDisplayItem *)self displayable];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [(STUIStatusBarDisplayItem *)self displayable];
        v8 = [v7 overriddenVerticalAlignment];

        return v8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (STUIStatusBarRegion)region
{
  WeakRetained = objc_loadWeakRetained(&self->_region);

  return WeakRetained;
}

- (CGRect)absolutePresentationFrame
{
  v3 = [(STUIStatusBarDisplayItem *)self layoutItem];
  if (v3 && (v4 = v3, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    v6 = [(STUIStatusBarDisplayItem *)self layoutItem];
    v7 = [v6 _ui_view];
    v8 = [v7 layer];
    v9 = [v8 presentationLayer];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v38.origin.x = v11;
    v38.origin.y = v13;
    v38.size.width = v15;
    v38.size.height = v17;
    if (CGRectIsEmpty(v38))
    {
      v18 = [(STUIStatusBarDisplayItem *)self layoutItem];
      [v18 _ui_frame];
      v11 = v19;
      v13 = v20;
      v15 = v21;
      v17 = v22;
    }

    v23 = [(STUIStatusBarDisplayItem *)self containerView];
    v24 = [(STUIStatusBarDisplayItem *)self region];
    v25 = [v24 statusBar];
    [v23 convertRect:v25 toView:{v11, v13, v15, v17}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v27 = *MEMORY[0x277CBF398];
    v29 = *(MEMORY[0x277CBF398] + 8);
    v31 = *(MEMORY[0x277CBF398] + 16);
    v33 = *(MEMORY[0x277CBF398] + 24);
  }

  v34 = v27;
  v35 = v29;
  v36 = v31;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (CGRect)absoluteFrame
{
  v3 = [(STUIStatusBarDisplayItem *)self layoutItem];
  if (v3 && (v4 = v3, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    v6 = [(STUIStatusBarDisplayItem *)self containerView];
    v7 = [(STUIStatusBarDisplayItem *)self layoutItem];
    [v7 _ui_frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(STUIStatusBarDisplayItem *)self region];
    v17 = [v16 statusBar];
    [v6 convertRect:v17 toView:{v9, v11, v13, v15}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v19 = *MEMORY[0x277CBF398];
    v21 = *(MEMORY[0x277CBF398] + 8);
    v23 = *(MEMORY[0x277CBF398] + 16);
    v25 = *(MEMORY[0x277CBF398] + 24);
  }

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (STUIStatusBarDisplayItem)initWithIdentifier:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = STUIStatusBarDisplayItem;
  v9 = [(STUIStatusBarDisplayItem *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeWeak(&v10->_item, v8);
    __asm { FMOV            V0.2D, #1.0 }

    *&v10->_alpha = _Q0;
    v16 = MEMORY[0x277CBF2C0];
    v17 = *MEMORY[0x277CBF2C0];
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v10->_transform.a = *MEMORY[0x277CBF2C0];
    *&v10->_transform.c = v18;
    v19 = *(v16 + 32);
    *&v10->_transform.tx = v19;
    *&v10->_viewTransform.a = v17;
    *&v10->_viewTransform.c = v18;
    *&v10->_viewTransform.tx = v19;
    v10->_dynamicallyHidden = 0;
    v10->_dynamicHidingAlpha = 1.0;
    *&v10->_dynamicHidingTransform.a = v17;
    *&v10->_dynamicHidingTransform.c = v18;
    *&v10->_dynamicHidingTransform.tx = v19;
    *&v10->_dynamicScaleTransform.a = v17;
    *&v10->_dynamicScaleTransform.c = v18;
    *&v10->_dynamicScaleTransform.tx = v19;
    v10->_overriddenVerticalAlignment = 0;
    v20 = [MEMORY[0x277CCAB58] indexSet];
    disablingTokens = v10->_disablingTokens;
    v10->_disablingTokens = v20;
  }

  return v10;
}

- (void)_detectedErrorInFloatingState
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v7[0]) = 138412290;
    *(v7 + 4) = self;
    _os_log_impl(&dword_26C4DD000, v3, OS_LOG_TYPE_FAULT, "Item %@ left floating and in invalid state. Reseting status bar layout.", v7, 0xCu);
  }

  [(STUIStatusBarDisplayItem *)self setFloating:0];
  [(STUIStatusBarDisplayItem *)self setContainerView:0];
  [(STUIStatusBarDisplayItem *)self setAlpha:1.0];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(STUIStatusBarDisplayItem *)self setTransform:v7];
  v5 = [(STUIStatusBarDisplayItem *)self item];
  v6 = [v5 statusBar];
  [v6 updateForcingIterativeOverflow];
}

- (void)enableWithToken:(unint64_t)a3
{
  v5 = [(NSMutableIndexSet *)self->_disablingTokens count];
  [(NSMutableIndexSet *)self->_disablingTokens removeIndex:a3];
  if (v5)
  {
    v6 = [(NSMutableIndexSet *)self->_disablingTokens count]== 0;
  }

  else
  {
    v6 = 0;
  }

  self->_wasPreviouslyDisabledWithToken = v6;
}

- (BOOL)hoverHighlightsAsRegion
{
  v2 = [(STUIStatusBarDisplayItem *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGRect)absoluteHoverFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setContainerView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_containerView);

    if (v6)
    {
      v7 = [(STUIStatusBarDisplayItem *)self layoutItem];
      [v7 _ui_removeFromParentLayoutItem];
    }

    if (obj)
    {
      v8 = [(STUIStatusBarDisplayItem *)self isBackground];
      v9 = [(STUIStatusBarDisplayItem *)self layoutItem];
      if (v8)
      {
        [obj _ui_insertSubLayoutItem:v9 atIndex:0];
      }

      else
      {
        [obj _ui_addSubLayoutItem:v9];
      }
    }

    objc_storeWeak(&self->_containerView, obj);
    v5 = obj;
  }
}

- (void)setHighlightView:(id)a3
{
  v5 = a3;
  highlightView = self->_highlightView;
  if (highlightView != v5)
  {
    v7 = v5;
    if (v5)
    {
      [(STUIStatusBarDisplayable *)self->_view bounds];
      [(UIView *)v7 setFrame:?];
      [(STUIStatusBarDisplayable *)self->_view addSubview:v7];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](highlightView, v5);
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_viewTransform.c = *&a3->c;
  *&self->_viewTransform.tx = v4;
  *&self->_viewTransform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicHidingTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_dynamicHidingTransform.c = *&a3->c;
  *&self->_dynamicHidingTransform.tx = v4;
  *&self->_dynamicHidingTransform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicScaleTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_dynamicScaleTransform.c = *&a3->c;
  *&self->_dynamicScaleTransform.tx = v4;
  *&self->_dynamicScaleTransform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setAbsoluteFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(STUIStatusBarDisplayItem *)self floating]&& x == 0.0 && y == 0.0)
  {

    [(STUIStatusBarDisplayItem *)self _detectedErrorInFloatingState];
  }

  else
  {
    v8 = [(STUIStatusBarDisplayItem *)self layoutItem];
    if (v8)
    {
      v9 = v8;
      WeakRetained = objc_loadWeakRetained(&self->_containerView);

      if (WeakRetained)
      {
        v11 = [(STUIStatusBarDisplayItem *)self containerView];
        v12 = [(STUIStatusBarDisplayItem *)self region];
        v13 = [v12 statusBar];
        [v11 convertRect:v13 fromView:{x, y, width, height}];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v22 = [(STUIStatusBarDisplayItem *)self layoutItem];
        [v22 set_ui_frame:{v15, v17, v19, v21}];
      }
    }
  }
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarDisplayItem *)self displayable];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 wantsCrossfade] && objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlock"))
    {
      v6 = MEMORY[0x277D75D18];
      v7 = [(STUIStatusBarDisplayItem *)self view];
      [MEMORY[0x277D75D18] _currentAnimationDuration];
      v9 = v8;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __49__STUIStatusBarDisplayItem_applyStyleAttributes___block_invoke;
      v10[3] = &unk_279D38150;
      v11 = v5;
      v12 = v4;
      [v6 transitionWithView:v7 duration:5242880 options:v10 animations:0 completion:v9];
    }

    else
    {
      [v5 applyStyleAttributes:v4];
    }
  }
}

- (void)setFloating:(BOOL)a3
{
  if (self->_floating != a3)
  {
    self->_floating = a3;
    v4 = !a3;
    [(STUIStatusBarDisplayItem *)self setNeedsAddingToLayout:!a3];
    if (v4)
    {
      floatingTimer = self->_floatingTimer;
      if (floatingTimer)
      {
        [(NSTimer *)floatingTimer invalidate];
        v14 = self->_floatingTimer;
        self->_floatingTimer = 0;
      }
    }

    else
    {
      v5 = [(STUIStatusBarDisplayItem *)self region];
      v6 = [v5 layout];

      v7 = [v6 displayItems];
      v8 = [v7 mutableCopy];

      [v8 removeObject:self];
      [v6 setDisplayItems:v8];
      v9 = [(STUIStatusBarDisplayItem *)self layoutItem];
      [v9 set_ui_usesManualLayout:1];

      objc_initWeak(&location, self);
      v10 = MEMORY[0x277CBEBB8];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __40__STUIStatusBarDisplayItem_setFloating___block_invoke;
      v15[3] = &unk_279D38178;
      objc_copyWeak(&v16, &location);
      v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:v15 block:5.0];
      v12 = self->_floatingTimer;
      self->_floatingTimer = v11;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __40__STUIStatusBarDisplayItem_setFloating___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setFloatingTimer:0];
    WeakRetained = [v4 floating];
    v2 = v4;
    if (WeakRetained)
    {
      WeakRetained = [v4 _detectedErrorInFloatingState];
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarDisplayItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItem *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarDisplayItem *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [v7 activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__STUIStatusBarDisplayItem__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

  v10 = v9;
  return v9;
}

void __76__STUIStatusBarDisplayItem__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"identifier"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isEnabled"), @"enabled"}];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) item];
  v8 = [v6 appendObject:v7 withName:@"item"];

  v9 = *(a1 + 32);
  v11 = [*(a1 + 40) view];
  v10 = [v9 appendObject:v11 withName:@"view"];
}

- (UIEdgeInsets)actionInsets
{
  top = self->_actionInsets.top;
  left = self->_actionInsets.left;
  bottom = self->_actionInsets.bottom;
  right = self->_actionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)extendedHoverInsets
{
  top = self->_extendedHoverInsets.top;
  leading = self->_extendedHoverInsets.leading;
  bottom = self->_extendedHoverInsets.bottom;
  trailing = self->_extendedHoverInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[5].c;
  *&retstr->a = *&self[5].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].tx;
  return self;
}

- (CGAffineTransform)viewTransform
{
  v3 = *&self[6].c;
  *&retstr->a = *&self[6].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].tx;
  return self;
}

- (CGAffineTransform)dynamicHidingTransform
{
  v3 = *&self[7].c;
  *&retstr->a = *&self[7].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].tx;
  return self;
}

- (CGAffineTransform)dynamicScaleTransform
{
  v3 = *&self[8].c;
  *&retstr->a = *&self[8].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].tx;
  return self;
}

@end