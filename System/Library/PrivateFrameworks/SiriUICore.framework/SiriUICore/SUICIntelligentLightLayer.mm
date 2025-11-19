@interface SUICIntelligentLightLayer
+ (id)createNoiseTextureWithDevice:(id)a3 commandQueue:(id)a4;
+ (void)prewarm;
- (SUICIntelligentLightLayer)init;
- (SUICIntelligentLightLayer)initWithLayer:(id)a3;
- (SUICIntelligentLightLayer)initWithScreen:(id)a3 commandQueue:(id)a4;
- (void)_commonInitWithScreen:(id)a3 commandQueue:(id)a4;
- (void)_drawFrame:(id)a3;
- (void)_loadMetalPipelines;
- (void)_loadMetalState;
- (void)_updateMetalRatios:(CGSize)a3;
- (void)_updateScreen:(id)a3;
- (void)endReducedFramerateForPerformance;
- (void)invalidate;
- (void)setBounds:(CGRect)a3;
- (void)setColorPalette:(unint64_t)a3;
- (void)setIsQuicktationPill:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)setScreen:(id)a3;
- (void)startReducedFramerateForPerformance;
- (void)transitionToNextBuddyStep;
- (void)updateVolumeInputdB:(float)a3;
@end

@implementation SUICIntelligentLightLayer

- (void)endReducedFramerateForPerformance
{
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SUICIntelligentLightLayer *)v2 endReducedFramerateForPerformance:v3];
  }
}

- (void)startReducedFramerateForPerformance
{
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SUICIntelligentLightLayer *)v2 startReducedFramerateForPerformance:v3];
  }
}

- (void)_loadMetalPipelines
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1C432B000, v0, OS_LOG_TYPE_ERROR, "%s Failed to create Siri Intelligent Light pipeline state, error %@", v1, 0x16u);
}

- (void)_loadMetalState
{
  v3 = [MEMORY[0x1E6974128] renderPassDescriptor];
  [(SUICIntelligentLightLayer *)self setRenderPassDesc:v3];

  v4 = [(SUICIntelligentLightLayer *)self renderPassDesc];
  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];

  [v6 setLoadAction:0];
  [v6 setStoreAction:1];
}

- (void)_commonInitWithScreen:(id)a3 commandQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  AFLogInitIfNeeded();
  v8 = MEMORY[0x1E698D0B0];
  v9 = os_signpost_id_generate(*MEMORY[0x1E698D0B0]);
  v10 = *v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C432B000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "IntelligentLightLayerFirstFrame", &unk_1C43E3401, v23, 2u);
  }

  self->_firstFrameSignpost = v9;
  v12 = MTLCreateSystemDefaultDevice();
  if (v12)
  {
    [(CAMetalLayer *)self setDevice:v12];
    v13 = v7;
    if (!v7)
    {
      v13 = [v12 newCommandQueue];
    }

    objc_storeStrong(&self->_commandQueue, v13);
    if (!v7)
    {
    }

    v14 = [MEMORY[0x1E69DC938] currentDevice];
    self->_idiom = [v14 userInterfaceIdiom];

    self->_volumeLinearPowerLevel = 0.0;
    self->_minPowerLevel = 0.0;
    *self->_anon_230 = vcvts_n_f32_s32(rand(), 0x1FuLL);
    *&self->_anon_230[4] = vcvts_n_f32_s32(rand(), 0x1FuLL);
    *&self->_anon_230[8] = vcvts_n_f32_s32(rand(), 0x1FuLL);
    [(SUICIntelligentLightLayer *)self setOpaque:1];
    [(SUICIntelligentLightLayer *)self setAllowsDisplayCompositing:0];
    [(SUICIntelligentLightLayer *)self setContentsDither:0];
    self->_colorPalette = 101;
    [(SUICIntelligentLightLayer *)self _loadMetalPipelines];
    [(SUICIntelligentLightLayer *)self _loadMetalState];
    self->_physics.common.physicsRate = 0;
    self->_physics.zoning = 0;
    self->_physics.slowAudioReactivity = 1;
    if (self->_idiom == 1)
    {
      self->_physics.zoning = 1;
    }

    [(SUICIntelligentLightLayer *)self _updateScreen:v6];
    self->_firstFrame = 1;
  }

  else
  {
    v15 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SUICIntelligentLightLayer *)v15 _commonInitWithScreen:v16 commandQueue:v17, v18, v19, v20, v21, v22];
    }
  }
}

