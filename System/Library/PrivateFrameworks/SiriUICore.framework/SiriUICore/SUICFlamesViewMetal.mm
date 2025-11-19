@interface SUICFlamesViewMetal
+ (BOOL)_supportsAdaptiveFramerate;
+ (id)_indexCache;
+ (void)prewarmShadersForScreen:(id)a3 activeFrame:(CGRect)a4 fidelity:(int64_t)a5;
+ (void)prewarmShadersForScreen:(id)a3 initialFrame:(CGRect)a4 activeFrame:(CGRect)a5 fidelity:(int64_t)a6 prewarmInBackground:(BOOL)a7;
+ (void)prewarmShadersForScreen:(id)a3 size:(CGSize)a4 fidelity:(int64_t)a5 prewarmInBackground:(BOOL)a6;
+ (void)setIndexCacheSize:(unint64_t)a3;
- (BOOL)_deviceNeeds2xFlamesWithCurrentScale:(double)a3;
- (BOOL)_initMetalAndSetupDisplayLink:(BOOL)a3;
- (BOOL)_loadPipelineLibraries;
- (BOOL)_resizeFromLayer:(id)a3;
- (BOOL)_setupVertexBuffer;
- (CGRect)activeFrame;
- (SUICFlamesViewMetal)initWithFrame:(CGRect)a3 screen:(id)a4 fidelity:(int64_t)a5;
- (SUICFlamesViewMetal)initWithFrame:(CGRect)a3 screenScale:(double)a4 fidelity:(int64_t)a5;
- (SUICFlamesViewProvidingDelegate)flamesDelegate;
- (double)_currentDisplayScale;
- (float)_currentMicPowerLevel;
- (float32x2_t)_predeterminedVertexPositionForAuraWithPolarVertex:(uint64_t)a1;
- (id)_from:(id)a3 getRenderPipeline:(id)a4 err:(id *)a5;
- (id)_lazy_commandQueue;
- (int)_generateIndicesForNumCircleShapes:(int)a3 withMaxSubdivisionLevel:(float)a4 startingWithNumSubdivisionLevel:(float)a5 forIndices:(unsigned int *)a6 atStartIndex:(int)a7 withFill:(BOOL)a8 withCullingForAura:(BOOL)a9 forVertices:(id *)a10;
- (void)_didSkipFrameUpdateWithReason:(id)a3 andCount:(unint64_t)a4;
- (void)_prewarmShaders;
- (void)_reduceMotionStatusChanged:(id)a3;
- (void)_setPreferredFramesPerSecond;
- (void)_setValuesForFidelity:(int64_t)a3;
- (void)_setupDisplayLink;
- (void)_tearDownDisplayLink;
- (void)_updateCurveLayer:(id)a3;
- (void)_updateDisplayLinkPausedState;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)fadeOutCurrentAura;
- (void)layoutSubviews;
- (void)resetAndReinitialize:(BOOL)a3;
- (void)setActiveFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)setDictationColor:(id)a3;
- (void)setFlamesDelegate:(id)a3;
- (void)setFlamesPaused:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHorizontalScaleFactor:(double)a3;
- (void)setMode:(int64_t)a3;
- (void)setOverlayImage:(id)a3;
- (void)setRenderingEnabled:(BOOL)a3 forReason:(id)a4;
- (void)setState:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SUICFlamesViewMetal

- (void)_setValuesForFidelity:(int64_t)a3
{
  if (self->_mode == 1)
  {
    self->_maxVertexCircles = 1;
    [(SUICFlamesViewMetal *)self _currentDisplayScale];
    v5 = v4 * 6.0;
    v6 = v4 * self->_activeFrame.size.width * self->_horizontalScaleFactor;
    *&v4 = v6;
    self->_maxSubdivisionLevel = logf(roundf((fmaxf(v5, *&v4) / v5) / 3.0) * 4.0) / 0.69315;
    v7 = v6 / ([(SUICFlamesViewMetal *)self _numVerticesPerCircle]* 0.25);
    self->_dictationUnitSize = v7;
    maxVertexCircles = self->_maxVertexCircles;
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    if (a3 == 2)
    {
      maxVertexCircles = 18;
      self->_maxVertexCircles = 18;
      self->_maxSubdivisionLevel = 8.0;
      v10 = 4.0;
    }

    else
    {
      if (a3 == 1)
      {
        maxVertexCircles = 12;
        self->_maxVertexCircles = 12;
        v11 = 7.0;
      }

      else
      {
        if (a3)
        {
          return;
        }

        maxVertexCircles = 6;
        self->_maxVertexCircles = 6;
        v11 = 6.0;
      }

      self->_maxSubdivisionLevel = v11;
      v10 = 3.0;
    }

    v9 = 1.0;
  }

  self->_auraVertexCircles = maxVertexCircles;
  self->_auraMinSubdivisionLevel = v9;
  self->_auraMaxSubdivisionLevel = v10;
}

- (SUICFlamesViewMetal)initWithFrame:(CGRect)a3 screen:(id)a4 fidelity:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v37.receiver = self;
  v37.super_class = SUICFlamesViewMetal;
  v13 = [(MTKView *)&v37 initWithFrame:x, y, width, height];
  if (v13)
  {
    v13->_reduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v13 selector:sel__reduceMotionStatusChanged_ name:*MEMORY[0x1E69DD918] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v13 selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v13 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v13 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

    v18 = [SUICAudioLevelSmoother alloc];
    LODWORD(v19) = -1032847360;
    LODWORD(v20) = 1051931443;
    LODWORD(v21) = 1063675494;
    LODWORD(v22) = -10.0;
    v23 = [(SUICAudioLevelSmoother *)v18 initWithMinimumPower:5 maximumPower:v19 historyLength:v22 attackSpeed:v20 decaySpeed:v21];
    levelSmoother = v13->_levelSmoother;
    v13->_levelSmoother = v23;

    objc_storeStrong(&v13->_screen, a4);
    v13->_showAura = 1;
    [(SUICFlamesViewMetal *)v13 setMode:0];
    v13->_fidelity = a5;
    [(SUICFlamesViewMetal *)v13 _setValuesForFidelity:a5];
    [(SUICFlamesViewMetal *)v13 bounds];
    v13->_activeFrame.origin.x = v25;
    v13->_activeFrame.origin.y = v26;
    v13->_activeFrame.size.width = v27;
    v13->_activeFrame.size.height = v28;
    v13->_currentContextCount = 0;
    v13->_horizontalScaleFactor = 1.0;
    v13->_frameRateScalingFactor = 1.0;
    v13->_state = 0;
    v13->_dictationRedColor = 1.0;
    v13->_dictationGreenColor = 1.0;
    v13->_dictationBlueColor = 1.0;
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    flameGroups = v13->_flameGroups;
    v13->_flameGroups = v29;

    v31 = objc_alloc_init(SUICFlameGroup);
    currentFlameGroup = v13->_currentFlameGroup;
    v13->_currentFlameGroup = v31;

    [(NSMutableArray *)v13->_flameGroups addObject:v13->_currentFlameGroup];
    v33 = [MEMORY[0x1E695DFA8] set];
    renderingDisabledReasons = v13->_renderingDisabledReasons;
    v13->_renderingDisabledReasons = v33;

    [(MTKView *)v13 setClearColor:0.0, 0.0, 0.0, 0.0];
    v35 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[SUICFlamesViewMetal initWithFrame:screen:fidelity:]";
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_1C432B000, v35, OS_LOG_TYPE_DEFAULT, "%s Created flames view: %@", buf, 0x16u);
    }
  }

  return v13;
}

