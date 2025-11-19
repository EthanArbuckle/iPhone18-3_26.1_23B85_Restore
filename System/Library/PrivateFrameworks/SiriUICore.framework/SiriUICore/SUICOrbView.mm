@interface SUICOrbView
- (SUICOrbView)initWithCoder:(id)a3;
- (SUICOrbView)initWithFrame:(CGRect)a3;
- (id)_from:(id)a3 getComputePipeline:(id)a4 err:(id *)a5;
- (id)_from:(id)a3 getRenderPipeline:(id)a4 err:(id *)a5;
- (void)_choosePhysicsRate:(int)a3;
- (void)_commonInitWithFrame:(CGRect)a3;
- (void)_createNoiseTexture;
- (void)_createSiriChipBuffer;
- (void)_createSmoothStepTexture;
- (void)_createSphereBuffer;
- (void)_didSetRenderModeFrom:(int64_t)a3 to:(int64_t)a4;
- (void)_drawSiriFrame:(id)a3;
- (void)_drawingVeryLastFrameLogic:(id)a3;
- (void)_drawingVeryLastFrameOffCompletion;
- (void)_initCommandQueue;
- (void)_initNoiseOffsets;
- (void)_initSprings;
- (void)_invalidateDisplayLink;
- (void)_loadAssets;
- (void)_loadMetalPipelines;
- (void)_loadMetalState;
- (void)_resetDisplayLinkFramerate;
- (void)_setMode:(int64_t)a3;
- (void)_setupSpring:(id *)a3 withType:(unint64_t)a4 initialValue:(float)a5;
- (void)_updateChipsSizesForOnOff;
- (void)_updateMetalTextureRasterSize:(CGSize)a3;
- (void)_updateRenderModeWithDelta:(float)a3;
- (void)_updateSiriGraphicsState:(double)a3;
- (void)_updateSiriPhysics:(float)a3;
- (void)animateToOffWithCompletion:(id)a3;
- (void)invalidate;
- (void)pauseAnimationAndReset;
- (void)prewarmOrb;
- (void)setBias:(float)a3;
- (void)setCurrentlyShownChannel:(int)a3;
- (void)setFrame:(CGRect)a3;
- (void)setNumberOfChips:(int)a3;
- (void)setPower:(float)a3;
- (void)setPowerLevel:(float)a3;
- (void)setScale:(float)a3;
@end

@implementation SUICOrbView

- (void)_setupSpring:(id *)a3 withType:(unint64_t)a4 initialValue:(float)a5
{
  v7 = 0.0;
  v8 = 0.0;
  if (a4 <= 3)
  {
    v7 = flt_1C435C230[a4];
    v8 = flt_1C435C240[a4];
  }

  if (a4 != 0 && self->_reduceMotion)
  {
    v7 = v7 * 0.5;
    v9 = v8 * 0.25;
  }

  else
  {
    v9 = v8;
  }

  framerateType = self->_framerateType;
  switch(framerateType)
  {
    case 2uLL:
      v9 = v9 * 0.222222222;
      v11 = 1.0 - v7;
      v12 = 1.0 - fabsf(sqrtf(v11));
      if (v11 == -INFINITY)
      {
        v7 = -INFINITY;
      }

      else
      {
        v7 = v12;
      }

      break;
    case 1uLL:
      v9 = v9 * 3.0;
      v7 = 1.0 - ((1.0 - v7) * (1.0 - v7));
      break;
    case 0uLL:
      v9 = v9 * 9.0;
      v7 = 1.0 - powf(1.0 - v7, 4.0);
      break;
  }

  a3->var0 = a5;
  a3->var1 = 0.0;
  a3->var2 = v9;
  a3->var3 = v7;
}

- (void)_initSprings
{
  self->_reduceMotion = UIAccessibilityIsReduceMotionEnabled();
  LODWORD(v3) = 1068121457;
  [(SUICOrbView *)self _setupSpring:&self->_bubbleSpring withType:1 initialValue:v3];
  [(SUICOrbView *)self _setupSpring:&self->_energySpring withType:2 initialValue:0.0];
  [(SUICOrbView *)self _setupSpring:&self->_volumeSpring withType:1 initialValue:0.0];
  LODWORD(v4) = 1.0;
  [(SUICOrbView *)self _setupSpring:&self->_chipsSpring withType:2 initialValue:v4];
  LODWORD(v5) = 1.0;
  [(SUICOrbView *)self _setupSpring:&self->_specularSpring withType:1 initialValue:v5];
  [(SUICOrbView *)self _setupSpring:&self->_thinkingSpring withType:3 initialValue:0.0];
  [(SUICOrbView *)self _setupSpring:&self->_speakingSpring withType:2 initialValue:0.0];
  [(SUICOrbView *)self _setupSpring:&self->_glowSpring withType:0 initialValue:0.0];
  [(SUICOrbView *)self _setupSpring:&self->_onSpring withType:!self->_reduceMotion initialValue:0.0];
  chipSpring = self->_chipSpring;
  v7 = 6;
  do
  {
    [(SUICOrbView *)self _setupSpring:chipSpring++ withType:0 initialValue:0.0];
    --v7;
  }

  while (v7);
}

- (void)_initNoiseOffsets
{
  v3 = 18;
  do
  {
    self->_chipRandomOffset[0] = (vcvts_n_f32_s32(rand(), 0x1FuLL) * 600.0) + -300.0;
    self = (self + 4);
    --v3;
  }

  while (v3);
}

- (void)_initCommandQueue
{
  if (!self->_commandQueue)
  {
    v3 = [(MTLDevice *)self->_device newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = v3;

    v5 = self->_commandQueue;

    [(MTLCommandQueue *)v5 setGPUPriority:4];
  }
}

- (SUICOrbView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUICOrbView;
  v3 = [(SUICOrbView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SUICOrbView *)v3 frame];
    [(SUICOrbView *)v4 _commonInitWithFrame:?];
  }

  return v4;
}

- (SUICOrbView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = SUICOrbView;
  v7 = [(SUICOrbView *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(SUICOrbView *)v7 _commonInitWithFrame:x, y, width, height];
  }

  return v8;
}

- (void)_commonInitWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  self->_framesPerSecond = 60;
  self->_oneOverFPS = 0.016667;
  self->_physicsRate = 0.016667;
  self->_maxPhysicsIterationsPerFrame = 1;
  self->_dynamicFramerate = 0;
  v6 = [(SUICOrbView *)self layer:a3.origin.x];
  metalLayer = self->_metalLayer;
  self->_metalLayer = v6;

  v8 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v8;

  if (self->_device)
  {
    v10 = [MEMORY[0x1E69DCEB0] _carScreen];
    v11 = v10;
    if (v10)
    {
      v32 = v10;
    }

    else
    {
      v20 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
      v21 = [v20 screen];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [MEMORY[0x1E69DCEB0] mainScreen];
      }

      v32 = v23;
    }

    [v32 scale];
    v25 = v24;
    self->_framesPerSecond = [v32 maximumFramesPerSecond];
    v26 = 1.0;
    if (v25 != 0.0)
    {
      v26 = v25;
    }

    v27 = v26;
    [(CAMetalLayer *)self->_metalLayer setContentsScale:v26];
    [(SUICOrbView *)self _choosePhysicsRate:self->_framesPerSecond];
    [(CAMetalLayer *)self->_metalLayer setDevice:self->_device];
    [(CAMetalLayer *)self->_metalLayer setPixelFormat:80];
    [(CAMetalLayer *)self->_metalLayer setFramebufferOnly:1];
    [(CAMetalLayer *)self->_metalLayer setPresentsWithTransaction:0];
    [(CAMetalLayer *)self->_metalLayer setDrawsAsynchronously:1];
    [(CAMetalLayer *)self->_metalLayer setOpaque:0];
    [(SUICOrbView *)self _initCommandQueue];
    [(SUICOrbView *)self _loadMetalPipelines];
    [(SUICOrbView *)self _loadMetalState];
    [(SUICOrbView *)self _loadAssets];
    [(SUICOrbView *)self _updateMetalTextureRasterSize:width * v27, height * v27];
    v28 = [v32 displayLinkWithTarget:self selector:sel__drawSiriFrame_];
    displayLink = self->_displayLink;
    self->_displayLink = v28;

    [(SUICOrbView *)self _resetDisplayLinkFramerate];
    v30 = self->_displayLink;
    v31 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v30 addToRunLoop:v31 forMode:*MEMORY[0x1E695DA28]];

    [(SUICOrbView *)self _setPaused:1];
    self->_currentlyShownChannel = 0;
    self->_numberOfChips = 6;
    self->_bias = 0.0;
    self->_scale = 0.0;
    self->_power = 0.0;
    [(SUICOrbView *)self _initSprings];
    [(SUICOrbView *)self _initNoiseOffsets];
    [(SUICOrbView *)self setSuppressTTSAnimations:1];
  }

  else
  {
    v12 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SUICOrbView *)v12 _commonInitWithFrame:v13, v14, v15, v16, v17, v18, v19];
    }
  }
}

- (void)_setMode:(int64_t)a3
{
  mode = self->_mode;
  if (mode != a3)
  {
    self->_mode = a3;
    if (a3 == 2 && mode == 1)
    {
      if (self->_delayUntilThinking > 0.0)
      {
        return;
      }

      self->_delayUntilThinking = 0.1;
      self->_renderMode = 3;
      mode = 1;
      a3 = 3;
    }

    else
    {
      self->_renderMode = a3;
      self->_delayUntilThinking = 0.0;
    }

    [(SUICOrbView *)self _didSetRenderModeFrom:mode to:a3];
  }
}

