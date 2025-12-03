@interface PU_VKCImageSubjectGlowLayer
- (PU_VKCImageSubjectGlowLayer)init;
- (id)animationGroupWithDuration:(double)duration beginTime:(double)time animations:(id)animations;
- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration;
- (id)shapeLayerLineWidth:(double)width opacity:(double)opacity path:(CGPath *)path;
- (id)thickGlowParametersWithViewScale:(double)scale;
- (id)thinGlowParametersWithScreenScale:(double)scale viewScale:(double)viewScale;
- (void)beginAnimationWithViewScale:(double)scale screenScale:(double)screenScale path:(id)path index:(int64_t)index count:(int64_t)count identifier:(id)identifier;
- (void)configureAnimationWithViewScale:(double)scale screenScale:(double)screenScale path:(id)path index:(int64_t)index count:(int64_t)count identifier:(id)identifier;
- (void)hideGlow:(BOOL)glow;
- (void)renderGlowParameters:(id)parameters path:(CGPath *)path pathLength:(double)length duration:(double)duration maxStrokeLengthFraction:(id)fraction beginDelay:(double)delay identifier:(id)identifier;
- (void)stopAnimationAnimated:(BOOL)animated;
- (void)stopAnimationForIdentifier:(id)identifier animated:(BOOL)animated;
@end

@implementation PU_VKCImageSubjectGlowLayer

- (id)animationGroupWithDuration:(double)duration beginTime:(double)time animations:(id)animations
{
  v7 = MEMORY[0x1E6979308];
  animationsCopy = animations;
  v9 = objc_alloc_init(v7);
  [v9 setDuration:duration];
  LODWORD(v10) = 2139095040;
  [v9 setRepeatCount:v10];
  [v9 setBeginTime:time];
  [v9 setAnimations:animationsCopy];

  return v9;
}

- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration
{
  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:path];
  [v7 setFromValue:&unk_1F190E688];
  [v7 setToValue:&unk_1F190E698];
  [v7 setBeginTime:time];
  [v7 setDuration:duration];
  [v7 setFillMode:*MEMORY[0x1E69797E8]];

  return v7;
}

- (id)shapeLayerLineWidth:(double)width opacity:(double)opacity path:(CGPath *)path
{
  v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setStrokeColor:{objc_msgSend(whiteColor, "CGColor")}];

  [v8 setLineWidth:width];
  [v8 setFillColor:0];
  *&v10 = opacity;
  [v8 setOpacity:v10];
  [v8 setPath:path];
  [v8 setStrokeStart:0.0];
  [v8 setStrokeEnd:0.0];

  return v8;
}

