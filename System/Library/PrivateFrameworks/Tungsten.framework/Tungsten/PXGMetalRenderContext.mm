@interface PXGMetalRenderContext
+ (id)privateContextWithDevice:(id)device;
+ (id)privateContextWithDevice:(id)device commandQueue:(id)queue;
+ (id)sharedContextWithDevice:(id)device commandQueue:(id)queue;
- (MTLLibrary)library;
- (PXGMetalRenderContext)initWithDevice:(id)device commandQueue:(id)queue;
- (id)newMipmappedTextureFromTexture:(id)texture;
- (id)newTextureWithDescriptor:(id)descriptor;
- (void)_blitFromBuffer:(id)buffer toTexture:(id)texture inRegion:(id *)region bytesPerRow:(unint64_t)row offset:(unint64_t)offset bytesPerImage:(unint64_t)image;
- (void)_blitFromTexture:(id)texture toTexture:(id)toTexture mipmapped:(BOOL)mipmapped;
- (void)_createComputePipelinesIfNeeded;
- (void)blitBuffer:(id)buffer toTexture:(id)texture count:(unint64_t)count blitEncoder:(id)encoder;
- (void)blitTexture:(id)texture toTexture:(id)toTexture blitEncoder:(id)encoder;
- (void)copyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (void)encodeCopyKernelWithSourceTexture:(id)texture targetTexture:(id)targetTexture sourceRegions:(id)regions sourceRegionsOffset:(unint64_t)offset targetRegionSize:(id *)size regionsCount:(unint64_t)count computeEncoder:(id)encoder;
- (void)fastCopyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
@end

@implementation PXGMetalRenderContext

- (MTLLibrary)library
{
  library = self->_library;
  if (!library)
  {
    device = self->_device;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = 0;
    v7 = [(MTLDevice *)device newDefaultLibraryWithBundle:v6 error:&v12];
    v8 = v12;
    v9 = self->_library;
    self->_library = v7;

    if (v8)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:45 description:{@"Error creating library:%@", v8}];

      abort();
    }

    library = self->_library;
  }

  return library;
}

- (void)_blitFromTexture:(id)texture toTexture:(id)toTexture mipmapped:(BOOL)mipmapped
{
  mipmappedCopy = mipmapped;
  toTextureCopy = toTexture;
  textureCopy = texture;
  commandQueue = [(PXGMetalRenderContext *)self commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  [blitCommandEncoder setLabel:@"PXGTextureUtilities Texture Blit Encoder"];
  [blitCommandEncoder copyFromTexture:textureCopy toTexture:toTextureCopy];

  if (mipmappedCopy)
  {
    [blitCommandEncoder generateMipmapsForTexture:toTextureCopy];
  }

  [blitCommandEncoder endEncoding];
  [commandBuffer commit];
}

- (void)_blitFromBuffer:(id)buffer toTexture:(id)texture inRegion:(id *)region bytesPerRow:(unint64_t)row offset:(unint64_t)offset bytesPerImage:(unint64_t)image
{
  bufferCopy = buffer;
  textureCopy = texture;
  kdebug_trace();
  commandQueue = [(PXGMetalRenderContext *)self commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  [blitCommandEncoder setLabel:@"PXGMetalRenderContext Buffer Blit Encoder"];
  var2 = region->var1.var2;
  v22 = *&region->var1.var0;
  v23 = var2;
  v20 = *&region->var0.var0;
  v21 = region->var0.var2;
  [blitCommandEncoder copyFromBuffer:bufferCopy sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 toTexture:textureCopy destinationSlice:0 destinationLevel:0 destinationOrigin:&v20];

  [blitCommandEncoder endEncoding];
  [commandBuffer commit];
  kdebug_trace();
}

- (void)_createComputePipelinesIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_textureCopyRegionKernelPipelineState)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    wantsUniformThreadgroups = [(PXGMetalRenderContext *)self wantsUniformThreadgroups];
    v4 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v4 setConstantValues:v15 type:29 withRange:{0, 10}];
    library = [(PXGMetalRenderContext *)self library];
    v14 = 0;
    v6 = [library newFunctionWithName:@"copy_texture_region" constantValues:v4 error:&v14];
    v7 = v14;

    if (v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:169 description:{@"Error creating copy_texture_region function:%@", v7}];
    }

    else
    {
      device = [(PXGMetalRenderContext *)self device];
      v13 = 0;
      v9 = [device newComputePipelineStateWithFunction:v6 error:&v13];
      v10 = v13;
      textureCopyRegionKernelPipelineState = self->_textureCopyRegionKernelPipelineState;
      self->_textureCopyRegionKernelPipelineState = v9;

      if (!v10)
      {

        return;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:175 description:{@"Error creating pipelineState:%@", v10}];
    }

    abort();
  }
}

