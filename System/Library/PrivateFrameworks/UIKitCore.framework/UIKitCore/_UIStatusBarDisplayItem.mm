@interface _UIStatusBarDisplayItem
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
- (CGRect)presentationAbsoluteFrame;
- (NSDirectionalEdgeInsets)extendedHoverInsets;
- (NSString)description;
- (UIEdgeInsets)actionInsets;
- (UILayoutItem)layoutItem;
- (UIView)containerView;
- (_UIStatusBarDisplayItem)initWithIdentifier:(id)identifier item:(id)item;
- (_UIStatusBarDisplayable)displayable;
- (_UIStatusBarDisplayable)view;
- (_UIStatusBarItem)item;
- (_UIStatusBarRegion)region;
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

@implementation _UIStatusBarDisplayItem

- (_UIStatusBarDisplayItem)initWithIdentifier:(id)identifier item:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = _UIStatusBarDisplayItem;
  v10 = [(_UIStatusBarDisplayItem *)&v25 init];
  if (v10)
  {
    if (itemCopy)
    {
      if (identifierCopy)
      {
LABEL_4:
        objc_storeStrong(v10 + 5, identifier);
        objc_storeWeak(v10 + 6, itemCopy);
        __asm { FMOV            V0.2D, #1.0 }

        *(v10 + 72) = _Q0;
        v16 = MEMORY[0x1E695EFD0];
        v17 = *MEMORY[0x1E695EFD0];
        v18 = *(MEMORY[0x1E695EFD0] + 16);
        *(v10 + 264) = *MEMORY[0x1E695EFD0];
        *(v10 + 280) = v18;
        v19 = *(v16 + 32);
        *(v10 + 296) = v19;
        *(v10 + 312) = v17;
        *(v10 + 328) = v18;
        *(v10 + 344) = v19;
        v10[11] = 0;
        *(v10 + 17) = 0x3FF0000000000000;
        *(v10 + 376) = v18;
        *(v10 + 392) = v19;
        *(v10 + 360) = v17;
        *(v10 + 424) = v18;
        *(v10 + 440) = v19;
        *(v10 + 408) = v17;
        *(v10 + 14) = 0;
        indexSet = [MEMORY[0x1E696AD50] indexSet];
        v21 = *(v10 + 18);
        *(v10 + 18) = indexSet;

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"_UIStatusBarDisplayItem.m" lineNumber:42 description:@"item must not be nil"];

      if (identifierCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"_UIStatusBarDisplayItem.m" lineNumber:43 description:@"identifier must not be nil"];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (void)_detectedErrorInFloatingState
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v8[0]) = 138412290;
      *(v8 + 4) = self;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Item %@ left floating and in invalid state. Reseting status bar layout.", v8, 0xCu);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &_detectedErrorInFloatingState___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v8[0]) = 138412290;
      *(v8 + 4) = self;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Item %@ left floating and in invalid state. Reseting status bar layout.", v8, 0xCu);
    }
  }

  [(_UIStatusBarDisplayItem *)self setFloating:0];
  [(_UIStatusBarDisplayItem *)self setContainerView:0];
  [(_UIStatusBarDisplayItem *)self setAlpha:1.0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v4;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(_UIStatusBarDisplayItem *)self setTransform:v8];
  item = [(_UIStatusBarDisplayItem *)self item];
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

- (BOOL)clearPreviousTokenDisablementIfNecessary
{
  wasPreviouslyDisabledWithToken = self->_wasPreviouslyDisabledWithToken;
  self->_wasPreviouslyDisabledWithToken = 0;
  return wasPreviouslyDisabledWithToken;
}

- (BOOL)hoverHighlightsAsRegion
{
  view = [(_UIStatusBarDisplayItem *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGRect)absoluteHoverFrame
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_UIStatusBarDisplayable)view
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
      item = [(_UIStatusBarDisplayItem *)self item];
      if (!item)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItem.m" lineNumber:130 description:{@"_UIStatusBarItem was nil when attempting to load view for %@", self}];
      }

      identifier = [(_UIStatusBarDisplayItem *)self identifier];
      v10 = [item viewForIdentifier:identifier];
      if (!v10)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItem.m" lineNumber:133 description:{@"_UIStatusBarItem (%@) failed to return a view for identifier: %@", item, identifier}];
      }

      [v10 setUserInteractionEnabled:0];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = self->_view;
      self->_view = v10;

      [(_UIStatusBarDisplayItem *)self _updateComputedAlpha];
      [(_UIStatusBarDisplayItem *)self _updateComputedTransform];

      view = self->_view;
    }

    v3 = view;
  }

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
    view = [(_UIStatusBarDisplayItem *)self view];
  }

  return view;
}

