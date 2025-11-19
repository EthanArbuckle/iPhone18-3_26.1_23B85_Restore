@interface PKDynamicLayerView
- (PKDynamicLayerView)initWithFrame:(CGRect)a3 pass:(id)a4 automaticallyLoadContent:(BOOL)a5;
- (id)_configureMotionEffectGroupForCrossDissolveConfiguration:(id)a3;
- (id)_dimmingLayerAnimationWithDuration:(double)a3;
- (void)_addParallaxAndMotionEffects;
- (void)_addRadialMaskEffectsToView:(id)a3;
- (void)_configureDynamicViewsWithImageSet:(id)a3;
- (void)_configureViews;
- (void)_removeParallaxMotionEffect;
- (void)_updateVisibility;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)loadContent;
- (void)runTransactionEffect;
- (void)setAutomaticallyLoadContent:(BOOL)a3;
- (void)setMotionEnabled:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation PKDynamicLayerView

- (void)loadContent
{
  if (!self->_loaded)
  {
    if (self->_automaticallyLoadContent)
    {
      [(PKPass *)self->_pass loadImageSetSync:0 preheat:1];
    }

    [(PKDynamicLayerView *)self _configureViews];
  }
}

- (void)_configureViews
{
  v9 = [(PKPass *)self->_pass frontFaceImageSet];
  if (!self->_staticFallbackView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [v9 dynamicLayerStaticFallbackImage];
    v6 = [v4 imageWithPKImage:v5];
    v7 = [v3 initWithImage:v6];
    staticFallbackView = self->_staticFallbackView;
    self->_staticFallbackView = v7;

    [(UIImageView *)self->_staticFallbackView setContentMode:1];
    [(PKDynamicLayerView *)self addSubview:self->_staticFallbackView];
  }

  [(PKDynamicLayerView *)self _configureDynamicViewsWithImageSet:v9];
  self->_loaded = 1;
  [(PKDynamicLayerView *)self _updateVisibility];
}

- (void)_updateVisibility
{
  v3 = [(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration isSupported];
  v4 = v3 & !UIAccessibilityIsReduceMotionEnabled();
  if (!self->_motionEnabled)
  {
    v4 = 0;
  }

  self->_effectiveMotionEnabled = v4;
  [(PKDynamicContentView *)self->_backgroundParallaxView setHidden:!v4];
  [(UIImageView *)self->_backgroundParallaxCrossDissolveView setHidden:!self->_effectiveMotionEnabled];
  [(PKDynamicContentView *)self->_neutralView setHidden:!self->_effectiveMotionEnabled];
  [(PKDynamicContentView *)self->_foregroundParallaxView setHidden:!self->_effectiveMotionEnabled];
  [(UIImageView *)self->_foregroundParallaxCrossDissolveView setHidden:!self->_effectiveMotionEnabled];
  [(PKDynamicContentView *)self->_staticOverlayView setHidden:!self->_effectiveMotionEnabled];
  [(UIImageView *)self->_staticFallbackView setHidden:self->_effectiveMotionEnabled];
  if (self->_paused || !self->_effectiveMotionEnabled)
  {
    [(PKDynamicLayerView *)self _removeParallaxMotionEffect];
  }

  else
  {
    [(PKDynamicLayerView *)self _addParallaxAndMotionEffects];
  }

  [(PKDynamicContentView *)self->_backgroundParallaxView setPaused:self->_paused];
  [(PKDynamicContentView *)self->_neutralView setPaused:self->_paused];
  [(PKDynamicContentView *)self->_foregroundParallaxView setPaused:self->_paused];
  staticOverlayView = self->_staticOverlayView;
  paused = self->_paused;

  [(PKDynamicContentView *)staticOverlayView setPaused:paused];
}

- (void)_removeParallaxMotionEffect
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PKDynamicLayerView__removeParallaxMotionEffect__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v2 options:0 animations:0.25 completion:0.0];
}