- (void)renderGlowParameters:(id)parameters path:(CGPath *)path pathLength:(double)length duration:(double)duration maxStrokeLengthFraction:(id)fraction beginDelay:(double)delay identifier:(id)identifier
{
  v70[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  fractionCopy = fraction;
  identifierCopy = identifier;
  [parametersCopy blurRadius];
  v18 = v17;
  v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  [v19 setValue:v20 forKeyPath:*MEMORY[0x1E6979BA8]];

  [v19 setValue:@"low" forKey:*MEMORY[0x1E6979BA0]];
  v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
  v67[0] = xmmword_1A5381330;
  v67[1] = xmmword_1A5381340;
  v67[2] = xmmword_1A5381350;
  v67[3] = xmmword_1A5381360;
  v67[4] = xmmword_1A5381370;
  v22 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v67];
  v57 = v21;
  [v21 setValue:v22 forKeyPath:@"inputColorMatrix"];

  v23 = objc_alloc_init(MEMORY[0x1E6979398]);
  v58 = v19;
  v70[0] = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  [v23 setFilters:v24];

  [v23 setCompositingFilter:*MEMORY[0x1E6979C58]];
  v25 = CACurrentMediaTime() + delay;
  [parametersCopy strokeLengthFraction];
  v27 = v26;
  [parametersCopy strokeTaperLength];
  v29 = (v27 - v28 / length) * duration;
  [parametersCopy strokeLengthFraction];
  v31 = v30 * duration;
  if (fractionCopy)
  {
    [fractionCopy doubleValue];
  }

  else
  {
    [parametersCopy strokeLengthFraction];
  }

  v60 = fractionCopy;
  v61 = v32 * duration;
  [parametersCopy strokeCount];
  v33 = -1;
  selfCopy2 = self;
  v62 = parametersCopy;
  do
  {
    v35 = ++v33 / [parametersCopy strokeCount];
    [parametersCopy minThickness];
    v37 = v36;
    [parametersCopy maxThickness];
    v39 = v37 + (v38 - v37) * v35;
    v40 = v29 + (v31 - v29) * (1.0 - v35);
    [parametersCopy minOpacity];
    v42 = v41;
    [parametersCopy maxOpacity];
    v44 = v42 + (v43 - v42) * v35;
    v45 = v61 + v40 * -0.5;
    v66 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 shapeLayerLineWidth:path opacity:v39 path:v44];
    v46 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 shapeLayerLineWidth:path opacity:v39 path:v44];
    v65 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 animationWithKeyPath:@"strokeEnd" beginTime:v45 duration:duration];
    v64 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 animationWithKeyPath:@"strokeStart" beginTime:v40 + v45 duration:duration];
    v47 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 animationWithKeyPath:@"strokeEnd" beginTime:v45 duration:duration];
    v48 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 animationWithKeyPath:@"strokeStart" beginTime:v40 + v45 duration:duration];
    v69[0] = v64;
    v69[1] = v65;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v50 = v49 = v23;
    v51 = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 animationGroupWithDuration:v50 beginTime:duration + duration animations:v25];

    v68[0] = v48;
    v68[1] = v47;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    duration = [(PU_VKCImageSubjectGlowLayer *)selfCopy2 animationGroupWithDuration:v52 beginTime:duration + duration animations:v25 - duration];

    v23 = v49;
    [v66 addAnimation:v51 forKey:@"strokeAnimationGroup"];
    [v46 addAnimation:duration forKey:@"strokeAnimationGroup2"];
    [v49 addSublayer:v46];
    [v49 addSublayer:v66];

    selfCopy2 = self;
    parametersCopy = v62;
  }

  while (v33 < [v62 strokeCount]);
  glowLayer = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  [glowLayer addSublayer:v49];

  subLayersMap = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  v56 = [subLayersMap objectForKeyedSubscript:identifierCopy];
  [v56 addObject:v49];
}

- (void)configureAnimationWithViewScale:(double)scale screenScale:(double)screenScale path:(id)path index:(int64_t)index count:(int64_t)count identifier:(id)identifier
{
  v49[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  v16 = [(PU_VKCImageSubjectGlowLayer *)self thinGlowParametersWithScreenScale:screenScale viewScale:scale];
  v49[0] = v16;
  v17 = [(PU_VKCImageSubjectGlowLayer *)self thickGlowParametersWithViewScale:scale];
  v49[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v44 + 1) + 8 * i) strokeLengthFraction];
        if (v23 < v25)
        {
          v23 = v25;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  bezierPathByReversingPath = [pathCopy bezierPathByReversingPath];

  vk_CGPath = [bezierPathByReversingPath vk_CGPath];
  [bezierPathByReversingPath vk_lengthIgnoringCurves];
  v29 = v28;
  v30 = v28 / 550.0;
  v31 = 1.5;
  if (v30 >= 1.5)
  {
    v31 = v30;
    if (v30 > 3.0)
    {
      v31 = 3.0;
    }
  }

  v32 = v31 / count * index;
  if (count < 1)
  {
    v32 = 0.0;
  }

  if (index >= 1)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0.0;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  subLayersMap = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  [subLayersMap setObject:v34 forKeyedSubscript:identifierCopy];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __103__PU_VKCImageSubjectGlowLayer_configureAnimationWithViewScale_screenScale_path_index_count_identifier___block_invoke;
  v37[3] = &unk_1E774C590;
  v38 = identifierCopy;
  v39 = vk_CGPath;
  v40 = v29;
  v41 = v31;
  v42 = v23;
  v43 = v33;
  v37[4] = self;
  v36 = identifierCopy;
  [v19 enumerateObjectsUsingBlock:v37];
  [MEMORY[0x1E6979518] commit];
}

