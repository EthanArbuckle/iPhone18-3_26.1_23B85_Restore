@interface PGHolidayMeaningAggregationMemoryGenerator
+ (id)supportedMeaningLabels;
- (PGHolidayMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context;
@end

@implementation PGHolidayMeaningAggregationMemoryGenerator

- (PGHolidayMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v10.receiver = self;
  v10.super_class = PGHolidayMeaningAggregationMemoryGenerator;
  v3 = [(PGMeaningAggregationMemoryGenerator *)&v10 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    momentRequirements = [(PGHolidayMeaningAggregationMemoryGenerator *)v3 momentRequirements];
    [momentRequirements setMinimumNumberOfAssetsInExtendedCuration:5];

    overTheYearsConfiguration = [(PGMeaningAggregationMemoryGenerator *)v4 overTheYearsConfiguration];
    [overTheYearsConfiguration setMinimumNumberOfYears:2];

    overTheYearsConfiguration2 = [(PGMeaningAggregationMemoryGenerator *)v4 overTheYearsConfiguration];
    [overTheYearsConfiguration2 setMinimumNumberOfMoments:2];

    overTheYearsConfiguration3 = [(PGMeaningAggregationMemoryGenerator *)v4 overTheYearsConfiguration];
    [overTheYearsConfiguration3 setMinimumNumberOfMomentsForTwoConsecutiveYears:2];

    [(PGMeaningAggregationMemoryGenerator *)v4 setFeaturedYearConfiguration:0];
  }

  return v4;
}

+ (id)supportedMeaningLabels
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HolidayEvent";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end