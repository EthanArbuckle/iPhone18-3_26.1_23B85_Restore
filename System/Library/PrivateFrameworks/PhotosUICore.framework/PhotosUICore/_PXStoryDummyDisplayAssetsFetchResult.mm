@interface _PXStoryDummyDisplayAssetsFetchResult
- (BOOL)containsObject:(id)object;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXStoryDummyDisplayAssetsFetchResult)initWithResourcesDataSource:(id)source;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (id)storyDisplayAssetAtIndex:(int64_t)index;
- (id)thumbnailAssetAtIndex:(unint64_t)index;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)type;
- (void)configureWithRange:(_NSRange)range;
- (void)dealloc;
- (void)setCount:(int64_t)count;
@end

@implementation _PXStoryDummyDisplayAssetsFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:198 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult thumbnailAssetAtIndex:]"}];

  abort();
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:194 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult cachedCountOfAssetsWithMediaType:]"}];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:190 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult countOfAssetsWithMediaType:]"}];

  abort();
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:186 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult containsObject:]"}];

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

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimelineProducer.m" lineNumber:173 description:{@"%s not implemented yet", "-[_PXStoryDummyDisplayAssetsFetchResult objectsAtIndexes:]"}];

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

- (void)configureWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(_PXStoryDummyDisplayAssetsFetchResult *)self setCount:range.length];
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

- (_PXStoryDummyDisplayAssetsFetchResult)initWithResourcesDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = _PXStoryDummyDisplayAssetsFetchResult;
  v6 = [(_PXStoryDummyDisplayAssetsFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcesDataSource, source);
  }

  return v7;
}

@end