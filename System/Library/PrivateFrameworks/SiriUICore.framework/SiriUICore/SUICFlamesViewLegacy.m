@interface SUICFlamesViewLegacy
+ (BOOL)_supportsAdaptiveFramerate;
+ (id)_indexCache;
+ (void)prewarmShadersForScreen:(id)a3 activeFrame:(CGRect)a4 fidelity:(int64_t)a5;
+ (void)prewarmShadersForScreen:(id)a3 initialFrame:(CGRect)a4 activeFrame:(CGRect)a5 fidelity:(int64_t)a6 prewarmInBackground:(BOOL)a7;
+ (void)prewarmShadersForScreen:(id)a3 size:(CGSize)a4 fidelity:(int64_t)a5 prewarmInBackground:(BOOL)a6;
+ (void)setIndexCacheSize:(unint64_t)a3;
- (BOOL)_deviceNeeds2xFlamesWithCurrentScale:(double)a3;
- (BOOL)_initGLAndSetupDisplayLink:(BOOL)a3;
- (BOOL)_resizeFromLayer:(id)a3;
- (BOOL)_setCurrentContext;
- (BOOL)_setupFramebuffer;
- (BOOL)_setupShaders;
- (BOOL)_setupVertexBuffer;
- (CGRect)activeFrame;
- (SUICFlamesViewLegacy)initWithFrame:(CGRect)a3 screen:(id)a4 fidelity:(int64_t)a5;
- (SUICFlamesViewLegacy)initWithFrame:(CGRect)a3 screenScale:(double)a4 fidelity:(int64_t)a5;
- (SUICFlamesViewProvidingDelegate)flamesDelegate;
- (double)_currentDisplayScale;
- (float)_currentMicPowerLevel;
- (float32x2_t)_predeterminedVertexPositionForAuraWithPolarVertex:(uint64_t)a1;
- (int)_generateIndicesForNumCircleShapes:(int)a3 withMaxSubdivisionLevel:(float)a4 startingWithNumSubdivisionLevel:(float)a5 forIndices:(unsigned int *)a6 atStartIndex:(int)a7 withFill:(BOOL)a8 withCullingForAura:(BOOL)a9 forVertices:(id *)a10;
- (void)_cleanupGL;
- (void)_prewarmShaders;
- (void)_reduceMotionStatusChanged:(id)a3;
- (void)_restoreCurrentContext;
- (void)_setPreferredFramesPerSecond;
- (void)_setValuesForFidelity:(int64_t)a3;
- (void)_setupDisplayLink;
- (void)_setupVertexBuffer;
- (void)_tearDownDisplayLink;
- (void)_updateCurveLayer:(id)a3;
- (void)_updateDisplayLinkPausedState;
- (void)_updateOrthoProjection;
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
- (void)setRenderInBackground:(BOOL)a3;
- (void)setRenderingEnabled:(BOOL)a3 forReason:(id)a4;
- (void)setState:(int64_t)a3;
- (void)stopRenderingAndCleanupGL;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SUICFlamesViewLegacy

- (void)_setValuesForFidelity:(int64_t)a3
{
  if (self->_mode == 1)
  {
    self->_maxVertexCircles = 1;
    [(SUICFlamesViewLegacy *)self _currentDisplayScale];
    v5 = v4 * 6.0;
    v6 = v4 * self->_activeFrame.size.width * self->_horizontalScaleFactor;
    *&v4 = v6;
    self->_maxSubdivisionLevel = logf(roundf((fmaxf(v5, *&v4) / v5) / 3.0) * 4.0) / 0.69315;
    v7 = v6 / ([(SUICFlamesViewLegacy *)self _numVerticesPerCircle]* 0.25);
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

- (SUICFlamesViewLegacy)initWithFrame:(CGRect)a3 screen:(id)a4 fidelity:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v40.receiver = self;
  v40.super_class = SUICFlamesViewLegacy;
  v13 = [(SUICFlamesViewLegacy *)&v40 initWithFrame:x, y, width, height];
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
    [(SUICFlamesViewLegacy *)v13 setMode:0];
    v13->_fidelity = a5;
    [(SUICFlamesViewLegacy *)v13 _setValuesForFidelity:a5];
    [(SUICFlamesViewLegacy *)v13 bounds];
    v13->_activeFrame.origin.x = v25;
    v13->_activeFrame.origin.y = v26;
    v13->_currentContextCount = 0;
    v13->_activeFrame.size.width = v27;
    v13->_activeFrame.size.height = v28;
    v13->_horizontalScaleFactor = 1.0;
    v13->_frameRateScalingFactor = 1.0;
    v29 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:2];
    eaglContext = v13->_eaglContext;
    v13->_eaglContext = v29;

    if (!v13->_eaglContext || (v31 = [(SUICFlamesViewLegacy *)v13 _setCurrentContext], [(SUICFlamesViewLegacy *)v13 _restoreCurrentContext], !v31))
    {
      v38 = 0;
      goto LABEL_7;
    }

    v13->_state = 0;
    v13->_dictationRedColor = 1.0;
    v13->_dictationGreenColor = 1.0;
    v13->_dictationBlueColor = 1.0;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    flameGroups = v13->_flameGroups;
    v13->_flameGroups = v32;

    v34 = objc_alloc_init(SUICFlameGroup);
    currentFlameGroup = v13->_currentFlameGroup;
    v13->_currentFlameGroup = v34;

    [(NSMutableArray *)v13->_flameGroups addObject:v13->_currentFlameGroup];
    v36 = [MEMORY[0x1E695DFA8] set];
    renderingDisabledReasons = v13->_renderingDisabledReasons;
    v13->_renderingDisabledReasons = v36;
  }

  v38 = v13;
LABEL_7:

  return v38;
}

- (SUICFlamesViewLegacy)initWithFrame:(CGRect)a3 screenScale:(double)a4 fidelity:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  v12 = [(SUICFlamesViewLegacy *)self initWithFrame:v11 screen:a5 fidelity:x, y, width, height];

  return v12;
}

- (void)dealloc
{
  [(SUICFlamesViewLegacy *)self _tearDownDisplayLink];
  [(SUICFlamesViewLegacy *)self _cleanupGL];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(SUICFlamesViewLegacy *)self _restoreCurrentContext];
  eaglContext = self->_eaglContext;
  self->_eaglContext = 0;

  v5.receiver = self;
  v5.super_class = SUICFlamesViewLegacy;
  [(SUICFlamesViewLegacy *)&v5 dealloc];
}

