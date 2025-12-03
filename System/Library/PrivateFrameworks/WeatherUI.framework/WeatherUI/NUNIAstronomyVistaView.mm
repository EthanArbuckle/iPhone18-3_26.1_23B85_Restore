@interface NUNIAstronomyVistaView
- (NUNIAstronomyVistaView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (NUNIAstronomyVistaViewObserver)observer;
- (float)computeDimming;
- (id)_earthLunaPanAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription;
- (id)_panAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription;
- (id)_zoomAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription;
- (id)generateAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription transitionStyle:(unint64_t)style;
- (id)generateAnimationArrayFromVista:(unint64_t)vista fromSceneBlock:(id)block toVista:(unint64_t)toVista toSceneBlock:(id)sceneBlock transitionStyle:(unint64_t)style;
- (id)generateAnimationArrayFromVista:(unint64_t)vista toVista:(unint64_t)toVista transitionStyle:(unint64_t)style;
- (id)rotatable:(unint64_t)rotatable;
- (id)snapshotImage;
- (void)_setVista:(unint64_t)vista scene:(id)scene;
- (void)_startAnimation;
- (void)_stopAnimation;
- (void)_updateAnimation;
- (void)dealloc;
- (void)debouncedEventHandler;
- (void)discardContents;
- (void)layoutSubviews;
- (void)quadViewWillDisplay:(id)display forTime:(double)time;
- (void)removeBackBuffers;
- (void)renderOnce;
- (void)setAPLFilterAmount:(double)amount;
- (void)setFrameInterval:(int64_t)interval;
- (void)setOpaque:(BOOL)opaque;
- (void)setScene:(id)scene;
- (void)setTritiumBrightness:(double)brightness;
- (void)setVista:(unint64_t)vista;
- (void)showSupplemental:(BOOL)supplemental animated:(BOOL)animated;
- (void)startAnimation;
- (void)stopAnimation;
- (void)universeAnimationFinished:(id)finished;
- (void)updateSunLocationForDate:(id)date;
@end

@implementation NUNIAstronomyVistaView

- (NUNIAstronomyVistaView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v44[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  NSLog(&cfstr_Nuniastronomyv.isa);
  v40.receiver = self;
  v40.super_class = NUNIAstronomyVistaView;
  height = [(NUNIAstronomyVistaView *)&v40 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    *(height + 496) |= 0x10u;
    objc_storeStrong(&height->_configuration, configuration);
    device = [configurationCopy device];
    device = v12->_device;
    v12->_device = device;

    v15 = +[CLKUIQuadView quadViewWithFrame:identifier:options:colorSpace:](CLKUIQuadView, "quadViewWithFrame:identifier:options:colorSpace:", @"NUV0", [configurationCopy quadViewOptions], objc_msgSend(configurationCopy, "colorSpace"), x, y, width, height);
    quadView0 = v12->_quadView0;
    v12->_quadView0 = v15;

    _mtlQuadView = [(NUNIAstronomyVistaView *)v12 _mtlQuadView];
    [configurationCopy maxAPL];
    [_mtlQuadView setMaxAPL:?];
    [(NUNIAstronomyVistaView *)v12 addSubview:v12->_quadView0];
    rendererStyle = [configurationCopy rendererStyle];
    colorPixelFormat = [_mtlQuadView colorPixelFormat];
    textureSuffix = [configurationCopy textureSuffix];
    v21 = [NUNIRenderer sharedInstanceWithPixelFormat:colorPixelFormat textureSuffix:textureSuffix rendererStyle:rendererStyle];
    renderer = v12->_renderer;
    v12->_renderer = v21;

    [configurationCopy screenScale];
    v24 = [[NUNIQuad alloc] initWithScreenScale:v12->_renderer renderer:v23];
    quad = v12->_quad;
    v12->_quad = v24;

    [(CLKUIQuadView *)v12->_quadView0 addQuad:v12->_quad];
    [(CLKUIQuadView *)v12->_quadView0 setPaused:1];
    [(CLKUIQuadView *)v12->_quadView0 setDelegate:v12];
    if (rendererStyle == 2)
    {
      [(CLKUIQuadView *)v12->_quadView0 setOpaque:0];
      [(CLKUIQuad *)v12->_quad setOpaque:0];
      layer = [MEMORY[0x1E6979398] layer];
      contentMaskLayer = v12->_contentMaskLayer;
      v12->_contentMaskLayer = layer;

      objc_storeStrong(&v12->maskLayer, layer);
      [(CALayer *)v12->maskLayer setFrame:x, y, width, height];
      [(CALayer *)v12->maskLayer setCompositingFilter:*MEMORY[0x1E69798E8]];
      [(CALayer *)v12->maskLayer setOpaque:0];
      maskLayer = v12->maskLayer;
      v43 = @"contents";
      null = [MEMORY[0x1E695DFB0] null];
      v44[0] = null;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      [(CALayer *)maskLayer setActions:v30];

      [(NUNIRenderer *)v12->_renderer setContentMaskLayer:v12->maskLayer];
      metalLayer = [_mtlQuadView metalLayer];
      [metalLayer addSublayer:v12->maskLayer];

      v42 = v12->_quadView0;
      v32 = &v42;
    }

    else
    {
      v41 = v12->_quadView0;
      v32 = &v41;
    }

    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    quadViews = v12->_quadViews;
    v12->_quadViews = v33;

    v12->_vista = -1;
    v35 = [MEMORY[0x1E695DFA8] set];
    activeContentsAnimations = v12->_activeContentsAnimations;
    v12->_activeContentsAnimations = v35;

    *(v12 + 496) |= 2u;
    initialSetupOperation = [configurationCopy initialSetupOperation];

    if (initialSetupOperation)
    {
      initialSetupOperation2 = [configurationCopy initialSetupOperation];
      (initialSetupOperation2)[2](initialSetupOperation2, v12);
    }
  }

  return v12;
}

- (void)discardContents
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  metalLayer = [_mtlQuadView metalLayer];
  [metalLayer discardContents];
}

- (void)removeBackBuffers
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  metalLayer = [_mtlQuadView metalLayer];
  [metalLayer removeBackBuffers];
}

- (void)setTritiumBrightness:(double)brightness
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_quadViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setTritiumBrightness:{brightness, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dealloc
{
  [(NUNIAstronomyVistaView *)self _stopAnimation];
  quad = self->_quad;
  self->_quad = 0;

  [(CLKUIQuadView *)self->_quadView0 removeAllQuads];
  quadView0 = self->_quadView0;
  self->_quadView0 = 0;

  v5 = +[CLKUIResourceManager sharedInstance];
  [v5 purgeAllUnused];

  v6.receiver = self;
  v6.super_class = NUNIAstronomyVistaView;
  [(NUNIAstronomyVistaView *)&v6 dealloc];
}

- (id)snapshotImage
{
  quadView0 = self->_quadView0;
  [(NUNIAstronomyVistaView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NUNIAstronomyVistaView *)self device];
  [device screenScale];
  v14 = [(CLKUIQuadView *)quadView0 snapshotInRect:v5 scale:v7 time:v9, v11, v13, 0.0];

  return v14;
}

- (float)computeDimming
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  v3 = CLKUIComputeDimmingRequiredToObtainQuadAPL(_mtlQuadView, 0.021, 1.0);

  return v3;
}