void __49__PKDynamicLayerView__removeParallaxMotionEffect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 544))
  {
    [*(v2 + 416) removeMotionEffect:?];
    [*(*(a1 + 32) + 424) removeMotionEffect:*(*(a1 + 32) + 544)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 544);
    *(v3 + 544) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 552))
  {
    [*(v2 + 448) removeMotionEffect:?];
    [*(*(a1 + 32) + 456) removeMotionEffect:*(*(a1 + 32) + 552)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 552);
    *(v5 + 552) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 560))
  {
    v7 = [*(v2 + 424) maskView];
    [v7 removeMotionEffect:*(*(a1 + 32) + 560)];

    v8 = [*(*(a1 + 32) + 456) maskView];
    [v8 removeMotionEffect:*(*(a1 + 32) + 560)];

    v9 = *(a1 + 32);
    v10 = *(v9 + 560);
    *(v9 + 560) = 0;
  }
}

- (void)_addParallaxAndMotionEffects
{
  v3 = [(PKDynamicLayerView *)self window];

  if (v3)
  {
    if ([(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration parallaxEnabled])
    {
      if (!self->_bottomEffect)
      {
        v4 = objc_alloc_init(MEMORY[0x1E69DD610]);
        bottomEffect = self->_bottomEffect;
        self->_bottomEffect = v4;

        [(_UIParallaxMotionEffect *)self->_bottomEffect setSlideMagnitude:-self->_parallaxOffset.horizontal, -self->_parallaxOffset.vertical];
        [(PKDynamicContentView *)self->_backgroundParallaxView addMotionEffect:self->_bottomEffect];
        if (self->_crossDissolveConfiguration)
        {
          [(UIImageView *)self->_backgroundParallaxCrossDissolveView addMotionEffect:self->_bottomEffect];
        }
      }

      if (!self->_topEffect)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69DD610]);
        topEffect = self->_topEffect;
        self->_topEffect = v6;

        [(_UIParallaxMotionEffect *)self->_topEffect setSlideMagnitude:self->_parallaxOffset.horizontal, self->_parallaxOffset.vertical];
        [(PKDynamicContentView *)self->_foregroundParallaxView addMotionEffect:self->_topEffect];
        if (self->_crossDissolveConfiguration)
        {
          [(UIImageView *)self->_foregroundParallaxCrossDissolveView addMotionEffect:self->_topEffect];
        }
      }
    }

    if (self->_crossDissolveConfiguration)
    {
      v8 = [(UIImageView *)self->_backgroundParallaxCrossDissolveView maskView];
      [(PKDynamicLayerView *)self _addRadialMaskEffectsToView:v8];

      v9 = [(UIImageView *)self->_foregroundParallaxCrossDissolveView maskView];
      [(PKDynamicLayerView *)self _addRadialMaskEffectsToView:v9];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKDynamicLayerView;
  [(PKDynamicLayerView *)&v4 didMoveToWindow];
  v3 = [(PKDynamicLayerView *)self window];

  if (v3)
  {
    [(PKDynamicLayerView *)self _updateVisibility];
  }

  else
  {
    [(PKDynamicLayerView *)self _removeParallaxMotionEffect];
  }
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = PKDynamicLayerView;
  [(PKDynamicLayerView *)&v43 layoutSubviews];
  [(PKDynamicLayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIImageView *)self->_staticFallbackView image];
  [v11 size];

  PKSizeAspectFit();
  staticFallbackView = self->_staticFallbackView;
  PKSizeAlignedInRect();
  [(UIImageView *)staticFallbackView setFrame:?];
  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  if ([(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration parallaxEnabled])
  {
    PKFloatRoundToPixel();
    PKFloatRoundToPixel();
    PKSizeAlignedInRect();
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
  }

  [(PKDynamicContentView *)self->_backgroundParallaxView setFrame:v13, v14, v15, v16];
  [(UIImageView *)self->_backgroundParallaxCrossDissolveView setFrame:v13, v14, v15, v16];
  [(PKDynamicContentView *)self->_neutralView setFrame:v4, v6, v8, v10];
  [(PKDynamicContentView *)self->_foregroundParallaxView setFrame:v13, v14, v15, v16];
  [(UIImageView *)self->_foregroundParallaxCrossDissolveView setFrame:v13, v14, v15, v16];
  [(PKDynamicContentView *)self->_staticOverlayView setFrame:v4, v6, v8, v10];
  [(UIImageView *)self->_backgroundParallaxCrossDissolveView bounds];
  PKFloatRoundToPixel();
  PKSizeAlignedInRect();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(UIImageView *)self->_backgroundParallaxCrossDissolveView maskView];
  [v29 setFrame:{v22, v24, v26, v28}];
  backgroundRadialGradientLayer = self->_backgroundRadialGradientLayer;
  [v29 bounds];
  [(CAGradientLayer *)backgroundRadialGradientLayer setFrame:?];
  [(UIImageView *)self->_foregroundParallaxCrossDissolveView bounds];
  PKFloatRoundToPixel();
  PKSizeAlignedInRect();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [(UIImageView *)self->_foregroundParallaxCrossDissolveView maskView];
  [v39 setFrame:{v32, v34, v36, v38}];
  foregroundRadialGradientLayer = self->_foregroundRadialGradientLayer;
  [v39 bounds];
  [(CAGradientLayer *)foregroundRadialGradientLayer setFrame:?];
  dimmingLayer = self->_dimmingLayer;
  if (dimmingLayer)
  {
    [(CALayer *)dimmingLayer setFrame:v4, v6, v8, v10];
    [(CALayer *)self->_dimmingLayer setPosition:v8 * 0.5, v10 * 0.5];
  }

  transactionEffectLayer = self->_transactionEffectLayer;
  if (transactionEffectLayer)
  {
    [(CAEmitterLayer *)transactionEffectLayer setFrame:v4, v6, v8, v10];
    [(CAEmitterLayer *)self->_transactionEffectLayer setPosition:v8 * 0.5, v10 * 0.5];
    [(PKDynamicLayerTransactionEffectConfiguration *)self->_transactionEffectConfiguration configureTransactionEffectEmitterLayer:self->_transactionEffectLayer withBounds:v4, v6, v8, v10];
  }
}

