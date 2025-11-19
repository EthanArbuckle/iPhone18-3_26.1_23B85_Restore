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
- (PXGMetalViewRenderDestination)initWithDisplayConfiguration:(id *)a3;
- (double)currentDynamicRangeHeadroom;
- (double)maximumDynamicRangeHeadroom;
- (double)scale;
- (int64_t)sampleCount;
- (unint64_t)colorPixelFormat;
- (unint64_t)depthStencilPixelFormat;
- (unint64_t)destinationColorSpaceName;
- (void)_setupMetalIfNeeded;
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
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
  v4 = [v3 simulateMissingMetalDevice];

  if ((v4 & 1) != 0 || (v5 = MTLCreateSystemDefaultDevice()) == 0)
  {
    v6 = PXGTungstenGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Metal Device is nil, this is unexpected and will result in a degraded experience.", buf, 2u);
    }

    v5 = 0;
  }

  v7 = [(PXGMetalViewRenderDestination *)self metalView];

  if (!v7)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_21AD38000, v8, OS_LOG_TYPE_ERROR, "Metal View is nil, this is unexpected and may result in configuration errors.", v13, 2u);
    }
  }

  v9 = [(PXGMetalViewRenderDestination *)self metalView];
  v10 = [v9 device];

  if (v10 != v5)
  {
    v11 = [(PXGMetalViewRenderDestination *)self metalView];
    [v11 setDevice:v5];

    v12 = [(PXGMetalViewRenderDestination *)self delegate];
    [v12 renderDestinationDeviceDidChange:self];
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
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 device];

  return v3;
}

- (PXGMetalRenderDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setNeedsRender
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 setNeedsDisplay];
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
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 drawableSize];
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
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 bounds];
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
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 colorPixelFormat];

  return v3;
}

- (int64_t)sampleCount
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 sampleCount];

  return v3;
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 currentRenderPassDescriptor];

  return v3;
}

- (unint64_t)depthStencilPixelFormat
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 depthStencilPixelFormat];

  return v3;
}

- (void)present
{
  v10 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [(PXGMetalViewRenderDestination *)self disableDisplayCompositing];
  v4 = v3;
  v5 = !v3;
  if ([(PXGMetalViewRenderDestination *)self lowMemoryMode]&& !v4)
  {
    v6 = (mach_absolute_time() - self->_lastSizeChangeTime);
    PXTimebaseConversionFactor();
    v5 = v7 * v6 > 1.0;
  }

  v8 = [v10 layer];
  if (v5 != [v8 allowsDisplayCompositing])
  {
    [v8 setAllowsDisplayCompositing:v5];
  }

  v9 = [v10 currentDrawable];
  [v9 present];
}

- (void)drawInMTKView:(id)a3
{
  kdebug_trace();
  v4 = [(PXGMetalViewRenderDestination *)self delegate];
  [v4 renderDestinationRequestRender:self];
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [a3 drawableSize];
  if ((PXSizeIsEmpty() & 1) == 0)
  {
    self->_lastSizeChangeTime = mach_absolute_time();
  }

  v7 = [(PXGMetalViewRenderDestination *)self delegate];
  [v7 renderDestination:self renderSizeWillChange:{width, height}];
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
  v10 = [(PXGMetalViewRenderDestination *)self metalView];
  [v10 releaseDrawables];
  v4 = [v10 layer];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    v9 = [v4 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:a2 object:self file:@"PXGMetalViewRenderDestination.m" lineNumber:288 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"metalView.layer", v7, v9}];
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 handleFailureInMethod:a2 object:self file:@"PXGMetalViewRenderDestination.m" lineNumber:288 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"metalView.layer", v7}];
  }

LABEL_3:
  [v4 discardContents];
  [v4 removeBackBuffers];
}

- (void)renderImmediately
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 draw];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 clearColor];
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
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 depthStencilTexture];

  return v3;
}

- (MTLTexture)renderTexture
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  v3 = [v2 currentDrawable];
  v4 = [v3 texture];

  return v4;
}

- (double)currentDynamicRangeHeadroom
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 currentDynamicRangeHeadroom];
  v4 = v3;

  return v4;
}

- (double)maximumDynamicRangeHeadroom
{
  v2 = [(PXGMetalViewRenderDestination *)self metalView];
  [v2 maximumDynamicRangeHeadroom];
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

- (PXGMetalViewRenderDestination)initWithDisplayConfiguration:(id *)a3
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

  v7 = *&a3->var0;
  *(v5 + 9) = a3->var3;
  *(v5 + 56) = v7;
  objc_storeStrong(v5 + 4, MEMORY[0x277D85CD0]);
  *(v6 + 5) = 1065353216;
  v8 = +[PXTungstenSettings sharedInstance];
  v9 = objc_alloc(MEMORY[0x277CD71F8]);
  v10 = [v9 initWithFrame:0 device:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v11 = [v10 layer];
  [v11 setZPosition:-1.0];

  [v10 setDelegate:v6];
  [v10 setPresentsWithTransaction:1];
  [v10 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v12 = [v10 layer];
  if (!v12)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v21 handleFailureInMethod:a2 object:v6 file:@"PXGMetalViewRenderDestination.m" lineNumber:62 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"metalView.layer", v23}];
LABEL_19:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    v25 = [v12 px_descriptionForAssertionMessage];
    [v21 handleFailureInMethod:a2 object:v6 file:@"PXGMetalViewRenderDestination.m" lineNumber:62 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"metalView.layer", v23, v25}];

    goto LABEL_19;
  }

LABEL_4:
  [v12 setAllowsNextDrawableTimeout:0];
  [v12 setFenceEnabled:1];
  [v12 setLowLatency:{objc_msgSend(v8, "lowLatency")}];
  v13 = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:v13];

  [v10 setEnableSetNeedsDisplay:1];
  [v10 setPaused:1];
  objc_storeStrong(v6 + 5, v10);
  [v6 _setupMetalIfNeeded];
  [v10 setDepthStencilPixelFormat:260];
  v14 = MEMORY[0x277CD9DB8];
  if (!a3->var0)
  {
    v14 = MEMORY[0x277CD9DC0];
  }

  [v12 setPreferredDynamicRange:*v14];
  if (a3->var0 || a3->var2)
  {
    [v6 destinationColorSpaceName];
    [v12 setColorspace:PXGetColorSpace()];
  }

  v15 = [v10 device];
  v16 = [v15 supportsTextureSampleCount:{objc_msgSend(v8, "sampleCount")}];

  if (v16)
  {
    [v10 setSampleCount:{objc_msgSend(v8, "sampleCount")}];
  }

  else
  {
    v17 = [v10 device];

    if (v17)
    {
      v18 = PXGTungstenGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v8 sampleCount];
        *buf = 134217984;
        v28 = v19;
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