- (void)setAPLFilterAmount:(double)amount
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  *&v4 = amount;
  [_mtlQuadView setAplFilterAmount:v4];
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  if (self->_scene != sceneCopy)
  {
    v6 = sceneCopy;
    objc_storeStrong(&self->_scene, scene);
    [(NUNIQuad *)self->_quad setScene:v6];
    sceneCopy = v6;
  }
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v8.receiver = self;
  v8.super_class = NUNIAstronomyVistaView;
  if ([(NUNIAstronomyVistaView *)&v8 isOpaque]!= opaque)
  {
    v7.receiver = self;
    v7.super_class = NUNIAstronomyVistaView;
    [(NUNIAstronomyVistaView *)&v7 setOpaque:opaqueCopy];
    if (opaqueCopy)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(NUNIScene *)self->_scene setBackgroundType:v5];
    lastObject = [(NSArray *)self->_quadViews lastObject];
    [lastObject setOpaque:opaqueCopy];
  }
}

- (void)setFrameInterval:(int64_t)interval
{
  if (self->_frameInterval != interval)
  {
    self->_frameInterval = interval;
    v4 = _NUNIFrameIntervalToFramesPerSecond_framePerSeconds[interval];
    if ([(CLKUIQuadView *)self->_quadView0 preferredFramesPerSecond]!= v4)
    {
      quadView0 = self->_quadView0;

      [(CLKUIQuadView *)quadView0 setPreferredFramesPerSecond:v4];
    }
  }
}

- (void)updateSunLocationForDate:(id)date
{
  [(NUNIScene *)self->_scene updateSunLocationForDate:date animated:0];
  if (self->_pauseAnimationWhenNoUpdate)
  {

    [(NUNIAstronomyVistaView *)self debouncedEventHandler];
  }
}

- (void)debouncedEventHandler
{
  [(NUNIAstronomyVistaView *)self startAnimation];
  [(NSTimer *)self->_debounceTimer invalidate];
  self->_debounceTimer = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_performDebouncedAction selector:0 userInfo:0 repeats:1.0];

  MEMORY[0x1EEE66BB8]();
}

- (void)_startAnimation
{
  if ([(CLKUIQuadView *)self->_quadView0 isPaused])
  {
    quadView0 = self->_quadView0;

    [(CLKUIQuadView *)quadView0 setPaused:0];
  }
}

- (void)_stopAnimation
{
  if (![(CLKUIQuadView *)self->_quadView0 isPaused])
  {
    quadView0 = self->_quadView0;

    [(CLKUIQuadView *)quadView0 setPaused:1];
  }
}

