@interface PXSyntheticAssetsDataSourceBuilder
- (NSArray)assetCollections;
- (NSArray)assetsBySection;
- (PXSyntheticAssetsDataSourceBuilder)init;
- (void)appendDisplayAssetSectionWithCount:(int64_t)count assetCollection:(id)collection assetBlock:(id)block;
- (void)appendDisplayAssetsWithCount:(int64_t)count assetBlock:(id)block;
@end

@implementation PXSyntheticAssetsDataSourceBuilder

- (void)appendDisplayAssetsWithCount:(int64_t)count assetBlock:(id)block
{
  blockCopy = block;
  if (count <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceBuilder.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  lastObject = [(NSMutableArray *)self->_mutableAssetsBySection lastObject];
  if (!lastObject)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceBuilder.m" lineNumber:51 description:@"Append may not be called before there are any sections"];
  }

  v8 = [(NSMutableArray *)self->_mutableAssetsBySection count];
  v9 = [lastObject count];
  if (count >= 1)
  {
    v10 = v9;
    v11 = v8 - 1;
    do
    {
      v12 = blockCopy[2](blockCopy, v11, v10);
      [lastObject addObject:v12];

      ++v10;
      --count;
    }

    while (count);
  }
}

- (void)appendDisplayAssetSectionWithCount:(int64_t)count assetCollection:(id)collection assetBlock:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  v10 = blockCopy;
  if (count && !blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceBuilder.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"assetBlock != nil || count == 0"}];
  }

  v11 = [(NSMutableArray *)self->_mutableAssetsBySection count];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
  if (count >= 1)
  {
    v13 = 0;
    do
    {
      v14 = v10[2](v10, v11, v13);
      [v12 addObject:v14];

      ++v13;
    }

    while (count != v13);
  }

  [(NSMutableArray *)self->_mutableAssetsBySection addObject:v12];
  mutableAssetCollections = self->_mutableAssetCollections;
  v16 = [collectionCopy copyWithZone:0];
  [(NSMutableArray *)mutableAssetCollections addObject:v16];
}

- (NSArray)assetCollections
{
  v2 = [(NSMutableArray *)self->_mutableAssetCollections copy];

  return v2;
}

- (NSArray)assetsBySection
{
  v2 = [(NSMutableArray *)self->_mutableAssetsBySection copy];

  return v2;
}

- (PXSyntheticAssetsDataSourceBuilder)init
{
  v8.receiver = self;
  v8.super_class = PXSyntheticAssetsDataSourceBuilder;
  v2 = [(PXSyntheticAssetsDataSourceBuilder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableAssetsBySection = v2->_mutableAssetsBySection;
    v2->_mutableAssetsBySection = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableAssetCollections = v2->_mutableAssetCollections;
    v2->_mutableAssetCollections = v5;
  }

  return v2;
}

@end