- (SUICFlamesViewMetal)initWithFrame:(CGRect)a3 screenScale:(double)a4 fidelity:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  v12 = [(SUICFlamesViewMetal *)self initWithFrame:v11 screen:a5 fidelity:x, y, width, height];

  return v12;
}

- (void)dealloc
{
  [(SUICFlamesViewMetal *)self _tearDownDisplayLink];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUICFlamesViewMetal;
  [(MTKView *)&v4 dealloc];
}

- (void)didMoveToSuperview
{
  v3 = [(SUICFlamesViewMetal *)self superview];

  if (v3)
  {
    [(SUICFlamesViewMetal *)self _setupDisplayLink];
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(SUICFlamesViewMetal *)self setBackgroundColor:v4];

    [(SUICFlamesViewMetal *)self setUserInteractionEnabled:0];
  }

  else
  {

    [(SUICFlamesViewMetal *)self _tearDownDisplayLink];
  }
}

- (void)setFlamesDelegate:(id)a3
{
  v4 = a3;
  obj = v4;
  if (!v4 && self->_displayLink)
  {
    [(SUICFlamesViewMetal *)self _tearDownDisplayLink];
    v4 = 0;
  }

  objc_storeWeak(&self->_flamesDelegate, v4);
}

- (void)setState:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    self->_transitionFinished = 0;
    self->_state = a3;
    v5 = 0.0;
    if (self->_accelerateTransitions)
    {
      *&v5 = 0.25;
    }

    [(SUICFlameGroup *)self->_currentFlameGroup setTransitionPhase:v5];
    [(SUICFlameGroup *)self->_currentFlameGroup setStateTime:0.0];
    if (a3 == 3)
    {
      if (self->_showAura)
      {
        [(SUICFlameGroup *)self->_currentFlameGroup setIsAura:1];
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = self->_flameGroups;
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          do
          {
            v10 = 0;
            do
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v14 + 1) + 8 * v10);
              if (v11 != self->_currentFlameGroup)
              {
                [(SUICFlameGroup *)v11 setIsDyingOff:1, v14];
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v8);
        }

        self->_state = 0;
        v12 = objc_alloc_init(SUICFlameGroup);
        currentFlameGroup = self->_currentFlameGroup;
        self->_currentFlameGroup = v12;

        [(NSMutableArray *)self->_flameGroups addObject:self->_currentFlameGroup];
      }

      else
      {
        self->_state = 0;
      }
    }

    [(SUICFlamesViewMetal *)self _setPreferredFramesPerSecond];
    [(SUICFlamesViewMetal *)self _updateDisplayLinkPausedState];
  }
}

- (void)fadeOutCurrentAura
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_flameGroups;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isAura])
        {
          [v7 setIsDyingOff:1];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (BOOL)_supportsAdaptiveFramerate
{
  if (_supportsAdaptiveFramerate_onceToken_0 != -1)
  {
    +[SUICFlamesViewMetal _supportsAdaptiveFramerate];
  }

  return _supportsAdaptiveFramerate_supportsAdaptiveFramerate_0;
}

uint64_t __49__SUICFlamesViewMetal__supportsAdaptiveFramerate__block_invoke()
{
  result = MGGetBoolAnswer();
  _supportsAdaptiveFramerate_supportsAdaptiveFramerate_0 = result;
  return result;
}

- (void)_setPreferredFramesPerSecond
{
  if (self->_flamesPaused)
  {
    v3 = 10;
  }

  else
  {
    if ([objc_opt_class() _supportsAdaptiveFramerate] && (state = self->_state, state <= 4))
    {
      v3 = qword_1C43DAAD0[state];
    }

    else
    {
      v3 = 0;
    }

    mode = self->_mode;
    if (!mode && self->_state == 2 && self->_reduceThinkingFramerate)
    {
      v6 = [(UIScreen *)self->_screen maximumFramesPerSecond];
      v7 = (v6 / 20);
      if (v6 < 20)
      {
        v7 = 1.0;
      }

      self->_frameRateScalingFactor = v7;
      v3 = 20;
    }

    else if (self->_reduceFrameRate)
    {
      if ((mode | 2) == 2)
      {
        if (self->_state != 2)
        {
          v3 = 30;
        }
      }

      else
      {
        v3 = 30;
      }
    }
  }

  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPreferredFramesPerSecond:v3];
}

- (void)_updateDisplayLinkPausedState
{
  state = self->_state;
  if ((state - 1) > 1)
  {
    if (self->_showAura)
    {
      if (state || !self->_freezesAura)
      {
        goto LABEL_11;
      }
    }

    else if (state)
    {
      goto LABEL_11;
    }

    if (self->_transitionFinished)
    {
      displayLink = self->_displayLink;
      flamesPaused = 1;
      goto LABEL_3;
    }

LABEL_11:
    flamesPaused = self->_flamesPaused;
    displayLink = self->_displayLink;
    goto LABEL_3;
  }

  displayLink = self->_displayLink;
  flamesPaused = 0;
LABEL_3:
  [(CADisplayLink *)displayLink setPaused:flamesPaused];
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_shadersAreCompiled = 0;
    self->_mode = a3;
    if (a3 == 1)
    {
      [(SUICFlamesViewMetal *)self _setValuesForFidelity:0];
    }

    if (self->_isInitialized)
    {

      [(SUICFlamesViewMetal *)self _initMetalAndSetupDisplayLink:1];
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SUICFlamesViewMetal;
  [(SUICFlamesViewMetal *)&v5 setHidden:?];
  if (v3)
  {
    [(SUICFlamesViewMetal *)self _tearDownDisplayLink];
  }

  else if (self->_isInitialized)
  {
    [(SUICFlamesViewMetal *)self _setupDisplayLink];
  }
}

- (void)setDictationColor:(id)a3
{
  v5 = a3;
  if (self->_dictationColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dictationColor, a3);
    [(UIColor *)self->_dictationColor getRed:&self->_dictationRedColor green:&self->_dictationGreenColor blue:&self->_dictationBlueColor alpha:0];
    v5 = v6;
  }
}

- (void)setFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SUICFlamesViewMetal;
  [(MTKView *)&v9 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!self->_hasCustomActiveFrame)
  {
    [(SUICFlamesViewMetal *)self bounds];
    self->_activeFrame.origin.x = v4;
    self->_activeFrame.origin.y = v5;
    self->_activeFrame.size.width = v6;
    self->_activeFrame.size.height = v7;
  }

  if (self->_mode == 1)
  {
    [(SUICFlamesViewMetal *)self _setValuesForFidelity:0];
    if (self->_isInitialized)
    {
      [(SUICFlamesViewMetal *)self _initMetalAndSetupDisplayLink:1];
    }
  }

  overlayImageView = self->_overlayImageView;
  [(SUICFlamesViewMetal *)self frame];
  [(UIImageView *)overlayImageView setFrame:?];
}

- (void)setBounds:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUICFlamesViewMetal;
  [(SUICFlamesViewMetal *)&v8 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!self->_hasCustomActiveFrame)
  {
    [(SUICFlamesViewMetal *)self bounds];
    self->_activeFrame.origin.x = v4;
    self->_activeFrame.origin.y = v5;
    self->_activeFrame.size.width = v6;
    self->_activeFrame.size.height = v7;
  }
}

