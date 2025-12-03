@interface PXGFocusEffectView
- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer;
- (CGRect)clippingRect;
- (PXGFocusEffectView)initWithFrame:(CGRect)frame;
- (void)_handleSelectTap:(id)tap;
- (void)_updatePressedAppearance;
- (void)addHostedLayer:(id)layer;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation PXGFocusEffectView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  layer = [(PXGFocusEffectView *)self layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)layer
{
  hostedContentView = self->_hostedContentView;
  layerCopy = layer;
  layer = [(UIView *)hostedContentView layer];
  [layer addSublayer:layerCopy];
}

- (void)_updatePressedAppearance
{
  if ([(PXGFocusEffectView *)self isFocused])
  {
    if (self->_activeSelectPressesCount <= 0)
    {
      v3 = 8;
    }

    else
    {
      v3 = 9;
    }

    floatingContentView = self->_floatingContentView;

    [(_UIFloatingContentView *)floatingContentView setControlState:v3 animated:1];
  }
}

- (void)_handleSelectTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    superview = [(PXGFocusEffectView *)self superview];
    if (superview)
    {
      v6 = superview;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview2 = [v6 superview];

        v6 = superview2;
        if (!superview2)
        {
          goto LABEL_10;
        }
      }

      v8 = v6;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGFocusEffectView.m" lineNumber:209 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"ancestor", v11, px_descriptionForAssertionMessage}];
      }

      [tapCopy locationInView:v8];
      [v8 handlePrimaryInteractionAtPoint:?];
    }
  }

LABEL_10:
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = PXGFocusEffectView;
  [(PXGFocusableView *)&v10 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  if ([(PXGFocusEffectView *)self isFocused])
  {
    superview = [(PXGFocusEffectView *)self superview];
    [superview bringSubviewToFront:self];

    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  [(_UIFloatingContentView *)self->_floatingContentView setControlState:v8 withAnimationCoordinator:coordinatorCopy];
  [(PXGFocusEffectView *)self setNeedsLayout];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PXGFocusEffectView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v9[3] = &unk_1E774C648;
  v9[4] = self;
  [coordinatorCopy addCoordinatedAnimations:v9 completion:0];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  cancelledCopy = cancelled;
  v17.receiver = self;
  v17.super_class = PXGFocusEffectView;
  [(PXGFocusEffectView *)&v17 pressesCancelled:cancelledCopy withEvent:event];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = cancelledCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) type] == 4)
        {
          --self->_activeSelectPressesCount;
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);

    if (v10)
    {
      [(PXGFocusEffectView *)self _updatePressedAppearance];
    }
  }

  else
  {
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v17.receiver = self;
  v17.super_class = PXGFocusEffectView;
  [(PXGFocusEffectView *)&v17 pressesEnded:endedCopy withEvent:event];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = endedCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) type] == 4)
        {
          --self->_activeSelectPressesCount;
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);

    if (v10)
    {
      [(PXGFocusEffectView *)self _updatePressedAppearance];
    }
  }

  else
  {
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  v17.receiver = self;
  v17.super_class = PXGFocusEffectView;
  [(PXGFocusEffectView *)&v17 pressesBegan:beganCopy withEvent:event];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = beganCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) type] == 4)
        {
          ++self->_activeSelectPressesCount;
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);

    if (v10)
    {
      [(PXGFocusEffectView *)self _updatePressedAppearance];
    }
  }

  else
  {
  }
}

- (void)layoutSubviews
{
  [(PXGFocusEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXGFocusEffectView *)self setClipsToBounds:0];
  userData = [(PXGFocusableView *)self userData];
  [(_UIFloatingContentView *)self->_floatingContentView setFrame:v4, v6, v8, v10];
  [userData cornerRadius];
  [(_UIFloatingContentView *)self->_floatingContentView setCornerRadius:?];
  floatingContentView = self->_floatingContentView;
  [userData contentMotionRotation];
  v13 = v12;
  v15 = v14;
  [userData contentMotionTranslation];
  [(_UIFloatingContentView *)floatingContentView setContentMotionRotation:v13 translation:v15, v16, v17];
  [userData focusedSizeIncrease];
  [(_UIFloatingContentView *)self->_floatingContentView setFocusedSizeIncrease:?];
  [userData shadowVerticalOffset];
  [(_UIFloatingContentView *)self->_floatingContentView setShadowVerticalOffset:?];
  v18 = self->_floatingContentView;
  [userData shadowOpacity];
  [(_UIFloatingContentView *)v18 setShadowOpacity:1 forUserInterfaceStyle:?];
  v19 = self->_floatingContentView;
  [userData shadowOpacity];
  [(_UIFloatingContentView *)v19 setShadowOpacity:2 forUserInterfaceStyle:?];
  [(_UIFloatingContentView *)self->_floatingContentView layoutIfNeeded];
  contentView = [(_UIFloatingContentView *)self->_floatingContentView contentView];
  [contentView bounds];
  [(UIView *)self->_hostedContentView setFrame:?];
}

- (PXGFocusEffectView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = PXGFocusEffectView;
  v3 = [(PXGFocusEffectView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXGFocusEffectView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v7, v9, v11}];
    hostedContentView = v4->_hostedContentView;
    v4->_hostedContentView = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DD4D0]) initWithFrame:{v6, v8, v10, v12}];
    floatingContentView = v4->_floatingContentView;
    v4->_floatingContentView = v15;

    [(_UIFloatingContentView *)v4->_floatingContentView setHighlightStyle:1];
    [(PXGFocusEffectView *)v4 addSubview:v4->_floatingContentView];
    contentView = [(_UIFloatingContentView *)v4->_floatingContentView contentView];
    [contentView addSubview:v4->_hostedContentView];

    v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__handleSelectTap_];
    [v18 setAllowedPressTypes:&unk_1F19112F0];
    [v18 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [v18 setCancelsTouchesInView:0];
    [(PXGFocusEffectView *)v4 addGestureRecognizer:v18];
  }

  return v4;
}

@end