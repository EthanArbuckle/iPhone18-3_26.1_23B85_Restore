@interface PXGMetalRenderer
+ (NSString)mainShaderSource;
+ (id)_loadAndPreprocessShaderSourceWithFilename:(id)a3 extension:(id)a4;
+ (void)_configureUniformGeometries:(id *)a3 renderRect:(CGRect)a4 drawingScale:(double)a5 renderOrigin:(CGPoint)a6;
- ($15EF911DBFB6DAA7434D55827AA48808)_handleCompiledRenderPipelineState:(SEL)a3 forColorProgram:(id)a4 shader:(id)a5 shaderFlags:(id)a6 colorPixelFormat:(int)a7 pipelineIndex:(unint64_t)a8 isOpaque:(int64_t)a9;
- ($15EF911DBFB6DAA7434D55827AA48808)_pipelineForRenderTexture:(SEL)a3 colorPixelFormat:(id *)a4 waitForCompilation:(unint64_t)a5;
- ($28B10562A11C0018BB97DE3323169FD5)interactionState;
- (BOOL)wantsMipmaps;
- (CGRect)converRectToRenderCoordinates:(CGRect)a3;
- (CGRect)visibleRect;
- (CGRect)visibleRectInRenderCoordinates;
- (PXGMetalRenderer)initWithRenderDestination:(id)a3 layoutQueue:(id)a4;
- (PXGMetalRendererTestingDelegate)testingDelegate;
- (PXGRendererDelegate)delegate;
- (__n128)cameraConfiguration;
- (__n128)setCameraConfiguration:(uint64_t)a3;
- (id)_createColorTextureForRenderStateValues:(id *)a3;
- (id)_createPipelineStateForColorProgram:(id)a3 shader:(id)a4 shaderFlags:(int)a5 colorPixelFormat:(unint64_t)a6 depthStencilPixelFormat:(unint64_t)a7 isOpaque:(BOOL)a8;
- (id)renderSnapshotForRequest:(id *)a3 offscreenEffect:(id)a4;
- (int64_t)_drawRenderTexture:(id *)a3 forRenderPass:(id)a4 withCommandEncoder:(id)a5;
- (int64_t)_drawSpritesWithRenderPass:(id)a3 renderState:(id)a4 commandEncoder:(id)a5 passingTest:(id)a6;
- (unint64_t)destinationColorSpaceName;
- (void)_clearPipelines;
- (void)_parseAndSortRenderTextures:(id)a3 willPerformOffscreenPass:(BOOL)a4;
- (void)_pipelinesLock_resizePipelinesStorageIfNeeded;
- (void)_populateEffectSprites:(id)a3 spriteRenderDataStore:(id)a4 presentationDataStore:(id)a5 metadataStore:(id)a6;
- (void)_preloadKernel:(id)a3;
- (void)_preloadShader:(id)a3;
- (void)_renderToCommandBuffer:(id)a3 renderState:(id)a4 renderPassDescriptor:(id)a5 withCompletionCompletion:(id)a6;
- (void)_renderToMainDestination:(id)a3 withCompletionCompletion:(id)a4;
- (void)_setupMetalIfNeeded;
- (void)_setupSquareGeometryBuffer;
- (void)_setupYCbCrMatrices;
- (void)dealloc;
- (void)effectComponent:(id)a3 prepareForEffect:(id)a4;
- (void)metalTextureConverter:(id)a3 didCreateTexture:(id)a4 options:(id)a5;
- (void)releaseResources;
- (void)renderDestination:(id)a3 renderSizeWillChange:(CGSize)a4;
- (void)renderDestinationRequestRender:(id)a3;
- (void)renderImmediately;
- (void)renderSpritesWithTextures:(id)a3 dataStore:(id)a4 presentationDataStore:(id)a5 presentationMetadataStore:(id)a6 layout:(id)a7;
- (void)setEntityManager:(id)a3;
- (void)setInteractionState:(id *)a3;
- (void)setIsInvertColorsEnabled:(BOOL)a3;
- (void)setLowMemoryMode:(BOOL)a3;
- (void)setNeedsRender;
- (void)setOffscreenEffectScale:(double)a3;
- (void)setTest_renderSnapshotHandler:(id)a3;
@end

@implementation PXGMetalRenderer

