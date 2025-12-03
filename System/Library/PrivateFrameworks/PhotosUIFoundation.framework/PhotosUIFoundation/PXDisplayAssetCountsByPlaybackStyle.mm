@interface PXDisplayAssetCountsByPlaybackStyle
- (BOOL)isEqual:(id)equal;
- (PXDisplayAssetCountsByPlaybackStyle)initWithAssetFetchResult:(id)result;
- (PXDisplayAssetCountsByPlaybackStyle)initWithCountsByPlaybackStyle:(id)style;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)countForPlaybackStyle:(int64_t)style;
- (int64_t)totalCount;
- (void)addPlaybackStyle:(int64_t)style;
- (void)enumerateCountsUsingBlock:(id)block;
- (void)setCount:(int64_t)count forPlaybackStyle:(int64_t)style;
@end

@implementation PXDisplayAssetCountsByPlaybackStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  countsByPlaybackStyle = self->_countsByPlaybackStyle;

  return [v4 initWithCountsByPlaybackStyle:countsByPlaybackStyle];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMutableDictionary *)self->_countsByPlaybackStyle isEqualToDictionary:equalCopy->_countsByPlaybackStyle];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)totalCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PXDisplayAssetCountsByPlaybackStyle_totalCount__block_invoke;
  v4[3] = &unk_1E7BB6A00;
  v4[4] = &v5;
  [(PXDisplayAssetCountsByPlaybackStyle *)self enumerateCountsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateCountsUsingBlock:(id)block
{
  blockCopy = block;
  countsByPlaybackStyle = self->_countsByPlaybackStyle;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PXDisplayAssetCountsByPlaybackStyle_enumerateCountsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BB69D8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)countsByPlaybackStyle enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __65__PXDisplayAssetCountsByPlaybackStyle_enumerateCountsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 integerValue];
  v9 = [v7 integerValue];

  v10 = *(v6 + 16);

  return v10(v6, v8, v9, a4);
}

- (void)setCount:(int64_t)count forPlaybackStyle:(int64_t)style
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  countsByPlaybackStyle = self->_countsByPlaybackStyle;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(NSMutableDictionary *)countsByPlaybackStyle setObject:v8 forKeyedSubscript:v7];
}

- (void)addPlaybackStyle:(int64_t)style
{
  v5 = [(PXDisplayAssetCountsByPlaybackStyle *)self countForPlaybackStyle:?]+ 1;

  [(PXDisplayAssetCountsByPlaybackStyle *)self setCount:v5 forPlaybackStyle:style];
}

- (int64_t)countForPlaybackStyle:(int64_t)style
{
  countsByPlaybackStyle = self->_countsByPlaybackStyle;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v5 = [(NSMutableDictionary *)countsByPlaybackStyle objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (PXDisplayAssetCountsByPlaybackStyle)initWithAssetFetchResult:(id)result
{
  resultCopy = result;
  v5 = [(PXDisplayAssetCountsByPlaybackStyle *)self init];
  if (v5)
  {
    v6 = [resultCopy count];
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [resultCopy objectAtIndex:i];
        -[PXDisplayAssetCountsByPlaybackStyle addPlaybackStyle:](v5, "addPlaybackStyle:", [v9 playbackStyle]);
      }
    }
  }

  return v5;
}

- (PXDisplayAssetCountsByPlaybackStyle)initWithCountsByPlaybackStyle:(id)style
{
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = PXDisplayAssetCountsByPlaybackStyle;
  v5 = [(PXDisplayAssetCountsByPlaybackStyle *)&v11 init];
  if (v5)
  {
    v6 = [styleCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    }

    countsByPlaybackStyle = v5->_countsByPlaybackStyle;
    v5->_countsByPlaybackStyle = v8;
  }

  return v5;
}

@end