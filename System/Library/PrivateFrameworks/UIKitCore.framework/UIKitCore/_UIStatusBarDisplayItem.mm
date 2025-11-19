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
- (_UIStatusBarDisplayItem)initWithIdentifier:(id)a3 item:(id)a4;
- (_UIStatusBarDisplayable)displayable;
- (_UIStatusBarDisplayable)view;
- (_UIStatusBarItem)item;
- (_UIStatusBarRegion)region;
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

@implementation _UIStatusBarDisplayItem

- (_UIStatusBarDisplayItem)initWithIdentifier:(id)a3 item:(id)a4
{
  v8 = a3;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = _UIStatusBarDisplayItem;
  v10 = [(_UIStatusBarDisplayItem *)&v25 init];
  if (v10)
  {
    if (v9)
    {
      if (v8)
      {
LABEL_4:
        objc_storeStrong(v10 + 5, a3);
        objc_storeWeak(v10 + 6, v9);
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
        v20 = [MEMORY[0x1E696AD50] indexSet];
        v21 = *(v10 + 18);
        *(v10 + 18) = v20;

        goto LABEL_5;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:v10 file:@"_UIStatusBarDisplayItem.m" lineNumber:42 description:@"item must not be nil"];

      if (v8)
      {
        goto LABEL_4;
      }
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:v10 file:@"_UIStatusBarDisplayItem.m" lineNumber:43 description:@"identifier must not be nil"];

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
  v5 = [(_UIStatusBarDisplayItem *)self item];
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

- (BOOL)clearPreviousTokenDisablementIfNecessary
{
  wasPreviouslyDisabledWithToken = self->_wasPreviouslyDisabledWithToken;
  self->_wasPreviouslyDisabledWithToken = 0;
  return wasPreviouslyDisabledWithToken;
}

- (BOOL)hoverHighlightsAsRegion
{
  v2 = [(_UIStatusBarDisplayItem *)self view];
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
      v8 = [(_UIStatusBarDisplayItem *)self item];
      if (!v8)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItem.m" lineNumber:130 description:{@"_UIStatusBarItem was nil when attempting to load view for %@", self}];
      }

      v9 = [(_UIStatusBarDisplayItem *)self identifier];
      v10 = [v8 viewForIdentifier:v9];
      if (!v10)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItem.m" lineNumber:133 description:{@"_UIStatusBarItem (%@) failed to return a view for identifier: %@", v8, v9}];
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
    v3 = layoutItem;
  }

  else
  {
    v3 = [(_UIStatusBarDisplayItem *)self view];
  }

  return v3;
}

- (_UIStatusBarDisplayable)displayable
{
  layoutItem = self->_layoutItem;
  if (layoutItem)
  {
    if ([(UILayoutItem *)layoutItem conformsToProtocol:&unk_1EFED32E0])
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
    v4 = [(_UIStatusBarDisplayItem *)self view];
  }

  return v4;
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
      v7 = [(_UIStatusBarDisplayItem *)self layoutItem];
      [v7 _ui_removeFromParentLayoutItem];
    }

    if (obj)
    {
      v8 = [(_UIStatusBarDisplayItem *)self isBackground];
      v9 = [(_UIStatusBarDisplayItem *)self layoutItem];
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
      [(_UIStatusBarDisplayable *)self->_view bounds];
      [(UIView *)v7 setFrame:?];
      [(_UIStatusBarDisplayable *)self->_view addSubview:v7];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, a3);
    v5 = v7;
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

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_viewTransform.c = *&a3->c;
  *&self->_viewTransform.tx = v4;
  *&self->_viewTransform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicHidingTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_dynamicHidingTransform.c = *&a3->c;
  *&self->_dynamicHidingTransform.tx = v4;
  *&self->_dynamicHidingTransform.a = v3;
  [(_UIStatusBarDisplayItem *)self _updateComputedTransform];
}

- (void)setDynamicScaleTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_dynamicScaleTransform.c = *&a3->c;
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
  v3 = [(_UIStatusBarDisplayItem *)self layoutItem];
  if (v3 && (v4 = v3, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    v6 = [(_UIStatusBarDisplayItem *)self layoutItem];
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
      v18 = [(_UIStatusBarDisplayItem *)self layoutItem];
      [v18 _ui_frame];
      v11 = v19;
      v13 = v20;
      v15 = v21;
      v17 = v22;
    }

    v23 = [(_UIStatusBarDisplayItem *)self containerView];
    v24 = [(_UIStatusBarDisplayItem *)self region];
    v25 = [v24 statusBar];
    [v23 convertRect:v25 toView:{v11, v13, v15, v17}];
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
  v3 = [(_UIStatusBarDisplayItem *)self layoutItem];
  if (v3 && (v4 = v3, WeakRetained = objc_loadWeakRetained(&self->_containerView), WeakRetained, v4, WeakRetained))
  {
    v6 = [(_UIStatusBarDisplayItem *)self containerView];
    v7 = [(_UIStatusBarDisplayItem *)self layoutItem];
    [v7 _ui_frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(_UIStatusBarDisplayItem *)self region];
    v17 = [v16 statusBar];
    [v6 convertRect:v17 toView:{v9, v11, v13, v15}];
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

- (void)setAbsoluteFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(_UIStatusBarDisplayItem *)self floating]&& x == 0.0 && y == 0.0)
  {

    [(_UIStatusBarDisplayItem *)self _detectedErrorInFloatingState];
  }

  else
  {
    v8 = [(_UIStatusBarDisplayItem *)self layoutItem];
    if (v8)
    {
      v9 = v8;
      WeakRetained = objc_loadWeakRetained(&self->_containerView);

      if (WeakRetained)
      {
        v11 = [(_UIStatusBarDisplayItem *)self containerView];
        v12 = [(_UIStatusBarDisplayItem *)self region];
        v13 = [v12 statusBar];
        [v11 convertRect:v13 fromView:{x, y, width, height}];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v22 = [(_UIStatusBarDisplayItem *)self layoutItem];
        [v22 set_ui_frame:{v15, v17, v19, v21}];
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
      v5 = [(_UIStatusBarDisplayItem *)self displayable];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [(_UIStatusBarDisplayItem *)self displayable];
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

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarDisplayItem *)self displayable];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 wantsCrossfade] && +[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock"))
    {
      v6 = [(_UIStatusBarDisplayItem *)self view];
      +[UIView _currentAnimationDuration];
      v8 = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48___UIStatusBarDisplayItem_applyStyleAttributes___block_invoke;
      v9[3] = &unk_1E70F35B8;
      v10 = v5;
      v11 = v4;
      [UIView transitionWithView:v6 duration:5242880 options:v9 animations:0 completion:v8];
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
    [(_UIStatusBarDisplayItem *)self setNeedsAddingToLayout:!a3];
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
      v5 = [(_UIStatusBarDisplayItem *)self region];
      v6 = [v5 layout];

      v7 = [v6 displayItems];
      v8 = [v7 mutableCopy];

      [v8 removeObject:self];
      [v6 setDisplayItems:v8];
      v9 = [(_UIStatusBarDisplayItem *)self layoutItem];
      [v9 set_ui_usesManualLayout:1];

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