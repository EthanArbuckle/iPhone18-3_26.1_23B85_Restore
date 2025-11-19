@interface PPLSpotlightFeedbackListener
- (void)didPerformCommand:(id)a3;
@end

@implementation PPLSpotlightFeedbackListener

- (void)didPerformCommand:(id)a3
{
  v4 = a3;
  v3 = [v4 command];

  if (v3)
  {
    [_TtC6People25SpotlightFeedbackListener didPerformCommand:v4];
  }
}

@end