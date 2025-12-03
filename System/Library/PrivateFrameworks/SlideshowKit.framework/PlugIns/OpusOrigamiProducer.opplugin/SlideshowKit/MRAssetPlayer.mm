@interface MRAssetPlayer
- (MRAssetPlayer)initWithPath:(id)path size:(CGSize)size master:(id)master andOptions:(id)options;
- (id)retainedByUserCurrentImage;
- (void)dealloc;
- (void)releaseByUser;
@end

@implementation MRAssetPlayer

- (MRAssetPlayer)initWithPath:(id)path size:(CGSize)size master:(id)master andOptions:(id)options
{
  height = size.height;
  width = size.width;
  v15.receiver = self;
  v15.super_class = MRAssetPlayer;
  v10 = [(MRAssetPlayer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_master = master;
    v11->_isMonochromatic = [options wantsMonochromatic];
    v11->_generatesMipmap = [options wantsMipmap];
    v11->_usesPowerOfTwo = [options wantsPowerOfTwo];
    v11->_thumbnailIsOK = [options thumbnailIsOK];
    isStill = [options isStill];
    v11->_isStill = isStill;
    v13 = -1.0;
    if (isStill)
    {
      [options stillTime];
    }

    v11->_time = v13;
    v11->_image = [objc_msgSend(options "initialImage")];
  }

  return v11;
}

- (void)dealloc
{
  self->_master = 0;

  self->_delegate = 0;
  self->_size = CGSizeZero;
  v3.receiver = self;
  v3.super_class = MRAssetPlayer;
  [(MRAssetPlayer *)&v3 dealloc];
}

- (void)releaseByUser
{
  selfCopy = self;
  if (atomic_fetch_add(&self->_retainByUserCount, 0xFFFFFFFF) == 1)
  {
    selfCopy2 = self;
    self = [(MRAssetMaster *)self->_master relinquishPlayer:self];
    selfCopy = selfCopy2;
  }

  _objc_release_x1(self, selfCopy);
}

- (id)retainedByUserCurrentImage
{
  objc_sync_enter(self);
  retainByUser = [(MRImage *)self->_image retainByUser];
  objc_sync_exit(self);
  return retainByUser;
}

@end