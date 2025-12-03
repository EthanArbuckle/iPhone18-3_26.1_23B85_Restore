@interface _UIParallaxDimmingView
- (_UIParallaxDimmingView)initWithFrame:(CGRect)frame overrideDimmingColor:(id)color;
- (double)presentationDimmingAmount;
- (id)defaultBorderColor;
- (id)initViewWrappingView:(id)view withLeftBorder:(double)border shouldReverseLayoutDirection:(BOOL)direction;
- (void)_updateLeftEdgeFade:(BOOL)fade;
- (void)crossFade;
- (void)didMoveToWindow;
- (void)setBackgroundDimmingAmount:(double)amount;
@end

@implementation _UIParallaxDimmingView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIParallaxDimmingView;
  [(UIView *)&v7 didMoveToWindow];
  window = [(UIView *)self window];
  if (window)
  {
    v4 = window;
    addingSubview = [(_UIParallaxDimmingView *)self addingSubview];

    if (addingSubview)
    {
      addingSubview2 = [(_UIParallaxDimmingView *)self addingSubview];
      [(UIView *)self addSubview:addingSubview2];

      [(_UIParallaxDimmingView *)self setAddingSubview:0];
    }
  }
}

- (void)crossFade
{
  [(_UIParallaxDimmingView *)self backgroundDimmingAmount];
  v4 = v3 == 1.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = 1.0;
  }

  [(_UIParallaxDimmingView *)self setBackgroundDimmingAmount:v5];
}

- (_UIParallaxDimmingView)initWithFrame:(CGRect)frame overrideDimmingColor:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = _UIParallaxDimmingView;
  height = [(UIView *)&v16 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    if (colorCopy)
    {
      [(_UIParallaxDimmingView *)height setDimmingColor:colorCopy];
    }

    else
    {
      v12 = +[UIColor blackColor];
      v13 = [v12 colorWithAlphaComponent:0.1];
      [(_UIParallaxDimmingView *)v11 setDimmingColor:v13];
    }

    dimmingColor = [(_UIParallaxDimmingView *)v11 dimmingColor];
    [(UIView *)v11 setBackgroundColor:dimmingColor];

    [(UIView *)v11 setOpaque:0];
    v11->_backgroundDimmingAmount = 1.0;
  }

  return v11;
}

- (id)defaultBorderColor
{
  v5 = 0.0;
  v6 = 0;
  dimmingColor = [(_UIParallaxDimmingView *)self dimmingColor];
  [dimmingColor getWhite:&v6 alpha:&v5];
  v3 = [dimmingColor colorWithAlphaComponent:v5 * 1.05];

  return v3;
}

- (id)initViewWrappingView:(id)view withLeftBorder:(double)border shouldReverseLayoutDirection:(BOOL)direction
{
  directionCopy = direction;
  viewCopy = view;
  [viewCopy frame];
  v8 = [(_UIParallaxDimmingView *)self initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setBackgroundColor:0];
    [(UIView *)v9 bounds];
    [viewCopy setFrame:?];
    [(_UIParallaxDimmingView *)v9 setAddingSubview:viewCopy];
    v10 = [[_UIVerticalEdgeShadowView alloc] initWithWidth:2 edge:9.0];
    leftEdgeFade = v9->leftEdgeFade;
    v9->leftEdgeFade = &v10->super.super;

    [(_UIParallaxDimmingView *)v9 _updateLeftEdgeFade:directionCopy];
    [(UIView *)v9 addSubview:v9->leftEdgeFade];
  }

  return v9;
}

- (void)_updateLeftEdgeFade:(BOOL)fade
{
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->leftEdgeFade frame];
  v15 = v14;
  if (fade)
  {
    v16 = 4;
    v8 = v13;
  }

  else
  {
    [(UIView *)self->leftEdgeFade frame];
    v10 = v6 - v17;
    v16 = 3;
  }

  [(UIImageView *)self->leftEdgeFade setFrame:v10, v8, v15, v12];
  [(UIView *)self->leftEdgeFade bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  maskView = [(UIView *)self->leftEdgeFade maskView];
  [maskView setFrame:{v19, v21, v23, v25}];

  [(UIView *)self setSemanticContentAttribute:v16];
  leftEdgeFade = self->leftEdgeFade;

  [(UIImageView *)leftEdgeFade setSemanticContentAttribute:v16];
}

- (void)setBackgroundDimmingAmount:(double)amount
{
  if (self->_backgroundDimmingAmount != amount)
  {
    self->_backgroundDimmingAmount = amount;
    if (self->leftEdgeFade)
    {
      self = self->leftEdgeFade;
    }

    [(UIView *)self setAlpha:?];
  }
}

- (double)presentationDimmingAmount
{
  if (self->leftEdgeFade)
  {
    self = self->leftEdgeFade;
  }

  layer = [(UIView *)self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer opacity];
  v5 = v4;

  return v5;
}

@end