@interface VUIDocumentUIConfigurationFormSheet
- (CGSize)preferredSize;
@end

@implementation VUIDocumentUIConfigurationFormSheet

- (CGSize)preferredSize
{
  detents = self->_detents;
  width = self->_preferredSize.width;
  result.height = width;
  result.width = *&detents;
  return result;
}

@end