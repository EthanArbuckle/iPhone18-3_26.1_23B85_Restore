@interface MRAssetPlayer
- (MRAssetPlayer)initWithPath:(id)a3 size:(CGSize)a4 master:(id)a5 andOptions:(id)a6;
- (id)retainedByUserCurrentImage;
- (void)dealloc;
- (void)releaseByUser;
@end

@implementation MRAssetPlayer

- (MRAssetPlayer)initWithPath:(id)a3 size:(CGSize)a4 master:(id)a5 andOptions:(id)a6
{
  height = a4.height;
  width = a4.width;
  v15.receiver = self;
  v15.super_class = MRAssetPlayer;
  v10 = [(MRAssetPlayer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_master = a5;
    v11->_isMonochromatic = [a6 wantsMonochromatic];
    v11->_generatesMipmap = [a6 wantsMipmap];
    v11->_usesPowerOfTwo = [a6 wantsPowerOfTwo];
    v11->_thumbnailIsOK = [a6 thumbnailIsOK];
    v12 = [a6 isStill];
    v11->_isStill = v12;
    v13 = -1.0;
    if (v12)
    {
      [a6 stillTime];
    }

    v11->_time = v13;
    v11->_image = [objc_msgSend(a6 "initialImage")];
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
  v3 = self;
  if (atomic_fetch_add(&self->_retainByUserCount, 0xFFFFFFFF) == 1)
  {
    v4 = self;
    self = [(MRAssetMaster *)self->_master relinquishPlayer:self];
    v3 = v4;
  }

  _objc_release_x1(self, v3);
}

- (id)retainedByUserCurrentImage
{
  objc_sync_enter(self);
  v3 = [(MRImage *)self->_image retainByUser];
  objc_sync_exit(self);
  return v3;
}

@end