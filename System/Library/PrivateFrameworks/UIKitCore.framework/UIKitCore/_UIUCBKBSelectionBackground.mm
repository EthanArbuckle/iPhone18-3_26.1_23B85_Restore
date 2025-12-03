@interface _UIUCBKBSelectionBackground
- (CGSize)intrinsicContentSize;
- (_UIUCBKBSelectionBackground)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundProvidingView;
- (void)layoutSubviews;
- (void)setShowButtonShape:(BOOL)shape;
@end

@implementation _UIUCBKBSelectionBackground

- (_UIUCBKBSelectionBackground)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIUCBKBSelectionBackground;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIUCBKBSelectionBackground *)v3 _updateBackgroundProvidingView];
  }

  return v4;
}

- (void)setShowButtonShape:(BOOL)shape
{
  if (self->_showButtonShape != shape)
  {
    self->_showButtonShape = shape;
    [(_UIUCBKBSelectionBackground *)self _updateBackgroundProvidingView];
  }
}

- (void)_updateBackgroundProvidingView
{
  showButtonShape = self->_showButtonShape;
  backgroundProvidingView = self->_backgroundProvidingView;
  if (showButtonShape)
  {
    if (!backgroundProvidingView)
    {
      v6 = [UIView alloc];
      v7 = [(UIView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v8 = self->_backgroundProvidingView;
      self->_backgroundProvidingView = v7;

      [(UIView *)self->_backgroundProvidingView _setContinuousCornerRadius:4.0];
      layer = [(UIView *)self layer];
      [layer setAllowsGroupBlending:0];

      v10 = self->_backgroundProvidingView;

      [(UIView *)self addSubview:v10];
    }
  }

  else
  {
    [(UIView *)backgroundProvidingView removeFromSuperview];
    v5 = self->_backgroundProvidingView;
    self->_backgroundProvidingView = 0;
  }
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  [(UIView *)self->_backgroundProvidingView setFrame:?];
  v3 = +[UIKeyboardImpl activeInstance];
  _inheritedRenderConfig = [v3 _inheritedRenderConfig];
  lightKeyboard = [_inheritedRenderConfig lightKeyboard];

  if (lightKeyboard)
  {
    v6 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorGray_Percent55")];
    [(UIView *)self->_backgroundProvidingView setBackgroundColor:v6];

    layer2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979850]];
    layer = [(UIView *)self->_backgroundProvidingView layer];
    [layer setCompositingFilter:layer2];
  }

  else
  {
    v8 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorKeyGrayKeyDarkBackground")];
    [(UIView *)self->_backgroundProvidingView setBackgroundColor:v8];

    layer2 = [(UIView *)self->_backgroundProvidingView layer];
    [layer2 setCompositingFilter:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 36.0;
  v3 = -1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end