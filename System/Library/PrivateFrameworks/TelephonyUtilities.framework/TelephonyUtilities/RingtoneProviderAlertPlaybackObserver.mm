@interface RingtoneProviderAlertPlaybackObserver
- (void)alertDidBeginPlaying:(id)playing;
@end

@implementation RingtoneProviderAlertPlaybackObserver

- (void)alertDidBeginPlaying:(id)playing
{
  playingCopy = playing;
  selfCopy = self;
  sub_10034ECF4();
}

@end