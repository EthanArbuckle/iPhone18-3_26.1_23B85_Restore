@interface PXImageQueueLayer
- (PXImageQueueLayer)init;
- (PXImageQueueLayer)initWithLayer:(id)a3;
- (__CVBuffer)pixelBuffer;
- (void)_commonInit;
- (void)dealloc;
- (void)display;
- (void)setPixelBuffer:(__CVBuffer *)a3;
@end

@implementation PXImageQueueLayer

- (void)setPixelBuffer:(__CVBuffer *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_pixelBuffer != a3)
  {
    v5 = CAImageQueueCollect();
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218240;
      v11 = self;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "PXImageQueueLayer(%p) collect() returned %lu free slots", &v10, 0x16u);
    }

    pixelBuffer = self->_pixelBuffer;
    if (pixelBuffer)
    {
      CVPixelBufferRelease(pixelBuffer);
      self->_pixelBuffer = 0;
    }

    if (a3)
    {
      self->_pixelBuffer = CVPixelBufferRetain(a3);
      v8 = CAImageQueueRegisterCVImageBuffer();
      CVPixelBufferGetWidth(self->_pixelBuffer);
      CVPixelBufferGetHeight(self->_pixelBuffer);
      CAImageQueueSetSize();
      self->_pixelBufferId = v8;
      if ((CAImageQueueInsertImage() & 1) == 0)
      {
        v9 = PLUIGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 134217984;
          v11 = self;
          _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PXImageQueueLayer(%p) failed to enqueue image", &v10, 0xCu);
        }
      }
    }

    [(PXImageQueueLayer *)self setHidden:self->_pixelBuffer == 0];
  }
}

- (__CVBuffer)pixelBuffer
{
  v2 = CVPixelBufferRetain(self->_pixelBuffer);
  v3 = v2;
  if (v2)
  {
    CFAutorelease(v2);
  }

  return v3;
}

- (void)display
{
  v3 = [(PXImageQueueLayer *)self contents];
  v4.receiver = self;
  v4.super_class = PXImageQueueLayer;
  [(PXImageQueueLayer *)&v4 setContents:v3];
}

- (void)dealloc
{
  CAImageQueueCollect();
  CVPixelBufferRelease(self->_pixelBuffer);
  CAImageQueueInvalidate();
  CFRelease(self->_imageQueue);
  v3.receiver = self;
  v3.super_class = PXImageQueueLayer;
  [(PXImageQueueLayer *)&v3 dealloc];
}

- (void)_commonInit
{
  v6[1] = *MEMORY[0x1E69E9840];
  self->_imageQueue = CAImageQueueCreate();
  [(PXImageQueueLayer *)self setContentsGravity:*MEMORY[0x1E6979DF0]];
  [(PXImageQueueLayer *)self setContents:self->_imageQueue];
  v5 = @"hidden";
  v3 = [MEMORY[0x1E695DFB0] null];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(PXImageQueueLayer *)self setActions:v4];
}

- (PXImageQueueLayer)initWithLayer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXImageQueueLayer;
  v5 = [(PXImageQueueLayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXImageQueueLayer *)v5 _commonInit];
    if ([v4 pixelBuffer])
    {
      [v4 pixelBuffer];
      if (!CVPixelBufferCreateFromCVImageBufferRef())
      {
        [(PXImageQueueLayer *)v6 setPixelBuffer:0];
        CVPixelBufferRelease(0);
      }
    }
  }

  return v6;
}

- (PXImageQueueLayer)init
{
  v5.receiver = self;
  v5.super_class = PXImageQueueLayer;
  v2 = [(PXImageQueueLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXImageQueueLayer *)v2 _commonInit];
  }

  return v3;
}

@end