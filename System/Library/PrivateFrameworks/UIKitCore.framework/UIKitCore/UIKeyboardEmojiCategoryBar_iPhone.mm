@interface UIKeyboardEmojiCategoryBar_iPhone
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UIKeyboardEmojiCategoryBar_iPhone

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(UIView *)self pointInside:event withEvent:test.x, test.y])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end