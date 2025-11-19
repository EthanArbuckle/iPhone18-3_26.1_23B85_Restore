@interface WFConverterView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToSuperview;
@end

@implementation WFConverterView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_27459C038(x, y);

  return v9;
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_27459C0EC();
}

@end