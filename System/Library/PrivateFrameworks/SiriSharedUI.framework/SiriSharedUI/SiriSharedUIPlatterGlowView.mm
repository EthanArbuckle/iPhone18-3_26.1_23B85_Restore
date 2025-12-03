@interface SiriSharedUIPlatterGlowView
- (SiriSharedUIPlatterGlowView)initWithFrame:(CGRect)frame;
- (id)_createILLayerWithPalette:(unint64_t)palette;
- (void)_createFadeLayerAnimation;
- (void)_createSiriGlowToPlatter:(CGRect)platter;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_updateScreenSize;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cleanupViewHierarchy;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation SiriSharedUIPlatterGlowView

- (void)_updateScreenSize
{
  _screen = [(SiriSharedUIPlatterGlowView *)self _screen];

  if (_screen)
  {
    _screen2 = [(SiriSharedUIPlatterGlowView *)self _screen];
    [_screen2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13.receiver = self;
    v13.super_class = SiriSharedUIPlatterGlowView;
    [(SiriSharedUIPlatterGlowView *)&v13 setFrame:v6, v8, v10, v12];
    [(CALayer *)self->_colorLayer setFrame:v6, v8, v10, v12];
    [(SUICIntelligentLightLayer *)self->_noiseLayer setFrame:v6, v8, v10, v12];
    [(_UIIntelligenceSystemLightView *)self->_systemLightView setFrame:v6, v8, v10, v12];
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = SiriSharedUIPlatterGlowView;
  [(SiriSharedUIPlatterGlowView *)&v4 didMoveToSuperview];
  superview = [(SiriSharedUIPlatterGlowView *)self superview];

  if (superview)
  {
    [(SiriSharedUIPlatterGlowView *)self _updateScreenSize];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SiriSharedUIPlatterGlowView;
  [(SiriSharedUIPlatterGlowView *)&v4 didMoveToWindow];
  window = [(SiriSharedUIPlatterGlowView *)self window];

  if (window)
  {
    [(SiriSharedUIPlatterGlowView *)self _updateScreenSize];
    [(SiriSharedUIPlatterGlowView *)self _createFadeLayerAnimation];
  }

  else
  {
    [(SiriSharedUIPlatterGlowView *)self cleanupViewHierarchy];
  }
}

- (void)cleanupViewHierarchy
{
  v40 = *MEMORY[0x277D85DE8];
  [(SUICIntelligentLightLayer *)self->_noiseLayer invalidate];
  [(SUICIntelligentLightLayer *)self->_noiseLayer removeFromSuperlayer];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  subviews = [(SiriSharedUIPlatterGlowView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v33 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_glowLayers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v29 + 1) + 8 * v12++) removeFromSuperlayer];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  layer = [(SiriSharedUIPlatterGlowView *)self layer];
  sublayers = [layer sublayers];

  v15 = [sublayers countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v25 + 1) + 8 * v18++) removeFromSuperlayer];
      }

      while (v16 != v18);
      v16 = [sublayers countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v16);
  }

  noiseLayer = self->_noiseLayer;
  self->_noiseLayer = 0;

  glowLayers = self->_glowLayers;
  self->_glowLayers = 0;

  systemLightView = self->_systemLightView;
  self->_systemLightView = 0;

  colorLayer = self->_colorLayer;
  self->_colorLayer = 0;

  edrLayer = self->_edrLayer;
  self->_edrLayer = 0;

  fadeLayer = self->_fadeLayer;
  self->_fadeLayer = 0;

  [(SiriSharedUIPlatterGlowView *)self removeFromSuperview];
}

- (SiriSharedUIPlatterGlowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = SiriSharedUIPlatterGlowView;
  v7 = [(SiriSharedUIPlatterGlowView *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(SiriSharedUIPlatterGlowView *)v7 _createSiriGlowToPlatter:x, y, width, height];
  }

  return v8;
}

