@interface PXGPixelBufferMetalRenderDestination
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (CGColorSpace)destinationColorSpace;
- (CGRect)renderBoundsInPoints;
- (CGSize)renderSize;
- (MTLTexture)depthStencilTexture;
- (PXGMetalRenderDestinationDelegate)delegate;
- (PXGPixelBufferMetalRenderDestination)initWithLayoutQueue:(id)a3 pixelBufferPool:(id)a4 scale:(double)a5 enablePoolRelease:(BOOL)a6;
- (PXGPixelBufferPool)pixelBufferPool;
- (unint64_t)destinationColorSpaceName;
- (void)_createRenderPassDescriptor;
- (void)_createResourceForRenderingFrame;
- (void)_invalidateDepthStencilTexture;
- (void)_invalidatePixelBufferPool;
- (void)_releaseResourcesForRenderingFrame;
- (void)_updatePixelBufferProperties;
- (void)dealloc;
- (void)notifyDidCompleteRenderForFrameID:(int64_t)a3;
- (void)releaseCachedResources;
- (void)renderImmediately;
- (void)setBackgroundColor:(id)a3;
- (void)setDestinationColorSpace:(CGColorSpace *)a3;
- (void)setNeedsRender;
- (void)setPixelBufferPool:(id)a3;
- (void)setRenderSize:(CGSize)a3;
- (void)setScale:(double)a3;
@end

@implementation PXGPixelBufferMetalRenderDestination

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

- (CGRect)renderBoundsInPoints
{
  x = self->_renderBoundsInPoints.origin.x;
  y = self->_renderBoundsInPoints.origin.y;
  width = self->_renderBoundsInPoints.size.width;
  height = self->_renderBoundsInPoints.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)renderSize
{
  width = self->_renderSize.width;
  height = self->_renderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXGMetalRenderDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)releaseCachedResources
{
  v3 = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(v3);

  CVMetalTextureCacheFlush(self->_textureCache, 0);
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolFlush([(PXGPixelBufferPool *)pixelBufferPool pixelBufferPool], 1uLL);
  }

  if ([(PXGPixelBufferMetalRenderDestination *)self enablePoolRelease])
  {
    [(PXGPixelBufferMetalRenderDestination *)self _invalidatePixelBufferPool];

    [(PXGPixelBufferMetalRenderDestination *)self _invalidateDepthStencilTexture];
  }
}

- (void)notifyDidCompleteRenderForFrameID:(int64_t)a3
{
  v5 = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PXGPixelBufferMetalRenderDestination *)self renderCompletionBlock];
  if (v6)
  {
    pixelBuffer = self->_pixelBuffer;

    if (pixelBuffer)
    {
      v8 = [(PXGPixelBufferMetalRenderDestination *)self renderCompletionBlock];
      (v8)[2](v8, self->_pixelBuffer, a3);
    }
  }

  [(PXGPixelBufferMetalRenderDestination *)self _releaseResourcesForRenderingFrame];
}

- (void)renderImmediately
{
  v3 = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(v3);

  [(PXGPixelBufferMetalRenderDestination *)self _createResourceForRenderingFrame];
  v4 = [(PXGPixelBufferMetalRenderDestination *)self delegate];
  [v4 renderDestinationRequestRender:self];
}

- (void)setNeedsRender
{
  v3 = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(v3);

  [(PXGPixelBufferMetalRenderDestination *)self renderImmediately];
}

- (unint64_t)destinationColorSpaceName
{
  v2 = [(PXGPixelBufferMetalRenderDestination *)self destinationColorSpace];

  return MEMORY[0x28219D168](v2);
}

- (void)_releaseResourcesForRenderingFrame
{
  if (self->_pixelBuffer)
  {
    [(PXGPixelBufferMetalRenderDestination *)self setRenderTexture:0];
    [(PXGPixelBufferMetalRenderDestination *)self setCurrentRenderPassDescriptor:0];
    CVBufferRelease(self->_cvMetalTexture);
    CVPixelBufferRelease(self->_pixelBuffer);
    self->_cvMetalTexture = 0;
    self->_pixelBuffer = 0;
  }
}