- (void)didMoveToSuperview
{
  v3 = [(SUICFlamesViewLegacy *)self superview];

  if (v3)
  {
    [(SUICFlamesViewLegacy *)self _setupDisplayLink];
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(SUICFlamesViewLegacy *)self setBackgroundColor:v4];

    [(SUICFlamesViewLegacy *)self setUserInteractionEnabled:0];
  }

  else
  {

    [(SUICFlamesViewLegacy *)self _tearDownDisplayLink];
  }
}

- (void)setFlamesDelegate:(id)a3
{
  v4 = a3;
  obj = v4;
  if (!v4 && self->_displayLink)
  {
    [(SUICFlamesViewLegacy *)self _tearDownDisplayLink];
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

    [(SUICFlamesViewLegacy *)self _setPreferredFramesPerSecond];
    [(SUICFlamesViewLegacy *)self _updateDisplayLinkPausedState];
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
  if (_supportsAdaptiveFramerate_onceToken != -1)
  {
    +[SUICFlamesViewLegacy _supportsAdaptiveFramerate];
  }

  return _supportsAdaptiveFramerate_supportsAdaptiveFramerate;
}

uint64_t __50__SUICFlamesViewLegacy__supportsAdaptiveFramerate__block_invoke()
{
  result = MGGetBoolAnswer();
  _supportsAdaptiveFramerate_supportsAdaptiveFramerate = result;
  return result;
}

- (void)_setPreferredFramesPerSecond
{
  if (self->_flamesPaused)
  {
    v3 = 10;
    goto LABEL_21;
  }

  if ([objc_opt_class() _supportsAdaptiveFramerate] && (state = self->_state, state <= 4))
  {
    v3 = qword_1C435BBF0[state];
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

  else
  {
    if (!self->_reduceFrameRate)
    {
      goto LABEL_21;
    }

    if (mode != 2)
    {
      if (mode == 1)
      {
        v3 = 30;
        goto LABEL_21;
      }

      if (mode)
      {
        goto LABEL_21;
      }
    }

    if (self->_state != 2)
    {
      v3 = 30;
    }
  }

LABEL_21:
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
      [(SUICFlamesViewLegacy *)self _setValuesForFidelity:0];
    }

    if (self->_isInitialized)
    {

      [(SUICFlamesViewLegacy *)self _initGLAndSetupDisplayLink:1];
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SUICFlamesViewLegacy;
  [(SUICFlamesViewLegacy *)&v5 setHidden:?];
  if (v3)
  {
    [(SUICFlamesViewLegacy *)self _tearDownDisplayLink];
  }

  else if (self->_isInitialized)
  {
    [(SUICFlamesViewLegacy *)self _setupDisplayLink];
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
  v9.super_class = SUICFlamesViewLegacy;
  [(SUICFlamesViewLegacy *)&v9 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!self->_hasCustomActiveFrame)
  {
    [(SUICFlamesViewLegacy *)self bounds];
    self->_activeFrame.origin.x = v4;
    self->_activeFrame.origin.y = v5;
    self->_activeFrame.size.width = v6;
    self->_activeFrame.size.height = v7;
  }

  if (self->_mode == 1)
  {
    [(SUICFlamesViewLegacy *)self _setValuesForFidelity:0];
    if (self->_isInitialized)
    {
      [(SUICFlamesViewLegacy *)self _initGLAndSetupDisplayLink:1];
    }
  }

  overlayImageView = self->_overlayImageView;
  [(SUICFlamesViewLegacy *)self frame];
  [(UIImageView *)overlayImageView setFrame:?];
}

- (void)setBounds:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUICFlamesViewLegacy;
  [(SUICFlamesViewLegacy *)&v8 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!self->_hasCustomActiveFrame)
  {
    [(SUICFlamesViewLegacy *)self bounds];
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
    [(SUICFlamesViewLegacy *)self _setValuesForFidelity:0];
    if (self->_isInitialized)
    {

      [(SUICFlamesViewLegacy *)self _initGLAndSetupDisplayLink:1];
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
    [(SUICFlamesViewLegacy *)self frame];
    [(UIImageView *)v7 setFrame:?];
    [(SUICFlamesViewLegacy *)self addSubview:self->_overlayImageView];
  }

  else
  {
    [(UIImageView *)self->_overlayImageView removeFromSuperview];
    v8 = self->_overlayImageView;
    self->_overlayImageView = 0;
  }
}

- (void)setRenderInBackground:(BOOL)a3
{
  self->_renderInBackground = a3;
  v3 = a3;
  [(EAGLContext *)self->_eaglContext setParameter:321 to:&v3];
}

- (void)setFlamesPaused:(BOOL)a3
{
  self->_flamesPaused = a3;
  [(SUICFlamesViewLegacy *)self _setPreferredFramesPerSecond];

  [(SUICFlamesViewLegacy *)self _updateDisplayLinkPausedState];
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
  v18 = [[SUICFlamesViewLegacy alloc] initWithFrame:v17 screen:a6 fidelity:v16, v15, v14, v13];

  [(SUICFlamesViewLegacy *)v18 setRenderInBackground:v7];
  [(SUICFlamesViewLegacy *)v18 setActiveFrame:x, y, width, height];
  [(SUICFlamesViewLegacy *)v18 _prewarmShaders];
}

- (void)setHorizontalScaleFactor:(double)a3
{
  self->_horizontalScaleFactor = a3;
  if (a3 != 0.0)
  {
    v4 = [(SUICFlamesViewLegacy *)self layer];
    CGAffineTransformMakeScale(&v5, 1.0 / self->_horizontalScaleFactor, 1.0);
    [v4 setAffineTransform:&v5];

    [(SUICFlamesViewLegacy *)self _setValuesForFidelity:self->_fidelity];
  }
}

- (void)_prewarmShaders
{
  self->_isInitialized = [(SUICFlamesViewLegacy *)self _initGLAndSetupDisplayLink:0];
  displayLink = self->_displayLink;

  [(SUICFlamesViewLegacy *)self _updateCurveLayer:displayLink];
}

- (void)resetAndReinitialize:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(SUICFlamesViewLegacy *)self _initGLAndSetupDisplayLink:1];
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
  [(SUICFlamesViewLegacy *)self _updateCurveLayer:self->_displayLink];
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
    if (!self->_renderInBackground)
    {
      glFinish();
    }
  }

  if ([(SUICFlamesViewLegacy *)self isRenderingEnabled])
  {
    [(SUICFlamesViewLegacy *)self setNeedsLayout];
  }
}

