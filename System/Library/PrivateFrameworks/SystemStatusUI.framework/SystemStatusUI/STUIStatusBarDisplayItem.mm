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
- (STUIStatusBarDisplayItem)initWithIdentifier:(id)identifier item:(id)item;
- (STUIStatusBarDisplayable)displayable;
- (STUIStatusBarDisplayable)view;
- (STUIStatusBarItem)item;
- (STUIStatusBarRegion)region;
- (UIEdgeInsets)actionInsets;
- (UILayoutItem)layoutItem;
- (UIView)containerView;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)overriddenVerticalAlignment;
- (void)_detectedErrorInFloatingState;
- (void)_updateComputedAlpha;
- (void)_updateComputedTransform;
- (void)applyStyleAttributes:(id)attributes;
- (void)enableWithToken:(unint64_t)token;
- (void)setAbsoluteFrame:(CGRect)frame;
- (void)setContainerView:(id)view;
- (void)setDynamicHidingTransform:(CGAffineTransform *)transform;
- (void)setDynamicScaleTransform:(CGAffineTransform *)transform;
- (void)setFloating:(BOOL)floating;
- (void)setHighlightView:(id)view;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setViewTransform:(CGAffineTransform *)transform;
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
    view = layoutItem;
  }

  else
  {
    view = [(STUIStatusBarDisplayItem *)self view];
  }

  return view;
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
      item = [(STUIStatusBarDisplayItem *)self item];
      identifier = [(STUIStatusBarDisplayItem *)self identifier];
      v9 = [item viewForIdentifier:identifier];
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
      view = self->_layoutItem;
    }

    else
    {
      view = 0;
    }
  }

  else
  {
    view = [(STUIStatusBarDisplayItem *)self view];
  }

  return view;
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
      displayable = [(STUIStatusBarDisplayItem *)self displayable];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        displayable2 = [(STUIStatusBarDisplayItem *)self displayable];
        overriddenVerticalAlignment = [displayable2 overriddenVerticalAlignment];

        return overriddenVerticalAlignment;
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
  layoutItem = [(STUIStatusBarDisplayItem *)self layoutItem];
  if (layoutItem && (v4 = layoutItem, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    layoutItem2 = [(STUIStatusBarDisplayItem *)self layoutItem];
    _ui_view = [layoutItem2 _ui_view];
    layer = [_ui_view layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer frame];
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
      layoutItem3 = [(STUIStatusBarDisplayItem *)self layoutItem];
      [layoutItem3 _ui_frame];
      v11 = v19;
      v13 = v20;
      v15 = v21;
      v17 = v22;
    }

    containerView = [(STUIStatusBarDisplayItem *)self containerView];
    region = [(STUIStatusBarDisplayItem *)self region];
    statusBar = [region statusBar];
    [containerView convertRect:statusBar toView:{v11, v13, v15, v17}];
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
  layoutItem = [(STUIStatusBarDisplayItem *)self layoutItem];
  if (layoutItem && (v4 = layoutItem, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    containerView = [(STUIStatusBarDisplayItem *)self containerView];
    layoutItem2 = [(STUIStatusBarDisplayItem *)self layoutItem];
    [layoutItem2 _ui_frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    region = [(STUIStatusBarDisplayItem *)self region];
    statusBar = [region statusBar];
    [containerView convertRect:statusBar toView:{v9, v11, v13, v15}];
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

- (STUIStatusBarDisplayItem)initWithIdentifier:(id)identifier item:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = STUIStatusBarDisplayItem;
  v9 = [(STUIStatusBarDisplayItem *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeWeak(&v10->_item, itemCopy);
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
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    disablingTokens = v10->_disablingTokens;
    v10->_disablingTokens = indexSet;
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
  item = [(STUIStatusBarDisplayItem *)self item];
  statusBar = [item statusBar];
  [statusBar updateForcingIterativeOverflow];
}

- (void)enableWithToken:(unint64_t)token
{
  v5 = [(NSMutableIndexSet *)self->_disablingTokens count];
  [(NSMutableIndexSet *)self->_disablingTokens removeIndex:token];
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
  view = [(STUIStatusBarDisplayItem *)self view];
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

- (void)setContainerView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_containerView);

    if (v6)
    {
      layoutItem = [(STUIStatusBarDisplayItem *)self layoutItem];
      [layoutItem _ui_removeFromParentLayoutItem];
    }

    if (obj)
    {
      isBackground = [(STUIStatusBarDisplayItem *)self isBackground];
      layoutItem2 = [(STUIStatusBarDisplayItem *)self layoutItem];
      if (isBackground)
      {
        [obj _ui_insertSubLayoutItem:layoutItem2 atIndex:0];
      }

      else
      {
        [obj _ui_addSubLayoutItem:layoutItem2];
      }
    }

    objc_storeWeak(&self->_containerView, obj);
    v5 = obj;
  }
}

- (void)setHighlightView:(id)view
{
  viewCopy = view;
  highlightView = self->_highlightView;
  if (highlightView != viewCopy)
  {
    v7 = viewCopy;
    if (viewCopy)
    {
      [(STUIStatusBarDisplayable *)self->_view bounds];
      [(UIView *)v7 setFrame:?];
      [(STUIStatusBarDisplayable *)self->_view addSubview:v7];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, view);
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](highlightView, viewCopy);
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_transform.c = *&transform->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setViewTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_viewTransform.c = *&transform->c;
  *&self->_viewTransform.tx = v4;
  *&self->_viewTransform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicHidingTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_dynamicHidingTransform.c = *&transform->c;
  *&self->_dynamicHidingTransform.tx = v4;
  *&self->_dynamicHidingTransform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicScaleTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_dynamicScaleTransform.c = *&transform->c;
  *&self->_dynamicScaleTransform.tx = v4;
  *&self->_dynamicScaleTransform.a = v3;
  [(STUIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setAbsoluteFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(STUIStatusBarDisplayItem *)self floating]&& x == 0.0 && y == 0.0)
  {

    [(STUIStatusBarDisplayItem *)self _detectedErrorInFloatingState];
  }

  else
  {
    layoutItem = [(STUIStatusBarDisplayItem *)self layoutItem];
    if (layoutItem)
    {
      v9 = layoutItem;
      WeakRetained = objc_loadWeakRetained(&self->_containerView);

      if (WeakRetained)
      {
        containerView = [(STUIStatusBarDisplayItem *)self containerView];
        region = [(STUIStatusBarDisplayItem *)self region];
        statusBar = [region statusBar];
        [containerView convertRect:statusBar fromView:{x, y, width, height}];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        layoutItem2 = [(STUIStatusBarDisplayItem *)self layoutItem];
        [layoutItem2 set_ui_frame:{v15, v17, v19, v21}];
      }
    }
  }
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  displayable = [(STUIStatusBarDisplayItem *)self displayable];
  if (displayable && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [displayable wantsCrossfade] && objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlock"))
    {
      v6 = MEMORY[0x277D75D18];
      view = [(STUIStatusBarDisplayItem *)self view];
      [MEMORY[0x277D75D18] _currentAnimationDuration];
      v9 = v8;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __49__STUIStatusBarDisplayItem_applyStyleAttributes___block_invoke;
      v10[3] = &unk_279D38150;
      v11 = displayable;
      v12 = attributesCopy;
      [v6 transitionWithView:view duration:5242880 options:v10 animations:0 completion:v9];
    }

    else
    {
      [displayable applyStyleAttributes:attributesCopy];
    }
  }
}

- (void)setFloating:(BOOL)floating
{
  if (self->_floating != floating)
  {
    self->_floating = floating;
    v4 = !floating;
    [(STUIStatusBarDisplayItem *)self setNeedsAddingToLayout:!floating];
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
      region = [(STUIStatusBarDisplayItem *)self region];
      layout = [region layout];

      displayItems = [layout displayItems];
      v8 = [displayItems mutableCopy];

      [v8 removeObject:self];
      [layout setDisplayItems:v8];
      layoutItem = [(STUIStatusBarDisplayItem *)self layoutItem];
      [layoutItem set_ui_usesManualLayout:1];

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
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItem *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItem *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__STUIStatusBarDisplayItem__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

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