- (void)dealloc
{
  noiseLayer = self->_noiseLayer;
  if (noiseLayer)
  {
    [(SUICIntelligentLightLayer *)noiseLayer invalidate];
    [(SUICIntelligentLightLayer *)self->_noiseLayer removeFromSuperlayer];
    v4 = self->_noiseLayer;
    self->_noiseLayer = 0;
  }

  v5.receiver = self;
  v5.super_class = SiriSharedUIPlatterGlowView;
  [(SiriSharedUIPlatterGlowView *)&v5 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26 = *MEMORY[0x277D85DE8];
  v8 = -frame.origin.x;
  v9 = -frame.origin.y;
  window = [(SiriSharedUIPlatterGlowView *)self window];
  [window bounds];
  v24.receiver = self;
  v24.super_class = SiriSharedUIPlatterGlowView;
  [(SiriSharedUIPlatterGlowView *)&v24 setFrame:v8, v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_glowLayers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * v15++) setFrame:{x, y, width, height, v20}];
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  [(SiriSharedUIPlatterGlowView *)self frame];
  v17 = fmin(fmax(width + width, height), v16);
  v18 = x - (v17 - width) * 0.5;
  v19 = y - (v17 - height) * 0.5;
  [(CAGradientLayer *)self->_fadeLayer frame];
  v28.origin.x = v18;
  v28.origin.y = v19;
  v28.size.width = v17;
  v28.size.height = v17;
  if (!CGRectEqualToRect(v27, v28))
  {
    [(CAGradientLayer *)self->_fadeLayer setFrame:v18, v19, v17, v17];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_glowLayers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setBounds:{x, y, width, height, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_glowLayers;
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

        [*(*(&v9 + 1) + 8 * v8++) setCornerRadius:{radius, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_createILLayerWithPalette:(unint64_t)palette
{
  v5 = objc_alloc_init(MEMORY[0x277D61A60]);
  window = [(SiriSharedUIPlatterGlowView *)self window];

  if (window)
  {
    window2 = [(SiriSharedUIPlatterGlowView *)self window];
    [window2 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v5 setFrame:{v9, v11, v13, v15}];
  }

  [v5 setColorPalette:palette];
  [v5 setMasksToBounds:0];

  return v5;
}

- (void)_createSiriGlowToPlatter:(CGRect)platter
{
  height = platter.size.height;
  width = platter.size.width;
  y = platter.origin.y;
  x = platter.origin.x;
  v74[1] = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SiriSharedUIPlatterGlowView *)self setFrame:x, y, width, height];
  [(SiriSharedUIPlatterGlowView *)self setClipsToBounds:1];
  v68 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v68 setName:@"SiriPlatterGlowMask"];
  [v68 setAllowsHitTesting:0];
  v67 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v67 setName:@"RoundRectMask"];
  [v67 setAllowsHitTesting:0];
  v17 = [objc_alloc(MEMORY[0x277D76050]) initWithFrame:0 preferringAudioReactivity:{v10, v12, v14, v16}];
  systemLightView = self->_systemLightView;
  self->_systemLightView = v17;

  layer = [(_UIIntelligenceSystemLightView *)self->_systemLightView layer];
  colorLayer = self->_colorLayer;
  self->_colorLayer = layer;

  v21 = [(SiriSharedUIPlatterGlowView *)self _createILLayerWithPalette:500];
  noiseLayer = self->_noiseLayer;
  self->_noiseLayer = v21;

  [(SUICIntelligentLightLayer *)self->_noiseLayer setPaused:0];
  v23 = *MEMORY[0x277CDA328];
  v24 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  v25 = [MEMORY[0x277CD9EA0] filterWithType:v23];
  v26 = [MEMORY[0x277CD9EA0] filterWithType:v23];
  v27 = *MEMORY[0x277CDA4F0];
  [v24 setValue:&unk_282F91008 forKey:*MEMORY[0x277CDA4F0]];
  v28 = v25;
  v65 = v25;
  [v25 setValue:&unk_282F91020 forKey:v27];
  v64 = v26;
  [v26 setValue:&unk_282F91038 forKey:v27];
  v66 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v29 = MEMORY[0x277CCAE60];
  CAColorMatrixMakeMultiplyColor();
  v30 = [v29 valueWithCAColorMatrix:v69];
  [v66 setValue:v30 forKey:*MEMORY[0x277CDA440]];

  [v66 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA350]];
  v31 = self->_colorLayer;
  v74[0] = v66;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  [(CALayer *)v31 setFilters:v32];

  v33 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v33 setName:@"RoundRect-BlurLarge"];
  [v33 setFrame:{x, y, width, height}];
  [v33 setMasksToBounds:0];
  [v33 setAllowsHitTesting:0];
  [v33 setCornerRadius:25.0];
  [v33 setBorderWidth:10.0];
  [v33 borderWidth];
  [v33 setBorderOffset:v34 * 0.5];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v33 setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  v36 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  [v33 setBorderColor:{objc_msgSend(v36, "CGColor")}];

  v73 = v24;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  [v33 setFilters:v37];

  v38 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v38 setName:@"RoundRect-BlurMedium"];
  [v38 setFrame:{x, y, width, height}];
  [v38 setMasksToBounds:0];
  [v38 setAllowsHitTesting:0];
  [v38 setCornerRadius:25.0];
  [v38 setBorderWidth:4.0];
  [v38 borderWidth];
  [v38 setBorderOffset:v39 * 0.5];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v38 setBackgroundColor:{objc_msgSend(clearColor2, "CGColor")}];

  v41 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  [v38 setBorderColor:{objc_msgSend(v41, "CGColor")}];

  v72 = v28;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  [v38 setFilters:v42];

  v43 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v43 setName:@"RoundRect-BlurSmall"];
  [v43 setFrame:{x, y, width, height}];
  [v43 setMasksToBounds:0];
  [v43 setAllowsHitTesting:0];
  [v43 setCornerRadius:25.0];
  [v43 setBorderWidth:3.0];
  [v43 borderWidth];
  [v43 setBorderOffset:v44 * 0.5];
  v45 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.05];
  [v43 setBackgroundColor:{objc_msgSend(v45, "CGColor")}];

  v46 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  [v43 setBorderColor:{objc_msgSend(v46, "CGColor")}];

  v71 = v26;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  [v43 setFilters:v47];

  v48 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v48 setName:@"RoundRect-Inside"];
  [v48 setFrame:{x, y, width, height}];
  [v48 setMasksToBounds:0];
  [v48 setAllowsHitTesting:0];
  [v48 setCornerRadius:25.0];
  v49 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
  [v48 setBackgroundColor:{objc_msgSend(v49, "CGColor")}];

  v50 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v50 setFromValue:&unk_282F910E8];
  [v50 setToValue:&unk_282F910F8];
  [v50 setDuration:2.3];
  [v50 setBeginTime:CACurrentMediaTime() + 1.0];
  [v50 setRemovedOnCompletion:0];
  [v50 setFillMode:*MEMORY[0x277CDA238]];
  v51 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
  [v50 setTimingFunction:v51];

  [v48 addAnimation:v50 forKey:@"opacityAnimation"];
  [(CALayer *)self->_colorLayer setAllowsGroupBlending:0];
  LODWORD(v52) = 5.0;
  [(CALayer *)self->_colorLayer setGain:v52];
  v53 = self->_colorLayer;
  v54 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [(CALayer *)v53 setValue:v54 forKey:@"allowsLimitedHeadroom"];

  layer2 = [MEMORY[0x277CD9EB0] layer];
  fadeLayer = self->_fadeLayer;
  self->_fadeLayer = layer2;

  [(CAGradientLayer *)self->_fadeLayer setName:@"Fade In/Out Mask Layer"];
  [(CAGradientLayer *)self->_fadeLayer setFrame:x, y, width, height];
  [(CAGradientLayer *)self->_fadeLayer setMasksToBounds:0];
  [(CAGradientLayer *)self->_fadeLayer setAllowsHitTesting:0];
  [(CAGradientLayer *)self->_fadeLayer setType:*MEMORY[0x277CDA6A0]];
  redColor = [MEMORY[0x277D75348] redColor];
  v70[0] = [redColor CGColor];
  redColor2 = [MEMORY[0x277D75348] redColor];
  v70[1] = [redColor2 CGColor];
  clearColor3 = [MEMORY[0x277D75348] clearColor];
  v70[2] = [clearColor3 CGColor];
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];
  [(CAGradientLayer *)self->_fadeLayer setColors:v60];

  [(CAGradientLayer *)self->_fadeLayer setStartPoint:0.5, 0.5];
  [(CAGradientLayer *)self->_fadeLayer setEndPoint:1.0, 1.0];
  [(CAGradientLayer *)self->_fadeLayer setLocations:&unk_282F90F78];
  v61 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA308]];
  [(CAGradientLayer *)self->_fadeLayer setCompositingFilter:v61];

  [v68 addSublayer:self->_noiseLayer];
  [v68 addSublayer:v67];
  [v68 addSublayer:v48];
  [v68 addSublayer:self->_fadeLayer];
  [v67 addSublayer:v43];
  [v67 addSublayer:v38];
  [v67 addSublayer:v33];
  [v67 setCompositingFilter:*MEMORY[0x277CDA5A0]];
  [(CALayer *)self->_colorLayer setMask:v68];
  [(SiriSharedUIPlatterGlowView *)self addSubview:self->_systemLightView];
  [(SiriSharedUIPlatterGlowView *)self _updateScreenSize];
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:{v43, v38, v33, v48, 0}];
  glowLayers = self->_glowLayers;
  self->_glowLayers = v62;
}

