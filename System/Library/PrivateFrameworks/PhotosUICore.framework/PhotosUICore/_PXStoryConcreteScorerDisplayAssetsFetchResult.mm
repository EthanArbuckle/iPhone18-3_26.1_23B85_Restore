@interface _PXStoryConcreteScorerDisplayAssetsFetchResult
- (BOOL)containsObject:(id)object;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (id)storyDisplayAssetAtIndex:(int64_t)index;
- (id)thumbnailAssetAtIndex:(unint64_t)index;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)type;
- (void)addResourceWithIndex:(int64_t)index;
- (void)dealloc;
- (void)setCount:(int64_t)count;
@end

@implementation _PXStoryConcreteScorerDisplayAssetsFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:475 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult thumbnailAssetAtIndex:]"}];

  abort();
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:471 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult cachedCountOfAssetsWithMediaType:]"}];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:467 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult countOfAssetsWithMediaType:]"}];

  abort();
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:463 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult containsObject:]"}];

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

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:450 description:{@"%s not implemented yet", "-[_PXStoryConcreteScorerDisplayAssetsFetchResult objectsAtIndexes:]"}];

  abort();
}

- (id)objectAtIndex:(unint64_t)index
{
  v3 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource displayAssetResourceAtIndex:self->_resourceIndexes[index]];
  px_storyResourceDisplayAsset = [v3 px_storyResourceDisplayAsset];

  return px_storyResourceDisplayAsset;
}

- (id)storyDisplayAssetAtIndex:(int64_t)index
{
  asset = self->_asset;
  if (!asset)
  {
    v6 = objc_alloc_init(PXStoryReusableDisplayAsset);
    v7 = self->_asset;
    self->_asset = v6;

    asset = self->_asset;
  }

  [(PXStoryReusableDisplayAsset *)asset configureWithDisplayResourceIndex:self->_resourceIndexes[index] resourcesDataSource:self->_resourcesDataSource];
  v8 = self->_asset;

  return v8;
}

- (void)setCount:(int64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    _PXGArrayCapacityResizeToCount();
  }
}

- (void)addResourceWithIndex:(int64_t)index
{
  v5 = [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self count];
  [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self setCount:[(_PXStoryConcreteScorerDisplayAssetsFetchResult *)self count]+ 1];
  self->_resourceIndexes[v5] = index;
}

- (void)dealloc
{
  free(self->_resourceIndexes);
  v3.receiver = self;
  v3.super_class = _PXStoryConcreteScorerDisplayAssetsFetchResult;
  [(_PXStoryConcreteScorerDisplayAssetsFetchResult *)&v3 dealloc];
}

@end