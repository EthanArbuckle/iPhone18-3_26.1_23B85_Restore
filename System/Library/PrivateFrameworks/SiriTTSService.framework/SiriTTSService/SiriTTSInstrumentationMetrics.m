@interface SiriTTSInstrumentationMetrics
- (NSArray)encounteredIssues;
- (SiriTTSSynthesisResource)resource;
- (SiriTTSSynthesisVoice)voice;
- (void)encodeWithCoder:(id)a3;
- (void)setEncounteredIssues:(id)a3;
- (void)setResource:(id)a3;
- (void)setVoice:(id)a3;
@end

@implementation SiriTTSInstrumentationMetrics

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1AB0018(v4);
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1BE696C();

  return v2;
}

- (void)setVoice:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B1BE6A0C(a3);
}

- (SiriTTSSynthesisResource)resource
{
  v2 = sub_1B1BE6B04();

  return v2;
}

- (void)setResource:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B1BE6BA4(a3);
}

- (NSArray)encounteredIssues
{
  sub_1B1BE811C();
  v2 = sub_1B1C2CE68();

  return v2;
}

- (void)setEncounteredIssues:(id)a3
{
  v4 = sub_1B1C2CE78();
  v5 = self;
  sub_1B1BE81C4(v4);
}

@end