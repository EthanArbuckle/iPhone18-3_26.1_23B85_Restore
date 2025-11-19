@interface _PXAudioAssetArrayFetchResult
- (NSString)description;
- (_PXAudioAssetArrayFetchResult)initWithArray:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation _PXAudioAssetArrayFetchResult

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([(_PXAudioAssetArrayFetchResult *)self count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_assets objectAtIndexedSubscript:v5];
      v4[2](v4, v6, v5, &v8);
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

- (_PXAudioAssetArrayFetchResult)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _PXAudioAssetArrayFetchResult;
  v5 = [(_PXAudioAssetArrayFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end