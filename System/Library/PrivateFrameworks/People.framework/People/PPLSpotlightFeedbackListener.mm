@interface PPLSpotlightFeedbackListener
- (void)didPerformCommand:(id)command;
@end

@implementation PPLSpotlightFeedbackListener

- (void)didPerformCommand:(id)command
{
  commandCopy = command;
  command = [commandCopy command];

  if (command)
  {
    [_TtC6People25SpotlightFeedbackListener didPerformCommand:commandCopy];
  }
}

@end