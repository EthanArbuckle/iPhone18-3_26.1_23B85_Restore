@interface SMUFilter
+ (id)gaussianBlurFilterWithInputRadius:(double)radius inputHardEdges:(id)edges inputNormalizeEdges:(id)normalizeEdges inputQuality:(id)quality inputIntermediateBitDepth:(id)depth inputDither:(id)dither name:(id)name;
+ (id)programTextBackgroundVibrantColorMatrixFilter;
+ (id)programTextColorMatrixFilter;
+ (void)applyProgramTextFiltersToLayer:(id)layer;
+ (void)applyProgramVibrantColorFilterToLayer:(id)layer;
@end

@implementation SMUFilter

+ (id)gaussianBlurFilterWithInputRadius:(double)radius inputHardEdges:(id)edges inputNormalizeEdges:(id)normalizeEdges inputQuality:(id)quality inputIntermediateBitDepth:(id)depth inputDither:(id)dither name:(id)name
{
  edgesCopy = edges;
  normalizeEdgesCopy = normalizeEdges;
  qualityCopy = quality;
  depthCopy = depth;
  ditherCopy = dither;
  nameCopy = name;
  v21 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [v21 setValue:v22 forKey:@"inputRadius"];

  if (edgesCopy)
  {
    [v21 setValue:edgesCopy forKey:@"inputHardEdges"];
  }

  if (normalizeEdgesCopy)
  {
    [v21 setValue:normalizeEdgesCopy forKey:@"inputNormalizeEdges"];
  }

  if (qualityCopy)
  {
    [v21 setValue:qualityCopy forKey:@"inputQuality"];
  }

  if (depthCopy)
  {
    [v21 setValue:depthCopy forKey:@"inputIntermediateBitDepth"];
  }

  if (ditherCopy)
  {
    [v21 setValue:ditherCopy forKey:@"inputDither"];
  }

  [v21 setName:nameCopy];

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

+ (void)applyProgramTextFiltersToLayer:(id)layer
{
  v9[3] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  programTextBlurFilter1 = [self programTextBlurFilter1];
  programTextColorMatrixFilter = [self programTextColorMatrixFilter];
  v9[1] = programTextColorMatrixFilter;
  programTextBlurFilter2 = [self programTextBlurFilter2];
  v9[2] = programTextBlurFilter2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  [layerCopy setFilters:v8];
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

+ (void)applyProgramVibrantColorFilterToLayer:(id)layer
{
  v7[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  programTextBackgroundVibrantColorMatrixFilter = [self programTextBackgroundVibrantColorMatrixFilter];
  v7[0] = programTextBackgroundVibrantColorMatrixFilter;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [layerCopy setFilters:v6];
}

@end