- (PKDynamicLayerView)initWithFrame:(CGRect)a3 pass:(id)a4 automaticallyLoadContent:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v29.receiver = self;
  v29.super_class = PKDynamicLayerView;
  v13 = [(PKDynamicLayerView *)&v29 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pass, a4);
    v15 = [(PKPass *)v14->_pass paymentPass];
    v16 = [v15 dynamicLayerConfiguration];
    dynamicLayerConfiguration = v14->_dynamicLayerConfiguration;
    v14->_dynamicLayerConfiguration = v16;

    v18 = [(PKDynamicLayerConfiguration *)v14->_dynamicLayerConfiguration transactionEffect];
    transactionEffectConfiguration = v14->_transactionEffectConfiguration;
    v14->_transactionEffectConfiguration = v18;

    v20 = [(PKDynamicLayerConfiguration *)v14->_dynamicLayerConfiguration crossDissolve];
    crossDissolveConfiguration = v14->_crossDissolveConfiguration;
    v14->_crossDissolveConfiguration = v20;

    v14->_automaticallyLoadContent = a5;
    v14->_loaded = 0;
    [(PKPass *)v14->_pass style];
    PKPassFrontFaceContentSize();
    PKFloatRoundToPixel();
    PKFloatRoundToPixel();
    PKFloatRoundToPixel();
    v14->_parallaxOffset.horizontal = v22;
    PKFloatRoundToPixel();
    v14->_parallaxOffset.vertical = v23;
    if (v14->_automaticallyLoadContent)
    {
      [(PKDynamicLayerView *)v14 loadContent];
    }

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v14 selector:sel__updateVisibility name:*MEMORY[0x1E69DD918] object:0];

    if (([(PKDynamicLayerConfiguration *)v14->_dynamicLayerConfiguration isSupported]& 1) == 0)
    {
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *MEMORY[0x1E69BB880];
        v27 = [(PKDynamicLayerConfiguration *)v14->_dynamicLayerConfiguration version];
        *buf = 134218240;
        v31 = v26;
        v32 = 2048;
        v33 = v27;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Using static fallback asset for dynamic pass. Client supported dynamic layer configuration version: %lu pass's version: %lu", buf, 0x16u);
      }
    }
  }

  return v14;
}

