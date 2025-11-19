@interface BandDataFusion
- (BandDataFusion)init;
@end

@implementation BandDataFusion

- (BandDataFusion)init
{
  v10.receiver = self;
  v10.super_class = BandDataFusion;
  v2 = [(BandDataFusion *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    diffWeight = v2->diffWeight;
    v2->diffWeight = v3;

    v5 = objc_opt_new();
    lumaFusionStrength = v2->lumaFusionStrength;
    v2->lumaFusionStrength = v5;

    v7 = objc_opt_new();
    chromaFusionStrength = v2->chromaFusionStrength;
    v2->chromaFusionStrength = v7;
  }

  return v2;
}

@end