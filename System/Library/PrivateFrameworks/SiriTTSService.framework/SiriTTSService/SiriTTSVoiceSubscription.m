@interface SiriTTSVoiceSubscription
- (BOOL)isEqual:(id)a3;
- (SiriTTSSynthesisVoice)voice;
- (SiriTTSVoiceSubscription)initWithVoice:(id)a3 clientId:(id)a4 accessoryId:(id)a5;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setClientId:(id)a3;
- (void)setVoice:(id)a3;
@end

@implementation SiriTTSVoiceSubscription

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1BE9E74();

  return v2;
}

- (void)setVoice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BE9F1C(v4);
}

- (void)setClientId:(id)a3
{
  sub_1B1C2CB58();
  v4 = self;
  sub_1B1BEA0B4();
}

- (SiriTTSVoiceSubscription)initWithVoice:(id)a3 clientId:(id)a4 accessoryId:(id)a5
{
  v7 = sub_1B1C2CB58();
  v9 = v8;
  if (a5)
  {
    a5 = sub_1B1C2CB58();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)(a3, v7, v9, a5, v11);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1B1BEA32C(v8);

  sub_1B1A90CD8(v8, &qword_1EB761DE0, &qword_1B1C352C0);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1B1BEA5D0();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BEA880(v4);
}

@end