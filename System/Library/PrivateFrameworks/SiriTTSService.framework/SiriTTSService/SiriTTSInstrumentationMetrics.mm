@interface SiriTTSInstrumentationMetrics
- (NSArray)encounteredIssues;
- (SiriTTSSynthesisResource)resource;
- (SiriTTSSynthesisVoice)voice;
- (void)encodeWithCoder:(id)coder;
- (void)setEncounteredIssues:(id)issues;
- (void)setResource:(id)resource;
- (void)setVoice:(id)voice;
@end

@implementation SiriTTSInstrumentationMetrics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1AB0018(coderCopy);
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1BE696C();

  return v2;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  selfCopy = self;
  sub_1B1BE6A0C(voice);
}

- (SiriTTSSynthesisResource)resource
{
  v2 = sub_1B1BE6B04();

  return v2;
}

- (void)setResource:(id)resource
{
  resourceCopy = resource;
  selfCopy = self;
  sub_1B1BE6BA4(resource);
}

- (NSArray)encounteredIssues
{
  sub_1B1BE811C();
  v2 = sub_1B1C2CE68();

  return v2;
}

- (void)setEncounteredIssues:(id)issues
{
  v4 = sub_1B1C2CE78();
  selfCopy = self;
  sub_1B1BE81C4(v4);
}

@end