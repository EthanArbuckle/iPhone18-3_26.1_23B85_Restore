@interface PXStoryMovieHighlightsConcreteMutableCollection
- (void)setMovieHighlightCuration:(id)a3 forDisplayAsset:(id)a4;
- (void)setMovieHighlightCurations:(id)a3 forDisplayAssets:(id)a4;
@end

@implementation PXStoryMovieHighlightsConcreteMutableCollection

- (void)setMovieHighlightCurations:(id)a3 forDisplayAssets:(id)a4
{
  v13 = a3;
  v7 = a4;
  v8 = [v13 count];
  if (v8 != [v7 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryMovieHighlightsConcreteCollection.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"movieHighlightCurations.count == displayAssets.count"}];
  }

  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v10 = [v13 objectAtIndexedSubscript:v9];
      v11 = [v7 objectAtIndexedSubscript:v9];
      [(PXStoryMovieHighlightsConcreteMutableCollection *)self setMovieHighlightCuration:v10 forDisplayAsset:v11];

      ++v9;
    }

    while (v9 < [v7 count]);
  }
}

- (void)setMovieHighlightCuration:(id)a3 forDisplayAsset:(id)a4
{
  highlightsByAssetId = self->super._highlightsByAssetId;
  v6 = a3;
  v7 = [a4 uuid];
  [(NSMutableDictionary *)highlightsByAssetId setObject:v6 forKeyedSubscript:v7];
}

@end