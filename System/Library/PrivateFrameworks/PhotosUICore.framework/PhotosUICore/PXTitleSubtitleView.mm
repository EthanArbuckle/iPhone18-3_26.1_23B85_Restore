@interface PXTitleSubtitleView
- (CGRect)clippingRect;
- (PXTitleSubtitleView)initWithFrame:(CGRect)frame;
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

- (PXTitleSubtitleView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXTitleSubtitleView;
  result = [(PXTitleSubtitleView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    v5 = result;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v5 file:@"PXTitleSubtitleView.m" lineNumber:21 description:@"This code path is not implemented."];

    abort();
  }

  return result;
}

@end