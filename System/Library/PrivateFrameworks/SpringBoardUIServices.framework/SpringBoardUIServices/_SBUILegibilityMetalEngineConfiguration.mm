@interface _SBUILegibilityMetalEngineConfiguration
+ (id)buildDestinationTextureForDevice:(id)device size:(CGSize)size pixelFormat:(unint64_t)format outOutputBytes:(void *)bytes outLength:(unint64_t *)length outBytesPerRow:(unint64_t *)row;
- (CGSize)_metalTextureOutputSizeForInputSize:(CGSize)size;
- (SBUILegibilitySettings)settings;
- (_SBUILegibilityMetalEngineConfiguration)initWithScreen:(id)screen settings:(id)settings algo:(int64_t)algo pixelFormat:(unint64_t)format;
- (id)_prepareImageForConvolution:(id)convolution settings:(id)settings;
- (id)_sourceTextureForImage:(id)image settings:(id)settings outMetalOutputTextureSize:(CGSize *)size;
- (id)drawImageForSize:(CGSize)size scale:(double)scale drawBlock:(id)block;
- (id)executeBlurForImage:(id)image settings:(id)settings;
- (void)_configureConvolutionKernel;
- (void)dealloc;
@end

@implementation _SBUILegibilityMetalEngineConfiguration

- (_SBUILegibilityMetalEngineConfiguration)initWithScreen:(id)screen settings:(id)settings algo:(int64_t)algo pixelFormat:(unint64_t)format
{
  screenCopy = screen;
  settingsCopy = settings;
  v14 = settingsCopy;
  if (screenCopy)
  {
    if (settingsCopy)
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
    objc_storeStrong(&v15->_screen, screen);
    [screenCopy scale];
    *(v16 + 104) = v17;
    *(v16 + 40) = algo;
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

    newCommandQueue = [v20 newCommandQueue];
    v22 = *(v16 + 16);
    *(v16 + 16) = newCommandQueue;

    v23 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(v16 + 72)];
    v24 = *(v16 + 80);
    *(v16 + 80) = v23;

    *(v16 + 24) = format;
    *(v16 + 32) = SBUIColorSpaceFromPixelFormat(format);
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

+ (id)buildDestinationTextureForDevice:(id)device size:(CGSize)size pixelFormat:(unint64_t)format outOutputBytes:(void *)bytes outLength:(unint64_t *)length outBytesPerRow:(unint64_t *)row
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  SBUIBytesPerPixelForMetalPixelFormat(format);
  v15 = (CGBitmapGetAlignedBytesPerRow() & 0xFFFFFFFFFFFFFFC0) + 64;
  v16 = ((v15 * height) & 0xFFFFFFFFFFFFF000) + 4096;
  v17 = malloc_default_zone();
  v18 = malloc_type_zone_memalign(v17, 0x1000uLL, v16, 0x4FCC339FuLL);
  bzero(v18, v16);
  if (bytes)
  {
    *bytes = v18;
  }

  if (length)
  {
    *length = v16;
  }

  if (row)
  {
    *row = v15;
  }

  v19 = [deviceCopy newBufferWithBytesNoCopy:v18 length:v16 options:0 deallocator:0];

  v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:0];
  [v20 setUsage:2];
  v21 = [v19 newTextureWithDescriptor:v20 offset:0 bytesPerRow:v15];

  return v21;
}

- (id)_sourceTextureForImage:(id)image settings:(id)settings outMetalOutputTextureSize:(CGSize *)size
{
  imageCopy = image;
  v9 = [(_SBUILegibilityMetalEngineConfiguration *)self _prepareImageForConvolution:imageCopy settings:settings];
  cGImage = [v9 CGImage];
  if (cGImage)
  {
    v11 = cGImage;
    Width = CGImageGetWidth(cGImage);
    [(_SBUILegibilityMetalEngineConfiguration *)self _metalTextureOutputSizeForInputSize:Width, CGImageGetHeight(v11)];
    if (size)
    {
      size->width = v13;
      size->height = v14;
    }

    v15 = CGImageGetProperty();
    if (v15 && ([MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:SBUIMetalPixelFormatForCGImage(imageCopy width:0) height:objc_msgSend(v15 mipmapped:"width"), objc_msgSend(v15, "height"), 0], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setUsage:", 2), v17 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_device, "newTextureWithDescriptor:iosurface:plane:", v16, v15, 0), v16, v17) || (textureLoader = self->_textureLoader, v23 = 0, v17 = -[MTKTextureLoader newTextureWithCGImage:options:error:](textureLoader, "newTextureWithCGImage:options:error:", v11, 0, &v23), (v19 = v23) == 0))
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

- (CGSize)_metalTextureOutputSizeForInputSize:(CGSize)size
{
  width = size.width;
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] != width || v5 != size.height)
  {
    v7 = width;
    v4 = llroundf(v7);
    height = size.height;
    v5 = llroundf(height);
  }

  v9 = v5;
  result.height = v9;
  result.width = v4;
  return result;
}

- (id)_prepareImageForConvolution:(id)convolution settings:(id)settings
{
  convolutionCopy = convolution;
  settingsCopy = settings;
  v8 = settingsCopy;
  if (self->_shadowScale != 1.0)
  {
    if (settingsCopy)
    {
      [settingsCopy shadowSettings];
      v9 = *&v32;
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v9 = 0.0;
    }

    scale = self->_scale;
    [convolutionCopy size];
    v13 = v9 + v12;
    shadowScale = self->_shadowScale;
    *&v11 = shadowScale * (v9 + v11);
    v15 = ceilf(*&v11);
    *&v11 = shadowScale * v13;
    v16 = ceilf(*&v11);
    [convolutionCopy size];
    [convolutionCopy size];
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
    v24 = convolutionCopy;
    v21 = convolutionCopy;
    convolutionCopy = [(_SBUILegibilityMetalEngineConfiguration *)self drawImageForSize:v23 scale:v15 drawBlock:v16, scale, *&scale];
  }

  return convolutionCopy;
}

- (id)drawImageForSize:(CGSize)size scale:(double)scale drawBlock:(id)block
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

  v7 = UIImageCreateFromMTLPixelFormat(pixelFormat, v6, 0, block, 0, size.width, size.height, scale);

  return v7;
}

- (id)executeBlurForImage:(id)image settings:(id)settings
{
  if (image)
  {
    settingsCopy = settings;
    imageCopy = image;
    [imageCopy scale];
    v9 = v8;
    imageOrientation = [imageCopy imageOrientation];
    v21 = *MEMORY[0x1E695F060];
    v11 = [(_SBUILegibilityMetalEngineConfiguration *)self _sourceTextureForImage:imageCopy settings:settingsCopy outMetalOutputTextureSize:&v21];

    v19 = 0;
    v20 = 0;
    bytesPerRow = 0;
    v12 = [objc_opt_class() buildDestinationTextureForDevice:self->_device size:self->_pixelFormat pixelFormat:&v20 outOutputBytes:&v19 outLength:&bytesPerRow outBytesPerRow:v21];
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [(MPSUnaryImageKernel *)self->_blurKernel encodeToCommandBuffer:commandBuffer sourceTexture:v11 destinationTexture:v12];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    v14 = CGDataProviderCreateWithData(0, v20, v19, _SBUILegibilityMetalEngineCGDataProviderFreeDataCallback);
    v15 = CGImageCreate(*&v21, *(&v21 + 1), 8uLL, 0x20uLL, bytesPerRow, self->_outputColorSpace, 1u, v14, 0, 0, kCGRenderingIntentDefault);
    v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15 scale:imageOrientation orientation:v9];
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