@interface PGMoodSourceGraphNode
- (id)_plistMoodIdentifiersWithGraph:(id)a3;
- (unint64_t)_sourceInputCount;
@end

@implementation PGMoodSourceGraphNode

- (unint64_t)_sourceInputCount
{
  v3 = [(PGMoodSource *)self options];
  v4 = [v3 momentIDs];
  v5 = [v4 count];

  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = PGMoodSourceGraphNode;
    return [(PGMoodSource *)&v7 _sourceInputCount];
  }

  return v5;
}

- (id)_plistMoodIdentifiersWithGraph:(id)a3
{
  v4 = a3;
  v5 = [(PGMoodSource *)self enrichedMemory];

  if (v5)
  {
    v6 = [(PGMoodSource *)self enrichedMemory];
    v7 = [v6 memoryMomentNodes];
    [PGMoodUtilities moodGraphNodeIdentifiersForMomentNodes:v7];
  }

  else
  {
    v6 = [(PGMoodSource *)self assetCollection];
    v7 = [(PGMoodSource *)self options];
    [PGMoodUtilities moodGraphNodeIdentifiersForAssetCollection:v6 withGraph:v4 moodOptions:v7];
  }
  v8 = ;

  return v8;
}

@end