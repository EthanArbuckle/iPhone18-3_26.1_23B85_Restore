@interface SKUIStorePageItemPinningLayoutInformation
- (CGRect)availablePinningFrame;
- (CGRect)layoutAttributesFrame;
@end

@implementation SKUIStorePageItemPinningLayoutInformation

- (CGRect)availablePinningFrame
{
  x = self->_availablePinningFrame.origin.x;
  y = self->_availablePinningFrame.origin.y;
  width = self->_availablePinningFrame.size.width;
  height = self->_availablePinningFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)layoutAttributesFrame
{
  x = self->_layoutAttributesFrame.origin.x;
  y = self->_layoutAttributesFrame.origin.y;
  width = self->_layoutAttributesFrame.size.width;
  height = self->_layoutAttributesFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end