- (SUICIntelligentLightLayer)initWithLayer:(id)a3
{
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SUICIntelligentLightLayer *)v4 initWithLayer:v5, v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (SUICIntelligentLightLayer)initWithScreen:(id)a3 commandQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SUICIntelligentLightLayer;
  v8 = [(CAMetalLayer *)&v12 init];
  v9 = v8;
  if (!v8 || ([(SUICIntelligentLightLayer *)v8 _commonInitWithScreen:v6 commandQueue:v7], [(CAMetalLayer *)v9 device], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v10 = v9;
  }

  return v10;
}

- (SUICIntelligentLightLayer)init
{
  v6.receiver = self;
  v6.super_class = SUICIntelligentLightLayer;
  v2 = [(CAMetalLayer *)&v6 init];
  v3 = v2;
  if (!v2 || ([(SUICIntelligentLightLayer *)v2 _commonInitWithScreen:0 commandQueue:0], [(CAMetalLayer *)v3 device], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v4 = v3;
  }

  return v4;
}

+ (void)prewarm
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698D0A0];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "+[SUICIntelligentLightLayer prewarm]";
    _os_log_impl(&dword_1C432B000, v3, OS_LOG_TYPE_DEFAULT, "%s #edgeLight Creating temporary light layer for prewarming", &v21, 0xCu);
  }

  v4 = objc_opt_new();
  [v4 setColorPalette:500];
  v5 = [v4 commandQueue];
  v6 = [v5 commandBuffer];

  if (v6)
  {
    v7 = [v4 renderPassDesc];
    [v7 setRenderTargetWidth:1];

    v8 = [v4 renderPassDesc];
    [v8 setRenderTargetHeight:1];

    v9 = [v4 renderPassDesc];
    [v9 setDefaultRasterSampleCount:1];

    v10 = [v4 renderPassDesc];
    v11 = [v6 renderCommandEncoderWithDescriptor:v10];

    [v11 endEncoding];
    [v6 commit];
    v12 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "+[SUICIntelligentLightLayer prewarm]";
      _os_log_impl(&dword_1C432B000, v12, OS_LOG_TYPE_DEFAULT, "%s #edgeLight Cleanup of temp layer", &v21, 0xCu);
    }

    [v4 invalidate];
  }

  else
  {
    v13 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      [(SUICIntelligentLightLayer *)v13 prewarm:v14];
    }
  }
}

- (void)setColorPalette:(unint64_t)a3
{
  if (self->_colorPalette != a3)
  {
    self->_colorPalette = a3;
    [(SUICIntelligentLightLayer *)self _loadMetalPipelines];
  }
}

- (void)setScreen:(id)a3
{
  if (self->_screen != a3)
  {
    [(SUICIntelligentLightLayer *)self _updateScreen:?];
  }
}

