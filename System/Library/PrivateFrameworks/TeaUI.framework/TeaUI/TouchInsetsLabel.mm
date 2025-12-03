@interface TouchInsetsLabel
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation TouchInsetsLabel

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_1D8069E08(x, y);

  return self & 1;
}

@end