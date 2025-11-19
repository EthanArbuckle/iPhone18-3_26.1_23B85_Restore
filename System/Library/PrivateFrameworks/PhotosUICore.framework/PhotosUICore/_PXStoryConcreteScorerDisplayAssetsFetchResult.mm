@interface _PXStoryConcreteScorerDisplayAssetsFetchResult
- (BOOL)containsObject:(id)a3;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)storyDisplayAssetAtIndex:(int64_t)a3;
- (id)thumbnailAssetAtIndex:(unint64_t)a3;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3;
- (void)addResourceWithIndex:(int64_t)a3;
- (void)dealloc;
- (void)setCount:(int64_t)a3;
@end

@implementation _PXStoryConcreteScorerDisplayAssetsFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:475 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult thumbnailAssetAtIndex:]"}];

  abort();
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:471 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult cachedCountOfAssetsWithMediaType:]"}];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:467 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult countOfAssetsWithMediaType:]"}];

  abort();
}

- (BOOL)containsObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:463 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult containsObject:]"}];

  abort();
}

- (PXDisplayAsset)lastObject
{
  v3 = [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self count];
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self objectAtIndexedSubscript:v3 - 1];
  }

  return v4;
}

- (PXDisplayAsset)firstObject
{
  if ([(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self objectAtIndexedSubscript:0];
  }

  return v3;
}

- (id)objectsAtIndexes:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:450 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult objectsAtIndexes:]"}];

  abort();
}

- (id)objectAtIndex:(unint64_t)a3
{
  v3 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource displayAssetResourceAtIndex:self->_resourceIndexes[a3]];
  v4 = [v3 px_storyResourceDisplayAsset];

  return v4;
}

- (id)storyDisplayAssetAtIndex:(int64_t)a3
{
  asset = self->_asset;
  if (!asset)
  {
    v6 = objc_alloc_init(PXStoryReusableDisplayAsset);
    v7 = self->_asset;
    self->_asset = v6;

    asset = self->_asset;
  }

  [(PXStoryReusableDisplayAsset *)asset configureWithDisplayResourceIndex:self->_resourceIndexes[a3] resourcesDataSource:self->_resourcesDataSource];
  v8 = self->_asset;

  return v8;
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    _PXGArrayCapacityResizeToCount();
  }
}

- (void)addResourceWithIndex:(int64_t)a3
{
  v5 = [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self count];
  [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self setCount:[(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self count]+ 1];
  self->_resourceIndexes[v5] = a3;
}

- (void)dealloc
{
  free(self->_resourceIndexes);
  v3.receiver = self;
  v3.super_class = _PXStoryConcreteScorerDisplayAssetsFetchResult;
  [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)&v3 dealloc];
}

@end