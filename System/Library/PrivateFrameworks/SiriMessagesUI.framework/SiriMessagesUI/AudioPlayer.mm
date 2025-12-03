@interface AudioPlayer
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation AudioPlayer

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_267FC3F24(selfCopy, successfully);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  selfCopy = self;
  errorCopy = error;
  sub_267FC406C(errorCopy, error);
}

@end