@interface SUICEdgeLightMaskMetalLayer
+ (void)prewarm;
- (SUICEdgeLightMaskMetalLayer)init;
- (SUICEdgeLightMaskMetalLayer)initWithBaseEdgeLightLayer:(id)layer;
- (SUICEdgeLightMaskMetalLayer)initWithCommandQueue:(id)queue;
- (SUICEdgeLightMaskMetalLayer)initWithFullBorder:(BOOL)border;
- (SUICEdgeLightMaskMetalLayer)initWithScreen:(id)screen commandQueue:(id)queue;
- (id)_createRenderPipelineFromLibrary:(id)library archive:(id)archive vert:(id)vert frag:(id)frag;
- (void)_calculateCornerRadiusRatio;
- (void)_commonInitWithScreen:(id)screen commandQueue:(id)queue;
- (void)_drawFrame:(id)frame;
- (void)_invalidate;
- (void)_loadMetalPipelines;
- (void)_loadMetalState;
- (void)_startOffAnimation;
- (void)_updateCustomCornerRadius;
- (void)_updateForUIIdiom;
- (void)_updateMetalRatios:(CGSize)ratios;
- (void)_updateiPadLayout;
- (void)animateOffWithCompletion:(id)completion;
- (void)animateOnWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)dismissalBlur:(float)blur;
- (void)endReducedFramerateForPerformance;
- (void)setBounds:(CGRect)bounds;
- (void)setBurstOpacity:(float)_S0;
- (void)setBurstStartPosition:(unint64_t)position;
- (void)setBurstStartPositionCustom:(CGPoint)custom;
- (void)setFlamePosX:(float)_S0 posY:(float)_S1 radius:(float)_S2;
- (void)setPaused:(BOOL)paused;
- (void)setScreen:(id)screen;
- (void)startReducedFramerateForPerformance;
@end

@implementation SUICEdgeLightMaskMetalLayer

- (SUICEdgeLightMaskMetalLayer)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SUICEdgeLightMaskMetalLayer;
  v3 = [(CAMetalLayer *)&v10 init];
  v4 = v3;
  if (v3 == self)
  {
    baseLayer = v3->_baseLayer;
    v3->_baseLayer = 0;

    v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    dismissalBlurFilter = v4->_dismissalBlurFilter;
    v4->_dismissalBlurFilter = v6;

    [(CAFilter *)v4->_dismissalBlurFilter setName:@"blurFilter"];
    [(CAFilter *)v4->_dismissalBlurFilter setValue:&unk_1F43C73F8 forKeyPath:*MEMORY[0x1E6979BA8]];
    v11[0] = v4->_dismissalBlurFilter;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(SUICEdgeLightMaskMetalLayer *)v4 setFilters:v8];

    [(SUICEdgeLightMaskMetalLayer *)v4 _commonInitWithScreen:0 commandQueue:0];
  }

  return v4;
}

- (void)_loadMetalPipelines
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[SUICEdgeLightMaskMetalLayer _loadMetalPipelines]";
  v4 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_1C432B000, a2, OS_LOG_TYPE_ERROR, "%s Failed to create binary archive, error %@", &v2, 0x16u);
}

- (void)_loadMetalState
{
  renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
  renderPassDesc = self->_renderPassDesc;
  self->_renderPassDesc = renderPassDescriptor;

  colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDesc colorAttachments];
  v6 = [colorAttachments objectAtIndexedSubscript:0];

  [v6 setLoadAction:0];
  [v6 setStoreAction:1];
}