- (void)setActiveFrame:(CGRect)a3
{
  self->_hasCustomActiveFrame = 1;
  self->_activeFrame = a3;
  if (self->_mode == 1)
  {
    [(SUICFlamesViewMetal *)self _setValuesForFidelity:0];
    if (self->_isInitialized)
    {

      [(SUICFlamesViewMetal *)self _initMetalAndSetupDisplayLink:1];
    }
  }
}

- (void)setOverlayImage:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_overlayImage, a3);
  if (self->_overlayImage)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    overlayImageView = self->_overlayImageView;
    self->_overlayImageView = v5;

    v7 = self->_overlayImageView;
    [(SUICFlamesViewMetal *)self frame];
    [(UIImageView *)v7 setFrame:?];
    [(SUICFlamesViewMetal *)self addSubview:self->_overlayImageView];
  }

  else
  {
    [(UIImageView *)self->_overlayImageView removeFromSuperview];
    v8 = self->_overlayImageView;
    self->_overlayImageView = 0;
  }
}

- (void)setFlamesPaused:(BOOL)a3
{
  self->_flamesPaused = a3;
  [(SUICFlamesViewMetal *)self _setPreferredFramesPerSecond];

  [(SUICFlamesViewMetal *)self _updateDisplayLinkPausedState];
}

- (void)setHorizontalScaleFactor:(double)a3
{
  self->_horizontalScaleFactor = a3;
  if (a3 != 0.0)
  {
    v4 = [(SUICFlamesViewMetal *)self layer];
    CGAffineTransformMakeScale(&v5, 1.0 / self->_horizontalScaleFactor, 1.0);
    [v4 setAffineTransform:&v5];

    [(SUICFlamesViewMetal *)self _setValuesForFidelity:self->_fidelity];
  }
}

- (void)setRenderingEnabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  renderingDisabledReasons = self->_renderingDisabledReasons;
  v8 = v6;
  if (v4)
  {
    [(NSMutableSet *)renderingDisabledReasons removeObject:v6];
  }

  else
  {
    [(NSMutableSet *)renderingDisabledReasons addObject:v6];
  }

  if ([(SUICFlamesViewMetal *)self isRenderingEnabled])
  {
    [(SUICFlamesViewMetal *)self setNeedsLayout];
  }
}

+ (void)prewarmShadersForScreen:(id)a3 size:(CGSize)a4 fidelity:(int64_t)a5 prewarmInBackground:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  [v13 bounds];
  [a1 prewarmShadersForScreen:v13 initialFrame:a5 activeFrame:v6 fidelity:v11 prewarmInBackground:{v12, width, height, v11, v12, width, height}];
}

+ (void)prewarmShadersForScreen:(id)a3 activeFrame:(CGRect)a4 fidelity:(int64_t)a5
{
  v7 = a3;
  [v7 bounds];
  [a1 prewarmShadersForScreen:v7 initialFrame:a5 activeFrame:0 fidelity:? prewarmInBackground:?];
}

+ (void)prewarmShadersForScreen:(id)a3 initialFrame:(CGRect)a4 activeFrame:(CGRect)a5 fidelity:(int64_t)a6 prewarmInBackground:(BOOL)a7
{
  v7 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a4.size.height;
  v14 = a4.size.width;
  v15 = a4.origin.y;
  v16 = a4.origin.x;
  v17 = a3;
  v18 = [[SUICFlamesViewMetal alloc] initWithFrame:v17 screen:a6 fidelity:v16, v15, v14, v13];

  [(SUICFlamesViewMetal *)v18 setRenderInBackground:v7];
  [(SUICFlamesViewMetal *)v18 setActiveFrame:x, y, width, height];
  [(SUICFlamesViewMetal *)v18 _prewarmShaders];
}

- (void)_prewarmShaders
{
  self->_isInitialized = [(SUICFlamesViewMetal *)self _initMetalAndSetupDisplayLink:0];
  displayLink = self->_displayLink;

  [(SUICFlamesViewMetal *)self _updateCurveLayer:displayLink];
}

- (void)resetAndReinitialize:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(SUICFlamesViewMetal *)self _initMetalAndSetupDisplayLink:1];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_flameGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v9) != self->_currentFlameGroup)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_flameGroups removeObjectsInArray:v4];
  [(SUICFlamesViewMetal *)self _updateCurveLayer:self->_displayLink];
}

- (void)_reduceMotionStatusChanged:(id)a3
{
  self->_reduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if (!self->_mode)
  {
    self->_shadersAreCompiled = 0;

    [(SUICFlamesViewMetal *)self resetAndReinitialize:1];
  }
}

