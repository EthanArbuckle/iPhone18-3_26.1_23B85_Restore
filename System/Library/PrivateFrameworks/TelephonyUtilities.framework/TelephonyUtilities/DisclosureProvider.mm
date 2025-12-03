@interface DisclosureProvider
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation DisclosureProvider

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_1003FE4C0(playingCopy);
}

@end