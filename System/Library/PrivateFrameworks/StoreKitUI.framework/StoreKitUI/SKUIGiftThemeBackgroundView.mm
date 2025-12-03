@interface SKUIGiftThemeBackgroundView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SKUIGiftThemeBackgroundView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SKUIGiftThemeBackgroundView;
  v5 = [(SKUIGiftThemeBackgroundView *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    v6 = self->_scrollView;

    v5 = v6;
  }

  return v5;
}

@end