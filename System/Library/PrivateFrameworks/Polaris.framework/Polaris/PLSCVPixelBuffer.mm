@interface PLSCVPixelBuffer
+ (void)copyISPBufferWithInput:(__CVBuffer *)a3 output:(__CVBuffer *)a4;
- (PLSCVPixelBuffer)initWithKey:(id)a3 PixelBufferAttributes:(__CFDictionary *)a4;
- (__n128)cameraIntrinsics;
- (__n128)setCameraIntrinsics:(__n128)a3;
- (id)initFromIOSurface:(__IOSurface *)a3 WithKey:(id)a4;
- (void)dealloc;
@end

@implementation PLSCVPixelBuffer

- (PLSCVPixelBuffer)initWithKey:(id)a3 PixelBufferAttributes:(__CFDictionary *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PLSCVPixelBuffer;
  v7 = [(PLSCVPixelBuffer *)&v16 init];
  if (v7)
  {
    v8 = [CFDictionaryGetValue(a4 *MEMORY[0x277CC4EC8])];
    v9 = [CFDictionaryGetValue(a4 *MEMORY[0x277CC4DD8])];
    v10 = +[PLSCVPixelBuffer getIOSurfacePropertiesWidth:height:pixelFormat:](PLSCVPixelBuffer, "getIOSurfacePropertiesWidth:height:pixelFormat:", v8, v9, [CFDictionaryGetValue(a4 *MEMORY[0x277CC4E30])]);
    v11 = IOSurfaceCreate(v10);
    if (v11)
    {
      v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v11, 0, &v7->pixelBufferRef);
      if (v12)
      {
        NSLog(&cfstr_FailedToCreate.isa, v6, v12);
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [(PLSCVPixelBuffer *)v7 setMetadata:v13];

        [(PLSCVPixelBuffer *)v7 setKey:v6];
        [(PLSCVPixelBuffer *)v7 setTimestamp:0];
        [(PLSCVPixelBuffer *)v7 setResourceType:0];
        [(PLSCVPixelBuffer *)v7 setSurfaceRef:v11];
      }

      CFRelease(v11);
    }

    else
    {
      NSLog(&cfstr_FailedToAlloca.isa, v6);
    }

    v14 = v7;
  }

  return v7;
}

- (id)initFromIOSurface:(__IOSurface *)a3 WithKey:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PLSCVPixelBuffer;
  v7 = [(PLSCVPixelBuffer *)&v11 init];
  if (v7)
  {
    v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], a3, 0, &v7->pixelBufferRef);
    if (!v8)
    {
      [(PLSCVPixelBuffer *)v7 setKey:v6];
      [(PLSCVPixelBuffer *)v7 setTimestamp:0];
      [(PLSCVPixelBuffer *)v7 setResourceType:0];
      [(PLSCVPixelBuffer *)v7 setSurfaceRef:a3];
      v9 = v7;
      goto LABEL_6;
    }

    NSLog(&cfstr_FailedToCreate.isa, v6, v8);
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

+ (void)copyISPBufferWithInput:(__CVBuffer *)a3 output:(__CVBuffer *)a4
{
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a4, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a4);
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
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, v7);
    v10 = CVPixelBufferGetHeightOfPlane(a3, v7);
    if (HeightOfPlane >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = HeightOfPlane;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, v7);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, v7);
    v14 = CVPixelBufferGetBaseAddressOfPlane(a4, v7);
    v15 = CVPixelBufferGetBytesPerRowOfPlane(a4, v7);
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
  CVPixelBufferUnlockBaseAddress(a4, 0);

  CVPixelBufferUnlockBaseAddress(a3, 0);
}

- (__n128)cameraIntrinsics
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

@end