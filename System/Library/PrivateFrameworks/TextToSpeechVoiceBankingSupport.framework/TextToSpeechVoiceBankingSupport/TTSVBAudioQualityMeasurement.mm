@interface TTSVBAudioQualityMeasurement
- (NSString)description;
- (float)snr;
- (float)snrEnd;
- (float)snrEndUnnormalized;
- (float)snrThreshold;
- (float)snrUnnormalized;
- (float)spl;
- (float)splEnd;
- (float)splEndUnnormalized;
- (float)splThreshold;
- (float)splUnnormalized;
- (void)setSnr:(float)snr;
- (void)setSnrEnd:(float)end;
- (void)setSnrEndUnnormalized:(float)unnormalized;
- (void)setSnrThreshold:(float)threshold;
- (void)setSnrUnnormalized:(float)unnormalized;
- (void)setSpl:(float)spl;
- (void)setSplEnd:(float)end;
- (void)setSplEndUnnormalized:(float)unnormalized;
- (void)setSplThreshold:(float)threshold;
- (void)setSplUnnormalized:(float)unnormalized;
@end

@implementation TTSVBAudioQualityMeasurement

- (float)spl
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_spl);
  swift_beginAccess();
  return *v2;
}

- (void)setSpl:(float)spl
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_spl);
  swift_beginAccess();
  *v4 = spl;
}

- (float)splEnd
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEnd);
  swift_beginAccess();
  return *v2;
}

- (void)setSplEnd:(float)end
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEnd);
  swift_beginAccess();
  *v4 = end;
}

- (float)splUnnormalized
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splUnnormalized);
  swift_beginAccess();
  return *v2;
}

- (void)setSplUnnormalized:(float)unnormalized
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splUnnormalized);
  swift_beginAccess();
  *v4 = unnormalized;
}

- (float)splEndUnnormalized
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEndUnnormalized);
  swift_beginAccess();
  return *v2;
}

- (void)setSplEndUnnormalized:(float)unnormalized
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEndUnnormalized);
  swift_beginAccess();
  *v4 = unnormalized;
}

- (float)splThreshold
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splThreshold);
  swift_beginAccess();
  return *v2;
}

- (void)setSplThreshold:(float)threshold
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splThreshold);
  swift_beginAccess();
  *v4 = threshold;
}

- (float)snr
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snr);
  swift_beginAccess();
  return *v2;
}

- (void)setSnr:(float)snr
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snr);
  swift_beginAccess();
  *v4 = snr;
}

- (float)snrEnd
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd);
  swift_beginAccess();
  return *v2;
}

- (void)setSnrEnd:(float)end
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd);
  swift_beginAccess();
  *v4 = end;
}

- (float)snrUnnormalized
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized);
  swift_beginAccess();
  return *v2;
}

- (void)setSnrUnnormalized:(float)unnormalized
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized);
  swift_beginAccess();
  *v4 = unnormalized;
}

- (float)snrEndUnnormalized
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized);
  swift_beginAccess();
  return *v2;
}

- (void)setSnrEndUnnormalized:(float)unnormalized
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized);
  swift_beginAccess();
  *v4 = unnormalized;
}

- (float)snrThreshold
{
  v2 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold);
  swift_beginAccess();
  return *v2;
}

- (void)setSnrThreshold:(float)threshold
{
  v4 = (self + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold);
  swift_beginAccess();
  *v4 = threshold;
}

- (NSString)description
{
  selfCopy = self;
  sub_23315F1E4();

  v3 = sub_23328D95C();

  return v3;
}

@end