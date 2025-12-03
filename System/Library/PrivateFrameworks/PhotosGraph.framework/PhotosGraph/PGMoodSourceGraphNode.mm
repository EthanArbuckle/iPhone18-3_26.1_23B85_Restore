@interface PGMoodSourceGraphNode
- (id)_plistMoodIdentifiersWithGraph:(id)graph;
- (unint64_t)_sourceInputCount;
@end

@implementation PGMoodSourceGraphNode

- (unint64_t)_sourceInputCount
{
  options = [(PGMoodSource *)self options];
  momentIDs = [options momentIDs];
  v5 = [momentIDs count];

  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = PGMoodSourceGraphNode;
    return [(PGMoodSource *)&v7 _sourceInputCount];
  }

  return v5;
}

- (id)_plistMoodIdentifiersWithGraph:(id)graph
{
  graphCopy = graph;
  enrichedMemory = [(PGMoodSource *)self enrichedMemory];

  if (enrichedMemory)
  {
    enrichedMemory2 = [(PGMoodSource *)self enrichedMemory];
    memoryMomentNodes = [enrichedMemory2 memoryMomentNodes];
    [PGMoodUtilities moodGraphNodeIdentifiersForMomentNodes:memoryMomentNodes];
  }

  else
  {
    enrichedMemory2 = [(PGMoodSource *)self assetCollection];
    memoryMomentNodes = [(PGMoodSource *)self options];
    [PGMoodUtilities moodGraphNodeIdentifiersForAssetCollection:enrichedMemory2 withGraph:graphCopy moodOptions:memoryMomentNodes];
  }
  v8 = ;

  return v8;
}

@end