@interface SiriTTSSynthesisVoice
+ (int)voiceEnumForName:(id)name;
- (SiriTTSSynthesisVoice)initWithLanguage:(id)language name:(id)name;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTTSSynthesisVoice

- (SiriTTSSynthesisVoice)initWithLanguage:(id)language name:(id)name
{
  sub_1B1C2CB58();
  if (name)
  {
    sub_1B1C2CB58();
  }

  return SynthesisVoice.init(language:name:)();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1A9D444();
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B1B1476C();

  return v3;
}

+ (int)voiceEnumForName:(id)name
{
  v3 = sub_1B1C2CB58();
  v4 = static SynthesisVoice.voiceEnum(forName:)(v3);

  return v4;
}

@end