- (void)_setupMetalIfNeeded
{
  v3 = [(PXGMetalRenderer *)self renderDestination];
  v4 = [v3 device];

  v5 = [PXGMetalRenderContext privateContextWithDevice:v4 commandQueue:self->_commandQueue];
  if (!v4)
  {
    v6 = PXGTungstenGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v37[0] = 0;
      _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Metal Device is nil, this is unexpected and will result in a degraded experience.", v37, 2u);
    }
  }

  os_unfair_lock_lock(&self->_metalLock);
  device = self->_device;
  if (device != v4)
  {
    objc_storeStrong(&self->_device, v4);
    [(PXGMetalRenderStatePool *)self->_renderStatePool setDevice:self->_device];
    [(PXGMetalRenderer *)self _clearPipelines];
    v8 = self->_device;
    if (v8)
    {
      v9 = [(MTLDevice *)v8 newCommandQueue];
      commandQueue = self->_commandQueue;
      self->_commandQueue = v9;

      v11 = [PXGMetalRenderContext privateContextWithDevice:self->_device commandQueue:self->_commandQueue];

      [(MTLCommandQueue *)self->_commandQueue setGPUPriority:4];
      v12 = objc_opt_new();
      [v12 setMinFilter:1];
      [v12 setMagFilter:1];
      [v12 setSAddressMode:3];
      [v12 setRAddressMode:3];
      [v12 setTAddressMode:3];
      if ([(PXGMetalRenderer *)self wantsMipmaps])
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      [v12 setMipFilter:v13];
      v14 = [(MTLDevice *)self->_device newSamplerStateWithDescriptor:v12];
      mirrorRepeatSampler = self->_mirrorRepeatSampler;
      self->_mirrorRepeatSampler = v14;

      [v12 setSAddressMode:4];
      [v12 setRAddressMode:4];
      [v12 setTAddressMode:4];
      v16 = [(MTLDevice *)self->_device newSamplerStateWithDescriptor:v12];
      clampToZeroSampler = self->_clampToZeroSampler;
      self->_clampToZeroSampler = v16;

      v18 = objc_alloc_init(MEMORY[0x277CD6D60]);
      [v18 setDepthWriteEnabled:1];
      [v18 setDepthCompareFunction:3];
      v19 = [(MTLDevice *)self->_device newDepthStencilStateWithDescriptor:v18];
      depthStencil = self->_depthStencil;
      self->_depthStencil = v19;

      v21 = [v11 library];
      library = self->_library;
      self->_library = v21;

      v23 = [[PXGColorGradingTexturesStore alloc] initWithMetalContext:v11];
      colorGradingTexturesStore = self->_colorGradingTexturesStore;
      self->_colorGradingTexturesStore = v23;

      [(PXGMetalRenderer *)self _setupConstantBuffers];
      v5 = v11;
    }
  }

  v25 = [(PXGMetalRenderer *)self renderDestination];
  v26 = [v25 destinationColorSpaceName];

  if (device == v4)
  {
    v27 = [(PXGMetalTextureConverter *)self->_textureConverter metalRenderContext];
    v28 = [v27 device];
    v29 = v28;
    if (v28 == v4)
    {
      v30 = [(PXGMetalTextureConverter *)self->_textureConverter destinationColorSpaceName];

      if (v30 == v26)
      {
        os_unfair_lock_unlock(&self->_metalLock);
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if (self->_device)
  {
    v31 = [PXGMetalTextureConverter alloc];
    v32 = [(PXGMetalRenderer *)self presentationType];
    v33 = [(PXGMetalRenderer *)self layoutQueue];
    v34 = [(PXGMetalTextureConverter *)v31 initWithContext:v5 presentationType:v32 destinationColorspaceName:v26 layoutQueue:v33];
    textureConverter = self->_textureConverter;
    self->_textureConverter = v34;
  }

  else
  {
    v33 = self->_textureConverter;
    self->_textureConverter = 0;
  }

  [(PXGMetalTextureConverter *)self->_textureConverter setDelegate:self];
  os_unfair_lock_unlock(&self->_metalLock);
  v36 = [(PXGMetalRenderer *)self delegate];
  [v36 rendererDidChangeTextureConverter:self];

LABEL_20:
}

- (void)_clearPipelines
{
  os_unfair_lock_lock(&self->_pipelinesLock);
  if (self->_pipelinesCount >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = &self->_pipelines[v3];
      var2 = v5->var2;
      v5->var2 = 0;

      var3 = v5->var3;
      v5->var3 = 0;

      var4 = v5->var4;
      v5->var4 = 0;

      ++v4;
      ++v3;
    }

    while (v4 < self->_pipelinesCount);
  }

  self->_pipelinesCount = 0;

  os_unfair_lock_unlock(&self->_pipelinesLock);
}

- (PXGRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)wantsMipmaps
{
  v3 = +[PXTungstenSettings sharedInstance];
  if ([v3 enableMipmaps])
  {
    v4 = ![(PXGMetalRenderer *)self lowMemoryMode];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_setupSquareGeometryBuffer
{
  v4 = 0;
  v5 = 0;
  v31 = *MEMORY[0x277D85DE8];
  *v30 = 0;
  *&v30[16] = 0u;
  v29 = 0u;
  LODWORD(v29) = 1065353216;
  __asm { FMOV            V0.4S, #1.0 }

  *&v30[4] = _Q0;
  *&v30[28] = 1065353216;
  LODWORD(v2) = 1.0;
  do
  {
    v9 = 0;
    v10 = v5 - 3 * ((1431655766 * v5) >> 32);
    if (v10 == 2)
    {
      v11.f32[0] = 1.0;
    }

    else
    {
      v11.f32[0] = 0.0;
    }

    if (v5 - 6 >= 3)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v11.f32[1] = v12;
    if (v10 == 1)
    {
      v13.f32[0] = 1.0;
    }

    else
    {
      v13.f32[0] = 0.0;
    }

    v14 = v5 - 3;
    if (v5 - 3 >= 3)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    v13.f32[1] = v15;
    v16 = &_setupSquareGeometryBuffer_nineSlicedSquare + 16 * v4 + 11;
    v4 += 6;
    do
    {
      v17 = *&v30[v9 - 16];
      v18 = v5 <= 2 && v17.f32[1] == 1.0 || v17.f32[1] == 0.0 && v14 < 3;
      v20 = v10 == 1 && v17.f32[0] == 1.0 || v17.f32[0] == 0.0 && v10 == 2;
      if (v14 <= 2 && v17.f32[1] == 1.0)
      {
        v22 = 1;
        if (v10)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v22 = v17.f32[1] == 0.0 && v5 - 6 < 3;
        if (v10)
        {
          goto LABEL_46;
        }
      }

      if (v17.f32[0] == 1.0)
      {
        v24 = 1;
        goto LABEL_52;
      }

LABEL_46:
      v24 = v17.f32[0] == 0.0 && v10 == 1;
LABEL_52:
      *(v16 - 11) = vmla_f32(v11, v13, v17);
      *(v16 - 3) = v18;
      *(v16 - 2) = v20;
      *(v16 - 1) = v22;
      *v16 = v24;
      v16 += 16;
      v9 += 8;
    }

    while (v9 != 48);
    ++v5;
  }

  while (v5 != 9);
  v26 = [(MTLDevice *)self->_device newBufferWithBytes:&_setupSquareGeometryBuffer_nineSlicedSquare length:864 options:0, 0.0, v2, v29, *v30, *&v30[16]];
  squareGeometryBuffer = self->_squareGeometryBuffer;
  self->_squareGeometryBuffer = v26;

  v28 = self->_squareGeometryBuffer;

  [(MTLBuffer *)v28 setLabel:@"NineSlicedSquareGeometryBuffer"];
}

- (unint64_t)destinationColorSpaceName
{
  v2 = [(PXGMetalRenderer *)self renderDestination];
  v3 = [v2 destinationColorSpaceName];

  return v3;
}

- (void)setNeedsRender
{
  v2 = [(PXGMetalRenderer *)self renderDestination];
  [v2 setNeedsRender];
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRectInRenderCoordinates
{
  [(PXGMetalRenderer *)self visibleRect];

  [(PXGMetalRenderer *)self converRectToRenderCoordinates:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- ($28B10562A11C0018BB97DE3323169FD5)interactionState
{
  size = self[5].var8.size;
  *&retstr->var0 = self[5].var8.origin;
  *&retstr->var4 = size;
  v4 = *&self[6].var4;
  retstr->var8.origin = *&self[6].var0;
  retstr->var8.size = v4;
  return self;
}

- (void)_pipelinesLock_resizePipelinesStorageIfNeeded
{
  os_unfair_lock_assert_owner(&self->_pipelinesLock);
  pipelinesCount = self->_pipelinesCount;
  pipelinesCapacity = self->_pipelinesCapacity;
  if (pipelinesCount > pipelinesCapacity)
  {
    v5 = self->_pipelinesCapacity;
    if (!pipelinesCapacity)
    {
      v5 = 10;
      self->_pipelinesCapacity = 10;
    }

    if (pipelinesCount > v5)
    {
      do
      {
        v6 = pipelinesCount <= 2 * v5;
        v5 *= 2;
      }

      while (!v6);
      self->_pipelinesCapacity = v5;
    }

    v7 = v5 - pipelinesCapacity;
    v8 = malloc_type_realloc(self->_pipelines, 48 * v5, 0x42760281uLL);
    self->_pipelines = v8;
    v9 = &v8[pipelinesCapacity];

    bzero(v9, 48 * v7);
  }
}

- (PXGMetalRendererTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

- (__n128)setCameraConfiguration:(uint64_t)a3
{
  *(a1 + 416) = *a3;
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a1 + 464) = *(a3 + 48);
  *(a1 + 480) = v5;
  *(a1 + 432) = v3;
  *(a1 + 448) = v4;
  v6 = *(a3 + 80);
  v7 = *(a3 + 96);
  v8 = *(a3 + 128);
  *(a1 + 528) = *(a3 + 112);
  *(a1 + 544) = v8;
  *(a1 + 496) = v6;
  *(a1 + 512) = v7;
  result = *(a3 + 144);
  v10 = *(a3 + 160);
  v11 = *(a3 + 192);
  *(a1 + 592) = *(a3 + 176);
  *(a1 + 608) = v11;
  *(a1 + 560) = result;
  *(a1 + 576) = v10;
  return result;
}

- (__n128)cameraConfiguration
{
  v2 = *(a1 + 592);
  *(a2 + 160) = *(a1 + 576);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 608);
  v3 = *(a1 + 528);
  *(a2 + 96) = *(a1 + 512);
  *(a2 + 112) = v3;
  v4 = *(a1 + 560);
  *(a2 + 128) = *(a1 + 544);
  *(a2 + 144) = v4;
  v5 = *(a1 + 464);
  *(a2 + 32) = *(a1 + 448);
  *(a2 + 48) = v5;
  v6 = *(a1 + 496);
  *(a2 + 64) = *(a1 + 480);
  *(a2 + 80) = v6;
  result = *(a1 + 432);
  *a2 = *(a1 + 416);
  *(a2 + 16) = result;
  return result;
}

- (void)setInteractionState:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var4;
  size = a3->var8.size;
  self->_interactionState.targetRect.origin = a3->var8.origin;
  self->_interactionState.targetRect.size = size;
  *&self->_interactionState.scrollRegime = v3;
  *&self->_interactionState.contentChangeTrend = v4;
}

- (void)metalTextureConverter:(id)a3 didCreateTexture:(id)a4 options:(id)a5
{
  var2 = a5.var2;
  v6 = *&a5.var0;
  v9 = a4;
  v10 = a3;
  os_unfair_lock_lock(&self->_metalLock);
  v11 = self->_textureConverter;
  os_unfair_lock_unlock(&self->_metalLock);

  if (v11 == v10)
  {
    v12 = [(PXGMetalRenderer *)self recordingSession];

    if (v12)
    {
      v13 = [(PXGMetalRenderer *)self recordingSession];
      v14 = [PXGMetalRecordingTextureCreatedEvent eventWithTexture:v9 options:v6 recordingComponent:LODWORD(var2), 1];
      [v13 recordEvent:v14];
    }

    v25 = v9;
    v26 = 0;
    memset(v29, 0, sizeof(v29));
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    BYTE8(v29[0]) = 0;
    v15 = [v9 shaderFlags];
    if (v6)
    {
      v16 = [(PXGMetalRenderer *)self entityManager];
      v17 = [v16 effectComponent];

      v18 = [v17 effectForId:v6];
      v26 = [v18 shader];
      v15 |= 0x400000u;
    }

    v19 = [(PXGMetalRenderer *)self renderDestination];
    v20 = [v19 colorPixelFormat];

    didPerformFirstRender = self->_didPerformFirstRender;
    if (didPerformFirstRender)
    {
      if ([v9 isOpaque])
      {
        BYTE12(v29[1]) = 0;
        DWORD1(v29[0]) = v15;
        [(PXGMetalRenderer *)self _pipelineForRenderTexture:&v25 colorPixelFormat:v20 waitForCompilation:1];
      }

      BYTE12(v29[1]) = 0;
      DWORD1(v29[0]) = v15 | 0x100000;
      [(PXGMetalRenderer *)self _pipelineForRenderTexture:&v25 colorPixelFormat:v20 waitForCompilation:1];

      if (v6)
      {
        dispatch_sync(self->_compilationQueue, &__block_literal_global_293);
      }
    }

    BYTE12(v29[1]) = [v9 isOpaque];
    DWORD1(v29[0]) = v15;
    [(PXGMetalRenderer *)self _pipelineForRenderTexture:&v25 colorPixelFormat:v20 waitForCompilation:didPerformFirstRender];
  }
}

- (void)_preloadKernel:(id)a3
{
  device = self->_device;
  if (device)
  {
    [a3 preloadWithDevice:device];
  }
}

- (void)_preloadShader:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_device)
  {
    v11[0] = 0;
    memset(v13, 0, sizeof(v13));
    v17 = 0;
    v11[1] = v4;
    v12 = 0x7FFFFFFFFFFFFFFFuLL;
    *&v13[4] = 0x400000;
    v14 = 0;
    v15 = [v4 isOpaque];
    v16 = 0;
    v6 = [(PXGMetalRenderer *)self renderDestination];
    v7 = [v6 colorPixelFormat];

    [(PXGMetalRenderer *)self _pipelineForRenderTexture:v11 colorPixelFormat:v7 waitForCompilation:0];
    if ([v5 isOpaque])
    {
      v15 = 0;
      [(PXGMetalRenderer *)self _pipelineForRenderTexture:v11 colorPixelFormat:v7 waitForCompilation:0];
    }
  }
}

- (void)effectComponent:(id)a3 prepareForEffect:(id)a4
{
  v5 = a4;
  v6 = [v5 shader];
  if (v6)
  {
    [(PXGMetalRenderer *)self _preloadShader:v6];
  }

  v7 = [v5 kernel];
  v8 = v7;
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__PXGMetalRenderer_effectComponent_prepareForEffect___block_invoke;
    v11[3] = &unk_2782AC0A8;
    v11[4] = self;
    v12 = v7;
    v9 = MEMORY[0x21CEE40A0](v11);
    v10 = v9;
    if (self->_didPerformFirstRender)
    {
      v9[2](v9);
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __53__PXGMetalRenderer_effectComponent_prepareForEffect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 160);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PXGMetalRenderer_effectComponent_prepareForEffect___block_invoke_2;
  v4[3] = &unk_2782AC0A8;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

- (void)renderDestinationRequestRender:(id)a3
{
  v4 = [(PXGMetalRenderer *)self delegate];
  [v4 rendererPerformRender:self];
}

- (void)renderDestination:(id)a3 renderSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(PXGMetalRenderer *)self delegate];
  [v7 renderer:self viewportSizeWillChange:{width, height}];
}

- (int64_t)_drawRenderTexture:(id *)a3 forRenderPass:(id)a4 withCommandEncoder:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3->var0;
  [(PXGMetalRenderer *)self interactionState];
  v11 = v70;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  -[PXGMetalRenderer _pipelineForRenderTexture:colorPixelFormat:waitForCompilation:](self, "_pipelineForRenderTexture:colorPixelFormat:waitForCompilation:", a3, [v8 pixelFormat], v70 < 1);
  v12 = a3->var1;
  v13 = [(PXGMetalRenderer *)self recordingSession];

  if (v13)
  {
    v14 = [(PXGMetalRenderer *)self recordingSession];
    v62 = v67;
    v15 = v68;
    v63 = v15;
    v64 = *(&v68 + 1);
    v65 = v69;
    v66 = BYTE8(v69);
    if (PXGMetalRenderEvent)
    {
      v16 = [PXGMetalRenderEvent eventWithRenderTexture:a3 pipeline:&v62];
    }

    else
    {

      v16 = 0;
    }

    [v14 recordEvent:v16];

    v17 = [(PXGMetalRenderer *)self recordingSession];
    v18 = [v17 frameState];
    v19 = [v10 spriteIndexes];
    [v18 addRecordedSpriteIndexes:v19];
  }

  if (v69 || !self->_didPerformFirstRender && (dispatch_sync(self->_compilationQueue, &__block_literal_global_290), -[PXGMetalRenderer _pipelineForRenderTexture:colorPixelFormat:waitForCompilation:](self, "_pipelineForRenderTexture:colorPixelFormat:waitForCompilation:", a3, [v8 pixelFormat], v11 < 1), v67 = *buf, v40 = *&buf[16], *&buf[16] = 0, v41 = v68, *&v68 = v40, v41, v42 = *&buf[24], *&buf[24] = 0, v43 = *(&v68 + 1), *(&v68 + 1) = v42, v43, v44 = *v72, *v72 = 0, v45 = v69, *&v69 = v44, v45, BYTE8(v69) = v72[8], v69))
  {
    [v9 setRenderPipelineState:?];
    memset(buf, 0, sizeof(buf));
    v20 = [v10 isOpaque];
    v21 = 0.0;
    if (v20)
    {
      v21 = 1.0;
    }

    *buf = v21;
    __asm { FMOV            V0.4S, #1.0 }

    *&buf[16] = _Q0;
    v27 = [PXTungstenSettings sharedInstance:_Q0];
    v28 = [v27 debugSharedTextures];

    if (v28)
    {
      v29 = [v10 spriteCount];
      v30.i32[0] = 1;
      v31.i32[0] = v29;
      *&buf[16] = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v31, v30), 0), xmmword_21AE2D3F0, v61);
    }

    [v9 setFragmentBytes:buf length:32 atIndex:1];
    v32 = v68;
    v33 = [v32 params];
    [v9 setFragmentBuffer:v33 offset:0 atIndex:2];

    v34 = [v32 TRCLUTs];
    [v9 setFragmentTexture:v34 atIndex:1];

    v35 = [v32 colorCube];
    [v9 setFragmentTexture:v35 atIndex:2];

    v36 = 112;
    if (a3->var5 < 4u)
    {
      v36 = 104;
    }

    v37 = *(&self->super.isa + v36);
    if (!v12)
    {
      goto LABEL_30;
    }

    v38 = [v12 sampler];
    p_clampToZeroSampler = &self->_clampToZeroSampler;
    if (v38 > 1)
    {
      if (v38 != 2)
      {
        if (v38 != 3)
        {
LABEL_30:
          [v9 setFragmentSamplerState:v37 atIndex:0];
          location = a3->var2.location;
          length = a3->var2.length;
          [v9 setVertexBufferOffset:4 * location atIndex:2];
          [v9 setVertexBufferOffset:location << 6 atIndex:5];
          v56 = [v10 texture];
          [v9 setFragmentTexture:v56 atTextureIndex:0 samplerState:v37 atSamplerIndex:0];
          v57 = [v10 chromaTexture];
          [v9 setFragmentTexture:v57 atIndex:4];

          [v12 encodeBindableArgumentsWithEncoder:v9];
          [v9 drawPrimitives:3 vertexStart:0 vertexCount:54 instanceCount:length];
          v58 = [v56 width];
          v59 = [v56 height];

          v52 = v59 * v58;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v38)
    {
      if (v38 != 1)
      {
        goto LABEL_30;
      }

LABEL_28:
      p_clampToZeroSampler = &self->_mirrorRepeatSampler;
    }

    v53 = *p_clampToZeroSampler;

    v37 = v53;
    goto LABEL_30;
  }

  v46 = PXGTungstenGetLog();
  v47 = os_signpost_id_make_with_pointer(v46, self);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v48 = v47;
    if (os_signpost_enabled(v46))
    {
      v49 = @"YES";
      var0 = a3->var0;
      *buf = 134218754;
      if (v11 < 1)
      {
        v49 = @"NO";
      }

      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v49;
      *&buf[22] = 2112;
      *&buf[24] = var0;
      *v72 = 2112;
      *&v72[2] = *(&v68 + 1);
      v51 = v49;
      _os_signpost_emit_with_name_impl(&dword_21AD38000, v46, OS_SIGNPOST_EVENT, v48, "PXGMetalRendererMissingRenderPipelineState", "Context=%{signpost.telemetry:string2}lu isScrolling:%@ renderTexture:%@ shader:%@", buf, 0x2Au);
    }
  }

  v52 = 0;
LABEL_31:

  return v52;
}

- (int64_t)_drawSpritesWithRenderPass:(id)a3 renderState:(id)a4 commandEncoder:(id)a5 passingTest:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v12;
  kdebug_trace();
  [v14 pushDebugGroup:@"PXGRender Draw Sprites"];
  [v14 setVertexBytes:objc_msgSend(v11 length:"uniforms") atIndex:{272, 0}];
  [v14 setVertexBuffer:self->_squareGeometryBuffer offset:0 atIndex:1];
  v15 = [v11 spriteGeometriesBuffer];
  [v14 setVertexBuffer:v15 offset:0 atIndex:3];

  v16 = [v11 spriteStylesBuffer];
  [v14 setVertexBuffer:v16 offset:0 atIndex:4];

  v17 = [v11 resizableCapInsetsBuffer];
  [v14 setVertexBuffer:v17 offset:0 atIndex:6];

  [v14 setDepthStencilState:self->_depthStencil];
  [v14 setFragmentBytes:objc_msgSend(v11 length:"uniforms") atIndex:{272, 0}];
  yCbCrMatricesBuffer = self->_yCbCrMatricesBuffer;
  if (yCbCrMatricesBuffer)
  {
    [v14 setFragmentBuffer:yCbCrMatricesBuffer offset:0 atIndex:3];
  }

  v19 = [v11 currentRenderPassState];
  v20 = [v19 spriteIndexesMetalBuffer];
  [v14 setVertexBuffer:v20 offset:0 atIndex:2];

  v21 = [v19 spriteTextureInfosMetalBuffer];
  [v14 setVertexBuffer:v21 offset:0 atIndex:5];

  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v57[3] = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v56[3] = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = &__block_literal_global_286;
  }

  v55 = 0;
  v23 = MEMORY[0x21CEE40A0](v22);
  if (v11)
  {
    [v11 values];
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
  }

  v43 = v45;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __86__PXGMetalRenderer__drawSpritesWithRenderPass_renderState_commandEncoder_passingTest___block_invoke_2;
  v34[3] = &unk_2782A97D8;
  v24 = v23;
  v39 = v24;
  v25 = v11;
  v35 = v25;
  v26 = v10;
  v36 = v26;
  v27 = v14;
  v37 = v27;
  v38 = self;
  v40 = v56;
  v41 = v57;
  v42 = &v52;
  v28 = MEMORY[0x21CEE40A0](v34);
  v29 = [v25 opaqueTextures];
  [v29 drawWithOrder:1 enumerationBlock:v28];

  v30 = [v25 translucentTextures];
  [v30 drawWithOrder:0 enumerationBlock:v28];

  [v27 popDebugGroup];
  v31 = self;
  kdebug_trace();

  v32 = v53[3];
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v57, 8);

  return v32;
}

