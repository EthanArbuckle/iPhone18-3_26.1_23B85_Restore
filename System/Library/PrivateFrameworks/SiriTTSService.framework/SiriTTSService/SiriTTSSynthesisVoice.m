@interface SiriTTSSynthesisVoice
+ (int)voiceEnumForName:(id)a3;
- (SiriTTSSynthesisVoice)initWithLanguage:(id)a3 name:(id)a4;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTTSSynthesisVoice

- (SiriTTSSynthesisVoice)initWithLanguage:(id)a3 name:(id)a4
{
  sub_1B1C2CB58();
  if (a4)
  {
    sub_1B1C2CB58();
  }

  return SynthesisVoice.init(language:name:)();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1A9D444();
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1B1B1476C();

  return v3;
}

+ (int)voiceEnumForName:(id)a3
{
  v3 = sub_1B1C2CB58();
  v4 = static SynthesisVoice.voiceEnum(forName:)(v3);

  return v4;
}

@end