- (void)_updateForUIIdiom
{
  anon_e8 = self->_anon_e8;
  *&v2 = *self->_anon_e8;
  v23 = v2;
  *&self->_anon_e8[24] = COERCE_UNSIGNED_INT(1.0);
  self->_useRound2Pipeline = 0;
  *self->_buttonCenter = 0;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    *(anon_e8 + 12) = 16179;
  }

  idiom = self->_idiom;
  if (idiom == -1)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    idiom = [currentDevice userInterfaceIdiom];
  }

  if (idiom == 1)
  {
    [(SUICEdgeLightMaskMetalLayer *)self _updateiPadLayout];
    goto LABEL_33;
  }

  _D0 = 1.0 / self->_customFlameScale;
  __asm { FCVT            H0, D0 }

  *(anon_e8 + 10) = LOWORD(_D0);
  if (idiom == 3)
  {
    v12 = _os_feature_enabled_impl();
    v13 = 30.3786169;
    if (v12)
    {
      v13 = 51.409967;
    }

    screenScale = self->_screenScale;
    v15 = v13 * screenScale / self->_nativeScreenWidth;
    *(anon_e8 + 3) = v15;
    *(anon_e8 + 4) = -1044381696;
    _D0 = screenScale / self->_customFlameScale;
    __asm { FCVT            H0, D0 }

    *(anon_e8 + 10) = LOWORD(_D0);
    goto LABEL_32;
  }

  *self->_buttonCenter = 0xBEB333333F400000;
  v17 = vcge_f32(vdup_lane_s32(*&v23, 1), *&v23).u8[0];
  v18 = -24.0;
  if (v17)
  {
    v18 = -12.0;
  }

  *(anon_e8 + 4) = v18;
  v19 = MGGetProductType();
  if (v19 <= 2688879998)
  {
    if (v19 > 1260109172)
    {
      if (v19 == 1260109173 || v19 == 1434404433)
      {
        *self->_buttonCenter = 0xBEA3D70A3F400000;
        self->_useRound2Pipeline = 1;
      }

      goto LABEL_32;
    }

    if (v19 != 133314240)
    {
      if (v19 != 330877086)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_27:
    v21 = 0xBE851EB83F400000;
LABEL_29:
    *self->_buttonCenter = v21;
    v22 = -18.0;
    if (v17)
    {
      v22 = -9.0;
    }

    *(anon_e8 + 4) = v22;
    goto LABEL_32;
  }

  if (v19 <= 2940697644)
  {
    if (v19 != 2688879999)
    {
      v20 = 2795618603;
      goto LABEL_26;
    }

LABEL_28:
    v21 = 0xBEA8F5C33F400000;
    goto LABEL_29;
  }

  if (v19 == 2941181571)
  {
    goto LABEL_28;
  }

  v20 = 2940697645;
LABEL_26:
  if (v19 == v20)
  {
    goto LABEL_27;
  }

LABEL_32:
  [(SUICEdgeLightMaskMetalLayer *)self _calculateCornerRadiusRatio];
LABEL_33:

  [(SUICEdgeLightMaskMetalLayer *)self _updateCustomCornerRadius];
}

- (void)_calculateCornerRadiusRatio
{
  if (self->_customCornerRadius == 0.0)
  {
    screen = self->_screen;
    if (screen)
    {
      v5 = screen;
    }

    else
    {
      _carScreen = [MEMORY[0x1E69DCEB0] _carScreen];
      v7 = _carScreen;
      if (_carScreen)
      {
        mainScreen = _carScreen;
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      }

      v16 = mainScreen;

      v5 = v16;
    }

    anon_e8 = self->_anon_e8;
    v10 = 0.0;
    if (v5 && COERCE_FLOAT(*anon_e8) > 0.0)
    {
      LODWORD(v15) = *anon_e8;
      v17 = v5;
      if (([(UIScreen *)v5 _isCarScreen]& 1) != 0)
      {
        if (_os_feature_enabled_impl())
        {
          v11 = 22.5;
        }

        else
        {
          v11 = 13.5;
        }
      }

      else
      {
        traitCollection = [(UIScreen *)v17 traitCollection];
        [traitCollection displayCornerRadius];
        v11 = v13;
      }

      v14 = fmaxf(v11, 5.0);
      v10 = (v14 + v14) / v15;
      v5 = v17;
    }

    *(anon_e8 + 3) = v10;
  }
}