void __86__PXGMetalRenderer__drawSpritesWithRenderPass_renderState_commandEncoder_passingTest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 62) & 1) == 0 && (*(*(a1 + 64) + 16))())
  {
    v4 = 1;
    *(a2 + 62) = 1;
    if ([*a2 isCaptureTexture] && (v5 = *a2) != 0)
    {
      v20 = v5;
      v6 = [*(a1 + 32) uniforms];
      [*(a1 + 40) renderRect];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v20 drawingScale];
      [PXGMetalRenderer _configureUniformGeometries:v6 renderRect:v8 drawingScale:v10 renderOrigin:v12, v14, v15, *(a1 + 96), *(a1 + 104)];
      [*(a1 + 48) setVertexBytes:objc_msgSend(*(a1 + 32) length:"uniforms") atIndex:{272, 0}];
      v4 = 0;
    }

    else
    {
      v20 = 0;
    }

    v16 = [*(a1 + 56) _drawRenderTexture:a2 forRenderPass:*(a1 + 40) withCommandEncoder:*(a1 + 48)];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 24);
    if (v18 <= v16)
    {
      v18 = v16;
    }

    *(v17 + 24) = v18;
    *(*(*(a1 + 80) + 8) + 24) += v16;
    ++*(*(*(a1 + 88) + 8) + 24);
    if ((v4 & 1) == 0)
    {
      v19 = [*(a1 + 32) uniforms];
      [*(a1 + 40) renderRect];
      [PXGMetalRenderer _configureUniformGeometries:"_configureUniformGeometries:renderRect:drawingScale:renderOrigin:" renderRect:v19 drawingScale:? renderOrigin:?];
      [*(a1 + 48) setVertexBytes:objc_msgSend(*(a1 + 32) length:"uniforms") atIndex:{272, 0}];
    }
  }
}

- (void)setTest_renderSnapshotHandler:(id)a3
{
  v4 = a3;
  if (self->_test_renderSnapshotHandler != v4)
  {
    v8 = v4;
    if (self->_renderDestinationIsPresentable)
    {
      v5 = [(PXGMetalRenderer *)self renderDestination];
      [v5 test_configureForRenderSnapshot];
    }

    v6 = [v8 copy];
    test_renderSnapshotHandler = self->_test_renderSnapshotHandler;
    self->_test_renderSnapshotHandler = v6;

    v4 = v8;
  }
}

- (void)_parseAndSortRenderTextures:(id)a3 willPerformOffscreenPass:(BOOL)a4
{
  v84 = a4;
  v129 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 hasParsedRenderTextures] & 1) == 0)
  {
    [v4 setHasParsedRenderTextures:1];
    v70 = v4;
    v5 = [v4 textures];
    v69 = [v70 opaqueTextures];
    v68 = [v70 translucentTextures];
    [v69 removeAllTextures];
    [v68 removeAllTextures];
    v85 = [v70 effectComponent];
    v91 = [v85 effectIds];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v5;
    v6 = 0;
    v7 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
    if (v7)
    {
      v8 = *v117;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v117 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v6 += [*(*(&v116 + 1) + 8 * i) spriteCount];
        }

        v7 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
      }

      while (v7);
    }

    v10 = [v70 renderPassStateForSpriteCount:v6];
    v11 = v10;
    if (v10)
    {
      v77 = [v10 spriteIndexes];
      v76 = [v11 textureInfos];
      v12 = v70;
      v90 = [v70 spriteEntities];
      v13 = v70;
      v89 = [v70 spriteGeometries];
      v14 = v70;
      v75 = [v70 spriteOriginalGeometries];
      v15 = v70;
      v74 = [v70 spriteInfos];
      v16 = v70;
      v95 = [v70 spriteStyles];
      v17 = v70;
      v18 = *([v70 uniforms] + 264);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v122 = 0x6010000000;
      v123 = PXGEngineRecordingDataStoreEvent__ivarLayout;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v112 = 0;
      v113 = &v112;
      v114 = 0x2020000000;
      v115 = 0;
      v108 = 0;
      v109 = &v108;
      v110 = 0x2020000000;
      v111 = 0;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __73__PXGMetalRenderer__parseAndSortRenderTextures_willPerformOffscreenPass___block_invoke;
      v102[3] = &unk_2782A97B0;
      p_buf = &buf;
      v106 = &v108;
      v107 = &v112;
      v103 = v69;
      v104 = v68;
      v87 = MEMORY[0x21CEE40A0](v102);
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v71 = obj;
      v80 = [v71 countByEnumeratingWithState:&v98 objects:v120 count:16];
      if (!v80)
      {
        goto LABEL_73;
      }

      v83 = 0;
      v79 = *v99;
      v72 = vneg_f32(0x80000000800000);
      v73 = v18;
      v88 = v11;
      while (1)
      {
        for (j = 0; j != v80; ++j)
        {
          if (*v99 != v79)
          {
            objc_enumerationMutation(v71);
          }

          v19 = *(*(&v98 + 1) + 8 * j);
          v20 = [v19 spriteCount];
          if (v20)
          {
            [v19 getSpriteIndexes:v77 + 4 * v83 maxSpriteCount:v20];
            [v19 getTextureInfos:v76 + (v83 << 6) forSpriteIndexes:v77 + 4 * v83 geometries:v75 spriteStyles:v95 spriteInfos:v74 screenScale:v20 count:v73];
            v94 = [v19 isOpaque];
            v93 = [v19 isAtlas];
            [v19 alpha];
            v22 = v21;
            v23 = [v19 shaderFlags];
            if (v23 >= 0x10000)
            {
              v64 = [MEMORY[0x277CCA890] currentHandler];
              [v64 handleFailureInMethod:a2 object:self file:@"PXGMetalRenderer.m" lineNumber:1515 description:{@"Invalid texture shader flags:%u specified for texture:%@", v23, v19}];
            }

            v92 = v23;
            v24 = (v77 + 4 * v83);
            v25 = v113;
            *(v113 + 24) = 0;
            *(v109 + 24) = 0;
            v26 = *(v25 + 24);
            v27 = [v19 isCaptureTexture];
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v97 = 0;
            v96 = 0;
            v31 = *(&buf + 1);
            *(*(&buf + 1) + 92) = v26;
            *(v31 + 32) = v19;
            *(v31 + 40) = 0;
            *(v31 + 56) = 0;
            *(v31 + 64) = 0;
            *(v31 + 48) = v83;
            *(v31 + 72) = 0;
            *(v31 + 76) = v72;
            *(v31 + 93) = v27;
            v32 = v20;
            *(v31 + 84) = 0x80000000800000;
            v33 = 3.4028e38;
            v86 = 1;
            *(v31 + 94) = 0;
            v81 = v20;
LABEL_19:
            v35 = *v24++;
            v34 = v35;
            v36 = *(v90 + 4 * v35);
            v37 = *(v91 + 4 * v36);
            if (v37 == v29)
            {
              goto LABEL_26;
            }

            if (v37)
            {
              v38 = [v85 effectForId:*(v91 + 4 * v36)];
              v39 = [v38 shader];

              if (v39)
              {
                v86 = [v39 isOpaque];
                goto LABEL_25;
              }
            }

            else
            {

              v39 = 0;
            }

            v86 = 1;
LABEL_25:
            v96 = v39 != 0;
            v97 = v39;
LABEL_26:
            v40 = 0;
            v41 = v95 + 160 * v34;
            if (*(v41 + 36) == 0.0 && *(v41 + 40) == 0.0 && *(v41 + 44) == 0.0)
            {
              v40 = *(v41 + 48) == 0.0;
            }

            if (*(v41 + 56) == 0.0)
            {
              v43 = 0;
            }

            else
            {
              v42 = *(v41 + 20);
              v43 = 1;
              if (COERCE_FLOAT(*(v41 + 28)) == 1000000000.0)
              {
                v44 = vceqq_f32(v42, xmmword_21AE2D400);
                if (vand_s8(*v44.i8, vdup_n_s32(vmovn_s32(v44).u16[1])).u32[0])
                {
                  v43 = v42.f32[3] != 1000000000.0;
                }
              }
            }

            v45 = *(v41 + 70);
            v46 = v94;
            if (v94)
            {
              if (*v41 != 1.0 || !v40 || v45 > 3)
              {
                v46 = 0;
              }

              else
              {
                v46 = v86 & !v43;
              }
            }

            if (v93)
            {
              v48 = 0;
            }

            else
            {
              v48 = v22 == 0.0 || *v41 == 0.0;
            }

            v49 = v46 & 1;
            v50 = v89 + 20 * v34;
            v51 = *v50;
            v52 = *(v50 + 12);
            v53 = *(v50 + 8) + *(v41 + 52);
            if (v40)
            {
              v54 = 0;
            }

            else
            {
              v54 = 0x100000;
            }

            if (v96)
            {
              v55 = 0x400000;
            }

            else
            {
              v55 = 0;
            }

            if (v43)
            {
              v56 = 0x10000000;
            }

            else
            {
              v56 = 0;
            }

            v57 = v55 | v54 | v56 | v92;
            if (v57 == v28 && (v58 = v113, *(v113 + 24) == v49) && ((v49 ^ 1 | v84) != 1 || v53 == v33) && ((v59 = v109, v37 == v29) ? (v60 = *(v109 + 24) == v48) : (v60 = 0), v60 ? (v61 = v45 == v30) : (v61 = 0), v61))
            {
              v62 = *(&buf + 1);
            }

            else
            {
              v87[2]();
              v62 = *(&buf + 1);
              *(*(&buf + 1) + 64) = v53;
              *(v62 + 68) = v57;
              *(v62 + 72) = v45;
              *(v62 + 40) = v97;
              *(v62 + 92) = v49;
              v58 = v113;
              v59 = v109;
            }

            v63 = vmul_f32(v52, 0x3F0000003F000000);
            *(v62 + 76) = vminnm_f32(*(v62 + 76), vsub_f32(v51, v63));
            *(v62 + 84) = vmaxnm_f32(*(v62 + 84), vadd_f32(v51, v63));
            ++*(v62 + 56);
            v33 = v53;
            *(v58 + 24) = v49;
            *(v59 + 24) = v48;
            v28 = v57;
            v29 = v37;
            v30 = v45;
            --v32;
            v11 = v88;
            if (!v32)
            {
              v87[2]();

              v83 += v81;
              continue;
            }

            goto LABEL_19;
          }
        }

        v80 = [v71 countByEnumeratingWithState:&v98 objects:v120 count:16];
        if (!v80)
        {
LABEL_73:

          _Block_object_dispose(&v108, 8);
          _Block_object_dispose(&v112, 8);
          _Block_object_dispose(&buf, 8);
          goto LABEL_77;
        }
      }
    }

    v65 = PXAssertGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_fault_impl(&dword_21AD38000, v65, OS_LOG_TYPE_FAULT, "PXGMetalRenderer failed to allocate metal buffers for totalSpritesToDraw: %ld, unable to render.", &buf, 0xCu);
    }

LABEL_77:
    v4 = v70;
  }
}

double __73__PXGMetalRenderer__parseAndSortRenderTextures_willPerformOffscreenPass___block_invoke(void *a1)
{
  v1 = *(a1[6] + 8);
  if (*(v1 + 56))
  {
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      if (*(*(a1[8] + 8) + 24) == 1)
      {
        v3 = a1[4];
      }

      else
      {
        v3 = a1[5];
      }

      v4 = *(v1 + 48);
      v8[0] = *(v1 + 32);
      v8[1] = v4;
      v5 = *(v1 + 80);
      v8[2] = *(v1 + 64);
      v8[3] = v5;
      [v3 addTexture:v8];
    }

    v6 = *(a1[6] + 8);
    *(v6 + 48) += *(v6 + 56);
    *(v6 + 56) = 0;
    result = 2.84809454e-306;
    *(*(a1[6] + 8) + 76) = vneg_f32(0x80000000800000);
    *(*(a1[6] + 8) + 84) = 0x80000000800000;
  }

  return result;
}

