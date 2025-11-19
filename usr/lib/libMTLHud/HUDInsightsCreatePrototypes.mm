@interface HUDInsightsCreatePrototypes
@end

@implementation HUDInsightsCreatePrototypes

void __HUDInsightsCreatePrototypes_block_invoke(id a1)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  _HUDTargetRebindingInsightReport(0, 1);
  _HUDTargetBlitInsightReport(0, 1);
  _HUDTessellationInsightReport(0, 1);
  _HUDBarrierInsightReport(0, 1);
  _HUDCompilerStatInsightReport(v1, 1);
  _HUDGameModeInsightReport(1);
  _HUDMetal3To4EfficientEncoderInsightReport(0, 1);
}

@end