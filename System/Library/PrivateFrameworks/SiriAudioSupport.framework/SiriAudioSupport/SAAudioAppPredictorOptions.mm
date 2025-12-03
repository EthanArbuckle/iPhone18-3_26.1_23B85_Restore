@interface SAAudioAppPredictorOptions
- (BOOL)trimDisambiguationForRelevance;
- (SAAudioAppPredictorOptions)init;
- (void)setTrimDisambiguationForRelevance:(BOOL)relevance;
@end

@implementation SAAudioAppPredictorOptions

- (BOOL)trimDisambiguationForRelevance
{
  v3 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTrimDisambiguationForRelevance:(BOOL)relevance
{
  v5 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  swift_beginAccess();
  *(&self->super.isa + v5) = relevance;
}

- (SAAudioAppPredictorOptions)init
{
  *(&self->super.isa + OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriAudioAppPredictorOptions();
  return [(SAAudioAppPredictorOptions *)&v3 init];
}

@end