- (void)_renderToCommandBuffer:(id)a3 renderState:(id)a4 renderPassDescriptor:(id)a5 withCompletionCompletion:(id)a6
{
  v241[1] = *MEMORY[0x277D85DE8];
  v143 = a3;
  v10 = a4;
  v130 = a5;
  v128 = a6;
  nextFrameId = self->_nextFrameId;
  v142 = self;
  self->_nextFrameId = nextFrameId + 1;
  v129 = nextFrameId;
  [v10 prepareForRender:?];
  v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [v10 effectComponent];
  v144 = [v12 effectIds];
  v140 = [v10 spriteStyles];
  v137 = [v10 spriteEntities];
  v139 = [v10 uniforms];
  v13 = *(v139 + 264);
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  if (v10)
  {
    [v10 values];
    v138 = v231;
  }

  else
  {
    v138 = 0uLL;
  }

  PXSizeScale();
  v15 = v14;
  v17 = v16;
  v18 = *(&v236 + 1);
  v19 = [v130 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 clearColor];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v28 > 0.0 && v28 < 1.0)
  {
    v22 = v22 / v28;
    v24 = v24 / v28;
    v26 = v26 / v28;
  }

  v29 = [v10 captureSpriteTextures];
  v228[0] = 0;
  v228[1] = v228;
  v228[2] = 0x3032000000;
  v228[3] = __Block_byref_object_copy__8755;
  v228[4] = __Block_byref_object_dispose__8756;
  v229 = 0;
  v224 = 0;
  v225 = &v224;
  v226 = 0x2020000000;
  v227 = 0;
  v220 = 0;
  v221 = &v220;
  v222 = 0x2020000000;
  v223 = 0;
  v216 = 0;
  v217 = &v216;
  v218 = 0x2020000000;
  v219 = 0;
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke;
  v188[3] = &unk_2782A9660;
  v192 = &v220;
  v196 = v140;
  v197 = v137;
  v198 = v144;
  v30 = v12;
  v203 = v234;
  v204 = v235;
  v205 = v236;
  v206 = v237;
  v199 = v230;
  v200 = v231;
  v201 = v232;
  v202 = v233;
  v127 = v30;
  v189 = v30;
  v193 = &v216;
  v31 = v10;
  v207 = v15;
  v208 = v17;
  v209 = 1;
  v133 = v13;
  v210 = v13;
  v190 = v31;
  v194 = &v224;
  v211 = v18;
  v212 = v22;
  v213 = v24;
  v214 = v26;
  v215 = v28;
  v32 = v146;
  v191 = v32;
  v195 = v228;
  [v29 enumerateObjectsUsingBlock:v188];
  if ((v217[3] + v221[3]) >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v217[3] + v221[3];
  }

  offscreenTextureCache = v142->_offscreenTextureCache;
  device = v142->_device;
  v185 = v15;
  v186 = v17;
  v187 = 1;
  [(PXGMetalOffscreenTexturesStore *)offscreenTextureCache willRenderFrameWithDevice:device size:&v185 sampleCount:v237 pixelFormat:v18 preloadTexturesCount:v33];
  v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"captureSpriteZPosition" ascending:0];
  v241[0] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:1];
  [v32 sortUsingDescriptors:v37];

  v38 = objc_alloc_init(PXGMetalRenderPass);
  [(PXGMetalRenderPass *)v38 setRenderPassDescriptor:v130];
  [(PXGMetalRenderPass *)v38 setPixelFormat:v18];
  [(PXGMetalRenderPass *)v38 setRenderRect:v232, v233];
  [v32 addObject:v38];
  v131 = v38;
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v181 = v234;
  v182 = v235;
  v183 = v236;
  v184 = v237;
  v177 = v230;
  v178 = v231;
  v179 = v232;
  v175[2] = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_3;
  v175[3] = &unk_2782A96B0;
  v180 = v233;
  v141 = v31;
  v176 = v141;
  v39 = MEMORY[0x21CEE40A0](v175);
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  obj = v29;
  v40 = [obj countByEnumeratingWithState:&v171 objects:v240 count:16];
  if (v40)
  {
    v41 = *v172;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v172 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v39[2](v39, *(*(&v171 + 1) + 8 * i), 0, 1.0);
      }

      v40 = [obj countByEnumeratingWithState:&v171 objects:v240 count:16];
    }

    while (v40);
  }

  v43 = 0;
  v132 = 0;
  while (v43 < [v32 count])
  {
    v44 = [v32 objectAtIndexedSubscript:v43];
    v45 = [(PXGMetalRenderPass *)v44 captureSpriteTexture];
    v46 = v45;
    if (v45)
    {
      v47 = [v45 behavior] == 2;
    }

    else
    {
      v47 = 0;
    }

    v48 = [(PXGMetalRenderPass *)v132 captureSpriteTexture];
    if (v48)
    {
      v49 = v44 == v131;
    }

    else
    {
      v49 = 1;
    }

    v50 = v49;

    if (v50)
    {
      if (!v46)
      {
        goto LABEL_49;
      }

      if (!v47)
      {
LABEL_36:
        [(PXGMetalRenderPass *)v44 captureSpriteZPosition];
        [(PXGMetalRenderPass *)v44 setMinZ:?];
        v54 = v142->_offscreenTextureCache;
        if (v44)
        {
          [(PXGMetalRenderPass *)v44 renderSize];
        }

        else
        {
          v186 = 0;
          v185 = 0;
          v187 = 0;
        }

        v51 = [(PXGMetalOffscreenTexturesStore *)v54 checkoutOffscreenTextureWithSize:&v185 pixelFormat:[(PXGMetalRenderPass *)v44 pixelFormat]];
        if (v51)
        {
          v55 = objc_alloc_init(MEMORY[0x277CD6F50]);
          v56 = [v55 colorAttachments];
          v57 = [v56 objectAtIndexedSubscript:0];

          [(PXGMetalRenderPass *)v44 clearColor];
          [v57 setClearColor:?];
          [v57 setLoadAction:2];
          [v57 setStoreAction:1];
          [v57 setTexture:v51];
          v58 = [v130 depthAttachment];
          [v55 setDepthAttachment:v58];

          v59 = [v130 stencilAttachment];
          [v55 setStencilAttachment:v59];
        }

        else
        {
          v55 = 0;
        }

        [(PXGMetalRenderPass *)v44 setRenderPassDescriptor:v55];

LABEL_43:
        v60 = [(PXGMetalRenderPass *)v44 offscreenKernelEffect];
        v61 = [v60 kernel];

        if (v61)
        {
          v62 = v142->_offscreenTextureCache;
          if (v44)
          {
            [(PXGMetalRenderPass *)v44 renderSize];
          }

          else
          {
            v186 = 0;
            v185 = 0;
            v187 = 0;
          }

          v63 = [(PXGMetalOffscreenTexturesStore *)v62 checkoutOffscreenTextureWithSize:&v185 pixelFormat:[(PXGMetalRenderPass *)v44 pixelFormat]];

          v51 = v63;
        }

        v64 = [(PXGMetalRenderPass *)v44 captureSpriteTexture];
        [(PXGMetalRenderPass *)v44 drawingScale];
        (v39)[2](v39, v64, v51, 1.0 / v65);

LABEL_49:
        if (v47)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_34:
      v51 = [v46 snapshotTexture];
      goto LABEL_43;
    }

    if (v47)
    {
      if (!v46)
      {
        goto LABEL_51;
      }

      goto LABEL_34;
    }

    [(PXGMetalRenderPass *)v132 captureSpriteZPosition];
    *&v53 = v52 + -0.00000011921;
    [(PXGMetalRenderPass *)v44 setMaxZ:v53];
    if (v46)
    {
      goto LABEL_36;
    }

LABEL_50:
    v66 = v44;

    v132 = v66;
LABEL_51:

    ++v43;
  }

  [(PXGMetalRenderer *)v142 _parseAndSortRenderTextures:v141 willPerformOffscreenPass:v225[3] > 0];
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v135 = v32;
  v67 = [v135 countByEnumeratingWithState:&v167 objects:v239 count:16];
  if (v67)
  {
    v145 = *v168;
    do
    {
      for (j = 0; j != v67; ++j)
      {
        if (*v168 != v145)
        {
          objc_enumerationMutation(v135);
        }

        v69 = *(*(&v167 + 1) + 8 * j);
        v70 = [v69 renderPassDescriptor];

        if (v70)
        {
          v71 = [v69 renderPassDescriptor];
          v72 = [v143 renderCommandEncoderWithDescriptor:v71];

          v73 = [v69 captureSpriteTexture];

          [v69 renderRect];
          v75 = v74;
          v77 = v76;
          v79 = v78;
          v81 = v80;
          [v69 drawingScale];
          [PXGMetalRenderer _configureUniformGeometries:v139 renderRect:v75 drawingScale:v77 renderOrigin:v79, v81, v82, v138];
          [v69 minZ];
          v84 = v83;
          [v69 maxZ];
          v86 = v85;
          v161 = MEMORY[0x277D85DD0];
          v162 = 3221225472;
          v163 = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_5;
          v164 = &__block_descriptor_40_e33_B16__0________NSRange_QQ_fiCBBB_8l;
          v165 = v84;
          v166 = v85;
          v87 = MEMORY[0x21CEE40A0]();
          if (v73)
          {
            v159[0] = MEMORY[0x277D85DD0];
            v159[1] = 3221225472;
            v159[2] = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_9;
            v159[3] = &unk_2782A9738;
            v160 = v87;
            v87 = MEMORY[0x21CEE40A0](v159);
            v88 = [v69 captureSpriteTexture];
            v89 = [v88 behavior] == 1;

            if (v89)
            {
              v90 = [v69 captureSpriteTexture];
              [v90 captureRect];
              v92 = v91;
              v94 = v93;
              v96 = v95;
              v98 = v97;

              v242.origin.x = v92;
              v242.origin.y = v94;
              v242.size.width = v96;
              v242.size.height = v98;
              MinX = CGRectGetMinX(v242);
              v243.origin.x = v92;
              v243.origin.y = v94;
              v243.size.width = v96;
              v243.size.height = v98;
              MinY = CGRectGetMinY(v243);
              v244.origin.x = v92;
              v244.origin.y = v94;
              v244.size.width = v96;
              v244.size.height = v98;
              MaxX = CGRectGetMaxX(v244);
              v245.origin.x = v92;
              v245.origin.y = v94;
              v245.size.width = v96;
              v245.size.height = v98;
              MaxY = CGRectGetMaxY(v245);
              *&v102 = MinX;
              v103 = MinY;
              *(&v102 + 1) = v103;
              v104.f64[0] = MaxX;
              v104.f64[1] = MaxY;
              v155[0] = MEMORY[0x277D85DD0];
              v155[1] = 3221225472;
              v155[2] = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_10;
              v155[3] = &unk_2782A9760;
              v156 = v87;
              v157 = v102;
              v158 = vcvt_f32_f64(v104);
              v87 = MEMORY[0x21CEE40A0](v155);
            }

            v105 = @"Offscreen";
          }

          else
          {
            v105 = @"Main";
          }

          v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ pass [%.2f < z <= %.2f]", v105, v84, v86];
          [v72 setLabel:v106];

          [v69 setDrawCalls:{-[PXGMetalRenderer _drawSpritesWithRenderPass:renderState:commandEncoder:passingTest:](v142, "_drawSpritesWithRenderPass:renderState:commandEncoder:passingTest:", v69, v141, v72, v87)}];
          [v72 endEncoding];
        }

        v107 = [v69 offscreenKernelEffect];
        v108 = [v107 kernel];

        if (v108)
        {
          v109 = [v69 renderPassDescriptor];
          v110 = [v109 colorAttachments];
          v111 = [v110 objectAtIndexedSubscript:0];
          v112 = [v111 texture];
          v113 = v112;
          if (v112)
          {
            v114 = v112;
          }

          else
          {
            v115 = [v69 captureSpriteTexture];
            v114 = [v115 snapshotTexture];
          }

          if (v114)
          {
            v116 = [v69 captureSpriteTexture];
            v117 = [v116 texture];

            if (v117)
            {
              v118 = [v69 offscreenKernelEffect];
              v119 = [v118 kernel];
              [v119 encodeToCommandBuffer:v143 sourceTexture:v114 destinationTexture:v117 targetScale:v133];
            }
          }
        }
      }

      v67 = [v135 countByEnumeratingWithState:&v167 objects:v239 count:16];
    }

    while (v67);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v120 = obj;
  v121 = [v120 countByEnumeratingWithState:&v151 objects:v238 count:16];
  if (v121)
  {
    v122 = *v152;
    do
    {
      for (k = 0; k != v121; ++k)
      {
        if (*v152 != v122)
        {
          objc_enumerationMutation(v120);
        }

        v39[2](v39, *(*(&v151 + 1) + 8 * k), 0, 1.0);
      }

      v121 = [v120 countByEnumeratingWithState:&v151 objects:v238 count:16];
    }

    while (v121);
  }

  v124 = v141;
  kdebug_trace();

  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_11;
  v147[3] = &unk_2782A9788;
  v125 = v124;
  v148 = v125;
  v126 = v128;
  v149 = v126;
  v150 = v129;
  [v143 addCompletedHandler:v147];

  _Block_object_dispose(&v216, 8);
  _Block_object_dispose(&v220, 8);
  _Block_object_dispose(&v224, 8);
  _Block_object_dispose(v228, 8);
}

void __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 behavior];
  if (!v4)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v5 = v4 == 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_2;
  v17[3] = &unk_2782A9638;
  v25 = *(a1 + 88);
  v26 = *(a1 + 104);
  v6 = *(a1 + 32);
  v7 = *(a1 + 192);
  v31 = *(a1 + 176);
  v32 = v7;
  v8 = *(a1 + 224);
  v33 = *(a1 + 208);
  v34 = v8;
  v9 = *(a1 + 128);
  v27 = *(a1 + 112);
  v28 = v9;
  v10 = *(a1 + 160);
  v29 = *(a1 + 144);
  v30 = v10;
  v41 = v5;
  v11 = *(a1 + 64);
  v18 = v6;
  v22 = v11;
  v12 = *(a1 + 40);
  v36 = *(a1 + 256);
  v23 = *(a1 + 72);
  v35 = *(a1 + 240);
  v37 = *(a1 + 264);
  v19 = v12;
  v20 = v3;
  v38 = *(a1 + 272);
  v13 = *(a1 + 296);
  v39 = *(a1 + 280);
  v40 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  v21 = v14;
  v24 = v15;
  v16 = v3;
  [v16 enumerateSpriteIndexes:v17];
}

void __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 behavior];
  v10 = &v19;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4010000000;
  v22 = "";
  v11 = *(a1 + 120);
  v23 = *(a1 + 104);
  v24 = v11;
  if (v9)
  {
    v12 = *(a1 + 32);
    v10 = &v19;
    if (v12)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_4;
      v16 = &unk_2782A9688;
      v17 = v12;
      v18 = &v19;
      [v7 enumerateSpriteIndexes:&v13];

      v10 = v20;
    }
  }

  [v7 setCaptureRect:{v10[4], v10[5], v10[6], v10[7], v13, v14, v15, v16}];
  [v7 setSpriteGeometries:{objc_msgSend(*(a1 + 32), "spriteGeometries")}];
  [v7 setDrawingScale:a4];
  [v7 setTexture:v8];
  _Block_object_dispose(&v19, 8);
}