- (void)_updateScreen:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  displayLink = self->_displayLink;
  if (displayLink)
  {
    v6 = [(CADisplayLink *)displayLink isPaused];
    [(CADisplayLink *)self->_displayLink setPaused:1];
    [(CADisplayLink *)self->_displayLink invalidate];
    v7 = self->_displayLink;
    self->_displayLink = 0;

    if (v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v45 = 136315138;
    v46 = "[SUICIntelligentLightLayer _updateScreen:]";
    _os_log_impl(&dword_1C432B000, v9, OS_LOG_TYPE_DEFAULT, "%s Siri Intelligent Light was set to a nil screen. Defaulting to backup values.", &v45, 0xCu);
  }

  v10 = [MEMORY[0x1E69DCEB0] _carScreen];
  if (v10 || ([MEMORY[0x1E69DCEB0] mainScreen], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v10;
LABEL_10:
    v11 = [(UIScreen *)v4 maximumFramesPerSecond];
    v12 = 25.0;
    v13 = 10;
    v14 = 25;
    v15 = 240;
    if (v11 > 89)
    {
      if (v11 > 119)
      {
        if (v11 == 120)
        {
          goto LABEL_13;
        }

        if (v11 != 225 && v11 != 135)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 == 90)
        {
          goto LABEL_13;
        }

        v17 = 25.0;
        if (v11 == 100)
        {
          goto LABEL_29;
        }

        if (v11 != 115)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v16 = v11 - 15;
      if ((v11 - 15) > 0x3C)
      {
        goto LABEL_37;
      }

      if (((1 << v16) & 0x300000008001) != 0)
      {
LABEL_13:
        v12 = 30.0;
        v13 = 2;
        v15 = 30;
        v17 = 30.0;
        v14 = 30;
LABEL_29:
        if (v15 != self->_physics.common.physicsRate)
        {
          SUICLightPhysics_Init(&self->_physics, v15, v13);
        }

        self->_physics.common.maxPhysicsIterationsPerFrame = v13;
        v18 = [(UIScreen *)v4 displayLinkWithTarget:self selector:sel__drawFrame_];
        v19 = self->_displayLink;
        self->_displayLink = v18;

        v20 = [(UIScreen *)v4 traitCollection];
        v21 = [v20 userInterfaceIdiom];

        if (v21 == 3)
        {
          v22 = [(UIScreen *)v4 displayConfiguration];
          [v22 pixelSize];
          v24 = v23;
          [v22 bounds];
          self->_screenScale = v24 / v25;
        }

        else
        {
          [(UIScreen *)v4 scale];
          self->_screenScale = v26;
        }

        v48 = CAFrameRateRangeMake(v17, v12, v14);
        [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v48.minimum, *&v48.maximum, *&v48.preferred];
        v27 = self->_displayLink;
        v28 = [MEMORY[0x1E695DFD0] currentRunLoop];
        [(CADisplayLink *)v27 addToRunLoop:v28 forMode:*MEMORY[0x1E695DA28]];

        [(CADisplayLink *)self->_displayLink setPaused:v6];
        if (self->_screen != v4)
        {
          objc_storeStrong(&self->_screen, v4);
          [(SUICIntelligentLightLayer *)self bounds];
          [(SUICIntelligentLightLayer *)self _updateMetalRatios:v29, v30];
        }

        goto LABEL_36;
      }

      v17 = 25.0;
      if (((1 << v16) & 0x1000000800000000) != 0)
      {
        goto LABEL_29;
      }

      if (v11 != 45)
      {
LABEL_37:
        v14 = 24;
        v17 = 24.0;
        v12 = 60.0;
        v15 = 240;
        if (v11 < 24 || !(v11 % 0x18uLL))
        {
          goto LABEL_29;
        }

        if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v11, 1) >= 0x888888888888889uLL)
        {
          v31 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * v11, 3);
          v32 = 30;
          if (v11 <= 60)
          {
            v32 = v11;
          }

          v13 = 10;
          v15 = 240;
          if (v31 >= 0x666666666666667)
          {
            v12 = 60.0;
          }

          else
          {
            v12 = 48.0;
          }

          if (v31 >= 0x666666666666667)
          {
            v17 = 24.0;
          }

          else
          {
            v17 = 30.0;
          }

          if (v31 >= 0x666666666666667)
          {
            v14 = v32;
          }

          else
          {
            v14 = 40;
          }

          goto LABEL_29;
        }

        goto LABEL_13;
      }
    }

    v15 = 90;
    if (-1527099483 * v11 >= 0x5B05B06)
    {
      v14 = 90;
    }

    else
    {
      v14 = 45;
    }

    v12 = v14;
    v13 = 2;
    v17 = 45.0;
    goto LABEL_29;
  }

  v33 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [(SUICIntelligentLightLayer *)v33 _updateScreen:v34, v35, v36, v37, v38, v39, v40];
  }

  SUICLightPhysics_Init(&self->_physics, 30, 1);
  v41 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__drawFrame_];
  v42 = self->_displayLink;
  self->_displayLink = v41;

  v49 = CAFrameRateRangeMake(30.0, 30.0, 30.0);
  [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v49.minimum, *&v49.maximum, *&v49.preferred];
  v43 = self->_displayLink;
  v44 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CADisplayLink *)v43 addToRunLoop:v44 forMode:*MEMORY[0x1E695DA28]];

  [(CADisplayLink *)self->_displayLink setPaused:v6];
  v4 = 0;
LABEL_36:
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUICIntelligentLightLayer *)self displayLink];
  [v5 setPaused:v3];

  archivePath = self->_archivePath;
  self->_archivePath = 0;
}

- (void)invalidate
{
  v3 = [(SUICIntelligentLightLayer *)self displayLink];
  [v3 setPaused:1];

  v4 = [(SUICIntelligentLightLayer *)self displayLink];
  [v4 invalidate];

  [(SUICIntelligentLightLayer *)self setDisplayLink:0];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = SUICIntelligentLightLayer;
  [(SUICIntelligentLightLayer *)&v9 setBounds:a3.origin.x, a3.origin.y];
  if (width != 0.0 && height != 0.0)
  {
    [(SUICIntelligentLightLayer *)self _updateMetalRatios:width, height];
    v6 = width >> 3;
    if (v6 <= 4)
    {
      v6 = 4;
    }

    v7 = v6;
    if (height >> 3 <= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = height >> 3;
    }

    [(CAMetalLayer *)self setDrawableSize:v7, v8];
  }
}

