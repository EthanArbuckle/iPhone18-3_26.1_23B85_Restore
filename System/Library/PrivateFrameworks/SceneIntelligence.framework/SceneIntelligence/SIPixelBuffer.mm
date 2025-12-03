@interface SIPixelBuffer
- (SIPixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (SIPixelBuffer)initWithResolution:(CGSize)resolution pixelformat:(unsigned int)pixelformat;
- (SIPixelBuffer)initWithSurface:(id)surface;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)buffer;
- (void)setSurface:(id)surface;
@end

@implementation SIPixelBuffer

- (SIPixelBuffer)initWithSurface:(id)surface
{
  surfaceCopy = surface;
  v8.receiver = self;
  v8.super_class = SIPixelBuffer;
  v5 = [(SIPixelBuffer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_pixelBuffer = 0;
    [(SIPixelBuffer *)v5 setSurface:surfaceCopy];
  }

  return v6;
}

- (SIPixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  v8.receiver = self;
  v8.super_class = SIPixelBuffer;
  v4 = [(SIPixelBuffer *)&v8 init];
  if (v4)
  {
    v4->_pixelBuffer = CVPixelBufferRetain(buffer);
    v5 = [[SIIOSurface alloc] initFromPixelBuffer:v4->_pixelBuffer];
    surface = v4->_surface;
    v4->_surface = v5;
  }

  return v4;
}

- (void)setPixelBuffer:(__CVBuffer *)buffer
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer != buffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->_pixelBuffer = CVPixelBufferRetain(buffer);
    v6 = [[SIIOSurface alloc] initFromPixelBuffer:self->_pixelBuffer];
    surface = self->_surface;
    self->_surface = v6;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setSurface:(id)surface
{
  surfaceCopy = surface;
  if (self->_surface != surfaceCopy)
  {
    v7 = surfaceCopy;
    pixelBuffer = self->_pixelBuffer;
    if (pixelBuffer)
    {
      CVPixelBufferRelease(pixelBuffer);
    }

    self->_pixelBuffer = [(SIIOSurface *)v7 createPixelBufferWithAttributes:0];
    objc_storeStrong(&self->_surface, surface);
    surfaceCopy = v7;
  }
}

- (SIPixelBuffer)initWithResolution:(CGSize)resolution pixelformat:(unsigned int)pixelformat
{
  height = resolution.height;
  width = resolution.width;
  v28 = *MEMORY[0x277D85DE8];
  v8 = SICreateCVPixelBufferWithCustomStride(resolution.width, resolution.height, pixelformat, 0, 1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v15 = __48__SIPixelBuffer_initWithResolution_pixelformat___block_invoke;
  v16 = &__block_descriptor_40_e5_v8__0l;
  v17 = v8;
  if (v8)
  {
    self = [(SIPixelBuffer *)self initWithCVPixelBuffer:v8];
    selfCopy = self;
  }

  else
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = SIPixelFormatToStr(pixelformat);
      *buf = 136381699;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v20 = 1025;
      v21 = 81;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      v25 = height;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create the buffer - (%f, %f), formate=%@ ***", buf, 0x30u);
    }

    selfCopy = 0;
  }

  v15(v14);

  v12 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

void __48__SIPixelBuffer_initWithResolution_pixelformat___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CVPixelBufferRelease(v1);
  }
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = SIPixelBuffer;
  [(SIPixelBuffer *)&v3 dealloc];
}

@end