uint64_t __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_9(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = *(a2 + 61) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_10(float32x2_t *a1, uint64_t a2)
{
  if ((*(*&a1[4] + 16))() && (v4 = vmvn_s8(vcge_f32(*(a2 + 44), a1[5])), (v4.i8[0] & 1) == 0))
  {
    v5 = 0;
    v7 = vcge_f32(a1[6], *(a2 + 52));
    if ((vmvn_s8(v7).u8[0] & 1) == 0 && (v4.i8[4] & 1) == 0)
    {
      v5 = v7.i8[4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_11(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  kdebug_trace();
  v5 = [v3 error];
  v6 = [v5 code];

  if (v6 == 3)
  {
    v7 = PXGTungstenGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_21AD38000, v7, OS_LOG_TYPE_ERROR, "Command Buffer experienced Page Fault", &v16, 2u);
    }

    if (PFOSVariantHasInternalUI())
    {
      v8 = +[PXTungstenSettings sharedInstance];
      v9 = [v8 enablePanicOnCommandBufferPageFault];

      if (v9)
      {
        v10 = PXGTungstenGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_21AD38000, v10, OS_LOG_TYPE_ERROR, "Triggering Panic for internal builds", &v16, 2u);
        }

        v11 = MEMORY[0x21CEE4370](3072, "Photos Panic for Command Buffer Page Fault");
        if (v11)
        {
          v12 = v11;
          v13 = PXGTungstenGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = strerror(v12);
            v16 = 136315138;
            v17 = v14;
            _os_log_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "Attempt to panic failed: '%s'", &v16, 0xCu);
          }
        }
      }
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, *(a1 + 48));
  }

  [*(a1 + 32) keepAlive];
  objc_autoreleasePoolPop(v4);
}

float64x2_t __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_4(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) spriteGeometries] + 20 * a2;
  v6 = *(v5 + 12);
  v7 = *(*(a1 + 40) + 8);
  v8 = vcvtq_f64_f32(vadd_f32(*v5, vmul_f32(v6, 0xBF000000BF000000)));
  result = vcvtq_f64_f32(v6);
  v7[2] = v8;
  v7[3] = result;
  *a3 = 1;
  return result;
}

void __101__PXGMetalRenderer__renderToCommandBuffer_renderState_renderPassDescriptor_withCompletionCompletion___block_invoke_2(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v7 = *(a1 + 88);
  if (*(*(a1 + 104) + 4 * *(*(a1 + 96) + 4 * a2)))
  {
    v8 = [*(a1 + 32) effectForId:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = (v7 + 160 * a2);
  [v8 setScale:*(a1 + 208)];
  v10 = [v8 kernel];
  if (v10 && *(a1 + 312) == 1)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  v11 = [*(a1 + 40) spriteGeometries] + 20 * a2;
  if (*(a1 + 312) == 1)
  {
    v13 = *(a1 + 240);
    v14 = *(a1 + 256);
  }

  else
  {
    v12 = vmulq_n_f64(vcvtq_f64_f32(*(v11 + 12)), *(a1 + 264));
    v13 = vcvtq_u64_f64(v12);
    v14 = 1;
  }

  LODWORD(v12.f64[0]) = *v9;
  if (*v9 != 0.0 && v13.i64[0] != 0 && v13.i64[1] != 0)
  {
    v41 = *(v11 + 12);
    v42 = v13;
    v18 = *v11;
    v17 = *(v11 + 4);
    ++*(*(*(a1 + 72) + 8) + 24);
    v19 = [*(a1 + 48) isOpaque];
    v20 = objc_alloc_init(PXGMetalRenderPass);
    [(PXGMetalRenderPass *)v20 setCaptureSpriteTexture:*(a1 + 48)];
    LODWORD(v21) = *([*(a1 + 40) spriteGeometries] + 20 * a2 + 8);
    [(PXGMetalRenderPass *)v20 setCaptureSpriteZPosition:v21];
    if (v10)
    {
      v22 = v8;
    }

    else
    {
      v22 = 0;
    }

    [(PXGMetalRenderPass *)v20 setOffscreenKernelEffect:v22];
    if (v10)
    {
      [v8 drawingScale];
    }

    else
    {
      v23 = 1.0;
    }

    [(PXGMetalRenderPass *)v20 setDrawingScale:v23];
    v43 = v42;
    v44 = v14;
    [(PXGMetalRenderPass *)v20 setRenderSize:&v43];
    if (*(a1 + 312) == 1)
    {
      v24 = *(a1 + 176);
      v25 = *(a1 + 184);
      v26 = *(a1 + 192);
      v27 = *(a1 + 200);
    }

    else
    {
      v28 = vmul_f32(v41, 0x3F0000003F000000);
      v24 = (v18 - v28.f32[0]);
      v25 = (v17 - v28.f32[1]);
      v26 = v41.f32[0];
      v27 = v41.f32[1];
    }

    [(PXGMetalRenderPass *)v20 setRenderRect:v24, v25, v26, v27];
    v29 = *(a1 + 272);
    if (v29 <= 114)
    {
      if (v29 == 80)
      {
LABEL_38:
        [(PXGMetalRenderPass *)v20 setPixelFormat:v29];
        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v36 = 0.0;
        if (v19)
        {
          v36 = *(a1 + 280);
          v35 = *(a1 + 288);
          v34 = *(a1 + 296);
          v33 = *(a1 + 304);
        }

        [(PXGMetalRenderPass *)v20 setClearColor:v36, v35, v34, v33];
        [*(a1 + 56) addObject:v20];
        v37 = *(*(*(a1 + 80) + 8) + 40);
        if (!v37)
        {
          v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v39 = *(*(a1 + 80) + 8);
          v40 = *(v39 + 40);
          *(v39 + 40) = v38;

          v37 = *(*(*(a1 + 80) + 8) + 40);
        }

        [v37 addObject:*(a1 + 48)];
        *a3 = 1;

        goto LABEL_43;
      }

      if (v29 == 90)
      {
        v30 = v19 == 0;
        v31 = 115;
        v32 = 90;
LABEL_34:
        if (v30)
        {
          v29 = v31;
        }

        else
        {
          v29 = v32;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v29 == 115 || v29 == 552)
      {
        goto LABEL_38;
      }

      if (v29 == 554)
      {
        v30 = v19 == 0;
        v31 = 552;
        v32 = 554;
        goto LABEL_34;
      }
    }

    v29 = 80;
    goto LABEL_38;
  }

LABEL_43:
}

- (void)_renderToMainDestination:(id)a3 withCompletionCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_semaphore_wait(self->_inFlightSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [(PXGMetalRenderer *)self renderDestination];
  v9 = [v8 currentRenderPassDescriptor];

  if (v9)
  {
    v10 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [v10 setLabel:@"PXGMetalRenderer Main Destination"];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __70__PXGMetalRenderer__renderToMainDestination_withCompletionCompletion___block_invoke;
    v15 = &unk_2782A9610;
    v16 = self;
    v17 = v7;
    [(PXGMetalRenderer *)self _renderToCommandBuffer:v10 renderState:v6 renderPassDescriptor:v9 withCompletionCompletion:&v12];
    [v10 commit];
    [v10 waitUntilScheduled];
    if (self->_renderDestinationIsPresentable)
    {
      v11 = [(PXGMetalRenderer *)self renderDestination];
      [v11 present];
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_inFlightSemaphore);
  }
}

intptr_t __70__PXGMetalRenderer__renderToMainDestination_withCompletionCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 225) == 1)
  {
    v4 = *(v3 + 304);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__PXGMetalRenderer__renderToMainDestination_withCompletionCompletion___block_invoke_2;
    v7[3] = &unk_2782ABF68;
    v7[4] = v3;
    v7[5] = a2;
    dispatch_async(v4, v7);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 168));
}

void __70__PXGMetalRenderer__renderToMainDestination_withCompletionCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) renderDestination];
  [v2 notifyDidCompleteRenderForFrameID:*(a1 + 40)];
}

- (id)renderSnapshotForRequest:(id *)a3 offscreenEffect:(id)a4
{
  v5 = a4;
  v6 = self->_lastFrameRenderState;
  if (!v6)
  {
    v19 = 0;
    goto LABEL_11;
  }

  kdebug_trace();
  v7 = [(PXGMetalRenderer *)self renderDestination];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  [(PXGMetalRenderState *)v6 values];
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v8 = [(PXGMetalRenderer *)self _createColorTextureForRenderStateValues:&v27];
  if (!v8)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277CD6F50]);
  v11 = [v10 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];

  [v7 clearColor];
  [v12 setClearColor:?];
  [v12 setLoadAction:2];
  [v12 setStoreAction:1];
  v23 = v12;
  [v12 setTexture:v9];
  v24 = v7;
  v13 = [v7 depthStencilTexture];
  v14 = [v10 depthAttachment];
  [v14 setTexture:v13];
  [v14 setLoadAction:2];
  [v14 setStoreAction:0];
  [v14 setClearDepth:1.0];
  v15 = [v10 stencilAttachment];
  v22 = v13;
  [v15 setTexture:v13];
  [v15 setLoadAction:2];
  [v15 setStoreAction:0];
  [v15 setClearStencil:0];
  v16 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v16 setLabel:@"PXGMetalRenderer Snapshot"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__PXGMetalRenderer_renderSnapshotForRequest_offscreenEffect___block_invoke;
  v25[3] = &unk_2782A95E8;
  v26 = v6;
  [(PXGMetalRenderer *)self _renderToCommandBuffer:v16 renderState:v26 renderPassDescriptor:v10 withCompletionCompletion:v25];
  v17 = v5;
  v18 = [v5 kernel];

  if (!v18)
  {
    goto LABEL_6;
  }

  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v19 = [(PXGMetalRenderer *)self _createColorTextureForRenderStateValues:&v27];
  if (v19)
  {
    v20 = [v17 kernel];
    [v20 encodeToCommandBuffer:v16 sourceTexture:v9 destinationTexture:v19 targetScale:*(&v42 + 1)];

    v9 = v19;
LABEL_6:
    [v16 commit];
    [v16 waitUntilScheduled];
    v19 = [[PXGMetalRenderSnapshot alloc] initWithTexture:v9];
  }

  v5 = v17;

  v7 = v24;
LABEL_10:

LABEL_11:

  return v19;
}

- (id)_createColorTextureForRenderStateValues:(id *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a3->var5 width:a3->var0.width height:a3->var0.height mipmapped:0];
  [v5 setSampleCount:a3->var6];
  if (a3->var6 >= 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  [v5 setTextureType:v6];
  [v5 setStorageMode:2];
  [v5 setUsage:7];
  v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5];
  [v7 setLabel:@"PXGMetalRenderer Snapshot"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = PXGTungstenGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      device = self->_device;
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = device;
      _os_log_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "Failed to allocate snapshot texture, descriptor:%@ device:%@", &v12, 0x16u);
    }
  }

  return v7;
}

