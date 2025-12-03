@interface PGInvariantCoworkerMemoryNodeFeatureExtractor
- (PGInvariantCoworkerMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantCoworkerMemoryNodeFeatureExtractor

- (PGInvariantCoworkerMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D275A8];
  v4 = v19[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v7 relation];
  v18[0] = relation;
  v9 = +[PGGraphPersonNode coworkerOfPerson];
  v18[1] = v9;
  v10 = +[PGGraphMeNode filter];
  relation2 = [v10 relation];
  v18[2] = relation2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v13 = [v6 chain:v12];

  v17.receiver = self;
  v17.super_class = PGInvariantCoworkerMemoryNodeFeatureExtractor;
  v14 = [(PGGraphMemoryNodeFeatureExtractor *)&v17 initWithName:v4 featureNames:v5 relation:v13 labelForTargetBlock:&__block_literal_global_7_22171];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end