- (void)startAnimation
{
  if ((*(self + 496) & 8) == 0 && (*(self + 496) & 4) == 0)
  {
    NSLog(&cfstr_Nuniastronomyv_0.isa, a2);
    *(self + 496) |= 8u;
    objc_initWeak(&location, self);
    renderer = self->_renderer;
    spheroids = [(NUNIScene *)self->_scene spheroids];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__NUNIAstronomyVistaView_startAnimation__block_invoke;
    v5[3] = &unk_1E7FF9140;
    objc_copyWeak(&v6, &location);
    [(NUNIRenderer *)renderer prepareForRenderingSpheroids:spheroids completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __40__NUNIAstronomyVistaView_startAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[496] &= ~8u;
    WeakRetained[496] |= 4u;
    v2 = WeakRetained;
    [WeakRetained _updateAnimation];
    WeakRetained = v2;
  }
}

- (void)stopAnimation
{
  if ((*(self + 496) & 4) != 0)
  {
    NSLog(&cfstr_Nuniastronomyv_1.isa, a2);
    *(self + 496) &= ~4u;
    *(self + 496) &= ~8u;

    [(NUNIAstronomyVistaView *)self _updateAnimation];
  }
}

- (void)_updateAnimation
{
  if ((*(self + 496) & 4) != 0 && (*(self + 496) & 2) != 0)
  {
    [(NUNIAstronomyVistaView *)self _startAnimation];
  }

  else
  {
    [(NUNIAstronomyVistaView *)self _stopAnimation];
  }
}

- (void)renderOnce
{
  if ((*(self + 496) & 4) == 0)
  {
    [(NUNIAstronomyVistaView *)self startAnimation];
  }

  *(self + 496) &= ~0x10u;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NUNIAstronomyVistaView;
  [(NUNIAstronomyVistaView *)&v12 layoutSubviews];
  [(NUNIAstronomyVistaView *)self bounds];
  v7 = v3;
  v8 = v4;
  if (*MEMORY[0x1E695F060] != v5 || *(MEMORY[0x1E695F060] + 8) != v6)
  {
    v10 = v5;
    v11 = v6;
    [(CALayer *)self->maskLayer setFrame:v3, v4];
    [(CLKUIQuadView *)self->_quadView0 setFrame:v7, v8, v10, v11];
  }
}

- (id)rotatable:(unint64_t)rotatable
{
  if (rotatable <= 9 && ((0x3FBu >> rotatable) & 1) != 0)
  {
    v5 = [(NUNIScene *)self->_scene spheroidOfType:qword_1BCE3ADC8[rotatable], v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)showSupplemental:(BOOL)supplemental animated:(BOOL)animated
{
  animatedCopy = animated;
  supplementalCopy = supplemental;
  v103 = *MEMORY[0x1E69E9840];
  v7 = *(self + 496);
  v8 = self->_scene;
  if (v8 && self->_vista == 2 && ((v7 ^ supplementalCopy) & 1) != 0)
  {
    while ([(NSMutableSet *)self->_activeContentsAnimations count])
    {
      anyObject = [(NSMutableSet *)self->_activeContentsAnimations anyObject];
      [(NUNIScene *)v8 removeAnimation:anyObject];
    }

    *(self + 496) = *(self + 496) & 0xFE | supplementalCopy;
    v87 = v8;
    if (supplementalCopy)
    {
      [(NUNIAstronomyVistaView *)self supplementalSpheroidSize];
      v11 = v10;
      [(CLKDevice *)self->_device screenBounds];
      v13 = v12;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = [(NUNIScene *)v8 spheroids];
      v14 = [obj countByEnumeratingWithState:&v97 objects:v102 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = v11 / v13;
        v84 = *v98;
        *(&v83 + 1) = v17;
        *&v83 = v17 * 0.5;
        while (1)
        {
          v18 = 0;
          do
          {
            if (*v98 != v84)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v97 + 1) + 8 * v18);
            type = [v19 type];
            v21 = 1 << type;
            LODWORD(v22) = 897988541;
            if (type != 4)
            {
              v23 = *(&v83 + 1);
              if ((v21 & 0x3000) != 0 || (v23 = *&v83, ((1 << type) & 0xFBCBFE) != 0))
              {
                [v19 radius];
                *&v22 = v23 / *&v22;
              }

              else
              {
                LODWORD(v22) = 1.0;
              }
            }

            v88 = v22;
            [v19 radiusScale];
            v25 = v24 == *&v88;
            v26 = v88;
            if (!v25)
            {
              if (animatedCopy)
              {
                v27 = [[NUNIAnimation alloc] initWithAnimatable:v19 value:6 key:*vdupq_lane_s32(*&v88, 0).i64];

                LODWORD(v28) = 1062557008;
                [(NUNIAnimation *)v27 setDuration:v28];
                [(NUNIAnimation *)v27 setObserver:self];
                [(NUNIScene *)v87 addAnimation:v27];
                [(NSMutableSet *)self->_activeContentsAnimations addObject:v27];
                v16 = v27;
                v8 = v87;
              }

              else
              {
                [v19 setRadiusScale:v88];
              }
            }

            if (((1 << type) & 0xFFF000) == 0)
            {
              [v19 opacity];
              if (*&v37 == 0.0)
              {
                goto LABEL_43;
              }

              v38 = 0;
              if (animatedCopy)
              {
                goto LABEL_40;
              }

LABEL_42:
              LODWORD(v37) = v38.i32[0];
              [v19 setOpacity:v37];
              goto LABEL_43;
            }

            if ((v21 & 0x3000) != 0)
            {
              v29 = 7;
            }

            else
            {
              v29 = type - 14;
            }

            if (v29 <= 3)
            {
              v30 = 0;
            }

            else
            {
              v30 = -1;
            }

            if ([(NUNIAstronomyVistaConfiguration *)self->_configuration isRTLLayout])
            {
              [(CLKDevice *)self->_device screenBounds];
              v32 = v31;
              [(NUNIAstronomyVistaView *)self supplementalHorizontalInset];
              v34 = v32 - v33;
              [(NUNIAstronomyVistaView *)self supplementalSpheroidSize];
              v36 = v34 + (v35 * -0.5);
            }

            else
            {
              [(NUNIAstronomyVistaView *)self supplementalHorizontalInset];
              v40 = v39;
              [(NUNIAstronomyVistaView *)self supplementalSpheroidSize];
              v36 = v40 + (v41 * 0.5);
            }

            [(CLKDevice *)self->_device screenBounds];
            v43 = v42;
            [(NUNIAstronomyVistaView *)self supplementalTopInset];
            v45 = v43 - v44;
            [(NUNIAstronomyVistaView *)self supplementalBottomInset];
            v47 = (v45 - v46) / 7.0;
            [(NUNIAstronomyVistaView *)self supplementalTopInset];
            v49 = v48 + v47 * (v29 + v30 - 1);
            [(CLKDevice *)self->_device screenBounds];
            v51 = v50;
            [(CLKDevice *)self->_device screenBounds];
            *&v51 = v51 / v52;
            [(CLKDevice *)self->_device screenBounds];
            v89 = v36 / v53;
            [(CLKDevice *)self->_device screenBounds];
            v55.f64[0] = v89;
            v55.f64[1] = (v49 / v54 + -0.5) * -*&v51 + 0.5;
            v56 = vadd_f32(vcvt_f32_f64(v55), 0xBF000000BF000000);
            *&v55.f64[0] = vmul_f32(v56, v56);
            *v55.f64 = sqrtf(*(v55.f64 + 1) + (v56.f32[0] * v56.f32[0]));
            v90 = v55.f64[0];
            v86 = vdiv_f32(v56, vdup_lane_s32(*&v55.f64[0], 0));
            [v19 angle];
            LODWORD(v51) = v57;
            *&v58 = atan2f(v86.f32[1], v86.f32[0]);
            *&v58 = *&v58 + (floorf(*&v58 / 6.2832) * -6.2832);
            v59 = vabds_f32(*&v58, *&v51);
            if (*&v51 >= *&v58)
            {
              v60 = 6.2832;
            }

            else
            {
              v60 = -6.2832;
            }

            v61 = *&v58 + v60;
            if (v59 > 3.1416)
            {
              *&v58 = v61;
            }

            if (animatedCopy)
            {
              v62 = [[NUNIAnimation alloc] initWithAnimatable:v19 value:7 key:*vdupq_lane_s32(*&v58, 0).i64];

              LODWORD(v63) = 1062557008;
              [(NUNIAnimation *)v62 setDuration:v63];
              [(NUNIScene *)v8 addAnimation:v62];
              v16 = [[NUNIAnimation alloc] initWithAnimatable:v19 value:4 key:*vdupq_lane_s32(*&v90, 0).i64];

              LODWORD(v64) = 1062557008;
              [(NUNIAnimation *)v16 setDuration:v64];
              [(NUNIAnimation *)v16 setObserver:self];
              [(NUNIScene *)v8 addAnimation:v16];
              [(NSMutableSet *)self->_activeContentsAnimations addObject:v16];
              [v19 opacity];
              v38.i32[0] = 1.0;
              if (v65 == 1.0)
              {
                goto LABEL_43;
              }

LABEL_40:
              v66 = [[NUNIAnimation alloc] initWithAnimatable:v19 value:8 key:*vdupq_lane_s32(v38, 0).i64];

              LODWORD(v67) = 1062557008;
              [(NUNIAnimation *)v66 setDuration:v67];
              [(NUNIAnimation *)v66 setObserver:self];
              [(NUNIScene *)v8 addAnimation:v66];
              [(NSMutableSet *)self->_activeContentsAnimations addObject:v66];
              v16 = v66;
              goto LABEL_43;
            }

            [v19 setAngle:v58];
            [v19 setDistance:v90];
            [v19 opacity];
            v38.i32[0] = 1.0;
            if (*&v37 != 1.0)
            {
              goto LABEL_42;
            }

LABEL_43:
            ++v18;
          }

          while (v15 != v18);
          v68 = [obj countByEnumeratingWithState:&v97 objects:v102 count:16];
          v15 = v68;
          if (!v68)
          {
            goto LABEL_71;
          }
        }
      }

LABEL_70:
      v16 = 0;
      goto LABEL_71;
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = [(NUNIScene *)v8 spheroids];
    v69 = [obj countByEnumeratingWithState:&v93 objects:v101 count:16];
    if (!v69)
    {
      goto LABEL_70;
    }

    v70 = v69;
    v16 = 0;
    v71 = *v94;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v94 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v93 + 1) + 8 * i);
        type2 = [v73 type];
        v76 = type2;
        if (type2 == 4)
        {
          *&v75 = 0.000001;
        }

        else
        {
          *&v75 = 1.0;
        }

        v91 = v75;
        [v73 radiusScale];
        if (*&v77 != *&v91)
        {
          if (animatedCopy)
          {
            v78 = [[NUNIAnimation alloc] initWithAnimatable:v73 value:6 key:*vdupq_lane_s32(*&v91, 0).i64];

            LODWORD(v79) = 1054168400;
            [(NUNIAnimation *)v78 setDuration:v79];
            [(NUNIAnimation *)v78 setObserver:self];
            [(NUNIScene *)v87 addAnimation:v78];
            [(NSMutableSet *)self->_activeContentsAnimations addObject:v78];
            v16 = v78;
            v8 = v87;
          }

          else
          {
            [v73 setRadiusScale:v91];
          }
        }

        if (((1 << v76) & 0xFFF400) != 0)
        {
          *&v77 = 1.0;
        }

        else
        {
          *&v77 = 0.0;
        }

        v92 = v77;
        [v73 opacity];
        if (v80 != *&v92)
        {
          if (animatedCopy)
          {
            v81 = [[NUNIAnimation alloc] initWithAnimatable:v73 value:8 key:*vdupq_lane_s32(*&v92, 0).i64];

            LODWORD(v82) = 1062557008;
            [(NUNIAnimation *)v81 setDuration:v82];
            [(NUNIAnimation *)v81 setObserver:self];
            [(NUNIScene *)v8 addAnimation:v81];
            [(NSMutableSet *)self->_activeContentsAnimations addObject:v81];
            v16 = v81;
          }

          else
          {
            [v73 setOpacity:v92];
          }
        }
      }

      v70 = [obj countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v70);
LABEL_71:
  }
}

