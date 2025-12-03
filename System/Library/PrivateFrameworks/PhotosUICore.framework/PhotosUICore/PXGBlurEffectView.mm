@interface PXGBlurEffectView
- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer;
- (CGRect)clippingRect;
- (void)addHostedLayer:(id)layer;
- (void)addHostedView:(id)view;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
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

- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  contentView = [(PXGBlurEffectView *)self contentView];
  layer = [contentView layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)addHostedLayer:(id)layer
{
  layerCopy = layer;
  contentView = [(PXGBlurEffectView *)self contentView];
  layer = [contentView layer];
  [layer addSublayer:layerCopy];
}

- (void)addHostedView:(id)view
{
  viewCopy = view;
  contentView = [(PXGBlurEffectView *)self contentView];
  [contentView addSubview:viewCopy];
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == dataCopy)
  {
  }

  else
  {
    v7 = [(PXGBlurEffectViewConfiguration *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_userData, data);
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
  userData = [(PXGBlurEffectView *)self userData];
  if (MEMORY[0x1A590D320]([userData style]))
  {
    v8 = 16;
  }

  else
  {
    v8 = 4015;
  }

  v9 = [v6 effectWithStyle:v8];
  [(UIVisualEffectView *)self->_effectView setEffect:v9];

  superview = [(PXGBlurEffectView *)self superview];
  [superview sendSubviewToBack:self];
}

@end