@interface VGSerializationHelpers
+ (__CVBuffer)createPixelBufferFromData:(id)data;
+ (id)cgRectToDict:(const CGRect *)dict;
+ (id)createDataFromPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation VGSerializationHelpers

+ (id)createDataFromPixelBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:BytesPerRow * Height + 32];
  mutableBytes = [v8 mutableBytes];
  *mutableBytes = 1;
  *(mutableBytes + 4) = Width;
  *(mutableBytes + 12) = Height;
  *(mutableBytes + 20) = BytesPerRow;
  *(mutableBytes + 28) = PixelFormatType;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  if (Height)
  {
    v11 = BaseAddress;
    v12 = 0;
    v13 = mutableBytes + 32;
    do
    {
      memcpy((v13 + v12), &v11[v12], BytesPerRow);
      v12 += BytesPerRow;
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);

  return v8;
}

+ (__CVBuffer)createPixelBufferFromData:(id)data
{
  v18[1] = *MEMORY[0x277D85DE8];
  bytes = [data bytes];
  v4 = *(bytes + 4);
  v5 = *(bytes + 12);
  v6 = *(bytes + 20);
  v7 = *(bytes + 28);
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
      v13 = (bytes + 32);
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

+ (id)cgRectToDict:(const CGRect *)dict
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"origin";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:dict->origin.x];
  v14[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:dict->origin.y];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v15[1] = @"size";
  v16[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:dict->size.width];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:dict->size.height];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end