- (BOOL)_setCurrentContext
{
  v3 = [MEMORY[0x1E6977FE8] currentContext];
  v4 = v3;
  currentContextCount = self->_currentContextCount;
  if (currentContextCount <= 0 && v3 != self->_eaglContext)
  {
    objc_storeStrong(&self->_previousContext, v3);
    currentContextCount = self->_currentContextCount;
  }

  self->_currentContextCount = currentContextCount + 1;
  v6 = [MEMORY[0x1E6977FE8] setCurrentContext:self->_eaglContext];

  return v6;
}

- (void)_restoreCurrentContext
{
  currentContextCount = self->_currentContextCount;
  if (currentContextCount <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_currentContextCount;
  }

  self->_currentContextCount = v3 - 1;
  if (currentContextCount <= 1)
  {
    [MEMORY[0x1E6977FE8] setCurrentContext:self->_previousContext];
  }
}

- (void)_reduceMotionStatusChanged:(id)a3
{
  self->_reduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if (!self->_mode)
  {
    self->_shadersAreCompiled = 0;

    [(SUICFlamesViewLegacy *)self resetAndReinitialize:1];
  }
}

- (void)_setupDisplayLink
{
  if (([(SUICFlamesViewLegacy *)self isHidden]& 1) == 0 && !self->_displayLink)
  {
    v3 = [(UIScreen *)self->_screen displayLinkWithTarget:self selector:sel__updateCurveLayer_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x1E695DA28]];

    [(SUICFlamesViewLegacy *)self _setPreferredFramesPerSecond];

    [(SUICFlamesViewLegacy *)self _updateDisplayLinkPausedState];
  }
}