- (void)dealloc
{
  [(PKDynamicLayerView *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKDynamicLayerView;
  [(PKDynamicLayerView *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKDynamicContentView *)self->_foregroundParallaxView invalidate];
    [(PKDynamicContentView *)self->_neutralView invalidate];
    [(PKDynamicContentView *)self->_backgroundParallaxView invalidate];
    [(PKDynamicContentView *)self->_staticOverlayView invalidate];
    [(CALayer *)self->_dimmingLayer removeAllAnimations];
    [(CALayer *)self->_dimmingLayer removeFromSuperlayer];
    dimmingLayer = self->_dimmingLayer;
    self->_dimmingLayer = 0;

    [(CAEmitterLayer *)self->_transactionEffectLayer removeAllAnimations];
    [(CAEmitterLayer *)self->_transactionEffectLayer removeFromSuperlayer];
    transactionEffectLayer = self->_transactionEffectLayer;
    self->_transactionEffectLayer = 0;

    [(PKDynamicLayerView *)self _removeParallaxMotionEffect];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused == !a3)
  {
    self->_paused = a3;
    [(PKDynamicLayerView *)self _updateVisibility];
  }
}

- (void)setAutomaticallyLoadContent:(BOOL)a3
{
  if (self->_automaticallyLoadContent == !a3)
  {
    self->_automaticallyLoadContent = a3;
    [(PKDynamicLayerView *)self loadContent];
  }
}

- (void)setMotionEnabled:(BOOL)a3
{
  if (self->_motionEnabled == !a3)
  {
    self->_motionEnabled = a3;
    [(PKDynamicLayerView *)self _updateVisibility];
  }
}

- (void)_configureDynamicViewsWithImageSet:(id)a3
{
  v83 = a3;
  v4 = [(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration backgroundParallaxEmitter];
  v5 = [(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration neutralEmitter];
  v6 = [(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration foregroundParallaxEmitter];
  v82 = [(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration staticOverlayEmitter];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = [v83 backgroundParallaxImage];
  v9 = [v7 imageWithPKImage:v8];

  if (v4)
  {
    v10 = MEMORY[0x1E69DCAB8];
    v11 = [v83 backgroundParallaxEmitterImage];
    v12 = [v10 imageWithPKImage:v11];
  }

  else
  {
    v12 = 0;
  }

  if (!self->_backgroundParallaxView)
  {
    v13 = [[PKDynamicContentView alloc] initWithImage:v9 emitterImage:v12 dynamicLayerEmitterConfiguration:v4];
    backgroundParallaxView = self->_backgroundParallaxView;
    self->_backgroundParallaxView = v13;

    [(PKDynamicLayerView *)self addSubview:self->_backgroundParallaxView];
  }

  v78 = v12;
  v81 = v4;
  v15 = MEMORY[0x1E69DCAB8];
  v16 = [v83 backgroundParallaxCrossDissolveImage];
  v17 = [v15 imageWithPKImage:v16];

  if (v9 && self->_backgroundParallaxView && v17 && !self->_backgroundParallaxCrossDissolveView && self->_crossDissolveConfiguration)
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v19 = MEMORY[0x1E69DCAB8];
    v20 = [v83 backgroundParallaxCrossDissolveImage];
    v21 = [v19 imageWithPKImage:v20];
    v22 = [v18 initWithImage:v21];
    backgroundParallaxCrossDissolveView = self->_backgroundParallaxCrossDissolveView;
    self->_backgroundParallaxCrossDissolveView = v22;

    [(UIImageView *)self->_backgroundParallaxCrossDissolveView setContentMode:1];
    if (!self->_backgroundRadialGradientLayer)
    {
      v24 = RadialGradientLayer();
      backgroundRadialGradientLayer = self->_backgroundRadialGradientLayer;
      self->_backgroundRadialGradientLayer = v24;

      v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v27 = [v26 layer];
      [v27 addSublayer:self->_backgroundRadialGradientLayer];

      [(UIImageView *)self->_backgroundParallaxCrossDissolveView setMaskView:v26];
    }

    [(PKDynamicLayerView *)self addSubview:self->_backgroundParallaxCrossDissolveView];
  }

  v28 = MEMORY[0x1E69DCAB8];
  v29 = [v83 neutralImage];
  v30 = [v28 imageWithPKImage:v29];

  if (v5)
  {
    v31 = MEMORY[0x1E69DCAB8];
    v32 = [v83 neutralEmitterImage];
    v33 = [v31 imageWithPKImage:v32];
  }

  else
  {
    v33 = 0;
  }

  if (!self->_neutralView)
  {
    v34 = [[PKDynamicContentView alloc] initWithImage:v30 emitterImage:v33 dynamicLayerEmitterConfiguration:v5];
    neutralView = self->_neutralView;
    self->_neutralView = v34;

    [(PKDynamicLayerView *)self addSubview:self->_neutralView];
  }

  v79 = v9;
  v80 = v5;
  v36 = MEMORY[0x1E69DCAB8];
  v37 = [v83 foregroundParallaxImage];
  v38 = [v36 imageWithPKImage:v37];

  v76 = v30;
  if (v6)
  {
    v39 = MEMORY[0x1E69DCAB8];
    v40 = [v83 foregroundParallaxEmitterImage];
    v41 = [v39 imageWithPKImage:v40];
  }

  else
  {
    v41 = 0;
  }

  v77 = v17;
  if (!self->_foregroundParallaxView)
  {
    v42 = [[PKDynamicContentView alloc] initWithImage:v38 emitterImage:v41 dynamicLayerEmitterConfiguration:v6];
    foregroundParallaxView = self->_foregroundParallaxView;
    self->_foregroundParallaxView = v42;

    [(PKDynamicLayerView *)self addSubview:self->_foregroundParallaxView];
  }

  v44 = MEMORY[0x1E69DCAB8];
  v45 = [v83 foregroundParallaxCrossDissolveImage];
  v46 = [v44 imageWithPKImage:v45];

  v47 = v33;
  if (v38 && self->_foregroundParallaxView && v46 && !self->_foregroundParallaxCrossDissolveView && self->_crossDissolveConfiguration)
  {
    v48 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v49 = MEMORY[0x1E69DCAB8];
    v50 = [v83 foregroundParallaxCrossDissolveImage];
    v51 = [v49 imageWithPKImage:v50];
    v52 = [v48 initWithImage:v51];
    foregroundParallaxCrossDissolveView = self->_foregroundParallaxCrossDissolveView;
    self->_foregroundParallaxCrossDissolveView = v52;

    [(UIImageView *)self->_foregroundParallaxCrossDissolveView setContentMode:1];
    if (!self->_foregroundRadialGradientLayer)
    {
      v54 = RadialGradientLayer();
      foregroundRadialGradientLayer = self->_foregroundRadialGradientLayer;
      self->_foregroundRadialGradientLayer = v54;

      v56 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v57 = [v56 layer];
      [v57 addSublayer:self->_foregroundRadialGradientLayer];

      [(UIImageView *)self->_foregroundParallaxCrossDissolveView setMaskView:v56];
    }

    [(PKDynamicLayerView *)self addSubview:self->_foregroundParallaxCrossDissolveView];
  }

  v58 = MEMORY[0x1E69DCAB8];
  v59 = [v83 staticOverlayImage];
  v60 = [v58 imageWithPKImage:v59];

  if (v82)
  {
    v61 = MEMORY[0x1E69DCAB8];
    v62 = [v83 staticOverlayEmitterImage];
    v63 = [v61 imageWithPKImage:v62];
  }

  else
  {
    v63 = 0;
  }

  if (!self->_staticOverlayView)
  {
    v64 = [[PKDynamicContentView alloc] initWithImage:v60 emitterImage:v63 dynamicLayerEmitterConfiguration:v82];
    staticOverlayView = self->_staticOverlayView;
    self->_staticOverlayView = v64;

    [(PKDynamicLayerView *)self addSubview:self->_staticOverlayView];
  }

  v66 = MEMORY[0x1E69DCAB8];
  v67 = [v83 transactionEffectEmitterImage];
  v68 = [v66 imageWithPKImage:v67];
  transactionEffectEmitterImage = self->_transactionEffectEmitterImage;
  self->_transactionEffectEmitterImage = v68;

  v70 = [v83 transactionEffectEmitterShapeSVGData];
  transactionEffectShapeData = self->_transactionEffectShapeData;
  self->_transactionEffectShapeData = v70;

  if (!self->_dimmingLayer)
  {
    v72 = [MEMORY[0x1E6979398] layer];
    dimmingLayer = self->_dimmingLayer;
    self->_dimmingLayer = v72;

    v74 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.5];
    -[CALayer setBackgroundColor:](self->_dimmingLayer, "setBackgroundColor:", [v74 CGColor]);
    [(CALayer *)self->_dimmingLayer setOpacity:0.0];
    v75 = [(PKDynamicLayerView *)self layer];
    [v75 addSublayer:self->_dimmingLayer];
  }
}

- (void)_addRadialMaskEffectsToView:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!self->_radialMaskEffects)
  {
    v5 = [(PKDynamicLayerView *)self _configureMotionEffectGroupForCrossDissolveConfiguration:self->_crossDissolveConfiguration];
    radialMaskEffects = self->_radialMaskEffects;
    self->_radialMaskEffects = v5;

    v4 = v9;
  }

  v7 = [v4 motionEffects];
  v8 = [v7 count];

  if (!v8)
  {
    [v9 addMotionEffect:self->_radialMaskEffects];
  }
}

- (id)_configureMotionEffectGroupForCrossDissolveConfiguration:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCC98];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"layer.transform.translation.x" type:0];
  v7 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"layer.transform.translation.y" type:1];
  v8 = [v4 intensity];

  if (!v8)
  {
    [v6 setMinimumRelativeValue:&unk_1F3CC7880];
    [v6 setMaximumRelativeValue:&unk_1F3CC7898];
    [v7 setMinimumRelativeValue:&unk_1F3CC7880];
    [v7 setMaximumRelativeValue:&unk_1F3CC7898];
  }

  v11[0] = v6;
  v11[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v5 setMotionEffects:v9];

  return v5;
}

