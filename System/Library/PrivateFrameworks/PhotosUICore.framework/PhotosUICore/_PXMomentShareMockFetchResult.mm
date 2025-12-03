@interface _PXMomentShareMockFetchResult
+ (id)momentShareMockFetchResultWithPhotosCount:(unint64_t)count videosCount:(unint64_t)videosCount;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXMomentShareMockFetchResult)initWithAssets:(id)assets;
@end

@implementation _PXMomentShareMockFetchResult

- (PXDisplayAsset)lastObject
{
  if ([(_PXMomentShareMockFetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXMomentShareMockFetchResult *)self objectAtIndex:[(_PXMomentShareMockFetchResult *)self count]- 1];
  }

  return v3;
}

- (PXDisplayAsset)firstObject
{
  if ([(_PXMomentShareMockFetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXMomentShareMockFetchResult *)self objectAtIndex:0];
  }

  return v3;
}

- (_PXMomentShareMockFetchResult)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = _PXMomentShareMockFetchResult;
  v6 = [(_PXMomentShareMockFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assets, assets);
  }

  return v7;
}

+ (id)momentShareMockFetchResultWithPhotosCount:(unint64_t)count videosCount:(unint64_t)videosCount
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); count; --count)
  {
    v7 = objc_alloc_init(_PXMomentShareMockDisplayAsset);
    [(_PXMomentShareMockDisplayAsset *)v7 setMediaType:1];
    [i addObject:v7];
  }

  for (; videosCount; --videosCount)
  {
    v8 = objc_alloc_init(_PXMomentShareMockDisplayAsset);
    [(_PXMomentShareMockDisplayAsset *)v8 setMediaType:2];
    [i addObject:v8];
  }

  v9 = [[_PXMomentShareMockFetchResult alloc] initWithAssets:i];

  return v9;
}

@end