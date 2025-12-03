@interface SiriTTSVoiceSubscription
- (BOOL)isEqual:(id)equal;
- (SiriTTSSynthesisVoice)voice;
- (SiriTTSVoiceSubscription)initWithVoice:(id)voice clientId:(id)id accessoryId:(id)accessoryId;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setClientId:(id)id;
- (void)setVoice:(id)voice;
@end

@implementation SiriTTSVoiceSubscription

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1BE9E74();

  return v2;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  selfCopy = self;
  sub_1B1BE9F1C(voiceCopy);
}

- (void)setClientId:(id)id
{
  sub_1B1C2CB58();
  selfCopy = self;
  sub_1B1BEA0B4();
}

- (SiriTTSVoiceSubscription)initWithVoice:(id)voice clientId:(id)id accessoryId:(id)accessoryId
{
  v7 = sub_1B1C2CB58();
  v9 = v8;
  if (accessoryId)
  {
    accessoryId = sub_1B1C2CB58();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)(voice, v7, v9, accessoryId, v11);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B1BEA32C(v8);

  sub_1B1A90CD8(v8, &qword_1EB761DE0, &qword_1B1C352C0);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B1BEA5D0();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1BEA880(coderCopy);
}

@end