- (void)_setupDisplayLink
{
  if (!self->_displayLink)
  {
    v3 = [(SUICFlamesViewMetal *)self superview];
    if (v3)
    {
      v4 = v3;
      v5 = [(SUICFlamesViewMetal *)self isHidden];

      if ((v5 & 1) == 0)
      {
        v6 = [(UIScreen *)self->_screen displayLinkWithTarget:self selector:sel__updateCurveLayer_];
        displayLink = self->_displayLink;
        self->_displayLink = v6;

        v8 = self->_displayLink;
        v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
        [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

        [(SUICFlamesViewMetal *)self _setPreferredFramesPerSecond];

        [(SUICFlamesViewMetal *)self _updateDisplayLinkPausedState];
      }
    }
  }
}

- (float32x2_t)_predeterminedVertexPositionForAuraWithPolarVertex:(uint64_t)a1
{
  v2.f64[0] = *(a1 + 1352) * *(a1 + 1312);
  v2.f64[1] = *(a1 + 1360);
  __asm { FMOV            V3.2S, #-1.0 }

  v8 = vmla_f32(_D3, 0x4000000040000000, vdiv_f32(vmla_f32(vcvt_f32_f64(*(a1 + 1336)), 0x3F0000003F000000, vcvt_f32_f64(v2)), *(a1 + 1120)));
  v9 = vneg_f32(v8);
  v10 = vsub_f32(_D3, v8);
  v13 = sqrtf(vaddv_f32(vmul_f32(v10, v10))) * *&a2;
  v11 = __sincosf_stret(*(&a2 + 1));
  return vmla_n_f32(v9, __PAIR64__(LODWORD(v11.__sinval), LODWORD(v11.__cosval)), v13);
}

- (int)_generateIndicesForNumCircleShapes:(int)a3 withMaxSubdivisionLevel:(float)a4 startingWithNumSubdivisionLevel:(float)a5 forIndices:(unsigned int *)a6 atStartIndex:(int)a7 withFill:(BOOL)a8 withCullingForAura:(BOOL)a9 forVertices:(id *)a10
{
  v88 = a9;
  v10 = a8;
  v11 = *&a7;
  v15 = [(SUICFlamesViewMetal *)self _numVerticesPerCircle];
  v16 = *a6;
  v80 = a6;
  if (v10)
  {
    v17 = *a6;
    v18 = vcvtas_u32_f32(exp2f(a5) * 3.0);
    v19 = a3 == 1 ? (self->_maxVertexCircles - 1) * v15 : 0;
    v20 = (v18 >> 1) - 1;
    v16 = v17;
    if (v18 >> 1 != 1)
    {
      v21 = (v15 / v18);
      v22 = 4 * v11 + 12;
      v23 = v19 + v21 * (v18 - 1);
      v24 = v19 + v21 * (v18 - 2);
      do
      {
        v16 = malloc_type_realloc(v16, v22 + 12, 0x100004052888210uLL);
        v25 = &v16[v22];
        *(v25 - 3) = v19;
        *(v25 - 2) = v21 + v19;
        *(v25 - 1) = v24;
        *v25 = v19;
        v25[1] = v24;
        v25[2] = v23;
        v22 += 24;
        v23 -= v21;
        v11 = (v11 + 6);
        v24 -= v21;
        v19 += v21;
        --v20;
      }

      while (v20);
    }
  }

  v26 = a3 - 2;
  if (a3 >= 2)
  {
    v27 = 0;
    v84 = a3;
    v28 = v15;
    v29 = vdup_n_s32(0x3F8CCCCDu);
    __asm { FMOV            V15.2S, #1.0 }

    v35 = v88;
    v82 = a5;
    v81 = a3 - 2;
    while (1)
    {
      maxVertexCircles = self->_maxVertexCircles;
      v37 = maxVertexCircles;
      v38 = v16;
      v39 = v27 == v26 ? maxVertexCircles - 1 : (((v27 + 1) / v84) * v37);
      v85 = v27;
      v40 = v27;
      v41 = v27 + a5;
      v42 = v41 >= a4 ? a4 : v27 + a5;
      v43 = exp2f(v42) * 3.0;
      v44 = llroundf(v43);
      v45 = v41 + 1.0;
      if ((v41 + 1.0) >= a4)
      {
        v45 = a4;
      }

      v46 = exp2f(v45);
      v92 = v44;
      if (v44 >= 1)
      {
        break;
      }

      v16 = v38;
LABEL_39:
      v26 = v81;
      v27 = v85 + 1;
      a5 = v82;
      if (v85 == v81)
      {
        goto LABEL_40;
      }
    }

    v47 = 0;
    v48 = ((v40 / v84) * v37);
    v49 = roundf(v43);
    v50 = v49 / roundf(v46 * 3.0);
    v90 = v39 * v15;
    v91 = v15 * v48;
    v16 = v38;
    while (1)
    {
      v51 = v11;
      v52 = v47;
      v53 = ((v47++ / v49) * v28) % v15;
      v54 = v53 + v90;
      v55 = (((v50 + v52) / v49) * v28) % v15 + v90;
      v56 = ((((v49 + v52) - v50) / v49) * v28) % v15 + v90;
      v94 = v55;
      if (v35)
      {
        v89 = v16;
        v57 = v53 + v91;
        [(SUICFlamesViewMetal *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 4 * (v53 + v91))];
        v59 = vabs_f32(v58);
        [(SUICFlamesViewMetal *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 4 * (((v28 * v47) / v49) % v15 + v91))];
        v93 = vabs_f32(v60);
        [(SUICFlamesViewMetal *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 4 * v54)];
        v62 = vabs_f32(v61);
        [(SUICFlamesViewMetal *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 4 * v55)];
        v64 = vabs_f32(v63);
        [(SUICFlamesViewMetal *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 4 * v56)];
        if (v50 == 1.0)
        {
          v35 = v88;
          v11 = v51;
          v16 = v89;
LABEL_28:
          v69 = vbic_s8(_D15, vcgt_f32(v29, v59));
          v70 = vbic_s8(_D15, vcgt_f32(v29, v62));
          if ((vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v69, v70), vzip2_s32(v69, v70)))) + sqrtf(vaddv_f32(vbic_s8(_D15, vcgt_f32(v29, v64))))) >= 3.0)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v66 = vbic_s8(_D15, vcgt_f32(v29, v59));
        v67 = vbic_s8(_D15, vcgt_f32(v29, vabs_f32(v65)));
        v35 = v88;
        v11 = v51;
        v16 = v89;
        if ((sqrtf(vaddv_f32(vbic_s8(_D15, vcgt_f32(v29, v62)))) + vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v66, v67), vzip2_s32(v66, v67))))) >= 3.0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v57 = v53 + v91;
        v59 = 0;
        v93 = 0;
        v62 = 0;
        v64 = 0;
        LODWORD(v11) = v51;
        if (v50 == 1.0)
        {
          v93 = 0;
          goto LABEL_31;
        }
      }

      v16 = malloc_type_realloc(v16, 4 * (v11 + 3), 0x100004052888210uLL);
      v68 = &v16[4 * v11];
      *v68 = v57;
      v68[1] = v56;
      v68[2] = v54;
      v11 = (v11 + 3);
      v35 = v88;
      if (v88)
      {
        goto LABEL_28;
      }

LABEL_31:
      v71 = v11;
      v11 = (v11 + 3);
      v16 = malloc_type_realloc(v16, 4 * v11, 0x100004052888210uLL);
      v72 = &v16[4 * v71];
      *v72 = v57;
      v72[1] = v54;
      v73 = v94;
      v72[2] = v94;
      if (!v35)
      {
        v77 = v11;
        v76 = ((v28 * v47) / v49) % v15 + v91;
        goto LABEL_35;
      }

LABEL_32:
      v74 = vbic_s8(_D15, vcgt_f32(v29, v59));
      v75 = vbic_s8(_D15, vcgt_f32(v29, v64));
      v76 = ((v28 * v47) / v49) % v15 + v91;
      if ((sqrtf(vaddv_f32(vbic_s8(_D15, vcgt_f32(v29, v93)))) + vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v75, v74), vzip2_s32(v75, v74))))) < 3.0)
      {
        v77 = v11;
        v73 = v94;
LABEL_35:
        v11 = (v11 + 3);
        v16 = malloc_type_realloc(v16, 4 * v11, 0x100004052888210uLL);
        v78 = &v16[4 * v77];
        *v78 = v57;
        v78[1] = v73;
        v78[2] = v76;
      }

      if (v92 == v47)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  *v80 = v16;
  return v11;
}

