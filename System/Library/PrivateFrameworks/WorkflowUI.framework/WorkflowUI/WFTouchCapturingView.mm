@interface WFTouchCapturingView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation WFTouchCapturingView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v5 = [(WFTouchCapturingView *)self touchCapturedHandler:event];

  if (v5)
  {
    touchCapturedHandler = [(WFTouchCapturingView *)self touchCapturedHandler];
    touchCapturedHandler[2]();
  }

  return 1;
}

@end