- (BOOL)_setupFramebuffer
{
  result = !glGetError() && (glGenRenderbuffers(1, &self->_renderbufferHandle), !glGetError()) && (glBindFramebuffer(0x8D40u, self->_framebufferHandle), !glGetError()) && (glBindRenderbuffer(0x8D41u, self->_renderbufferHandle), !glGetError()) && (eaglContext = self->_eaglContext, [(SUICFlamesViewLegacy *)self layer], v4 = glGenFramebuffers(1, &self->_framebufferHandle);
  return result;
}

- (BOOL)_setupShaders
{
  if (self->_shadersAreCompiled)
  {
    return 1;
  }

  flameProgramHandle = self->_flameProgramHandle;
  if (flameProgramHandle)
  {
    glDeleteProgram(flameProgramHandle);
    self->_flameProgramHandle = 0;
  }

  auraProgramHandle = self->_auraProgramHandle;
  if (auraProgramHandle)
  {
    glDeleteProgram(auraProgramHandle);
    self->_auraProgramHandle = 0;
  }

  v6 = glCreateShader(0x8B31u);
  v7 = glCreateShader(0x8B30u);
  v8 = v7;
  v9 = 0;
  params = 0;
  if (v6 && v7)
  {
    glDisable(0xB71u);
    if (glGetError() || (glDisable(0xBD0u), glGetError()) || (glEnable(0xBE2u), glGetError()))
    {
      v9 = 0;
    }

    else
    {
      glBlendFunc(0x302u, 0x303u);
      v9 = glGetError() == 0;
    }
  }

  mode = self->_mode;
  if (mode == 2)
  {
    if (!v9)
    {
      goto LABEL_55;
    }

    glShaderSource(v6, 1, siriTrainingVertexShader, 0);
    if (glGetError())
    {
      goto LABEL_55;
    }

    glCompileShader(v6);
    if (glGetError())
    {
      goto LABEL_55;
    }

    glGetShaderiv(v6, 0x8B81u, &params);
    if (glGetError())
    {
      goto LABEL_55;
    }

    v19 = &siriTrainingFragmentShader;
    goto LABEL_53;
  }

  if (mode == 1)
  {
    if (!v9)
    {
      goto LABEL_55;
    }

    glShaderSource(v6, 1, siriDictationVertexShader, 0);
    if (glGetError())
    {
      goto LABEL_55;
    }

    glCompileShader(v6);
    if (glGetError())
    {
      goto LABEL_55;
    }

    glGetShaderiv(v6, 0x8B81u, &params);
    if (glGetError())
    {
      goto LABEL_55;
    }

    v19 = siriDictationFragmentShader;
LABEL_53:
    glShaderSource(v8, 1, v19, 0);
    if (!glGetError())
    {
      glCompileShader(v8);
      if (!glGetError())
      {
        v15 = 0;
        v13 = v8;
        goto LABEL_33;
      }
    }

LABEL_55:
    v13 = 0;
    goto LABEL_56;
  }

  if (mode)
  {
    goto LABEL_34;
  }

  if (v9)
  {
    if (self->_reduceMotionEnabled)
    {
      v11 = siriFlameAccessibilityVertexShader;
    }

    else
    {
      v11 = siriFlameVertexShader;
    }

    glShaderSource(v6, 1, v11, 0);
    if (glGetError() || (glCompileShader(v6), glGetError()) || (glGetShaderiv(v6, 0x8B81u, &params), glGetError()) || (glShaderSource(v8, 1, siriFlameFragmentShader, 0), glGetError()) || (glCompileShader(v8), glGetError()))
    {
      v9 = 0;
    }

    else
    {
      glGetShaderiv(v8, 0x8B81u, &params);
      v9 = glGetError() == 0;
    }
  }

  if (!self->_showAura)
  {
LABEL_34:
    v13 = 0;
    goto LABEL_35;
  }

  v12 = glCreateShader(0x8B30u);
  v13 = v12;
  v14 = !v9;
  if (!v12)
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_56;
  }

  glShaderSource(v12, 1, siriAuraFragmentShader, 0);
  if (glGetError())
  {
    goto LABEL_56;
  }

  glCompileShader(v13);
  if (glGetError())
  {
    goto LABEL_56;
  }

  v15 = v13;
LABEL_33:
  glGetShaderiv(v13, 0x8B81u, &params);
  v9 = glGetError() == 0;
  v13 = v15;
LABEL_35:
  v16 = 0;
  if (!v9)
  {
    goto LABEL_57;
  }

  if (!params)
  {
    goto LABEL_57;
  }

  self->_flameProgramHandle = glCreateProgram();
  Error = glGetError();
  v16 = 0;
  if (Error)
  {
    goto LABEL_57;
  }

  v18 = self->_flameProgramHandle;
  if (!v18)
  {
    goto LABEL_57;
  }

  glAttachShader(v18, v6);
  if (!glGetError())
  {
    glAttachShader(self->_flameProgramHandle, v8);
    if (!glGetError())
    {
      glLinkProgram(self->_flameProgramHandle);
      if (!glGetError())
      {
        glGetProgramiv(self->_flameProgramHandle, 0x8B82u, &params);
        v16 = glGetError() == 0;
        goto LABEL_57;
      }
    }
  }

LABEL_56:
  v16 = 0;
LABEL_57:
  if (params)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  glClear(0x4000u);
  width = self->_activeFrame.size.width;
  v22 = self->_horizontalScaleFactor * width;
  x = self->_activeFrame.origin.x;
  y = self->_activeFrame.origin.y;
  *&v22 = v22;
  height = self->_activeFrame.size.height;
  glVertexAttrib4f(2u, x, y, *&v22, height);
  viewWidth = self->_viewWidth;
  viewHeight = self->_viewHeight;
  [(SUICFlamesViewLegacy *)self _currentDisplayScale];
  v29 = v28;
  glVertexAttrib4f(1u, viewWidth, viewHeight, v29, self->_dictationUnitSize);
  glVertexAttrib4f(4u, 0.0, 0.0, 0.0, 0.0);
  glVertexAttrib4f(3u, 0.0, 0.0, 0.0, 0.0);
  if (self->_mode == 1)
  {
    dictationRedColor = self->_dictationRedColor;
    dictationGreenColor = self->_dictationGreenColor;
    dictationBlueColor = self->_dictationBlueColor;
    glVertexAttrib3f(5u, dictationRedColor, dictationGreenColor, dictationBlueColor);
  }

  shader = v13;
  if (v13)
  {
    if (v20)
    {
      self->_auraProgramHandle = glCreateProgram();
      v33 = 0;
      if (glGetError())
      {
        goto LABEL_70;
      }

      v34 = self->_auraProgramHandle;
      if (!v34)
      {
        goto LABEL_70;
      }

      glAttachShader(v34, v6);
      if (!glGetError())
      {
        glAttachShader(self->_auraProgramHandle, v13);
        if (!glGetError())
        {
          glLinkProgram(self->_auraProgramHandle);
          if (!glGetError())
          {
            glGetProgramiv(self->_auraProgramHandle, 0x8B82u, &params);
            v33 = 0;
            if (!glGetError() && params)
            {
              glUseProgram(self->_auraProgramHandle);
              v33 = glGetError() == 0;
            }

            goto LABEL_70;
          }
        }
      }
    }

    v33 = 0;
LABEL_70:
    v35 = v6;
    AttribLocation = glGetAttribLocation(self->_auraProgramHandle, "in_Polar");
    v37 = glGetAttribLocation(self->_auraProgramHandle, "in_FittedBounds");
    v38 = glGetAttribLocation(self->_auraProgramHandle, "in_Time_ZTime_Height_Alpha");
    v39 = glGetAttribLocation(self->_auraProgramHandle, "in_States");
    v40 = glGetAttribLocation(self->_auraProgramHandle, "in_ViewportDim_ScreenScale_UnitLength");
    glDrawArrays(4u, 0, 3);
    v41 = 0;
    if (!v33 || AttribLocation || v37 != 2 || v38 != 3 || v39 != 4)
    {
      v6 = v35;
      goto LABEL_81;
    }

    v6 = v35;
    if (v40 != 1)
    {
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  if (!v20)
  {
    v41 = 0;
    goto LABEL_81;
  }

LABEL_78:
  glUseProgram(self->_flameProgramHandle);
  v41 = glGetError() == 0;
LABEL_81:
  if (glGetAttribLocation(self->_flameProgramHandle, "in_Polar"))
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  if (glGetAttribLocation(self->_flameProgramHandle, "in_FittedBounds") != 2)
  {
    v42 = 0;
  }

  if (glGetAttribLocation(self->_flameProgramHandle, "in_Time_ZTime_Height_Alpha") != 3)
  {
    v42 = 0;
  }

  if (glGetAttribLocation(self->_flameProgramHandle, "in_States") != 4)
  {
    v42 = 0;
  }

  v2 = glGetAttribLocation(self->_flameProgramHandle, "in_ViewportDim_ScreenScale_UnitLength") == 1 && v42;
  if (self->_mode == 1 && glGetAttribLocation(self->_flameProgramHandle, "in_FragmentColor") != 5)
  {
    v2 = 0;
  }

  glDrawArrays(4u, 0, 3);
  if (v6)
  {
    glDeleteShader(v6);
  }

  if (v8)
  {
    glDeleteShader(v8);
  }

  if (shader)
  {
    glDeleteShader(shader);
  }

  if (v2)
  {
    self->_shadersAreCompiled = 1;
  }

  else
  {
    v43 = self->_flameProgramHandle;
    if (v43)
    {
      glDeleteProgram(v43);
      self->_flameProgramHandle = 0;
    }

    v44 = self->_auraProgramHandle;
    if (v44)
    {
      glDeleteProgram(v44);
      self->_auraProgramHandle = 0;
    }
  }

  return v2;
}

- (float32x2_t)_predeterminedVertexPositionForAuraWithPolarVertex:(uint64_t)a1
{
  v2.f64[0] = *(a1 + 704) * *(a1 + 656);
  v2.f64[1] = *(a1 + 712);
  v3.f32[0] = *(a1 + 536);
  v3.f32[1] = *(a1 + 540);
  v4 = vdiv_f32(vmla_f32(vcvt_f32_f64(*(a1 + 688)), 0x3F0000003F000000, vcvt_f32_f64(v2)), v3);
  __asm { FMOV            V3.2S, #-1.0 }

  v10 = vmla_f32(_D3, 0x4000000040000000, v4);
  v11 = vneg_f32(v10);
  v12 = vsub_f32(_D3, v10);
  v15 = sqrtf(vaddv_f32(vmul_f32(v12, v12))) * *&a2;
  v13 = __sincosf_stret(*(&a2 + 1));
  return vmla_n_f32(v11, __PAIR64__(LODWORD(v13.__sinval), LODWORD(v13.__cosval)), v15);
}

- (int)_generateIndicesForNumCircleShapes:(int)a3 withMaxSubdivisionLevel:(float)a4 startingWithNumSubdivisionLevel:(float)a5 forIndices:(unsigned int *)a6 atStartIndex:(int)a7 withFill:(BOOL)a8 withCullingForAura:(BOOL)a9 forVertices:(id *)a10
{
  v88 = a9;
  v10 = a8;
  v11 = *&a7;
  v15 = [(SUICFlamesViewLegacy *)self _numVerticesPerCircle];
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
      v53 = ((v47 / v49) * v28) % v15;
      v54 = v53 + v91;
      ++v47;
      v55 = v53 + v90;
      v56 = (((v50 + v52) / v49) * v28) % v15 + v90;
      v57 = ((((v49 + v52) - v50) / v49) * v28) % v15 + v90;
      v94 = v56;
      if (v35)
      {
        v89 = v16;
        [(SUICFlamesViewLegacy *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 2 * v54)];
        v59 = vabs_f32(v58);
        [(SUICFlamesViewLegacy *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 2 * (((v28 * v47) / v49) % v15 + v91))];
        v93 = vabs_f32(v60);
        [(SUICFlamesViewLegacy *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 2 * v55)];
        v62 = vabs_f32(v61);
        [(SUICFlamesViewLegacy *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 2 * v56)];
        v64 = vabs_f32(v63);
        [(SUICFlamesViewLegacy *)self _predeterminedVertexPositionForAuraWithPolarVertex:*(a10 + 2 * v57)];
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
      *v68 = v54;
      v68[1] = v57;
      v68[2] = v55;
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
      *v72 = v54;
      v72[1] = v55;
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
        *v78 = v54;
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
  v39[1] = *MEMORY[0x1E69E9840];
  self->_numVertices = self->_maxVertexCircles * [(SUICFlamesViewLegacy *)self _numVerticesPerCircle];
  v3 = MEMORY[0x1EEE9AC00]();
  v6 = &v39[-2 * v5];
  v8 = *(&self->super.super.super.isa + v7);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = v3;
    v12 = vdupq_n_s64(0x401921FB54442D18uLL);
    do
    {
      ++v10;
      if (v3 >= 1)
      {
        v13 = 0;
        mode = self->_mode;
        v15 = &v6[2 * v9];
        do
        {
          if (mode == 1)
          {
            v16 = v13 & 1;
            v17 = v13++ | 1;
            v18.f32[0] = v17 / v11;
            v19 = v13 + (v16 - 1);
            v18.i32[1] = fminf((v19 / v11) - floorf(v19 / v11), 1.0);
            v20 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v18), v12));
          }

          else
          {
            v21 = (v13 / v11) * 6.28318531;
            *&v21 = v21;
            ++v13;
            v20 = vdup_lane_s32(*&v21, 0);
          }

          *v4.i32 = v10 / v8;
          *&v22 = vzip1_s32(v4, v20);
          v20.i32[0] = v4.i32[0];
          *(&v22 + 1) = v20;
          *v15 = v22;
          v15 += 2;
          ++v9;
        }

        while (v13 != v3);
      }
    }

    while (v10 != v8);
  }

  v39[0] = 0;
  v23 = SUICGetIndexCacheEntryKey(self->_fidelity, self->_mode, self->_viewWidth, self->_viewHeight, self->_activeFrame.origin.x, self->_activeFrame.origin.y, self->_activeFrame.size.width, self->_activeFrame.size.height, self->_horizontalScaleFactor);
  v24 = [objc_opt_class() _indexCache];
  v25 = [v24 objectForKey:v23];

  v26 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    [(SUICFlamesViewLegacy *)v25 _setupVertexBuffer];
    if (v25)
    {
      goto LABEL_12;
    }

LABEL_14:
    *&v27 = self->_auraMaxSubdivisionLevel;
    *&v28 = self->_auraMinSubdivisionLevel;
    v29 = [(SUICFlamesViewLegacy *)self _generateIndicesForNumCircleShapes:self->_auraVertexCircles withMaxSubdivisionLevel:v39 startingWithNumSubdivisionLevel:0 forIndices:1 atStartIndex:0 withFill:v6 withCullingForAura:v27 forVertices:v28];
    self->_numAuraIndices = v29;
    *&v30 = self->_auraMaxSubdivisionLevel;
    *&v31 = self->_auraMinSubdivisionLevel;
    v32 = [(SUICFlamesViewLegacy *)self _generateIndicesForNumCircleShapes:self->_auraVertexCircles withMaxSubdivisionLevel:v39 startingWithNumSubdivisionLevel:v29 forIndices:1 atStartIndex:1 withFill:v6 withCullingForAura:v30 forVertices:v31];
    self->_numAuraIndicesCulled = v32;
    *&v33 = self->_maxSubdivisionLevel;
    LODWORD(v34) = LODWORD(v33);
    v35 = [(SUICFlamesViewLegacy *)self _generateIndicesForNumCircleShapes:1 withMaxSubdivisionLevel:v39 startingWithNumSubdivisionLevel:v32 forIndices:1 atStartIndex:0 withFill:v6 withCullingForAura:v33 forVertices:v34];
    self->_numWaveIndices = v35;
    self->_numWaveIndices = v35 - self->_numAuraIndicesCulled;
    self->_numAuraIndicesCulled -= self->_numAuraIndices;
    v25 = objc_alloc_init(SUICGLIndexCacheEntry);
    [(SUICGLIndexCacheEntry *)v25 setNumAuraIndices:self->_numAuraIndices];
    [(SUICGLIndexCacheEntry *)v25 setNumAuraIndicesCulled:self->_numAuraIndicesCulled];
    [(SUICGLIndexCacheEntry *)v25 setNumWaveIndices:self->_numWaveIndices];
    [(SUICGLIndexCacheEntry *)v25 setGl_indices:v39[0]];
    v36 = [objc_opt_class() _indexCache];
    [v36 setObject:v25 forKey:v23];

    goto LABEL_15;
  }

  if (!v25)
  {
    goto LABEL_14;
  }

