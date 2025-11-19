@interface PGWeekendFeatureExtractor
- (PGWeekendFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGWeekendFeatureExtractor

- (PGWeekendFeatureExtractor)initWithError:(id *)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = @"Weekend";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = +[PGGraphMomentNode weekendOfMoment];
  v9.receiver = self;
  v9.super_class = PGWeekendFeatureExtractor;
  v6 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"Weekend" featureNames:v4 relation:v5 labelForTargetBlock:&__block_literal_global_56411];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end