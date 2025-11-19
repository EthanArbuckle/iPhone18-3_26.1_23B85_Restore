@interface SMUFilter
+ (id)gaussianBlurFilterWithInputRadius:(double)a3 inputHardEdges:(id)a4 inputNormalizeEdges:(id)a5 inputQuality:(id)a6 inputIntermediateBitDepth:(id)a7 inputDither:(id)a8 name:(id)a9;
+ (id)programTextBackgroundVibrantColorMatrixFilter;
+ (id)programTextColorMatrixFilter;
+ (void)applyProgramTextFiltersToLayer:(id)a3;
+ (void)applyProgramVibrantColorFilterToLayer:(id)a3;
@end

@implementation SMUFilter

+ (id)gaussianBlurFilterWithInputRadius:(double)a3 inputHardEdges:(id)a4 inputNormalizeEdges:(id)a5 inputQuality:(id)a6 inputIntermediateBitDepth:(id)a7 inputDither:(id)a8 name:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v21 setValue:v22 forKey:@"inputRadius"];

  if (v15)
  {
    [v21 setValue:v15 forKey:@"inputHardEdges"];
  }

  if (v16)
  {
    [v21 setValue:v16 forKey:@"inputNormalizeEdges"];
  }

  if (v17)
  {
    [v21 setValue:v17 forKey:@"inputQuality"];
  }

  if (v18)
  {
    [v21 setValue:v18 forKey:@"inputIntermediateBitDepth"];
  }

  if (v19)
  {
    [v21 setValue:v19 forKey:@"inputDither"];
  }

  [v21 setName:v20];

  return v21;
}

+ (id)programTextColorMatrixFilter
{
  v2 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v5[0] = 0;
  v5[1] = 0;
  v6 = 1065353216;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 1065353216;
  v11 = 0;
  v12 = 0;
  v3 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v5];
  [v2 setValue:v3 forKey:@"inputColorMatrix"];

  return v2;
}

+ (void)applyProgramTextFiltersToLayer:(id)a3
{
  v9[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 programTextBlurFilter1];
  v6 = [a1 programTextColorMatrixFilter];
  v9[1] = v6;
  v7 = [a1 programTextBlurFilter2];
  v9[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  [v4 setFilters:v8];
}

+ (id)programTextBackgroundVibrantColorMatrixFilter
{
  v2 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
  v5[0] = xmmword_20C14C080;
  v5[1] = xmmword_20C14C090;
  v5[2] = xmmword_20C14C0A0;
  v5[3] = xmmword_20C14C0B0;
  v5[4] = xmmword_20C14C0C0;
  v3 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v5];
  [v2 setValue:v3 forKey:@"inputColorMatrix"];

  return v2;
}

+ (void)applyProgramVibrantColorFilterToLayer:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 programTextBackgroundVibrantColorMatrixFilter];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v4 setFilters:v6];
}

@end