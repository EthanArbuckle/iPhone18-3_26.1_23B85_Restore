@interface CallTranslationDisclosureProvider
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation CallTranslationDisclosureProvider

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_10044B7EC(playingCopy);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  selfCopy = self;
  errorCopy = error;
  sub_10044C018(occurCopy, error);
}

@end