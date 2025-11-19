@interface _UIParallaxDimmingView
- (_UIParallaxDimmingView)initWithFrame:(CGRect)a3 overrideDimmingColor:(id)a4;
- (double)presentationDimmingAmount;
- (id)defaultBorderColor;
- (id)initViewWrappingView:(id)a3 withLeftBorder:(double)a4 shouldReverseLayoutDirection:(BOOL)a5;
- (void)_updateLeftEdgeFade:(BOOL)a3;
- (void)crossFade;
- (void)didMoveToWindow;
- (void)setBackgroundDimmingAmount:(double)a3;
@end

@implementation _UIParallaxDimmingView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIParallaxDimmingView;
  [(UIView *)&v7 didMoveToWindow];
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIParallaxDimmingView *)self addingSubview];

    if (v5)
    {
      v6 = [(_UIParallaxDimmingView *)self addingSubview];
      [(UIView *)self addSubview:v6];

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

- (_UIParallaxDimmingView)initWithFrame:(CGRect)a3 overrideDimmingColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _UIParallaxDimmingView;
  v10 = [(UIView *)&v16 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    if (v9)
    {
      [(_UIParallaxDimmingView *)v10 setDimmingColor:v9];
    }

    else
    {
      v12 = +[UIColor blackColor];
      v13 = [v12 colorWithAlphaComponent:0.1];
      [(_UIParallaxDimmingView *)v11 setDimmingColor:v13];
    }

    v14 = [(_UIParallaxDimmingView *)v11 dimmingColor];
    [(UIView *)v11 setBackgroundColor:v14];

    [(UIView *)v11 setOpaque:0];
    v11->_backgroundDimmingAmount = 1.0;
  }

  return v11;
}

- (id)defaultBorderColor
{
  v5 = 0.0;
  v6 = 0;
  v2 = [(_UIParallaxDimmingView *)self dimmingColor];
  [v2 getWhite:&v6 alpha:&v5];
  v3 = [v2 colorWithAlphaComponent:v5 * 1.05];

  return v3;
}

- (id)initViewWrappingView:(id)a3 withLeftBorder:(double)a4 shouldReverseLayoutDirection:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  [v7 frame];
  v8 = [(_UIParallaxDimmingView *)self initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setBackgroundColor:0];
    [(UIView *)v9 bounds];
    [v7 setFrame:?];
    [(_UIParallaxDimmingView *)v9 setAddingSubview:v7];
    v10 = [[_UIVerticalEdgeShadowView alloc] initWithWidth:2 edge:9.0];
    leftEdgeFade = v9->leftEdgeFade;
    v9->leftEdgeFade = &v10->super.super;

    [(_UIParallaxDimmingView *)v9 _updateLeftEdgeFade:v5];
    [(UIView *)v9 addSubview:v9->leftEdgeFade];
  }

  return v9;
}

- (void)_updateLeftEdgeFade:(BOOL)a3
{
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->leftEdgeFade frame];
  v15 = v14;
  if (a3)
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
  v26 = [(UIView *)self->leftEdgeFade maskView];
  [v26 setFrame:{v19, v21, v23, v25}];

  [(UIView *)self setSemanticContentAttribute:v16];
  leftEdgeFade = self->leftEdgeFade;

  [(UIImageView *)leftEdgeFade setSemanticContentAttribute:v16];
}

- (void)setBackgroundDimmingAmount:(double)a3
{
  if (self->_backgroundDimmingAmount != a3)
  {
    self->_backgroundDimmingAmount = a3;
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

  v2 = [(UIView *)self layer];
  v3 = [v2 presentationLayer];
  [v3 opacity];
  v5 = v4;

  return v5;
}

@end