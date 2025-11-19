@interface MRAssetPlayerStillImage
- (MRAssetPlayerStillImage)initWithPath:(id)a3 size:(CGSize)a4 master:(id)a5 andOptions:(id)a6;
- (id)retainedByUserImageAtTime:(double)a3 displayLinkTimestamp:(double)a4;
- (void)dealloc;
- (void)loadForTime:(double)a3;
@end

@implementation MRAssetPlayerStillImage

- (MRAssetPlayerStillImage)initWithPath:(id)a3 size:(CGSize)a4 master:(id)a5 andOptions:(id)a6
{
  v8.receiver = self;
  v8.super_class = MRAssetPlayerStillImage;
  v6 = [(MRAssetPlayer *)&v8 initWithPath:a3 size:a5 master:a6 andOptions:a4.width, a4.height];
  if (v6)
  {
    v6->_semaphore = dispatch_semaphore_create(0);
  }

  return v6;
}

- (void)dealloc
{
  [(MRImage *)self->super._image releaseByUser];
  self->super._image = 0;
  semaphore = self->_semaphore;
  if (semaphore)
  {
    dispatch_release(semaphore);
    self->_semaphore = 0;
  }

  v4.receiver = self;
  v4.super_class = MRAssetPlayerStillImage;
  [(MRAssetPlayer *)&v4 dealloc];
}

- (id)retainedByUserImageAtTime:(double)a3 displayLinkTimestamp:(double)a4
{
  if (self->_isLoaded)
  {
    v5 = [(MRImage *)self->super._image retainByUser:a3];
    semaphore = self->_semaphore;
    if (semaphore)
    {
      dispatch_release(semaphore);
      self->_semaphore = 0;
    }

    return v5;
  }

  objc_sync_enter(self);
  image = self->super._image;
  if ((image || self->super._thumbnailIsOK && (image = [-[MRAssetMaster thumbnailForFlagsMonochromatic:mipmap:powerOfTwo:](self->super._master thumbnailForFlagsMonochromatic:self->super._isMonochromatic mipmap:self->super._generatesMipmap powerOfTwo:{self->super._usesPowerOfTwo), "retainByUser"}], (self->super._image = image) != 0)) && (self->_isLoaded || self->super._thumbnailIsOK))
  {
    v5 = [(MRImage *)image retainByUser];
    objc_sync_exit(self);
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    objc_sync_exit(self);
  }

  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(self->_semaphore);
  v9 = self->super._image;

  return [(MRImage *)v9 retainByUser];
}

- (void)loadForTime:(double)a3
{
  if (!self->_isLoaded)
  {
    objc_sync_enter(self);
    if (self->_isLoadingOrLoaded)
    {

      objc_sync_exit(self);
    }

    else
    {
      self->_isLoadingOrLoaded = 1;
      objc_sync_exit(self);
      Image = _GetImage(self->super._master, self->super._isMonochromatic, self->super._generatesMipmap, self->super._usesPowerOfTwo, 0, !self->super._thumbnailIsOK, self->super._size.width, self->super._size.height, self->super._time);
      objc_sync_enter(self);
      v5 = self->super._image;
      if (v5)
      {
        [(MRImage *)v5 releaseByUser];
      }

      self->super._image = [(CGImage *)Image retainByUser];
      objc_sync_exit(self);
      dispatch_semaphore_signal(self->_semaphore);
      self->_isLoaded = 1;
      delegate = self->super._delegate;
      if (delegate)
      {

        [(MRAssetPlayerDelegate *)delegate imageIsAvailableFromAssetPlayer:self];
      }
    }
  }
}

@end