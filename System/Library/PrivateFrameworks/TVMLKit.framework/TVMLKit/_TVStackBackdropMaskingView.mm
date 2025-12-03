@interface _TVStackBackdropMaskingView
- (_TVStackBackdropMaskingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackdropView:(id)view;
- (void)setGradientScale:(double)scale;
- (void)setGradientStop:(double)stop;
@end

@implementation _TVStackBackdropMaskingView

- (_TVStackBackdropMaskingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVStackBackdropMaskingView;
  v3 = [(_TVStackBackdropMaskingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_gradientStop = 1.0;
    [(_TVStackBackdropMaskingView *)v3 setClipsSubviews:1];
  }

  return v4;
}

- (void)setBackdropView:(id)view
{
  viewCopy = view;
  backdropView = self->_backdropView;
  if (backdropView != viewCopy)
  {
    v8 = viewCopy;
    layer = [(_TVStackBackdropView *)backdropView layer];
    [layer setMask:0];

    [(_TVStackBackdropView *)self->_backdropView removeFromSuperview];
    objc_storeStrong(&self->_backdropView, view);
    if (self->_backdropView)
    {
      [(_TVStackBackdropMaskingView *)self addSubview:?];
    }

    backdropView = [(_TVStackBackdropMaskingView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](backdropView, viewCopy);
}

- (void)setGradientScale:(double)scale
{
  if (self->_gradientScale != scale)
  {
    self->_gradientScale = scale;
    [(_TVStackBackdropMaskingView *)self setNeedsLayout];
  }
}

- (void)setGradientStop:(double)stop
{
  if (self->_gradientStop != stop)
  {
    self->_gradientStop = stop;
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
    layer = [(_TVStackBackdropView *)self->_backdropView layer];
    [layer setMask:0];

    gradientLayer = self->_gradientLayer;
    self->_gradientLayer = 0;
  }

  else
  {
    v10 = self->_gradientLayer;
    if (!v10)
    {
      layer2 = [MEMORY[0x277CD9EB0] layer];
      v12 = self->_gradientLayer;
      self->_gradientLayer = layer2;

      layer3 = [(_TVStackBackdropView *)self->_backdropView layer];
      [layer3 setMask:self->_gradientLayer];

      v10 = self->_gradientLayer;
    }

    [(CAGradientLayer *)v10 setFrame:0.0, v8 - v6, v4, v6];
    v14 = self->_gradientLayer;
    clearColor = [MEMORY[0x277D75348] clearColor];
    v34[0] = [clearColor CGColor];
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