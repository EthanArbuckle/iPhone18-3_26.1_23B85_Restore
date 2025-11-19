@interface PXGTitleSubtitleView
- (CGRect)clippingRect;
- (void)setUserData:(id)a3;
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

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  userData = self->_userData;
  self->_userData = v5;

  v7 = [v4 title];
  [(PXTitleSubtitleUILabel *)self setTitleText:v7];

  v8 = [v4 subtitle];
  [(PXTitleSubtitleUILabel *)self setSubtitleText:v8];

  v9 = [v4 spec];

  [(PXTitleSubtitleUILabel *)self setSpec:v9];
}

@end