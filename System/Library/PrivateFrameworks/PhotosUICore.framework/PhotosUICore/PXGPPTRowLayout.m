@interface PXGPPTRowLayout
- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)result;
- (PXGPPTRowLayout)initWithNumberOfItems:(int64_t)a3 hue:(double)a4;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
@end

@implementation PXGPPTRowLayout

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  cos(vcvtd_n_f64_s64(a4, 1uLL));
  v5 = [PXGPPTRowItemLayout alloc];
  v6 = MEMORY[0x1E69DC888];
  [(PXGPPTRowLayout *)self hue];
  v7 = [v6 colorWithHue:? saturation:? brightness:? alpha:?];
  v8 = [(PXGPPTRowItemLayout *)v5 initWithColor:v7];

  return v8;
}

- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)result
{
  height = result.height;
  result.width = height;
  return result;
}

- (PXGPPTRowLayout)initWithNumberOfItems:(int64_t)a3 hue:(double)a4
{
  v9.receiver = self;
  v9.super_class = PXGPPTRowLayout;
  v6 = [(PXGStackLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfItems = a3;
    v6->_hue = a4;
    [(PXGStackLayout *)v6 setAxis:2];
    [(PXGStackLayout *)v7 setInterlayoutSpacing:1.0];
    [(PXGStackLayout *)v7 insertSublayoutProvider:v7 inRange:0, v7->_numberOfItems];
  }

  return v7;
}

@end