LABEL_12:
  self->_numAuraIndices = [(SUICGLIndexCacheEntry *)v25 numAuraIndices];
  self->_numAuraIndicesCulled = [(SUICGLIndexCacheEntry *)v25 numAuraIndicesCulled];
  self->_numWaveIndices = [(SUICGLIndexCacheEntry *)v25 numWaveIndices];
  v39[0] = [(SUICGLIndexCacheEntry *)v25 gl_indices];
LABEL_15:
  glGenVertexArraysOES();
  if (glGetError() || (glBindVertexArrayOES(), glGetError()) || (glGenBuffers(1, &self->_vertexBufferHandle), glGetError()) || (glGenBuffers(1, &self->_elementArrayHandle), glGetError()) || (glBindBuffer(0x8892u, self->_vertexBufferHandle), glGetError()) || (glBufferData(0x8892u, 16 * self->_numVertices, v6, 0x88E4u), glGetError()) || (glBindBuffer(0x8893u, self->_elementArrayHandle), glGetError()) || (glBufferData(0x8893u, 4 * (self->_numAuraIndicesCulled + self->_numAuraIndices + self->_numWaveIndices), v39[0], 0x88E4u), glGetError()) || (glVertexAttribPointer(0, 4, 0x1406u, 0, 16, 0), glGetError()))
  {
    v37 = 0;
  }

  else
  {
    glEnableVertexAttribArray(0);
    v37 = glGetError() == 0;
  }

  return v37;
}

