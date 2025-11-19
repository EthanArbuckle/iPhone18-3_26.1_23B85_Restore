@interface UIKeyboardEmojiCategoryBar_iPhone
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UIKeyboardEmojiCategoryBar_iPhone

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(UIView *)self pointInside:a4 withEvent:a3.x, a3.y])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end