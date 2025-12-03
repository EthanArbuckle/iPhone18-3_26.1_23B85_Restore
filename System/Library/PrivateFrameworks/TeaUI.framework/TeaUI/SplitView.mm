@interface SplitView
- (void)drawRect:(CGRect)rect;
@end

@implementation SplitView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  SplitView.draw(_:)(v9);
}

@end