@interface SXGradientFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)a3;
- (SXGradientFillView)initWithGradientFill:(id)a3 gradientFactory:(id)a4;
- (void)layoutSubviews;
- (void)setContentFrame:(CGRect)a3;
@end

@implementation SXGradientFillView

- (SXGradientFillView)initWithGradientFill:(id)a3 gradientFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SXGradientFillView;
  v9 = [(SXFillView *)&v19 initWithFill:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gradientFill, a3);
    v11 = [v7 colorStops];
    v12 = [v11 NSArray];
    [v7 angle];
    v13 = [v8 gradientForColorStops:v12 angle:?];

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
  v3 = [(SXGradientFillView *)self clippingView];
  [(SXGradientFillView *)self bounds];
  [v3 setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v2 = [(SXGradientFillView *)self clippingView];
  [v2 contentFrame];
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

- (void)setContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SXGradientFillView *)self clippingView];
  [v7 setContentFrame:{x, y, width, height}];
}

@end