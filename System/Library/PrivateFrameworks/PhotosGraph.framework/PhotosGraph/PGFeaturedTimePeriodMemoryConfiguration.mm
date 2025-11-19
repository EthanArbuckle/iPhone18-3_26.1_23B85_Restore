@interface PGFeaturedTimePeriodMemoryConfiguration
+ (id)defaultFallbackFeaturedYearMemoryConfiguration;
+ (id)defaultFeaturedSeasonMemoryConfiguration;
+ (id)defaultFeaturedYearMemoryConfiguration;
+ (id)strictDefaultFeaturedYearMemoryConfiguration;
@end

@implementation PGFeaturedTimePeriodMemoryConfiguration

+ (id)defaultFeaturedSeasonMemoryConfiguration
{
  v2 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumNumberOfMoments:5];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumOverallTimeIntervalOfMoments:5259600.0];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumMomentSpreadicityTimeInterval:604800.0];

  return v2;
}

+ (id)defaultFallbackFeaturedYearMemoryConfiguration
{
  v2 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumNumberOfMoments:3];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumOverallTimeIntervalOfMoments:13149000.0];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumMomentSpreadicityTimeInterval:604800.0];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumNumberOfRelevantAssets:13];

  return v2;
}

+ (id)strictDefaultFeaturedYearMemoryConfiguration
{
  v2 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedYearMemoryConfiguration];
  [v2 setMinimumNumberOfMoments:5];

  return v2;
}

+ (id)defaultFeaturedYearMemoryConfiguration
{
  v2 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumNumberOfMoments:4];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumOverallTimeIntervalOfMoments:13149000.0];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumMomentSpreadicityTimeInterval:1209600.0];

  return v2;
}

@end