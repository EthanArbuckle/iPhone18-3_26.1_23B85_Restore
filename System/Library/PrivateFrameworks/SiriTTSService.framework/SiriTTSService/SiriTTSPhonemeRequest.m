@interface SiriTTSPhonemeRequest
- (SiriTTSSynthesisVoice)voice;
- (void)encodeWithCoder:(id)a3;
- (void)setVoice:(id)a3;
@end

@implementation SiriTTSPhonemeRequest

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B11568();

  return v2;
}

- (void)setVoice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B11608();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B118E8(v4);
}

@end