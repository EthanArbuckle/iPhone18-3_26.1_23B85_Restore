@interface WFConverterView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)didMoveToSuperview;
@end

@implementation WFConverterView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_27459C038(x, y);

  return v9;
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_27459C0EC();
}

@end