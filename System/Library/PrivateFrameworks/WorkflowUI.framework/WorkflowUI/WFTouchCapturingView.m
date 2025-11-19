@interface WFTouchCapturingView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation WFTouchCapturingView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v5 = [(WFTouchCapturingView *)self touchCapturedHandler:a4];

  if (v5)
  {
    v6 = [(WFTouchCapturingView *)self touchCapturedHandler];
    v6[2]();
  }

  return 1;
}

@end