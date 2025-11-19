@interface _UIFlowLayoutItem
- (id)copy;
@end

@implementation _UIFlowLayoutItem

- (id)copy
{
  result = objc_alloc_init(_UIFlowLayoutItem);
  size = self->_itemFrame.size;
  *(result + 2) = self->_itemFrame.origin;
  *(result + 3) = size;
  v5 = *(result + 8) & 0xFE | *&self->_itemFlags & 1;
  *(result + 8) = v5;
  v6 = v5 & 0xFFFFFFFD | (2 * ((*&self->_itemFlags >> 1) & 1));
  *(result + 8) = v6;
  *(result + 8) = v6 & 0xFB | *&self->_itemFlags & 4;
  return result;
}

@end