- (void)_updateRenderModeWithDelta:(float)a3
{
  if (self->_renderMode == 3 && self->_mode == 2)
  {
    v3 = self->_delayUntilThinking - a3;
    self->_delayUntilThinking = v3;
    if (v3 <= 0.0)
    {
      self->_delayUntilThinking = 0.0;
      self->_renderMode = 2;
      [(SUICOrbView *)self _didSetRenderModeFrom:2 to:2];
    }
  }

  else
  {
    self->_delayUntilThinking = 0.0;
  }
}

- (void)_didSetRenderModeFrom:(int64_t)a3 to:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 == 2)
  {
    self->_startingThinkingModeNow = 1;
    self->_powerLevel = 0.0;
    self->_fullyThinkingModeNow = 0;
LABEL_10:
    if (self->_offCompletion)
    {
      v7 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x1E696AD98];
        v9 = v7;
        v10 = [v8 numberWithInteger:a4];
        v12 = 136315394;
        v13 = "[SUICOrbView _didSetRenderModeFrom:to:]";
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_1C432B000, v9, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion nil-ing out because toMode == %@ completion", &v12, 0x16u);
      }

      offCompletion = self->_offCompletion;
      self->_offCompletion = 0;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    self->_powerLevel = 0.0;
  }

  if (a3 == 2 && self->_reduceThinkingModeFramerate)
  {
    [(SUICOrbView *)self _endReducedFramerateForPerf];
  }

  if (a4)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (!a3 && self->_device)
  {
    [(SUICOrbView *)self _setPaused:0];
    [(CAMetalLayer *)self->_metalLayer discardContents];
    [(SUICOrbView *)self _initCommandQueue];
    if (a4 == 1)
    {
      [*MEMORY[0x1E69DDA98] finishedIPTest:@"SiriBringupToFlamesListening"];
    }
  }
}

- (void)pauseAnimationAndReset
{
  v16 = *MEMORY[0x1E69E9840];
  [(SUICOrbView *)self _setPaused:1];
  [(SUICOrbView *)self _initSprings];
  [(SUICOrbView *)self _initNoiseOffsets];
  self->_startingThinkingModeNow = 0;
  self->_fullyThinkingModeNow = 0;
  self->_drawingVeryLastFrame = 0;
  self->_resetOnNextFrame = 1;
  self->_renderMode = 0;
  siriChipsTexture = self->_siriChipsTexture;
  self->_siriChipsTexture = 0;

  blurChipsTexture = self->_blurChipsTexture;
  self->_blurChipsTexture = 0;

  sphereMaskTexture = self->_sphereMaskTexture;
  self->_sphereMaskTexture = 0;

  blurMaskTexture = self->_blurMaskTexture;
  self->_blurMaskTexture = 0;

  v7 = [(MTLRenderPassDescriptor *)self->_siriChipRenderPassDesc colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 setResolveTexture:0];

  v9 = [(MTLRenderPassDescriptor *)self->_sphereMaskRenderPassDesc colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 setTexture:0];

  self->_reallocTextures = 1;
  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;

  [(CAMetalLayer *)self->_metalLayer removeBackBuffers];
  if (self->_offCompletion)
  {
    v12 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SUICOrbView pauseAnimationAndReset]";
      _os_log_impl(&dword_1C432B000, v12, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion nil-ing out completion", &v14, 0xCu);
    }

    offCompletion = self->_offCompletion;
    self->_offCompletion = 0;
  }
}

- (void)animateToOffWithCompletion:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SUICOrbView animateToOffWithCompletion:]";
    _os_log_impl(&dword_1C432B000, v5, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion setting completion", &v8, 0xCu);
  }

  v6 = MEMORY[0x1C6937B00](v4);
  offCompletion = self->_offCompletion;
  self->_offCompletion = v6;

  [(SUICOrbView *)self _setMode:0];
}

- (void)setPowerLevel:(float)a3
{
  renderMode = self->_renderMode;
  if (renderMode == 3)
  {
    v7 = [(SUICOrbView *)self suppressTTSAnimations];
    v6 = 0.0;
    if (!v7)
    {
      *&v6 = a3;
      [SUICAudioPowerLevelLinearConverter linearValueForOutputPowerLevel:v6];
    }
  }

  else
  {
    if (renderMode != 1)
    {
      return;
    }

    [SUICAudioPowerLevelLinearConverter linearValueForInputPowerLevel:*&a3];
  }

  self->_powerLevel = *&v6;
}

- (void)prewarmOrb
{
  v5 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v3 = [v5 renderCommandEncoderWithDescriptor:self->_siriChipRenderPassDesc];
  [v3 endEncoding];
  v4 = [v5 renderCommandEncoderWithDescriptor:self->_sphereMaskRenderPassDesc];

  [v4 endEncoding];
  [v5 commit];
}

- (id)_from:(id)a3 getRenderPipeline:(id)a4 err:(id *)a5
{
  v10 = 0;
  v6 = [a3 newRenderPipelineStateWithName:a4 options:0 reflection:0 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v7 = v7;
    *a5 = v7;
  }

  return v6;
}

- (id)_from:(id)a3 getComputePipeline:(id)a4 err:(id *)a5
{
  v10 = 0;
  v6 = [a3 newComputePipelineStateWithName:a4 options:0 reflection:0 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v7 = v7;
    *a5 = v7;
  }

  return v6;
}

- (void)_loadMetalPipelines
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2_0() label];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1C432B000, v4, v5, "%s Failed to create %@ pipeline state, error %@", v6, v7, v8, v9, 2u);
}

