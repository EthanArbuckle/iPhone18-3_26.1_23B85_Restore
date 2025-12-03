@interface PXStoryMovieHighlightsConcreteMutableCollection
- (void)setMovieHighlightCuration:(id)curation forDisplayAsset:(id)asset;
- (void)setMovieHighlightCurations:(id)curations forDisplayAssets:(id)assets;
@end

@implementation PXStoryMovieHighlightsConcreteMutableCollection

- (void)setMovieHighlightCurations:(id)curations forDisplayAssets:(id)assets
{
  curationsCopy = curations;
  assetsCopy = assets;
  v8 = [curationsCopy count];
  if (v8 != [assetsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMovieHighlightsConcreteCollection.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"movieHighlightCurations.count == displayAssets.count"}];
  }

  if ([assetsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [curationsCopy objectAtIndexedSubscript:v9];
      v11 = [assetsCopy objectAtIndexedSubscript:v9];
      [(PXStoryMovieHighlightsConcreteMutableCollection *)self setMovieHighlightCuration:v10 forDisplayAsset:v11];

      ++v9;
    }

    while (v9 < [assetsCopy count]);
  }
}

- (void)setMovieHighlightCuration:(id)curation forDisplayAsset:(id)asset
{
  highlightsByAssetId = self->super._highlightsByAssetId;
  curationCopy = curation;
  uuid = [asset uuid];
  [(NSMutableDictionary *)highlightsByAssetId setObject:curationCopy forKeyedSubscript:uuid];
}

@end