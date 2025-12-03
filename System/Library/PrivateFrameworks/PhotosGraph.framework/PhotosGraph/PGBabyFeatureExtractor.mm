@interface PGBabyFeatureExtractor
- (PGBabyFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGBabyFeatureExtractor

- (PGBabyFeatureExtractor)initWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = @"Baby";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v15[0] = v6;
  v7 = [PGGraphPersonNode filterForAgeCategories:&unk_284485490 includingMe:0];
  relation = [v7 relation];
  v15[1] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v5 chain:v9];

  v14.receiver = self;
  v14.super_class = PGBabyFeatureExtractor;
  v11 = [(PGGraphFeatureExtractor *)&v14 initWithName:@"Baby" featureNames:v4 relation:v10 labelForTargetBlock:&__block_literal_global_2506];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end