- (void)_createRenderPassDescriptor
{
  v23 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v3 = [v23 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 setLoadAction:2];

  [(PXGPixelBufferMetalRenderDestination *)self clearColor];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v23 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript:0];
  [v14 setClearColor:{v6, v8, v10, v12}];

  v15 = [(PXGPixelBufferMetalRenderDestination *)self renderTexture];
  v16 = [v23 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript:0];
  [v17 setTexture:v15];

  [(PXGPixelBufferMetalRenderDestination *)self setCurrentRenderPassDescriptor:v23];
  v18 = [(PXGPixelBufferMetalRenderDestination *)self depthStencilTexture];

  if (v18)
  {
    v19 = [v23 depthAttachment];
    v20 = [(PXGPixelBufferMetalRenderDestination *)self depthStencilTexture];
    [v19 setTexture:v20];

    [v19 setLoadAction:2];
    [v19 setStoreAction:0];
    [v19 setClearDepth:1.0];
    v21 = [v23 stencilAttachment];
    v22 = [(PXGPixelBufferMetalRenderDestination *)self depthStencilTexture];
    [v21 setTexture:v22];

    [v21 setLoadAction:2];
    [v21 setStoreAction:0];
    [v21 setClearStencil:0];
  }
}

- (void)_createResourceForRenderingFrame
{
  [(PXGPixelBufferMetalRenderDestination *)self _releaseResourcesForRenderingFrame];
  v3 = *MEMORY[0x277CBECE8];
  v4 = [(PXGPixelBufferMetalRenderDestination *)self pixelBufferPool];
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v3, [v4 pixelBufferPool], &self->_pixelBuffer);

  if (PixelBuffer)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Couldn't create pixel buffer", buf, 2u);
    }

    CVPixelBufferRelease(self->_pixelBuffer);
  }

  else
  {
    textureCache = self->_textureCache;
    v8 = self->_pixelBuffer;
    v9 = [(PXGPixelBufferMetalRenderDestination *)self colorPixelFormat];
    [(PXGPixelBufferMetalRenderDestination *)self renderSize];
    v11 = v10;
    [(PXGPixelBufferMetalRenderDestination *)self renderSize];
    if (CVMetalTextureCacheCreateTextureFromImage(v3, textureCache, v8, 0, v9, v11, v12, 0, &self->_cvMetalTexture))
    {
      v13 = PXAssertGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "Couldn't create metal texture", v16, 2u);
      }
    }

    else
    {
      v14 = CVMetalTextureGetTexture(self->_cvMetalTexture);
      [(PXGPixelBufferMetalRenderDestination *)self setRenderTexture:v14];

      [(PXGPixelBufferMetalRenderDestination *)self _createRenderPassDescriptor];
    }
  }
}

- (void)_updatePixelBufferProperties
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    [(PXGPixelBufferPool *)pixelBufferPool pixelSize];
    self->_poolPixelSize.width = v4;
    self->_poolPixelSize.height = v5;
    self->_poolPixelFormatType = [(PXGPixelBufferPool *)self->_pixelBufferPool pixelFormatType];
    v6 = [(PXGPixelBufferPool *)self->_pixelBufferPool colorSpace];
    if (!v6)
    {
      v6 = PXGetColorSpace();
    }

    [(PXGPixelBufferMetalRenderDestination *)self setDestinationColorSpace:v6];
    [(PXGPixelBufferPool *)self->_pixelBufferPool pixelSize];
    [(PXGPixelBufferMetalRenderDestination *)self setRenderSize:?];
    PXSizeScale();
    self->_renderBoundsInPoints.origin.x = 0.0;
    self->_renderBoundsInPoints.origin.y = 0.0;
    self->_renderBoundsInPoints.size.width = v7;
    self->_renderBoundsInPoints.size.height = v8;
    v9 = [(PXGPixelBufferPool *)self->_pixelBufferPool pixelFormatType];
    self->_pixelBufferFormatType = v9;
    if (v9 == 1380411457)
    {
      v10 = 115;
      goto LABEL_8;
    }

    if (v9 == 1111970369)
    {
      v10 = 80;
LABEL_8:
      self->_colorPixelFormat = v10;
      return;
    }

    v11 = PXAssertGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_21AD38000, v11, OS_LOG_TYPE_ERROR, "Unsupported pixel format", v12, 2u);
    }
  }
}

- (CGColorSpace)destinationColorSpace
{
  v2 = CGColorSpaceRetain(self->_destinationColorSpace);
  v3 = v2;
  if (v2)
  {
    CFAutorelease(v2);
  }

  return v3;
}

- (void)setDestinationColorSpace:(CGColorSpace *)a3
{
  destinationColorSpace = self->_destinationColorSpace;
  if (destinationColorSpace != a3)
  {
    CGColorSpaceRelease(destinationColorSpace);
    self->_destinationColorSpace = a3;

    CGColorSpaceRetain(a3);
  }
}

- (MTLTexture)depthStencilTexture
{
  depthStencilTexture = self->_depthStencilTexture;
  if (!depthStencilTexture)
  {
    v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:260 width:self->_renderSize.width height:self->_renderSize.height mipmapped:0];
    [v4 setSampleCount:1];
    if ([v4 sampleCount] >= 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    [v4 setTextureType:v5];
    [v4 setUsage:4];
    [v4 setStorageMode:2];
    v6 = [(MTLDevice *)self->_device newTextureWithDescriptor:v4];
    v7 = self->_depthStencilTexture;
    self->_depthStencilTexture = v6;

    depthStencilTexture = self->_depthStencilTexture;
  }

  return depthStencilTexture;
}