- (void)renderSpritesWithTextures:(id)a3 dataStore:(id)a4 presentationDataStore:(id)a5 presentationMetadataStore:(id)a6 layout:(id)a7
{
  v180 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PXGMetalRenderStatePool *)self->_renderStatePool checkoutRenderState];
  if (v17)
  {
    v141 = v16;
    WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);
    v148 = v17;
    [WeakRetained metalRenderer:self willCheckoutRenderState:v17];

    v19 = [(PXGMetalRenderer *)self renderDestination];
    [(PXGMetalRenderer *)self visibleRect];
    v20.i32[0] = 0;
    *&v21 = v21;
    *&v22 = v22;
    v23 = __PAIR64__(LODWORD(v22), LODWORD(v21));
    v24 = *&self[1]._nextFrameId;
    v25 = vceqq_f32(v24, xmmword_21AE2D410);
    v25.i32[3] = v25.i32[2];
    v25.i32[0] = vminvq_u32(v25);
    v138 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v20, v25), 0), v23, v24);
    v26 = [(PXGMetalRenderer *)self recordingSession];

    if (v26)
    {
      v27 = [(PXGMetalRenderer *)self recordingSession];
      [(PXGMetalRenderer *)self visibleRect];
      v29 = v28;
      v31 = v30;
      v32 = [(PXGMetalRenderer *)self renderDestination];
      [v32 scale];
      v34 = [PXGMetalRecordingFrameStartEvent eventWithViewSize:v29 renderOrigin:v31 screenScale:*v138.i64, v33];
      [v27 recordEvent:v34];
    }

    v142 = v15;
    v144 = v14;
    v145 = v13;
    if ([v19 canSetColorSpace])
    {
      [v19 destinationColorSpaceName];
      [v19 setColorspace:PXGetColorSpace()];
    }

    v147 = v19;
    v150 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v149 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v146 = v12;
    v35 = v12;
    v36 = [v35 countByEnumeratingWithState:&v162 objects:v179 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v163;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v163 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v162 + 1) + 8 * i);
          v41 = [v40 texture];
          if (v41)
          {
            v42 = v41;
            v43 = [v40 texture];
            v44 = [v43 device];
            device = self->_device;

            if (v44 != device)
            {
              continue;
            }
          }

          v46 = v40;
          if ([v46 isCaptureTexture])
          {
            v47 = [v46 copy];
            [v149 addObject:v47];

            v46 = v47;
          }

          [v150 addObject:v46];
        }

        v37 = [v35 countByEnumeratingWithState:&v162 objects:v179 count:16];
      }

      while (v37);
    }

    v48 = self->_spriteRenderDataStore;
    v14 = v144;
    if (v144)
    {
      [v144 sprites];
    }

    else
    {
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
    }

    v15 = v142;
    *buf = v159;
    v168 = v160;
    *&v169 = v161;
    [(PXGSpriteDataStore *)v48 setSprites:buf];
    [(PXGMetalRenderer *)self _populateEffectSprites:v150 spriteRenderDataStore:v48 presentationDataStore:v144 metadataStore:v142];
    [v148 setTextures:v150];
    [v148 setCaptureSpriteTextures:v149];
    v158 = 0;
    *__src = 0u;
    *v157 = 0u;
    v140 = v48;
    if (v48)
    {
      [(PXGSpriteDataStore *)v48 sprites];
      v49 = __src[0];
    }

    else
    {
      v49 = 0;
    }

    v13 = v145;
    v50 = v49;
    v51 = [v148 spriteGeometriesBufferWithCount:v49];
    v52 = [v148 spriteEntitiesBufferWithCount:v50];
    v53 = [v148 spriteStylesBufferWithCount:v50];
    v54 = [v148 spriteInfosBufferWithCount:v50];
    v55 = [v148 spriteOriginalGeometriesBufferWithCount:v50];
    if (v51 && v52 && v53 && v54 && (v56 = v55) != 0)
    {
      if (v50)
      {
        v57 = v157[0];
        v58 = vcvtq_f64_f32(*v138.i8);
        v59 = v50;
        do
        {
          *v51 = vcvt_f32_f64(vsubq_f64(*v57, v58));
          v60 = v57[1].f64[0] - *&v138.i32[2];
          *(v51 + 8) = v60;
          *(v51 + 12) = v57[1].f64[1];
          v57 += 2;
          v51 += 20;
          --v59;
        }

        while (v59);
      }

      memcpy(v52, __src[1], 4 * v50);
      memcpy(v53, v157[1], 160 * v50);
      memcpy(v54, v158, 40 * v50);
      memcpy(v56, v157[0], 32 * v50);
      v61 = [v142 numberOfResizableCapInsets];
      v62 = [v142 resizableCapInsets];
      v17 = v148;
      v63 = [v148 resizableCapInsetsBufferWithCount:v61];
      if (!v63)
      {
        v69 = PXAssertGetLog();
        v12 = v146;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          *&buf[4] = v61;
          _os_log_fault_impl(&dword_21AD38000, v69, OS_LOG_TYPE_FAULT, "PXGMetalRenderer failed to allocate resizableCapInsetsBuffer with count %ld, unable to render.", buf, 0xCu);
        }

        v16 = v141;
        goto LABEL_51;
      }

      memcpy(v63, v62, 16 * v61);
      v64 = [v148 effectComponent];
      v155[0] = MEMORY[0x277D85DD0];
      v155[1] = 3221225472;
      v155[2] = __111__PXGMetalRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke;
      v155[3] = &unk_2782A9570;
      v65 = self;
      v155[4] = self;
      [v64 performChanges:v155];

      v66 = [(PXGMetalRenderer *)self test_renderSnapshotHandler];
      v67 = [(PXGMetalRenderer *)self test_renderSnapshotHandler];

      if (v67)
      {
        [(PXGMetalRenderer *)self setTest_renderSnapshotHandler:0];
        v143 = [v147 renderTexture];
      }

      else
      {
        v143 = 0;
      }

      v70 = [v148 uniforms];
      v71 = v70;
      v72 = vceqq_f32(*&self[1]._nextFrameId, xmmword_21AE2D410);
      v72.i32[3] = v72.i32[2];
      if ((vminvq_u32(v72) & 0x80000000) != 0)
      {
        [(PXGMetalRenderer *)self visibleRectInRenderCoordinates];
        v94 = v93;
        v96 = v95;
        v98 = v97;
        v100 = v99;
        [(PXGMetalRenderer *)self renderOrigin];
        [PXGMetalRenderer _configureUniformGeometries:v71 renderRect:v94 drawingScale:v96 renderOrigin:v98, v100, 1.0, v101, v102];
      }

      else
      {
        v73 = 0;
        v74 = *&self[1].super.isa;
        v75 = *&self[1]._device;
        v76 = *&self[1]._yCbCrMatricesBuffer;
        *(v70 + 32) = *&self[1]._commandQueue;
        *(v70 + 48) = v76;
        *v70 = v74;
        *(v70 + 16) = v75;
        v77 = *&self[1]._lastOffscreenEffectRenderTime;
        v78 = *&self[1]._offscreenEffectTexture;
        v79 = *&self[1]._clampToZeroSampler;
        *(v70 + 96) = *&self[1]._workQueue;
        *(v70 + 112) = v79;
        *(v70 + 64) = v77;
        *(v70 + 80) = v78;
        v80 = *&self[1]._pipelinesLock._os_unfair_lock_opaque;
        v81 = *&self[1]._pipelinesCount;
        v82 = *&self[1]._renderStatePool;
        *(v70 + 224) = *&self[1]._compilationQueue;
        *(v70 + 240) = v82;
        *(v70 + 192) = v80;
        *(v70 + 208) = v81;
        *(v70 + 256) = self[1]._nextFrameId;
        v83 = *(v70 + 64);
        v84 = *(v70 + 80);
        v85 = *(v70 + 96);
        v86 = *(v70 + 112);
        v87 = *(v70 + 16);
        v88 = *(v70 + 32);
        v89 = *(v70 + 48);
        v166[0] = *v70;
        v166[1] = v87;
        v166[2] = v88;
        v166[3] = v89;
        *buf = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        do
        {
          *&buf[v73 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(v166[v73])), v84, *&v166[v73], 1), v85, v166[v73], 2), v86, v166[v73], 3);
          ++v73;
        }

        while (v73 != 4);
        v90 = v168;
        v91 = v169;
        v92 = v170;
        *(v70 + 128) = *buf;
        *(v70 + 144) = v90;
        *(v70 + 160) = v91;
        *(v70 + 176) = v92;
        v65 = self;
      }

      [v147 scale];
      v139 = v103;
      v104 = v103;
      *(v71 + 264) = v104;
      [v147 renderSize];
      v136 = v106;
      v137 = v105;
      [(PXGMetalRenderer *)v65 renderOrigin];
      v134 = v108;
      v135 = v107;
      [v147 renderBoundsInPoints];
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v133 = v115;
      [(PXGMetalRenderer *)v65 visibleRectInRenderCoordinates];
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v123 = v122;
      [(PXGMetalRenderer *)v65 offscreenEffectScale];
      v125 = v124;
      v126 = [v147 colorPixelFormat];
      v127 = [v147 sampleCount];
      *buf = v137;
      *&buf[8] = v136;
      *&v168 = v135;
      *(&v168 + 1) = v134;
      *&v169 = v110;
      *(&v169 + 1) = v112;
      *&v170 = v114;
      *(&v170 + 1) = v133;
      v171 = v117;
      v172 = v119;
      v173 = v121;
      v174 = v123;
      v175 = v125;
      v176 = v126;
      v177 = v127;
      v178 = v139;
      [v148 setValues:buf];
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = __111__PXGMetalRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_2;
      v151[3] = &unk_2782A95C0;
      v128 = v66;
      v154 = v128;
      v129 = v143;
      v152 = v129;
      v153 = v65;
      [(PXGMetalRenderer *)v65 _renderToMainDestination:v148 withCompletionCompletion:v151];
      objc_storeStrong(&v65->_lastFrameRenderState, v148);
      v130 = [(PXGMetalRenderer *)v65 recordingSession];

      if (v130)
      {
        v131 = [(PXGMetalRenderer *)v65 recordingSession];
        v132 = +[PXGMetalRecordingFrameEndEvent event];
        [v131 recordEvent:v132];
      }

      v65->_didPerformFirstRender = 1;
    }

    else
    {
      v68 = PXAssertGetLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v50;
        _os_log_fault_impl(&dword_21AD38000, v68, OS_LOG_TYPE_FAULT, "PXGMetalRenderer failed to allocate metal buffers for numberOfSprites:%ld, unable to render.", buf, 0xCu);
      }
    }

    v12 = v146;
    v16 = v141;
    v17 = v148;
LABEL_51:
  }
}

void __111__PXGMetalRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 entityManager];
  v4 = [v5 effectComponent];
  [v3 setContentsFrom:v4];
}

void __111__PXGMetalRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    if (*(a1 + 32))
    {
      v3 = *(*(a1 + 40) + 304);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __111__PXGMetalRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_3;
      v4[3] = &unk_2782A9598;
      v6 = v1;
      v5 = *(a1 + 32);
      dispatch_async(v3, v4);
    }
  }
}

- (void)setOffscreenEffectScale:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_offscreenEffectScale = a3;
    v5 = [(PXGMetalRenderer *)self delegate];
    [v5 rendererNeedsUpdate:self];
  }
}

- (void)setIsInvertColorsEnabled:(BOOL)a3
{
  if (self->_isInvertColorsEnabled != a3)
  {
    self->_isInvertColorsEnabled = a3;
    v5 = [(PXGMetalRenderer *)self delegate];
    [v5 rendererNeedsUpdate:self];
  }
}

- (void)setLowMemoryMode:(BOOL)a3
{
  if (self->_lowMemoryMode != a3)
  {
    self->_lowMemoryMode = a3;
    [(PXGMetalRenderDestination *)self->_renderDestination setLowMemoryMode:?];
  }
}

- (void)releaseResources
{
  lastFrameRenderState = self->_lastFrameRenderState;
  self->_lastFrameRenderState = 0;

  v4 = [(PXGMetalRenderer *)self renderDestination];
  [v4 releaseCachedResources];

  [(PXGMetalOffscreenTexturesStore *)self->_offscreenTextureCache removeAllTextures];
  [(PXGMetalRenderStatePool *)self->_renderStatePool clearReusePool];
  v5 = [(PXGMetalRenderer *)self delegate];
  [v5 rendererNeedsUpdate:self];
}

- (void)renderImmediately
{
  v2 = [(PXGMetalRenderer *)self renderDestination];
  [v2 renderImmediately];
}

- (void)setEntityManager:(id)a3
{
  v5 = a3;
  if (self->_entityManager != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_entityManager, a3);
    v6 = [(PXGEntityManager *)v7 effectComponent];
    [v6 setDelegate:self];

    v5 = v7;
  }
}

- (void)_populateEffectSprites:(id)a3 spriteRenderDataStore:(id)a4 presentationDataStore:(id)a5 metadataStore:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v29 = a4;
  v20 = a5;
  v19 = a6;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [(PXGMetalRenderer *)self entityManager];
  v31 = [v21 effectComponent];
  v28 = [v31 effectIds];
  v27 = [v20 entities];
  v26 = [v20 geometries];
  v25 = [v20 styles];
  v24 = [v20 infos];
  v11 = [(PXGMetalRenderer *)self renderDestination];
  [v11 scale];
  v13 = v12;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v14)
  {
    v23 = *v50;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * v15);
        v47[0] = 0;
        v47[1] = v47;
        v47[2] = 0x3032000000;
        v47[3] = __Block_byref_object_copy__8755;
        v47[4] = __Block_byref_object_dispose__8756;
        v48 = 0;
        v45[0] = 0;
        v45[1] = v45;
        v45[2] = 0x3032000000;
        v45[3] = __Block_byref_object_copy__8755;
        v45[4] = __Block_byref_object_dispose__8756;
        v46 = 0;
        v17 = [v16 spriteIndexes];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __101__PXGMetalRenderer__populateEffectSprites_spriteRenderDataStore_presentationDataStore_metadataStore___block_invoke;
        v32[3] = &unk_2782A9548;
        v39 = v27;
        v40 = v28;
        v18 = v31;
        v37 = v45;
        v38 = v47;
        v33 = v18;
        v34 = v16;
        v35 = v30;
        v36 = v29;
        v41 = v26;
        v42 = v25;
        v43 = v24;
        v44 = v13;
        [v17 enumerateRangesUsingBlock:v32];

        _Block_object_dispose(v45, 8);
        _Block_object_dispose(v47, 8);

        ++v15;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v14);
  }

  [obj addObjectsFromArray:v30];
}

