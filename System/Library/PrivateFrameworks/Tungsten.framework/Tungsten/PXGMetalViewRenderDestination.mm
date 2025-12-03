@interface PXGMetalViewRenderDestination
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (CGRect)renderBoundsInPoints;
- (CGSize)renderSize;
- (MTLDevice)device;
- (MTLRenderPassDescriptor)currentRenderPassDescriptor;
- (MTLTexture)depthStencilTexture;
- (MTLTexture)renderTexture;
- (PXGMetalRenderDestinationDelegate)delegate;
- (PXGMetalViewRenderDestination)init;
- (PXGMetalViewRenderDestination)initWithDisplayConfiguration:(id *)configuration;
- (double)currentDynamicRangeHeadroom;
- (double)maximumDynamicRangeHeadroom;
- (double)scale;
- (int64_t)sampleCount;
- (unint64_t)colorPixelFormat;
- (unint64_t)depthStencilPixelFormat;
- (unint64_t)destinationColorSpaceName;
- (void)_setupMetalIfNeeded;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
- (void)present;
- (void)releaseCachedResources;
- (void)renderImmediately;
- (void)setNeedsRender;
- (void)test_configureForRenderSnapshot;
@end

@implementation PXGMetalViewRenderDestination

- (void)_setupMetalIfNeeded
{
  v3 = +[PXTungstenSettings sharedInstance];
  simulateMissingMetalDevice = [v3 simulateMissingMetalDevice];

  if ((simulateMissingMetalDevice & 1) != 0 || (v5 = MTLCreateSystemDefaultDevice()) == 0)
  {
    v6 = PXGTungstenGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Metal Device is nil, this is unexpected and will result in a degraded experience.", buf, 2u);
    }

    v5 = 0;
  }

  metalView = [(PXGMetalViewRenderDestination *)self metalView];

  if (!metalView)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_21AD38000, v8, OS_LOG_TYPE_ERROR, "Metal View is nil, this is unexpected and may result in configuration errors.", v13, 2u);
    }
  }

  metalView2 = [(PXGMetalViewRenderDestination *)self metalView];
  device = [metalView2 device];

  if (device != v5)
  {
    metalView3 = [(PXGMetalViewRenderDestination *)self metalView];
    [metalView3 setDevice:v5];

    delegate = [(PXGMetalViewRenderDestination *)self delegate];
    [delegate renderDestinationDeviceDidChange:self];
  }
}

- (unint64_t)destinationColorSpaceName
{
  [(PXGMetalViewRenderDestination *)self displayConfiguration];
  result = v7;
  if (!v7)
  {
    [(PXGMetalViewRenderDestination *)self displayConfiguration];
    if (v6 == 1 && ([(PXGMetalViewRenderDestination *)self maximumDynamicRangeHeadroom], v4 > 1.0))
    {
      v5 = 14;
    }

    else
    {
      v5 = 11;
    }

    if (PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken != -1)
    {
      dispatch_once(&PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken, &__block_literal_global_3102);
    }

    if (PXGDeviceIsKnownToHaveExtendedColorDisplay_hasExtendedColorDisplay)
    {
      return v5;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

- (MTLDevice)device
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  device = [metalView device];

  return device;
}

- (PXGMetalRenderDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setNeedsRender
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView setNeedsDisplay];
}

- (double)scale
{
  [(MTKView *)self->_metalView px_screenScale];
  if (v3 == 0.0)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __38__PXGMetalViewRenderDestination_scale__block_invoke;
    v10 = &unk_2782AB888;
    objc_copyWeak(&v11, &location);
    if (scale_onceToken != -1)
    {
      dispatch_once(&scale_onceToken, &v7);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    v4 = 1.0;
  }

  else
  {
    v4 = v3;
  }

  [(PXGMetalViewRenderDestination *)self displayScaleMultiplier:v7];
  return v4 * v5;
}

- (CGSize)renderSize
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView drawableSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)renderBoundsInPoints
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)colorPixelFormat
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  colorPixelFormat = [metalView colorPixelFormat];

  return colorPixelFormat;
}

- (int64_t)sampleCount
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  sampleCount = [metalView sampleCount];

  return sampleCount;
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  currentRenderPassDescriptor = [metalView currentRenderPassDescriptor];

  return currentRenderPassDescriptor;
}

- (unint64_t)depthStencilPixelFormat
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  depthStencilPixelFormat = [metalView depthStencilPixelFormat];

  return depthStencilPixelFormat;
}

- (void)present
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  disableDisplayCompositing = [(PXGMetalViewRenderDestination *)self disableDisplayCompositing];
  v4 = disableDisplayCompositing;
  v5 = !disableDisplayCompositing;
  if ([(PXGMetalViewRenderDestination *)self lowMemoryMode]&& !v4)
  {
    v6 = (mach_absolute_time() - self->_lastSizeChangeTime);
    PXTimebaseConversionFactor();
    v5 = v7 * v6 > 1.0;
  }

  layer = [metalView layer];
  if (v5 != [layer allowsDisplayCompositing])
  {
    [layer setAllowsDisplayCompositing:v5];
  }

  currentDrawable = [metalView currentDrawable];
  [currentDrawable present];
}