- (void)_loadMetalState
{
  v3 = [MEMORY[0x1E6974128] renderPassDescriptor];
  siriChipRenderPassDesc = self->_siriChipRenderPassDesc;
  self->_siriChipRenderPassDesc = v3;

  v5 = [(MTLRenderPassDescriptor *)self->_siriChipRenderPassDesc colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];

  [v6 setLoadAction:2];
  [v6 setStoreAction:2];
  [v6 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v7 = [MEMORY[0x1E6974128] renderPassDescriptor];
  sphereMaskRenderPassDesc = self->_sphereMaskRenderPassDesc;
  self->_sphereMaskRenderPassDesc = v7;

  v9 = [(MTLRenderPassDescriptor *)self->_sphereMaskRenderPassDesc colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  [v10 setLoadAction:2];
  [v10 setStoreAction:1];
  [v10 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v11 = [MEMORY[0x1E6974128] renderPassDescriptor];
  finalRenderPassDesc = self->_finalRenderPassDesc;
  self->_finalRenderPassDesc = v11;

  v13 = [(MTLRenderPassDescriptor *)self->_finalRenderPassDesc colorAttachments];
  v16 = [v13 objectAtIndexedSubscript:0];

  [v16 setLoadAction:2];
  [v16 setStoreAction:2];
  [v16 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v14 = [(MTLDevice *)self->_device newBufferWithLength:512 options:0];
  dynamicUniformBuffer = self->_dynamicUniformBuffer;
  self->_dynamicUniformBuffer = v14;

  [(MTLBuffer *)self->_dynamicUniformBuffer setLabel:@"Uniforms"];
}

- (void)_createSphereBuffer
{
  [(SUICOrbView *)self frame];
  v4 = (v3 + -100.0) / 924.0;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v5 = ((v4 * 32.0) + 32.0);
  v6 = (16 * v5 + 32) * (v5 + 1);
  self->_sphereIndexBufferOffet = v6;
  v7 = 6 * v5 * v5;
  self->_sphereNumIndexes = v7;
  v8 = [(MTLDevice *)self->_device newBufferWithLength:2 * v7 + v6 options:0];
  sphereGeom = self->_sphereGeom;
  self->_sphereGeom = v8;

  [(MTLBuffer *)self->_sphereGeom setLabel:@"sphere"];
  v10 = [(MTLBuffer *)self->_sphereGeom contents];
  if (v5 < 0)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 3.14159265 / v5;
  v15 = 0.0;
  do
  {
    v16 = __sincos_stret(v14 * v15);
    v17 = 0;
    cosval = v16.__cosval;
    v33 = cosval;
    v19 = v5 + 1;
    do
    {
      v20 = __sincos_stret(v14 * v17);
      *&v21 = v16.__sinval * v20.__cosval;
      v22 = v16.__sinval * v20.__sinval;
      *(&v21 + 1) = v33;
      *(&v21 + 2) = v22;
      *(v11 + 16 * v13++) = v21;
      v17 += 2;
      --v19;
    }

    while (v19);
    v15 = v15 + 1.0;
  }

  while (v12++ != v5);
  if (!v5)
  {
LABEL_17:
    v26 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v11 + v6;
    do
    {
      v28 = 0;
      ++v25;
      v29 = v24;
      do
      {
        ++v28;
        v30 = v5 + v29;
        *(v27 + 2 * v26) = v29;
        *(v27 + 2 * (v26 + 3)) = v29++;
        v31 = v30 + 1;
        v30 += 2;
        *(v27 + 2 * (v26 + 1)) = v30;
        *(v27 + 2 * (v26 + 2)) = v31;
        *(v27 + 2 * (v26 + 4)) = v29;
        v32 = v26 + 5;
        v26 += 6;
        *(v27 + 2 * v32) = v30;
      }

      while (v5 != v28);
      v24 += v5 + 1;
    }

    while (v25 != v5);
  }

  if (v26 != self->_sphereNumIndexes)
  {
    [SUICOrbView _createSphereBuffer];
  }
}

- (void)_createSiriChipBuffer
{
  self->_chipNumIndexes = 300;
  self->_chipIndexBufferOffset = 4848;
  v3 = [(MTLDevice *)self->_device newBufferWithLength:2 * self->_chipNumIndexes + 4848 options:0];
  siriChipGeom = self->_siriChipGeom;
  self->_siriChipGeom = v3;

  v5 = [(MTLBuffer *)self->_siriChipGeom contents];
  v6 = 0;
  *v5 = xmmword_1C435C1C0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v7 = (v5 + 88);
  do
  {
    v8 = v6 / 100.0 * 3.14159265 + v6 / 100.0 * 3.14159265;
    v13 = __sincosf_stret(v8);
    v14.f32[0] = v13.__sinval * v13.__cosval;
    *&v15 = v13.__sinval * -0.5;
    v7[-1] = v13;
    v16.i32[1] = 0;
    v16.f32[0] = v13.__sinval * -0.5;
    v16.i64[1] = COERCE_UNSIGNED_INT(v13.__sinval * v13.__cosval);
    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    *&v7[-5].__sinval = vmulq_f32(v16, v17);
    LOWORD(v7->__sinval) = COERCE_UNSIGNED_INT(1.0);
    ++v6;
    v7 += 6;
  }

  while (v6 != 100);
  v18 = 0;
  v19 = xmmword_1C435BBB0;
  *(v5 + 16) = xmmword_1C435BBB0;
  v20 = 64;
  do
  {
    *v19.i64 = _calculateChipNormal(v5, v18 + 2, v18, v19, *v17.i64, v14, v15, v9, v10, v11, v12);
    *(v5 + v20) = v19;
    ++v18;
    v20 += 48;
  }

  while (v18 != 99);
  *v21.i64 = _calculateChipNormal(v5, 1, 99, v19, *v17.i64, v14, v15, v9, v10, v11, v12);
  *(v5 + 4816) = v21;
  *&v29 = _calculateChipNormal(v5, 2, 100, v21, v22, v23, v24, v25, v26, v27, v28);
  *(v5 + 64) = v29;
  v30 = v5 + self->_chipIndexBufferOffset;
  chipNumIndexes = self->_chipNumIndexes;
  v32 = (chipNumIndexes - 1);
  if (chipNumIndexes >= 2)
  {
    v33 = 0;
    do
    {
      v34 = v33 - 2 * (v33 / 3);
      if (v33 == 3 * (v33 / 3))
      {
        LOWORD(v34) = 0;
      }

      *(v30 + 2 * v33++) = v34;
    }

    while (v32 != v33);
  }

  *(v30 + 2 * v32) = 1;
}

- (void)_createSmoothStepTexture
{
  v3 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v3 setTextureType:0];
  [v3 setPixelFormat:10];
  [v3 setWidth:16];
  [v3 setMipmapLevelCount:1];
  [v3 setUsage:1];
  [v3 setStorageMode:0];
  v4 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *v4 = xmmword_1C435C1D0;
  v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v3];
  [v5 setLabel:@"smooth step gradient"];
  memset(v7, 0, sizeof(v7));
  v8 = xmmword_1C435C1E0;
  v9 = 1;
  [v5 replaceRegion:v7 mipmapLevel:0 slice:0 withBytes:v4 bytesPerRow:16 bytesPerImage:16];
  free(v4);
  smoothStepTexture = self->_smoothStepTexture;
  self->_smoothStepTexture = v5;
}

- (void)_createNoiseTexture
{
  v3 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v3 setTextureType:7];
  [v3 setWidth:64];
  [v3 setHeight:64];
  [v3 setDepth:64];
  [v3 setMipmapLevelCount:1];
  [v3 setStorageMode:0];
  [v3 setPixelFormat:10];
  [v3 setUsage:1];
  v4 = [(MTLDevice *)self->_device newTextureWithDescriptor:v3];
  noiseTexture = self->_noiseTexture;
  self->_noiseTexture = v4;

  [(MTLTexture *)self->_noiseTexture setLabel:@"noise"];
  v6 = self->_noiseTexture;
  memset(v7, 0, sizeof(v7));
  v8 = vdupq_n_s64(0x40uLL);
  v9 = 64;
  [(MTLTexture *)v6 replaceRegion:v7 mipmapLevel:0 slice:0 withBytes:&precalcSUICOrbNoise3DTexture bytesPerRow:64 bytesPerImage:4096];
}

- (void)_loadAssets
{
  [(SUICOrbView *)self _createSphereBuffer];
  [(SUICOrbView *)self _createSiriChipBuffer];
  v3 = MEMORY[0x1E698D0A0];
  if (!self->_siriChipGeom || !self->_sphereGeom)
  {
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SUICOrbView *)v4 _loadAssets:v5];
    }
  }

  [(SUICOrbView *)self _createSmoothStepTexture];
  [(SUICOrbView *)self _createNoiseTexture];
  if (!self->_smoothStepTexture || !self->_noiseTexture)
  {
    v12 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [(SUICOrbView *)v12 _loadAssets:v13];
    }
  }
}

- (void)_updateChipsSizesForOnOff
{
  v34 = *MEMORY[0x1E69E9840];
  p_onSpring = &self->_onSpring;
  renderMode = self->_renderMode;
  v4 = 1.0;
  if (!renderMode)
  {
    v4 = 0.0;
  }

  springAmount = self->_onSpring.springAmount;
  v6 = (springAmount * v4);
  value = p_onSpring->value;
  v8 = v6 + p_onSpring->value * (1.0 - springAmount);
  v9 = v8 - p_onSpring->value;
  if (v9 != 0.0)
  {
    curVelocity = self->_onSpring.curVelocity;
    maxAcceleration = self->_onSpring.maxAcceleration;
    v12 = v9 - curVelocity;
    if ((v9 - curVelocity) <= maxAcceleration)
    {
      if (v12 >= -maxAcceleration)
      {
        v13 = curVelocity + v12;
      }

      else
      {
        v13 = curVelocity - maxAcceleration;
      }
    }

    else
    {
      v13 = curVelocity + maxAcceleration;
    }

    self->_onSpring.curVelocity = v13;
    if (v9 >= 0.0)
    {
      if (v13 <= v9)
      {
LABEL_14:
        value = value + v13;
        p_onSpring->value = value;
        goto LABEL_15;
      }
    }

    else if (v13 >= v9)
    {
      goto LABEL_14;
    }

    self->_onSpring.curVelocity = v9;
    v13 = v9;
    goto LABEL_14;
  }

LABEL_15:
  if (!renderMode)
  {
    v14 = 0.166666672;
LABEL_25:
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v19 = value;
    if (v14 < v19)
    {
      LODWORD(v31) = 1065353216;
      if (v14 + 0.166666667 < v19)
      {
        HIDWORD(v31) = 1065353216;
        if (v14 + 0.333333333 < v19)
        {
          LODWORD(v32) = 1065353216;
          if (v14 + 0.5 < v19)
          {
            HIDWORD(v32) = 1065353216;
            if (v14 + 0.666666667 < v19)
            {
              LODWORD(v33) = 1065353216;
              if (v14 + 0.833333333 < v19)
              {
                HIDWORD(v33) = 1065353216;
              }
            }
          }
        }
      }
    }

    v20 = 0;
    p_maxAcceleration = &self->_chipSpring[0].maxAcceleration;
    v22 = 0.0;
    while (1)
    {
      v23 = *(p_maxAcceleration - 2);
      v24 = (*(&v31 + v20) * p_maxAcceleration[1]) + v23 * (1.0 - p_maxAcceleration[1]);
      v25 = v24 - v23;
      if (v25 != 0.0)
      {
        break;
      }

LABEL_45:
      v22 = v22 + v23;
      v20 += 4;
      p_maxAcceleration += 4;
      if (v20 == 24)
      {
        self->_maxChipSize = self->_chipSpring[0].value;
        v30 = v22 * 0.166666667;
        self->_averageChipSize = v30;
        return;
      }
    }

    v26 = *(p_maxAcceleration - 1);
    v27 = *p_maxAcceleration;
    v28 = v25 - v26;
    if ((v25 - v26) <= *p_maxAcceleration)
    {
      if (v28 >= -v27)
      {
        v29 = v26 + v28;
      }

      else
      {
        v29 = v26 - v27;
      }
    }

    else
    {
      v29 = v26 + v27;
    }

    *(p_maxAcceleration - 1) = v29;
    if (v25 >= 0.0)
    {
      if (v29 <= v25)
      {
LABEL_44:
        v23 = v23 + v29;
        *(p_maxAcceleration - 2) = v23;
        goto LABEL_45;
      }
    }

    else if (v29 >= v25)
    {
      goto LABEL_44;
    }

    *(p_maxAcceleration - 1) = v25;
    v29 = v25;
    goto LABEL_44;
  }

  v14 = 0.0;
  if (self->_chipSpring[5].value <= 0.999)
  {
    goto LABEL_25;
  }

  v15 = &self->_chipSpring[1];
  v16 = xmmword_1C435C1F0;
  v17 = vdupq_n_s64(2uLL);
  v18 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v16)).u8[0])
    {
      v15[-1].value = 1.0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v16)).i32[1])
    {
      v15->value = 1.0;
    }

    v16 = vaddq_s64(v16, v17);
    v15 += 2;
    v18 -= 2;
  }

  while (v18);
  self->_maxChipSize = 1.0;
  self->_averageChipSize = 1.0;
}

