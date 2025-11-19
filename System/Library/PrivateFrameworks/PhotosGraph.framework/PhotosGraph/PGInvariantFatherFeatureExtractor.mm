@interface PGInvariantFatherFeatureExtractor
- (PGInvariantFatherFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGInvariantFatherFeatureExtractor

- (PGInvariantFatherFeatureExtractor)initWithError:(id *)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = @"FATHER";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v17[0] = v6;
  v7 = +[PGGraphPersonNode fatherOfPerson];
  v8 = [v7 inverse];
  v17[1] = v8;
  v9 = +[PGGraphMeNode filter];
  v10 = [v9 relation];
  v17[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v12 = [v5 chain:v11];

  v16.receiver = self;
  v16.super_class = PGInvariantFatherFeatureExtractor;
  v13 = [(PGGraphFeatureExtractor *)&v16 initWithName:@"FATHER" featureNames:v4 relation:v12 labelForTargetBlock:&__block_literal_global_69192];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end