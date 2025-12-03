@interface _PXAudioAssetArrayFetchResult
- (NSString)description;
- (_PXAudioAssetArrayFetchResult)initWithArray:(id)array;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation _PXAudioAssetArrayFetchResult

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  if ([(_PXAudioAssetArrayFetchResult *)self count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_assets objectAtIndexedSubscript:v5];
      blockCopy[2](blockCopy, v6, v5, &v8);
      v7 = v8;

      if (v7 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [(_PXAudioAssetArrayFetchResult *)self count]);
  }
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@; %p; Assets: %@>", objc_opt_class(), self, self->_assets];

  return v2;
}

- (_PXAudioAssetArrayFetchResult)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = _PXAudioAssetArrayFetchResult;
  v5 = [(_PXAudioAssetArrayFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [arrayCopy copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end