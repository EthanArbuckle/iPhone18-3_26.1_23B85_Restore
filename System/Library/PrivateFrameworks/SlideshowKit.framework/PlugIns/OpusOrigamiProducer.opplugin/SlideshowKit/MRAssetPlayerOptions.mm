@interface MRAssetPlayerOptions
- (CGSize)resolutionIfEmbeddedAsset;
- (MRAssetPlayerOptions)init;
- (void)dealloc;
- (void)setInitialImage:(id)image;
@end

@implementation MRAssetPlayerOptions

- (MRAssetPlayerOptions)init
{
  v8.receiver = self;
  v8.super_class = MRAssetPlayerOptions;
  result = [(MRAssetPlayerOptions *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    result->_resolutionIfEmbeddedAsset = _Q0;
    result->_stillTime = -1.0;
  }

  return result;
}

- (void)dealloc
{
  [(MRImage *)self->_initialImage releaseByUser];
  self->_initialImage = 0;
  v3.receiver = self;
  v3.super_class = MRAssetPlayerOptions;
  [(MRAssetPlayerOptions *)&v3 dealloc];
}

- (void)setInitialImage:(id)image
{
  initialImage = self->_initialImage;
  if (initialImage != image)
  {
    [(MRImage *)initialImage releaseByUser];
    self->_initialImage = [image retainByUser];
  }
}

- (CGSize)resolutionIfEmbeddedAsset
{
  width = self->_resolutionIfEmbeddedAsset.width;
  height = self->_resolutionIfEmbeddedAsset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end