- (void)stopAnimationForIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  subLayersMap = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  v8 = [subLayersMap objectForKeyedSubscript:identifierCopy];
  v9 = [v8 copy];

  if (animatedCopy)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationDuration:0.2];
    v10 = MEMORY[0x1E6979518];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__PU_VKCImageSubjectGlowLayer_stopAnimationForIdentifier_animated___block_invoke;
    v12[3] = &unk_1E774C648;
    v13 = v9;
    [v10 setCompletionBlock:v12];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    [v9 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  subLayersMap2 = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  [subLayersMap2 setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)hideGlow:(BOOL)glow
{
  glowCopy = glow;
  [MEMORY[0x1E6979518] begin];
  glowLayer = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  sublayers = [glowLayer sublayers];
  v7 = [sublayers copy];

  if (glowCopy)
  {
    [MEMORY[0x1E6979518] setAnimationDuration:0.35];
    [glowLayer setOpacity:0.0];
    v8 = MEMORY[0x1E6979518];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__PU_VKCImageSubjectGlowLayer_hideGlow___block_invoke;
    v10[3] = &unk_1E774C648;
    v11 = v7;
    [v8 setCompletionBlock:v10];
  }

  else
  {
    [glowLayer setOpacity:0.0];
    [v7 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  subLayersMap = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  [subLayersMap removeAllObjects];

  [MEMORY[0x1E6979518] commit];
}

- (void)stopAnimationAnimated:(BOOL)animated
{
  [(PU_VKCImageSubjectGlowLayer *)self hideGlow:animated];

  [(PU_VKCImageSubjectGlowLayer *)self setActive:0];
}

- (void)beginAnimationWithViewScale:(double)scale screenScale:(double)screenScale path:(id)path index:(int64_t)index count:(int64_t)count identifier:(id)identifier
{
  [(PU_VKCImageSubjectGlowLayer *)self configureAnimationWithViewScale:path screenScale:index path:count index:identifier count:scale identifier:screenScale];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  glowLayer = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  [glowLayer setOpacity:0.0];

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  glowLayer2 = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  LODWORD(v11) = 1.0;
  [glowLayer2 setOpacity:v11];

  [MEMORY[0x1E6979518] commit];

  [(PU_VKCImageSubjectGlowLayer *)self setActive:1];
}

- (id)thickGlowParametersWithViewScale:(double)scale
{
  v4 = objc_alloc_init(PU_VKCGlowParameters);
  [(PU_VKCGlowParameters *)v4 setMinThickness:scale * 4.0];
  [(PU_VKCGlowParameters *)v4 setMaxThickness:scale * 16.0];
  [(PU_VKCGlowParameters *)v4 setBlurRadius:scale * 20.0];
  [(PU_VKCGlowParameters *)v4 setStrokeLengthFraction:0.25];
  [(PU_VKCGlowParameters *)v4 setStrokeTaperLength:scale * 200.0];
  [(PU_VKCGlowParameters *)v4 setMinOpacity:0.1];
  [(PU_VKCGlowParameters *)v4 setMaxOpacity:0.2];
  [(PU_VKCGlowParameters *)v4 setStrokeCount:3];

  return v4;
}

- (id)thinGlowParametersWithScreenScale:(double)scale viewScale:(double)viewScale
{
  v6 = objc_alloc_init(PU_VKCGlowParameters);
  [(PU_VKCGlowParameters *)v6 setMinThickness:viewScale * 0.3];
  [(PU_VKCGlowParameters *)v6 setMaxThickness:viewScale * 1.5];
  [(PU_VKCGlowParameters *)v6 setBlurRadius:viewScale * 1.5];
  [(PU_VKCGlowParameters *)v6 setStrokeLengthFraction:0.25];
  [(PU_VKCGlowParameters *)v6 setStrokeTaperLength:viewScale * 200.0];
  [(PU_VKCGlowParameters *)v6 setMinOpacity:1.0];
  [(PU_VKCGlowParameters *)v6 setMaxOpacity:1.0];
  v7 = 12;
  if (scale == 2.0)
  {
    v7 = 8;
  }

  if (scale == 1.0)
  {
    v8 = 6;
  }

  else
  {
    v8 = v7;
  }

  [(PU_VKCGlowParameters *)v6 setStrokeCount:v8];

  return v6;
}

- (PU_VKCImageSubjectGlowLayer)init
{
  v8.receiver = self;
  v8.super_class = PU_VKCImageSubjectGlowLayer;
  v2 = [(PU_VKCImageSubjectGlowLayer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    glowLayer = v2->_glowLayer;
    v2->_glowLayer = v3;

    [(CALayer *)v2->_glowLayer setBackgroundColor:0];
    [(PU_VKCImageSubjectGlowLayer *)v2 addSublayer:v2->_glowLayer];
    [(CALayer *)v2->_glowLayer setAllowsGroupBlending:0];
    [(CALayer *)v2->_glowLayer setAllowsGroupOpacity:0];
    [(CALayer *)v2->_glowLayer setOpacity:0.0];
    [(PU_VKCImageSubjectGlowLayer *)v2 setAllowsGroupBlending:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    subLayersMap = v2->_subLayersMap;
    v2->_subLayersMap = dictionary;
  }

  return v2;
}

@end