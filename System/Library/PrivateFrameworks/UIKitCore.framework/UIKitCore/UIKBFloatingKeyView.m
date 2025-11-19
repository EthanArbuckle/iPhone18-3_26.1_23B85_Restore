@interface UIKBFloatingKeyView
- (UIKBFloatingKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (UIKBFloatingKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 renderTraits:(id)a6;
- (void)_updateLayouts;
- (void)layoutSubviews;
- (void)prepareForDisplay;
@end

@implementation UIKBFloatingKeyView

- (UIKBFloatingKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  v11.receiver = self;
  v11.super_class = UIKBFloatingKeyView;
  v5 = [(UIKBContainerKeyView *)&v11 initWithFrame:a4 keyplane:a5 key:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [_UIKBFloatingContentView alloc];
    v7 = [(_UIFloatingContentView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    floatingContentView = v5->_floatingContentView;
    v5->_floatingContentView = v7;

    [(_UIFloatingContentView *)v5->_floatingContentView setCornerRadius:6.0];
    [(_UIFloatingContentView *)v5->_floatingContentView setAsymmetricFocusedSizeIncrease:10.0, 10.0];
    [(_UIFloatingContentView *)v5->_floatingContentView setContentMotionRotation:*MEMORY[0x1E695EFF8] translation:*(MEMORY[0x1E695EFF8] + 8), 6.0, 3.0];
    [(_UIFloatingContentView *)v5->_floatingContentView set_disableOutsetShadowPath:1];
    [(_UIFloatingContentView *)v5->_floatingContentView setShadowRadius:12.0];
    [(_UIFloatingContentView *)v5->_floatingContentView setShadowVerticalOffset:25.0];
    [(_UIFloatingContentView *)v5->_floatingContentView setShadowOpacity:0.1];
    [(UIView *)v5 insertSubview:v5->_floatingContentView atIndex:0];
    v9 = [(UIKBContainerKeyView *)v5 contentsKeyView];
    [(UIView *)v5 addSubview:v9];
  }

  return v5;
}

- (UIKBFloatingKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 renderTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v29.receiver = self;
  v29.super_class = UIKBFloatingKeyView;
  v14 = [(UIKBContainerKeyView *)&v29 initWithFrame:a4 keyplane:a5 key:x, y, width, height];
  if (v14)
  {
    v15 = [_UIKBFloatingContentView alloc];
    v16 = [(_UIFloatingContentView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    floatingContentView = v14->_floatingContentView;
    v14->_floatingContentView = v16;

    v18 = v14->_floatingContentView;
    [v13 floatingContentViewCornerRadius];
    [(_UIFloatingContentView *)v18 setCornerRadius:?];
    [(_UIFloatingContentView *)v14->_floatingContentView setContinuousCornerEnabled:0];
    [(_UIFloatingContentView *)v14->_floatingContentView setShadowExpansion:-4.0, -4.0];
    [v13 floatingContentViewFocusedIncreaseSize];
    v20 = v14->_floatingContentView;
    if (v21 == *MEMORY[0x1E695F060] && v19 == *(MEMORY[0x1E695F060] + 8))
    {
      [v13 floatingContentViewControlFocusedIncreaseSize];
      [(_UIFloatingContentView *)v20 setFocusedSizeIncrease:?];
    }

    else
    {
      [v13 floatingContentViewFocusedIncreaseSize];
      [(_UIFloatingContentView *)v20 setAsymmetricFocusedSizeIncrease:?];
    }

    [(_UIFloatingContentView *)v14->_floatingContentView setContentMotionRotation:*MEMORY[0x1E695EFF8] translation:*(MEMORY[0x1E695EFF8] + 8), 6.0, 3.0];
    [(_UIFloatingContentView *)v14->_floatingContentView set_disableOutsetShadowPath:1];
    v23 = v14->_floatingContentView;
    [v13 floatingContentViewShadowRadius];
    [(_UIFloatingContentView *)v23 setShadowRadius:?];
    v24 = v14->_floatingContentView;
    [v13 floatingContentViewShadowVerticalOffset];
    [(_UIFloatingContentView *)v24 setShadowVerticalOffset:?];
    v25 = v14->_floatingContentView;
    [v13 floatingContentViewShadowOpacity];
    [(_UIFloatingContentView *)v25 setShadowOpacity:?];
    [(UIView *)v14 insertSubview:v14->_floatingContentView atIndex:0];
    if (_UISolariumMetricsEnabled())
    {
      v26 = [(_UIFloatingContentView *)v14->_floatingContentView contentView];
      v27 = [(UIKBContainerKeyView *)v14 contentsKeyView];
      [v26 addSubview:v27];
    }

    else
    {
      v26 = [(UIKBContainerKeyView *)v14 contentsKeyView];
      [(UIView *)v14 addSubview:v26];
    }
  }

  return v14;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKBFloatingKeyView;
  [(UIKBKeyView *)&v3 layoutSubviews];
  [(UIKBFloatingKeyView *)self _updateLayouts];
}

- (void)_updateLayouts
{
  [(UIView *)self bounds];
  floatingContentView = self->_floatingContentView;

  [(_UIFloatingContentView *)floatingContentView setFrame:?];
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = UIKBFloatingKeyView;
  [(UIKBContainerKeyView *)&v5 prepareForDisplay];
  v3 = [(UIView *)self layer];
  if ([v3 needsDisplay])
  {
  }

  else
  {
    v4 = [(UIKBContainerKeyView *)self hasRendered];

    if (v4)
    {
      return;
    }
  }

  [(UIView *)self recursivelyForceDisplayIfNeeded];
}

@end