void __101__PXGMetalRenderer__populateEffectSprites_spriteRenderDataStore_presentationDataStore_metadataStore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      if (*(*(a1 + 88) + 4 * *(*(a1 + 80) + 4 * a2)))
      {
        v6 = [*(a1 + 32) effectForId:?];
        v7 = [v6 numberOfSiblingSprites];
        if (v7)
        {
          if (*(*(*(a1 + 64) + 8) + 40) != v6)
          {
            v8 = [v6 createSiblingsTextureForMainSpriteTexture:*(a1 + 40)];
            v9 = *(*(a1 + 72) + 8);
            v10 = *(v9 + 40);
            *(v9 + 40) = v8;

            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
            if (*(*(*(a1 + 72) + 8) + 40))
            {
              [*(a1 + 48) addObject:?];
            }
          }

          if (*(*(*(a1 + 72) + 8) + 40))
          {
            v11 = [*(a1 + 56) count] | (v7 << 32);
            [*(a1 + 56) insertSpritesInRange:v11];
            v12 = [*(a1 + 56) entities];
            v13 = [*(a1 + 56) geometries];
            v14 = [*(a1 + 56) styles];
            v15 = [*(a1 + 56) infos];
            v31 = 0;
            v29 = 0u;
            v30 = 0u;
            v16 = *(a1 + 56);
            if (v16)
            {
              [v16 spritesInRange:v11];
            }

            v17 = *(a1 + 96);
            v18 = *(a1 + 104);
            v19 = *(*(a1 + 72) + 8);
            v28 = v31;
            v20 = *(a1 + 112);
            v21 = *(v19 + 40);
            v22 = v17 + 32 * a2;
            v23 = *(a1 + 40);
            v24 = *(a1 + 120);
            v27[0] = v29;
            v27[1] = v30;
            v26[0] = v12 + 4 * a2;
            v26[1] = v13 + 32 * a2;
            v26[2] = v14 + 160 * a2;
            v26[3] = v15 + 40 * a2;
            v25[0] = v26[0];
            v25[1] = v22;
            v25[2] = v18 + 160 * a2;
            v25[3] = v20 + 40 * a2;
            [v6 configureSiblingSprites:v27 siblingsSpriteIndexRange:v11 siblingsTexture:v21 forMainRenderSpriteRef:v26 mainPresentationSpriteRef:v25 mainSpriteIndex:a2 mainSpriteTexture:v24 screenScale:v23];
          }
        }
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

- (CGRect)converRectToRenderCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(PXGMetalRenderer *)self renderOrigin];
  PXPointSubtract();
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)_createPipelineStateForColorProgram:(id)a3 shader:(id)a4 shaderFlags:(int)a5 colorPixelFormat:(unint64_t)a6 depthStencilPixelFormat:(unint64_t)a7 isOpaque:(BOOL)a8
{
  v76 = a8;
  v97 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = [v12 source];
  [v13 length];
  kdebug_trace();

  v14 = [v11 params];
  LODWORD(v13) = 4 * (v14 != 0);

  v15 = v13 | (8 * (self->_yCbCrMatricesBuffer != 0));
  v16 = [v11 TRCLUTs];
  if (v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v11 colorCube];
  v19 = v17 | (4 * (v18 != 0));

  v20 = [v11 numInputs];
  v21 = [v12 opcodes];
  v22 = v21;
  v24 = v23;
  v25 = HIDWORD(v21);
  v96[0] = a5;
  v96[1] = v20;
  v78 = v11;
  v96[2] = [v11 opcodes];
  v96[3] = v15;
  v96[4] = v19;
  v96[5] = v22;
  v26 = self;
  v96[6] = v25;
  v96[7] = v24;
  v27 = objc_alloc_init(MEMORY[0x277CD6D70]);
  [v27 setConstantValues:v96 type:29 withRange:{0, 8}];
  os_unfair_lock_lock(&self->_metalLock);
  v28 = self->_device;
  v29 = self->_library;
  os_unfair_lock_unlock(&self->_metalLock);
  v84 = v12;
  v30 = [v12 source];

  v79 = v28;
  if (v30)
  {
    if (!self->_didPerformFirstRender && [MEMORY[0x277CCACC8] isMainThread])
    {
      v31 = PXGTungstenGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v12;
        _os_log_impl(&dword_21AD38000, v31, OS_LOG_TYPE_DEFAULT, "Warning, compiling shader %@ on main thread during first render.", buf, 0xCu);
      }
    }

    v80 = v29;
    v72 = v27;
    v73 = self;
    v32 = [objc_opt_class() mainShaderSource];
    v33 = [v32 mutableCopy];

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = +[PXGShaderFunction shaderFunctions];
    v34 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v90;
      do
      {
        v37 = 0;
        do
        {
          if (*v90 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v89 + 1) + 8 * v37);
          v39 = [v84 source];
          v40 = [v39 sourceForShaderFunction:v38];

          if (v40)
          {
            v41 = MEMORY[0x277CCACA8];
            v42 = [v38 name];
            v43 = [v41 stringWithFormat:@"/* <PXGShaderInject(%@)> */\n", v42];

            v44 = [v33 rangeOfString:v43];
            v46 = v45;
            if (v44 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v48 = [MEMORY[0x277CCA890] currentHandler];
              [v48 handleFailureInMethod:a2 object:v73 file:@"PXGMetalRenderer.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"range.location != NSNotFound"}];
            }

            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n%@\n}\n", v40];
            [v33 insertString:v47 atIndex:v44 + v46];
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
      }

      while (v35);
    }

    v49 = [v84 parameterBindingDeclarations];
    if ([v49 length])
    {
      [v33 replaceOccurrencesOfString:@"/* <PXGShaderFragmentParameters> */" withString:v49 options:0 range:{0, objc_msgSend(v33, "length")}];
    }

    v50 = [v84 source];
    v51 = [v50 otherSource];

    v26 = v73;
    if ([v51 length])
    {
      [v33 replaceOccurrencesOfString:@"/* <PXGShaderOtherSource> */" withString:v51 options:0 range:{0, objc_msgSend(v33, "length")}];
    }

    v88 = 0;
    v29 = [(MTLDevice *)v79 newLibraryWithSource:v33 options:0 error:&v88];
    v52 = v88;

    if (!v29)
    {
      v70 = [MEMORY[0x277CCA890] currentHandler];
      [v70 handleFailureInMethod:a2 object:v73 file:@"PXGMetalRenderer.m" lineNumber:606 description:{@"Failed to create library:%@", v52}];
    }

    v27 = v72;
  }

  v87 = 0;
  v53 = [(MTLLibrary *)v29 newFunctionWithName:@"vertex_main" constantValues:v27 error:&v87];
  v54 = v87;
  v55 = v54;
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v68 = [MEMORY[0x277CCA890] currentHandler];
    [v68 handleFailureInMethod:a2 object:v26 file:@"PXGMetalRenderer.m" lineNumber:611 description:{@"Failed to create vertex function:%@", v55}];

    if (!v55)
    {
      goto LABEL_33;
    }
  }

  v56 = PXGTungstenGetLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v95 = v55;
    _os_log_impl(&dword_21AD38000, v56, OS_LOG_TYPE_DEBUG, "Warning compiling vertex shader:%@", buf, 0xCu);
  }

LABEL_33:
  v86 = 0;
  v81 = v29;
  v57 = [(MTLLibrary *)v29 newFunctionWithName:@"fragment_main" constantValues:v27 error:&v86];
  v58 = v86;
  v59 = v58;
  if (v57)
  {
    if (!v58)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v69 = [MEMORY[0x277CCA890] currentHandler];
    [v69 handleFailureInMethod:a2 object:v26 file:@"PXGMetalRenderer.m" lineNumber:618 description:{@"Failed to create fragment function:%@", v59}];

    if (!v59)
    {
      goto LABEL_38;
    }
  }

  v60 = PXGTungstenGetLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v95 = v59;
    _os_log_impl(&dword_21AD38000, v60, OS_LOG_TYPE_DEBUG, "Warning compiling fragment shader:%@", buf, 0xCu);
  }

LABEL_38:
  obja = v55;
  v61 = objc_opt_new();
  [v61 setVertexFunction:v53];
  [v61 setFragmentFunction:v57];
  [v61 setDepthAttachmentPixelFormat:a7];
  [v61 setStencilAttachmentPixelFormat:a7];
  v62 = [(PXGMetalRenderer *)v26 renderDestination];
  [v61 setRasterSampleCount:{objc_msgSend(v62, "sampleCount")}];

  v63 = [v61 colorAttachments];
  v64 = [v63 objectAtIndexedSubscript:0];

  [v64 setPixelFormat:a6];
  [v64 setBlendingEnabled:!v76];
  [v64 setRgbBlendOperation:0];
  [v64 setAlphaBlendOperation:0];
  [v64 setSourceRGBBlendFactor:1];
  [v64 setSourceAlphaBlendFactor:1];
  [v64 setDestinationRGBBlendFactor:5];
  [v64 setDestinationAlphaBlendFactor:5];
  v85 = 0;
  v65 = [(MTLDevice *)v79 newRenderPipelineStateWithDescriptor:v61 error:&v85];
  v66 = v85;
  if (!v65)
  {
    v77 = [MEMORY[0x277CCA890] currentHandler];
    [v77 handleFailureInMethod:a2 object:v26 file:@"PXGMetalRenderer.m" lineNumber:642 description:{@"Failed to create render pipeline state:%@", v66}];
  }

  kdebug_trace();

  return v65;
}

- ($15EF911DBFB6DAA7434D55827AA48808)_handleCompiledRenderPipelineState:(SEL)a3 forColorProgram:(id)a4 shader:(id)a5 shaderFlags:(id)a6 colorPixelFormat:(int)a7 pipelineIndex:(unint64_t)a8 isOpaque:(int64_t)a9
{
  v26 = a4;
  v18 = a5;
  v19 = a6;
  os_unfair_lock_lock(&self->_pipelinesLock);
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  if (self->_pipelinesCount > a9)
  {
    v20 = &self->_pipelines[a9];
    v21 = v18;
    v22 = v19;
    if (v20->var2 == v21 && ((var3 = v20->var3, var3 == v22) || [var3 isEquivalentToShader:v22]) && v20->var0 == a7 && v20->var1 == a8)
    {
      var5 = v20->var5;

      if (var5 == a10)
      {
        objc_storeStrong(&v20->var4, a4);
        __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(retstr, v20);
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&self->_pipelinesLock);

  return result;
}

- ($15EF911DBFB6DAA7434D55827AA48808)_pipelineForRenderTexture:(SEL)a3 colorPixelFormat:(id *)a4 waitForCompilation:(unint64_t)a5
{
  v6 = a6;
  v10 = +[PXTungstenSettings sharedInstance];
  v11 = a4->var0;
  var1 = a4->var1;
  v13 = var1;
  v66 = a5;
  v62 = v6;
  obj = var1;
  if ([v10 enableColorMatching])
  {
    v14 = [v11 colorProgram];
  }

  else
  {
    v14 = 0;
  }

  var4 = a4->var4;
  if (![v10 enableRoundedCorners])
  {
    var4 &= ~0x100000u;
  }

  v16 = BYTE4(a4[1].var1);
  if ([(PXGMetalRenderer *)self isInvertColorsEnabled])
  {
    v17 = 0x200000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | var4;
  v19 = [v10 debugOpaque];
  v65 = v16;
  if (v16)
  {
    v20 = 0x1000000;
  }

  else
  {
    v20 = 0x2000000;
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ([v10 debugExtendedColorRange])
  {
    v22 = 0x800000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v18 | v21 | v22;
  if ([v10 debugResolution])
  {
    v24 = 0x4000000;
  }

  else
  {
    v24 = 0;
  }

  if ([v10 debugColorTransform])
  {
    v25 = 0x8000000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v24 | v25;
  if ([v10 debugMipmaps])
  {
    v27 = 0x40000000;
  }

  else
  {
    v27 = 0;
  }

  v28 = v23 | v26 | v27;
  v29 = [(PXGMetalRenderer *)self renderDestination];
  v61 = [v29 depthStencilPixelFormat];

  os_unfair_lock_lock(&self->_pipelinesLock);
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  if (!v11 || [v11 renderPipelineIndex] >= self->_pipelinesCount)
  {
    goto LABEL_31;
  }

  pipelines = self->_pipelines;
  v31 = &pipelines[[v11 renderPipelineIndex]];
  v32 = v14;
  v33 = v13;
  if (*(v31 + 16) != v32 || (v56 = *(v31 + 24), v56 != v33) && ![v56 isEquivalentToShader:v33] || *v31 != v28 || *(v31 + 8) != v66)
  {

LABEL_31:
    v34 = 0;
    goto LABEL_32;
  }

  v57 = *(v31 + 40);

  if (v57 != v65)
  {
    goto LABEL_31;
  }

  __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(retstr, v31);
  v34 = 1;
LABEL_32:
  pipelinesCount = self->_pipelinesCount;
  if (pipelinesCount >= 1)
  {
    HIDWORD(v58) = v34;
    v59 = v11;
    v60 = v10;
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v38 = self->_pipelines;
      v39 = &v38[v36];
      v40 = v14;
      v41 = v13;
      if (v38[v36].var2 == v40 && ((v42 = *(v39 + 24), v42 == v41) || [v42 isEquivalentToShader:v41]) && *v39 == v28 && v38[v36].var1 == v66)
      {
        var5 = v38[v36].var5;

        if (var5 == v65)
        {
          __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(retstr, v39);
          v11 = v59;
          [v59 setRenderPipelineIndex:v37];
          v10 = v60;
          goto LABEL_45;
        }
      }

      else
      {
      }

      ++v37;
      pipelinesCount = self->_pipelinesCount;
      ++v36;
      if (v37 >= pipelinesCount)
      {
        v11 = v59;
        v10 = v60;
        v34 = HIDWORD(v58);
        break;
      }
    }
  }

  if (v34)
  {
LABEL_45:
    os_unfair_lock_unlock(&self->_pipelinesLock);
  }

  else
  {
    self->_pipelinesCount = pipelinesCount + 1;
    [(PXGMetalRenderer *)self _pipelinesLock_resizePipelinesStorageIfNeeded];
    v44 = &self->_pipelines[pipelinesCount];
    objc_storeStrong(&v44->var2, v14);
    objc_storeStrong(&v44->var3, obj);
    v44->var0 = v28;
    v44->var1 = v66;
    v45 = v44->var4;
    v44->var4 = 0;

    v44->var5 = v65;
    __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(retstr, v44);
    [v11 setRenderPipelineIndex:pipelinesCount];
    os_unfair_lock_unlock(&self->_pipelinesLock);
    if (v62)
    {
      v46 = [(PXGMetalRenderer *)self _createPipelineStateForColorProgram:v14 shader:v13 shaderFlags:v28 colorPixelFormat:v66 depthStencilPixelFormat:v61 isOpaque:v65];
      LOBYTE(v58) = v65;
      [(PXGMetalRenderer *)self _handleCompiledRenderPipelineState:v46 forColorProgram:v14 shader:v13 shaderFlags:v28 colorPixelFormat:v66 pipelineIndex:pipelinesCount isOpaque:v58];
      *&retstr->var0 = *location;
      v47 = v75;
      v75 = 0;
      var2 = retstr->var2;
      retstr->var2 = v47;

      v49 = v76;
      v76 = 0;
      var3 = retstr->var3;
      retstr->var3 = v49;

      v51 = v77;
      v77 = 0;
      v52 = retstr->var4;
      retstr->var4 = v51;

      retstr->var5 = v78;
    }

    else
    {
      objc_initWeak(location, self);
      compilationQueue = self->_compilationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__PXGMetalRenderer__pipelineForRenderTexture_colorPixelFormat_waitForCompilation___block_invoke;
      block[3] = &unk_2782A9520;
      objc_copyWeak(v71, location);
      v68 = v14;
      v54 = v13;
      v72 = v28;
      v71[1] = v66;
      v71[2] = v61;
      v73 = v65;
      v71[3] = pipelinesCount;
      v69 = v54;
      v70 = self;
      dispatch_async(compilationQueue, block);

      objc_destroyWeak(v71);
      objc_destroyWeak(location);
    }
  }

  return result;
}

void __82__PXGMetalRenderer__pipelineForRenderTexture_colorPixelFormat_waitForCompilation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained _createPipelineStateForColorProgram:*(a1 + 32) shader:*(a1 + 40) shaderFlags:*(a1 + 88) colorPixelFormat:*(a1 + 64) depthStencilPixelFormat:*(a1 + 72) isOpaque:*(a1 + 92)];

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = v4;
  if (v4)
  {
    LOBYTE(v7) = *(a1 + 92);
    [v4 _handleCompiledRenderPipelineState:v3 forColorProgram:*(a1 + 32) shader:*(a1 + 40) shaderFlags:*(a1 + 88) colorPixelFormat:*(a1 + 64) pipelineIndex:*(a1 + 80) isOpaque:v7];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  if (v12)
  {
    v6 = *(*(a1 + 48) + 304);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__PXGMetalRenderer__pipelineForRenderTexture_colorPixelFormat_waitForCompilation___block_invoke_2;
    block[3] = &unk_2782A94F8;
    objc_copyWeak(&v9, (a1 + 56));
    block[4] = *(a1 + 48);
    dispatch_async(v6, block);
    objc_destroyWeak(&v9);
  }
}

void __82__PXGMetalRenderer__pipelineForRenderTexture_colorPixelFormat_waitForCompilation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 rendererNeedsUpdate:*(a1 + 32)];
}

- (void)_setupYCbCrMatrices
{
  v2 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = &unk_21AE2DA90;
  do
  {
    v3 = 0;
    ++v2;
    v4 = 1;
    do
    {
      v5 = 0;
      v6 = v4;
      v7 = v3 + 1;
      v8 = v17;
      v9 = &v16[48 * v3];
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          IsVideoRange = PXGYCbCrMatrixIsVideoRange(v2);
          if ((v5 - 1) < 2 || (v12 = 1.0, !v5) && IsVideoRange)
          {
            v12 = ((1 << *(&ycbcrInputBitDepth + v7)) + -1.0) / (1 << *(&ycbcrInputBitDepth + v7));
          }

          *&v9[i] = v12 * *&v8[i];
        }

        ++v5;
        v9 += 12;
        v8 += 12;
      }

      while (v5 != 4);
      v4 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    v16 += 96;
    v17 += 48;
  }

  while (v2 != 8);
  v13 = [(MTLDevice *)self->_device newBufferWithBytes:v18 length:768 options:0];
  yCbCrMatricesBuffer = self->_yCbCrMatricesBuffer;
  self->_yCbCrMatricesBuffer = v13;

  [(MTLBuffer *)self->_yCbCrMatricesBuffer setLabel:@"YCbCrMatrices"];
}

- (void)dealloc
{
  [(PXGMetalRenderer *)self _clearPipelines];
  free(self->_pipelines);
  v3.receiver = self;
  v3.super_class = PXGMetalRenderer;
  [(PXGMetalRenderer *)&v3 dealloc];
}

- (PXGMetalRenderer)initWithRenderDestination:(id)a3 layoutQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = PXGMetalRenderer;
  v9 = [(PXGMetalRenderer *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutQueue, a4);
    objc_storeStrong(&v10->_renderDestination, a3);
    [(PXGMetalRenderDestination *)v10->_renderDestination setDelegate:v10];
    [(PXGMetalRenderDestination *)v10->_renderDestination setLayoutQueue:v8];
    v10->_renderDestinationIsPresentable = [v7 conformsToProtocol:&unk_282C9CA50];
    v10->_renderDestinationWantsCompleteRenderingNotification = objc_opt_respondsToSelector() & 1;
    v10->_pipelinesLock._os_unfair_lock_opaque = 0;
    v10->_metalLock._os_unfair_lock_opaque = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("com.apple.photos.metalrenderer-compile", v12);
    compilationQueue = v10->_compilationQueue;
    v10->_compilationQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.apple.photos.metalrenderer-work", v16);
    workQueue = v10->_workQueue;
    v10->_workQueue = v17;

    v19 = dispatch_semaphore_create(3);
    inFlightSemaphore = v10->_inFlightSemaphore;
    v10->_inFlightSemaphore = v19;

    v10->_offscreenEffectScale = 1.0;
    [(PXGMetalRenderer *)v10 _setupMetalIfNeeded];
    v21 = [PXGMetalRenderStatePool alloc];
    v22 = [v7 device];
    v23 = [(PXGMetalRenderStatePool *)v21 initWithDevice:v22 queue:v8];
    renderStatePool = v10->_renderStatePool;
    v10->_renderStatePool = v23;

    v25 = +[PXGSpriteDataStore newSpriteDataStore];
    spriteRenderDataStore = v10->_spriteRenderDataStore;
    v10->_spriteRenderDataStore = v25;

    v27 = objc_alloc_init(PXGMetalOffscreenTexturesStore);
    offscreenTextureCache = v10->_offscreenTextureCache;
    v10->_offscreenTextureCache = v27;
  }

  return v10;
}