- (void)_createFadeLayerAnimation
{
  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
  v3 = MEMORY[0x277CCABB0];
  [(SiriSharedUIPlatterGlowView *)self frame];
  v5 = [v3 numberWithDouble:v4 * 0.5];
  [v13 setFromValue:v5];

  [v13 setToValue:&unk_282F91050];
  [v13 setDuration:2.5];
  v6 = *MEMORY[0x277CDA7A8];
  v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
  [v13 setTimingFunction:v7];

  [(CAGradientLayer *)self->_fadeLayer addAnimation:v13 forKey:@"positionAnimation"];
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v8 setFromValue:&unk_282F91108];
  [v8 setToValue:&unk_282F91118];
  [v8 setDuration:2.5];
  [v8 setRemovedOnCompletion:0];
  v9 = *MEMORY[0x277CDA238];
  [v8 setFillMode:*MEMORY[0x277CDA238]];
  v10 = [MEMORY[0x277CD9EF8] functionWithName:v6];
  [v8 setTimingFunction:v10];

  [(CAGradientLayer *)self->_fadeLayer addAnimation:v8 forKey:@"scaleAnimation"];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v11 setFromValue:&unk_282F91038];
  [v11 setToValue:&unk_282F91050];
  [v11 setDuration:3.0];
  [v11 setBeginTime:CACurrentMediaTime() + 2.0];
  [v11 setRemovedOnCompletion:0];
  [v11 setFillMode:v9];
  v12 = [MEMORY[0x277CD9EF8] functionWithName:v6];
  [v11 setTimingFunction:v12];

  [v11 setDelegate:self];
  [(CAGradientLayer *)self->_fadeLayer addAnimation:v11 forKey:@"opacityAnimation"];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    fadeLayer = self->_fadeLayer;
    stopCopy = stop;
    v7 = [(CAGradientLayer *)fadeLayer animationForKey:@"opacityAnimation"];
    v8 = [stopCopy isEqual:v7];

    if (v8)
    {

      [(SiriSharedUIPlatterGlowView *)self removeFromSuperview];
    }
  }
}

@end