- (void)_updateCustomCornerRadius
{
  customCornerRadius = self->_customCornerRadius;
  if (customCornerRadius != 0.0)
  {
    *&self->_anon_e8[12] = customCornerRadius;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  [(SUICEdgeLightMaskMetalLayer *)self removeAllAnimations:stop];
  [(SUICEdgeLightMaskMetalLayer *)self _invalidate];
  offCompletion = self->_offCompletion;
  if (offCompletion)
  {
    offCompletion[2]();
    v6 = self->_offCompletion;
    self->_offCompletion = 0;
  }
}

- (void)setBurstStartPosition:(unint64_t)position
{
  self->_shouldBurst = 1;
  if (position > 3)
  {
    if (position > 5)
    {
      if (position != 6)
      {
        if (position == 7)
        {
          return;
        }

        goto LABEL_19;
      }

      __asm { FMOV            V0.2S, #0.75 }
    }

    else if (position == 4)
    {
      *&_D0 = 1069547520;
    }

    else
    {
      __asm { FMOV            V0.2S, #-0.75 }

      _D0 = -_D0;
    }
  }

  else if (position > 1)
  {
    if (position == 2)
    {
      _D0 = 0.125;
    }

    else
    {
      *&_D0 = 3217031168;
    }
  }

  else if (position)
  {
    if (position != 1)
    {
      goto LABEL_19;
    }

    _D0 = *self->_buttonCenter;
  }

  else
  {
    self->_shouldBurst = 0;
    _D0 = 0.0;
  }

  *self->_anon_d0 = _D0;
LABEL_19:
  self->_burstModeHasBeenSet = 1;
  self->_burstAnimationType = position;
  if (!self->_paused)
  {
    [(SUICEdgeLightMaskMetalLayer *)self animateOn];
  }
}

- (void)setBurstStartPositionCustom:(CGPoint)custom
{
  self->_shouldBurst = 1;
  y = custom.y;
  *self->_anon_d0 = vcvt_f32_f64(custom);
  self->_burstModeHasBeenSet = 1;
  self->_burstAnimationType = 7;
  if (!self->_paused)
  {
    [(SUICEdgeLightMaskMetalLayer *)self animateOn];
  }
}

- (void)_commonInitWithScreen:(id)screen commandQueue:(id)queue
{
  queueCopy = queue;
  screenCopy = screen;
  AFLogInitIfNeeded();
  v8 = MEMORY[0x1E698D0B0];
  v9 = os_signpost_id_generate(*MEMORY[0x1E698D0B0]);
  v10 = *v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C432B000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EdgeLightMaskLayerFirstFrame", &unk_1C43E3401, v29, 2u);
  }

  self->_firstFrameSignpost = v9;
  self->_firstFrame = 1;
  v12 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v12;

  if (!self->_device)
  {
    v14 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SUICEdgeLightMaskMetalLayer *)v14 _commonInitWithScreen:v15 commandQueue:v16, v17, v18, v19, v20, v21];
    }
  }

  v22 = [[SUICWEdgeLight alloc] initWithDelegate:self];
  wedgeLight = self->_wedgeLight;
  self->_wedgeLight = v22;

  newCommandQueue = queueCopy;
  if (!queueCopy)
  {
    newCommandQueue = [(MTLDevice *)self->_device newCommandQueue];
  }

  objc_storeStrong(&self->_commandQueue, newCommandQueue);
  if (!queueCopy)
  {
  }

  self->_animating = 0;
  self->_burstModeHasBeenSet = 0;
  self->_paused = 1;
  self->_customFlameScale = 1.0;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  self->_idiom = [currentDevice userInterfaceIdiom];

  *&self->_anon_e8[22] = 0;
  *&self->_anon_d0[20] = COERCE_UNSIGNED_INT(1.0);
  *&self->_anon_d0[12] = 22080;
  self->_volumeLinearPowerLevel = 0.0;
  self->_minPowerLevel = 0.0;
  [(CAMetalLayer *)self setName:@"EdgeLightMaskLayer"];
  [(SUICEdgeLightMaskMetalLayer *)self setOpaque:1];
  [(SUICEdgeLightMaskMetalLayer *)self setAllowsDisplayCompositing:0];
  [(CAMetalLayer *)self setDevice:self->_device];
  [(SUICEdgeLightMaskMetalLayer *)self _loadMetalPipelines];
  [(SUICEdgeLightMaskMetalLayer *)self _loadMetalState];
  baseLayer = self->_baseLayer;
  if (baseLayer)
  {
    [(SUICEdgeLightMaskMetalLayer *)baseLayer _getNoiseTexture];
  }

  else
  {
    [SUICIntelligentLightLayer createNoiseTextureWithDevice:self->_device commandQueue:self->_commandQueue];
  }
  v27 = ;
  noiseTexture = self->_noiseTexture;
  self->_noiseTexture = v27;

  [(SUICEdgeLightMaskMetalLayer *)self setScreen:screenCopy];
}

- (SUICEdgeLightMaskMetalLayer)initWithBaseEdgeLightLayer:(id)layer
{
  layerCopy = layer;
  v11.receiver = self;
  v11.super_class = SUICEdgeLightMaskMetalLayer;
  v6 = [(CAMetalLayer *)&v11 init];
  v7 = v6;
  if (v6 == self)
  {
    objc_storeStrong(&v6->_baseLayer, layer);
    _getScreen = [layerCopy _getScreen];
    _getCommandQueue = [layerCopy _getCommandQueue];
    [(SUICEdgeLightMaskMetalLayer *)v7 _commonInitWithScreen:_getScreen commandQueue:_getCommandQueue];
  }

  return v7;
}