- (id)_earthLunaPanAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription
{
  descriptionCopy = description;
  sceneDescriptionCopy = sceneDescription;
  v7 = objc_opt_new();
  v8 = self->_scene;
  [(NUNIScene *)v8 updateSunLocationAnimated:0];
  selfCopy = self;
  -[NUNIAstronomyVistaView _setVista:scene:](self, "_setVista:scene:", [descriptionCopy vista], v8);
  updateBlock = [descriptionCopy updateBlock];
  v10 = updateBlock;
  if (updateBlock)
  {
    (*(updateBlock + 16))(updateBlock, v8);
    [(NUNIScene *)v8 updateCamera];
  }

  v140 = v10;
  structure = [(NUNIScene *)v8 structure];
  v153 = *(structure + 16);
  v12 = *(structure + 32);
  v148 = *structure;
  v149 = v12;
  v12.i32[0] = *(structure + 52);
  v137 = *v12.f32;
  v145 = *(structure + 96);
  v146 = *(structure + 104);
  v151 = v8;
  spheroids = [(NUNIScene *)v8 spheroids];
  v14 = [spheroids count];
  v139 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32 * v14];
  mutableBytes = [v139 mutableBytes];
  isEarth = [descriptionCopy isEarth];
  v141 = descriptionCopy;
  isLuna = [descriptionCopy isLuna];
  if (v14)
  {
    v17 = 0;
    if (isLuna)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.00001;
    }

    if (isEarth)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.00001;
    }

    v20 = mutableBytes;
    do
    {
      v21 = [spheroids objectAtIndex:v17];
      structure2 = [v21 structure];
      v23 = v19;
      if (*structure2 != 3)
      {
        v23 = *(structure2 + 88);
        if (*structure2 == 4)
        {
          v23 = v18;
        }
      }

      *&v181[4] = *(structure2 + 32);
      v24 = *(structure2 + 48);
      *v20 = v23;
      *(v20 + 4) = v24;
      *(v20 + 28) = *&v181[16];
      *(v20 + 12) = *v181;

      ++v17;
      v20 += 32;
    }

    while (v14 != v17);
  }

  -[NUNIAstronomyVistaView _setVista:scene:](selfCopy, "_setVista:scene:", [sceneDescriptionCopy vista], v151);
  updateBlock2 = [sceneDescriptionCopy updateBlock];
  v26 = updateBlock2;
  if (updateBlock2)
  {
    (*(updateBlock2 + 16))(updateBlock2, v151);
    [(NUNIScene *)v151 updateCamera];
  }

  v138 = v26;
  v147 = *structure;
  v27 = *structure;
  v27.i32[0] = *(structure + 52);
  v136 = *v27.f32;
  v143 = *(structure + 96);
  v144 = *(structure + 104);
  isEarth2 = [sceneDescriptionCopy isEarth];
  isLuna2 = [sceneDescriptionCopy isLuna];
  if (v14)
  {
    v30 = 0;
    v31 = 0;
    if (isLuna2)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 0.00001;
    }

    if (isEarth2)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.00001;
    }

    v34 = mutableBytes + 8;
    __asm { FMOV            V0.4S, #1.0 }

    v156 = *&_Q0;
    while (1)
    {
      v39 = [spheroids objectAtIndex:v30];
      structure3 = [v39 structure];
      *v41.i32 = v33;
      v177 = v41;
      if (*structure3 != 3)
      {
        v41.i32[0] = *(structure3 + 88);
        if (*structure3 == 4)
        {
          *v41.i32 = v32;
        }

        v177 = v41;
      }

      v41.i32[0] = *(v34 - 8);
      v173 = v41;
      v41.i32[0] = *(v34 - 4);
      v168 = v41;
      v41.i32[0] = *v34;
      v159 = v41;
      v165 = *(v34 + 8);
      v42.i32[1] = v165.i32[1];
      v42.i32[0] = *(structure3 + 48);
      v157 = v42;
      v42.i32[0] = *(structure3 + 52);
      v158 = v42;
      v161 = *(structure3 + 32);
      *&v154 = vdupq_lane_s32(v177, 0).u64[0];
      *&v155 = vdupq_lane_s32(v173, 0).u64[0];
      v43 = [[NUNIAnimation alloc] initWithAnimatable:v39 from:6 to:v155 key:?];

      [(NUNIAnimation *)v43 setFunction:0];
      if (*v173.i32 == 1.0 && *v177.i32 <= 0.00001)
      {
        break;
      }

      v44 = [NUNIAnimation alloc];
      if (*v173.i32 <= 0.00001 && *v177.i32 == 1.0)
      {
        v48 = 0.0;
        v49 = 0.0;
        v47 = v39;
        v45 = v156;
        v46 = v156;
        goto LABEL_38;
      }

      v51 = [(NUNIAnimation *)v44 initWithAnimatable:v39 from:6 to:v155 key:v154];

      v52 = v51;
      v53 = 0;
LABEL_39:
      [(NUNIAnimation *)v52 setFunction:v53];
      [v7 addObject:v51];
      if (*v168.i32 == 1.0 && *v157.i32 == 0.0)
      {
        v54 = [NUNIAnimation alloc];
        v55 = 0.0;
        v56 = 0.0000305175853;
        v57 = v39;
        v58 = v156;
        v59 = v156;
      }

      else
      {
        v54 = [NUNIAnimation alloc];
        if (*v168.i32 != 0.0 || *v157.i32 != 1.0)
        {
          v31 = [(NUNIAnimation *)v54 initWithAnimatable:v39 from:8 to:*vdupq_lane_s32(v168 key:0).i64, *vdupq_lane_s32(v157, 0).i64];

          v60 = v31;
          v61 = 0;
          goto LABEL_47;
        }

        v58 = 0.0;
        v59 = 0.0000305175853;
        v57 = v39;
        v55 = v156;
        v56 = v156;
      }

      v31 = [(NUNIAnimation *)v54 initWithAnimatable:v57 from:8 to:v58 ctrl1:v55 ctrl2:v59 key:v56];

      v60 = v31;
      v61 = 2;
LABEL_47:
      [(NUNIAnimation *)v60 setFunction:v61];
      [v7 addObject:v31];
      if (*v159.i32 != *v158.i32)
      {
        v62 = [[NUNIAnimation alloc] initWithAnimatable:v39 from:11 to:*vdupq_lane_s32(v159 key:0).i64, *vdupq_lane_s32(v158, 0).i64];

        [(NUNIAnimation *)v62 setFunction:0];
        [v7 addObject:v62];
        v31 = v62;
      }

      if ((vminvq_u32(vceqq_f32(v165, v161)) & 0x80000000) == 0)
      {
        v63 = [[NUNIAnimation alloc] initWithAnimatable:v39 from:2 to:*v165.i64 key:*v161.i64];

        [(NUNIAnimation *)v63 setFunction:4];
        [v7 addObject:v63];
        v31 = v63;
      }

      ++v30;
      v34 += 32;
      if (v14 == v30)
      {
        goto LABEL_54;
      }
    }

    v44 = [NUNIAnimation alloc];
    v45 = 0.0;
    v46 = 0.0;
    v47 = v39;
    v48 = v156;
    v49 = v156;
LABEL_38:
    v51 = [(NUNIAnimation *)v44 initWithAnimatable:v47 from:6 to:v48 ctrl1:v45 ctrl2:v49 key:v46];

    v52 = v51;
    v53 = 2;
    goto LABEL_39;
  }

  v31 = 0;
