@interface PGWeekdayFeatureExtractor
- (PGWeekdayFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGWeekdayFeatureExtractor

- (PGWeekdayFeatureExtractor)initWithError:(id *)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = @"Weekday";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = +[PGGraphMomentNode weekdayOfMoment];
  v9.receiver = self;
  v9.super_class = PGWeekdayFeatureExtractor;
  v6 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"Weekday" featureNames:v4 relation:v5 labelForTargetBlock:&__block_literal_global_18871];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end