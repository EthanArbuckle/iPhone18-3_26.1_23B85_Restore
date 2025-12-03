@interface PTAssetDataBufferFrame
- (void)dealloc;
- (void)setTime:(id *)time;
@end

@implementation PTAssetDataBufferFrame

- (void)dealloc
{
  CVPixelBufferRelease(self->_dataBuffer);
  v3.receiver = self;
  v3.super_class = PTAssetDataBufferFrame;
  [(PTAssetDataBufferFrame *)&v3 dealloc];
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end