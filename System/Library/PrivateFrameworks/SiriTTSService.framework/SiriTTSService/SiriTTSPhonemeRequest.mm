@interface SiriTTSPhonemeRequest
- (SiriTTSSynthesisVoice)voice;
- (void)encodeWithCoder:(id)coder;
- (void)setVoice:(id)voice;
@end

@implementation SiriTTSPhonemeRequest

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B11568();

  return v2;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  selfCopy = self;
  sub_1B1B11608();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1B118E8(coderCopy);
}

@end