@interface VKCImageSubjectGlowLayer
- (VKCImageSubjectGlowLayer)init;
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

@implementation VKCImageSubjectGlowLayer

- (VKCImageSubjectGlowLayer)init
{
  v8.receiver = self;
  v8.super_class = VKCImageSubjectGlowLayer;
  v2 = [(VKCImageSubjectGlowLayer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    glowLayer = v2->_glowLayer;
    v2->_glowLayer = v3;

    [(CALayer *)v2->_glowLayer setBackgroundColor:0];
    [(VKCImageSubjectGlowLayer *)v2 addSublayer:v2->_glowLayer];
    [(CALayer *)v2->_glowLayer setAllowsGroupBlending:0];
    [(CALayer *)v2->_glowLayer setAllowsGroupOpacity:0];
    [(CALayer *)v2->_glowLayer setOpacity:0.0];
    [(VKCImageSubjectGlowLayer *)v2 setAllowsGroupBlending:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    subLayersMap = v2->_subLayersMap;
    v2->_subLayersMap = dictionary;
  }

  return v2;
}

- (id)thinGlowParametersWithScreenScale:(double)scale viewScale:(double)viewScale
{
  v6 = objc_alloc_init(VKCGlowParameters);
  [(VKCGlowParameters *)v6 setMinThickness:viewScale * 0.3];
  [(VKCGlowParameters *)v6 setMaxThickness:viewScale * 1.5];
  [(VKCGlowParameters *)v6 setBlurRadius:viewScale * 1.5];
  [(VKCGlowParameters *)v6 setStrokeLengthFraction:0.25];
  [(VKCGlowParameters *)v6 setStrokeTaperLength:viewScale * 200.0];
  [(VKCGlowParameters *)v6 setMinOpacity:1.0];
  [(VKCGlowParameters *)v6 setMaxOpacity:1.0];
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

  [(VKCGlowParameters *)v6 setStrokeCount:v8];

  return v6;
}

- (id)thickGlowParametersWithViewScale:(double)scale
{
  v4 = objc_alloc_init(VKCGlowParameters);
  [(VKCGlowParameters *)v4 setMinThickness:scale * 4.0];
  [(VKCGlowParameters *)v4 setMaxThickness:scale * 16.0];
  [(VKCGlowParameters *)v4 setBlurRadius:scale * 20.0];
  [(VKCGlowParameters *)v4 setStrokeLengthFraction:0.25];
  [(VKCGlowParameters *)v4 setStrokeTaperLength:scale * 200.0];
  [(VKCGlowParameters *)v4 setMinOpacity:0.1];
  [(VKCGlowParameters *)v4 setMaxOpacity:0.2];
  [(VKCGlowParameters *)v4 setStrokeCount:3];

  return v4;
}

- (void)beginAnimationWithViewScale:(double)scale screenScale:(double)screenScale path:(id)path index:(int64_t)index count:(int64_t)count identifier:(id)identifier
{
  [(VKCImageSubjectGlowLayer *)self configureAnimationWithViewScale:path screenScale:index path:count index:identifier count:scale identifier:screenScale];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  glowLayer = [(VKCImageSubjectGlowLayer *)self glowLayer];
  [glowLayer setOpacity:0.0];

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  glowLayer2 = [(VKCImageSubjectGlowLayer *)self glowLayer];
  LODWORD(v11) = 1.0;
  [glowLayer2 setOpacity:v11];

  [MEMORY[0x1E6979518] commit];

  [(VKCImageSubjectGlowLayer *)self setActive:1];
}

- (void)stopAnimationAnimated:(BOOL)animated
{
  [(VKCImageSubjectGlowLayer *)self hideGlow:animated];

  [(VKCImageSubjectGlowLayer *)self setActive:0];
}

- (void)hideGlow:(BOOL)glow
{
  glowCopy = glow;
  [MEMORY[0x1E6979518] begin];
  glowLayer = [(VKCImageSubjectGlowLayer *)self glowLayer];
  sublayers = [glowLayer sublayers];
  v7 = [sublayers copy];

  if (glowCopy)
  {
    [MEMORY[0x1E6979518] setAnimationDuration:0.35];
    [glowLayer setOpacity:0.0];
    v8 = MEMORY[0x1E6979518];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__VKCImageSubjectGlowLayer_hideGlow___block_invoke;
    v10[3] = &unk_1E7BE4208;
    v11 = v7;
    [v8 setCompletionBlock:v10];
  }

  else
  {
    [glowLayer setOpacity:0.0];
    [v7 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  subLayersMap = [(VKCImageSubjectGlowLayer *)self subLayersMap];
  [subLayersMap removeAllObjects];

  [MEMORY[0x1E6979518] commit];
}

- (void)stopAnimationForIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  subLayersMap = [(VKCImageSubjectGlowLayer *)self subLayersMap];
  v8 = [subLayersMap objectForKeyedSubscript:identifierCopy];
  v9 = [v8 copy];

  if (animatedCopy)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationDuration:0.2];
    v10 = MEMORY[0x1E6979518];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__VKCImageSubjectGlowLayer_stopAnimationForIdentifier_animated___block_invoke;
    v12[3] = &unk_1E7BE4208;
    v13 = v9;
    [v10 setCompletionBlock:v12];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    [v9 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  subLayersMap2 = [(VKCImageSubjectGlowLayer *)self subLayersMap];
  [subLayersMap2 setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)configureAnimationWithViewScale:(double)scale screenScale:(double)screenScale path:(id)path index:(int64_t)index count:(int64_t)count identifier:(id)identifier
{
  v48[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  v16 = [(VKCImageSubjectGlowLayer *)self thinGlowParametersWithScreenScale:screenScale viewScale:scale];
  v48[0] = v16;
  v17 = [(VKCImageSubjectGlowLayer *)self thickGlowParametersWithViewScale:scale];
  v48[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
  v21 = 0.0;
  v22 = 0.0;
  if (v20)
  {
    v23 = v20;
    v24 = *v44;
    do
    {
      v25 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v43 + 1) + 8 * v25) strokeLengthFraction];
        if (v22 < v26)
        {
          v22 = v26;
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v23);
  }

  bezierPathByReversingPath = [pathCopy bezierPathByReversingPath];

  vk_CGPath = [bezierPathByReversingPath vk_CGPath];
  [bezierPathByReversingPath vk_lengthIgnoringCurves];
  v30 = v29;
  v31 = VKMClamp(v29 / 350.0, 4.5, 6.0);
  v32 = v31 / count * index;
  if (count < 1)
  {
    v32 = 0.0;
  }

  if (index >= 1)
  {
    v21 = v32;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  subLayersMap = [(VKCImageSubjectGlowLayer *)self subLayersMap];
  [subLayersMap setObject:v33 forKeyedSubscript:identifierCopy];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __100__VKCImageSubjectGlowLayer_configureAnimationWithViewScale_screenScale_path_index_count_identifier___block_invoke;
  v36[3] = &unk_1E7BE6E80;
  v37 = identifierCopy;
  v38 = vk_CGPath;
  v39 = v30;
  v40 = v31;
  v41 = v22;
  v42 = v21;
  v36[4] = self;
  v35 = identifierCopy;
  [v19 enumerateObjectsUsingBlock:v36];
  [MEMORY[0x1E6979518] commit];
}

void __100__VKCImageSubjectGlowLayer_configureAnimationWithViewScale_screenScale_path_index_count_identifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 72);
  v9 = a2;
  v10 = [v7 numberWithDouble:v8];
  [v3 renderGlowParameters:v9 path:v4 pathLength:v10 duration:*(a1 + 40) maxStrokeLengthFraction:v5 beginDelay:v6 identifier:*(a1 + 80)];
}

- (void)renderGlowParameters:(id)parameters path:(CGPath *)path pathLength:(double)length duration:(double)duration maxStrokeLengthFraction:(id)fraction beginDelay:(double)delay identifier:(id)identifier
{
  v74[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  fractionCopy = fraction;
  identifierCopy = identifier;
  [parametersCopy blurRadius];
  v19 = __64__VKCImageSubjectBaseView_configurePulseAnimationWithViewScale___block_invoke(v18);
  v20 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
  v71[0] = xmmword_1B44286A0;
  v71[1] = xmmword_1B44286B0;
  v71[2] = xmmword_1B44286C0;
  v71[3] = xmmword_1B44286D0;
  v71[4] = xmmword_1B44286E0;
  v21 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v71];
  v60 = v20;
  [v20 setValue:v21 forKeyPath:@"inputColorMatrix"];

  v22 = objc_alloc_init(MEMORY[0x1E6979398]);
  v61 = v19;
  v74[0] = v19;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  [v22 setFilters:v23];

  [v22 setCompositingFilter:*MEMORY[0x1E6979C58]];
  v24 = CACurrentMediaTime() + delay;
  [parametersCopy strokeLengthFraction];
  v26 = v25;
  [parametersCopy strokeTaperLength];
  v28 = v26 - v27 / length;
  [parametersCopy strokeLengthFraction];
  v30 = v29;
  selfCopy = self;
  if (fractionCopy)
  {
    [fractionCopy doubleValue];
  }

  else
  {
    [parametersCopy strokeLengthFraction];
  }

  v63 = fractionCopy;
  v65 = v30 * duration;
  v66 = v28 * duration;
  v64 = v32 * duration;
  [parametersCopy strokeCount];
  v33 = -1;
  v34 = v24 - duration;
  pathCopy = path;
  do
  {
    ++v33;
    v35 = v24;
    v36 = v33 / [parametersCopy strokeCount];
    [parametersCopy minThickness];
    v38 = v37;
    [parametersCopy maxThickness];
    v40 = VKMMix(v38, v39, v36);
    v41 = VKMMix(v66, v65, 1.0 - v36);
    [parametersCopy minOpacity];
    v43 = v42;
    [parametersCopy maxOpacity];
    v45 = VKMMix(v43, v44, v36);
    v46 = v64 + v41 * -0.5;
    v70 = [(VKCImageSubjectGlowLayer *)selfCopy shapeLayerLineWidth:path opacity:v40 path:v45];
    v47 = [(VKCImageSubjectGlowLayer *)selfCopy shapeLayerLineWidth:path opacity:v40 path:v45];
    v69 = [(VKCImageSubjectGlowLayer *)selfCopy animationWithKeyPath:@"strokeEnd" beginTime:v46 duration:duration];
    v48 = v41 + v46;
    v68 = [(VKCImageSubjectGlowLayer *)selfCopy animationWithKeyPath:@"strokeStart" beginTime:v48 duration:duration];
    v49 = v46;
    v24 = v35;
    v50 = [(VKCImageSubjectGlowLayer *)selfCopy animationWithKeyPath:@"strokeEnd" beginTime:v49 duration:duration];
    v51 = [(VKCImageSubjectGlowLayer *)selfCopy animationWithKeyPath:@"strokeStart" beginTime:v48 duration:duration];
    v73[0] = v68;
    v73[1] = v69;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    v53 = [(VKCImageSubjectGlowLayer *)selfCopy animationGroupWithDuration:v52 beginTime:duration + duration animations:v35];

    v72[0] = v51;
    v72[1] = v50;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    [(VKCImageSubjectGlowLayer *)selfCopy animationGroupWithDuration:v54 beginTime:duration + duration animations:v34];
    v56 = v55 = parametersCopy;

    [v70 addAnimation:v53 forKey:@"strokeAnimationGroup"];
    [v47 addAnimation:v56 forKey:@"strokeAnimationGroup2"];
    [v22 addSublayer:v47];
    [v22 addSublayer:v70];

    parametersCopy = v55;
    path = pathCopy;
  }

  while (v33 < [v55 strokeCount]);
  glowLayer = [(VKCImageSubjectGlowLayer *)selfCopy glowLayer];
  [glowLayer addSublayer:v22];

  subLayersMap = [(VKCImageSubjectGlowLayer *)selfCopy subLayersMap];
  v59 = [subLayersMap objectForKeyedSubscript:identifierCopy];
  [v59 addObject:v22];
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

- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration
{
  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:path];
  [v7 setFromValue:&unk_1F2C39118];
  [v7 setToValue:&unk_1F2C39128];
  [v7 setBeginTime:time];
  [v7 setDuration:duration];
  [v7 setFillMode:*MEMORY[0x1E69797E8]];

  return v7;
}

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

@end