- (void)_updateSiriPhysics:(float)a3
{
  self->_time = self->_time + a3;
  if (self->_renderMode != self->_mode)
  {
    [(SUICOrbView *)self _updateRenderModeWithDelta:*&a3];
  }

  [(SUICOrbView *)self _updateChipsSizesForOnOff];
  time = self->_time;
  reduceMotion = self->_reduceMotion;
  v7 = (time - self->_thinkingTimeStart) * 4.2 + 2.35619449;
  v8 = cosf(v7) * 0.5 + 0.5;
  if (reduceMotion)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = self->_powerLevel * self->_powerLevel;
  if (reduceMotion)
  {
    v12 = 1.33;
  }

  else
  {
    v11 = v10 * 0.42 + 1.33000004;
    v12 = v11;
  }

  renderMode = self->_renderMode;
  v14 = 1.0;
  if (renderMode > 1)
  {
    if (renderMode != 2)
    {
      if (renderMode == 3)
      {
        value = 1.0;
        v14 = 0.9;
        goto LABEL_32;
      }

      goto LABEL_16;
    }

    if (self->_startingThinkingModeNow)
    {
      if (self->_thinkingSpring.value < 0.025)
      {
        self->_thinkingTimeStart = time;
        v16 = (self->_time - time) * 4.2 + 2.35619449;
        v17 = cosf(v16) * 0.5 + 0.5;
        if (reduceMotion)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v17;
        }
      }

      self->_startingThinkingModeNow = 0;
    }

    else if (self->_reduceThinkingModeFramerate && !self->_fullyThinkingModeNow && self->_thinkingSpring.value > 0.85)
    {
      [(SUICOrbView *)self _startReducedFramerateForPerf];
      self->_fullyThinkingModeNow = 1;
    }

    value = v9 * 0.33 + 1.0;
    v14 = 0.2;
  }

  else
  {
    if (renderMode)
    {
      if (renderMode == 1)
      {
        value = v12;
        goto LABEL_32;
      }

LABEL_16:
      value = 0.0;
      goto LABEL_32;
    }

    value = 0.0;
    if (reduceMotion)
    {
      value = self->_bubbleSpring.value;
    }

    if (self->_maxChipSize < 0.25)
    {
      self->_drawingVeryLastFrame = 1;
      [(SUICOrbView *)self _initSprings];
      self->_bubbleSpring.value = 0.0;
      self->_resetOnNextFrame = 1;
    }
  }

LABEL_32:
  self->_sinTime = v9;
  if (self->_drawingVeryLastFrame)
  {
    goto LABEL_127;
  }

  v18 = self->_bubbleSpring.value;
  v19 = (value * self->_bubbleSpring.springAmount) + v18 * (1.0 - self->_bubbleSpring.springAmount);
  v20 = v19 - v18;
  if (v20 != 0.0)
  {
    curVelocity = self->_bubbleSpring.curVelocity;
    maxAcceleration = self->_bubbleSpring.maxAcceleration;
    v23 = v20 - curVelocity;
    if ((v20 - curVelocity) <= maxAcceleration)
    {
      if (v23 >= -maxAcceleration)
      {
        v24 = curVelocity + v23;
      }

      else
      {
        v24 = curVelocity - maxAcceleration;
      }
    }

    else
    {
      v24 = curVelocity + maxAcceleration;
    }

    self->_bubbleSpring.curVelocity = v24;
    if (v20 >= 0.0)
    {
      if (v24 <= v20)
      {
LABEL_44:
        self->_bubbleSpring.value = v18 + v24;
        goto LABEL_45;
      }
    }

    else if (v24 >= v20)
    {
      goto LABEL_44;
    }

    self->_bubbleSpring.curVelocity = v20;
    v24 = v20;
    goto LABEL_44;
  }

LABEL_45:
  p_energySpring = &self->_energySpring;
  v26 = self->_renderMode;
  if (v26 == 3)
  {
    v27 = v12;
  }

  else
  {
    v27 = value;
  }

  springAmount = self->_energySpring.springAmount;
  v29 = (springAmount * v27);
  v30 = p_energySpring->value;
  v31 = v29 + p_energySpring->value * (1.0 - springAmount);
  v32 = v31 - p_energySpring->value;
  if (v32 != 0.0)
  {
    v33 = self->_energySpring.curVelocity;
    v34 = self->_energySpring.maxAcceleration;
    v35 = v32 - v33;
    if ((v32 - v33) <= v34)
    {
      if (v35 >= -v34)
      {
        v36 = v33 + v35;
      }

      else
      {
        v36 = v33 - v34;
      }
    }

    else
    {
      v36 = v33 + v34;
    }

    self->_energySpring.curVelocity = v36;
    if (v32 >= 0.0)
    {
      if (v36 <= v32)
      {
LABEL_59:
        p_energySpring->value = v30 + v36;
        goto LABEL_60;
      }
    }

    else if (v36 >= v32)
    {
      goto LABEL_59;
    }

    self->_energySpring.curVelocity = v32;
    v36 = v32;
    goto LABEL_59;
  }

LABEL_60:
  v37 = self->_volumeSpring.value;
  v38 = (v10 * self->_volumeSpring.springAmount) + v37 * (1.0 - self->_volumeSpring.springAmount);
  v39 = v38 - v37;
  if (v39 == 0.0)
  {
    goto LABEL_72;
  }

  v40 = self->_volumeSpring.curVelocity;
  v41 = self->_volumeSpring.maxAcceleration;
  v42 = v39 - v40;
  if ((v39 - v40) <= v41)
  {
    if (v42 >= -v41)
    {
      v43 = v40 + v42;
    }

    else
    {
      v43 = v40 - v41;
    }
  }

  else
  {
    v43 = v40 + v41;
  }

  self->_volumeSpring.curVelocity = v43;
  if (v39 < 0.0)
  {
    if (v43 >= v39)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v43 > v39)
  {
LABEL_70:
    self->_volumeSpring.curVelocity = v39;
    v43 = v39;
  }

LABEL_71:
  self->_volumeSpring.value = v37 + v43;
LABEL_72:
  v44 = self->_chipsSpring.value;
  v45 = (v14 * self->_chipsSpring.springAmount) + v44 * (1.0 - self->_chipsSpring.springAmount);
  v46 = v45 - v44;
  if (v46 == 0.0)
  {
    goto LABEL_84;
  }

  v47 = self->_chipsSpring.curVelocity;
  v48 = self->_chipsSpring.maxAcceleration;
  v49 = v46 - v47;
  if ((v46 - v47) <= v48)
  {
    if (v49 >= -v48)
    {
      v50 = v47 + v49;
    }

    else
    {
      v50 = v47 - v48;
    }
  }

  else
  {
    v50 = v47 + v48;
  }

  self->_chipsSpring.curVelocity = v50;
  if (v46 < 0.0)
  {
    if (v50 >= v46)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (v50 > v46)
  {
LABEL_82:
    self->_chipsSpring.curVelocity = v46;
    v50 = v46;
  }

LABEL_83:
  self->_chipsSpring.value = v44 + v50;
LABEL_84:
  p_specularSpring = &self->_specularSpring;
  v52 = 1.0;
  if (v26 == 2)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 1.0;
  }

  v54 = p_specularSpring->value;
  v55 = (v53 * self->_specularSpring.springAmount) + p_specularSpring->value * (1.0 - self->_specularSpring.springAmount);
  v56 = v55 - p_specularSpring->value;
  if (v56 != 0.0)
  {
    v57 = self->_specularSpring.curVelocity;
    v58 = self->_specularSpring.maxAcceleration;
    v59 = v56 - v57;
    if ((v56 - v57) <= v58)
    {
      if (v59 >= -v58)
      {
        v60 = v57 + v59;
      }

      else
      {
        v60 = v57 - v58;
      }
    }

    else
    {
      v60 = v57 + v58;
    }

    self->_specularSpring.curVelocity = v60;
    if (v56 >= 0.0)
    {
      if (v60 <= v56)
      {
LABEL_98:
        p_specularSpring->value = v54 + v60;
        goto LABEL_99;
      }
    }

    else if (v60 >= v56)
    {
      goto LABEL_98;
    }

    self->_specularSpring.curVelocity = v56;
    v60 = v56;
    goto LABEL_98;
  }

LABEL_99:
  p_speakingSpring = &self->_speakingSpring;
  if (v26 != 3)
  {
    v52 = 0.0;
  }

  v62 = self->_speakingSpring.springAmount;
  v63 = (v52 * v62);
  v64 = p_speakingSpring->value;
  v65 = v63 + p_speakingSpring->value * (1.0 - v62);
  v66 = v65 - p_speakingSpring->value;
  if (v66 != 0.0)
  {
    v67 = self->_speakingSpring.curVelocity;
    v68 = self->_speakingSpring.maxAcceleration;
    v69 = v66 - v67;
    if ((v66 - v67) <= v68)
    {
      if (v69 >= -v68)
      {
        v70 = v67 + v69;
      }

      else
      {
        v70 = v67 - v68;
      }
    }

    else
    {
      v70 = v67 + v68;
    }

    self->_speakingSpring.curVelocity = v70;
    if (v66 >= 0.0)
    {
      if (v70 <= v66)
      {
LABEL_112:
        p_speakingSpring->value = v64 + v70;
        goto LABEL_113;
      }
    }

    else if (v70 >= v66)
    {
      goto LABEL_112;
    }

    self->_speakingSpring.curVelocity = v66;
    v70 = v66;
    goto LABEL_112;
  }