- (void)setIsQuicktationPill:(BOOL)a3
{
  self->_quicktationMode = a3;
  [(SUICIntelligentLightLayer *)self bounds];

  [(SUICIntelligentLightLayer *)self _updateMetalRatios:v4, v5];
}

- (void)updateVolumeInputdB:(float)a3
{
  if (self->_colorPalette != 104)
  {
    [SUICAudioPowerLevelLinearConverter linearValueForInputPowerLevel:?];
    self->_volumeLinearPowerLevel = v4;
  }
}

- (void)transitionToNextBuddyStep
{
  if (!self->_physics.common.reduceMotion)
  {
    self->_physics.isBuddy = 1;
    self->_physics.energySpring.value = 4.0;
  }
}

- (void)_updateMetalRatios:(CGSize)a3
{
  height = a3.height;
  v4 = vcvt_f32_f64(a3);
  screenScale = self->_screenScale;
  if (screenScale == 0.0)
  {
    self->_screenScale = 1.0;
    screenScale = 1.0;
  }

  v6 = 1.0 / screenScale;
  *&self->_anon_230[16] = vcvt_f32_f64(vmulq_n_f64(vmulq_f64(vcvtq_f64_f32(v4), vdupq_n_s64(0x3F56F0068DB8BAC7uLL)), v6));
  anon_40 = self->_anon_40;
  if (v4.f32[0] >= v4.f32[1])
  {
    v15 = v4.f32[1] / v4.f32[0];
    __asm { FMOV            V2.2S, #1.5 }

    *(&_D2 + 1) = v15 * 1.5;
    *anon_40 = _D2;
    if (!self->_quicktationMode)
    {
      return;
    }

    v17 = (1.0 - v15) * 0.4;
    LODWORD(v14) = 0;
    *(&v14 + 1) = v17;
  }

  else
  {
    v8 = v4.f32[0] / v4.f32[1];
    __asm { FMOV            V2.2S, #1.5 }

    *&_D2 = v8 * 1.5;
    *anon_40 = _D2;
    if (!self->_quicktationMode)
    {
      return;
    }

    HIDWORD(v14) = 0;
    *&v14 = (1.0 - v8) * 0.4;
  }

  *&self->_anon_40[8] = v14;
}

+ (id)createNoiseTextureWithDevice:(id)a3 commandQueue:(id)a4
{
  v5 = MEMORY[0x1E69741C0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setTextureType:7];
  [v8 setWidth:80];
  [v8 setHeight:80];
  [v8 setDepth:40];
  [v8 setMipmapLevelCount:1];
  [v8 setPixelFormat:10];
  [v8 setUsage:1];
  v9 = [v7 newTextureWithDescriptor:v8];
  [v8 setStorageMode:2];
  v10 = [v7 newTextureWithDescriptor:v8];

  [v10 setLabel:@"ilNoise"];
  memset(v15, 0, sizeof(v15));
  v16 = vdupq_n_s64(0x50uLL);
  v17 = 40;
  [v9 replaceRegion:v15 mipmapLevel:0 slice:0 withBytes:&precalcSUICILNoise3DTexture bytesPerRow:80 bytesPerImage:6400];
  v11 = [v6 commandBuffer];

  if (v11)
  {
    v12 = [v11 blitCommandEncoder];
    v13 = v12;
    if (v12)
    {
      [v12 copyFromTexture:v9 toTexture:v10];
      [v13 endEncoding];
    }

    [v11 commit];
    [v11 waitUntilCompleted];
  }

  return v10;
}

- (void)_drawFrame:(id)a3
{
  v4 = a3;
  if ([(CAMetalLayer *)self isDrawableAvailable])
  {
    v5 = [(CAMetalLayer *)self nextDrawable];
    v6 = [(SUICIntelligentLightLayer *)self commandQueue];
    v7 = [v6 commandBuffer];

    if (v7)
    {
      [v4 targetTimestamp];
      v9 = v8;
      [v4 timestamp];
      v11 = v9 - v10;
      *&v11 = v11;
      v41 = v11;
      if (self->_colorPalette <= 0x1F3)
      {
        minPowerLevel = self->_minPowerLevel;
        if (minPowerLevel < self->_volumeLinearPowerLevel)
        {
          minPowerLevel = self->_volumeLinearPowerLevel;
        }

        self->_physics.common.micPowerLevel = minPowerLevel;
        SUICLightPhysics_UpdatePhysics(&self->_physics, *&v41);
      }

      if (v5)
      {
        v13 = [v5 texture];
        v14 = [(SUICIntelligentLightLayer *)self renderPassDesc];
        v15 = [v14 colorAttachments];
        v16 = [v15 objectAtIndexedSubscript:0];
        [v16 setTexture:v13];

        v17 = [(SUICIntelligentLightLayer *)self renderPassDesc];
        v18 = [v7 renderCommandEncoderWithDescriptor:v17];

        [v18 setCullMode:0];
        v19 = [(SUICIntelligentLightLayer *)self renderPipeline];
        [v18 setRenderPipelineState:v19];

        if (self->_colorPalette < 0x1F4)
        {
          [v18 setVertexBytes:self->_anon_40 length:16 atIndex:0];
          v33 = *&self->_anon_1d0[16];
          *self->_anon_50 = *self->_anon_1d0;
          *&self->_anon_50[16] = v33;
          _Q0 = *&self->_anon_1d0[32];
          v35 = *&self->_anon_1d0[48];
          v36 = *&self->_anon_1d0[64];
          *&self->_anon_50[80] = *&self->_anon_1d0[80];
          *&self->_anon_50[48] = v35;
          *&self->_anon_50[64] = v36;
          *&self->_anon_50[32] = _Q0;
          *&_Q0 = self->_physics.volumeSpring.value;
          __asm { FCVT            H0, S0 }

          *&self->_anon_50[88] = _Q0;
          *&_Q0 = self->_physics.lightnessSpring.value;
          __asm { FCVT            H0, S0 }

          *&self->_anon_50[90] = _Q0;
          [v18 setFragmentBytes:? length:? atIndex:?];
        }

        else
        {
          anon_230 = self->_anon_230;
          v21.i32[3] = 0;
          v22 = vmlaq_n_f32(*self->_anon_230, xmmword_1C439C2B0, *&v41);
          *self->_anon_230 = v22;
          if (v22.f32[0] > 1.0)
          {
            v21.f32[0] = v22.f32[0] + -1.0;
            HIDWORD(v23) = v22.i32[1];
            *&v23 = v22.f32[0] + -1.0;
            v21.i32[1] = v22.i32[1];
            v21.i32[2] = v22.i32[2];
            *&self->_anon_230[8] = v22.i32[2];
            *anon_230 = v23;
            v22 = v21;
          }

          if (v22.f32[1] < 0.0)
          {
            v24 = v22;
            v24.f32[1] = v22.f32[1] + 1.0;
            *anon_230 = v24.i64[0];
            v24.i32[2] = v22.i32[2];
            *&self->_anon_230[8] = v22.i32[2];
            v22 = v24;
          }

          if (v22.f32[2] > 1.0)
          {
            *&self->_anon_230[8] = v22.f32[2] + -1.0;
            *anon_230 = v22.i64[0];
          }

          [v18 setVertexBytes:*&v41 length:? atIndex:?];
          [v18 setFragmentTexture:self->_noiseTexture atIndex:0];
        }

        [v18 drawPrimitives:3 vertexStart:0 vertexCount:{3, *&v41}];
        [v18 endEncoding];
        [v7 presentDrawable:v5];
      }

      if (self->_firstFrame)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __40__SUICIntelligentLightLayer__drawFrame___block_invoke;
        v42[3] = &unk_1E81E7DB8;
        v42[4] = self;
        [v7 addCompletedHandler:v42];
        self->_firstFrame = 0;
      }

      [v7 commit];
    }

    else
    {
      v25 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [(SUICIntelligentLightLayer *)v25 _drawFrame:v26, v27, v28, v29, v30, v31, v32];
      }
    }
  }
}

void __40__SUICIntelligentLightLayer__drawFrame___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 GPUStartTime];
  v5 = v4;
  [v3 GPUEndTime];
  v7 = v6;

  v8 = *MEMORY[0x1E698D0B0];
  v9 = v8;
  v10 = *(*(a1 + 32) + 624);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = 134217984;
    v12 = v7 - v5;
    _os_signpost_emit_with_name_impl(&dword_1C432B000, v9, OS_SIGNPOST_INTERVAL_END, v10, "IntelligentLightLayerFirstFrame", "GPU time:%f", &v11, 0xCu);
  }
}

@end