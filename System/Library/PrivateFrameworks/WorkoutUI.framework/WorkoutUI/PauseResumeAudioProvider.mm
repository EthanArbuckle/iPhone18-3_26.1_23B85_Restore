@interface PauseResumeAudioProvider
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
@end

@implementation PauseResumeAudioProvider

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  activityCopy = activity;

  PauseResumeAudioProvider.sessionActivity(_:didChangeFrom:to:)(activityCopy, state, toState);
}

@end