- (BOOL)_setupVertexBuffer
{
  v3 = [(SUICFlamesViewMetal *)self _numVerticesPerCircle];
  v4 = self->_maxVertexCircles * v3;
  self->_numVertices = v4;
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32 * v4];
  v6 = [v5 mutableBytes];
  v10 = v6;
  maxVertexCircles = self->_maxVertexCircles;
  if (maxVertexCircles)
  {
    v12 = 0;
    v13 = 0;
    v14 = v3;
    v8 = vdupq_n_s64(0x401921FB54442D18uLL);
    do
    {
      ++v13;
      if (v3 >= 1)
      {
        v15 = 0;
        v16 = (v6 + 32 * v12);
        do
        {
          if (self->_mode == 1)
          {
            v17 = v15 & 1;
            v18 = v15++ | 1;
            v19.f32[0] = v18 / v14;
            v20 = v15 + (v17 - 1);
            v19.i32[1] = fminf((v20 / v14) - floorf(v20 / v14), 1.0);
            v21 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v19), v8));
          }

          else
          {
            v22 = (v15 / v14) * 6.28318531;
            *&v22 = v22;
            ++v15;
            v21 = vdup_lane_s32(*&v22, 0);
          }

          *v9.i32 = v13 / maxVertexCircles;
          *&v23 = vzip1_s32(v9, v21);
          v21.i32[0] = v9.i32[0];
          *(&v23 + 1) = v21;
          *v16 = v23;
          v16 += 2;
          ++v12;
        }

        while (v15 != v3);
        maxVertexCircles = self->_maxVertexCircles;
      }
    }

    while (v13 < maxVertexCircles);
  }

  v42 = 0;
  *&v7 = self->_auraMaxSubdivisionLevel;
  *v8.f64 = self->_auraMinSubdivisionLevel;
  v24 = [(SUICFlamesViewMetal *)self _generateIndicesForNumCircleShapes:self->_auraVertexCircles withMaxSubdivisionLevel:&v42 startingWithNumSubdivisionLevel:0 forIndices:1 atStartIndex:0 withFill:v6 withCullingForAura:v7 forVertices:v8.f64[0]];
  self->_numAuraIndices = v24;
  *&v25 = self->_auraMaxSubdivisionLevel;
  *&v26 = self->_auraMinSubdivisionLevel;
  v27 = [(SUICFlamesViewMetal *)self _generateIndicesForNumCircleShapes:self->_auraVertexCircles withMaxSubdivisionLevel:&v42 startingWithNumSubdivisionLevel:v24 forIndices:1 atStartIndex:1 withFill:v10 withCullingForAura:v25 forVertices:v26];
  self->_numAuraIndicesCulled = v27;
  *&v28 = self->_maxSubdivisionLevel;
  LODWORD(v29) = LODWORD(v28);
  v30 = [(SUICFlamesViewMetal *)self _generateIndicesForNumCircleShapes:1 withMaxSubdivisionLevel:&v42 startingWithNumSubdivisionLevel:v27 forIndices:1 atStartIndex:0 withFill:v10 withCullingForAura:v28 forVertices:v29];
  self->_numWaveIndices = v30;
  self->_numWaveIndices = v30 - self->_numAuraIndicesCulled;
  v31 = self->_numAuraIndicesCulled - self->_numAuraIndices;
  self->_numAuraIndicesCulled = v31;
  v32 = 4 * (self->_numAuraIndices + self->_numWaveIndices + v31);
  v33 = objc_alloc(MEMORY[0x1E695DEF0]);
  v34 = [v33 initWithBytesNoCopy:v42 length:v32 freeWhenDone:1];
  v35 = [(MTKView *)self device];
  v36 = [v35 newBufferWithBytes:objc_msgSend(v5 length:"bytes") options:{objc_msgSend(v5, "length"), 0}];
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = v36;

  self->_numVertices = [v5 length] >> 5;
  v38 = [(MTKView *)self device];
  v39 = [v38 newBufferWithBytes:objc_msgSend(v34 length:"bytes") options:{objc_msgSend(v34, "length"), 0}];
  indexBuffer = self->_indexBuffer;
  self->_indexBuffer = v39;

  self->_numIndices = [v34 length] >> 1;
  return 1;
}

- (BOOL)_initMetalAndSetupDisplayLink:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = "[SUICFlamesViewMetal _initMetalAndSetupDisplayLink:]";
    _os_log_impl(&dword_1C432B000, v6, OS_LOG_TYPE_DEFAULT, "%s Setup Metal Rendering", &v30, 0xCu);
  }

  kdebug_trace();
  v7 = [(SUICFlamesViewMetal *)self layer];
  [v7 setOpaque:0];

  [(SUICFlamesViewMetal *)self _currentDisplayScale];
  v9 = v8;
  v10 = [(SUICFlamesViewMetal *)self layer];
  [v10 setContentsScale:v9];

  v11 = [(SUICFlamesViewMetal *)self layer];
  [v11 contentsScale];
  v13 = v12;
  v14 = [(SUICFlamesViewMetal *)self layer];
  [v14 bounds];
  v16 = v13 * v15;
  self->_viewWidth = v16;

  v17 = [(SUICFlamesViewMetal *)self layer];
  [v17 contentsScale];
  v19 = v18;
  v20 = [(SUICFlamesViewMetal *)self layer];
  [v20 bounds];
  v22 = v19 * v21;
  self->_viewHeight = v22;

  [(MTKView *)self setDrawableSize:self->_viewWidth, self->_viewHeight];
  v23 = MTLCreateSystemDefaultDevice();
  [(MTKView *)self setDevice:v23];

  v24 = [(MTKView *)self device];

  if (!v24)
  {
    v27 = *v5;
    v26 = os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      return v26;
    }

    [SUICFlamesViewMetal _initMetalAndSetupDisplayLink:v27];
    goto LABEL_15;
  }

  [(SUICFlamesViewMetal *)self _setupVertexBuffer];
  if (![(SUICFlamesViewMetal *)self _loadPipelineLibraries])
  {
    v28 = *v5;
    v26 = os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      return v26;
    }

    [SUICFlamesViewMetal _initMetalAndSetupDisplayLink:v28];
LABEL_15:
    LOBYTE(v26) = 0;
    return v26;
  }

  if (v3)
  {
    [(SUICFlamesViewMetal *)self _setupDisplayLink];
  }

  v25 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = "[SUICFlamesViewMetal _initMetalAndSetupDisplayLink:]";
    _os_log_impl(&dword_1C432B000, v25, OS_LOG_TYPE_DEFAULT, "%s Metal Rendering Setup Complete", &v30, 0xCu);
  }

  kdebug_trace();
  LOBYTE(v26) = 1;
  return v26;
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