- (SUICEdgeLightMaskMetalLayer)initWithScreen:(id)screen commandQueue:(id)queue
{
  screenCopy = screen;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = SUICEdgeLightMaskMetalLayer;
  v8 = [(CAMetalLayer *)&v12 init];
  v9 = v8;
  if (v8 == self)
  {
    baseLayer = v8->_baseLayer;
    v8->_baseLayer = 0;

    [(SUICEdgeLightMaskMetalLayer *)v9 _commonInitWithScreen:screenCopy commandQueue:queueCopy];
  }

  return v9;
}

- (SUICEdgeLightMaskMetalLayer)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SUICEdgeLightMaskMetalLayer;
  v5 = [(CAMetalLayer *)&v9 init];
  v6 = v5;
  if (v5 == self)
  {
    baseLayer = v5->_baseLayer;
    v5->_baseLayer = 0;

    [(SUICEdgeLightMaskMetalLayer *)v6 _commonInitWithScreen:0 commandQueue:queueCopy];
  }

  return v6;
}

- (SUICEdgeLightMaskMetalLayer)initWithFullBorder:(BOOL)border
{
  v8.receiver = self;
  v8.super_class = SUICEdgeLightMaskMetalLayer;
  v4 = [(CAMetalLayer *)&v8 init];
  v5 = v4;
  if (v4 == self)
  {
    baseLayer = v4->_baseLayer;
    v4->_baseLayer = 0;

    [(SUICEdgeLightMaskMetalLayer *)v5 _commonInitWithScreen:0 commandQueue:0];
  }

  return v5;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v4.receiver = self;
  v4.super_class = SUICEdgeLightMaskMetalLayer;
  [(CAMetalLayer *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v6.receiver = self;
  v6.super_class = SUICEdgeLightMaskMetalLayer;
  [(SUICEdgeLightMaskMetalLayer *)&v6 setBounds:bounds.origin.x, bounds.origin.y];
  if (width != 0.0 && height != 0.0)
  {
    [(SUICEdgeLightMaskMetalLayer *)self _updateMetalRatios:width, height];
  }
}

- (id)_createRenderPipelineFromLibrary:(id)library archive:(id)archive vert:(id)vert frag:(id)frag
{
  v42[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  archiveCopy = archive;
  vertCopy = vert;
  fragCopy = frag;
  v14 = objc_alloc_init(MEMORY[0x1E6974148]);
  v15 = [libraryCopy newFunctionWithName:vertCopy];
  [v14 setVertexFunction:v15];

  v16 = [libraryCopy newFunctionWithName:fragCopy];
  [v14 setFragmentFunction:v16];

  colorAttachments = [v14 colorAttachments];
  v18 = [colorAttachments objectAtIndexedSubscript:0];
  [v18 setPixelFormat:65];

  colorAttachments2 = [v14 colorAttachments];
  v20 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v20 setBlendingEnabled:0];

  if (archiveCopy)
  {
    v42[0] = archiveCopy;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v14 setBinaryArchives:v21];

    device = self->_device;
    v33 = 0;
    v23 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v14 options:4 reflection:0 error:&v33];
    v24 = v33;
    v25 = v24;
    if (v23 && !v24)
    {
      v26 = v23;
      goto LABEL_10;
    }

    v27 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[SUICEdgeLightMaskMetalLayer _createRenderPipelineFromLibrary:archive:vert:frag:]";
      v36 = 2112;
      v37 = vertCopy;
      v38 = 2112;
      v39 = fragCopy;
      v40 = 2112;
      v41 = v25;
      _os_log_error_impl(&dword_1C432B000, v27, OS_LOG_TYPE_ERROR, "%s Unable to load pipeline state from binary archive (v:%@ f:%@), error %@", buf, 0x2Au);
    }
  }

  else
  {
    v25 = 0;
    v23 = 0;
  }

  v28 = self->_device;
  v32 = v25;
  v29 = [(MTLDevice *)v28 newRenderPipelineStateWithDescriptor:v14 error:&v32];
  v30 = v32;

  if (!v29)
  {
    [SUICEdgeLightMaskMetalLayer _createRenderPipelineFromLibrary:vertCopy archive:fragCopy vert:v30 frag:?];
  }

  v26 = v29;

LABEL_10:

  return v26;
}

- (void)_updateMetalRatios:(CGSize)ratios
{
  *&ratios.width = ratios.width;
  height = ratios.height;
  v4 = 1.0;
  if (*&ratios.width != 0.0)
  {
    v4 = height / *&ratios.width;
  }

  *(&ratios.width + 1) = height;
  *self->_anon_e8 = ratios.width;
  *&self->_anon_e8[8] = v4;
  *&self->_anon_b0[8] = 0;
  LODWORD(v5) = 1056964608;
  HIDWORD(v6) = 1056964608;
  if (*&ratios.width >= height)
  {
    *(&v5 + 1) = (height / *&ratios.width) * 0.5;
    v7 = v5;
  }

  else
  {
    *&v6 = (*&ratios.width / height) * 0.5;
    v7 = v6;
  }

  *self->_anon_b0 = v7;
  [(SUICEdgeLightMaskMetalLayer *)self _updateForUIIdiom];
}

