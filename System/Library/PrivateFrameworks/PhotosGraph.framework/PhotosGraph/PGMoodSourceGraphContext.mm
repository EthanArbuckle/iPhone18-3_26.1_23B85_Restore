@interface PGMoodSourceGraphContext
- (id)_plistMoodIdentifiersWithGraph:(id)graph;
@end

@implementation PGMoodSourceGraphContext

- (id)_plistMoodIdentifiersWithGraph:(id)graph
{
  graphCopy = graph;
  enrichedMemory = [(PGMoodSource *)self enrichedMemory];

  if (enrichedMemory)
  {
    enrichedMemory2 = [(PGMoodSource *)self enrichedMemory];
    memoryMomentNodes = [enrichedMemory2 memoryMomentNodes];
    options = [(PGMoodSource *)self options];
    v9 = [PGMoodUtilities moodGraphContextIdentifiersForMomentNodes:memoryMomentNodes inGraph:graphCopy moodOptions:options];

    graphCopy = options;
  }

  else
  {
    enrichedMemory2 = [(PGMoodSource *)self assetCollection];
    memoryMomentNodes = [(PGMoodSource *)self options];
    v9 = [PGMoodUtilities moodGraphContextIdentifiersForAssetCollection:enrichedMemory2 withGraph:graphCopy moodOptions:memoryMomentNodes];
  }

  return v9;
}

@end