@interface SXClippingView
- (CGRect)contentFrame;
- (CGSize)contentSize;
- (SXClippingView)initWithContentView:(id)view;
- (void)setClippingMode:(id)mode;
- (void)setContentFrame:(CGRect)frame;
@end

@implementation SXClippingView

- (SXClippingView)initWithContentView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = SXClippingView;
  v6 = [(SXClippingView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
    layer = [(SXClippingView *)v7 layer];
    layer2 = [viewCopy layer];
    [layer setContentLayer:layer2];

    layer3 = [(SXClippingView *)v7 layer];
    objc_opt_class();
    [layer3 setClippingMode:objc_opt_isKindOfClass() & 1];

    [(SXClippingView *)v7 addSubview:viewCopy];
  }

  return v7;
}

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_contentFrame = frame;
  layer = [(SXClippingView *)self layer];
  [layer setContentFrame:{x, y, width, height}];
}

- (void)setClippingMode:(id)mode
{
  self->_clippingMode = mode;
  layer = [(SXClippingView *)self layer];
  [layer setClippingMode:mode];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end