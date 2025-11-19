@interface SLDEmptySlotContent
- (CGSize)contentSize;
@end

@implementation SLDEmptySlotContent

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end