LABEL_113:
  p_thinkingSpring = &self->_thinkingSpring;
  v72 = 0.0;
  if (v26 == 2)
  {
    v72 = 1.0;
  }

  v73 = self->_thinkingSpring.springAmount;
  v74 = (v72 * v73);
  v75 = p_thinkingSpring->value;
  v76 = v74 + p_thinkingSpring->value * (1.0 - v73);
  v77 = v76 - p_thinkingSpring->value;
  if (v77 != 0.0)
  {
    v78 = self->_thinkingSpring.curVelocity;
    v79 = self->_thinkingSpring.maxAcceleration;
    v80 = v77 - v78;
    if ((v77 - v78) <= v79)
    {
      if (v80 >= -v79)
      {
        v81 = v78 + v80;
      }

      else
      {
        v81 = v78 - v79;
      }
    }

    else
    {
      v81 = v78 + v79;
    }

    self->_thinkingSpring.curVelocity = v81;
    if (v77 >= 0.0)
    {
      if (v81 <= v77)
      {
LABEL_126:
        p_thinkingSpring->value = v75 + v81;
        goto LABEL_127;
      }
    }

    else if (v81 >= v77)
    {
      goto LABEL_126;
    }

    self->_thinkingSpring.curVelocity = v77;
    v81 = v77;
    goto LABEL_126;
  }

LABEL_127:
  v82 = self->_bubbleSpring.value * 1.15;
  self->_bubbleDrawnSize = v82;
  v83 = self->_reduceMotion;
  if (!v83)
  {
    self->_bubbleDrawnSize = self->_averageChipSize * v82;
  }

  v84 = fabsf(self->_energySpring.curVelocity);
  v85 = fabsf(self->_bubbleSpring.curVelocity);
  v86 = fabsf(self->_speakingSpring.curVelocity);
  v87 = fabsf(self->_thinkingSpring.curVelocity);
  v88 = v84 * 3.0;
  v89 = self->_energySpring.value;
  if (v89 <= 1.33)
  {
    v91 = a3;
  }

  else
  {
    v90 = (v89 + -1.33) * 10.0;
    v91 = a3;
    v88 = v88 + v90 * a3;
  }

  v92 = 1.0;
  if (!v83)
  {
    v92 = 10.0;
  }

  v93 = v88 + ((v92 * self->_volumeSpring.value) * a3);
  v94 = fmaxf(self->_onSpring.curVelocity, 0.0);
  averageChipSize = self->_averageChipSize;
  v96 = v93 + v94 * 20.0 * averageChipSize;
  v97 = v96 + v85 * 4.0 * averageChipSize;
  v98 = v97 + v86 * 4.0;
  v99 = v98 + v87 * 4.0;
  v100 = v91 * 25.0;
  if (v100 < v99)
  {
    v101 = v100;
    v99 = v101;
  }

  self->_rotationEnergy = v99;
  v102 = self->_volumeSpring.value + (((((v86 * 5.0) + (v84 * 10.0)) + (v85 * 5.0)) + (v94 * 20.0)) * self->_framerateEnergyModifier);
  if (v102 > 1.3)
  {
    v102 = 1.3;
  }

  v103 = self->_maxChipSize * v102;
  v104 = self->_glowSpring.value;
  v105 = (self->_glowSpring.springAmount * v103) + v104 * (1.0 - self->_glowSpring.springAmount);
  v106 = v105 - v104;
  if (v106 != 0.0)
  {
    v107 = self->_glowSpring.curVelocity;
    v108 = self->_glowSpring.maxAcceleration;
    v109 = v106 - v107;
    if ((v106 - v107) <= v108)
    {
      if (v109 >= -v108)
      {
        v110 = v107 + v109;
      }

      else
      {
        v110 = v107 - v108;
      }
    }

    else
    {
      v110 = v107 + v108;
    }

    self->_glowSpring.curVelocity = v110;
    if (v106 >= 0.0)
    {
      if (v110 <= v106)
      {
LABEL_149:
        self->_glowSpring.value = v104 + v110;
        goto LABEL_150;
      }
    }

    else if (v110 >= v106)
    {
      goto LABEL_149;
    }

    self->_glowSpring.curVelocity = v106;
    v110 = v106;
    goto LABEL_149;
  }

LABEL_150:
  self->_frameEnergy = v103;
}

