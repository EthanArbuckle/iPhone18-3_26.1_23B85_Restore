@interface PXGTitleSubtitleView
- (CGRect)clippingRect;
- (void)setUserData:(id)data;
@end

@implementation PXGTitleSubtitleView

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

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy copy];
  userData = self->_userData;
  self->_userData = v5;

  title = [dataCopy title];
  [(PXTitleSubtitleUILabel *)self setTitleText:title];

  subtitle = [dataCopy subtitle];
  [(PXTitleSubtitleUILabel *)self setSubtitleText:subtitle];

  spec = [dataCopy spec];

  [(PXTitleSubtitleUILabel *)self setSpec:spec];
}

@end