+ (void)_configureUniformGeometries:(id *)a3 renderRect:(CGRect)a4 drawingScale:(double)a5 renderOrigin:(CGPoint)a6
{
  x = a6.x;
  y = a6.y;
  width = a4.size.width;
  height = a4.size.height;
  v82 = a4.origin.x;
  v85 = a4.origin.y;
  v7 = +[PXTungstenSettings sharedInstance];
  [v7 cameraZoomFactor];
  v9 = v8;

  v10.f64[0] = width;
  v10.f64[1] = height;
  __asm { FMOV            V2.2D, #0.5 }

  v16 = vmulq_f64(v10, _Q2);
  v17.f64[0] = v82;
  v17.f64[1] = v85;
  v18 = vaddq_f64(v17, v16);
  *&v18.f64[0] = vcvt_f32_f64(v18);
  v19 = -v16.f64[0] / (width / height) * v9;
  v20 = v18;
  *&v20.f64[1] = v19;
  v83 = v18;
  v86 = v20;
  if (+[PXTungstenSettings wantsPerspectiveDebug])
  {
    +[PXTungstenSettings perspectiveAngle];
    *&v21 = v21 + v83.f32[0];
    v22.i64[0] = __PAIR64__(v86.u32[1], LODWORD(v21));
    v22.i64[1] = v86.u32[2];
    v87 = v22;
  }

  else
  {
    v23 = v86;
    v23.i32[3] = 0;
    v87 = v23;
  }

  v24 = 0.0;
  if (PXFloatApproximatelyEqualToFloat())
  {
    v25 = 0.0;
  }

  else
  {
    PXRectScaleFromCenter();
    v25 = v26;
    v24 = v27;
    width = v28;
    height = v29;
  }

  +[PXGMetalRenderer maxZPosition];
  v30 = +[PXTungstenSettings sharedInstance];
  if ([v30 wantsOrthogonalProjection])
  {
    v31 = +[PXTungstenSettings wantsPerspectiveDebug];

    if (!v31)
    {
      v80 = *(MEMORY[0x277D860B8] + 16);
      v81 = *MEMORY[0x277D860B8];
      v84 = *(MEMORY[0x277D860B8] + 32);
      v77 = *(MEMORY[0x277D860B8] + 48);
      PXMatrixMakeTranslation();
      v74 = v33;
      v75 = v32;
      v72 = v35;
      v73 = v34;
      *&v32 = v25;
      v33.f64[0] = v24;
      *&v34 = width;
      *&v35 = height;
      CGRectGetMinX(*(&v33 - 8));
      v101.origin.x = v25;
      v101.origin.y = v24;
      v101.size.width = width;
      v101.size.height = height;
      CGRectGetMaxX(v101);
      v102.origin.x = v25;
      v102.origin.y = v24;
      v102.size.width = width;
      v102.size.height = height;
      CGRectGetMinY(v102);
      v103.origin.x = v25;
      v103.origin.y = v24;
      v103.size.width = width;
      v103.size.height = height;
      CGRectGetMaxY(v103);
      PXMatrixMakeOrthoProjection();
      goto LABEL_14;
    }
  }

  else
  {
  }

  v40 = vsubq_f32(v83, v87);
  v41 = vmulq_f32(v40, v40);
  *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
  v43 = vrsqrte_f32(v42);
  v44 = vmul_f32(v43, vrsqrts_f32(v42, vmul_f32(v43, v43)));
  v45 = vmulq_n_f32(v40, vmul_f32(v44, vrsqrts_f32(v42, vmul_f32(v44, v44))).f32[0]);
  v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
  v47 = vmlaq_f32(vmulq_f32(v46, xmmword_21AE2D420), xmmword_21AE2D430, v45);
  v48 = v45;
  v49 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
  v50 = vmulq_f32(v47, v47);
  v41.f32[0] = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
  *v50.f32 = vrsqrte_f32(v41.u32[0]);
  *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v41.u32[0], vmul_f32(*v50.f32, *v50.f32)));
  v51 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v41.u32[0], vmul_f32(*v50.f32, *v50.f32))).f32[0]);
  v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vnegq_f32(v45)), v51, v46);
  v51.i32[3] = 0;
  v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
  v53.i32[3] = 0;
  v80 = v53;
  v81 = v51;
  v48.i32[3] = 0;
  v84 = v48;
  PXMatrixMakeTranslation();
  v54 = 0;
  v93 = v55;
  v94 = v56;
  v95 = v57;
  v96 = v58;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  do
  {
    *(&v97 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, COERCE_FLOAT(*(&v93 + v54))), v80, *(&v93 + v54), 1), v84, *(&v93 + v54), 2), xmmword_21AE2D440, *(&v93 + v54), 3);
    v54 += 16;
  }

  while (v54 != 64);
  v77 = xmmword_21AE2D440;
  v74 = v98;
  v75 = v97;
  v72 = v100;
  v73 = v99;
  PXMatrixMakePerspectiveProjection();
LABEL_14:
  v90 = v37;
  v92 = v36;
  v88 = v38;
  v76 = v39;
  PXMatrixMakeScale();
  v63 = 0;
  v93 = v75;
  v94 = v74;
  v95 = v73;
  v96 = v72;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  do
  {
    *(&v97 + v63) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v93 + v63))), v60, *(&v93 + v63), 1), v61, *(&v93 + v63), 2), v62, *(&v93 + v63), 3);
    v63 += 16;
  }

  while (v63 != 64);
  v64 = 0;
  v65 = v97;
  v66 = v98;
  v67 = v99;
  v68 = v100;
  *&a3->var4 = v97;
  *&a3[4].var4 = v66;
  *&a3[8].var4 = v67;
  *&a3[12].var4 = v68;
  *&a3[16].var4 = v92;
  *&a3[20].var4 = v90;
  *&a3[24].var4 = v88;
  *&a3[28].var4 = v76;
  *&a3[48].var4 = v81;
  *&a3[52].var4 = v80;
  *&a3[56].var4 = v84;
  *&a3[60].var4 = v77;
  v93 = v65;
  v94 = v66;
  v95 = v67;
  v96 = v68;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  do
  {
    *(&v97 + v64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*(&v93 + v64))), v90, *(&v93 + v64), 1), v88, *(&v93 + v64), 2), v76, *(&v93 + v64), 3);
    v64 += 16;
  }

  while (v64 != 64);
  v69 = v98;
  v70 = v99;
  v71 = v100;
  *&a3[32].var4 = v97;
  *&a3[36].var4 = v69;
  *&a3[40].var4 = v70;
  *&a3[44].var4 = v71;
  v69.f64[0] = x;
  v69.f64[1] = y;
  *&a3[64].var4 = vcvt_f32_f64(v69);
}

+ (NSString)mainShaderSource
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXGMetalRenderer.m" lineNumber:210 description:{@"Dynamic shader source is not currently supported, see rdar://78532560"}];

  abort();
}

+ (id)_loadAndPreprocessShaderSourceWithFilename:(id)a3 extension:(id)a4
{
  v7 = MEMORY[0x277CCA8D8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 bundleForClass:objc_opt_class()];
  v11 = [v10 URLForResource:v9 withExtension:v8];

  v34 = 0;
  v12 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v11 encoding:4 error:&v34];
  v13 = v34;
  v14 = [v12 mutableCopy];

  if (!v14)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PXGMetalRenderer.m" lineNumber:194 description:{@"Error:%@ loading file at path:%@", v13, v11}];
  }

  v33 = v13;
  v15 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^#include (.*)$" options:16 error:&v33];
  v16 = v33;

  v17 = [v14 length];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__PXGMetalRenderer__loadAndPreprocessShaderSourceWithFilename_extension___block_invoke;
  v26[3] = &unk_2782A94D0;
  v31 = a2;
  v32 = a1;
  v27 = v15;
  v28 = v16;
  v29 = v11;
  v18 = v14;
  v30 = v18;
  v19 = v11;
  v20 = v16;
  v21 = v15;
  [v18 enumerateSubstringsInRange:0 options:v17 usingBlock:{256, v26}];
  v22 = v30;
  v23 = v18;

  return v18;
}

void __73__PXGMetalRenderer__loadAndPreprocessShaderSourceWithFilename_extension___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [v7 length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PXGMetalRenderer__loadAndPreprocessShaderSourceWithFilename_extension___block_invoke_2;
  v11[3] = &unk_2782A94A8;
  v12 = v7;
  v16 = *(a1 + 64);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = a3;
  v18 = a4;
  v10 = v7;
  [v8 enumerateMatchesInString:v10 options:0 range:0 usingBlock:{v9, v11}];
}

void __73__PXGMetalRenderer__loadAndPreprocessShaderSourceWithFilename_extension___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 rangeAtIndex:1];
  v10 = [v3 substringWithRange:{v4, v5}];
  v6 = [v10 stringByDeletingPathExtension];
  v7 = [v10 pathExtension];
  v8 = [PXGMetalRenderer _loadAndPreprocessShaderSourceWithFilename:v6 extension:v7];

  if (!v8)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"PXGMetalRenderer.m" lineNumber:202 description:{@"Error:%@ including file at path:%@", *(a1 + 40), *(a1 + 48)}];
  }

  [*(a1 + 56) replaceCharactersInRange:*(a1 + 80) withString:{*(a1 + 88), v8}];
}

@end