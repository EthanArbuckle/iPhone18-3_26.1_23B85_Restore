@interface PUFilmstripMediaProviderResult
- (CGSize)targetSize;
- (int64_t)compare:(id)a3;
- (void)setActualTime:(id *)a3;
@end

@implementation PUFilmstripMediaProviderResult

- (void)setActualTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_actualTime.epoch = a3->var3;
  *&self->_actualTime.value = v3;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)compare:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUFilmstripMediaProvider.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[result isKindOfClass:[PUFilmstripMediaProviderResult class]]"}];
  }

  asset = self->_asset;
  v7 = [v5 asset];
  v8 = [(PUFilmstripAsset *)asset compare:v7];

  return v8;
}

@end