- (void)_updateSiriGraphicsState:(double)a3
{
  uniformBufferAddress = self->_uniformBufferAddress;
  v5 = *&self->_anon_2a0[48];
  v7 = *self->_anon_2a0;
  v6 = *&self->_anon_2a0[16];
  uniformBufferAddress[2] = *&self->_anon_2a0[32];
  uniformBufferAddress[3] = v5;
  *uniformBufferAddress = v7;
  uniformBufferAddress[1] = v6;
  v8 = *&self->_anon_2a0[32];
  v9 = *&self->_anon_2a0[48];
  v11 = *self->_anon_2a0;
  v10 = *&self->_anon_2a0[16];
  *&self->_anon_2e0[32] = v8;
  *&self->_anon_2e0[48] = v9;
  *self->_anon_2e0 = v11;
  *&self->_anon_2e0[16] = v10;
  *&self->_anon_2e0[80] = self->_bubbleDrawnSize;
  if (self->_reduceMotion)
  {
    LODWORD(v8) = 961656599;
  }

  else
  {
    *&v8 = self->_frameEnergy * 0.002;
    *&v8 = *&v8;
  }

  v12 = a3;
  v13.i32[3] = 0;
  v14 = vaddq_f32(*&self->_anon_2e0[64], vmlaq_n_f32(vdupq_lane_s32(*&v8, 0), xmmword_1C435C200, v12));
  *&self->_anon_2e0[64] = v14;
  if (v14.f32[0] > 2.0)
  {
    v13.f32[0] = v14.f32[0] + -2.0;
    HIDWORD(v15) = v14.i32[1];
    *&v15 = v14.f32[0] + -2.0;
    v13.i32[1] = v14.i32[1];
    v13.i32[2] = v14.i32[2];
    *&self->_anon_2e0[72] = v14.i32[2];
    *&self->_anon_2e0[64] = v15;
    v14 = v13;
  }

  if (v14.f32[1] > 2.0)
  {
    v16 = v14;
    v16.f32[1] = v14.f32[1] + -2.0;
    *&self->_anon_2e0[64] = v16.i64[0];
    v16.i32[2] = v14.i32[2];
    *&self->_anon_2e0[72] = v14.i32[2];
    v14 = v16;
  }

  if (v14.f32[2] > 2.0)
  {
    *&self->_anon_2e0[72] = v14.f32[2] + -2.0;
    *&self->_anon_2e0[64] = v14.i64[0];
  }

  anon_2e0 = self->_anon_2e0;
  v17 = 0;
  v18 = a3 * 1.25663706;
  v19 = v18 + (self->_sinTime * ((v18 * 4.0) - v18));
  if (self->_reduceMotion)
  {
    v19 = v19 * 0.5;
  }

  v20 = self->_thinkRotation + v19;
  if (v20 > 6.28318531)
  {
    v21 = v20 + -6.28318531;
    v20 = v21;
  }

  _S3 = self->_thinkingSpring.value;
  __asm { FCVT            H3, S3 }

  *(uniformBufferAddress + 232) = LOWORD(_S3);
  self->_thinkRotation = v20;
  v27 = a3 * 0.7;
  v28 = v27 + self->_rotationEnergy * 0.5;
  v29 = (((v27 * 8.0) * self->_thinkingSpring.value) + ((1.0 - self->_thinkingSpring.value) * v28)) * ((1.0 - self->_speakingSpring.value) + (self->_speakingSpring.value * 0.5));
  if (!_ZF)
  {
    v30 = v29 * 0.4;
    v29 = v30;
  }

  self->_chipRotation = self->_chipRotation + v29;
  v71 = uniformBufferAddress;
  value = self->_thinkingSpring.value;
  v73 = (uniformBufferAddress + 4);
  v72 = vdupq_n_s32(0x41490FDBu);
  do
  {
    noise2();
    v80 = v32;
    noise2();
    v78 = v33;
    noise2();
    v35 = 1.0;
    if (!self->_reduceMotion)
    {
      v35 = self->_chipSpring[v17].value;
    }

    v36 = v80;
    v36.i32[1] = v78;
    v36.i32[2] = v34;
    v81 = vmulq_f32(v36, v72);
    v37 = __sincosf_stret(v81.f32[2]);
    v38 = __sincosf_stret(v81.f32[0]);
    v39.i32[0] = 0;
    v39.i32[1] = LODWORD(v38.__cosval);
    v39.i64[1] = LODWORD(v38.__sinval);
    v75 = v39;
    v39.i32[0] = 0;
    v39.f32[1] = -v38.__sinval;
    v39.i64[1] = LODWORD(v38.__cosval);
    v74 = v39;
    v40 = __sincosf_stret(v81.f32[1]);
    v41 = 0;
    HIDWORD(v42) = 0;
    *&v42 = LODWORD(v40.__cosval);
    *(&v42 + 2) = -v40.__sinval;
    LODWORD(v43) = 0;
    *(&v43 + 1) = v40.__cosval + (1.0 - v40.__cosval);
    *&v44 = LODWORD(v40.__sinval);
    *(&v44 + 1) = LODWORD(v40.__cosval);
    v83 = v42;
    v84 = v43;
    v85 = v44;
    v86 = xmmword_1C435BBE0;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    do
    {
      *(&v87 + v41) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(v38.__cosval + (1.0 - v38.__cosval)), COERCE_FLOAT(*(&v83 + v41))), v75, *(&v83 + v41), 1), v74, *(&v83 + v41), 2), xmmword_1C435BBE0, *(&v83 + v41), 3);
      v41 += 16;
    }

    while (v41 != 64);
    v45 = 0;
    v47 = COERCE_UNSIGNED_INT(-v37.__sinval);
    cosval_low = LODWORD(v37.__cosval);
    cosval_low.i32[1] = LODWORD(v37.__sinval);
    v47.i32[1] = LODWORD(v37.__cosval);
    v48.i64[0] = 0;
    v83 = v87;
    v84 = v88;
    v85 = v89;
    v86 = v90;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = 0uLL;
    v90 = 0uLL;
    do
    {
      v48.i64[1] = COERCE_UNSIGNED_INT(v37.__cosval + (1.0 - v37.__cosval));
      *(&v87 + v45) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(cosval_low, COERCE_FLOAT(*(&v83 + v45))), v47, *(&v83 + v45), 1), v48, *(&v83 + v45), 2), xmmword_1C435BBE0, *(&v83 + v45), 3);
      v45 += 16;
    }

    while (v45 != 64);
    if (value <= 0.0001)
    {
      v62 = 0;
      v63.i32[1] = 0;
      v63.i64[1] = 0;
      v63.f32[0] = (v35 * self->_chipsSpring.value) * self->_bubbleSpring.value;
      v64.i32[0] = 0;
      v64.i64[1] = 0;
      v64.f32[1] = v63.f32[0];
      v65.i64[0] = 0;
      v65.i32[3] = 0;
      v65.f32[2] = v63.f32[0];
      v83 = v87;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      v87 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      do
      {
        *(&v87 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v83 + v62))), v64, *(&v83 + v62), 1), v65, *(&v83 + v62), 2), xmmword_1C435BBE0, *(&v83 + v62), 3);
        v62 += 16;
      }

      while (v62 != 64);
    }

    else
    {
      v49 = (2 * v17) * 3.14159265 / 6.0 - self->_thinkRotation;
      v50 = self->_thinkingSpring.value;
      v79 = v88;
      v82 = v90;
      v76 = v87;
      v77 = v89;
      v51 = __sincosf_stret(v49);
      v52 = 0;
      v53.i32[1] = 0;
      v53.i64[1] = 0;
      v53.f32[0] = v35 * self->_chipsSpring.value;
      v54.i32[0] = 0;
      v54.i64[1] = 0;
      v54.f32[1] = v53.f32[0];
      v55.i64[0] = 0;
      v55.i32[3] = 0;
      v55.f32[2] = v53.f32[0];
      v56 = self->_bubbleSpring.value;
      v57.i32[2] = 0;
      v57.i32[3] = 1.0;
      v58.i32[0] = 0;
      v58.i32[3] = 0;
      *(v58.i64 + 4) = LODWORD(v56);
      v83 = v76;
      v84 = v79;
      v85 = v77;
      v86 = v82;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      do
      {
        *(&v87 + v52) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v83 + v52))), v54, *(&v83 + v52), 1), v55, *(&v83 + v52), 2), xmmword_1C435BBE0, *(&v83 + v52), 3);
        v52 += 16;
      }

      while (v52 != 64);
      v59 = 0;
      v83 = v87;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      v87 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      do
      {
        v57.f32[1] = (v50 * v51.__sinval) * 0.75;
        v57.f32[0] = (v50 * v51.__cosval) * 0.75;
        *(&v87 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C435BBD0, COERCE_FLOAT(*(&v83 + v59))), xmmword_1C435BBC0, *(&v83 + v59), 1), xmmword_1C435BBB0, *(&v83 + v59), 2), v57, *(&v83 + v59), 3);
        v59 += 16;
      }

      while (v59 != 64);
      v60 = 0;
      v61.i64[0] = 0;
      v61.i64[1] = LODWORD(v56);
      v83 = v87;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      v87 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      do
      {
        *(&v87 + v60) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v56), COERCE_FLOAT(*(&v83 + v60))), v58, *(&v83 + v60), 1), v61, *(&v83 + v60), 2), xmmword_1C435BBE0, *(&v83 + v60), 3);
        v60 += 16;
      }

      while (v60 != 64);
    }

    v66 = v88;
    v67 = v89;
    v68 = v90;
    v69 = &v73[64 * v17];
    *v69 = v87;
    *(v69 + 1) = v66;
    *(v69 + 2) = v67;
    *(v69 + 3) = v68;
    ++v17;
  }

  while (v17 != 6);
  v71[28] = *(anon_2e0 + 4);
}

- (void)_drawingVeryLastFrameLogic:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SUICOrbView *)self _setPaused:1];
  [(CAMetalLayer *)self->_metalLayer removeBackBuffers];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SUICOrbView _drawingVeryLastFrameLogic:]";
    _os_log_impl(&dword_1C432B000, v6, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion drawing  last frame", buf, 0xCu);
  }

  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__SUICOrbView__drawingVeryLastFrameLogic___block_invoke;
    v9[3] = &unk_1E81E8190;
    objc_copyWeak(&v10, &location);
    [v4 addCompletedHandler:v9];
    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SUICOrbView _drawingVeryLastFrameLogic:]";
      _os_log_impl(&dword_1C432B000, v7, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion calling completion async", buf, 0xCu);
    }

    v8 = objc_loadWeakRetained(&location);
    [v8 _drawingVeryLastFrameOffCompletion];
  }

  self->_drawingVeryLastFrame = 0;
  objc_destroyWeak(&location);
}

void __42__SUICOrbView__drawingVeryLastFrameLogic___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SUICOrbView _drawingVeryLastFrameLogic:]_block_invoke";
    _os_log_impl(&dword_1C432B000, v2, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion calling completion in command buffer completion", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _drawingVeryLastFrameOffCompletion];
}

- (void)_drawingVeryLastFrameOffCompletion
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SUICOrbView__drawingVeryLastFrameOffCompletion__block_invoke;
  block[3] = &unk_1E81E7B88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__SUICOrbView__drawingVeryLastFrameOffCompletion__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 424))
  {
    v2 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SUICOrbView _drawingVeryLastFrameOffCompletion]_block_invoke";
      _os_log_impl(&dword_1C432B000, v2, OS_LOG_TYPE_DEFAULT, "%s #orbCompletion completion exists", &v5, 0xCu);
    }

    (*(*(*(a1 + 32) + 424) + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 424);
    *(v3 + 424) = 0;
  }
}

