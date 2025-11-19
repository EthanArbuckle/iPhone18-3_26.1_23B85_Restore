@interface PGOverTheYearsMemoryConfiguration
+ (id)defaultFallbackOverTheYearsMemoryConfiguration;
+ (id)defaultOverTheYearsMemoryConfiguration;
+ (id)strictDefaultOverTheYearsMemoryConfiguration;
@end

@implementation PGOverTheYearsMemoryConfiguration

+ (id)defaultFallbackOverTheYearsMemoryConfiguration
{
  v2 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
  [v2 setMinimumNumberOfYears:3];
  [v2 setMinimumNumberOfMomentsForTwoConsecutiveYears:3];
  [v2 setMinimumMomentSpreadicityTimeInterval:1209600.0];
  [v2 setMinimumNumberOfRelevantAssets:13];

  return v2;
}

+ (id)strictDefaultOverTheYearsMemoryConfiguration
{
  v2 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
  [v2 setMinimumNumberOfMoments:4];
  [v2 setMinimumNumberOfMomentsForTwoConsecutiveYears:5];

  return v2;
}

+ (id)defaultOverTheYearsMemoryConfiguration
{
  v2 = objc_alloc_init(PGOverTheYearsMemoryConfiguration);
  [(PGOverTheYearsMemoryConfiguration *)v2 setMinimumNumberOfYears:3];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumNumberOfMoments:3];
  [(PGOverTheYearsMemoryConfiguration *)v2 setAllowTwoConsecutiveYears:1];
  [(PGOverTheYearsMemoryConfiguration *)v2 setMinimumNumberOfMomentsForTwoConsecutiveYears:4];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumOverallTimeIntervalOfMoments:47336400.0];
  [(PGOverTimeMemoryConfiguration *)v2 setMinimumMomentSpreadicityTimeInterval:1814400.0];

  return v2;
}

@end