- (void)drawInMTKView:(id)view
{
  kdebug_trace();
  delegate = [(PXGMetalViewRenderDestination *)self delegate];
  [delegate renderDestinationRequestRender:self];
}

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  [view drawableSize];
  if ((PXSizeIsEmpty() & 1) == 0)
  {
    self->_lastSizeChangeTime = mach_absolute_time();
  }

  delegate = [(PXGMetalViewRenderDestination *)self delegate];
  [delegate renderDestination:self renderSizeWillChange:{width, height}];
}

- (void)test_configureForRenderSnapshot
{
  v2 = self->_metalView;
  [(MTKView *)v2 setFramebufferOnly:0];
  [(MTKView *)v2 setColorPixelFormat:115];
  [(MTKView *)v2 setClearColor:0.0, 0.0, 0.0, 0.0];
}

- (void)releaseCachedResources
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView releaseDrawables];
  layer = [metalView layer];
  if (layer)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    px_descriptionForAssertionMessage = [layer px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalViewRenderDestination.m" lineNumber:288 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"metalView.layer", v7, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalViewRenderDestination.m" lineNumber:288 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"metalView.layer", v7}];
  }

LABEL_3:
  [layer discardContents];
  [layer removeBackBuffers];
}

- (void)renderImmediately
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView draw];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView clearColor];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (MTLTexture)depthStencilTexture
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  depthStencilTexture = [metalView depthStencilTexture];

  return depthStencilTexture;
}

- (MTLTexture)renderTexture
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  currentDrawable = [metalView currentDrawable];
  texture = [currentDrawable texture];

  return texture;
}

- (double)currentDynamicRangeHeadroom
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView currentDynamicRangeHeadroom];
  v4 = v3;

  return v4;
}

- (double)maximumDynamicRangeHeadroom
{
  metalView = [(PXGMetalViewRenderDestination *)self metalView];
  [metalView maximumDynamicRangeHeadroom];
  v4 = v3;

  return v4;
}

void __38__PXGMetalViewRenderDestination_scale__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PXGTungstenGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_21AD38000, v2, OS_LOG_TYPE_ERROR, "%@ unknown screenScale, falling back to 1.", &v4, 0xCu);
  }
}

- (PXGMetalViewRenderDestination)initWithDisplayConfiguration:(id *)configuration
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = PXGMetalViewRenderDestination;
  v5 = [(PXGMetalViewRenderDestination *)&v26 init];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = *&configuration->var0;
  *(v5 + 9) = configuration->var3;
  *(v5 + 56) = v7;
  objc_storeStrong(v5 + 4, MEMORY[0x277D85CD0]);
  *(v6 + 5) = 1065353216;
  v8 = +[PXTungstenSettings sharedInstance];
  v9 = objc_alloc(MEMORY[0x277CD71F8]);
  v10 = [v9 initWithFrame:0 device:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  layer = [v10 layer];
  [layer setZPosition:-1.0];

  [v10 setDelegate:v6];
  [v10 setPresentsWithTransaction:1];
  [v10 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  layer2 = [v10 layer];
  if (!layer2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [currentHandler handleFailureInMethod:a2 object:v6 file:@"PXGMetalViewRenderDestination.m" lineNumber:62 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"metalView.layer", v23}];
LABEL_19:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    px_descriptionForAssertionMessage = [layer2 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:v6 file:@"PXGMetalViewRenderDestination.m" lineNumber:62 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"metalView.layer", v23, px_descriptionForAssertionMessage}];

    goto LABEL_19;
  }

LABEL_4:
  [layer2 setAllowsNextDrawableTimeout:0];
  [layer2 setFenceEnabled:1];
  [layer2 setLowLatency:{objc_msgSend(v8, "lowLatency")}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:clearColor];

  [v10 setEnableSetNeedsDisplay:1];
  [v10 setPaused:1];
  objc_storeStrong(v6 + 5, v10);
  [v6 _setupMetalIfNeeded];
  [v10 setDepthStencilPixelFormat:260];
  v14 = MEMORY[0x277CD9DB8];
  if (!configuration->var0)
  {
    v14 = MEMORY[0x277CD9DC0];
  }

  [layer2 setPreferredDynamicRange:*v14];
  if (configuration->var0 || configuration->var2)
  {
    [v6 destinationColorSpaceName];
    [layer2 setColorspace:PXGetColorSpace()];
  }

  device = [v10 device];
  v16 = [device supportsTextureSampleCount:{objc_msgSend(v8, "sampleCount")}];

  if (v16)
  {
    [v10 setSampleCount:{objc_msgSend(v8, "sampleCount")}];
  }

  else
  {
    device2 = [v10 device];

    if (device2)
    {
      v18 = PXGTungstenGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sampleCount = [v8 sampleCount];
        *buf = 134217984;
        v28 = sampleCount;
        _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_ERROR, "Unsupported sample count:%ld", buf, 0xCu);
      }
    }
  }

  return v6;
}

- (PXGMetalViewRenderDestination)init
{
  v4 = 0;
  v3 = PXGViewDisplayConfigurationDefault;
  return [(PXGMetalViewRenderDestination *)self initWithDisplayConfiguration:&v3];
}

@end