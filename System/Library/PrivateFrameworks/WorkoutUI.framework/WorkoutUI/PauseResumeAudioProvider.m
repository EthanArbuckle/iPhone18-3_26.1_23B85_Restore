@interface PauseResumeAudioProvider
- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
@end

@implementation PauseResumeAudioProvider

- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;

  PauseResumeAudioProvider.sessionActivity(_:didChangeFrom:to:)(v7, a4, a5);
}

@end