- (BOOL)_loadPipelineLibraries
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v78 = "[SUICFlamesViewMetal _loadPipelineLibraries]";
    _os_log_impl(&dword_1C432B000, v4, OS_LOG_TYPE_DEFAULT, "%s Started Loading Pipeline Libraries", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 bundlePath];
  v7 = [v6 stringByAppendingPathComponent:@"SUICPipelineState.pipelinelib"];

  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v8 = [(MTKView *)self device];
  v76 = 0;
  v9 = [v8 newPipelineLibraryWithFilePath:v7 error:&v76];
  v10 = v76;

  if (!v9 || (v75 = v10, [(SUICFlamesViewMetal *)self _from:v9 getRenderPipeline:@"Flame Pipeline" err:&v75], v11 = objc_claimAutoreleasedReturnValue(), v12 = v75, v10, v13 = self->_pipelineState[0], self->_pipelineState[0] = v11, v13, v74 = v12, [(SUICFlamesViewMetal *)self _from:v9 getRenderPipeline:@"Dictation Pipeline" err:&v74], v14 = objc_claimAutoreleasedReturnValue(), v15 = v74, v12, v16 = self->_pipelineState[1], self->_pipelineState[1] = v14, v16, v73 = v15, [(SUICFlamesViewMetal *)self _from:v9 getRenderPipeline:@"Training Pipeline" err:&v73], v17 = objc_claimAutoreleasedReturnValue(), v18 = v73, v15, v19 = self->_pipelineState[2], self->_pipelineState[2] = v17, v19, v72 = v18, [(SUICFlamesViewMetal *)self _from:v9 getRenderPipeline:@"Aura Pipeline" err:&v72], v20 = objc_claimAutoreleasedReturnValue(), v10 = v72, v18, v21 = self->_pipelineState[3], self->_pipelineState[3] = v20, v21, v10))
  {
LABEL_8:
    v66 = v7;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [SUICFlamesViewMetal _loadPipelineLibraries];
    }

    v22 = [(MTKView *)self device];
    v71 = v10;
    v23 = [v22 newDefaultLibraryWithBundle:v5 error:&v71];
    v24 = v71;

    if (!v23)
    {
      v25 = [(MTKView *)self device];
      v23 = [v25 newDefaultLibrary];
    }

    v26 = objc_alloc_init(MEMORY[0x1E6974148]);
    v27 = [(MTKView *)self colorPixelFormat];
    v28 = [v26 colorAttachments];
    v29 = [v28 objectAtIndexedSubscript:0];
    [v29 setPixelFormat:v27];

    v30 = [v26 colorAttachments];
    v31 = [v30 objectAtIndexedSubscript:0];
    [v31 setBlendingEnabled:1];

    v32 = [v26 colorAttachments];
    v33 = [v32 objectAtIndexedSubscript:0];
    [v33 setRgbBlendOperation:0];

    v34 = [v26 colorAttachments];
    v35 = [v34 objectAtIndexedSubscript:0];
    [v35 setSourceRGBBlendFactor:4];

    v36 = [v26 colorAttachments];
    v37 = [v36 objectAtIndexedSubscript:0];
    [v37 setDestinationRGBBlendFactor:5];

    [v26 setLabel:@"Flame Pipeline"];
    if (self->_reduceMotionEnabled)
    {
      v38 = @"siriFlameAccessibilityVertexShader";
    }

    else
    {
      v38 = @"siriFlameVertexShader";
    }

    v39 = [v23 newFunctionWithName:v38];
    [v26 setVertexFunction:v39];

    v40 = [v23 newFunctionWithName:@"siriFlameFragmentShader"];
    [v26 setFragmentFunction:v40];

    v41 = [(MTKView *)self device];
    v70 = v24;
    v42 = [v41 newRenderPipelineStateWithDescriptor:v26 error:&v70];
    v43 = v70;

    pipelineState = self->_pipelineState;
    v45 = self->_pipelineState[0];
    self->_pipelineState[0] = v42;

    if (self->_pipelineState[0])
    {
      [v26 setLabel:@"Aura Pipeline"];
      v46 = [v23 newFunctionWithName:@"siriAuraFragmentShader"];
      [v26 setFragmentFunction:v46];

      v47 = [(MTKView *)self device];
      v69 = v43;
      v48 = [v47 newRenderPipelineStateWithDescriptor:v26 error:&v69];
      v49 = v69;

      v50 = self->_pipelineState[3];
      self->_pipelineState[3] = v48;

      if (!self->_pipelineState[3])
      {
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
        {
          [SUICFlamesViewMetal _loadPipelineLibraries];
        }

        goto LABEL_34;
      }

      [v26 setLabel:@"Dictation Pipeline"];
      v51 = [v23 newFunctionWithName:@"siriDictationVertexShader"];
      [v26 setVertexFunction:v51];

      v52 = [v23 newFunctionWithName:@"siriDictationFragmentShader"];
      [v26 setFragmentFunction:v52];

      v53 = [(MTKView *)self device];
      v68 = v49;
      v54 = [v53 newRenderPipelineStateWithDescriptor:v26 error:&v68];
      v43 = v68;

      v55 = self->_pipelineState[1];
      self->_pipelineState[1] = v54;

      if (self->_pipelineState[1])
      {
        [v26 setLabel:@"Training Pipeline"];
        v56 = [v23 newFunctionWithName:@"siriTrainingVertexShader"];
        [v26 setVertexFunction:v56];

        v57 = [v23 newFunctionWithName:@"siriTrainingFragmentShader"];
        [v26 setFragmentFunction:v57];

        v58 = [(MTKView *)self device];
        v67 = v43;
        v59 = [v58 newRenderPipelineStateWithDescriptor:v26 error:&v67];
        v49 = v67;

        v60 = pipelineState[2];
        pipelineState[2] = v59;

        v61 = *MEMORY[0x1E698D0A0];
        v62 = *MEMORY[0x1E698D0A0];
        if (pipelineState[2])
        {
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v78 = "[SUICFlamesViewMetal _loadPipelineLibraries]";
            _os_log_impl(&dword_1C432B000, v61, OS_LOG_TYPE_DEFAULT, "%s Finished Loading Pipeline Libraries", buf, 0xCu);
          }

          v63 = 1;
          goto LABEL_35;
        }

        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [SUICFlamesViewMetal _loadPipelineLibraries];
        }

LABEL_34:
        v63 = 0;
LABEL_35:
        v43 = v49;
        goto LABEL_36;
      }

      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [SUICFlamesViewMetal _loadPipelineLibraries];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [SUICFlamesViewMetal _loadPipelineLibraries];
    }

    v63 = 0;
LABEL_36:

    v7 = v66;
    goto LABEL_37;
  }

  v64 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v78 = "[SUICFlamesViewMetal _loadPipelineLibraries]";
    _os_log_impl(&dword_1C432B000, v64, OS_LOG_TYPE_DEFAULT, "%s Finished Loading Pipeline Libraries", buf, 0xCu);
  }

  v63 = 1;
LABEL_37:

  return v63;
}

- (BOOL)_resizeFromLayer:(id)a3
{
  v4 = a3;
  v5 = [(SUICFlamesViewMetal *)self isRenderingEnabled];
  if (v5)
  {
    [v4 contentsScale];
    v7 = v6;
    [v4 bounds];
    v9 = v7 * v8;
    self->_viewWidth = v9;
    [v4 contentsScale];
    v11 = v10;
    [v4 bounds];
    v13 = v11 * v12;
    self->_viewHeight = v13;
    [(MTKView *)self setDrawableSize:self->_viewWidth, v13];
  }

  return v5;
}

- (void)layoutSubviews
{
  if (self->_isInitialized)
  {
    v3 = [(SUICFlamesViewMetal *)self _metalLayer];
    [(SUICFlamesViewMetal *)self _resizeFromLayer:v3];
  }

  else
  {
    self->_isInitialized = [(SUICFlamesViewMetal *)self _initMetalAndSetupDisplayLink:1];
  }

  [(SUICFlamesViewMetal *)self _updateOrthoProjection];
}

- (double)_currentDisplayScale
{
  v3 = [(SUICFlamesViewMetal *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  if (v5 < 1.0)
  {
    [(UIScreen *)self->_screen scale];
    v5 = v6;
  }

  v7 = [(SUICFlamesViewMetal *)self _deviceNeeds2xFlamesWithCurrentScale:v5];
  result = 2.0;
  if (!v7)
  {
    return v5;
  }

  return result;
}

- (BOOL)_deviceNeeds2xFlamesWithCurrentScale:(double)a3
{
  if (_deviceNeeds2xFlamesWithCurrentScale__onceToken_0 != -1)
  {
    [SUICFlamesViewMetal _deviceNeeds2xFlamesWithCurrentScale:];
  }

  return (a3 == 3.0) & _deviceNeeds2xFlamesWithCurrentScale__needsLowerQualityFlames_0;
}

uint64_t __60__SUICFlamesViewMetal__deviceNeeds2xFlamesWithCurrentScale___block_invoke()
{
  result = MGGetProductType();
  _deviceNeeds2xFlamesWithCurrentScale__needsLowerQualityFlames_0 = result == 1737882206;
  return result;
}

- (void)_tearDownDisplayLink
{
  self->_state = 4;
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;
}

- (void)_didSkipFrameUpdateWithReason:(id)a3 andCount:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[SUICFlamesViewMetal _didSkipFrameUpdateWithReason:andCount:]";
    v9 = 2112;
    v10 = v5;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_1C432B000, v6, OS_LOG_TYPE_DEFAULT, "%s Frame Skip Reason: %@; count = %lu", &v7, 0x20u);
  }

  kdebug_trace();
}

