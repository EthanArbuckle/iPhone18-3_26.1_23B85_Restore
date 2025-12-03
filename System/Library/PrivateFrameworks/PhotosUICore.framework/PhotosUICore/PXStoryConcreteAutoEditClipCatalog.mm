@interface PXStoryConcreteAutoEditClipCatalog
- (PXStoryConcreteAutoEditClipCatalog)initWithCapacity:(int64_t)capacity;
- (id)clipForDisplayAsset:(id)asset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)indexOfClipForDisplayAsset:(id)asset;
- (void)enumerateClipsUsingBlock:(id)block;
@end

@implementation PXStoryConcreteAutoEditClipCatalog

- (int64_t)indexOfClipForDisplayAsset:(id)asset
{
  clipIndicesByAssetUUID = self->_clipIndicesByAssetUUID;
  assetCopy = asset;
  if (objc_opt_respondsToSelector())
  {
    [assetCopy alternateUUID];
  }

  else
  {
    [assetCopy uuid];
  }
  v5 = ;

  v6 = [(NSMutableDictionary *)clipIndicesByAssetUUID objectForKeyedSubscript:v5];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)enumerateClipsUsingBlock:(id)block
{
  blockCopy = block;
  orderedClips = self->_orderedClips;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PXStoryConcreteAutoEditClipCatalog_enumerateClipsUsingBlock___block_invoke;
  v7[3] = &unk_1E7740EB0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)orderedClips enumerateObjectsUsingBlock:v7];
}

- (id)clipForDisplayAsset:(id)asset
{
  clipIndicesByAssetUUID = self->_clipIndicesByAssetUUID;
  assetCopy = asset;
  if (objc_opt_respondsToSelector())
  {
    [assetCopy alternateUUID];
  }

  else
  {
    [assetCopy uuid];
  }
  v6 = ;

  v7 = [(NSMutableDictionary *)clipIndicesByAssetUUID objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_orderedClips, "objectAtIndexedSubscript:", [v7 unsignedIntegerValue]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [PXStoryConcreteMutableAutoEditClipCatalog allocWithZone:?];
  v6 = [(NSMutableArray *)self->_orderedClips mutableCopyWithZone:zone];
  orderedClips = v5->super._orderedClips;
  v5->super._orderedClips = v6;

  v8 = [(NSMutableDictionary *)self->_clipIndicesByAssetUUID mutableCopyWithZone:zone];
  clipIndicesByAssetUUID = v5->super._clipIndicesByAssetUUID;
  v5->super._clipIndicesByAssetUUID = v8;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PXStoryConcreteAutoEditClipCatalog allocWithZone:?];
  v6 = [(NSMutableArray *)self->_orderedClips copyWithZone:zone];
  orderedClips = v5->_orderedClips;
  v5->_orderedClips = v6;

  v8 = [(NSMutableDictionary *)self->_clipIndicesByAssetUUID copyWithZone:zone];
  clipIndicesByAssetUUID = v5->_clipIndicesByAssetUUID;
  v5->_clipIndicesByAssetUUID = v8;

  return v5;
}

- (PXStoryConcreteAutoEditClipCatalog)initWithCapacity:(int64_t)capacity
{
  if (capacity < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteAutoEditClipCatalog.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"capacity >= 0"}];
  }

  v13.receiver = self;
  v13.super_class = PXStoryConcreteAutoEditClipCatalog;
  v5 = [(PXStoryConcreteAutoEditClipCatalog *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    orderedClips = v5->_orderedClips;
    v5->_orderedClips = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
    clipIndicesByAssetUUID = v5->_clipIndicesByAssetUUID;
    v5->_clipIndicesByAssetUUID = v8;
  }

  return v5;
}

@end