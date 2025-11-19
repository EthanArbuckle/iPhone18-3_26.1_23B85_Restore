@interface PTAssetReaderComposedFrame
- (PTAssetReaderComposedFrame)initWithTime:(id *)a3 colorBuffer:(__CVBuffer *)a4 auxBuffer:(__CVBuffer *)a5;
- (void)dealloc;
@end

@implementation PTAssetReaderComposedFrame

- (PTAssetReaderComposedFrame)initWithTime:(id *)a3 colorBuffer:(__CVBuffer *)a4 auxBuffer:(__CVBuffer *)a5
{
  v13.receiver = self;
  v13.super_class = PTAssetReaderComposedFrame;
  v8 = [(PTAssetReaderComposedFrame *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a3->var0;
    *(v8 + 5) = a3->var3;
    *(v8 + 24) = v10;
    *(v8 + 1) = CVPixelBufferRetain(a4);
    v9->_auxBuffer = CVPixelBufferRetain(a5);
    v11 = v9;
  }

  return v9;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_colorBuffer);
  CVPixelBufferRelease(self->_auxBuffer);
  v3.receiver = self;
  v3.super_class = PTAssetReaderComposedFrame;
  [(PTAssetReaderComposedFrame *)&v3 dealloc];
}

@end