- (id)_lazy_commandQueue
{
  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    v4 = [(MTKView *)self device];
    v5 = [v4 newCommandQueue];
    v6 = self->_commandQueue;
    self->_commandQueue = v5;

    commandQueue = self->_commandQueue;
  }

  return commandQueue;
}

- (void)_updateCurveLayer:(id)a3
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_currentFlameGroup)
  {
    if (self->_isInitialized)
    {
      if ([(SUICFlamesViewMetal *)self isRenderingEnabled])
      {
        v5 = [(SUICFlamesViewMetal *)self _metalLayer];
        if (([v5 isDrawableAvailable] & 1) == 0)
        {
          v15 = _updateCurveLayer__skipCount++;
          if (__ROR8__(0x1CAC083126E978D5 * v15, 3) <= 0x4189374BC6A7EFuLL)
          {
            [(SUICFlamesViewMetal *)self _didSkipFrameUpdateWithReason:@"no drawable available" andCount:?];
          }

          goto LABEL_80;
        }

        v6 = [(SUICFlameGroup *)self->_currentFlameGroup transitionPhasePtr];
        v7 = [(SUICFlameGroup *)self->_currentFlameGroup stateModifiersPtr];
        v8 = *v6;
        v9 = *v6 >= 1.0;
        if (*v6 < 1.0)
        {
          v10 = v8;
          state = self->_state;
          if (state > 1)
          {
            if (state == 2)
            {
              v17 = v10 + self->_frameRateScalingFactor * 0.02;
              v18 = fminf(v17, 1.0);
              *v6 = v18;
              *v7 = vmlaq_n_f32(*v7, vsubq_f32(xmmword_1C435BBB0, *v7), v18);
            }

            else if (state == 4)
            {
              v16 = v10 + self->_frameRateScalingFactor * 0.03;
              *&v16 = v16;
              *&v16 = fminf(*&v16, 1.0);
              *v6 = *&v16;
              *v7 = vmlaq_n_f32(*v7, vsubq_f32(0, *v7), *&v16);
              if (*v6 == 1.0)
              {
                *&v16 = *v6;
                [(SUICFlamesViewMetal *)self setHidden:1, v16];
              }
            }

            goto LABEL_24;
          }

          if (!state)
          {
            v13 = v10 + self->_frameRateScalingFactor * 0.03;
            *&v13 = v13;
            *&v13 = fminf(*&v13, 1.0);
            *v6 = *&v13;
            *v7 = vmlaq_n_f32(*v7, vsubq_f32(xmmword_1C435BBD0, *v7), *&v13);
            levelSmoother = self->_levelSmoother;
            LODWORD(v13) = 1064514355;
            goto LABEL_22;
          }

          if (state == 1)
          {
            v13 = v10 + self->_frameRateScalingFactor * 0.03;
            *&v13 = v13;
            *&v13 = fminf(*&v13, 1.0);
            *v6 = *&v13;
            *v7 = vmlaq_n_f32(*v7, vsubq_f32(xmmword_1C435BBC0, *v7), *&v13);
            levelSmoother = self->_levelSmoother;
            LODWORD(v13) = 1063675494;
LABEL_22:
            [(SUICAudioLevelSmoother *)levelSmoother setDecaySpeed:v13];
          }
        }

LABEL_24:
        v87 = 0.0;
        if (self->_state == 1)
        {
          [(SUICFlamesViewMetal *)self _currentMicPowerLevel];
          v87 = v19;
        }

        v20 = [(MTKView *)self currentRenderPassDescriptor];
        if (v20)
        {
          v77 = v8;
          v80 = v9;
          v81 = v5;
          v82 = v4;
          v21 = [(SUICFlamesViewMetal *)self _lazy_commandQueue];
          v22 = [v21 commandBuffer];

          [v22 setLabel:@"SUICFlamesViewMetalBuffer"];
          v78 = v22;
          v79 = v20;
          v23 = [v22 renderCommandEncoderWithDescriptor:v20];
          [v23 setLabel:@"SUICFlamesViewMetalEncoder"];
          [(CADisplayLink *)self->_displayLink duration];
          v25 = v24;
          v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          obj = self->_flameGroups;
          v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v100 objects:v104 count:16];
          if (v26)
          {
            v27 = v26;
            v84 = 0;
            v28 = v25;
            v29 = *v101;
            v30 = v28;
            v31 = v28 * 0.5;
            v83 = vdup_n_s32(0x25800000u);
            do
            {
              v32 = 0;
              do
              {
                if (*v101 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v100 + 1) + 8 * v32);
                v34 = [v33 stateModifiersPtr];
                if (!self->_freezesAura || ([v33 isAura] & 1) == 0)
                {
                  reduceMotionEnabled = self->_reduceMotionEnabled;
                  frameRateScalingFactor = self->_frameRateScalingFactor;
                  [v33 stateTime];
                  v38 = v37;
                  if (reduceMotionEnabled)
                  {
                    v39 = v31;
                  }

                  else
                  {
                    v39 = v30;
                  }

                  if (reduceMotionEnabled)
                  {
                    v40 = 0.1;
                  }

                  else
                  {
                    v40 = 0.25;
                  }

                  if (reduceMotionEnabled)
                  {
                    v41 = v87 * 0.5 + 0.1;
                  }

                  else
                  {
                    v41 = v87 * 2.0 + 0.25;
                  }

                  v42 = v38 + v39 * frameRateScalingFactor;
                  *&v42 = v42;
                  [v33 setStateTime:v42];
                  v43 = v40 * COERCE_FLOAT(*&v34[1]) + v41 * vaddv_f32(*v34) + COERCE_FLOAT(HIDWORD(*v34->f32)) * 0.05;
                  [v33 zTime];
                  v45 = v44 + v30 * v43;
                  *&v45 = v45;
                  [v33 setZTime:v45];
                }

                if ([v33 isDyingOff])
                {
                  [v33 globalAlpha];
                  *&v46 = *&v46 + -0.03;
                  if (*&v46 < 0.0)
                  {
                    *&v46 = 0.0;
                  }

                  [v33 setGlobalAlpha:v46];
                }

                if ([v33 isAura] && !self->_mode)
                {
                  v62 = [v33 transitionPhasePtr];
                  if (*v62 >= 1.0)
                  {
                    numAuraIndices = self->_numAuraIndices;
                    numAuraIndicesCulled = self->_numAuraIndicesCulled;
                    v84 = 1;
                  }

                  else
                  {
                    numAuraIndices = 0;
                    v63 = 0.005;
                    if (self->_reduceMotionEnabled)
                    {
                      v63 = 0.001;
                    }

                    v64 = *v62 + v63 * self->_frameRateScalingFactor;
                    v65 = fminf(v64, 1.0);
                    *v62 = v65;
                    v66 = vmlaq_n_f32(*v34->f32, vsubq_f32(xmmword_1C435BBE0, *v34->f32), v65);
                    *v34->f32 = v66;
                    numAuraIndicesCulled = self->_numAuraIndices;
                    if (*v66.i32 <= 2.2204e-16)
                    {
                      v67 = vmvn_s8(vcge_f32(v83, *&vextq_s8(v66, v66, 4uLL)));
                      if ((v67.i8[0] & 1) == 0 && (v67.i8[4] & 1) == 0)
                      {
                        if (*&v66.i32[3] + 2.22044605e-16 >= 1.0)
                        {
                          WeakRetained = objc_loadWeakRetained(&self->_flamesDelegate);
                          v90 = objc_opt_respondsToSelector();

                          if (v90)
                          {
                            v69 = objc_loadWeakRetained(&self->_flamesDelegate);
                            [v69 flamesViewAuraDidDisplay:self];
                          }
                        }

                        numAuraIndices = 0;
                      }
                    }
                  }
                }

                else
                {
                  numAuraIndices = 0;
                  numAuraIndicesCulled = 0;
                }

                v99 = 0u;
                [(MTKView *)self drawableSize];
                *&v49 = v49;
                LODWORD(v99) = LODWORD(v49);
                [(MTKView *)self drawableSize];
                v51 = v50;
                *(&v99 + 1) = v51;
                [v23 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
                [(SUICFlamesViewMetal *)self _currentDisplayScale];
                *&v52 = v52;
                *&v53 = v99;
                DWORD2(v53) = LODWORD(v52);
                HIDWORD(v53) = LODWORD(self->_dictationUnitSize);
                v99 = v53;
                [v23 setVertexBytes:&v99 length:16 atIndex:1];
                [v23 setVertexBytes:v34 length:16 atIndex:4];
                v98 = vcvt_hight_f32_f64(vcvt_f32_f64(self->_activeFrame.origin), self->_activeFrame.size);
                [v23 setVertexBytes:&v98 length:16 atIndex:2];
                v97 = 0u;
                [v33 stateTime];
                v89 = v54;
                [v33 zTime];
                v88 = v55;
                [v33 globalAlpha];
                *&v56 = __PAIR64__(v88, v89);
                *(&v56 + 1) = __PAIR64__(v57, LODWORD(v87));
                v97 = v56;
                [v23 setVertexBytes:&v97 length:16 atIndex:3];
                if ([(SUICFlamesViewMetal *)self inDictationMode])
                {
                  v58 = *&self->_dictationRedColor;
                  *&v58.f64[0] = vcvt_f32_f64(v58);
                  dictationBlueColor = self->_dictationBlueColor;
                  *&v58.f64[1] = dictationBlueColor;
                  v96 = v58;
                  [v23 setFragmentBytes:&v96 length:16 atIndex:5];
                }

                if (v34[1].f32[1] <= 0.0)
                {
                  numAuraIndicesCulled = self->_numWaveIndices;
                  numAuraIndices = self->_numAuraIndicesCulled + self->_numAuraIndices;
                  v60 = &self->_pipelineState[self->_mode];
                }

                else
                {
                  v60 = &self->_pipelineState[3];
                }

                [v23 setRenderPipelineState:*v60];
                [v23 drawIndexedPrimitives:3 indexCount:numAuraIndicesCulled indexType:1 indexBuffer:self->_indexBuffer indexBufferOffset:4 * numAuraIndices];
                [v33 globalAlpha];
                if (v61 == 0.0)
                {
                  [v86 addObject:v33];
                }

                ++v32;
              }

              while (v27 != v32);
              v70 = [(NSMutableArray *)obj countByEnumeratingWithState:&v100 objects:v104 count:16];
              v27 = v70;
            }

            while (v70);
          }

          else
          {
            v84 = 0;
          }

          [v23 endEncoding];
          v71 = [(MTKView *)self currentDrawable];
          [v78 presentDrawable:v71];

          v72 = v80;
          if (self->_freezesAura)
          {
            v72 = (v77 >= 1.0) & v84;
          }

          self->_transitionFinished = v72;
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __41__SUICFlamesViewMetal__updateCurveLayer___block_invoke;
          v93[3] = &unk_1E81E8430;
          v94 = v86;
          v95 = self;
          v73 = v86;
          v74 = MEMORY[0x1C6937B00](v93);
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __41__SUICFlamesViewMetal__updateCurveLayer___block_invoke_2;
          v91[3] = &unk_1E81E8458;
          v92 = v74;
          v75 = v74;
          [v78 addCompletedHandler:v91];
          [v78 commit];

          v5 = v81;
          v4 = v82;
          v20 = v79;
        }

        if (!v4)
        {
          commandQueue = self->_commandQueue;
          self->_commandQueue = 0;
        }

LABEL_80:
        goto LABEL_14;
      }

      v14 = @"rendering disabled";
    }

    else
    {
      v14 = @"not initialized";
    }
  }

  else
  {
    v14 = @"No current flame group";
  }

  [(SUICFlamesViewMetal *)self _didSkipFrameUpdateWithReason:v14 andCount:0];
