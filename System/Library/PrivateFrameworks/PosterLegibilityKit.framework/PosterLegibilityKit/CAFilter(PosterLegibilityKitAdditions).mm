@interface CAFilter(PosterLegibilityKitAdditions)
+ (id)plk_multiplyColor:()PosterLegibilityKitAdditions;
+ (id)plk_vibrantColorMatrixFilterWithVibrantColorMatrix:()PosterLegibilityKitAdditions options:;
@end

@implementation CAFilter(PosterLegibilityKitAdditions)

+ (id)plk_vibrantColorMatrixFilterWithVibrantColorMatrix:()PosterLegibilityKitAdditions options:
{
  v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
  v7 = a3[3];
  v11[2] = a3[2];
  v11[3] = v7;
  v11[4] = a3[4];
  v8 = a3[1];
  v11[0] = *a3;
  v11[1] = v8;
  v9 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v11];
  [v6 setValue:v9 forKey:*MEMORY[0x277CDA440]];

  if (a4)
  {
    [v6 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA368]];
  }

  return v6;
}

+ (id)plk_multiplyColor:()PosterLegibilityKitAdditions
{
  v3 = MEMORY[0x277CD9EA0];
  v4 = *MEMORY[0x277CDA5B0];
  v5 = a3;
  v6 = [v3 filterWithType:v4];
  cGColor = [v5 CGColor];

  [v6 setValue:cGColor forKey:*MEMORY[0x277CDA430]];

  return v6;
}

@end