- (void)_drawSiriFrame:(id)a3
{
  v4 = a3;
  if (self->_resetOnNextFrame)
  {
    self->_resetOnNextFrame = 0;
    [(SUICOrbView *)self _initSprings];
  }

  if (self->_reallocTextures)
  {
    v5 = *self->_setupRasterSize;
    v6 = HIDWORD(*self->_setupRasterSize);
    *self->_setupRasterSize = 0;
    [(SUICOrbView *)self _updateMetalTextureRasterSize:v5, v6];
    self->_reallocTextures = 0;
  }

  if (!self->_drawingVeryLastFrame)
  {
    [(SUICOrbView *)self _updateDynamicBufferState];
    if (self->_dynamicFramerate)
    {
      [v4 targetTimestamp];
      v9 = v8;
      [v4 timestamp];
      v11 = v9 - v10;
      maxPhysicsIterationsPerFrame = (v11 / self->_physicsRate + 0.5);
      if (self->_maxPhysicsIterationsPerFrame < maxPhysicsIterationsPerFrame)
      {
        maxPhysicsIterationsPerFrame = self->_maxPhysicsIterationsPerFrame;
      }

      if (maxPhysicsIterationsPerFrame <= 1)
      {
        maxPhysicsIterationsPerFrame = 1;
      }

      v13 = maxPhysicsIterationsPerFrame;
      v14 = v11 / maxPhysicsIterationsPerFrame;
      v15 = v14;
      v16 = 0.0;
      do
      {
        *&v14 = v15;
        [(SUICOrbView *)self _updateSiriPhysics:v14];
        if (self->_drawingVeryLastFrame)
        {
          break;
        }

        v16 = v16 + 1.0;
      }

      while (v16 < v13);
    }

    else
    {
      oneOverFPS = self->_oneOverFPS;
      *&v7 = oneOverFPS;
      [(SUICOrbView *)self _updateSiriPhysics:v7];
      v11 = oneOverFPS;
    }

    [(SUICOrbView *)self _updateSiriGraphicsState:v11];
  }

  if ([(CAMetalLayer *)self->_metalLayer isDrawableAvailable])
  {
    v18 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    if (v18)
    {
      v19 = v18;
      v44 = v4;
      [v18 setLabel:@"Siri Chips"];
      v20 = [v19 renderCommandEncoderWithDescriptor:self->_siriChipRenderPassDesc];
      [v20 setLabel:@"Chips"];
      [v20 setCullMode:1];
      [v20 setRenderPipelineState:self->_siriChipBackfacePipeline];
      [v20 setVertexBuffer:self->_siriChipGeom offset:0 atIndex:0];
      [v20 setVertexBuffer:self->_dynamicUniformBuffer offset:0 atIndex:1];
      [v20 setVertexTexture:self->_noiseTexture atIndex:0];
      [v20 setFragmentBytes:&_drawSiriFrame__chipConstants length:24 atIndex:0];
      [v20 setFragmentBytes:&self->_glowSpring length:4 atIndex:1];
      [v20 setFragmentTexture:self->_smoothStepTexture atIndex:0];
      [v20 drawIndexedPrimitives:3 indexCount:self->_chipNumIndexes indexType:0 indexBuffer:self->_siriChipGeom indexBufferOffset:self->_chipIndexBufferOffset instanceCount:self->_numberOfChips];
      [v20 setCullMode:2];
      [v20 setRenderPipelineState:self->_siriChipFrontfacePipeline];
      [v20 drawIndexedPrimitives:3 indexCount:self->_chipNumIndexes indexType:0 indexBuffer:self->_siriChipGeom indexBufferOffset:self->_chipIndexBufferOffset instanceCount:self->_numberOfChips];
      [v20 endEncoding];
      [v19 commit];
      [v19 waitUntilScheduled];
      v21 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      [v21 setLabel:@"Siri Blur"];
      mpsBlur = self->_mpsBlur;
      v50 = *&self->_mpsChipBlurOffset.x;
      z = self->_mpsChipBlurOffset.z;
      [(MPSImageGaussianBlur *)mpsBlur setOffset:&v50];
      [(MPSImageGaussianBlur *)self->_mpsBlur encodeToCommandBuffer:v21 sourceTexture:self->_siriChipsTexture destinationTexture:self->_blurChipsTexture];
      [v21 commit];
      [v21 waitUntilScheduled];
      v23 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      [v23 setLabel:@"Siri Mask"];
      v24 = [v23 renderCommandEncoderWithDescriptor:self->_sphereMaskRenderPassDesc];
      [v24 setLabel:@"Mask"];
      [v24 setRenderPipelineState:self->_sphereMaskPipeline];
      [v24 setVertexBuffer:self->_sphereGeom offset:0 atIndex:0];
      [v24 setVertexTexture:self->_noiseTexture atIndex:0];
      [v24 setVertexBytes:self->_anon_2e0 length:96 atIndex:2];
      [v24 setFrontFacingWinding:0];
      [v24 setFrontFacingWinding:1];
      [v24 setCullMode:2];
      [v24 drawIndexedPrimitives:3 indexCount:self->_sphereNumIndexes indexType:0 indexBuffer:self->_sphereGeom indexBufferOffset:self->_sphereIndexBufferOffet];
      [v24 endEncoding];
      v25 = self->_mpsBlur;
      v50 = 0uLL;
      z = 0;
      [(MPSImageGaussianBlur *)v25 setOffset:&v50];
      [(MPSImageGaussianBlur *)self->_mpsBlur encodeToCommandBuffer:v23 sourceTexture:self->_sphereMaskTexture destinationTexture:self->_blurMaskTexture];
      [v23 commit];
      v26 = [(CAMetalLayer *)self->_metalLayer nextDrawable];
      v27 = v26;
      if (v26)
      {
        v43 = v26;
        v28 = [v26 texture];
        v29 = [(MTLRenderPassDescriptor *)self->_finalRenderPassDesc colorAttachments];
        v30 = [v29 objectAtIndexedSubscript:0];
        [v30 setResolveTexture:v28];

        v31 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

        [v31 setLabel:@"Siri Composite"];
        v32 = [v31 renderCommandEncoderWithDescriptor:self->_finalRenderPassDesc];
        [v32 setLabel:@"Composite"];
        [v32 setVertexBytes:&self->_bubbleDrawnSize length:4 atIndex:0];
        *&v50 = (1.0 - self->_thinkingSpring.value) + (self->_thinkingSpring.value + self->_thinkingSpring.value);
        [v32 setVertexBytes:&v50 length:4 atIndex:1];
        averageChipSize = 1.0;
        if (self->_reduceMotion)
        {
          averageChipSize = self->_averageChipSize;
        }

        v49 = averageChipSize;
        [v32 setFragmentTexture:self->_blurChipsTexture atIndex:0];
        [v32 setRenderPipelineState:self->_siriShadowPipeline];
        [v32 setFragmentTexture:self->_blurMaskTexture atIndex:1];
        v48 = (((self->_thinkingSpring.value * 0.3) + ((1.0 - self->_thinkingSpring.value) * 0.6)) * self->_maxChipSize) * averageChipSize;
        [v32 setFragmentBytes:&v48 length:4 atIndex:0];
        [v32 drawPrimitives:4 vertexStart:0 vertexCount:48];
        [v32 setFrontFacingWinding:1];
        [v32 setCullMode:2];
        [v32 setRenderPipelineState:self->_siriCompositePipeline];
        [v32 setVertexBuffer:self->_sphereGeom offset:0 atIndex:0];
        [v32 setVertexTexture:self->_noiseTexture atIndex:0];
        v47 = (1.0 - self->_thinkingSpring.value) + (self->_thinkingSpring.value * 0.5);
        [v32 setFragmentBytes:&v47 length:4 atIndex:0];
        v46 = 1114636288;
        [v32 setFragmentBytes:&v46 length:4 atIndex:1];
        v34 = 1.0 - pow(1.0 - self->_averageChipSize, 4.0);
        if (self->_reduceMotion)
        {
          v34 = 1.0;
        }

        v45 = self->_specularSpring.value * v34;
        [v32 setFragmentBytes:&v45 length:4 atIndex:2];
        [v32 setFragmentBytes:&v49 length:4 atIndex:3];
        [v32 setVertexBytes:self->_anon_2e0 length:96 atIndex:2];
        [v32 drawIndexedPrimitives:3 indexCount:self->_sphereNumIndexes indexType:0 indexBuffer:self->_sphereGeom indexBufferOffset:self->_sphereIndexBufferOffet];
        [v32 setCullMode:0];
        [v32 setRenderPipelineState:self->_siriAddBlitPipeline];
        [v32 setFragmentTexture:self->_siriChipsTexture atIndex:0];
        [v32 drawPrimitives:3 vertexStart:0 vertexCount:3];
        [v32 endEncoding];
        v27 = v43;
        [v31 presentDrawable:v43];
        if (self->_drawingVeryLastFrame)
        {
          [(SUICOrbView *)self _drawingVeryLastFrameLogic:v31];
        }

        [v31 commit];
      }

      else
      {
        v31 = v23;
      }

      v4 = v44;
    }

    else
    {
      v35 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [(SUICOrbView *)v35 _drawSiriFrame:v36, v37, v38, v39, v40, v41, v42];
      }
    }
  }

  else if (self->_drawingVeryLastFrame)
  {
    [(SUICOrbView *)self _drawingVeryLastFrameLogic:0];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = SUICOrbView;
  [(SUICOrbView *)&v9 setFrame:a3.origin.x, a3.origin.y];
  if (self->_device)
  {
    v6 = [(SUICOrbView *)self layer];
    [v6 contentsScale];
    v8 = v7;

    [(SUICOrbView *)self _updateMetalTextureRasterSize:width * v8, height * v8];
  }
}