- (void)_drawFrame:(id)frame
{
  frameCopy = frame;
  if ([(CAMetalLayer *)self isDrawableAvailable])
  {
    nextDrawable = [(CAMetalLayer *)self nextDrawable];
    [(NSDate *)self->_burstStartDate timeIntervalSinceNow];
    v7 = v6;
    if (v7 <= 0.0)
    {
      if (v7 >= -10.0)
      {
        _S9 = -v7;
      }

      else
      {
        _S9 = 10.0;
      }

      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      if (commandBuffer)
      {
        [frameCopy targetTimestamp];
        v11 = v10;
        [frameCopy timestamp];
        *&v12 = v11 - *&v12;
        *&v12 = *&v12;
        if (self->_isInFluidDismissal)
        {
          fluidDismissalProgress = self->_fluidDismissalProgress;
        }

        else
        {
          fluidDismissalProgress = self->_volumeLinearPowerLevel;
          if (self->_minPowerLevel >= fluidDismissalProgress)
          {
            fluidDismissalProgress = self->_minPowerLevel;
          }
        }

        self->_physics.common.micPowerLevel = fluidDismissalProgress;
        v51 = v12;
        SUICLightPhysics_UpdatePhysics(&self->_physics, *&v12);
        if (nextDrawable)
        {
          texture = [nextDrawable texture];
          colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDesc colorAttachments];
          v24 = [colorAttachments objectAtIndexedSubscript:0];
          [v24 setTexture:texture];

          v25 = [commandBuffer renderCommandEncoderWithDescriptor:self->_renderPassDesc];
          value = self->_physics.volumeSpring.value;
          v27 = value;
          v29.i64[0] = 0xBC3439583BE56042;
          v28 = value * 0.1675 + 0.06;
          v29.f32[2] = v28;
          if (self->_physics.common.reduceMotion)
          {
            _S2 = self->_physics.onSpring.value;
            __asm { FCVT            H2, S2 }

            *&self->_anon_d0[20] = LOWORD(_S2);
            v29 = vmulq_f32(v29, vdupq_n_s32(0x3EA8F5C3u));
          }

          v35 = vmlaq_n_f32(*&self->_anon_b0[16], v29, *&v51);
          *&self->_anon_b0[16] = v35;
          if (v35.f32[0] > 1.0)
          {
            v29.f32[0] = v35.f32[0] + -1.0;
            HIDWORD(v36) = v35.i32[1];
            *&v36 = v35.f32[0] + -1.0;
            v29.i32[1] = v35.i32[1];
            v29.i32[2] = v35.i32[2];
            *&self->_anon_b0[24] = v35.i32[2];
            *&self->_anon_b0[16] = v36;
            v35 = v29;
          }

          if (v35.f32[1] < 0.0)
          {
            v37 = v35;
            v37.f32[1] = v35.f32[1] + 1.0;
            *&self->_anon_b0[16] = v37.i64[0];
            v37.i32[2] = v35.i32[2];
            *&self->_anon_b0[24] = v35.i32[2];
            v35 = v37;
          }

          if (v35.f32[2] > 1.0)
          {
            *&self->_anon_b0[24] = v35.f32[2] + -1.0;
            *&self->_anon_b0[16] = v35.i64[0];
          }

          _H2 = *&self->_anon_d0[18];
          __asm { FCVT            D2, H2 }

          _D1 = _D2 + ((value * value) * *&v51) * -0.1;
          __asm
          {
            FCVT            H1, D1
            FCVT            D2, H1
          }

          _D2 = _D2 + 6.28318531;
          __asm
          {
            FCVT            H2, D2
            FCMP            H1, #0
          }

          if (_NF)
          {
            _H1 = _H2;
          }

          *&self->_anon_d0[18] = _H1;
          __asm { FCVT            H1, S9 }

          *&self->_anon_d0[16] = _H1;
          _D0 = pow(v27, 0.3) * 0.9;
          __asm { FCVT            H0, D0 }

          *&self->_anon_d0[14] = _H0;
          if (self->_iPadReduceMotionBoost)
          {
            __asm { FCVT            D0, H0 }

            _D0 = _D0 * 0.6 + 0.4;
            __asm { FCVT            H0, D0 }

            *&self->_anon_d0[14] = LOWORD(_D0);
          }

          [v25 setLabel:{@"EdgeLight", v51}];
          if (self->_useRound2Pipeline)
          {
            v50 = &OBJC_IVAR___SUICEdgeLightMaskMetalLayer__renderPipeline2;
          }

          else
          {
            v50 = &OBJC_IVAR___SUICEdgeLightMaskMetalLayer__renderPipeline;
          }

          [v25 setRenderPipelineState:*(&self->super.super.super.isa + *v50)];
          [v25 setVertexBytes:self->_anon_b0 length:32 atIndex:0];
          [v25 setFragmentTexture:self->_noiseTexture atIndex:0];
          [v25 setFragmentBytes:self->_anon_d0 length:24 atIndex:0];
          [v25 setFragmentBytes:self->_anon_e8 length:32 atIndex:1];
          [v25 drawPrimitives:3 vertexStart:0 vertexCount:3];
          [v25 endEncoding];
          [commandBuffer presentDrawable:nextDrawable];
        }

        if (self->_firstFrame)
        {
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __42__SUICEdgeLightMaskMetalLayer__drawFrame___block_invoke;
          v52[3] = &unk_1E81E7DB8;
          v52[4] = self;
          [commandBuffer addCompletedHandler:v52];
          self->_firstFrame = 0;
        }

        [commandBuffer commit];
      }

      else
      {
        v14 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
        {
          [(SUICEdgeLightMaskMetalLayer *)v14 _drawFrame:v15, v16, v17, v18, v19, v20, v21];
        }
      }
    }
  }
}

