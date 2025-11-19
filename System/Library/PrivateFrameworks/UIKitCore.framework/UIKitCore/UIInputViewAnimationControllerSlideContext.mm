@interface UIInputViewAnimationControllerSlideContext
- (CGRect)snapshotEndFrame;
@end

@implementation UIInputViewAnimationControllerSlideContext

- (CGRect)snapshotEndFrame
{
  x = self->_snapshotEndFrame.origin.x;
  y = self->_snapshotEndFrame.origin.y;
  width = self->_snapshotEndFrame.size.width;
  height = self->_snapshotEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end