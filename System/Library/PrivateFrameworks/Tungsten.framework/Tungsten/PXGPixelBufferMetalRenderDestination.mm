@interface PXGPixelBufferMetalRenderDestination
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (CGColorSpace)destinationColorSpace;
- (CGRect)renderBoundsInPoints;
- (CGSize)renderSize;
- (MTLTexture)depthStencilTexture;
- (PXGMetalRenderDestinationDelegate)delegate;
- (PXGPixelBufferMetalRenderDestination)initWithLayoutQueue:(id)queue pixelBufferPool:(id)pool scale:(double)scale enablePoolRelease:(BOOL)release;
- (PXGPixelBufferPool)pixelBufferPool;
- (unint64_t)destinationColorSpaceName;
- (void)_createRenderPassDescriptor;
- (void)_createResourceForRenderingFrame;
- (void)_invalidateDepthStencilTexture;
- (void)_invalidatePixelBufferPool;
- (void)_releaseResourcesForRenderingFrame;
- (void)_updatePixelBufferProperties;
- (void)dealloc;
- (void)notifyDidCompleteRenderForFrameID:(int64_t)d;
- (void)releaseCachedResources;
- (void)renderImmediately;
- (void)setBackgroundColor:(id)color;
- (void)setDestinationColorSpace:(CGColorSpace *)space;
- (void)setNeedsRender;
- (void)setPixelBufferPool:(id)pool;
- (void)setRenderSize:(CGSize)size;
- (void)setScale:(double)scale;
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
  layoutQueue = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

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

- (void)notifyDidCompleteRenderForFrameID:(int64_t)d
{
  layoutQueue = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  renderCompletionBlock = [(PXGPixelBufferMetalRenderDestination *)self renderCompletionBlock];
  if (renderCompletionBlock)
  {
    pixelBuffer = self->_pixelBuffer;

    if (pixelBuffer)
    {
      renderCompletionBlock2 = [(PXGPixelBufferMetalRenderDestination *)self renderCompletionBlock];
      (renderCompletionBlock2)[2](renderCompletionBlock2, self->_pixelBuffer, d);
    }
  }

  [(PXGPixelBufferMetalRenderDestination *)self _releaseResourcesForRenderingFrame];
}

- (void)renderImmediately
{
  layoutQueue = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  [(PXGPixelBufferMetalRenderDestination *)self _createResourceForRenderingFrame];
  delegate = [(PXGPixelBufferMetalRenderDestination *)self delegate];
  [delegate renderDestinationRequestRender:self];
}

- (void)setNeedsRender
{
  layoutQueue = [(PXGPixelBufferMetalRenderDestination *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  [(PXGPixelBufferMetalRenderDestination *)self renderImmediately];
}

- (unint64_t)destinationColorSpaceName
{
  destinationColorSpace = [(PXGPixelBufferMetalRenderDestination *)self destinationColorSpace];

  return MEMORY[0x28219D168](destinationColorSpace);
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
  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v4 = [colorAttachments objectAtIndexedSubscript:0];
  [v4 setLoadAction:2];

  [(PXGPixelBufferMetalRenderDestination *)self clearColor];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v14 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v14 setClearColor:{v6, v8, v10, v12}];

  renderTexture = [(PXGPixelBufferMetalRenderDestination *)self renderTexture];
  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v17 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v17 setTexture:renderTexture];

  [(PXGPixelBufferMetalRenderDestination *)self setCurrentRenderPassDescriptor:renderPassDescriptor];
  depthStencilTexture = [(PXGPixelBufferMetalRenderDestination *)self depthStencilTexture];

  if (depthStencilTexture)
  {
    depthAttachment = [renderPassDescriptor depthAttachment];
    depthStencilTexture2 = [(PXGPixelBufferMetalRenderDestination *)self depthStencilTexture];
    [depthAttachment setTexture:depthStencilTexture2];

    [depthAttachment setLoadAction:2];
    [depthAttachment setStoreAction:0];
    [depthAttachment setClearDepth:1.0];
    stencilAttachment = [renderPassDescriptor stencilAttachment];
    depthStencilTexture3 = [(PXGPixelBufferMetalRenderDestination *)self depthStencilTexture];
    [stencilAttachment setTexture:depthStencilTexture3];

    [stencilAttachment setLoadAction:2];
    [stencilAttachment setStoreAction:0];
    [stencilAttachment setClearStencil:0];
  }
}

