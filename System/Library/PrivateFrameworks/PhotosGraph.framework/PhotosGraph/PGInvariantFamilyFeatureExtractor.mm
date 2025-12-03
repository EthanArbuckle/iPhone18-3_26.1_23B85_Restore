@interface PGInvariantFamilyFeatureExtractor
- (PGInvariantFamilyFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantFamilyFeatureExtractor

- (PGInvariantFamilyFeatureExtractor)initWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D275B0];
  v4 = v18[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphMomentNode personInMoment];
  v17[0] = v7;
  v8 = +[PGGraphPersonNode familyOfPerson];
  v17[1] = v8;
  v9 = +[PGGraphMeNode filter];
  relation = [v9 relation];
  v17[2] = relation;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v12 = [v6 chain:v11];

  v16.receiver = self;
  v16.super_class = PGInvariantFamilyFeatureExtractor;
  v13 = [(PGGraphFeatureExtractor *)&v16 initWithName:v4 featureNames:v5 relation:v12 labelForTargetBlock:&__block_literal_global_22067];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end