- (void)_invalidateDepthStencilTexture
{
  depthStencilTexture = self->_depthStencilTexture;
  self->_depthStencilTexture = 0;
}

- (PXGPixelBufferPool)pixelBufferPool
{
  pixelBufferPool = self->_pixelBufferPool;
  if (!pixelBufferPool)
  {
    if (!self->_poolPixelFormatType)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXGPixelBufferMetalRenderDestination.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"_poolPixelFormatType != 0"}];
    }

    v4 = [PXGPixelBufferPool pixelBufferPoolWithSize:self->_poolPixelSize.width format:self->_poolPixelSize.height];
    v5 = self->_pixelBufferPool;
    self->_pixelBufferPool = v4;

    [(PXGPixelBufferMetalRenderDestination *)self _updatePixelBufferProperties];
    pixelBufferPool = self->_pixelBufferPool;
  }

  return pixelBufferPool;
}

- (void)_invalidatePixelBufferPool
{
  pixelBufferPool = self->_pixelBufferPool;
  self->_pixelBufferPool = 0;
}

- (void)setRenderSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_renderSize.width != a3.width || self->_renderSize.height != a3.height)
  {
    v7 = [(PXGPixelBufferMetalRenderDestination *)self delegate];
    [v7 renderDestination:self renderSizeWillChange:{width, height}];

    self->_renderSize.width = width;
    self->_renderSize.height = height;

    [(PXGPixelBufferMetalRenderDestination *)self _invalidateDepthStencilTexture];
  }
}

- (void)setPixelBufferPool:(id)a3
{
  v5 = a3;
  if (self->_pixelBufferPool != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pixelBufferPool, a3);
    [(PXGPixelBufferMetalRenderDestination *)self _updatePixelBufferProperties];
    v5 = v6;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != v4)
  {
    v13 = v4;
    v6 = [(UIColor *)backgroundColor isEqual:v4];
    v4 = v13;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v13 copy];
      v8 = self->_backgroundColor;
      self->_backgroundColor = v7;

      self->_clearColor.red = PXGClearColorFromColor(v13, [(PXGPixelBufferMetalRenderDestination *)self colorspace]);
      self->_clearColor.green = v9;
      self->_clearColor.blue = v10;
      self->_clearColor.alpha = v11;
      v12 = [(PXGPixelBufferMetalRenderDestination *)self delegate];
      [v12 renderDestinationRequestRender:self];

      v4 = v13;
    }
  }
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(PXGPixelBufferMetalRenderDestination *)self _updatePixelBufferProperties];
  }
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_destinationColorSpace);
  CVBufferRelease(self->_cvMetalTexture);
  renderTexture = self->_renderTexture;
  self->_renderTexture = 0;

  depthStencilTexture = self->_depthStencilTexture;
  self->_depthStencilTexture = 0;

  currentRenderPassDescriptor = self->_currentRenderPassDescriptor;
  self->_currentRenderPassDescriptor = 0;

  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  CVPixelBufferRelease(self->_pixelBuffer);
  v7.receiver = self;
  v7.super_class = PXGPixelBufferMetalRenderDestination;
  [(PXGPixelBufferMetalRenderDestination *)&v7 dealloc];
}

- (PXGPixelBufferMetalRenderDestination)initWithLayoutQueue:(id)a3 pixelBufferPool:(id)a4 scale:(double)a5 enablePoolRelease:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v22.receiver = self;
  v22.super_class = PXGPixelBufferMetalRenderDestination;
  v13 = [(PXGPixelBufferMetalRenderDestination *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layoutQueue, a3);
    v15 = [v12 copy];
    pixelBufferPool = v14->_pixelBufferPool;
    v14->_pixelBufferPool = v15;

    v14->_scale = a5;
    v17 = [MEMORY[0x277D75348] blackColor];
    backgroundColor = v14->_backgroundColor;
    v14->_backgroundColor = v17;

    v14->_clearColor.red = 0.0;
    v14->_clearColor.green = 0.0;
    v14->_clearColor.blue = 0.0;
    v14->_clearColor.alpha = 1.0;
    v19 = MTLCreateSystemDefaultDevice();
    device = v14->_device;
    v14->_device = v19;

    v14->_enablePoolRelease = a6;
    CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, v14->_device, 0, &v14->_textureCache);
    [(PXGPixelBufferMetalRenderDestination *)v14 _updatePixelBufferProperties];
  }

  return v14;
}

@end