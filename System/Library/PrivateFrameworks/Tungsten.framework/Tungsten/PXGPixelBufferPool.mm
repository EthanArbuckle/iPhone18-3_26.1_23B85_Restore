@interface PXGPixelBufferPool
+ (PXGPixelBufferPool)pixelBufferPoolWithSize:(CGSize)a3 format:(unsigned int)a4;
- (CGSize)pixelSize;
- (PXGPixelBufferPool)init;
- (PXGPixelBufferPool)initWithPixelBufferPool:(__CVPixelBufferPool *)a3;
- (__CVPixelBufferPool)pixelBufferPool;
- (void)dealloc;
@end

@implementation PXGPixelBufferPool

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__CVPixelBufferPool)pixelBufferPool
{
  v2 = CVPixelBufferPoolRetain(self->_pixelBufferPool);
  CFAutorelease(v2);
  return v2;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_pixelBufferPool);
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = PXGPixelBufferPool;
  [(PXGPixelBufferPool *)&v3 dealloc];
}

- (PXGPixelBufferPool)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGPixelBufferPool.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXGPixelBufferPool init]"}];

  abort();
}

- (PXGPixelBufferPool)initWithPixelBufferPool:(__CVPixelBufferPool *)a3
{
  v18.receiver = self;
  v18.super_class = PXGPixelBufferPool;
  v5 = [(PXGPixelBufferPool *)&v18 init];
  if (v5)
  {
    if (!a3)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:v5 file:@"PXGPixelBufferPool.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"pixelBufferPool != NULL"}];
    }

    v5->_pixelBufferPool = CVPixelBufferPoolRetain(a3);
    v6 = CVPixelBufferPoolGetPixelBufferAttributes(a3);
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC4EC8]];
    v8 = [v7 integerValue];

    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC4DD8]];
    v10 = [v9 integerValue];

    if (v8 < 1 || v10 <= 0)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:v5 file:@"PXGPixelBufferPool.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"width > 0 && height > 0"}];
    }

    v5->_pixelSize.width = v8;
    v5->_pixelSize.height = v10;
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC4E30]];
    v5->_pixelFormatType = [v12 unsignedIntValue];

    if (!v5->_pixelFormatType)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:v5 file:@"PXGPixelBufferPool.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"_pixelFormatType != 0"}];
    }

    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC4B78]];
    v5->_colorSpace = CGColorSpaceRetain(v13);
  }

  return v5;
}

+ (PXGPixelBufferPool)pixelBufferPoolWithSize:(CGSize)a3 format:(unsigned int)a4
{
  v4 = *&a4;
  height = a3.height;
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CC4DE8];
  v15[0] = *MEMORY[0x277CC4E08];
  v15[1] = v6;
  v16[0] = MEMORY[0x277CBEC38];
  v16[1] = MEMORY[0x277CBEC10];
  v15[2] = *MEMORY[0x277CC4EC8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3.width];
  v16[2] = v7;
  v15[3] = *MEMORY[0x277CC4DD8];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v16[3] = v8;
  v15[4] = *MEMORY[0x277CC4E30];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v15[5] = *MEMORY[0x277CC4E40];
  v16[4] = v9;
  v16[5] = &unk_282C7F430;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];

  pixelBufferPool = 0;
  v11 = 0;
  if (!CVPixelBufferPoolCreate(0, 0, v10, &pixelBufferPool))
  {
    v12 = [PXGPixelBufferPool alloc];
    v11 = [(PXGPixelBufferPool *)v12 initWithPixelBufferPool:pixelBufferPool];
    CVPixelBufferPoolRelease(pixelBufferPool);
  }

  return v11;
}

@end