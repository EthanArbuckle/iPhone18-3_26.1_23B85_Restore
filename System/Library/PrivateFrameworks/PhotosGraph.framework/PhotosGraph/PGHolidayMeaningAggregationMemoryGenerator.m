@interface PGHolidayMeaningAggregationMemoryGenerator
+ (id)supportedMeaningLabels;
- (PGHolidayMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
@end

@implementation PGHolidayMeaningAggregationMemoryGenerator

- (PGHolidayMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = PGHolidayMeaningAggregationMemoryGenerator;
  v3 = [(PGMeaningAggregationMemoryGenerator *)&v10 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PGHolidayMeaningAggregationMemoryGenerator *)v3 momentRequirements];
    [v5 setMinimumNumberOfAssetsInExtendedCuration:5];

    v6 = [(PGMeaningAggregationMemoryGenerator *)v4 overTheYearsConfiguration];
    [v6 setMinimumNumberOfYears:2];

    v7 = [(PGMeaningAggregationMemoryGenerator *)v4 overTheYearsConfiguration];
    [v7 setMinimumNumberOfMoments:2];

    v8 = [(PGMeaningAggregationMemoryGenerator *)v4 overTheYearsConfiguration];
    [v8 setMinimumNumberOfMomentsForTwoConsecutiveYears:2];

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