- (BOOL)_initGLAndSetupDisplayLink:(BOOL)a3
{
  v3 = a3;
  [(SUICFlamesViewLegacy *)self _cleanupGL];
  v5 = [(SUICFlamesViewLegacy *)self layer];
  [v5 setOpaque:0];
  [(SUICFlamesViewLegacy *)self _currentDisplayScale];
  [v5 setContentsScale:?];
  [(SUICFlamesViewLegacy *)self _setCurrentContext];
  if ([(SUICFlamesViewLegacy *)self _setupFramebuffer]&& [(SUICFlamesViewLegacy *)self _setupVertexBuffer])
  {
    v6 = [(SUICFlamesViewLegacy *)self _setupShaders];
    glClearColor(0.0, 0.0, 0.0, 0.0);
    if (v6 && v3)
    {
      [(SUICFlamesViewLegacy *)self _setupDisplayLink];
    }
  }

  else
  {
    glClearColor(0.0, 0.0, 0.0, 0.0);
    LOBYTE(v6) = 0;
  }

  [(SUICFlamesViewLegacy *)self _restoreCurrentContext];

  return v6;
}

- (void)_cleanupGL
{
  if (self->_eaglContext)
  {
    [(SUICFlamesViewLegacy *)self _setCurrentContext];
    flameProgramHandle = self->_flameProgramHandle;
    if (flameProgramHandle)
    {
      glDeleteProgram(flameProgramHandle);
      self->_flameProgramHandle = 0;
    }

    auraProgramHandle = self->_auraProgramHandle;
    if (auraProgramHandle)
    {
      glDeleteProgram(auraProgramHandle);
      self->_auraProgramHandle = 0;
    }

    if (self->_elementArrayHandle)
    {
      glDeleteBuffers(1, &self->_elementArrayHandle);
      self->_elementArrayHandle = 0;
    }

    if (self->_vertexBufferHandle)
    {
      glDeleteBuffers(1, &self->_vertexBufferHandle);
      self->_vertexBufferHandle = 0;
    }

    if (self->_vertexArrayObjectHandle)
    {
      glDeleteBuffers(1, &self->_vertexArrayObjectHandle);
      self->_vertexArrayObjectHandle = 0;
    }

    if (self->_framebufferHandle)
    {
      glDeleteFramebuffers(1, &self->_framebufferHandle);
      self->_framebufferHandle = 0;
    }

    if (self->_renderbufferHandle)
    {
      glDeleteRenderbuffers(1, &self->_renderbufferHandle);
      self->_renderbufferHandle = 0;
    }

    glFinish();

    [(SUICFlamesViewLegacy *)self _restoreCurrentContext];
  }
}

- (BOOL)_resizeFromLayer:(id)a3
{
  v4 = a3;
  if ([(SUICFlamesViewLegacy *)self isRenderingEnabled])
  {
    glBindRenderbuffer(0x8D41u, self->_renderbufferHandle);
    v5 = !glGetError() && [(EAGLContext *)self->_eaglContext renderbufferStorage:36161 fromDrawable:v4]&& (glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &self->_viewWidth), !glGetError()) && (glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, &self->_viewHeight), !glGetError()) && glCheckFramebufferStatus(0x8D40u) == 36053;
    glBindRenderbuffer(0x8D41u, self->_renderbufferHandle);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateOrthoProjection
{
  if ([(SUICFlamesViewLegacy *)self isRenderingEnabled])
  {
    viewWidth = self->_viewWidth;
    viewHeight = self->_viewHeight;

    glViewport(0, 0, viewWidth, viewHeight);
  }
}

- (void)layoutSubviews
{
  [(SUICFlamesViewLegacy *)self _setCurrentContext];
  if (self->_isInitialized)
  {
    v3 = [(SUICFlamesViewLegacy *)self layer];
    [(SUICFlamesViewLegacy *)self _resizeFromLayer:v3];
  }

  else
  {
    self->_isInitialized = [(SUICFlamesViewLegacy *)self _initGLAndSetupDisplayLink:1];
  }

  [(SUICFlamesViewLegacy *)self _updateOrthoProjection];

  [(SUICFlamesViewLegacy *)self _restoreCurrentContext];
}

