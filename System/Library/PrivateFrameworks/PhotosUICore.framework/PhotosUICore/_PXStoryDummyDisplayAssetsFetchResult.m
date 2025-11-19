@interface _PXStoryDummyDisplayAssetsFetchResult
- (BOOL)containsObject:(id)a3;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXStoryDummyDisplayAssetsFetchResult)initWithResourcesDataSource:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)storyDisplayAssetAtIndex:(int64_t)a3;
- (id)thumbnailAssetAtIndex:(unint64_t)a3;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3;
- (void)configureWithRange:(_NSRange)a3;
- (void)dealloc;
- (void)setCount:(int64_t)a3;
@end

@implementation _PXStoryDummyDisplayAssetsFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:198 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult thumbnailAssetAtIndex:]"}];

  abort();
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:194 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult cachedCountOfAssetsWithMediaType:]"}];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:190 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult countOfAssetsWithMediaType:]"}];

  abort();
}

- (BOOL)containsObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:186 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult containsObject:]"}];

  abort();
}

- (PXDisplayAsset)lastObject
{
  v3 = [(_PXStoryDummyDisplayAssetsFetchResult *)self count];
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_PXStoryDummyDisplayAssetsFetchResult *)self objectAtIndexedSubscript:v3 - 1];
  }

  return v4;
}

- (PXDisplayAsset)firstObject
{
  if ([(_PXStoryDummyDisplayAssetsFetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXStoryDummyDisplayAssetsFetchResult *)self objectAtIndexedSubscript:0];
  }

  return v3;
}

- (id)objectsAtIndexes:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:173 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult objectsAtIndexes:]"}];

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

- (void)configureWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(_PXStoryDummyDisplayAssetsFetchResult *)self setCount:a3.length];
  if (length)
  {
    v6 = (length + 1) & 0xFFFFFFFFFFFFFFFELL;
    v7 = vdupq_n_s64(length - 1);
    v8 = xmmword_1A5301350;
    v9 = self->_resourceIndexes + 1;
    v10 = vdupq_n_s64(2uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v7, v8));
      if (v11.i8[0])
      {
        *(v9 - 1) = location;
      }

      if (v11.i8[4])
      {
        *v9 = location + 1;
      }

      v8 = vaddq_s64(v8, v10);
      location += 2;
      v9 += 2;
      v6 -= 2;
    }

    while (v6);
  }
}

- (void)dealloc
{
  free(self->_resourceIndexes);
  v3.receiver = self;
  v3.super_class = _PXStoryDummyDisplayAssetsFetchResult;
  [(_PXStoryDummyDisplayAssetsFetchResult *)&v3 dealloc];
}

- (_PXStoryDummyDisplayAssetsFetchResult)initWithResourcesDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXStoryDummyDisplayAssetsFetchResult;
  v6 = [(_PXStoryDummyDisplayAssetsFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcesDataSource, a3);
  }

  return v7;
}

@end