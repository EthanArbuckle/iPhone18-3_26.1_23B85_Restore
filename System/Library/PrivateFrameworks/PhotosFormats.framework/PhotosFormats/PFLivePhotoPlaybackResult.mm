@interface PFLivePhotoPlaybackResult
- (void)dealloc;
- (void)setPhoto:(CGImage *)a3;
- (void)setPhotoTime:(id *)a3;
@end

@implementation PFLivePhotoPlaybackResult

- (void)setPhotoTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_photoTime.epoch = a3->var3;
  *&self->_photoTime.value = v3;
}

- (void)dealloc
{
  CGImageRelease(self->_photo);
  v3.receiver = self;
  v3.super_class = PFLivePhotoPlaybackResult;
  [(PFLivePhotoPlaybackResult *)&v3 dealloc];
}

- (void)setPhoto:(CGImage *)a3
{
  photo = self->_photo;
  if (photo != a3)
  {
    CGImageRelease(photo);
    self->_photo = CGImageRetain(a3);
  }
}

@end