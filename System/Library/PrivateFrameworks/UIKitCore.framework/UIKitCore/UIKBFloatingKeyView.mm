@interface UIKBFloatingKeyView
- (UIKBFloatingKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (UIKBFloatingKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key renderTraits:(id)traits;
- (void)_updateLayouts;
- (void)layoutSubviews;
- (void)prepareForDisplay;
@end

@implementation UIKBFloatingKeyView

- (UIKBFloatingKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  v11.receiver = self;
  v11.super_class = UIKBFloatingKeyView;
  v5 = [(UIKBContainerKeyView *)&v11 initWithFrame:keyplane keyplane:key key:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentsKeyView = [(UIKBContainerKeyView *)v5 contentsKeyView];
    [(UIView *)v5 addSubview:contentsKeyView];
  }

  return v5;
}

- (UIKBFloatingKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key renderTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  traitsCopy = traits;
  v29.receiver = self;
  v29.super_class = UIKBFloatingKeyView;
  height = [(UIKBContainerKeyView *)&v29 initWithFrame:keyplane keyplane:key key:x, y, width, height];
  if (height)
  {
    v15 = [_UIKBFloatingContentView alloc];
    v16 = [(_UIFloatingContentView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    floatingContentView = height->_floatingContentView;
    height->_floatingContentView = v16;

    v18 = height->_floatingContentView;
    [traitsCopy floatingContentViewCornerRadius];
    [(_UIFloatingContentView *)v18 setCornerRadius:?];
    [(_UIFloatingContentView *)height->_floatingContentView setContinuousCornerEnabled:0];
    [(_UIFloatingContentView *)height->_floatingContentView setShadowExpansion:-4.0, -4.0];
    [traitsCopy floatingContentViewFocusedIncreaseSize];
    v20 = height->_floatingContentView;
    if (v21 == *MEMORY[0x1E695F060] && v19 == *(MEMORY[0x1E695F060] + 8))
    {
      [traitsCopy floatingContentViewControlFocusedIncreaseSize];
      [(_UIFloatingContentView *)v20 setFocusedSizeIncrease:?];
    }

    else
    {
      [traitsCopy floatingContentViewFocusedIncreaseSize];
      [(_UIFloatingContentView *)v20 setAsymmetricFocusedSizeIncrease:?];
    }

    [(_UIFloatingContentView *)height->_floatingContentView setContentMotionRotation:*MEMORY[0x1E695EFF8] translation:*(MEMORY[0x1E695EFF8] + 8), 6.0, 3.0];
    [(_UIFloatingContentView *)height->_floatingContentView set_disableOutsetShadowPath:1];
    v23 = height->_floatingContentView;
    [traitsCopy floatingContentViewShadowRadius];
    [(_UIFloatingContentView *)v23 setShadowRadius:?];
    v24 = height->_floatingContentView;
    [traitsCopy floatingContentViewShadowVerticalOffset];
    [(_UIFloatingContentView *)v24 setShadowVerticalOffset:?];
    v25 = height->_floatingContentView;
    [traitsCopy floatingContentViewShadowOpacity];
    [(_UIFloatingContentView *)v25 setShadowOpacity:?];
    [(UIView *)height insertSubview:height->_floatingContentView atIndex:0];
    if (_UISolariumMetricsEnabled())
    {
      contentView = [(_UIFloatingContentView *)height->_floatingContentView contentView];
      contentsKeyView = [(UIKBContainerKeyView *)height contentsKeyView];
      [contentView addSubview:contentsKeyView];
    }

    else
    {
      contentView = [(UIKBContainerKeyView *)height contentsKeyView];
      [(UIView *)height addSubview:contentView];
    }
  }

  return height;
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
  layer = [(UIView *)self layer];
  if ([layer needsDisplay])
  {
  }

  else
  {
    hasRendered = [(UIKBContainerKeyView *)self hasRendered];

    if (hasRendered)
    {
      return;
    }
  }

  [(UIView *)self recursivelyForceDisplayIfNeeded];
}

@end