LABEL_14:
}

_BYTE *__41__SUICFlamesViewMetal__updateCurveLayer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(*(a1 + 40) + 1104) removeObjectsInArray:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result[1208] == 1)
  {

    return [result _didFinishTransition];
  }

  return result;
}

void __41__SUICFlamesViewMetal__updateCurveLayer___block_invoke_2(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SUICFlamesViewMetal__updateCurveLayer___block_invoke_3;
    block[3] = &unk_1E81E7B10;
    v4 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

+ (id)_indexCache
{
  if (_indexCache_onceToken_0 != -1)
  {
    +[SUICFlamesViewMetal _indexCache];
  }

  v3 = _indexCache_sIndexCache_0;

  return v3;
}

uint64_t __34__SUICFlamesViewMetal__indexCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _indexCache_sIndexCache_0;
  _indexCache_sIndexCache_0 = v0;

  v2 = _indexCache_sIndexCache_0;
  v3 = sIndexCacheSize_0;

  return [v2 setCountLimit:v3];
}

+ (void)setIndexCacheSize:(unint64_t)a3
{
  sIndexCacheSize_0 = a3;
  v3 = [a1 _indexCache];
  [v3 setCountLimit:sIndexCacheSize_0];
}

- (float)_currentMicPowerLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_flamesDelegate);
  [WeakRetained audioLevelForFlamesView:self];
  v5 = v4;

  LODWORD(v6) = v5;
  [(SUICAudioLevelSmoother *)self->_levelSmoother smoothedLevelForMicPower:v6];
  return v7 * 0.95 + 0.05;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUICFlamesViewMetal;
  [(SUICFlamesViewMetal *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(SUICFlamesViewMetal *)self traitCollection];
    [v5 displayScale];
    v7 = v6;
    [v4 displayScale];
    if (v7 != v8)
    {
      [(SUICFlamesViewMetal *)self resetAndReinitialize:1];
      [(SUICFlamesViewMetal *)self _setValuesForFidelity:self->_fidelity];
      [(SUICFlamesViewMetal *)self setNeedsLayout];
    }
  }
}

- (SUICFlamesViewProvidingDelegate)flamesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flamesDelegate);

  return WeakRetained;
}

- (CGRect)activeFrame
{
  x = self->_activeFrame.origin.x;
  y = self->_activeFrame.origin.y;
  width = self->_activeFrame.size.width;
  height = self->_activeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_initMetalAndSetupDisplayLink:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[SUICFlamesViewMetal _initMetalAndSetupDisplayLink:]";
  _os_log_error_impl(&dword_1C432B000, log, OS_LOG_TYPE_ERROR, "%s Unable to setup pipeline library", &v1, 0xCu);
}

- (void)_initMetalAndSetupDisplayLink:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[SUICFlamesViewMetal _initMetalAndSetupDisplayLink:]";
  _os_log_error_impl(&dword_1C432B000, log, OS_LOG_TYPE_ERROR, "%s Metal is not supported on this device", &v1, 0xCu);
}

@end