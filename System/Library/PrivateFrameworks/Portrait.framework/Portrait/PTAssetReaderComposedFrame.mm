@interface PTAssetReaderComposedFrame
- (PTAssetReaderComposedFrame)initWithTime:(id *)time colorBuffer:(__CVBuffer *)buffer auxBuffer:(__CVBuffer *)auxBuffer;
- (void)dealloc;
@end

@implementation PTAssetReaderComposedFrame

- (PTAssetReaderComposedFrame)initWithTime:(id *)time colorBuffer:(__CVBuffer *)buffer auxBuffer:(__CVBuffer *)auxBuffer
{
  v13.receiver = self;
  v13.super_class = PTAssetReaderComposedFrame;
  v8 = [(PTAssetReaderComposedFrame *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&time->var0;
    *(v8 + 5) = time->var3;
    *(v8 + 24) = v10;
    *(v8 + 1) = CVPixelBufferRetain(buffer);
    v9->_auxBuffer = CVPixelBufferRetain(auxBuffer);
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