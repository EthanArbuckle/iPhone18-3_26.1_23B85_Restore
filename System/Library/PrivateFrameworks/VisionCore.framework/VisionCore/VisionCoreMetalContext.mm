@interface VisionCoreMetalContext
+ (id)metalContextAndReturnError:(id *)a3;
+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3;
- (BOOL)writeMetalTextureToData:(void *)a3 texture:(id)a4 mipmapLevel:(int)a5;
- (BOOL)writeMetalTextureToFile:(const char *)a3 texture:(id)a4 mipmapLevel:(int)a5;
- (VisionCoreMetalContext)initWithLibrary:(id)a3 device:(id)a4 commandQueue:(id)a5;
- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 plane:(unint64_t)a7;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 plane:(unint64_t)a5;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 textureSize:(CGSize)a5 plane:(unint64_t)a6;
- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5;
- (id)newTextureWithPixelFormat:(unint64_t)a3 width:(int)a4 height:(int)a5;
- (id)readBufferFromFile:(const char *)a3 width:(int)a4 pixelFormat:(unint64_t)a5;
- (id)readTextureFromFile:(const char *)a3 width:(int)a4 height:(int)a5 pixelFormat:(unint64_t)a6;
- (int)writeMetalBufferToFile:(const char *)a3 buffer:(id)a4;
- (void)copyMTLBufferToMTLTexture:(id)a3 bytesPerRow:(unint64_t)a4 texture:(id)a5;
@end

@implementation VisionCoreMetalContext

- (void)copyMTLBufferToMTLTexture:(id)a3 bytesPerRow:(unint64_t)a4 texture:(id)a5
{
  commandQueue = self->_commandQueue;
  v8 = a5;
  v9 = a3;
  v10 = [(MTLCommandQueue *)commandQueue commandBuffer];
  v11 = [v10 blitCommandEncoder];
  v12 = [v8 height] * a4;
  v14[0] = [v8 width];
  v14[1] = [v8 height];
  v14[2] = [v8 depth];
  memset(v13, 0, sizeof(v13));
  [v11 copyFromBuffer:v9 sourceOffset:0 sourceBytesPerRow:a4 sourceBytesPerImage:v12 sourceSize:v14 toTexture:v8 destinationSlice:0 destinationLevel:0 destinationOrigin:v13];

  [v11 endEncoding];
  [v10 addCompletedHandler:&__block_literal_global_2600];
  [v10 commit];
  [v10 waitUntilCompleted];
}

- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 plane:(unint64_t)a7
{
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:a5 height:a6 mipmapped:0];
  v11 = v10;
  if (v10)
  {
    [v10 setUsage:23];
    v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11 iosurface:a3 plane:a7];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 textureSize:(CGSize)a5 plane:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    v12 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, a6);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v12, a6);
    if (width > WidthOfPlane || height > HeightOfPlane)
    {
      IOSurface = 0;
    }

    else
    {
      IOSurface = [(VisionCoreMetalContext *)self bindIOSurfaceToMTL2DTexture:v12 pixelFormat:a4 width:width height:height plane:a6];
    }
  }

  return IOSurface;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 plane:(unint64_t)a5
{
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    v9 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, a5);
    IOSurface = [(VisionCoreMetalContext *)self bindIOSurfaceToMTL2DTexture:v9 pixelFormat:a4 width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(v9 plane:a5), a5];
  }

  return IOSurface;
}

- (id)readBufferFromFile:(const char *)a3 width:(int)a4 pixelFormat:(unint64_t)a5
{
  v7 = [VisionCoreMetalContext bytesPerPixelForTextureFormat:a5]* a4;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (v8)
  {
    v15 = v8;
    v16 = fopen(a3, "rb");
    if (v16)
    {
      v23 = v16;
      fread(v15, v7, 1uLL, v16);
      v24 = [(MTLDevice *)self->_device newBufferWithBytes:v15 length:v7 options:0];
      free(v15);
      fclose(v23);
      goto LABEL_7;
    }

    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for reading\n", v17, v18, v19, v20, v21, v22, a3);
    free(v15);
  }

  else
  {
    VisionCoreValidatedLog(4, @"Failed to allocate fdata\n", v9, v10, v11, v12, v13, v14, v26);
  }

  v24 = 0;
LABEL_7:

  return v24;
}

- (id)readTextureFromFile:(const char *)a3 width:(int)a4 height:(int)a5 pixelFormat:(unint64_t)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v11 = a4;
  v12 = [VisionCoreMetalContext bytesPerPixelForTextureFormat:a6]* a4;
  v13 = v12 * v7;
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  if (v14)
  {
    v21 = v14;
    v34 = v12;
    v22 = self;
    v23 = fopen(a3, "rb");
    if (v23)
    {
      v30 = v23;
      v31 = [(VisionCoreMetalContext *)v22 newTextureWithPixelFormat:a6 width:v8 height:v7];
      fread(v21, v13, 1uLL, v30);
      memset(v35, 0, 24);
      v35[3] = v11;
      if (v7 == 1)
      {
        v36 = vdupq_n_s64(1uLL);
      }

      else
      {
        v36.i64[0] = v7;
        v36.i64[1] = 1;
      }

      [v31 replaceRegion:v35 mipmapLevel:0 withBytes:v21 bytesPerRow:v34];
      free(v21);
      fclose(v30);
      goto LABEL_10;
    }

    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for reading\n", v24, v25, v26, v27, v28, v29, a3);
    free(v21);
  }

  else
  {
    VisionCoreValidatedLog(4, @"Failed to allocate fdata\n", v15, v16, v17, v18, v19, v20, v33);
  }

  v31 = 0;
