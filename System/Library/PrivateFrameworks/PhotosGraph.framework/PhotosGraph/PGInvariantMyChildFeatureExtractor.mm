@interface PGInvariantMyChildFeatureExtractor
- (PGInvariantMyChildFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantMyChildFeatureExtractor

- (PGInvariantMyChildFeatureExtractor)initWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = @"MyChild";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v17[0] = v6;
  v7 = +[PGGraphPersonNode childOfPerson];
  inverse = [v7 inverse];
  v17[1] = inverse;
  v9 = +[PGGraphMeNode filter];
  relation = [v9 relation];
  v17[2] = relation;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v12 = [v5 chain:v11];

  v16.receiver = self;
  v16.super_class = PGInvariantMyChildFeatureExtractor;
  v13 = [(PGGraphFeatureExtractor *)&v16 initWithName:@"CHILD" featureNames:v4 relation:v12 labelForTargetBlock:&__block_literal_global_63088];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end