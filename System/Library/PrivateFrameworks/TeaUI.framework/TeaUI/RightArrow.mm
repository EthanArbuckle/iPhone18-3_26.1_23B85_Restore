@interface RightArrow
- (void)drawRect:(CGRect)rect;
@end

@implementation RightArrow

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
  RightArrow.draw(_:)(v9);
}

@end