@interface VGSerializationHelpers
+ (__CVBuffer)createPixelBufferFromData:(id)a3;
+ (id)cgRectToDict:(const CGRect *)a3;
+ (id)createDataFromPixelBuffer:(__CVBuffer *)a3;
@end

@implementation VGSerializationHelpers

+ (id)createDataFromPixelBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:BytesPerRow * Height + 32];
  v9 = [v8 mutableBytes];
  *v9 = 1;
  *(v9 + 4) = Width;
  *(v9 + 12) = Height;
  *(v9 + 20) = BytesPerRow;
  *(v9 + 28) = PixelFormatType;
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  if (Height)
  {
    v11 = BaseAddress;
    v12 = 0;
    v13 = v9 + 32;
    do
    {
      memcpy((v13 + v12), &v11[v12], BytesPerRow);
      v12 += BytesPerRow;
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);

  return v8;
}

+ (__CVBuffer)createPixelBufferFromData:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 bytes];
  v4 = *(v3 + 4);
  v5 = *(v3 + 12);
  v6 = *(v3 + 20);
  v7 = *(v3 + 28);
  pixelBuffer = 0;
  v17 = *MEMORY[0x277CC4DE8];
  v18[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  if (CVPixelBufferCreate(0, v4, v5, v7, v8, &pixelBuffer))
  {
    v9 = 0;
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (v5)
    {
      v12 = BaseAddress;
      v13 = (v3 + 32);
      do
      {
        memcpy(v12, v13, v6);
        v12 += BytesPerRow;
        v13 += v6;
        --v5;
      }

      while (v5);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    v9 = pixelBuffer;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)cgRectToDict:(const CGRect *)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"origin";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3->origin.x];
  v14[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3->origin.y];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v15[1] = @"size";
  v16[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3->size.width];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3->size.height];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end