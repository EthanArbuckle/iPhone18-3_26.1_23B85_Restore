@interface VisionCoreMetalContext
+ (id)metalContextAndReturnError:(id *)error;
+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format;
- (BOOL)writeMetalTextureToData:(void *)data texture:(id)texture mipmapLevel:(int)level;
- (BOOL)writeMetalTextureToFile:(const char *)file texture:(id)texture mipmapLevel:(int)level;
- (VisionCoreMetalContext)initWithLibrary:(id)library device:(id)device commandQueue:(id)queue;
- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height plane:(unint64_t)plane;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format plane:(unint64_t)plane;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format textureSize:(CGSize)size plane:(unint64_t)plane;
- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data;
- (id)newTextureWithPixelFormat:(unint64_t)format width:(int)width height:(int)height;
- (id)readBufferFromFile:(const char *)file width:(int)width pixelFormat:(unint64_t)format;
- (id)readTextureFromFile:(const char *)file width:(int)width height:(int)height pixelFormat:(unint64_t)format;
- (int)writeMetalBufferToFile:(const char *)file buffer:(id)buffer;
- (void)copyMTLBufferToMTLTexture:(id)texture bytesPerRow:(unint64_t)row texture:(id)a5;
@end

@implementation VisionCoreMetalContext

- (void)copyMTLBufferToMTLTexture:(id)texture bytesPerRow:(unint64_t)row texture:(id)a5
{
  commandQueue = self->_commandQueue;
  v8 = a5;
  textureCopy = texture;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  v12 = [v8 height] * row;
  v14[0] = [v8 width];
  v14[1] = [v8 height];
  v14[2] = [v8 depth];
  memset(v13, 0, sizeof(v13));
  [blitCommandEncoder copyFromBuffer:textureCopy sourceOffset:0 sourceBytesPerRow:row sourceBytesPerImage:v12 sourceSize:v14 toTexture:v8 destinationSlice:0 destinationLevel:0 destinationOrigin:v13];

  [blitCommandEncoder endEncoding];
  [commandBuffer addCompletedHandler:&__block_literal_global_2600];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height plane:(unint64_t)plane
{
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:0];
  v11 = v10;
  if (v10)
  {
    [v10 setUsage:23];
    v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11 iosurface:texture plane:plane];
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

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format textureSize:(CGSize)size plane:(unint64_t)plane
{
  height = size.height;
  width = size.width;
  IOSurface = CVPixelBufferGetIOSurface(texture);
  if (IOSurface)
  {
    v12 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, plane);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v12, plane);
    if (width > WidthOfPlane || height > HeightOfPlane)
    {
      IOSurface = 0;
    }

    else
    {
      IOSurface = [(VisionCoreMetalContext *)self bindIOSurfaceToMTL2DTexture:v12 pixelFormat:format width:width height:height plane:plane];
    }
  }

  return IOSurface;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format plane:(unint64_t)plane
{
  IOSurface = CVPixelBufferGetIOSurface(texture);
  if (IOSurface)
  {
    v9 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, plane);
    IOSurface = [(VisionCoreMetalContext *)self bindIOSurfaceToMTL2DTexture:v9 pixelFormat:format width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(v9 plane:plane), plane];
  }

  return IOSurface;
}