void __42__SUICEdgeLightMaskMetalLayer__drawFrame___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 GPUStartTime];
  v5 = v4;
  [v3 GPUEndTime];
  v7 = v6;

  v8 = *MEMORY[0x1E698D0B0];
  v9 = v8;
  v10 = *(*(a1 + 32) + 704);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v14 = 134217984;
    v15 = v7 - v5;
    _os_signpost_emit_with_name_impl(&dword_1C432B000, v9, OS_SIGNPOST_INTERVAL_END, v10, "EdgeLightMaskLayerFirstFrame", "GPU time:%f", &v14, 0xCu);
  }

  v11 = *(*(a1 + 32) + 160);
  if (v11)
  {
    (*(v11 + 16))();
    v12 = *(a1 + 32);
    v13 = *(v12 + 160);
    *(v12 + 160) = 0;
  }
}

- (void)_updateiPadLayout
{
  v2 = vcge_f32(vdup_lane_s32(*self->_anon_e8, 1), *self->_anon_e8).u8[0];
  *self->_buttonCenter = 0xBF8666663F000000;
  v3 = -24.0;
  if (v2)
  {
    v3 = -12.0;
  }

  *&self->_anon_e8[16] = v3;
  _D0 = 2.72 / self->_customFlameScale;
  __asm { FCVT            H0, D0 }

  *&self->_anon_e8[20] = LOWORD(_D0);
  self->_iPadReduceMotionBoost = self->_physics.common.reduceMotion;
  [(SUICEdgeLightMaskMetalLayer *)self _calculateCornerRadiusRatio];
}

- (void)_invalidate
{
  baseLayer = self->_baseLayer;
  self->_baseLayer = 0;

  [(CADisplayLink *)self->_displayLink setPaused:1];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  noiseTexture = self->_noiseTexture;
  self->_noiseTexture = 0;
}

- (void)_startOffAnimation
{
  [(SUICEdgeLightMaskMetalLayer *)self setOpacity:0.0];
  reduceMotion = self->_physics.common.reduceMotion;
  v4 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  v5 = v4;
  if (reduceMotion)
  {
    v6 = &unk_1F43C74E8;
  }

  else
  {
    v6 = &unk_1F43C7518;
  }

  if (reduceMotion)
  {
    v7 = &unk_1F43C7500;
  }

  else
  {
    v7 = &unk_1F43C7530;
  }

  [v4 setValues:v6];
  [v5 setKeyTimes:v7];
  [v5 setDuration:0.35];
  v8 = objc_initWeak(&location, self);
  [v5 setDelegate:self];

  [(SUICEdgeLightMaskMetalLayer *)self addAnimation:v5 forKey:0];
  if (!reduceMotion)
  {
    v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale"];
    [v9 setDamping:-0.22];
    LODWORD(v10) = 1045220557;
    if (self->_isInFluidDismissal)
    {
      *&v10 = 0.4;
    }

    [v9 setSpeed:v10];
    [v9 setFromValue:&unk_1F43C7410];
    [v9 setToValue:&unk_1F43C7580];
    [(SUICEdgeLightMaskMetalLayer *)self addAnimation:v9 forKey:@"scale"];
  }

  objc_destroyWeak(&location);
}