- (void)_updateMetalTextureRasterSize:(CGSize)a3
{
  v3.i32[0] = 0;
  width = a3.width;
  height = a3.height;
  v8.i32[0] = a3.width;
  v8.i32[1] = a3.height;
  v4.i32[0] = a3.height;
  v9 = COERCE_DOUBLE(vshl_u32(v8, vdup_lane_s32(vand_s8(vcgt_s32(v3, v4), 0x100000001), 0)));
  if (a3.height > 254)
  {
    v9 = *&v8;
  }

  v55 = v8;
  v56 = v9;
  if (height <= 254)
  {
    v10 = a3.width + a3.width;
  }

  else
  {
    v10 = a3.width;
  }

  if (height <= 254)
  {
    v11 = a3.height + a3.height;
  }

  else
  {
    v11 = a3.height;
  }

  [(CAMetalLayer *)self->_metalLayer setDrawableSize:v10, v11];
  if (*self->_setupRasterSize != width || HIDWORD(*self->_setupRasterSize) != height)
  {
    *self->_setupRasterSize = v55;
    v13 = SHIDWORD(v56) * 0.04;
    v14 = objc_alloc(MEMORY[0x1E69745C0]);
    *&v15 = v13;
    v16 = [v14 initWithDevice:self->_device sigma:v15];
    mpsBlur = self->_mpsBlur;
    self->_mpsBlur = v16;

    v18 = LODWORD(v56) + 3;
    if (SLODWORD(v56) >= 0)
    {
      v18 = LODWORD(v56);
    }

    v19 = v18 >> 2;
    v20 = HIDWORD(v56) + 3;
    if (v56 >= 0.0)
    {
      v20 = HIDWORD(v56);
    }

    self->_mpsChipBlurOffset.x = v19;
    self->_mpsChipBlurOffset.y = v20 >> 2;
    self->_mpsChipBlurOffset.z = 0;
    v21 = v11;
    v22 = v10 / v21;
    v23 = tanf(0.62832);
    LODWORD(v24) = 0;
    *(&v24 + 1) = 1.0 / v23;
    *self->_anon_2a0 = COERCE_UNSIGNED_INT((1.0 / v23) / v22);
    *&self->_anon_2a0[16] = v24;
    *&self->_anon_2a0[32] = xmmword_1C435C210;
    *&self->_anon_2a0[48] = xmmword_1C435C220;
    siriChipsTexture = self->_siriChipsTexture;
    self->_siriChipsTexture = 0;

    blurChipsTexture = self->_blurChipsTexture;
    self->_blurChipsTexture = 0;

    sphereMaskTexture = self->_sphereMaskTexture;
    self->_sphereMaskTexture = 0;

    blurMaskTexture = self->_blurMaskTexture;
    self->_blurMaskTexture = 0;

    v29 = objc_alloc_init(MEMORY[0x1E69741C0]);
    [v29 setWidth:SLODWORD(v56)];
    [v29 setHeight:SHIDWORD(v56)];
    [v29 setMipmapLevelCount:1];
    [v29 setStorageMode:3];
    siriChipsTextureMSAA = self->_siriChipsTextureMSAA;
    self->_siriChipsTextureMSAA = 0;

    [v29 setSampleCount:4];
    [v29 setPixelFormat:80];
    [v29 setTextureType:4];
    [v29 setUsage:4];
    v31 = [(MTLDevice *)self->_device newTextureWithDescriptor:v29];
    v32 = self->_siriChipsTextureMSAA;
    self->_siriChipsTextureMSAA = v31;

    [(MTLTexture *)self->_siriChipsTextureMSAA setLabel:@"chips MSAA"];
    compositeTextureMSAA = self->_compositeTextureMSAA;
    self->_compositeTextureMSAA = 0;

    [v29 setSampleCount:4];
    [v29 setWidth:v10];
    [v29 setHeight:v11];
    [v29 setPixelFormat:-[CAMetalLayer pixelFormat](self->_metalLayer, "pixelFormat")];
    [v29 setTextureType:4];
    [v29 setUsage:4];
    v34 = [(MTLDevice *)self->_device newTextureWithDescriptor:v29];
    v35 = self->_compositeTextureMSAA;
    self->_compositeTextureMSAA = v34;

    [(MTLTexture *)self->_compositeTextureMSAA setLabel:@"composite MSAA"];
    [v29 setWidth:SLODWORD(v56)];
    [v29 setHeight:SHIDWORD(v56)];
    [v29 setSampleCount:1];
    [v29 setTextureType:2];
    [v29 setStorageMode:2];
    [v29 setPixelFormat:10];
    [v29 setUsage:5];
    v36 = [(MTLDevice *)self->_device newTextureWithDescriptor:v29];
    v37 = self->_sphereMaskTexture;
    self->_sphereMaskTexture = v36;

    [(MTLTexture *)self->_sphereMaskTexture setLabel:@"platter"];
    [v29 setPixelFormat:80];
    v38 = [(MTLDevice *)self->_device newTextureWithDescriptor:v29];
    v39 = self->_siriChipsTexture;
    self->_siriChipsTexture = v38;

    [(MTLTexture *)self->_siriChipsTexture setLabel:@"chips"];
    [v29 setUsage:7];
    [v29 setPixelFormat:10];
    v40 = [(MTLDevice *)self->_device newTextureWithDescriptor:v29];
    v41 = self->_blurMaskTexture;
    self->_blurMaskTexture = v40;

    [(MTLTexture *)self->_blurMaskTexture setLabel:@"blurred platter"];
    [v29 setPixelFormat:80];
    [v29 setWidth:(LODWORD(v56) + (LODWORD(v56) >> 31)) >> 1];
    [v29 setHeight:(HIDWORD(v56) + (HIDWORD(v56) >> 31)) >> 1];
    v42 = [(MTLDevice *)self->_device newTextureWithDescriptor:v29];
    v43 = self->_blurChipsTexture;
    self->_blurChipsTexture = v42;

    [(MTLTexture *)self->_blurChipsTexture setLabel:@"blurred chips"];
    v44 = self->_siriChipsTextureMSAA;
    v45 = [(MTLRenderPassDescriptor *)self->_siriChipRenderPassDesc colorAttachments];
    v46 = [v45 objectAtIndexedSubscript:0];
    [v46 setTexture:v44];

    v47 = self->_siriChipsTexture;
    v48 = [(MTLRenderPassDescriptor *)self->_siriChipRenderPassDesc colorAttachments];
    v49 = [v48 objectAtIndexedSubscript:0];
    [v49 setResolveTexture:v47];

    v50 = self->_sphereMaskTexture;
    v51 = [(MTLRenderPassDescriptor *)self->_sphereMaskRenderPassDesc colorAttachments];
    v52 = [v51 objectAtIndexedSubscript:0];
    [v52 setTexture:v50];

    v53 = self->_compositeTextureMSAA;
    v57 = [(MTLRenderPassDescriptor *)self->_finalRenderPassDesc colorAttachments];
    v54 = [v57 objectAtIndexedSubscript:0];
    [v54 setTexture:v53];
  }
}

- (void)_choosePhysicsRate:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  self->_framesPerSecond = a3;
  v5 = *MEMORY[0x1E698D0A0];
  v6 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  if (a3 == 30)
  {
    if (v6)
    {
      v10 = 136315138;
      v11 = "[SUICOrbView _choosePhysicsRate:]";
      _os_log_impl(&dword_1C432B000, v5, OS_LOG_TYPE_DEFAULT, "%s #OrbView running 30 Hz physics", &v10, 0xCu);
    }

    self->_framerateType = 0;
    v7 = 0.033333;
    v8 = 0.2;
    goto LABEL_9;
  }

  if (a3 == 60)
  {
    if (v6)
    {
      v10 = 136315138;
      v11 = "[SUICOrbView _choosePhysicsRate:]";
      _os_log_impl(&dword_1C432B000, v5, OS_LOG_TYPE_DEFAULT, "%s #OrbView running 60 Hz physics", &v10, 0xCu);
    }

    self->_framerateType = 1;
    self->_maxPhysicsIterationsPerFrame = 2;
    v7 = 0.016667;
    v8 = 0.3;
LABEL_9:
    v9 = v7;
    goto LABEL_13;
  }

  if (v6)
  {
    v10 = 136315138;
    v11 = "[SUICOrbView _choosePhysicsRate:]";
    _os_log_impl(&dword_1C432B000, v5, OS_LOG_TYPE_DEFAULT, "%s #OrbView running dynamic (240 Hz) physics", &v10, 0xCu);
  }

  self->_framerateType = 2;
  self->_dynamicFramerate = 1;
  self->_maxPhysicsIterationsPerFrame = 10;
  v8 = 1.5;
  v9 = 0.0041667;
  v7 = 0.0083333;
LABEL_13:
  self->_framerateEnergyModifier = v8;
  self->_oneOverFPS = v7;
  self->_physicsRate = v9;
}

- (void)_resetDisplayLinkFramerate
{
  displayLink = self->_displayLink;
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);

  [(CADisplayLink *)displayLink setPreferredFrameRateRange:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SUICOrbView invalidate]";
    _os_log_impl(&dword_1C432B000, v4, OS_LOG_TYPE_DEFAULT, "%s #OrbView", &v9, 0xCu);
  }

  [(NSTimer *)self->_invalidateTimer invalidate];
  invalidateTimer = self->_invalidateTimer;
  self->_invalidateTimer = 0;

  if (self->_offCompletion)
  {
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SUICOrbView invalidate]";
      _os_log_impl(&dword_1C432B000, v6, OS_LOG_TYPE_DEFAULT, "%s #OrbView Delay displayLink invalidation since _offCompletion is not yet set to nil", &v9, 0xCu);
    }

    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__invalidateDisplayLink selector:0 userInfo:0 repeats:2.0];
    v8 = self->_invalidateTimer;
    self->_invalidateTimer = v7;
  }

  else
  {
    [(SUICOrbView *)self _invalidateDisplayLink];
  }
}

- (void)_invalidateDisplayLink
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SUICOrbView _invalidateDisplayLink]";
    _os_log_impl(&dword_1C432B000, v3, OS_LOG_TYPE_DEFAULT, "%s #OrbView", &v7, 0xCu);
  }

  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v5 = self->_displayLink;
    self->_displayLink = 0;
  }

  offCompletion = self->_offCompletion;
  self->_offCompletion = 0;
}

- (void)setNumberOfChips:(int)a3
{
  if (a3 >= 6)
  {
    v3 = 6;
  }

  else
  {
    v3 = a3;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (v3 != self->_numberOfChips)
  {
    self->_numberOfChips = v3;
  }
}

- (void)setCurrentlyShownChannel:(int)a3
{
  if ((a3 & 0x80000000) == 0 && self->_currentlyShownChannel != a3)
  {
    self->_currentlyShownChannel = a3;
  }
}

- (void)setBias:(float)a3
{
  if (a3 > 3.0)
  {
    a3 = 3.0;
  }

  v3 = fmaxf(a3, -1.0);
  if (v3 != self->_bias)
  {
    self->_bias = v3;
  }
}

- (void)setScale:(float)a3
{
  if (a3 > 3.0)
  {
    a3 = 3.0;
  }

  v3 = fmaxf(a3, -1.0);
  if (v3 != self->_scale)
  {
    self->_scale = v3;
  }
}

- (void)setPower:(float)a3
{
  if (a3 > 3.0)
  {
    a3 = 3.0;
  }

  v3 = fmaxf(a3, -1.0);
  if (v3 != self->_power)
  {
    self->_power = v3;
  }
}

@end