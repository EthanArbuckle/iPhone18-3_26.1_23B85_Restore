@interface VAFeatureExtract
- (_TtC12VoiceActions16VAFeatureExtract)init;
@end

@implementation VAFeatureExtract

- (_TtC12VoiceActions16VAFeatureExtract)init
{
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract_windowAppliedFrame) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract_frameFeatureVec) = v2;
  v3 = self + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for VAFeatureExtract();
  return [(VAFeatureExtract *)&v5 init];
}

@end