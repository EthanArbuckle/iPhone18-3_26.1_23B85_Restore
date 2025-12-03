@interface SiriTTSSynthesisContext
- (NSArray)customResourceURLs;
- (NSDictionary)contextInfo;
- (SiriTTSProsodyProperties)prosodyProperties;
- (SiriTTSSynthesisVoice)voice;
- (id)didGenerateAudio;
- (id)didGenerateWordTimings;
- (void)encodeWithCoder:(id)coder;
- (void)setContextInfo:(id)info;
- (void)setCustomResourceURLs:(id)ls;
- (void)setDidGenerateAudio:(id)audio;
- (void)setDidGenerateWordTimings:(id)timings;
- (void)setProsodyProperties:(id)properties;
- (void)setVoice:(id)voice;
@end

@implementation SiriTTSSynthesisContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1A9CDF8(coderCopy);
}

- (void)setContextInfo:(id)info
{
  if (info)
  {
    v4 = sub_1B1C2CA98();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1B1AD60FC(v4);
}

- (void)setDidGenerateWordTimings:(id)timings
{
  v4 = _Block_copy(timings);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B1AD8B08;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1B1AD5768(v4, v5);
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B0C928();

  return v2;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  selfCopy = self;
  sub_1B1B0C9C8();
}

- (NSDictionary)contextInfo
{
  if (sub_1B1B0CCA4())
  {
    v2 = sub_1B1C2CA78();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSArray)customResourceURLs
{
  if (sub_1B1B0D058())
  {
    sub_1B1C2C1C8();
    v2 = sub_1B1C2CE68();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setCustomResourceURLs:(id)ls
{
  lsCopy = ls;
  if (ls)
  {
    sub_1B1C2C1C8();
    lsCopy = sub_1B1C2CE78();
  }

  selfCopy = self;
  sub_1B1B0D10C(lsCopy);
}

- (id)didGenerateAudio
{
  v2 = sub_1B1B0D6F4();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B1B18B50;
    v6[3] = &block_descriptor_492;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidGenerateAudio:(id)audio
{
  v4 = _Block_copy(audio);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B1B18B38;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1B1B0D7BC(v4, v5);
}

- (id)didGenerateWordTimings
{
  v2 = sub_1B1B0D9D0();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B1B0D9F0;
    v6[3] = &block_descriptor_486;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SiriTTSProsodyProperties)prosodyProperties
{
  v2 = sub_1B1B0DE1C();

  return v2;
}

- (void)setProsodyProperties:(id)properties
{
  propertiesCopy = properties;
  selfCopy = self;
  sub_1B1B0DEBC();
}

@end