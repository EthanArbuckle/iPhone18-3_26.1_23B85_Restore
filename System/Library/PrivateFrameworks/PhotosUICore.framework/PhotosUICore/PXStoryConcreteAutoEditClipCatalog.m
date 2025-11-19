@interface PXStoryConcreteAutoEditClipCatalog
- (PXStoryConcreteAutoEditClipCatalog)initWithCapacity:(int64_t)a3;
- (id)clipForDisplayAsset:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)indexOfClipForDisplayAsset:(id)a3;
- (void)enumerateClipsUsingBlock:(id)a3;
@end

@implementation PXStoryConcreteAutoEditClipCatalog

- (int64_t)indexOfClipForDisplayAsset:(id)a3
{
  clipIndicesByAssetUUID = self->_clipIndicesByAssetUUID;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 alternateUUID];
  }

  else
  {
    [v4 uuid];
  }
  v5 = ;

  v6 = [(NSMutableDictionary *)clipIndicesByAssetUUID objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)enumerateClipsUsingBlock:(id)a3
{
  v4 = a3;
  orderedClips = self->_orderedClips;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PXStoryConcreteAutoEditClipCatalog_enumerateClipsUsingBlock___block_invoke;
  v7[3] = &unk_1E7740EB0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)orderedClips enumerateObjectsUsingBlock:v7];
}

- (id)clipForDisplayAsset:(id)a3
{
  clipIndicesByAssetUUID = self->_clipIndicesByAssetUUID;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v5 alternateUUID];
  }

  else
  {
    [v5 uuid];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [PXStoryConcreteMutableAutoEditClipCatalog allocWithZone:?];
  v6 = [(NSMutableArray *)self->_orderedClips mutableCopyWithZone:a3];
  orderedClips = v5->super._orderedClips;
  v5->super._orderedClips = v6;

  v8 = [(NSMutableDictionary *)self->_clipIndicesByAssetUUID mutableCopyWithZone:a3];
  clipIndicesByAssetUUID = v5->super._clipIndicesByAssetUUID;
  v5->super._clipIndicesByAssetUUID = v8;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PXStoryConcreteAutoEditClipCatalog allocWithZone:?];
  v6 = [(NSMutableArray *)self->_orderedClips copyWithZone:a3];
  orderedClips = v5->_orderedClips;
  v5->_orderedClips = v6;

  v8 = [(NSMutableDictionary *)self->_clipIndicesByAssetUUID copyWithZone:a3];
  clipIndicesByAssetUUID = v5->_clipIndicesByAssetUUID;
  v5->_clipIndicesByAssetUUID = v8;

  return v5;
}

- (PXStoryConcreteAutoEditClipCatalog)initWithCapacity:(int64_t)a3
{
  if (a3 < 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteAutoEditClipCatalog.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"capacity >= 0"}];
  }

  v13.receiver = self;
  v13.super_class = PXStoryConcreteAutoEditClipCatalog;
  v5 = [(PXStoryConcreteAutoEditClipCatalog *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    orderedClips = v5->_orderedClips;
    v5->_orderedClips = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
    clipIndicesByAssetUUID = v5->_clipIndicesByAssetUUID;
    v5->_clipIndicesByAssetUUID = v8;
  }

  return v5;
}

@end