- (double)_currentDisplayScale
{
  v3 = [(SUICFlamesViewLegacy *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  if (v5 < 1.0)
  {
    [(UIScreen *)self->_screen scale];
    v5 = v6;
  }

  v7 = [(SUICFlamesViewLegacy *)self _deviceNeeds2xFlamesWithCurrentScale:v5];
  result = 2.0;
  if (!v7)
  {
    return v5;
  }

  return result;
}

- (BOOL)_deviceNeeds2xFlamesWithCurrentScale:(double)a3
{
  if (_deviceNeeds2xFlamesWithCurrentScale__onceToken != -1)
  {
    [SUICFlamesViewLegacy _deviceNeeds2xFlamesWithCurrentScale:];
  }

  return (a3 == 3.0) & _deviceNeeds2xFlamesWithCurrentScale__needsLowerQualityFlames;
}

uint64_t __61__SUICFlamesViewLegacy__deviceNeeds2xFlamesWithCurrentScale___block_invoke()
{
  result = MGGetProductType();
  _deviceNeeds2xFlamesWithCurrentScale__needsLowerQualityFlames = result == 1737882206;
  return result;
}

- (void)_tearDownDisplayLink
{
  self->_state = 4;
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)stopRenderingAndCleanupGL
{
  [(SUICFlamesViewLegacy *)self _tearDownDisplayLink];

  [(SUICFlamesViewLegacy *)self _cleanupGL];
}

- (void)_updateCurveLayer:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_currentFlameGroup || !self->_isInitialized || ![(SUICFlamesViewLegacy *)self isRenderingEnabled])
  {
    goto LABEL_74;
  }

  v5 = [(SUICFlamesViewLegacy *)self layer];
  if (![v5 isDrawableAvailable])
  {
    goto LABEL_73;
  }

  v6 = [(SUICFlameGroup *)self->_currentFlameGroup transitionPhasePtr];
  v7 = [(SUICFlameGroup *)self->_currentFlameGroup stateModifiersPtr];
  v8.f32[0] = *v6;
  LODWORD(v9) = 1.0;
  v80 = *v6;
  if (*v6 >= 1.0)
  {
    goto LABEL_17;
  }

  v9 = v80;
  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      v9 = v9 + self->_frameRateScalingFactor * 0.02;
      *&v9 = v9;
      *&v9 = fminf(*&v9, 1.0);
      *v6 = *&v9;
      v8 = vmlaq_n_f32(*v7, vsubq_f32(xmmword_1C435BBB0, *v7), *&v9);
      *v7 = v8;
    }

    else if (state == 4)
    {
      v8.i64[0] = *&self->_frameRateScalingFactor;
      v9 = v9 + *v8.i64 * 0.03;
      *&v9 = v9;
      v8.i32[0] = 1.0;
      *&v9 = fminf(*&v9, 1.0);
      *v6 = *&v9;
      *v7 = vmlaq_n_f32(*v7, vsubq_f32(0, *v7), *&v9);
      *&v9 = *v6;
      if (*v6 == 1.0)
      {
        [(SUICFlamesViewLegacy *)self setHidden:1, v9];
      }
    }

    goto LABEL_17;
  }

  if (!state)
  {
    v12 = v9 + self->_frameRateScalingFactor * 0.03;
    *&v12 = v12;
    *&v12 = fminf(*&v12, 1.0);
    *v6 = *&v12;
    *v7 = vmlaq_n_f32(*v7, vsubq_f32(xmmword_1C435BBD0, *v7), *&v12);
    levelSmoother = self->_levelSmoother;
    LODWORD(v12) = 1064514355;
    goto LABEL_15;
  }

  if (state == 1)
  {
    v12 = v9 + self->_frameRateScalingFactor * 0.03;
    *&v12 = v12;
    *&v12 = fminf(*&v12, 1.0);
    *v6 = *&v12;
    *v7 = vmlaq_n_f32(*v7, vsubq_f32(xmmword_1C435BBC0, *v7), *&v12);
    levelSmoother = self->_levelSmoother;
    LODWORD(v12) = 1063675494;
LABEL_15:
    [(SUICAudioLevelSmoother *)levelSmoother setDecaySpeed:v12];
  }

LABEL_17:
  v13 = 0.0;
  if (self->_state == 1)
  {
    [(SUICFlamesViewLegacy *)self _currentMicPowerLevel:v9];
    v13 = v14;
  }

  [(SUICFlamesViewLegacy *)self _setCurrentContext];
  [(CADisplayLink *)self->_displayLink duration];
  v16 = v15;
  glClear(0x4000u);
  horizontalScaleFactor = self->_horizontalScaleFactor;
  v18 = horizontalScaleFactor * self->_activeFrame.size.width;
  *&horizontalScaleFactor = self->_activeFrame.origin.x * horizontalScaleFactor;
  y = self->_activeFrame.origin.y;
  v20 = v18;
  *&v18 = self->_activeFrame.size.height;
  glVertexAttrib4f(2u, *&horizontalScaleFactor, y, v20, *&v18);
  viewWidth = self->_viewWidth;
  viewHeight = self->_viewHeight;
  [(SUICFlamesViewLegacy *)self _currentDisplayScale];
  v24 = v23;
  glVertexAttrib4f(1u, viewWidth, viewHeight, v24, self->_dictationUnitSize);
  if (self->_mode == 1)
  {
    dictationRedColor = self->_dictationRedColor;
    dictationGreenColor = self->_dictationGreenColor;
    dictationBlueColor = self->_dictationBlueColor;
    glVertexAttrib3f(5u, dictationRedColor, dictationGreenColor, dictationBlueColor);
  }

  v81 = v4;
  v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v79 = 520;
  obj = self->_flameGroups;
  v28 = [(NSMutableArray *)obj countByEnumeratingWithState:&v87 objects:v91 count:16];
  if (!v28)
  {
    v83 = 0;
    goto LABEL_65;
  }

  v29 = v28;
  v83 = 0;
  v30 = v16;
  v31 = *v88;
  v32 = v30;
  v86 = v30 * 0.5;
  v33 = 1.0;
  v82 = vdup_n_s32(0x25800000u);
  do
  {
    v34 = 0;
    do
    {
      if (*v88 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v87 + 1) + 8 * v34);
      v36 = [v35 stateModifiersPtr];
      if (!self->_freezesAura || ([v35 isAura] & 1) == 0)
      {
        reduceMotionEnabled = self->_reduceMotionEnabled;
        frameRateScalingFactor = self->_frameRateScalingFactor;
        [v35 stateTime];
        v40 = v39;
        v41 = v86;
        if (reduceMotionEnabled)
        {
          v42 = 0.1;
        }

        else
        {
          v41 = v32;
          v42 = 0.25;
        }

        if (reduceMotionEnabled)
        {
          v43 = v13 * 0.5 + 0.1;
        }

        else
        {
          v43 = v13 * 2.0 + 0.25;
        }

        v44 = v40 + v41 * frameRateScalingFactor;
        *&v44 = v44;
        [v35 setStateTime:v44];
        v45 = v42 * COERCE_FLOAT(*&v36[1]) + v43 * vaddv_f32(*v36);
        v33 = 1.0;
        v46 = v45 + COERCE_FLOAT(HIDWORD(*v36->f32)) * 0.05;
        [v35 zTime];
        v48 = v47 + v32 * v46;
        *&v48 = v48;
        [v35 setZTime:v48];
      }

      if ([v35 isDyingOff])
      {
        [v35 globalAlpha];
        *&v49 = *&v49 + -0.03;
        if (*&v49 < 0.0)
        {
          *&v49 = 0.0;
        }

        [v35 setGlobalAlpha:v49];
      }

      if ([v35 isAura] && !self->_mode)
      {
        v66 = [v35 transitionPhasePtr];
        if (*v66 >= v33)
        {
          numAuraIndicesCulled = self->_numAuraIndicesCulled;
          v50 = (4 * self->_numAuraIndices);
          v83 = 1;
        }

        else
        {
          v50 = 0;
          v67 = 0.005;
          if (self->_reduceMotionEnabled)
          {
            v67 = 0.001;
          }

          v68 = *v66 + v67 * self->_frameRateScalingFactor;
          v69 = fminf(v68, v33);
          *v66 = v69;
          v70 = vmlaq_n_f32(*v36->f32, vsubq_f32(xmmword_1C435BBE0, *v36->f32), v69);
          *v36->f32 = v70;
          numAuraIndicesCulled = self->_numAuraIndices;
          if (*v70.i32 <= 2.2204e-16)
          {
            v71 = vmvn_s8(vcge_f32(v82, *&vextq_s8(v70, v70, 4uLL)));
            if ((v71.i8[0] & 1) == 0 && (v71.i8[4] & 1) == 0)
            {
              if (*&v70.i32[3] + 2.22044605e-16 >= 1.0)
              {
                v72 = [(SUICFlamesViewLegacy *)self flamesDelegate];
                v73 = objc_opt_respondsToSelector();

                if (v73)
                {
                  v74 = [(SUICFlamesViewLegacy *)self flamesDelegate];
                  [v74 flamesViewAuraDidDisplay:self];
                }
              }

              v50 = 0;
            }
          }
        }
      }

      else
      {
        v50 = 0;
        numAuraIndicesCulled = 0;
      }

      v52 = v36[1].f32[1];
      if (self->_reduceMotionEnabled)
      {
        if (v52 <= 0.5)
        {
          goto LABEL_44;
        }
      }

      else if (v52 <= 0.0)
      {
LABEL_44:
        numWaveIndices = self->_numWaveIndices;
        v54 = self->_numAuraIndicesCulled + self->_numAuraIndices;
        glVertexAttrib4f(4u, COERCE_GLFLOAT(*v36->f32), COERCE_GLFLOAT(HIDWORD(*v36)), COERCE_GLFLOAT(*&v36[1]), COERCE_GLFLOAT(HIDWORD(*v36->f32)));
        [v35 stateTime];
        v56 = v55;
        [v35 zTime];
        v58 = v57;
        [v35 globalAlpha];
        glVertexAttrib4f(3u, v56, v58, v13, v59);
        glDrawElements(4u, numWaveIndices, 0x1405u, (4 * v54));
        goto LABEL_47;
      }

      glUseProgram(self->_auraProgramHandle);
      glVertexAttrib4f(4u, COERCE_GLFLOAT(*v36->f32), COERCE_GLFLOAT(HIDWORD(*v36)), COERCE_GLFLOAT(*&v36[1]), COERCE_GLFLOAT(HIDWORD(*v36->f32)));
      [v35 stateTime];
      v61 = v60;
      [v35 zTime];
      v63 = v62;
      [v35 globalAlpha];
      glVertexAttrib4f(3u, v61, v63, v13, v64);
      glDrawElements(4u, numAuraIndicesCulled, 0x1405u, v50);
      glUseProgram(self->_flameProgramHandle);
LABEL_47:
      [v35 globalAlpha];
      if (v65 == 0.0)
      {
        [v85 addObject:v35];
      }

      ++v34;
    }

    while (v29 != v34);
    v75 = [(NSMutableArray *)obj countByEnumeratingWithState:&v87 objects:v91 count:16];
    v29 = v75;
  }

  while (v75);
