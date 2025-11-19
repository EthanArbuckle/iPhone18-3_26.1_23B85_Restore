@interface _SBUILegibilityMetalEngineConfiguration
+ (id)buildDestinationTextureForDevice:(id)a3 size:(CGSize)a4 pixelFormat:(unint64_t)a5 outOutputBytes:(void *)a6 outLength:(unint64_t *)a7 outBytesPerRow:(unint64_t *)a8;
- (CGSize)_metalTextureOutputSizeForInputSize:(CGSize)a3;
- (SBUILegibilitySettings)settings;
- (_SBUILegibilityMetalEngineConfiguration)initWithScreen:(id)a3 settings:(id)a4 algo:(int64_t)a5 pixelFormat:(unint64_t)a6;
- (id)_prepareImageForConvolution:(id)a3 settings:(id)a4;
- (id)_sourceTextureForImage:(id)a3 settings:(id)a4 outMetalOutputTextureSize:(CGSize *)a5;
- (id)drawImageForSize:(CGSize)a3 scale:(double)a4 drawBlock:(id)a5;
- (id)executeBlurForImage:(id)a3 settings:(id)a4;
- (void)_configureConvolutionKernel;
- (void)dealloc;
@end

@implementation _SBUILegibilityMetalEngineConfiguration

- (_SBUILegibilityMetalEngineConfiguration)initWithScreen:(id)a3 settings:(id)a4 algo:(int64_t)a5 pixelFormat:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBUILegibilityMetalEngineConfiguration initWithScreen:a2 settings:self algo:? pixelFormat:?];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  [_SBUILegibilityMetalEngineConfiguration initWithScreen:a2 settings:self algo:? pixelFormat:?];
LABEL_3:
  v26.receiver = self;
  v26.super_class = _SBUILegibilityMetalEngineConfiguration;
  v15 = [(_SBUILegibilityMetalEngineConfiguration *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_screen, a3);
    [v12 scale];
    *(v16 + 104) = v17;
    *(v16 + 40) = a5;
    *(v16 + 88) = 0x4028000000000000;
    objc_storeWeak((v16 + 64), v14);
    v18 = MTLCreateSystemDefaultDevice();
    v19 = *(v16 + 72);
    *(v16 + 72) = v18;

    v20 = *(v16 + 72);
    if (!v20)
    {
      [_SBUILegibilityMetalEngineConfiguration initWithScreen:a2 settings:v16 algo:(v16 + 72) pixelFormat:&v27];
      v20 = v27;
    }

    v21 = [v20 newCommandQueue];
    v22 = *(v16 + 16);
    *(v16 + 16) = v21;

    v23 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(v16 + 72)];
    v24 = *(v16 + 80);
    *(v16 + 80) = v23;

    *(v16 + 24) = a6;
    *(v16 + 32) = SBUIColorSpaceFromPixelFormat(a6);
    [v16 _configureConvolutionKernel];
  }

  return v16;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_outputColorSpace);
  v3.receiver = self;
  v3.super_class = _SBUILegibilityMetalEngineConfiguration;
  [(_SBUILegibilityMetalEngineConfiguration *)&v3 dealloc];
}

- (void)_configureConvolutionKernel
{
  if (self->_blurKernel)
  {
    return;
  }

  shadowRadius = self->_shadowRadius;
  scale = self->_scale;
  v6 = 0.125;
  if (shadowRadius * scale <= 10.0)
  {
    v6 = 0.25;
  }

  self->_shadowScale = v6;
  v7 = scale * (shadowRadius * v6);
  if (v7 < 2.0)
  {
    v7 = 2.0;
  }

  v8 = vcvtmd_u64_f64(v7 * 3.0 * 2.50662827 * 0.25 + 0.5);
  self->_radius = v8;
  algo = self->_algo;
  if (algo == 1)
  {
    self->_radius = (v8 >> 2);
    v11 = objc_alloc(MEMORY[0x1E69745C0]);
    *&v12 = self->_radius;
    v10 = [v11 initWithDevice:self->_device sigma:v12];
  }

  else
  {
    if (algo)
    {
      blurKernel = [MEMORY[0x1E696AAA8] currentHandler];
      [blurKernel handleFailureInMethod:a2 object:self file:@"SBUILegibilityMetalEngine.m" lineNumber:123 description:@"unknown algorithm defined for legibility?"];
      goto LABEL_14;
    }

    if ((v8 & 1) == 0)
    {
      self->_radius = v8 | 1;
    }

    v10 = [objc_alloc(MEMORY[0x1E6974638]) initWithDevice:self->_device kernelWidth:self->_radius kernelHeight:self->_radius];
  }

  blurKernel = self->_blurKernel;
  self->_blurKernel = v10;
LABEL_14:

  v15 = self->_blurKernel;

  [(MPSUnaryImageKernel *)v15 setEdgeMode:1];
}

+ (id)buildDestinationTextureForDevice:(id)a3 size:(CGSize)a4 pixelFormat:(unint64_t)a5 outOutputBytes:(void *)a6 outLength:(unint64_t *)a7 outBytesPerRow:(unint64_t *)a8
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  SBUIBytesPerPixelForMetalPixelFormat(a5);
  v15 = (CGBitmapGetAlignedBytesPerRow() & 0xFFFFFFFFFFFFFFC0) + 64;
  v16 = ((v15 * height) & 0xFFFFFFFFFFFFF000) + 4096;
  v17 = malloc_default_zone();
  v18 = malloc_type_zone_memalign(v17, 0x1000uLL, v16, 0x4FCC339FuLL);
  bzero(v18, v16);
  if (a6)
  {
    *a6 = v18;
  }

  if (a7)
  {
    *a7 = v16;
  }

  if (a8)
  {
    *a8 = v15;
  }

  v19 = [v14 newBufferWithBytesNoCopy:v18 length:v16 options:0 deallocator:0];

  v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a5 width:width height:height mipmapped:0];
  [v20 setUsage:2];
  v21 = [v19 newTextureWithDescriptor:v20 offset:0 bytesPerRow:v15];

  return v21;
}

