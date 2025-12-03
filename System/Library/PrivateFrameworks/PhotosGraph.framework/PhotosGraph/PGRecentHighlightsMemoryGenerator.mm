@interface PGRecentHighlightsMemoryGenerator
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGRecentHighlightsMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v24[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  memoryMomentNodes = [memory memoryMomentNodes];
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v11}];
  v24[1] = v12;
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v24[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];

  v15 = [memoryMomentNodes sortedArrayUsingDescriptors:v14];

  v16 = [PGBestOfTimeMemoryTitleGenerator alloc];
  firstObject = [v15 firstObject];
  universalStartDate = [firstObject universalStartDate];
  lastObject = [v15 lastObject];
  universalEndDate = [lastObject universalEndDate];
  v21 = [(PGBestOfTimeMemoryTitleGenerator *)v16 initWithStartDate:universalStartDate endDate:universalEndDate titleGenerationContext:contextCopy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v6.receiver = self;
  v6.super_class = PGRecentHighlightsMemoryGenerator;
  v4 = [(PGMemoryGenerator *)&v6 keyAssetCurationOptionsWithTriggeredMemory:memory inGraph:graph];
  [v4 setPrefilterAssetsWithFacesThreshold:2.22507386e-308];

  return v4;
}

@end