- (void)encodeCopyKernelWithSourceTexture:(id)texture targetTexture:(id)targetTexture sourceRegions:(id)regions sourceRegionsOffset:(unint64_t)offset targetRegionSize:(id *)size regionsCount:(unint64_t)count computeEncoder:(id)encoder
{
  encoderCopy = encoder;
  regionsCopy = regions;
  targetTextureCopy = targetTexture;
  textureCopy = texture;
  [(PXGMetalRenderContext *)self _createComputePipelinesIfNeeded];
  textureCopyRegionKernelPipelineState = [(PXGMetalRenderContext *)self textureCopyRegionKernelPipelineState];
  threadExecutionWidth = [textureCopyRegionKernelPipelineState threadExecutionWidth];

  textureCopyRegionKernelPipelineState2 = [(PXGMetalRenderContext *)self textureCopyRegionKernelPipelineState];
  v22 = [textureCopyRegionKernelPipelineState2 maxTotalThreadsPerThreadgroup] / threadExecutionWidth;

  v27 = *&size->var0;
  v36 = vmovn_s64(*&size->var0);
  textureCopyRegionKernelPipelineState3 = [(PXGMetalRenderContext *)self textureCopyRegionKernelPipelineState];
  [encoderCopy setComputePipelineState:textureCopyRegionKernelPipelineState3];

  [encoderCopy setTexture:textureCopy atIndex:0];
  [encoderCopy setTexture:targetTextureCopy atIndex:1];

  [encoderCopy setBuffer:regionsCopy offset:offset atIndex:0];
  [encoderCopy setBytes:&v36 length:8 atIndex:1];
  if ([(PXGMetalRenderContext *)self wantsUniformThreadgroups])
  {
    var1 = size->var1;
    v25 = (threadExecutionWidth + size->var0 * count - 1) / threadExecutionWidth;
    countCopy = count;
    v26 = (v22 + var1 - 1) / v22;
    [encoderCopy setBytes:&countCopy length:4 atIndex:2];
    v32 = v25;
    v33 = v26;
    v34 = 1;
    v29 = threadExecutionWidth;
    v30 = v22;
    v31 = 1;
    [encoderCopy dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
  }

  else
  {
    v33 = *(&v27 + 1);
    v31 = 1;
    v32 = v27 * count;
    v34 = 1;
    v29 = threadExecutionWidth;
    v30 = v22;
    [encoderCopy dispatchThreads:&v32 threadsPerThreadgroup:&v29];
  }

  [encoderCopy endEncoding];
}

- (void)blitBuffer:(id)buffer toTexture:(id)texture count:(unint64_t)count blitEncoder:(id)encoder
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  textureCopy = texture;
  kdebug_trace();
  width = [textureCopy width];
  if (width >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = width;
  }

  memset(v15, 0, sizeof(v15));
  v14[0] = countCopy;
  v14[1] = (count + width - 1) / width;
  v14[2] = 1;
  [encoderCopy copyFromBuffer:bufferCopy sourceOffset:0 sourceBytesPerRow:4 * countCopy sourceBytesPerImage:0 sourceSize:v14 toTexture:textureCopy destinationSlice:0 destinationLevel:0 destinationOrigin:v15];

  [encoderCopy endEncoding];
  kdebug_trace();
}

- (void)blitTexture:(id)texture toTexture:(id)toTexture blitEncoder:(id)encoder
{
  textureCopy = texture;
  encoderCopy = encoder;
  toTextureCopy = toTexture;
  [textureCopy width];
  [textureCopy height];
  kdebug_trace();
  [encoderCopy copyFromTexture:textureCopy toTexture:toTextureCopy];

  [encoderCopy endEncoding];
  kdebug_trace();
}

- (id)newMipmappedTextureFromTexture:(id)texture
{
  textureCopy = texture;
  pixelFormat = [textureCopy pixelFormat];
  width = [textureCopy width];
  height = [textureCopy height];
  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:pixelFormat width:width height:height mipmapped:1];
  [v8 setUsage:1];
  v9 = [(PXGMetalRenderContext *)self newTextureWithDescriptor:v8];
  -[PXGMetalRenderContext _blitFromTexture:toTexture:mipmapped:](self, "_blitFromTexture:toTexture:mipmapped:", textureCopy, v9, [v9 mipmapLevelCount] > 1);

  return v9;
}

- (void)fastCopyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  textureCopy = texture;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:80 description:{@"Method %s is a responsibility of subclass %@", "-[PXGMetalRenderContext fastCopyBytes:toTexture:inRegion:length:bytesPerRow:bytesPerImage:]", v13}];

  abort();
}

- (void)copyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  textureCopy = texture;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:76 description:{@"Method %s is a responsibility of subclass %@", "-[PXGMetalRenderContext copyBytes:toTexture:inRegion:length:bytesPerRow:bytesPerImage:]", v13}];

  abort();
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:72 description:{@"Method %s is a responsibility of subclass %@", "-[PXGMetalRenderContext newTextureWithDescriptor:]", v8}];

  abort();
}

- (PXGMetalRenderContext)initWithDevice:(id)device commandQueue:(id)queue
{
  deviceCopy = device;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = PXGMetalRenderContext;
  v9 = [(PXGMetalRenderContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_commandQueue, queue);
    v10->_wantsUniformThreadgroups = 0;
  }

  return v10;
}

+ (id)sharedContextWithDevice:(id)device commandQueue:(id)queue
{
  queueCopy = queue;
  deviceCopy = device;
  v7 = [(PXGMetalRenderContext *)[PXGSharedMetalRenderContext alloc] initWithDevice:deviceCopy commandQueue:queueCopy];

  return v7;
}

+ (id)privateContextWithDevice:(id)device commandQueue:(id)queue
{
  queueCopy = queue;
  deviceCopy = device;
  v7 = [(PXGMetalRenderContext *)[PXGPrivateMetalRenderContext alloc] initWithDevice:deviceCopy commandQueue:queueCopy];

  return v7;
}

+ (id)privateContextWithDevice:(id)device
{
  deviceCopy = device;
  v4 = [[PXGPrivateMetalRenderContext alloc] initWithDevice:deviceCopy];

  return v4;
}

@end