- (id)_sourceTextureForImage:(id)a3 settings:(id)a4 outMetalOutputTextureSize:(CGSize *)a5
{
  v8 = a3;
  v9 = [(_SBUILegibilityMetalEngineConfiguration *)self _prepareImageForConvolution:v8 settings:a4];
  v10 = [v9 CGImage];
  if (v10)
  {
    v11 = v10;
    Width = CGImageGetWidth(v10);
    [(_SBUILegibilityMetalEngineConfiguration *)self _metalTextureOutputSizeForInputSize:Width, CGImageGetHeight(v11)];
    if (a5)
    {
      a5->width = v13;
      a5->height = v14;
    }

    v15 = CGImageGetProperty();
    if (v15 && ([MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:SBUIMetalPixelFormatForCGImage(v8 width:0) height:objc_msgSend(v15 mipmapped:"width"), objc_msgSend(v15, "height"), 0], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setUsage:", 2), v17 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_device, "newTextureWithDescriptor:iosurface:plane:", v16, v15, 0), v16, v17) || (textureLoader = self->_textureLoader, v23 = 0, v17 = -[MTKTextureLoader newTextureWithCGImage:options:error:](textureLoader, "newTextureWithCGImage:options:error:", v11, 0, &v23), (v19 = v23) == 0))
    {
      v17 = v17;
      v20 = 0;
      v21 = v17;
    }

    else
    {
      v20 = v19;
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CGSize)_metalTextureOutputSizeForInputSize:(CGSize)a3
{
  width = a3.width;
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] != width || v5 != a3.height)
  {
    v7 = width;
    v4 = llroundf(v7);
    height = a3.height;
    v5 = llroundf(height);
  }

  v9 = v5;
  result.height = v9;
  result.width = v4;
  return result;
}

- (id)_prepareImageForConvolution:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_shadowScale != 1.0)
  {
    if (v7)
    {
      [v7 shadowSettings];
      v9 = *&v32;
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v9 = 0.0;
    }

    scale = self->_scale;
    [v6 size];
    v13 = v9 + v12;
    shadowScale = self->_shadowScale;
    *&v11 = shadowScale * (v9 + v11);
    v15 = ceilf(*&v11);
    *&v11 = shadowScale * v13;
    v16 = ceilf(*&v11);
    [v6 size];
    [v6 size];
    UIRectCenteredIntegralRectScale();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80___SBUILegibilityMetalEngineConfiguration__prepareImageForConvolution_settings___block_invoke;
    v23[3] = &unk_1E789EE30;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v24 = v6;
    v21 = v6;
    v6 = [(_SBUILegibilityMetalEngineConfiguration *)self drawImageForSize:v23 scale:v15 drawBlock:v16, scale, *&scale];
  }

  return v6;
}

- (id)drawImageForSize:(CGSize)a3 scale:(double)a4 drawBlock:(id)a5
{
  pixelFormat = self->_pixelFormat;
  if (pixelFormat == 10)
  {
    v6 = 7;
  }

  else
  {
    v6 = 2;
  }

  v7 = UIImageCreateFromMTLPixelFormat(pixelFormat, v6, 0, a5, 0, a3.width, a3.height, a4);

  return v7;
}

- (id)executeBlurForImage:(id)a3 settings:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    [v7 scale];
    v9 = v8;
    v10 = [v7 imageOrientation];
    v21 = *MEMORY[0x1E695F060];
    v11 = [(_SBUILegibilityMetalEngineConfiguration *)self _sourceTextureForImage:v7 settings:v6 outMetalOutputTextureSize:&v21];

    v19 = 0;
    v20 = 0;
    bytesPerRow = 0;
    v12 = [objc_opt_class() buildDestinationTextureForDevice:self->_device size:self->_pixelFormat pixelFormat:&v20 outOutputBytes:&v19 outLength:&bytesPerRow outBytesPerRow:v21];
    v13 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [(MPSUnaryImageKernel *)self->_blurKernel encodeToCommandBuffer:v13 sourceTexture:v11 destinationTexture:v12];
    [v13 commit];
    [v13 waitUntilCompleted];
    v14 = CGDataProviderCreateWithData(0, v20, v19, _SBUILegibilityMetalEngineCGDataProviderFreeDataCallback);
    v15 = CGImageCreate(*&v21, *(&v21 + 1), 8uLL, 0x20uLL, bytesPerRow, self->_outputColorSpace, 1u, v14, 0, 0, kCGRenderingIntentDefault);
    v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15 scale:v10 orientation:v9];
    if (v15)
    {
      CGImageRelease(v15);
    }

    if (v14)
    {
      CGDataProviderRelease(v14);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (SBUILegibilitySettings)settings
{
  WeakRetained = objc_loadWeakRetained(&self->_settings);

  return WeakRetained;
}

- (void)initWithScreen:(uint64_t)a1 settings:(uint64_t)a2 algo:pixelFormat:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityMetalEngine.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
}

- (void)initWithScreen:(uint64_t)a1 settings:(uint64_t)a2 algo:pixelFormat:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityMetalEngine.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
}

- (void)initWithScreen:(uint64_t)a1 settings:(uint64_t)a2 algo:(void *)a3 pixelFormat:(void *)a4 .cold.3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityMetalEngine.m" lineNumber:82 description:@"Unable to find a device for this Screen."];

  *a4 = *a3;
}

@end