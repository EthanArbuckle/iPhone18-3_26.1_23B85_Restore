@interface PGInvariantSisterMemoryNodeFeatureExtractor
- (PGInvariantSisterMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantSisterMemoryNodeFeatureExtractor

- (PGInvariantSisterMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = @"SISTER";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v6 relation];
  v18[0] = relation;
  v8 = +[PGGraphPersonNode sisterOfPerson];
  inverse = [v8 inverse];
  v18[1] = inverse;
  v10 = +[PGGraphMeNode filter];
  relation2 = [v10 relation];
  v18[2] = relation2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v13 = [v5 chain:v12];

  v17.receiver = self;
  v17.super_class = PGInvariantSisterMemoryNodeFeatureExtractor;
  v14 = [(PGGraphMemoryNodeFeatureExtractor *)&v17 initWithName:@"SISTER" featureNames:v4 relation:v13 labelForTargetBlock:&__block_literal_global_7_39935];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end