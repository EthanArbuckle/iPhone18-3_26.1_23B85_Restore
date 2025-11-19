@interface PBFFocusEditingSceneViewController
- (CGRect)posterPreviewFrame;
@end

@implementation PBFFocusEditingSceneViewController

- (CGRect)posterPreviewFrame
{
  x = self->_posterPreviewFrame.origin.x;
  y = self->_posterPreviewFrame.origin.y;
  width = self->_posterPreviewFrame.size.width;
  height = self->_posterPreviewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end