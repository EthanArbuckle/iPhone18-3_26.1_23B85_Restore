@interface VILazyImage
- (BOOL)isLoaded;
- (CGSize)imageSize;
- (VILazyImage)initWithImageLoader:(id)a3 imageSize:(CGSize)a4;
- (__CVBuffer)pixelBuffer;
- (id)_image;
- (unsigned)orientation;
- (void)_loadImageIfPossible;
- (void)dealloc;
@end

@implementation VILazyImage

- (VILazyImage)initWithImageLoader:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VILazyImage;
  v8 = [(VILazyImage *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v7 copy];
    loader = v9->_loader;
    v9->_loader = v10;

    v9->_knownImageSize.width = width;
    v9->_knownImageSize.height = height;
  }

  return v9;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  loader = self->_loader;
  self->_loader = 0;

  image = self->_image;
  self->_image = 0;

  os_unfair_lock_unlock(&self->_lock);
  v5.receiver = self;
  v5.super_class = VILazyImage;
  [(VILazyImage *)&v5 dealloc];
}

- (__CVBuffer)pixelBuffer
{
  v2 = [(VILazyImage *)self _image];
  v3 = [v2 pixelBuffer];

  return v3;
}

- (unsigned)orientation
{
  v2 = [(VILazyImage *)self _image];
  v3 = [v2 orientation];

  return v3;
}

- (BOOL)isLoaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_image != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (CGSize)imageSize
{
  os_unfair_lock_lock(&self->_lock);
  width = self->_knownImageSize.width;
  height = self->_knownImageSize.height;
  v5 = width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8);
  if (v5 || self->_image)
  {
    [(VILazyImage *)self _loadImageIfPossible];
    [(VIImage *)self->_image imageSize];
    width = v6;
    height = v7;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_image
{
  os_unfair_lock_lock(&self->_lock);
  [(VILazyImage *)self _loadImageIfPossible];
  v3 = self->_image;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_loadImageIfPossible
{
  if (!self->_image)
  {
    loader = self->_loader;
    if (loader)
    {
      v4 = loader[2](loader, a2);
      image = self->_image;
      self->_image = v4;

      v6 = self->_loader;
      self->_loader = 0;
    }
  }
}

@end