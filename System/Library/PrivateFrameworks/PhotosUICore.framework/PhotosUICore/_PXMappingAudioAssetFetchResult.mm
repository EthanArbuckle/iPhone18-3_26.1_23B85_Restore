@interface _PXMappingAudioAssetFetchResult
- (BOOL)containsObject:(id)object;
- (PXAudioAsset)firstObject;
- (PXAudioAsset)lastObject;
- (_PXMappingAudioAssetFetchResult)initWithFetchResult:(id)result block:(id)block;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation _PXMappingAudioAssetFetchResult

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  fetchResult = self->_fetchResult;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___PXMappingAudioAssetFetchResult_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7741030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(PXAudioAssetFetchResult *)fetchResult enumerateObjectsUsingBlock:v7];
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  fetchResult = self->_fetchResult;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___PXMappingAudioAssetFetchResult_containsObject___block_invoke;
  v8[3] = &unk_1E7741008;
  v6 = objectCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [(PXAudioAssetFetchResult *)fetchResult enumerateObjectsUsingBlock:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (id)objectsAtIndexes:(id)indexes
{
  [(PXAudioAssetFetchResult *)self->_fetchResult objectsAtIndexes:indexes];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

- (PXAudioAsset)lastObject
{
  if ([(_PXMappingAudioAssetFetchResult *)self count]< 1)
  {
    v5 = 0;
  }

  else
  {
    block = self->_block;
    lastObject = [(PXAudioAssetFetchResult *)self->_fetchResult lastObject];
    v5 = block[2](block, lastObject);
  }

  return v5;
}

- (PXAudioAsset)firstObject
{
  if ([(_PXMappingAudioAssetFetchResult *)self count]< 1)
  {
    v5 = 0;
  }

  else
  {
    block = self->_block;
    firstObject = [(PXAudioAssetFetchResult *)self->_fetchResult firstObject];
    v5 = block[2](block, firstObject);
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  block = self->_block;
  v4 = [(PXAudioAssetFetchResult *)self->_fetchResult objectAtIndexedSubscript:index];
  v5 = block[2](block, v4);

  return v5;
}

- (_PXMappingAudioAssetFetchResult)initWithFetchResult:(id)result block:(id)block
{
  resultCopy = result;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _PXMappingAudioAssetFetchResult;
  v9 = [(_PXMappingAudioAssetFetchResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchResult, result);
    v11 = [blockCopy copy];
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end