LABEL_65:

  if ([v85 count])
  {
    [*(&self->super.super.super.isa + v79) removeObjectsInArray:v85];
  }

  glBindRenderbuffer(0x8D41u, self->_renderbufferHandle);
  [(EAGLContext *)self->_eaglContext presentRenderbuffer:36161];
  [(SUICFlamesViewLegacy *)self _restoreCurrentContext];
  v4 = v81;
  if (!self->_transitionFinished)
  {
    LODWORD(v76) = 1.0;
    *&v77 = v80;
    v78 = v80 >= 1.0;
    if (self->_freezesAura)
    {
      v78 &= v83;
    }

    if (v78 == 1)
    {
      self->_transitionFinished = 1;
      [(SUICFlamesViewLegacy *)self _didFinishTransition:v76];
    }
  }

LABEL_73:
LABEL_74:
}

+ (id)_indexCache
{
  if (_indexCache_onceToken != -1)
  {
    +[SUICFlamesViewLegacy _indexCache];
  }

  v3 = _indexCache_sIndexCache;

  return v3;
}

uint64_t __35__SUICFlamesViewLegacy__indexCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _indexCache_sIndexCache;
  _indexCache_sIndexCache = v0;

  v2 = _indexCache_sIndexCache;
  v3 = sIndexCacheSize;

  return [v2 setCountLimit:v3];
}

+ (void)setIndexCacheSize:(unint64_t)a3
{
  sIndexCacheSize = a3;
  v3 = [a1 _indexCache];
  [v3 setCountLimit:sIndexCacheSize];
}

- (float)_currentMicPowerLevel
{
  v3 = [(SUICFlamesViewLegacy *)self flamesDelegate];
  [v3 audioLevelForFlamesView:self];
  v5 = v4;

  LODWORD(v6) = v5;
  [(SUICAudioLevelSmoother *)self->_levelSmoother smoothedLevelForMicPower:v6];
  return v7 * 0.95 + 0.05;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUICFlamesViewLegacy;
  [(SUICFlamesViewLegacy *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(SUICFlamesViewLegacy *)self traitCollection];
    [v5 displayScale];
    v7 = v6;
    [v4 displayScale];
    if (v7 != v8)
    {
      [(SUICFlamesViewLegacy *)self resetAndReinitialize:1];
      [(SUICFlamesViewLegacy *)self _setValuesForFidelity:self->_fidelity];
      [(SUICFlamesViewLegacy *)self setNeedsLayout];
    }
  }
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

- (SUICFlamesViewProvidingDelegate)flamesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flamesDelegate);

  return WeakRetained;
}

- (void)_setupVertexBuffer
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[SUICFlamesViewLegacy _setupVertexBuffer]";
  v4 = 1024;
  v5 = a1 != 0;
  _os_log_debug_impl(&dword_1C432B000, a2, OS_LOG_TYPE_DEBUG, "%s Vertex buffer data cached: %d", &v2, 0x12u);
}

@end