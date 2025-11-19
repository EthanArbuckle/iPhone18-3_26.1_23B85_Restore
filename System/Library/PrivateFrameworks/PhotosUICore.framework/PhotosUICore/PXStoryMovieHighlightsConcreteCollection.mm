@interface PXStoryMovieHighlightsConcreteCollection
- (PXStoryMovieHighlightsConcreteCollection)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)movieHighlightsForDisplayAsset:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation PXStoryMovieHighlightsConcreteCollection

- (id)movieHighlightsForDisplayAsset:(id)a3
{
  highlightsByAssetId = self->_highlightsByAssetId;
  v4 = [a3 uuid];
  v5 = [(NSMutableDictionary *)highlightsByAssetId objectForKeyedSubscript:v4];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [PXStoryMovieHighlightsConcreteMutableCollection allocWithZone:?];
  v6 = [(NSMutableDictionary *)self->_highlightsByAssetId mutableCopyWithZone:a3];
  highlightsByAssetId = v5->super._highlightsByAssetId;
  v5->super._highlightsByAssetId = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PXStoryMovieHighlightsConcreteCollection allocWithZone:?];
  v6 = [(NSMutableDictionary *)self->_highlightsByAssetId mutableCopyWithZone:a3];
  highlightsByAssetId = v5->_highlightsByAssetId;
  v5->_highlightsByAssetId = v6;

  return v5;
}

- (PXStoryMovieHighlightsConcreteCollection)init
{
  v6.receiver = self;
  v6.super_class = PXStoryMovieHighlightsConcreteCollection;
  v2 = [(PXStoryMovieHighlightsConcreteCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    highlightsByAssetId = v2->_highlightsByAssetId;
    v2->_highlightsByAssetId = v3;
  }

  return v2;
}

@end