LABEL_54:
  _Q1 = vsubq_f32(v148, v153);
  _S9 = _Q1.i32[2];
  v66 = _Q1.f32[1];
  __asm { FMLA            S0, S9, V1.S[2] }

  v174 = sqrtf(_S0);
  v178 = _Q1;
  v169 = acosf(_Q1.f32[2] / v174);
  _Q0.f32[0] = atan2f(v66, v178.f32[0]);
  v162 = _Q0.f32[0];
  _Q1 = _Q0;
  _Q1.f32[1] = v169;
  _Q1.f32[2] = v174;
  v166 = _Q1;
  v160 = vsubq_f32(v147, v153);
  _Q1.i32[0] = v160.i32[2];
  __asm { FMLA            S0, S1, V2.S[2] }

  v170 = sqrtf(_Q0.f32[0]);
  v175 = acosf(v160.f32[2] / v170);
  v70.f32[0] = atan2f(v160.f32[1], v160.f32[0]);
  v72.f32[0] = v162 - v70.f32[0];
  if ((v162 - v70.f32[0]) <= 3.1416)
  {
    v73 = v166;
    v71 = v166;
    v74 = v141;
    v75 = v151;
    if (v72.f32[0] < -3.1416)
    {
      v71.f32[0] = v162 + 6.2832;
      *(v71.i64 + 4) = *(v166.i64 + 4);
    }
  }

  else
  {
    v71.f32[0] = v162 + -6.2832;
    v73 = v166;
    *(v71.i64 + 4) = *(v166.i64 + 4);
    v74 = v141;
    v75 = v151;
  }

  _Q21 = v178;
  v77 = vmulq_f32(_Q21, _Q21);
  if ((v71.f32[1] - v175) <= 3.1416)
  {
    if ((v71.f32[1] - v175) >= -3.1416)
    {
      goto LABEL_63;
    }

    v78 = 6.2832;
  }

  else
  {
    v78 = -6.2832;
  }

  v79.i64[0] = __PAIR64__(v71.f32[1] + v78, v71.u32[0]);
  v79.i64[1] = v71.i64[1];
  v71 = v79;
LABEL_63:
  v70.f32[1] = v175;
  if (v72.f32[0] <= 3.1416)
  {
    v77 = v73;
    if (v72.f32[0] >= -3.1416)
    {
      goto LABEL_68;
    }

    v80 = 6.2832;
  }

  else
  {
    v80 = -6.2832;
  }

  v77.f32[0] = v162 + v80;
  v77.i32[1] = v73.i32[1];
  v77.i32[2] = v73.i32[2];
LABEL_68:
  v70.f32[2] = v170;
  v81 = vdupq_n_s32(0x3EA8F5C3u);
  if ((v77.f32[1] - v175) <= 3.1416)
  {
    if ((v77.f32[1] - v175) >= -3.1416)
    {
      goto LABEL_73;
    }

    v82 = 6.2832;
  }

  else
  {
    v82 = -6.2832;
  }

  v83.i64[0] = __PAIR64__(v77.f32[1] + v82, v77.u32[0]);
  v83.i64[1] = v77.i64[1];
  v77 = v83;
LABEL_73:
  __asm { FMLA            S5, S9, V21.S[2] }

  v85 = vdupq_n_s32(0x3F2B851Eu);
  v86 = vmulq_f32(v70, v81);
  v87 = vmulq_f32(v70, vdupq_n_s32(0x3F28F5C3u));
  v88 = vdupq_n_s32(0x3EAE147Au);
  if (v72.f32[0] <= 3.1416)
  {
    if (v72.f32[0] >= -3.1416)
    {
      goto LABEL_78;
    }

    v72.i32[0] = 1086918619;
  }

  else
  {
    v72.i32[0] = -1060565029;
  }

  v72.f32[0] = v162 + v72.f32[0];
  v72.i32[1] = v73.i32[1];
  v72.i32[2] = v73.i32[2];
  v73 = v72;
LABEL_78:
  v89 = vmlaq_f32(v86, v85, v71);
  v90 = sqrtf(_S5);
  v179 = vmlaq_f32(v87, v88, v77);
  if ((v73.f32[1] - v175) <= 3.1416)
  {
    if ((v73.f32[1] - v175) >= -3.1416)
    {
      goto LABEL_83;
    }

    v91 = 6.2832;
  }

  else
  {
    v91 = -6.2832;
  }

  v92.i32[0] = v73.i32[0];
  v92.f32[1] = v73.f32[1] + v91;
  v92.i64[1] = v73.i64[1];
  v73 = v92;
LABEL_83:
  v93.i64[0] = 0x3F0000003F000000;
  v93.i64[1] = 0x3F0000003F000000;
  v171 = v89;
  v176 = vmlaq_f32(vmulq_f32(v70, v93), v93, v73);
  v94 = __sincosf_stret(v89.f32[0]);
  v95 = __sincosf_stret(v171.f32[1]);
  *v96.f32 = vmul_n_f32(__PAIR64__(LODWORD(v94.__sinval), LODWORD(v94.__cosval)), vmuls_lane_f32(v95.__sinval, v171, 2));
  v96.i32[2] = vmuls_lane_f32(v95.__cosval, v171, 2);
  *&v172 = vaddq_f32(v153, v96).u64[0];
  v97 = __sincosf_stret(v179.f32[0]);
  v98 = __sincosf_stret(v179.f32[1]);
  *v99.f32 = vmul_n_f32(__PAIR64__(LODWORD(v97.__sinval), LODWORD(v97.__cosval)), vmuls_lane_f32(v98.__sinval, v179, 2));
  v99.i32[2] = vmuls_lane_f32(v98.__cosval, v179, 2);
  *&v167 = vaddq_f32(v153, v99).u64[0];
  v100 = [(NUNIScene *)v75 spheroidOfType:3];
  v101 = [(NUNIScene *)v75 spheroidOfType:4];
  v102 = __sincosf_stret(v176.f32[0]);
  v103 = __sincosf_stret(v176.f32[1]);
  *v104.f32 = vmul_n_f32(__PAIR64__(LODWORD(v102.__sinval), LODWORD(v102.__cosval)), vmuls_lane_f32(v103.__sinval, v176, 2));
  v104.i32[2] = vmuls_lane_f32(v103.__cosval, v176, 2);
  _Q0 = vsubq_f32(vaddq_f32(v153, v104), v153);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v108 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL))), vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL), vextq_s8(vextq_s8(v149, v149, 0xCuLL), v149, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v112 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v180 = v112;
  v112.f32[0] = v90 * 0.75;
  v163 = *v112.f32;
  v113 = [NUNIAnimation alloc];
  v164 = vdupq_lane_s32(v163, 0);
  if (isEarth)
  {
    v114 = [NUNIAnimation initWithAnimatable:v113 from:"initWithAnimatable:from:to:key:" to:v100 key:0];

    [(NUNIAnimation *)v114 setFunction:0];
    [v7 addObject:v114];
    v115 = [NUNIAnimation alloc];
    v116 = vmlaq_f32(v153, v164, v180).u64[0];
    v117 = v101;
  }

  else
  {
    v114 = [NUNIAnimation initWithAnimatable:v113 from:"initWithAnimatable:from:to:key:" to:v101 key:0];

    [(NUNIAnimation *)v114 setFunction:0];
    [v7 addObject:v114];
    v115 = [NUNIAnimation alloc];
    v116 = vmlsq_f32(v153, v164, v180).u64[0];
    v117 = v100;
  }

  v118 = [(NUNIAnimation *)v115 initWithAnimatable:v117 from:0 to:*&v116 key:*v153.i64];

  [(NUNIAnimation *)v118 setFunction:0];
  [v7 addObject:v118];
  v119 = [[NUNIAnimation alloc] initWithAnimatable:v75 from:0 to:*v148.i64 ctrl1:*v147.i64 ctrl2:v172 key:v167];

  [(NUNIAnimation *)v119 setFunction:2];
  [v7 addObject:v119];
  v120 = [NUNIAnimation alloc];
  __asm
  {
    FMOV            V3.4S, #0.25
    FMOV            V4.4S, #0.75
  }

  _Q2 = vmlaq_f32(vmulq_f32(v135, _Q3), _Q4, v149);
  _Q5 = vmulq_f32(_Q2, _Q2);
  _S6 = _Q2.i32[2];
  __asm { FMLA            S5, S6, V2.S[2] }

  _Q5.f32[0] = sqrtf(_Q5.f32[0]);
  _Q2.i64[0] = vdivq_f32(_Q2, vdupq_lane_s32(*_Q5.f32, 0)).u64[0];
  _Q4 = vmlaq_f32(vmulq_f32(v135, _Q4), _Q3, v149);
  _Q3 = vmulq_f32(_Q4, _Q4);
  _Q5.i32[0] = _Q4.i32[2];
  __asm { FMLA            S3, S5, V4.S[2] }

  _Q3.f32[0] = sqrtf(_Q3.f32[0]);
  v128 = [(NUNIAnimation *)v120 initWithAnimatable:v75 from:2 to:*v149.i64 ctrl1:*v135.i64 ctrl2:*_Q2.i64 key:*vdivq_f32(_Q4, vdupq_lane_s32(*_Q3.f32, 0)).i64];

  [(NUNIAnimation *)v128 setFunction:2];
  [v7 addObject:v128];
  v129 = [[NUNIAnimation alloc] initWithAnimatable:v75 from:3 to:*vdupq_lane_s32(v137 key:0).i64, *vdupq_lane_s32(v136, 0).i64];

  [(NUNIAnimation *)v129 setFunction:0];
  [v7 addObject:v129];
  v130 = vceq_f32(*&v145, *&v143);
  if ((vpmin_u32(v130, v130).u32[0] & 0x80000000) == 0)
  {
    v131 = [[NUNIAnimation alloc] initWithAnimatable:v75 from:6 to:v145 key:v143];

    [(NUNIAnimation *)v131 setFunction:0];
    [v7 addObject:v131];
    v129 = v131;
  }

  v132 = vceq_f32(*&v146, *&v144);
  if ((vpmin_u32(v132, v132).u32[0] & 0x80000000) == 0)
  {
    v133 = [[NUNIAnimation alloc] initWithAnimatable:v75 from:7 to:v146 key:v144];

    [(NUNIAnimation *)v133 setFunction:0];
    [v7 addObject:v133];
    v129 = v133;
  }

  [(NUNIAstronomyVistaView *)selfCopy _setVista:selfCopy->_vista scene:v75];

  return v7;
}

