@interface SBTraitsDirectionalRotationView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBTraitsDirectionalRotationView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBTraitsDirectionalRotationView;
  v5 = [(SBTraitsDirectionalRotationView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end