@interface _PXStoryPrecomposedDisplayAssetsFetchResult
- (BOOL)containsObject:(id)a3;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)storyDisplayAssetAtIndex:(int64_t)a3;
- (id)thumbnailAssetAtIndex:(unint64_t)a3;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3;
- (void)configureWithRange:(_NSRange)a3 resourcesDataSource:(id)a4;
- (void)dealloc;
@end

@implementation _PXStoryPrecomposedDisplayAssetsFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:336 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult thumbnailAssetAtIndex:]"}];

  abort();
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:332 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult cachedCountOfAssetsWithMediaType:]"}];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:328 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult countOfAssetsWithMediaType:]"}];

  abort();
}

- (BOOL)containsObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:324 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult containsObject:]"}];

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

- (id)objectsAtIndexes:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:311 description:{@"%s not implemented yet", "-[_PXStoryPrecomposedDisplayAssetsFetchResult objectsAtIndexes:]"}];

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

- (void)configureWithRange:(_NSRange)a3 resourcesDataSource:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
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
  self->_resourcesDataSource = v7;
}

- (void)dealloc
{
  free(self->_resourceIndexes);
  v3.receiver = self;
  v3.super_class = _PXStoryPrecomposedDisplayAssetsFetchResult;
  [(_PXStoryPrecomposedDisplayAssetsFetchResult *)&v3 dealloc];
}

@end