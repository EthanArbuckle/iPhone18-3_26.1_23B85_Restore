@interface PGBirthdayMeaningAggregationMemoryGenerator
+ (id)supportedMeaningLabels;
- (PGBirthdayMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context;
@end

@implementation PGBirthdayMeaningAggregationMemoryGenerator

- (PGBirthdayMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v7.receiver = self;
  v7.super_class = PGBirthdayMeaningAggregationMemoryGenerator;
  v3 = [(PGMeaningAggregationMemoryGenerator *)&v7 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    overTheYearsConfiguration = [(PGMeaningAggregationMemoryGenerator *)v3 overTheYearsConfiguration];
    [overTheYearsConfiguration setAllowTwoConsecutiveYears:0];

    [(PGMeaningAggregationMemoryGenerator *)v4 setFeaturedYearConfiguration:0];
  }

  return v4;
}

+ (id)supportedMeaningLabels
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"Birthday";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end