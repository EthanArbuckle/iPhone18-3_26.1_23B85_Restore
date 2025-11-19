@interface PXTitleSubtitleView
- (CGRect)clippingRect;
- (PXTitleSubtitleView)initWithFrame:(CGRect)a3;
@end

@implementation PXTitleSubtitleView

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

- (PXTitleSubtitleView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXTitleSubtitleView;
  result = [(PXTitleSubtitleView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:v5 file:@"PXTitleSubtitleView.m" lineNumber:21 description:@"This code path is not implemented."];

    abort();
  }

  return result;
}

@end