@interface PUFilmstripMediaProviderResult
- (CGSize)targetSize;
- (int64_t)compare:(id)compare;
- (void)setActualTime:(id *)time;
@end

@implementation PUFilmstripMediaProviderResult

- (void)setActualTime:(id *)time
{
  v3 = *&time->var0;
  self->_actualTime.epoch = time->var3;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripMediaProvider.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[result isKindOfClass:[PUFilmstripMediaProviderResult class]]"}];
  }

  asset = self->_asset;
  asset = [compareCopy asset];
  v8 = [(PUFilmstripAsset *)asset compare:asset];

  return v8;
}

@end