- (id)generateAnimationArrayFromVista:(unint64_t)vista toVista:(unint64_t)toVista transitionStyle:(unint64_t)style
{
  if (vista == toVista)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(NUNIAstronomyVistaView *)self generateAnimationArrayFromVista:vista fromSceneBlock:0 toVista:toVista toSceneBlock:0 transitionStyle:style, v5];
  }

  return v7;
}

- (id)generateAnimationArrayFromVista:(unint64_t)vista fromSceneBlock:(id)block toVista:(unint64_t)toVista toSceneBlock:(id)sceneBlock transitionStyle:(unint64_t)style
{
  sceneBlockCopy = sceneBlock;
  v13 = [NUNISceneUpdateDescription descriptionWithVista:vista updateBlock:block];
  v14 = [NUNISceneUpdateDescription descriptionWithVista:toVista updateBlock:sceneBlockCopy];

  v15 = [(NUNIAstronomyVistaView *)self generateAnimationArrayFromSceneDescription:v13 toSceneDescription:v14 transitionStyle:style];

  return v15;
}

- (id)generateAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription transitionStyle:(unint64_t)style
{
  descriptionCopy = description;
  sceneDescriptionCopy = sceneDescription;
  if (style == 1)
  {
    v10 = [(NUNIAstronomyVistaView *)self _panAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
    goto LABEL_5;
  }

  if (!style)
  {
    v10 = [(NUNIAstronomyVistaView *)self _zoomAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v11;
}

- (id)_panAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription
{
  descriptionCopy = description;
  sceneDescriptionCopy = sceneDescription;
  if ([descriptionCopy isLuna] && (objc_msgSend(sceneDescriptionCopy, "isEarth") & 1) != 0 || objc_msgSend(descriptionCopy, "isEarth") && objc_msgSend(sceneDescriptionCopy, "isLuna"))
  {
    v8 = [(NUNIAstronomyVistaView *)self _earthLunaPanAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
  }

  else
  {
    v8 = [(NUNIAstronomyVistaView *)self _zoomAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
  }

  v9 = v8;

  return v9;
}

- (id)_zoomAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription
{
  descriptionCopy = description;
  sceneDescriptionCopy = sceneDescription;
  v7 = objc_opt_new();
  v8 = self->_scene;
  selfCopy = self;
  -[NUNIAstronomyVistaView _setVista:scene:](self, "_setVista:scene:", [descriptionCopy vista], v8);
  v142 = descriptionCopy;
  updateBlock = [descriptionCopy updateBlock];
  v10 = updateBlock;
  if (updateBlock)
  {
    (*(updateBlock + 16))(updateBlock, v8);
    [(NUNIScene *)v8 updateCamera];
  }

  v141 = v10;
  structure = [(NUNIScene *)v8 structure];
  v12 = *(structure + 16);
  v152 = *structure;
  v148 = v12;
  v12.i32[0] = *(structure + 52);
  v138 = *(structure + 32);
  v139 = *v12.f32;
  v145 = *(structure + 96);
  v146 = *(structure + 104);
  spheroids = [(NUNIScene *)v8 spheroids];
  v14 = [spheroids count];
  v140 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32 * v14];
  mutableBytes = [v140 mutableBytes];
  v16 = mutableBytes;
  if (v14)
  {
    v17 = 0;
    v18 = mutableBytes + 8;
    do
    {
      v19 = [spheroids objectAtIndex:v17];
      structure2 = [v19 structure];
      v21 = *(structure2 + 48);
      *&v167[4] = *(structure2 + 32);
      *(v18 - 8) = *(structure2 + 88);
      *(v18 - 4) = v21;
      *v18 = 0;
      *(v18 + 20) = *&v167[16];
      *(v18 + 4) = *v167;

      ++v17;
      v18 += 32;
    }

    while (v14 != v17);
  }

  -[NUNIAstronomyVistaView _setVista:scene:](self, "_setVista:scene:", [sceneDescriptionCopy vista], v8);
  updateBlock2 = [sceneDescriptionCopy updateBlock];
  v23 = updateBlock2;
  if (updateBlock2)
  {
    (*(updateBlock2 + 16))(updateBlock2, v8);
    [(NUNIScene *)v8 updateCamera];
  }

  v25 = *structure;
  v147 = *(structure + 16);
  v24.i32[1] = v147.i32[1];
  v24.i32[0] = *(structure + 52);
  v136 = *(structure + 32);
  v137 = v24;
  __asm { FMOV            V0.4S, #1.0 }

  v134 = _Q0;
  v143 = *(structure + 96);
  v144 = *(structure + 104);
  v151 = *structure;
  if (v14)
  {
    v30 = 0;
    v31 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v153 = *&_Q0;
    while (1)
    {
      v33 = [spheroids objectAtIndex:v30];
      structure3 = [v33 structure];
      v35 = v16;
      *&v36 = vld1q_dup_f32(v35++).u64[0];
      *v37.i32 = *v35;
      v157 = v37;
      v38 = (structure3 + 88);
      v37.i32[0] = *(structure3 + 48);
      v161 = v16[1];
      v164 = v37;
      v159 = *(structure3 + 32);
      *&v39 = vld1q_dup_f32(v38).u64[0];
      v40 = [[NUNIAnimation alloc] initWithAnimatable:v33 from:6 to:v36 key:v39];

      [(NUNIAnimation *)v40 setFunction:0];
      [v7 addObject:v40];
      if (*v157.i32 == 1.0 && *v164.i32 == 0.0)
      {
        break;
      }

      v41 = [NUNIAnimation alloc];
      *&v44 = vdupq_lane_s32(v157, 0).u64[0];
      if (*v157.i32 == 0.0 && *v164.i32 == 1.0)
      {
        v43 = v33;
        v42 = v153;
        v45 = v44;
        v46 = v44;
        goto LABEL_19;
      }

      v31 = [(NUNIAnimation *)v41 initWithAnimatable:v33 from:8 to:v44 key:*vdupq_lane_s32(v164, 0).i64];

      v48 = v31;
      v49 = 0;
LABEL_20:
      [(NUNIAnimation *)v48 setFunction:v49];
      [v7 addObject:v31];
      if ((vminvq_u32(vceqq_f32(v161, v159)) & 0x80000000) == 0)
      {
        v50 = [[NUNIAnimation alloc] initWithAnimatable:v33 from:2 to:*v161.i64 key:*v159.i64];

        [(NUNIAnimation *)v50 setFunction:4];
        [v7 addObject:v50];
        v31 = v50;
      }

      ++v30;
      v16 += 2;
      if (v14 == v30)
      {

        v25 = v151;
        goto LABEL_24;
      }
    }

    v41 = [NUNIAnimation alloc];
    *&v42 = vdupq_lane_s32(v164, 0).u64[0];
    v43 = v33;
    v44 = v153;
    v45 = v42;
    v46 = v42;
LABEL_19:
    v31 = [(NUNIAnimation *)v41 initWithAnimatable:v43 from:8 to:v44 ctrl1:v42 ctrl2:v45 key:v46];

    v48 = v31;
    v49 = 2;
    goto LABEL_20;
  }

LABEL_24:
  _Q3 = vsubq_f32(v25, v152);
  _Q0 = vmulq_f32(_Q3, _Q3);
  _S1 = _Q3.i32[2];
  __asm { FMLA            S0, S1, V3.S[2] }

  _Q0.f32[0] = sqrtf(_Q0.f32[0]);
  v162 = *_Q0.f32;
  v165 = _Q3;
  v54 = [(NUNIScene *)v8 spheroidOfType:3];
  v55 = [(NUNIScene *)v8 spheroidOfType:4];
  v56 = vdivq_f32(v165, vdupq_lane_s32(v162, 0));
  v135 = vmulq_f32(v56, vnegq_f64(v134));
  v57 = vzip1q_s32(vextq_s8(v135, v135, 4uLL), v135);
  _Q0 = vsubq_f32(v147, v151);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v133 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  _Q0 = vsubq_f32(v148, v152);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v156 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  *&v166 = vmlaq_n_f32(vmlaq_n_f32(v152, v56, *v162.i32 * 0.25), v57, *v162.i32 * 0.05).u64[0];
  v158 = v56;
  v154 = v57;
  *&v163 = vmlaq_n_f32(vmlaq_n_f32(v152, v56, *v162.i32 * 0.75), v57, *v162.i32 * 0.05).u64[0];
  [v54 position];
  v155 = v64;
  [v54 radius];
  v66 = v65;
  [v55 position];
  v160 = v67;
  [v55 radius];
  _S3 = vsubq_f32(v152, v155).i32[2];
  __asm { FMLA            S2, S3, V1.S[2] }

  if (sqrtf(_S2) > (v66 * 5.7588))
  {
    _Q16 = v156;
    v71 = v158.i32[2];
    _S5 = vsubq_f32(v151, v155).i32[2];
    __asm { FMLA            S4, S5, V3.S[2] }

    v76 = v141;
    v75 = v142;
    v77 = v151;
    if (sqrtf(_S4) <= (v66 * 5.7588))
    {
      _V4.S[2] = v133.i32[2];
      _Q2 = vmulq_f32(v133, v158);
      _S3 = v158.i32[2];
      __asm { FMLA            S2, S3, V4.S[2] }

      if (_Q2.f32[0] < -0.25)
      {
        _Q2.i32[0] = v133.i32[2];
        _S7 = v133.i32[0];
        _Q4 = v135;
        __asm
        {
          FMLA            S3, S7, V4.S[1]
          FMLA            S3, S2, V4.S[2]
        }

        _Q2.f32[0] = (v66 * 5.7588) * 3.0;
        v85 = vdupq_lane_s32(*_Q2.f32, 0);
        if (_S3 <= 0.1)
        {
          v86 = vmlaq_f32(v151, v85, v154).u64[0];
        }

        else
        {
          v86 = vmlsq_f32(v151, v85, v154).u64[0];
        }

        v163 = *&v86;
      }
    }

    goto LABEL_37;
  }

  _Q16 = v156;
  v71 = v158.i32[2];
  _Q2 = vmulq_f32(v156, v158);
  _S3 = v158.i32[2];
  __asm { FMLA            S2, S3, V16.S[2] }

  v76 = v141;
  v75 = v142;
  if (_Q2.f32[0] <= 0.25)
  {
    v77 = v151;
LABEL_37:
    v93 = v160;
    goto LABEL_38;
  }

  _Q2.i32[0] = v156.i32[2];
  _Q4 = v135;
  __asm
  {
    FMLA            S3, S16, V4.S[1]
    FMLA            S3, S2, V4.S[2]
  }

  _Q2.f32[0] = (v66 * 5.7588) * 3.0;
  v92 = vdupq_lane_s32(*_Q2.f32, 0);
  v77 = v151;
  v93 = v160;
  if (_S3 <= 0.1)
  {
    v94 = vmlaq_f32(v152, v92, v154).u64[0];
  }

  else
  {
    v94 = vmlsq_f32(v152, v92, v154).u64[0];
  }

  v166 = *&v94;
LABEL_38:
  _S4 = vsubq_f32(v152, v93).i32[2];
  __asm { FMLA            S3, S4, V2.S[2] }

  if (sqrtf(_S3) <= (*v68.i32 * 5.7588))
  {
    _S2 = v71;
    __asm { FMLA            S1, S2, V16.S[2] }

    if (_S1 > 0.25)
    {
      _S1 = _Q16.i32[2];
      _Q3 = v135;
      __asm
      {
        FMLA            S2, S16, V3.S[1]
        FMLA            S2, S1, V3.S[2]
      }

      *v68.i32 = (*v68.i32 * 5.7588) * 3.0;
      v114 = vdupq_lane_s32(v68, 0);
      if (_S2 <= 0.1)
      {
        v115 = vmlaq_f32(v152, v114, v154).u64[0];
      }

      else
      {
        v115 = vmlsq_f32(v152, v114, v154).u64[0];
      }

      v166 = *&v115;
    }
  }

  else
  {
    _S4 = vsubq_f32(v77, v93).i32[2];
    __asm { FMLA            S3, S4, V2.S[2] }

    if (sqrtf(_S3) <= (*v68.i32 * 5.7588))
    {
      _Q4 = v133;
      _S2 = v71;
      __asm { FMLA            S1, S2, V4.S[2] }

      if (_S1 < -0.25)
      {
        _S1 = v133.i32[2];
        _Q3 = v135;
        __asm
        {
          FMLA            S2, S4, V3.S[1]
          FMLA            S2, S1, V3.S[2]
        }

        *v68.i32 = (*v68.i32 * 5.7588) * 3.0;
        v106 = vdupq_lane_s32(v68, 0);
        if (_S2 <= 0.1)
        {
          v107 = vmlaq_f32(v77, v106, v154).u64[0];
        }

        else
        {
          v107 = vmlsq_f32(v77, v106, v154).u64[0];
        }

        v163 = *&v107;
      }
    }
  }

  v116 = [[NUNIAnimation alloc] initWithAnimatable:v8 from:0 to:*v152.i64 ctrl1:*v151.i64 ctrl2:v166 key:v163];
  [(NUNIAnimation *)v116 setFunction:2];
  [v7 addObject:v116];
  v117 = [[NUNIAnimation alloc] initWithAnimatable:v8 from:1 to:*v148.i64 key:*v147.i64];

  [(NUNIAnimation *)v117 setFunction:0];
  [v7 addObject:v117];
  v118 = [NUNIAnimation alloc];
  __asm
  {
    FMOV            V3.4S, #0.25
    FMOV            V4.4S, #0.75
  }

  _Q2 = vmlaq_f32(vmulq_f32(v136, _Q3), _Q4, v138);
  _Q5 = vmulq_f32(_Q2, _Q2);
  _S6 = _Q2.i32[2];
  __asm { FMLA            S5, S6, V2.S[2] }

  _Q5.f32[0] = sqrtf(_Q5.f32[0]);
  _Q2.i64[0] = vdivq_f32(_Q2, vdupq_lane_s32(*_Q5.f32, 0)).u64[0];
  _Q4 = vmlaq_f32(vmulq_f32(v136, _Q4), _Q3, v138);
  _Q3 = vmulq_f32(_Q4, _Q4);
  _Q5.i32[0] = _Q4.i32[2];
  __asm { FMLA            S3, S5, V4.S[2] }

  _Q3.f32[0] = sqrtf(_Q3.f32[0]);
  v126 = [(NUNIAnimation *)v118 initWithAnimatable:v8 from:2 to:*v138.i64 ctrl1:*v136.i64 ctrl2:*_Q2.i64 key:*vdivq_f32(_Q4, vdupq_lane_s32(*_Q3.f32, 0)).i64];

  [(NUNIAnimation *)v126 setFunction:2];
  [v7 addObject:v126];
  v127 = [[NUNIAnimation alloc] initWithAnimatable:v8 from:3 to:*vdupq_lane_s32(v139 key:0).i64, *vdupq_lane_s32(v137, 0).i64];

  [(NUNIAnimation *)v127 setFunction:0];
  [v7 addObject:v127];
  v128 = vceq_f32(*&v145, *&v143);
  if ((vpmin_u32(v128, v128).u32[0] & 0x80000000) == 0)
  {
    v129 = [[NUNIAnimation alloc] initWithAnimatable:v8 from:6 to:v145 key:v143];

    [(NUNIAnimation *)v129 setFunction:2];
    [v7 addObject:v129];
    v127 = v129;
  }

  v130 = vceq_f32(*&v146, *&v144);
  if ((vpmin_u32(v130, v130).u32[0] & 0x80000000) == 0)
  {
    v131 = [[NUNIAnimation alloc] initWithAnimatable:v8 from:7 to:v146 key:v144];

    [(NUNIAnimation *)v131 setFunction:2];
    [v7 addObject:v131];
    v127 = v131;
  }

  [(NUNIAstronomyVistaView *)selfCopy _setVista:selfCopy->_vista scene:v8];

  return v7;
}

- (void)setVista:(unint64_t)vista
{
  if (self->_scene)
  {
    if (self->_vista != vista)
    {
      self->_vista = vista;
      [NUNIAstronomyVistaView _setVista:"_setVista:scene:" scene:?];
    }
  }
}

- (void)_setVista:(unint64_t)vista scene:(id)scene
{
  v60 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v6 = sceneCopy;
  v7 = 131080;
  v8 = 3;
  if (vista > 4)
  {
    v9 = 2097280;
    v10 = 4194560;
    v11 = 8389120;
    if (vista == 9)
    {
      v12 = 9;
    }

    else
    {
      v12 = 3;
    }

    if (vista != 9)
    {
      v11 = 131080;
    }

    if (vista == 8)
    {
      v12 = 8;
    }

    else
    {
      v10 = v11;
    }

    if (vista == 7)
    {
      v13 = 7;
    }

    else
    {
      v13 = v12;
    }

    if (vista != 7)
    {
      v9 = v10;
    }

    v14 = 524320;
    v15 = 1048640;
    if (vista == 6)
    {
      v16 = 6;
    }

    else
    {
      v16 = 3;
    }

    if (vista != 6)
    {
      v15 = 131080;
    }

    if (vista == 5)
    {
      v16 = 5;
    }

    else
    {
      v14 = v15;
    }

    if (vista <= 6)
    {
      v8 = v16;
    }

    else
    {
      v8 = v13;
    }

    if (vista <= 6)
    {
      v7 = v14;
    }

    else
    {
      v7 = v9;
    }

    goto LABEL_60;
  }

  if (vista > 2)
  {
    v32 = 65540;
    v33 = 2;
    if (vista != 4)
    {
      v33 = 3;
      v32 = 131080;
    }

    if (vista == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = v33;
    }

    if (vista == 3)
    {
      v7 = 32770;
    }

    else
    {
      v7 = v32;
    }

    goto LABEL_60;
  }

  if (vista == 1)
  {
    v7 = 16;
    v8 = 4;
LABEL_60:
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    spheroids = [sceneCopy spheroids];
    v34 = [spheroids countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v47 = v8;
      v48 = v6;
      v36 = *v51;
      v37 = v7 | 0x400;
      v38 = v7 & 0x3FE;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(spheroids);
          }

          v40 = *(*(&v50 + 1) + 8 * i);
          structure = [v40 structure];
          v42 = structure;
          v43 = (1 << *structure);
          if ((v37 & v43) != 0)
          {
            v44 = 1.0;
          }

          else
          {
            v44 = 0.000001;
          }

          if (*(structure + 88) != v44)
          {
            [v40 setRadiusScale:?];
          }

          if ((v38 & v43) != 0)
          {
            v45 = 1.0;
          }

          else
          {
            v45 = 0.0;
          }

          if (*(v42 + 48) != v45)
          {
            [v40 setOpacity:?];
          }

          [v40 setOrientation:*&_PromotedConst];
        }

        v35 = [spheroids countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v35);
      v6 = v48;
      v8 = v47;
    }

    goto LABEL_78;
  }

  if (vista != 2)
  {
    goto LABEL_60;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  spheroids = [sceneCopy spheroids];
  v18 = [spheroids countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = v6;
    v19.i64[0] = 0;
    v49 = v19;
    v22 = *v55;
    v46 = xmmword_1BCE22FD0;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(spheroids);
        }

        v24 = *(*(&v54 + 1) + 8 * j);
        structure2 = [v24 structure];
        v27 = structure2;
        v28 = *structure2;
        if (*structure2 == 4)
        {
          v29 = 0.000001;
        }

        else
        {
          v29 = 1.0;
        }

        if (*(structure2 + 88) != v29)
        {
          [v24 setRadiusScale:?];
        }

        v30 = 1 << v28;
        if ((v30 & 0x4FFE) != 0)
        {
          v31 = 1.0;
        }

        else
        {
          v31 = 0.0;
        }

        if (*(v27 + 48) != v31)
        {
          [v24 setOpacity:?];
        }

        v26.i64[0] = v30 & 0x3FE;
        [v24 setOrientation:{*vbslq_s8(vdupq_lane_s64(vceqq_s64(v26, v49).i64[0], 0), v46, xmmword_1BCE3ADA0).i64}];
      }

      v20 = [spheroids countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v20);
    v6 = v21;
  }

  v8 = 24;
LABEL_78:

  [v6 setSnap:v8];
}

- (void)universeAnimationFinished:(id)finished
{
  [(NSMutableSet *)self->_activeContentsAnimations removeObject:finished];
  if (![(NSMutableSet *)self->_activeContentsAnimations count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained astronomyVistaViewContentsAnimationFinished:self];
  }
}

- (void)quadViewWillDisplay:(id)display forTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained astronomyVistaViewWillDisplay:self forTime:time];

  if ((*(self + 496) & 0x10) == 0)
  {
    [(NUNIAstronomyVistaView *)self stopAnimation];
    *(self + 496) |= 0x10u;
  }
}

- (NUNIAstronomyVistaViewObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end