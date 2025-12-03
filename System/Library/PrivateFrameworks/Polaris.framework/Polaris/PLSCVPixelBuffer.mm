@interface PLSCVPixelBuffer
+ (void)copyISPBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output;
- (PLSCVPixelBuffer)initWithKey:(id)key PixelBufferAttributes:(__CFDictionary *)attributes;
- (__n128)cameraIntrinsics;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (id)initFromIOSurface:(__IOSurface *)surface WithKey:(id)key;
- (void)dealloc;
@end

@implementation PLSCVPixelBuffer

- (PLSCVPixelBuffer)initWithKey:(id)key PixelBufferAttributes:(__CFDictionary *)attributes
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = PLSCVPixelBuffer;
  v7 = [(PLSCVPixelBuffer *)&v16 init];
  if (v7)
  {
    v8 = [CFDictionaryGetValue(attributes *MEMORY[0x277CC4EC8])];
    v9 = [CFDictionaryGetValue(attributes *MEMORY[0x277CC4DD8])];
    v10 = +[PLSCVPixelBuffer getIOSurfacePropertiesWidth:height:pixelFormat:](PLSCVPixelBuffer, "getIOSurfacePropertiesWidth:height:pixelFormat:", v8, v9, [CFDictionaryGetValue(attributes *MEMORY[0x277CC4E30])]);
    v11 = IOSurfaceCreate(v10);
    if (v11)
    {
      v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v11, 0, &v7->pixelBufferRef);
      if (v12)
      {
        NSLog(&cfstr_FailedToCreate.isa, keyCopy, v12);
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [(PLSCVPixelBuffer *)v7 setMetadata:v13];

        [(PLSCVPixelBuffer *)v7 setKey:keyCopy];
        [(PLSCVPixelBuffer *)v7 setTimestamp:0];
        [(PLSCVPixelBuffer *)v7 setResourceType:0];
        [(PLSCVPixelBuffer *)v7 setSurfaceRef:v11];
      }

      CFRelease(v11);
    }

    else
    {
      NSLog(&cfstr_FailedToAlloca.isa, keyCopy);
    }

    v14 = v7;
  }

  return v7;
}

- (id)initFromIOSurface:(__IOSurface *)surface WithKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = PLSCVPixelBuffer;
  v7 = [(PLSCVPixelBuffer *)&v11 init];
  if (v7)
  {
    v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], surface, 0, &v7->pixelBufferRef);
    if (!v8)
    {
      [(PLSCVPixelBuffer *)v7 setKey:keyCopy];
      [(PLSCVPixelBuffer *)v7 setTimestamp:0];
      [(PLSCVPixelBuffer *)v7 setResourceType:0];
      [(PLSCVPixelBuffer *)v7 setSurfaceRef:surface];
      v9 = v7;
      goto LABEL_6;
    }

    NSLog(&cfstr_FailedToCreate.isa, keyCopy, v8);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)dealloc
{
  pixelBufferRef = self->pixelBufferRef;
  if (pixelBufferRef)
  {
    CVPixelBufferRelease(pixelBufferRef);
  }

  v4.receiver = self;
  v4.super_class = PLSCVPixelBuffer;
  [(PLSCVPixelBuffer *)&v4 dealloc];
}

+ (void)copyISPBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output
{
  CVPixelBufferLockBaseAddress(input, 0);
  CVPixelBufferLockBaseAddress(output, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(output);
  v7 = 0;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  do
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(output, v7);
    v10 = CVPixelBufferGetHeightOfPlane(input, v7);
    if (HeightOfPlane >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = HeightOfPlane;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(input, v7);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(input, v7);
    v14 = CVPixelBufferGetBaseAddressOfPlane(output, v7);
    v15 = CVPixelBufferGetBytesPerRowOfPlane(output, v7);
    if (BytesPerRowOfPlane >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = BytesPerRowOfPlane;
    }

    if (v11 >= 1)
    {
      v17 = v15;
      do
      {
        memcpy(v14, BaseAddressOfPlane, v16);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v14 += v17;
        --v11;
      }

      while (v11);
    }

    ++v7;
  }

  while (v7 != v8);
  CVPixelBufferUnlockBaseAddress(output, 0);

  CVPixelBufferUnlockBaseAddress(input, 0);
}

- (__n128)cameraIntrinsics
{
  result = *(self + 80);
  v2 = *(self + 96);
  v3 = *(self + 112);
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[5] = a2;
  result[6] = intrinsics;
  result[7] = a4;
  return result;
}

@end