@interface PFLivePhotoFrameProcessingRequest
- (void)setTime:(id *)a3;
@end

@implementation PFLivePhotoFrameProcessingRequest

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end