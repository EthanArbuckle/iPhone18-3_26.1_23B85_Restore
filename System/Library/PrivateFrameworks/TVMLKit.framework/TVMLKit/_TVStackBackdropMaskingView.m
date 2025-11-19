@interface _TVStackBackdropMaskingView
- (_TVStackBackdropMaskingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackdropView:(id)a3;
- (void)setGradientScale:(double)a3;
- (void)setGradientStop:(double)a3;
@end

@implementation _TVStackBackdropMaskingView

- (_TVStackBackdropMaskingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVStackBackdropMaskingView;
  v3 = [(_TVStackBackdropMaskingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_gradientStop = 1.0;
    [(_TVStackBackdropMaskingView *)v3 setClipsSubviews:1];
  }

  return v4;
}

- (void)setBackdropView:(id)a3
{
  v5 = a3;
  backdropView = self->_backdropView;
  if (backdropView != v5)
  {
    v8 = v5;
    v7 = [(_TVStackBackdropView *)backdropView layer];
    [v7 setMask:0];

    [(_TVStackBackdropView *)self->_backdropView removeFromSuperview];
    objc_storeStrong(&self->_backdropView, a3);
    if (self->_backdropView)
    {
      [(_TVStackBackdropMaskingView *)self addSubview:?];
    }

    backdropView = [(_TVStackBackdropMaskingView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](backdropView, v5);
}

- (void)setGradientScale:(double)a3
{
  if (self->_gradientScale != a3)
  {
    self->_gradientScale = a3;
    [(_TVStackBackdropMaskingView *)self setNeedsLayout];
  }
}

- (void)setGradientStop:(double)a3
{
  if (self->_gradientStop != a3)
  {
    self->_gradientStop = a3;
    [(_TVStackBackdropMaskingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v34[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = _TVStackBackdropMaskingView;
  [(_TVStackBackdropMaskingView *)&v32 layoutSubviews];
  [(_TVStackBackdropMaskingView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_TVStackBackdropView *)self->_backdropView bounds];
  v8 = v7;
  [(_TVStackBackdropView *)self->_backdropView setFrame:0.0, v6 - v7, v4];
  [(_TVStackBackdropMaskingView *)self gradientScale];
  if (v9 <= 0.0)
  {
    v31 = [(_TVStackBackdropView *)self->_backdropView layer];
    [v31 setMask:0];

    gradientLayer = self->_gradientLayer;
    self->_gradientLayer = 0;
  }

  else
  {
    v10 = self->_gradientLayer;
    if (!v10)
    {
      v11 = [MEMORY[0x277CD9EB0] layer];
      v12 = self->_gradientLayer;
      self->_gradientLayer = v11;

      v13 = [(_TVStackBackdropView *)self->_backdropView layer];
      [v13 setMask:self->_gradientLayer];

      v10 = self->_gradientLayer;
    }

    [(CAGradientLayer *)v10 setFrame:0.0, v8 - v6, v4, v6];
    v14 = self->_gradientLayer;
    v15 = [MEMORY[0x277D75348] clearColor];
    v34[0] = [v15 CGColor];
    v16 = MEMORY[0x277D75348];
    [(_TVStackBackdropMaskingView *)self gradientStop];
    v18 = [v16 colorWithRed:1.0 green:1.0 blue:1.0 alpha:v17 * 0.3];
    v34[1] = [v18 CGColor];
    v19 = MEMORY[0x277D75348];
    [(_TVStackBackdropMaskingView *)self gradientStop];
    v21 = [v19 colorWithRed:1.0 green:1.0 blue:1.0 alpha:v20];
    v34[2] = [v21 CGColor];
    v22 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v34[3] = [v22 CGColor];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    [(CAGradientLayer *)v14 setColors:v23];

    v24 = self->_gradientLayer;
    v33[0] = &unk_287E48838;
    v25 = MEMORY[0x277CCABB0];
    [(_TVStackBackdropMaskingView *)self gradientScale];
    gradientLayer = [v25 numberWithDouble:v26 * 0.5];
    v33[1] = gradientLayer;
    v28 = MEMORY[0x277CCABB0];
    [(_TVStackBackdropMaskingView *)self gradientScale];
    v29 = [v28 numberWithDouble:?];
    v33[2] = v29;
    v33[3] = &unk_287E48848;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [(CAGradientLayer *)v24 setLocations:v30];
  }
}

@end