@interface PGAOIMemoryNodeFeatureExtractor
- (PGAOIMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGAOIMemoryNodeFeatureExtractor

- (PGAOIMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = @"Disney";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphAreaNode filter];
  relation = [v6 relation];
  v14 = relation;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v9 = [v5 chain:v8];

  v13.receiver = self;
  v13.super_class = PGAOIMemoryNodeFeatureExtractor;
  v10 = [(PGGraphMemoryNodeFeatureExtractor *)&v13 initWithName:@"AOI" featureNames:v4 relation:v9 labelForTargetBlock:&__block_literal_global_61667];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end