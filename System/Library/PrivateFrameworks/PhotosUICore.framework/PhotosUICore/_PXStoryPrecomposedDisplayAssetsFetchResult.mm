@interface _PXStoryPrecomposedDisplayAssetsFetchResult
- (BOOL)containsObject:(id)object;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (id)storyDisplayAssetAtIndex:(int64_t)index;
- (id)thumbnailAssetAtIndex:(unint64_t)index;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)type;
- (void)configureWithRange:(_NSRange)range resourcesDataSource:(id)source;
- (void)dealloc;
@end

@implementation _PXStoryPrecomposedDisplayAssetsFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:336 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult thumbnailAssetAtIndex:]"}];

  abort();
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:332 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult cachedCountOfAssetsWithMediaType:]"}];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:328 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult countOfAssetsWithMediaType:]"}];

  abort();
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:324 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult containsObject:]"}];

  abort();
}

- (PXDisplayAsset)lastObject
{
  v3 = [(_PXStoryPrecomposedDisplayAssetsFetchResult *)self count];
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_PXStoryPrecomposedDisplayAssetsFetchResult *)self objectAtIndexedSubscript:v3 - 1];
  }

  return v4;
}

- (PXDisplayAsset)firstObject
{
  if ([(_PXStoryPrecomposedDisplayAssetsFetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXStoryPrecomposedDisplayAssetsFetchResult *)self objectAtIndexedSubscript:0];
  }

  return v3;
}

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:311 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult objectsAtIndexes:]"}];

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

- (void)configureWithRange:(_NSRange)range resourcesDataSource:(id)source
{
  length = range.length;
  location = range.location;
  sourceCopy = source;
  [(_PXStoryPrecomposedDisplayAssetsFetchResult *)self setCount:length];
  if (length)
  {
    v8 = (length + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(length - 1);
    v10 = xmmword_1A5301350;
    v11 = self->_resourceIndexes + 1;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v10));
      if (v13.i8[0])
      {
        *(v11 - 1) = location;
      }

      if (v13.i8[4])
      {
        *v11 = location + 1;
      }

      v10 = vaddq_s64(v10, v12);
      location += 2;
      v11 += 2;
      v8 -= 2;
    }

    while (v8);
  }

  resourcesDataSource = self->_resourcesDataSource;
  self->_resourcesDataSource = sourceCopy;
}

- (void)dealloc
{
  free(self->_resourceIndexes);
  v3.receiver = self;
  v3.super_class = _PXStoryPrecomposedDisplayAssetsFetchResult;
  [(_PXStoryPrecomposedDisplayAssetsFetchResult *)&v3 dealloc];
}

@end