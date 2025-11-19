@interface PGROIMemoryNodeFeatureExtractor
- (PGROIMemoryNodeFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGROIMemoryNodeFeatureExtractor

- (PGROIMemoryNodeFeatureExtractor)initWithError:(id *)a3
{
  v17[5] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D27588];
  v17[0] = *MEMORY[0x277D27590];
  v17[1] = v4;
  v5 = *MEMORY[0x277D27598];
  v17[2] = *MEMORY[0x277D275A0];
  v17[3] = v5;
  v17[4] = *MEMORY[0x277D27580];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphROINode filter];
  v9 = [v8 relation];
  v16 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v11 = [v7 chain:v10];

  v15.receiver = self;
  v15.super_class = PGROIMemoryNodeFeatureExtractor;
  v12 = [(PGGraphMemoryNodeFeatureExtractor *)&v15 initWithName:@"ROI" featureNames:v6 relation:v11 labelForTargetBlock:&__block_literal_global_43786];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end