@interface PTAssetDataBufferFrame
- (void)dealloc;
- (void)setTime:(id *)a3;
@end

@implementation PTAssetDataBufferFrame

- (void)dealloc
{
  CVPixelBufferRelease(self->_dataBuffer);
  v3.receiver = self;
  v3.super_class = PTAssetDataBufferFrame;
  [(PTAssetDataBufferFrame *)&v3 dealloc];
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end