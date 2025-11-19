@interface PXGBlurEffectView
- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4;
- (CGRect)clippingRect;
- (void)addHostedLayer:(id)a3;
- (void)addHostedView:(id)a3;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
@end

@implementation PXGBlurEffectView

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

- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGBlurEffectView *)self contentView];
  v9 = [v8 layer];
  [v9 convertPoint:v7 fromLayer:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)addHostedLayer:(id)a3
{
  v4 = a3;
  v6 = [(PXGBlurEffectView *)self contentView];
  v5 = [v6 layer];
  [v5 addSublayer:v4];
}

- (void)addHostedView:(id)a3
{
  v4 = a3;
  v5 = [(PXGBlurEffectView *)self contentView];
  [v5 addSubview:v4];
}

- (void)setUserData:(id)a3
{
  v8 = a3;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXGBlurEffectViewConfiguration *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_userData, a3);
      [(PXGBlurEffectView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PXGBlurEffectView;
  [(PXGBlurEffectView *)&v11 layoutSubviews];
  if (!self->_effectView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD298]);
    [(PXGBlurEffectView *)self bounds];
    v4 = [v3 initWithFrame:?];
    effectView = self->_effectView;
    self->_effectView = v4;

    [(UIVisualEffectView *)self->_effectView setAutoresizingMask:18];
    [(PXGBlurEffectView *)self addSubview:self->_effectView];
  }

  v6 = MEMORY[0x1E69DC730];
  v7 = [(PXGBlurEffectView *)self userData];
  if (MEMORY[0x1A590D320]([v7 style]))
  {
    v8 = 16;
  }

  else
  {
    v8 = 4015;
  }

  v9 = [v6 effectWithStyle:v8];
  [(UIVisualEffectView *)self->_effectView setEffect:v9];

  v10 = [(PXGBlurEffectView *)self superview];
  [v10 sendSubviewToBack:self];
}

@end