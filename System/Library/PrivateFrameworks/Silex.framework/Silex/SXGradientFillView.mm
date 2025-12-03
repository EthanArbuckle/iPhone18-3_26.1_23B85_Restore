@interface SXGradientFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)size;
- (SXGradientFillView)initWithGradientFill:(id)fill gradientFactory:(id)factory;
- (void)layoutSubviews;
- (void)setContentFrame:(CGRect)frame;
@end

@implementation SXGradientFillView

- (SXGradientFillView)initWithGradientFill:(id)fill gradientFactory:(id)factory
{
  fillCopy = fill;
  factoryCopy = factory;
  v19.receiver = self;
  v19.super_class = SXGradientFillView;
  v9 = [(SXFillView *)&v19 initWithFill:fillCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gradientFill, fill);
    colorStops = [fillCopy colorStops];
    nSArray = [colorStops NSArray];
    [fillCopy angle];
    v13 = [factoryCopy gradientForColorStops:nSArray angle:?];

    v14 = [[SXGradientView alloc] initWithGradient:v13];
    gradientView = v10->_gradientView;
    v10->_gradientView = v14;

    v16 = [[SXClippingView alloc] initWithContentView:v10->_gradientView];
    clippingView = v10->_clippingView;
    v10->_clippingView = v16;

    [(SXGradientFillView *)v10 addSubview:v10->_clippingView];
  }

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXGradientFillView;
  [(SXGradientFillView *)&v4 layoutSubviews];
  clippingView = [(SXGradientFillView *)self clippingView];
  [(SXGradientFillView *)self bounds];
  [clippingView setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)contentFrame
{
  clippingView = [(SXGradientFillView *)self clippingView];
  [clippingView contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  clippingView = [(SXGradientFillView *)self clippingView];
  [clippingView setContentFrame:{x, y, width, height}];
}

@end