LABEL_10:

  return v31;
}

- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5
{
  v7 = [VisionCoreMetalContext bytesPerPixelForTextureFormat:a3]* a4;
  device = self->_device;
  if (a5)
  {

    return [(MTLDevice *)device newBufferWithBytes:a5 length:v7 options:0];
  }

  else
  {

    return [(MTLDevice *)device newBufferWithLength:v7 options:0];
  }
}

- (id)newTextureWithPixelFormat:(unint64_t)a3 width:(int)a4 height:(int)a5
{
  if (a5 == 1)
  {
    v6 = [MEMORY[0x1E69741C0] textureBufferDescriptorWithPixelFormat:a3 width:? resourceOptions:? usage:?];
  }

  else
  {
    v6 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a3 width:? height:? mipmapped:?];
    [v6 setUsage:19];
  }

  v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];

  return v7;
}

- (int)writeMetalBufferToFile:(const char *)a3 buffer:(id)a4
{
  v5 = a4;
  v6 = fopen(a3, "wb");
  if (v6)
  {
    v13 = v6;
    v14 = [v5 contents];
    v15 = [v5 length];
    if (fwrite(v14, 1uLL, v15, v13) == v15)
    {
      v22 = 0;
    }

    else
    {
      VisionCoreValidatedLog(4, @"Something went wrong during fwrite to file\n", v16, v17, v18, v19, v20, v21, v24);
      v22 = -1;
    }

    fclose(v13);
  }

  else
  {
    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for writing\n", v7, v8, v9, v10, v11, v12, a3);
    v22 = -1;
  }

  return v22;
}

- (BOOL)writeMetalTextureToFile:(const char *)a3 texture:(id)a4 mipmapLevel:(int)a5
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (!a3 || !v7 || a5 < 0)
  {
    goto LABEL_10;
  }

  if ([v7 mipmapLevelCount] <= a5)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v10 = a5;
  [v8 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v11 = v32;
  v12 = [v8 width] >> v10;
  v13 = [v8 height] >> v10;
  v9 = malloc_type_malloc(v12 * v32 * v13, 0x100004077774924uLL);
  memset(v31, 0, sizeof(v31));
  v32 = v12;
  v33 = v13;
  v34 = 1;
  [v8 getBytes:v9 bytesPerRow:v12 * v11 fromRegion:v31 mipmapLevel:v10];
  v14 = fopen(a3, "wb");
  if (!v14)
  {
    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for writing\n", v15, v16, v17, v18, v19, v20, a3);
LABEL_10:
    free(v9);
    v28 = 0;
    goto LABEL_11;
  }

  v21 = v14;
  v28 = fwrite(v9, v11, v13 * v12, v14) == v13 * v12;
  if (!v28)
  {
    VisionCoreValidatedLog(4, @"Something went wrong during fwrite to file\n", v22, v23, v24, v25, v26, v27, v30);
  }

  free(v9);
  fclose(v21);
LABEL_11:

  return v28;
}

- (BOOL)writeMetalTextureToData:(void *)a3 texture:(id)a4 mipmapLevel:(int)a5
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v7 && (a5 & 0x80000000) == 0)
  {
    if ([v7 mipmapLevelCount] <= a5)
    {
      v9 = 0;
    }

    else
    {
      [v8 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v10 = [v8 width] >> a5;
      v11 = [v8 height];
      memset(v14, 0, sizeof(v14));
      v12 = v10 * v15;
      v15 = v10;
      v9 = 1;
      v16 = v11 >> a5;
      v17 = 1;
      [v8 getBytes:a3 bytesPerRow:v12 fromRegion:v14 mipmapLevel:a5];
    }
  }

  return v9;
}

- (VisionCoreMetalContext)initWithLibrary:(id)a3 device:(id)a4 commandQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VisionCoreMetalContext;
  v12 = [(VisionCoreMetalContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, a3);
    objc_storeStrong(&v13->_device, a4);
    objc_storeStrong(&v13->_commandQueue, a5);
  }

  return v13;
}

+ (id)metalContextAndReturnError:(id *)a3
{
  v5 = MTLCreateSystemDefaultDevice();
  if (v5)
  {
    v6 = VisionCoreFrameworkBundle();
    v7 = [v6 URLForResource:@"default" withExtension:@"metallib"];
    v8 = [v5 newLibraryWithURL:v7 error:a3];
    if (v8)
    {
      v9 = [v5 newCommandQueue];
      v10 = v9;
      if (v9)
      {
        [v9 setBackgroundGPUPriority:2];
        v11 = [[a1 alloc] initWithLibrary:v8 device:v5 commandQueue:v10];
      }

      else if (a3)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Unable to create command queue "];
        *a3 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"MTLDevice is nil"];
    *a3 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3
{
  v3 = a3 - 62;
  if (a3 - 62 <= 0x3F)
  {
    if (((1 << v3) & 0xF00C1F0FLL) != 0)
    {
      return 4;
    }

    if (((1 << v3) & 0x3D0E0000000000) != 0)
    {
      return 8;
    }

    if (((1 << v3) & 0xE000000000000000) != 0)
    {
      return 16;
    }
  }

  if (a3 <= 0x3C)
  {
    if (((1 << a3) & 0x80743D00000) != 0)
    {
      return 2;
    }

    if (((1 << a3) & 0x7402) != 0)
    {
      return 1;
    }

    if (((1 << a3) & 0x10E0000000000000) != 0)
    {
      return 4;
    }
  }

  NSLog(&cfstr_UnidentifiedMe.isa, a2);
  return 0;
}

@end