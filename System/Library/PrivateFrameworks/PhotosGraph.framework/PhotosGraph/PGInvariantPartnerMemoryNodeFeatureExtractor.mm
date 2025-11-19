@interface PGInvariantPartnerMemoryNodeFeatureExtractor
- (PGInvariantPartnerMemoryNodeFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGInvariantPartnerMemoryNodeFeatureExtractor

- (PGInvariantPartnerMemoryNodeFeatureExtractor)initWithError:(id *)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = +[PGInvariantPartnerMemoryNodeFeatureExtractor name];
  v20[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphPersonNode filterExcludingMe];
  v8 = [v7 relation];
  v19[0] = v8;
  v9 = +[PGGraphPersonNode partnerOfPerson];
  v19[1] = v9;
  v10 = +[PGGraphMeNode filter];
  v11 = [v10 relation];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v13 = [v6 chain:v12];

  v14 = +[PGInvariantPartnerMemoryNodeFeatureExtractor name];
  v18.receiver = self;
  v18.super_class = PGInvariantPartnerMemoryNodeFeatureExtractor;
  v15 = [(PGGraphMemoryNodeFeatureExtractor *)&v18 initWithName:v14 featureNames:v5 relation:v13 labelForTargetBlock:&__block_literal_global_33];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end