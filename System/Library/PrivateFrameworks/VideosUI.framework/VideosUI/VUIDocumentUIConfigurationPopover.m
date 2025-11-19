@interface VUIDocumentUIConfigurationPopover
- (CGRect)sourceRect;
- (CGSize)preferredSize;
@end

@implementation VUIDocumentUIConfigurationPopover

- (CGSize)preferredSize
{
  popOverSourceBarButtonItem = self->_popOverSourceBarButtonItem;
  width = self->_preferredSize.width;
  result.height = width;
  result.width = *&popOverSourceBarButtonItem;
  return result;
}

- (CGRect)sourceRect
{
  height = self->_preferredSize.height;
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  result.size.height = width;
  result.size.width = y;
  result.origin.y = x;
  result.origin.x = height;
  return result;
}

@end