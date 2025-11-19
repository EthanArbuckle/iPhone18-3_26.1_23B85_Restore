@interface PXGMetalRenderContext
+ (id)privateContextWithDevice:(id)a3;
+ (id)privateContextWithDevice:(id)a3 commandQueue:(id)a4;
+ (id)sharedContextWithDevice:(id)a3 commandQueue:(id)a4;
- (MTLLibrary)library;
- (PXGMetalRenderContext)initWithDevice:(id)a3 commandQueue:(id)a4;
- (id)newMipmappedTextureFromTexture:(id)a3;
- (id)newTextureWithDescriptor:(id)a3;
- (void)_blitFromBuffer:(id)a3 toTexture:(id)a4 inRegion:(id *)a5 bytesPerRow:(unint64_t)a6 offset:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (void)_blitFromTexture:(id)a3 toTexture:(id)a4 mipmapped:(BOOL)a5;
- (void)_createComputePipelinesIfNeeded;
- (void)blitBuffer:(id)a3 toTexture:(id)a4 count:(unint64_t)a5 blitEncoder:(id)a6;
- (void)blitTexture:(id)a3 toTexture:(id)a4 blitEncoder:(id)a5;
- (void)copyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (void)encodeCopyKernelWithSourceTexture:(id)a3 targetTexture:(id)a4 sourceRegions:(id)a5 sourceRegionsOffset:(unint64_t)a6 targetRegionSize:(id *)a7 regionsCount:(unint64_t)a8 computeEncoder:(id)a9;
- (void)fastCopyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
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
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:45 description:{@"Error creating library:%@", v8}];

      abort();
    }

    library = self->_library;
  }

  return library;
}

- (void)_blitFromTexture:(id)a3 toTexture:(id)a4 mipmapped:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  v8 = a3;
  v9 = [(PXGMetalRenderContext *)self commandQueue];
  v10 = [v9 commandBuffer];

  v11 = [v10 blitCommandEncoder];
  [v11 setLabel:@"PXGTextureUtilities Texture Blit Encoder"];
  [v11 copyFromTexture:v8 toTexture:v12];

  if (v5)
  {
    [v11 generateMipmapsForTexture:v12];
  }

  [v11 endEncoding];
  [v10 commit];
}

- (void)_blitFromBuffer:(id)a3 toTexture:(id)a4 inRegion:(id *)a5 bytesPerRow:(unint64_t)a6 offset:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  kdebug_trace();
  v16 = [(PXGMetalRenderContext *)self commandQueue];
  v17 = [v16 commandBuffer];

  v18 = [v17 blitCommandEncoder];
  [v18 setLabel:@"PXGMetalRenderContext Buffer Blit Encoder"];
  var2 = a5->var1.var2;
  v22 = *&a5->var1.var0;
  v23 = var2;
  v20 = *&a5->var0.var0;
  v21 = a5->var0.var2;
  [v18 copyFromBuffer:v14 sourceOffset:a7 sourceBytesPerRow:a6 sourceBytesPerImage:a8 sourceSize:&v22 toTexture:v15 destinationSlice:0 destinationLevel:0 destinationOrigin:&v20];

  [v18 endEncoding];
  [v17 commit];
  kdebug_trace();
}

- (void)_createComputePipelinesIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_textureCopyRegionKernelPipelineState)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v17 = [(PXGMetalRenderContext *)self wantsUniformThreadgroups];
    v4 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v4 setConstantValues:v15 type:29 withRange:{0, 10}];
    v5 = [(PXGMetalRenderContext *)self library];
    v14 = 0;
    v6 = [v5 newFunctionWithName:@"copy_texture_region" constantValues:v4 error:&v14];
    v7 = v14;

    if (v7)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:169 description:{@"Error creating copy_texture_region function:%@", v7}];
    }

    else
    {
      v8 = [(PXGMetalRenderContext *)self device];
      v13 = 0;
      v9 = [v8 newComputePipelineStateWithFunction:v6 error:&v13];
      v10 = v13;
      textureCopyRegionKernelPipelineState = self->_textureCopyRegionKernelPipelineState;
      self->_textureCopyRegionKernelPipelineState = v9;

      if (!v10)
      {

        return;
      }

      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:175 description:{@"Error creating pipelineState:%@", v10}];
    }

    abort();
  }
}

