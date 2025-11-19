@interface SXClippingView
- (CGRect)contentFrame;
- (CGSize)contentSize;
- (SXClippingView)initWithContentView:(id)a3;
- (void)setClippingMode:(id)a3;
- (void)setContentFrame:(CGRect)a3;
@end

@implementation SXClippingView

- (SXClippingView)initWithContentView:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SXClippingView;
  v6 = [(SXClippingView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    v8 = [(SXClippingView *)v7 layer];
    v9 = [v5 layer];
    [v8 setContentLayer:v9];

    v10 = [(SXClippingView *)v7 layer];
    objc_opt_class();
    [v10 setClippingMode:objc_opt_isKindOfClass() & 1];

    [(SXClippingView *)v7 addSubview:v5];
  }

  return v7;
}

- (void)setContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_contentFrame = a3;
  v7 = [(SXClippingView *)self layer];
  [v7 setContentFrame:{x, y, width, height}];
}

- (void)setClippingMode:(id)a3
{
  self->_clippingMode = a3;
  v4 = [(SXClippingView *)self layer];
  [v4 setClippingMode:a3];
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