- (void)runTransactionEffect
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration isSupported]&& self->_transactionEffectConfiguration)
  {
    if (self->_transactionEffectLayer)
    {
      return;
    }

    v3 = [MEMORY[0x1E6979368] layer];
    transactionEffectLayer = self->_transactionEffectLayer;
    self->_transactionEffectLayer = v3;

    v5 = [(PKDynamicLayerTransactionEffectConfiguration *)self->_transactionEffectConfiguration configureTransactionEffectEmitterLayer:self->_transactionEffectLayer withImage:[(UIImage *)self->_transactionEffectEmitterImage CGImage] andEmitterShapeData:self->_transactionEffectShapeData];
    if (v5)
    {
      objc_initWeak(location, self);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__PKDynamicLayerView_runTransactionEffect__block_invoke;
      v11[3] = &unk_1E8011180;
      objc_copyWeak(&v12, location);
      [v5 pkui_setCompletionHandler:v11];
      [v5 duration];
      v6 = [(PKDynamicLayerView *)self _dimmingLayerAnimationWithDuration:?];
      v7 = [(PKDynamicLayerView *)self layer];
      [v7 addSublayer:self->_transactionEffectLayer];

      [(CALayer *)self->_dimmingLayer addAnimation:v6 forKey:@"dimmingLayerFadeInFadeOut"];
      [(CAEmitterLayer *)self->_transactionEffectLayer addAnimation:v5 forKey:@"transactionEffectAnimation"];

      objc_destroyWeak(&v12);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = self->_transactionEffectLayer;
      self->_transactionEffectLayer = 0;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *MEMORY[0x1E69BB880];
      v9 = [(PKDynamicLayerConfiguration *)self->_dynamicLayerConfiguration version];
      *location = 134218240;
      *&location[4] = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Boop Effect unsupported. Client supported dynamic layer configuration version: %lu pass's version: %lu", location, 0x16u);
    }
  }
}

void __42__PKDynamicLayerView_runTransactionEffect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[66] removeFromSuperlayer];
    v2 = v3[66];
    v3[66] = 0;

    WeakRetained = v3;
  }
}

- (id)_dimmingLayerAnimationWithDuration:(double)a3
{
  v4 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v4 setDuration:a3];
  [v4 setKeyTimes:&unk_1F3CC8480];
  [v4 setValues:&unk_1F3CC8498];

  return v4;
}

@end