- (id)readBufferFromFile:(const char *)file width:(int)width pixelFormat:(unint64_t)format
{
  v7 = [VisionCoreMetalContext bytesPerPixelForTextureFormat:format]* width;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (v8)
  {
    v15 = v8;
    v16 = fopen(file, "rb");
    if (v16)
    {
      v23 = v16;
      fread(v15, v7, 1uLL, v16);
      v24 = [(MTLDevice *)self->_device newBufferWithBytes:v15 length:v7 options:0];
      free(v15);
      fclose(v23);
      goto LABEL_7;
    }

    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for reading\n", v17, v18, v19, v20, v21, v22, file);
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

- (id)readTextureFromFile:(const char *)file width:(int)width height:(int)height pixelFormat:(unint64_t)format
{
  v7 = *&height;
  v8 = *&width;
  widthCopy = width;
  v12 = [VisionCoreMetalContext bytesPerPixelForTextureFormat:format]* width;
  v13 = v12 * v7;
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  if (v14)
  {
    v21 = v14;
    v34 = v12;
    selfCopy = self;
    v23 = fopen(file, "rb");
    if (v23)
    {
      v30 = v23;
      v31 = [(VisionCoreMetalContext *)selfCopy newTextureWithPixelFormat:format width:v8 height:v7];
      fread(v21, v13, 1uLL, v30);
      memset(v35, 0, 24);
      v35[3] = widthCopy;
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

    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for reading\n", v24, v25, v26, v27, v28, v29, file);
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

- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data
{
  v7 = [VisionCoreMetalContext bytesPerPixelForTextureFormat:format]* width;
  device = self->_device;
  if (data)
  {

    return [(MTLDevice *)device newBufferWithBytes:data length:v7 options:0];
  }

  else
  {

    return [(MTLDevice *)device newBufferWithLength:v7 options:0];
  }
}

- (id)newTextureWithPixelFormat:(unint64_t)format width:(int)width height:(int)height
{
  if (height == 1)
  {
    v6 = [MEMORY[0x1E69741C0] textureBufferDescriptorWithPixelFormat:format width:? resourceOptions:? usage:?];
  }

  else
  {
    v6 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:format width:? height:? mipmapped:?];
    [v6 setUsage:19];
  }

  v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];

  return v7;
}

- (int)writeMetalBufferToFile:(const char *)file buffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = fopen(file, "wb");
  if (v6)
  {
    v13 = v6;
    contents = [bufferCopy contents];
    v15 = [bufferCopy length];
    if (fwrite(contents, 1uLL, v15, v13) == v15)
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
    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for writing\n", v7, v8, v9, v10, v11, v12, file);
    v22 = -1;
  }

  return v22;
}

- (BOOL)writeMetalTextureToFile:(const char *)file texture:(id)texture mipmapLevel:(int)level
{
  textureCopy = texture;
  v8 = textureCopy;
  v9 = 0;
  if (!file || !textureCopy || level < 0)
  {
    goto LABEL_10;
  }

  if ([textureCopy mipmapLevelCount] <= level)
  {
    v9 = 0;
    goto LABEL_10;
  }

  levelCopy = level;
  [v8 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v11 = v32;
  v12 = [v8 width] >> levelCopy;
  v13 = [v8 height] >> levelCopy;
  v9 = malloc_type_malloc(v12 * v32 * v13, 0x100004077774924uLL);
  memset(v31, 0, sizeof(v31));
  v32 = v12;
  v33 = v13;
  v34 = 1;
  [v8 getBytes:v9 bytesPerRow:v12 * v11 fromRegion:v31 mipmapLevel:levelCopy];
  v14 = fopen(file, "wb");
  if (!v14)
  {
    VisionCoreValidatedLog(4, @"Unable to fopen(%s) for writing\n", v15, v16, v17, v18, v19, v20, file);
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

- (BOOL)writeMetalTextureToData:(void *)data texture:(id)texture mipmapLevel:(int)level
{
  textureCopy = texture;
  v8 = textureCopy;
  v9 = 0;
  if (textureCopy && (level & 0x80000000) == 0)
  {
    if ([textureCopy mipmapLevelCount] <= level)
    {
      v9 = 0;
    }

    else
    {
      [v8 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v10 = [v8 width] >> level;
      height = [v8 height];
      memset(v14, 0, sizeof(v14));
      v12 = v10 * v15;
      v15 = v10;
      v9 = 1;
      v16 = height >> level;
      v17 = 1;
      [v8 getBytes:data bytesPerRow:v12 fromRegion:v14 mipmapLevel:level];
    }
  }

  return v9;
}

- (VisionCoreMetalContext)initWithLibrary:(id)library device:(id)device commandQueue:(id)queue
{
  libraryCopy = library;
  deviceCopy = device;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = VisionCoreMetalContext;
  v12 = [(VisionCoreMetalContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, library);
    objc_storeStrong(&v13->_device, device);
    objc_storeStrong(&v13->_commandQueue, queue);
  }

  return v13;
}

+ (id)metalContextAndReturnError:(id *)error
{
  v5 = MTLCreateSystemDefaultDevice();
  if (v5)
  {
    v6 = VisionCoreFrameworkBundle();
    v7 = [v6 URLForResource:@"default" withExtension:@"metallib"];
    v8 = [v5 newLibraryWithURL:v7 error:error];
    if (v8)
    {
      newCommandQueue = [v5 newCommandQueue];
      v10 = newCommandQueue;
      if (newCommandQueue)
      {
        [newCommandQueue setBackgroundGPUPriority:2];
        v11 = [[self alloc] initWithLibrary:v8 device:v5 commandQueue:v10];
      }

      else if (error)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Unable to create command queue "];
        *error = v11 = 0;
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

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"MTLDevice is nil"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format
{
  v3 = format - 62;
  if (format - 62 <= 0x3F)
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

  if (format <= 0x3C)
  {
    if (((1 << format) & 0x80743D00000) != 0)
    {
      return 2;
    }

    if (((1 << format) & 0x7402) != 0)
    {
      return 1;
    }

    if (((1 << format) & 0x10E0000000000000) != 0)
    {
      return 4;
    }
  }

  NSLog(&cfstr_UnidentifiedMe.isa, a2);
  return 0;
}

@end