+ (void)prewarm
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698D0A0];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "+[SUICEdgeLightMaskMetalLayer prewarm]";
    _os_log_impl(&dword_1C432B000, v3, OS_LOG_TYPE_DEFAULT, "%s #edgeLight Creating temporary mask layer for prewarming", &v16, 0xCu);
  }

  v4 = objc_opt_new();
  commandBuffer = [v4[12] commandBuffer];
  if (commandBuffer)
  {
    [v4[16] setRenderTargetWidth:1];
    [v4[16] setRenderTargetHeight:1];
    [v4[16] setDefaultRasterSampleCount:1];
    v6 = [commandBuffer renderCommandEncoderWithDescriptor:v4[16]];
    [v6 endEncoding];
    [commandBuffer commit];
    v7 = *v2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "+[SUICEdgeLightMaskMetalLayer prewarm]";
      _os_log_impl(&dword_1C432B000, v7, OS_LOG_TYPE_DEFAULT, "%s #edgeLight Cleanup of temp layer", &v16, 0xCu);
    }

    [v4 _invalidate];
  }

  else
  {
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      [(SUICEdgeLightMaskMetalLayer *)v8 prewarm:v9];
    }
  }
}

- (void)setScreen:(id)screen
{
  screenCopy = screen;
  displayLink = self->_displayLink;
  if (displayLink)
  {
    isPaused = [(CADisplayLink *)displayLink isPaused];
    [(CADisplayLink *)self->_displayLink setPaused:1];
    [(CADisplayLink *)self->_displayLink invalidate];
    v8 = self->_displayLink;
    self->_displayLink = 0;

    if (screenCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    isPaused = 1;
    if (screenCopy)
    {
LABEL_3:
      traitCollection = [screenCopy traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 3)
      {
        displayConfiguration = [screenCopy displayConfiguration];
        [displayConfiguration pixelSize];
        v13 = v12;
        [displayConfiguration bounds];
        self->_screenScale = v13 / v14;
      }

      else
      {
        [screenCopy scale];
        self->_screenScale = v28;
      }

      [screenCopy nativeBounds];
      self->_nativeScreenWidth = v29;
      objc_storeStrong(&self->_screen, screen);
      [(SUICEdgeLightMaskMetalLayer *)self _updateForUIIdiom];
      maximumFramesPerSecond = [screenCopy maximumFramesPerSecond];
      self->_framesPerSecondTarget = maximumFramesPerSecond;
      v31 = maximumFramesPerSecond;
      v32 = 60;
      v33 = 60.0;
      if (v31 <= 119)
      {
        if (v31 == 30)
        {
          v32 = maximumFramesPerSecond;
LABEL_23:
          if (v32 != self->_physics.common.physicsRate)
          {
            SUICLightPhysics_Init(&self->_physics, v32, 10);
          }

          self->_physics.common.maxPhysicsIterationsPerFrame = 10;
          v34 = [screenCopy displayLinkWithTarget:self->_wedgeLight selector:sel__drawFrame_];
          v35 = self->_displayLink;
          self->_displayLink = v34;

          v39 = CAFrameRateRangeMake(24.0, 90.0, self->_framesPerSecondTarget);
          [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v39.minimum, *&v39.maximum, *&v39.preferred];
          v36 = self->_displayLink;
          currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
          [(CADisplayLink *)v36 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

          [(CADisplayLink *)self->_displayLink setPaused:isPaused];
          goto LABEL_26;
        }

        if (v31 != 60)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 120 && v31 != 240 && v31 != 300)
      {
LABEL_17:
        if (maximumFramesPerSecond >= 24)
        {
          if (maximumFramesPerSecond < 0x5A)
          {
            v32 = 240;
            goto LABEL_23;
          }

          v32 = 90;
          v33 = 90.0;
        }

        else
        {
          v33 = 24.0;
          v32 = 240;
        }
      }

      self->_framesPerSecondTarget = v33;
      goto LABEL_23;
    }
  }

  v15 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SUICEdgeLightMaskMetalLayer *)v15 setScreen:v16, v17, v18, v19, v20, v21, v22];
  }

  SUICLightPhysics_Init(&self->_physics, 60, 10);
  v23 = [MEMORY[0x1E6979330] displayLinkWithTarget:self->_wedgeLight selector:sel__drawFrame_];
  v24 = self->_displayLink;
  self->_displayLink = v23;

  self->_screenScale = 2.0;
  [(SUICEdgeLightMaskMetalLayer *)self _updateForUIIdiom];
  self->_framesPerSecondTarget = 60.0;
  v38 = CAFrameRateRangeMake(24.0, 90.0, 60.0);
  [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v38.minimum, *&v38.maximum, *&v38.preferred];
  v25 = self->_displayLink;
  currentRunLoop2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CADisplayLink *)v25 addToRunLoop:currentRunLoop2 forMode:*MEMORY[0x1E695DA28]];

  [(CADisplayLink *)self->_displayLink setPaused:isPaused];
  screen = self->_screen;
  self->_screen = 0;