- (_UIStatusBarDisplayable)displayable
{
  layoutItem = self->_layoutItem;
  if (layoutItem)
  {
    if ([(UILayoutItem *)layoutItem conformsToProtocol:&unk_1EFED32E0])
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
    view = [(_UIStatusBarDisplayItem *)self view];
  }

  return view;
}

- (NSString)description
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_identifier);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_enabled);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_item);
  v10[2] = v5;
  v6 = NSStringFromSelector(sel_view);
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [UIDescriptionBuilder descriptionForObject:self keys:v7];

  return v8;
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
      layoutItem = [(_UIStatusBarDisplayItem *)self layoutItem];
      [layoutItem _ui_removeFromParentLayoutItem];
    }

    if (obj)
    {
      isBackground = [(_UIStatusBarDisplayItem *)self isBackground];
      layoutItem2 = [(_UIStatusBarDisplayItem *)self layoutItem];
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
      [(_UIStatusBarDisplayable *)self->_view bounds];
      [(UIView *)v7 setFrame:?];
      [(_UIStatusBarDisplayable *)self->_view addSubview:v7];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, view);
    viewCopy = v7;
  }
}

- (BOOL)visible
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  v3 = WeakRetained != 0;

  return v3;
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
    [(_UIStatusBarDisplayable *)view alpha];
    if (vabdd_f64(dynamicHidingAlpha, v5) > 2.22044605e-16)
    {
      v6 = self->_view;

      [(_UIStatusBarDisplayable *)v6 setAlpha:dynamicHidingAlpha];
    }
  }
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_transform.c = *&transform->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setViewTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_viewTransform.c = *&transform->c;
  *&self->_viewTransform.tx = v4;
  *&self->_viewTransform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicHidingTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_dynamicHidingTransform.c = *&transform->c;
  *&self->_dynamicHidingTransform.tx = v4;
  *&self->_dynamicHidingTransform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicScaleTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_dynamicScaleTransform.c = *&transform->c;
  *&self->_dynamicScaleTransform.tx = v4;
  *&self->_dynamicScaleTransform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)_updateComputedTransform
{
  memset(&v12, 0, sizeof(v12));
  if (self->_dynamicallyHidden)
  {
    v3 = *&self->_dynamicHidingTransform.c;
    *&v12.a = *&self->_dynamicHidingTransform.a;
    *&v12.c = v3;
    *&v12.tx = *&self->_dynamicHidingTransform.tx;
  }

  else
  {
    p_dynamicScaleTransform = &self->_dynamicScaleTransform;
    v5 = *&self->_viewTransform.c;
    *&t1.a = *&self->_viewTransform.a;
    *&t1.c = v5;
    *&t1.tx = *&self->_viewTransform.tx;
    v6 = *&self->_transform.c;
    *&v9.a = *&self->_transform.a;
    *&v9.c = v6;
    *&v9.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&t2, &t1, &v9);
    v7 = *&self->_dynamicScaleTransform.c;
    *&t1.a = *&p_dynamicScaleTransform->a;
    *&t1.c = v7;
    *&t1.tx = *&self->_dynamicScaleTransform.tx;
    CGAffineTransformConcat(&v12, &t1, &t2);
  }

  view = self->_view;
  if (view)
  {
    [(_UIStatusBarDisplayable *)view transform];
    t1 = v12;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      t2 = v12;
      [(_UIStatusBarDisplayable *)self->_view setTransform:&t2];
    }
  }
}

