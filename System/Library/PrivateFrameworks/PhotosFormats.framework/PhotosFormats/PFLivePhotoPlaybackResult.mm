@interface PFLivePhotoPlaybackResult
- (void)dealloc;
- (void)setPhoto:(CGImage *)photo;
- (void)setPhotoTime:(id *)time;
@end

@implementation PFLivePhotoPlaybackResult

- (void)setPhotoTime:(id *)time
{
  v3 = *&time->var0;
  self->_photoTime.epoch = time->var3;
  *&self->_photoTime.value = v3;
}

- (void)dealloc
{
  CGImageRelease(self->_photo);
  v3.receiver = self;
  v3.super_class = PFLivePhotoPlaybackResult;
  [(PFLivePhotoPlaybackResult *)&v3 dealloc];
}

- (void)setPhoto:(CGImage *)photo
{
  photo = self->_photo;
  if (photo != photo)
  {
    CGImageRelease(photo);
    self->_photo = CGImageRetain(photo);
  }
}

@end