LABEL_26:
}

- (void)animateOnWithCompletion:(id)completion
{
  v4 = MEMORY[0x1C6937B00](completion, a2);
  onCompletion = self->_onCompletion;
  self->_onCompletion = v4;

  if (self->_burstModeHasBeenSet)
  {
    if (self->_physics.common.reduceMotion)
    {
      self->_shouldBurst = 0;
    }

    if (!self->_animating)
    {
      self->_animating = 1;
      self->_firstFrame = 1;
      v6 = -10.0;
      if (self->_shouldBurst)
      {
        v6 = 0.133328006;
        if (self->_burstAnimationType != 1)
        {
          v6 = 0.0;
        }
      }

      v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v6];
      burstStartDate = self->_burstStartDate;
      self->_burstStartDate = v7;
    }

    displayLink = self->_displayLink;

    [(CADisplayLink *)displayLink setPaused:0];
  }
}

- (void)animateOffWithCompletion:(id)completion
{
  v4 = MEMORY[0x1C6937B00](completion, a2);
  offCompletion = self->_offCompletion;
  self->_offCompletion = v4;

  [(SUICEdgeLightMaskMetalLayer *)self _startOffAnimation];
}

- (void)setPaused:(BOOL)paused
{
  paused = self->_paused;
  if (paused == paused)
  {
LABEL_4:
    if (paused)
    {
      return;
    }

    goto LABEL_5;
  }

  self->_paused = paused;
  if (paused)
  {
    [(SUICEdgeLightMaskMetalLayer *)self _startOffAnimation];
    paused = self->_paused;
    goto LABEL_4;
  }

LABEL_5:

  [(SUICEdgeLightMaskMetalLayer *)self animateOn];
}

- (void)setBurstOpacity:(float)_S0
{
  __asm { FCVT            H0, S0 }

  *&self->_anon_e8[22] = _H0;
}

- (void)setFlamePosX:(float)_S0 posY:(float)_S1 radius:(float)_S2
{
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
  }

  *(&_S0 + 1) = -_H1;
  *&self->_anon_d0[8] = _S0;
  __asm { FCVT            H0, S2 }

  *&self->_anon_d0[12] = _S0;
}

- (void)dismissalBlur:(float)blur
{
  v10[1] = *MEMORY[0x1E69E9840];
  self->_isInFluidDismissal = blur < 1.0;
  v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  dismissalBlurFilter = self->_dismissalBlurFilter;
  self->_dismissalBlurFilter = v5;

  [(CAFilter *)self->_dismissalBlurFilter setName:@"blurFilter"];
  v7 = self->_dismissalBlurFilter;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:(1.0 - blur) * 80.0];
  [(CAFilter *)v7 setValue:v8 forKeyPath:*MEMORY[0x1E6979BA8]];

  v10[0] = self->_dismissalBlurFilter;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(SUICEdgeLightMaskMetalLayer *)self setFilters:v9];

  self->_fluidDismissalProgress = blur;
}

- (void)startReducedFramerateForPerformance
{
  v5 = CAFrameRateRangeMake(24.0, 30.0, 30.0);
  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPreferredFrameRateRange:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

- (void)endReducedFramerateForPerformance
{
  v5 = CAFrameRateRangeMake(24.0, 90.0, self->_framesPerSecondTarget);
  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPreferredFrameRateRange:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

- (void)_createRenderPipelineFromLibrary:(uint64_t)a3 archive:vert:frag:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315906;
    v8 = "[SUICEdgeLightMaskMetalLayer _createRenderPipelineFromLibrary:archive:vert:frag:]";
    v9 = 2112;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    v13 = 2112;
    v14 = a3;
    _os_log_error_impl(&dword_1C432B000, v6, OS_LOG_TYPE_ERROR, "%s Failed to create Siri Intelligent Light pipeline state (v:%@ f:%@), error %@", &v7, 0x2Au);
  }

  __assert_rtn("[SUICEdgeLightMaskMetalLayer _createRenderPipelineFromLibrary:archive:vert:frag:]", "SUICEdgeLightMaskMetalLayer.m", 358, "0");
}

@end