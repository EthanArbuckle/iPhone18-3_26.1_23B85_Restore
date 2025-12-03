@interface SURoundedCornersButton
- (SURoundedCornersButton)initWithFrame:(CGRect)frame;
- (id)_highlightedBackgroundView;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setFrame:(CGRect)frame;
@end

@implementation SURoundedCornersButton

- (SURoundedCornersButton)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SURoundedCornersButton;
  v3 = [(SURoundedCornersButton *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    -[SURoundedCornersButton setBackgroundColor:](v3, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    [(SURoundedCornersButton *)v3 setRequiresDisplayOnTracking:1];
    [(SURoundedCornersButton *)v3 setTitleEdgeInsets:0.0, 15.0, 0.0, 15.0];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SURoundedCornersButton;
  [(SUSubtitledButton *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(SURoundedCornersButton *)self bounds];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (!self->_bezierPath)
  {
    v20 = CGRectInset(*&v8, 0.5, 0.5);
    self->_bezierPath = [MEMORY[0x1E69DC728] roundedRectBezierPath:-1 withRoundedCorners:v20.origin.x withCornerRadius:{v20.origin.y, v20.size.width, v20.size.height + -1.0, 10.0}];
  }

  if (!self->_shadowPath)
  {
    v21.origin.x = v12;
    v21.origin.y = v13;
    v21.size.width = v14;
    v21.size.height = v15;
    CGRectInset(v21, 0.5, 0.5);
    v16 = MEMORY[0x1E69DC728];
    v22.origin.x = v12;
    v22.origin.y = v13;
    v22.size.width = v14;
    v22.size.height = v15;
    v23 = CGRectInset(v22, 0.5, 0.5);
    self->_shadowPath = [v16 roundedRectBezierPath:-1 withRoundedCorners:v23.origin.x withCornerRadius:{v23.origin.y, v23.size.width, v23.size.height, 10.0}];
  }

  if (([(SURoundedCornersButton *)self isHighlighted]& 1) != 0 || ([(SURoundedCornersButton *)self isSelected]& 1) != 0)
  {
    _highlightedBackgroundView = [(SURoundedCornersButton *)self _highlightedBackgroundView];
    [_highlightedBackgroundView setFrame:{v12, v13, v14, v15}];
    [(UIBezierPath *)self->_bezierPath clip];
    [_highlightedBackgroundView drawRect:{x, y, width, height}];
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E69DC888] "whiteColor")];
    [(UIBezierPath *)self->_bezierPath fill];
  }

  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:0.949999988 alpha:{1.0), "set"}];
  [(UIBezierPath *)self->_shadowPath stroke];
  [objc_msgSend(MEMORY[0x1E69DC888] "tableSeparatorDarkColor")];
  bezierPath = self->_bezierPath;

  [(UIBezierPath *)bezierPath stroke];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SURoundedCornersButton *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = SURoundedCornersButton;
  [(SURoundedCornersButton *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {

    self->_bezierPath = 0;
    self->_shadowPath = 0;
  }
}

- (id)_highlightedBackgroundView
{
  result = self->_highlightedBackgroundView;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    [v4 setHighlighted:1];
    self->_highlightedBackgroundView = [v4 selectedBackgroundView];

    return self->_highlightedBackgroundView;
  }

  return result;
}

@end