- (CGRect)presentationAbsoluteFrame
{
  layoutItem = [(_UIStatusBarDisplayItem *)self layoutItem];
  if (layoutItem && (v4 = layoutItem, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    layoutItem2 = [(_UIStatusBarDisplayItem *)self layoutItem];
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
      layoutItem3 = [(_UIStatusBarDisplayItem *)self layoutItem];
      [layoutItem3 _ui_frame];
      v11 = v19;
      v13 = v20;
      v15 = v21;
      v17 = v22;
    }

    containerView = [(_UIStatusBarDisplayItem *)self containerView];
    region = [(_UIStatusBarDisplayItem *)self region];
    statusBar = [region statusBar];
    [containerView convertRect:statusBar toView:{v11, v13, v15, v17}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v27 = *MEMORY[0x1E695F050];
    v29 = *(MEMORY[0x1E695F050] + 8);
    v31 = *(MEMORY[0x1E695F050] + 16);
    v33 = *(MEMORY[0x1E695F050] + 24);
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

- (CGRect)absoluteFrame
{
  layoutItem = [(_UIStatusBarDisplayItem *)self layoutItem];
  if (layoutItem && (v4 = layoutItem, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    containerView = [(_UIStatusBarDisplayItem *)self containerView];
    layoutItem2 = [(_UIStatusBarDisplayItem *)self layoutItem];
    [layoutItem2 _ui_frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    region = [(_UIStatusBarDisplayItem *)self region];
    statusBar = [region statusBar];
    [containerView convertRect:statusBar toView:{v9, v11, v13, v15}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v19 = *MEMORY[0x1E695F050];
    v21 = *(MEMORY[0x1E695F050] + 8);
    v23 = *(MEMORY[0x1E695F050] + 16);
    v25 = *(MEMORY[0x1E695F050] + 24);
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

- (void)setAbsoluteFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(_UIStatusBarDisplayItem *)self floating]&& x == 0.0 && y == 0.0)
  {

    [(_UIStatusBarDisplayItem *)self _detectedErrorInFloatingState];
  }

  else
  {
    layoutItem = [(_UIStatusBarDisplayItem *)self layoutItem];
    if (layoutItem)
    {
      v9 = layoutItem;
      WeakRetained = objc_loadWeakRetained(&self->_containerView);

      if (WeakRetained)
      {
        containerView = [(_UIStatusBarDisplayItem *)self containerView];
        region = [(_UIStatusBarDisplayItem *)self region];
        statusBar = [region statusBar];
        [containerView convertRect:statusBar fromView:{x, y, width, height}];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        layoutItem2 = [(_UIStatusBarDisplayItem *)self layoutItem];
        [layoutItem2 set_ui_frame:{v15, v17, v19, v21}];
      }
    }
  }
}

- (int64_t)overriddenVerticalAlignment
{
  result = self->_overriddenVerticalAlignment;
  if (!result)
  {
    result = [(_UIStatusBarDisplayItem *)self displayable];
    if (result)
    {
      v4 = result;
      displayable = [(_UIStatusBarDisplayItem *)self displayable];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        displayable2 = [(_UIStatusBarDisplayItem *)self displayable];
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

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  displayable = [(_UIStatusBarDisplayItem *)self displayable];
  if (displayable && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [displayable wantsCrossfade] && +[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock"))
    {
      view = [(_UIStatusBarDisplayItem *)self view];
      +[UIView _currentAnimationDuration];
      v8 = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48___UIStatusBarDisplayItem_applyStyleAttributes___block_invoke;
      v9[3] = &unk_1E70F35B8;
      v10 = displayable;
      v11 = attributesCopy;
      [UIView transitionWithView:view duration:5242880 options:v9 animations:0 completion:v8];
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
    [(_UIStatusBarDisplayItem *)self setNeedsAddingToLayout:!floating];
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
      region = [(_UIStatusBarDisplayItem *)self region];
      layout = [region layout];

      displayItems = [layout displayItems];
      v8 = [displayItems mutableCopy];

      [v8 removeObject:self];
      [layout setDisplayItems:v8];
      layoutItem = [(_UIStatusBarDisplayItem *)self layoutItem];
      [layoutItem set_ui_usesManualLayout:1];

      objc_initWeak(&location, self);
      v10 = MEMORY[0x1E695DFF0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __39___UIStatusBarDisplayItem_setFloating___block_invoke;
      v15[3] = &unk_1E70F4130;
      objc_copyWeak(&v16, &location);
      v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:v15 block:5.0];
      v12 = self->_floatingTimer;
      self->_floatingTimer = v11;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
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

- (_UIStatusBarItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (CGAffineTransform)transform
{
  v3 = *&self[5].ty;
  *&retstr->a = *&self[5].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].b;
  return self;
}

- (CGAffineTransform)viewTransform
{
  v3 = *&self[6].ty;
  *&retstr->a = *&self[6].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].b;
  return self;
}

- (CGRect)absolutePresentationFrame
{
  x = self->_absolutePresentationFrame.origin.x;
  y = self->_absolutePresentationFrame.origin.y;
  width = self->_absolutePresentationFrame.size.width;
  height = self->_absolutePresentationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_UIStatusBarRegion)region
{
  WeakRetained = objc_loadWeakRetained(&self->_region);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (CGAffineTransform)dynamicHidingTransform
{
  v3 = *&self[7].ty;
  *&retstr->a = *&self[7].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].b;
  return self;
}

- (CGAffineTransform)dynamicScaleTransform
{
  v3 = *&self[8].ty;
  *&retstr->a = *&self[8].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].b;
  return self;
}

@end