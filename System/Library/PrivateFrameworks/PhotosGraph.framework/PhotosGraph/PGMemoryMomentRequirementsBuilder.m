@interface PGMemoryMomentRequirementsBuilder
- (id)memoryMomentRequirements;
@end

@implementation PGMemoryMomentRequirementsBuilder

- (id)memoryMomentRequirements
{
  v3 = objc_alloc_init(PGMemoryMomentRequirements);
  [(PGMemoryMomentRequirements *)v3 setFilterUninterestingWithAlternateJunking:[(PGMemoryMomentRequirementsBuilder *)self filterUninterestingWithAlternateJunking]];
  [(PGMemoryMomentRequirements *)v3 setFilterUninterestingForMemories:[(PGMemoryMomentRequirementsBuilder *)self filterUninterestingForMemories]];
  [(PGMemoryMomentRequirements *)v3 setFilterMomentsWithNotEnoughScenesProcessed:[(PGMemoryMomentRequirementsBuilder *)self filterMomentsWithNotEnoughScenesProcessed]];
  [(PGMemoryMomentRequirements *)v3 setMinimumNumberOfRelevantAssets:[(PGMemoryMomentRequirementsBuilder *)self minimumNumberOfRelevantAssets]];
  [(PGMemoryMomentRequirements *)v3 setMinimumNumberOfAssetsInExtendedCuration:[(PGMemoryMomentRequirementsBuilder *)self minimumNumberOfAssetsInExtendedCuration]];
  [(PGMemoryMomentRequirementsBuilder *)self aboveContentScoreThreshold];
  [(PGMemoryMomentRequirements *)v3 setAboveContentScoreThreshold:?];
  [(PGMemoryMomentRequirements *)v3 setMinimumNumberOfPersons:[(PGMemoryMomentRequirementsBuilder *)self minimumNumberOfPersons]];

  return v3;
}

@end