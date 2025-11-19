@interface PGFeaturedTimePeriodMemoryConfigurationBuilder
- (id)featuredTimePeriodMemoryConfiguration;
@end

@implementation PGFeaturedTimePeriodMemoryConfigurationBuilder

- (id)featuredTimePeriodMemoryConfiguration
{
  v3 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumNumberOfMoments:[(PGOverTimeMemoryConfigurationBuilder *)self minimumNumberOfMoments]];
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumNumberOfMomentsInterestingWithAlternateJunking:[(PGOverTimeMemoryConfigurationBuilder *)self minimumNumberOfMomentsInterestingWithAlternateJunking]];
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumNumberOfMomentsInterestingForMemories:[(PGOverTimeMemoryConfigurationBuilder *)self minimumNumberOfMomentsInterestingForMemories]];
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumNumberOfAssetsInExtendedCuration:[(PGOverTimeMemoryConfigurationBuilder *)self minimumNumberOfAssetsInExtendedCuration]];
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumNumberOfRelevantAssets:[(PGOverTimeMemoryConfigurationBuilder *)self minimumNumberOfRelevantAssets]];
  [(PGOverTimeMemoryConfigurationBuilder *)self aboveMomentAverageContentScoreThreshold];
  [(PGOverTimeMemoryConfiguration *)v3 setAboveMomentAverageContentScoreThreshold:?];
  [(PGOverTimeMemoryConfigurationBuilder *)self minimumOverallTimeIntervalOfMoments];
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumOverallTimeIntervalOfMoments:?];
  [(PGOverTimeMemoryConfigurationBuilder *)self minimumMomentSpreadicityTimeInterval];
  [(PGOverTimeMemoryConfiguration *)v3 setMinimumMomentSpreadicityTimeInterval:?];
  [(PGOverTimeMemoryConfiguration *)v3 setAllMomentsMustHaveScenesProcessed:[(PGOverTimeMemoryConfigurationBuilder *)self allMomentsMustHaveScenesProcessed]];
  [(PGOverTimeMemoryConfiguration *)v3 setAllMomentsMustHaveFacesProcessed:[(PGOverTimeMemoryConfigurationBuilder *)self allMomentsMustHaveFacesProcessed]];

  return v3;
}

@end