@interface PGBabyMemoryNodeFeatureExtractor
- (PGBabyMemoryNodeFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGBabyMemoryNodeFeatureExtractor

- (PGBabyMemoryNodeFeatureExtractor)initWithError:(id *)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = @"Baby";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = [PGGraphPersonNode filterForAgeCategories:&unk_2844854A8 includingMe:0];
  v7 = [v6 relation];
  v14 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v9 = [v5 chain:v8];

  v13.receiver = self;
  v13.super_class = PGBabyMemoryNodeFeatureExtractor;
  v10 = [(PGGraphMemoryNodeFeatureExtractor *)&v13 initWithName:@"Baby" featureNames:v4 relation:v9 labelForTargetBlock:&__block_literal_global_236];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end