- (void)encodeCopyKernelWithSourceTexture:(id)a3 targetTexture:(id)a4 sourceRegions:(id)a5 sourceRegionsOffset:(unint64_t)a6 targetRegionSize:(id *)a7 regionsCount:(unint64_t)a8 computeEncoder:(id)a9
{
  v15 = a9;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  [(PXGMetalRenderContext *)self _createComputePipelinesIfNeeded];
  v19 = [(PXGMetalRenderContext *)self textureCopyRegionKernelPipelineState];
  v20 = [v19 threadExecutionWidth];

  v21 = [(PXGMetalRenderContext *)self textureCopyRegionKernelPipelineState];
  v22 = [v21 maxTotalThreadsPerThreadgroup] / v20;

  v27 = *&a7->var0;
  v36 = vmovn_s64(*&a7->var0);
  v23 = [(PXGMetalRenderContext *)self textureCopyRegionKernelPipelineState];
  [v15 setComputePipelineState:v23];

  [v15 setTexture:v18 atIndex:0];
  [v15 setTexture:v17 atIndex:1];

  [v15 setBuffer:v16 offset:a6 atIndex:0];
  [v15 setBytes:&v36 length:8 atIndex:1];
  if ([(PXGMetalRenderContext *)self wantsUniformThreadgroups])
  {
    var1 = a7->var1;
    v25 = (v20 + a7->var0 * a8 - 1) / v20;
    v35 = a8;
    v26 = (v22 + var1 - 1) / v22;
    [v15 setBytes:&v35 length:4 atIndex:2];
    v32 = v25;
    v33 = v26;
    v34 = 1;
    v29 = v20;
    v30 = v22;
    v31 = 1;
    [v15 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
  }

  else
  {
    v33 = *(&v27 + 1);
    v31 = 1;
    v32 = v27 * a8;
    v34 = 1;
    v29 = v20;
    v30 = v22;
    [v15 dispatchThreads:&v32 threadsPerThreadgroup:&v29];
  }

  [v15 endEncoding];
}

- (void)blitBuffer:(id)a3 toTexture:(id)a4 count:(unint64_t)a5 blitEncoder:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a4;
  kdebug_trace();
  v12 = [v11 width];
  if (v12 >= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  memset(v15, 0, sizeof(v15));
  v14[0] = v13;
  v14[1] = (a5 + v12 - 1) / v12;
  v14[2] = 1;
  [v10 copyFromBuffer:v9 sourceOffset:0 sourceBytesPerRow:4 * v13 sourceBytesPerImage:0 sourceSize:v14 toTexture:v11 destinationSlice:0 destinationLevel:0 destinationOrigin:v15];

  [v10 endEncoding];
  kdebug_trace();
}

- (void)blitTexture:(id)a3 toTexture:(id)a4 blitEncoder:(id)a5
{
  v9 = a3;
  v7 = a5;
  v8 = a4;
  [v9 width];
  [v9 height];
  kdebug_trace();
  [v7 copyFromTexture:v9 toTexture:v8];

  [v7 endEncoding];
  kdebug_trace();
}

- (id)newMipmappedTextureFromTexture:(id)a3
{
  v4 = a3;
  v5 = [v4 pixelFormat];
  v6 = [v4 width];
  v7 = [v4 height];
  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v5 width:v6 height:v7 mipmapped:1];
  [v8 setUsage:1];
  v9 = [(PXGMetalRenderContext *)self newTextureWithDescriptor:v8];
  -[PXGMetalRenderContext _blitFromTexture:toTexture:mipmapped:](self, "_blitFromTexture:toTexture:mipmapped:", v4, v9, [v9 mipmapLevelCount] > 1);

  return v9;
}

- (void)fastCopyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v10 = a4;
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v11 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:80 description:{@"Method %s is a responsibility of subclass %@", "-[PXGMetalRenderContext fastCopyBytes:toTexture:inRegion:length:bytesPerRow:bytesPerImage:]", v13}];

  abort();
}

- (void)copyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v10 = a4;
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v11 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:76 description:{@"Method %s is a responsibility of subclass %@", "-[PXGMetalRenderContext copyBytes:toTexture:inRegion:length:bytesPerRow:bytesPerImage:]", v13}];

  abort();
}

- (id)newTextureWithDescriptor:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderContext.m" lineNumber:72 description:{@"Method %s is a responsibility of subclass %@", "-[PXGMetalRenderContext newTextureWithDescriptor:]", v8}];

  abort();
}

- (PXGMetalRenderContext)initWithDevice:(id)a3 commandQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXGMetalRenderContext;
  v9 = [(PXGMetalRenderContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_commandQueue, a4);
    v10->_wantsUniformThreadgroups = 0;
  }

  return v10;
}

+ (id)sharedContextWithDevice:(id)a3 commandQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PXGMetalRenderContext *)[PXGSharedMetalRenderContext alloc] initWithDevice:v6 commandQueue:v5];

  return v7;
}

+ (id)privateContextWithDevice:(id)a3 commandQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PXGMetalRenderContext *)[PXGPrivateMetalRenderContext alloc] initWithDevice:v6 commandQueue:v5];

  return v7;
}

+ (id)privateContextWithDevice:(id)a3
{
  v3 = a3;
  v4 = [[PXGPrivateMetalRenderContext alloc] initWithDevice:v3];

  return v4;
}

@end