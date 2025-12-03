@interface PGOverTheYearsMemoryNodeFeatureExtractor
- (PGOverTheYearsMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGOverTheYearsMemoryNodeFeatureExtractor

- (PGOverTheYearsMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = @"OverTheYears";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphOverTheYearsNode filter];
  relation = [v7 relation];
  v15 = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v10 = [v6 chain:v9];

  v14.receiver = self;
  v14.super_class = PGOverTheYearsMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v14 initWithName:@"OverTheYears" featureNames:v5 relation:v10 labelForTargetBlock:&__block_literal_global_33842];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end