- (void)_createResourceForRenderingFrame
{
  [(PXGPixelBufferMetalRenderDestination *)self _releaseResourcesForRenderingFrame];
  v3 = *MEMORY[0x277CBECE8];
  pixelBufferPool = [(PXGPixelBufferMetalRenderDestination *)self pixelBufferPool];
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v3, [pixelBufferPool pixelBufferPool], &self->_pixelBuffer);

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
    colorPixelFormat = [(PXGPixelBufferMetalRenderDestination *)self colorPixelFormat];
    [(PXGPixelBufferMetalRenderDestination *)self renderSize];
    v11 = v10;
    [(PXGPixelBufferMetalRenderDestination *)self renderSize];
    if (CVMetalTextureCacheCreateTextureFromImage(v3, textureCache, v8, 0, colorPixelFormat, v11, v12, 0, &self->_cvMetalTexture))
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
    colorSpace = [(PXGPixelBufferPool *)self->_pixelBufferPool colorSpace];
    if (!colorSpace)
    {
      colorSpace = PXGetColorSpace();
    }

    [(PXGPixelBufferMetalRenderDestination *)self setDestinationColorSpace:colorSpace];
    [(PXGPixelBufferPool *)self->_pixelBufferPool pixelSize];
    [(PXGPixelBufferMetalRenderDestination *)self setRenderSize:?];
    PXSizeScale();
    self->_renderBoundsInPoints.origin.x = 0.0;
    self->_renderBoundsInPoints.origin.y = 0.0;
    self->_renderBoundsInPoints.size.width = v7;
    self->_renderBoundsInPoints.size.height = v8;
    pixelFormatType = [(PXGPixelBufferPool *)self->_pixelBufferPool pixelFormatType];
    self->_pixelBufferFormatType = pixelFormatType;
    if (pixelFormatType == 1380411457)
    {
      v10 = 115;
      goto LABEL_8;
    }

    if (pixelFormatType == 1111970369)
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

- (void)setDestinationColorSpace:(CGColorSpace *)space
{
  destinationColorSpace = self->_destinationColorSpace;
  if (destinationColorSpace != space)
  {
    CGColorSpaceRelease(destinationColorSpace);
    self->_destinationColorSpace = space;

    CGColorSpaceRetain(space);
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPixelBufferMetalRenderDestination.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"_poolPixelFormatType != 0"}];
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

- (void)setRenderSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_renderSize.width != size.width || self->_renderSize.height != size.height)
  {
    delegate = [(PXGPixelBufferMetalRenderDestination *)self delegate];
    [delegate renderDestination:self renderSizeWillChange:{width, height}];

    self->_renderSize.width = width;
    self->_renderSize.height = height;

    [(PXGPixelBufferMetalRenderDestination *)self _invalidateDepthStencilTexture];
  }
}

- (void)setPixelBufferPool:(id)pool
{
  poolCopy = pool;
  if (self->_pixelBufferPool != poolCopy)
  {
    v6 = poolCopy;
    objc_storeStrong(&self->_pixelBufferPool, pool);
    [(PXGPixelBufferMetalRenderDestination *)self _updatePixelBufferProperties];
    poolCopy = v6;
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != colorCopy)
  {
    v13 = colorCopy;
    v6 = [(UIColor *)backgroundColor isEqual:colorCopy];
    colorCopy = v13;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v13 copy];
      v8 = self->_backgroundColor;
      self->_backgroundColor = v7;

      self->_clearColor.red = PXGClearColorFromColor(v13, [(PXGPixelBufferMetalRenderDestination *)self colorspace]);
      self->_clearColor.green = v9;
      self->_clearColor.blue = v10;
      self->_clearColor.alpha = v11;
      delegate = [(PXGPixelBufferMetalRenderDestination *)self delegate];
      [delegate renderDestinationRequestRender:self];

      colorCopy = v13;
    }
  }
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
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

- (PXGPixelBufferMetalRenderDestination)initWithLayoutQueue:(id)queue pixelBufferPool:(id)pool scale:(double)scale enablePoolRelease:(BOOL)release
{
  queueCopy = queue;
  poolCopy = pool;
  v22.receiver = self;
  v22.super_class = PXGPixelBufferMetalRenderDestination;
  v13 = [(PXGPixelBufferMetalRenderDestination *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layoutQueue, queue);
    v15 = [poolCopy copy];
    pixelBufferPool = v14->_pixelBufferPool;
    v14->_pixelBufferPool = v15;

    v14->_scale = scale;
    blackColor = [MEMORY[0x277D75348] blackColor];
    backgroundColor = v14->_backgroundColor;
    v14->_backgroundColor = blackColor;

    v14->_clearColor.red = 0.0;
    v14->_clearColor.green = 0.0;
    v14->_clearColor.blue = 0.0;
    v14->_clearColor.alpha = 1.0;
    v19 = MTLCreateSystemDefaultDevice();
    device = v14->_device;
    v14->_device = v19;

    v14->_enablePoolRelease = release;
    CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, v14->_device, 0, &v14->_textureCache);
    [(PXGPixelBufferMetalRenderDestination *)v14 _updatePixelBufferProperties];
  }

  return v14;
}

@end