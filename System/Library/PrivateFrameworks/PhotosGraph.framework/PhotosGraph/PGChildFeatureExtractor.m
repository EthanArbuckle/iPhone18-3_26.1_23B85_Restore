@interface PGChildFeatureExtractor
- (PGChildFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGChildFeatureExtractor

- (PGChildFeatureExtractor)initWithError:(id *)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = @"Child";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v15[0] = v6;
  v7 = [PGGraphPersonNode filterForAgeCategories:&unk_2844857F0 includingMe:0];
  v8 = [v7 relation];
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v5 chain:v9];

  v14.receiver = self;
  v14.super_class = PGChildFeatureExtractor;
  v11 = [(PGGraphFeatureExtractor *)&v14 initWithName:@"Child" featureNames:v4 relation:v10 labelForTargetBlock:&__block_literal_global_16239];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end