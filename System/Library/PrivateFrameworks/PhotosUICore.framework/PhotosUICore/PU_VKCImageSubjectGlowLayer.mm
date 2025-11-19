@interface PU_VKCImageSubjectGlowLayer
- (PU_VKCImageSubjectGlowLayer)init;
- (id)animationGroupWithDuration:(double)a3 beginTime:(double)a4 animations:(id)a5;
- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5;
- (id)shapeLayerLineWidth:(double)a3 opacity:(double)a4 path:(CGPath *)a5;
- (id)thickGlowParametersWithViewScale:(double)a3;
- (id)thinGlowParametersWithScreenScale:(double)a3 viewScale:(double)a4;
- (void)beginAnimationWithViewScale:(double)a3 screenScale:(double)a4 path:(id)a5 index:(int64_t)a6 count:(int64_t)a7 identifier:(id)a8;
- (void)configureAnimationWithViewScale:(double)a3 screenScale:(double)a4 path:(id)a5 index:(int64_t)a6 count:(int64_t)a7 identifier:(id)a8;
- (void)hideGlow:(BOOL)a3;
- (void)renderGlowParameters:(id)a3 path:(CGPath *)a4 pathLength:(double)a5 duration:(double)a6 maxStrokeLengthFraction:(id)a7 beginDelay:(double)a8 identifier:(id)a9;
- (void)stopAnimationAnimated:(BOOL)a3;
- (void)stopAnimationForIdentifier:(id)a3 animated:(BOOL)a4;
@end

@implementation PU_VKCImageSubjectGlowLayer

- (id)animationGroupWithDuration:(double)a3 beginTime:(double)a4 animations:(id)a5
{
  v7 = MEMORY[0x1E6979308];
  v8 = a5;
  v9 = objc_alloc_init(v7);
  [v9 setDuration:a3];
  LODWORD(v10) = 2139095040;
  [v9 setRepeatCount:v10];
  [v9 setBeginTime:a4];
  [v9 setAnimations:v8];

  return v9;
}

- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5
{
  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:a3];
  [v7 setFromValue:&unk_1F190E688];
  [v7 setToValue:&unk_1F190E698];
  [v7 setBeginTime:a4];
  [v7 setDuration:a5];
  [v7 setFillMode:*MEMORY[0x1E69797E8]];

  return v7;
}

- (id)shapeLayerLineWidth:(double)a3 opacity:(double)a4 path:(CGPath *)a5
{
  v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setStrokeColor:{objc_msgSend(v9, "CGColor")}];

  [v8 setLineWidth:a3];
  [v8 setFillColor:0];
  *&v10 = a4;
  [v8 setOpacity:v10];
  [v8 setPath:a5];
  [v8 setStrokeStart:0.0];
  [v8 setStrokeEnd:0.0];

  return v8;
}

- (void)renderGlowParameters:(id)a3 path:(CGPath *)a4 pathLength:(double)a5 duration:(double)a6 maxStrokeLengthFraction:(id)a7 beginDelay:(double)a8 identifier:(id)a9
{
  v70[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a7;
  v59 = a9;
  [v15 blurRadius];
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
  v25 = CACurrentMediaTime() + a8;
  [v15 strokeLengthFraction];
  v27 = v26;
  [v15 strokeTaperLength];
  v29 = (v27 - v28 / a5) * a6;
  [v15 strokeLengthFraction];
  v31 = v30 * a6;
  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    [v15 strokeLengthFraction];
  }

  v60 = v16;
  v61 = v32 * a6;
  [v15 strokeCount];
  v33 = -1;
  v34 = self;
  v62 = v15;
  do
  {
    v35 = ++v33 / [v15 strokeCount];
    [v15 minThickness];
    v37 = v36;
    [v15 maxThickness];
    v39 = v37 + (v38 - v37) * v35;
    v40 = v29 + (v31 - v29) * (1.0 - v35);
    [v15 minOpacity];
    v42 = v41;
    [v15 maxOpacity];
    v44 = v42 + (v43 - v42) * v35;
    v45 = v61 + v40 * -0.5;
    v66 = [(PU_VKCImageSubjectGlowLayer *)v34 shapeLayerLineWidth:a4 opacity:v39 path:v44];
    v46 = [(PU_VKCImageSubjectGlowLayer *)v34 shapeLayerLineWidth:a4 opacity:v39 path:v44];
    v65 = [(PU_VKCImageSubjectGlowLayer *)v34 animationWithKeyPath:@"strokeEnd" beginTime:v45 duration:a6];
    v64 = [(PU_VKCImageSubjectGlowLayer *)v34 animationWithKeyPath:@"strokeStart" beginTime:v40 + v45 duration:a6];
    v47 = [(PU_VKCImageSubjectGlowLayer *)v34 animationWithKeyPath:@"strokeEnd" beginTime:v45 duration:a6];
    v48 = [(PU_VKCImageSubjectGlowLayer *)v34 animationWithKeyPath:@"strokeStart" beginTime:v40 + v45 duration:a6];
    v69[0] = v64;
    v69[1] = v65;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v50 = v49 = v23;
    v51 = [(PU_VKCImageSubjectGlowLayer *)v34 animationGroupWithDuration:v50 beginTime:a6 + a6 animations:v25];

    v68[0] = v48;
    v68[1] = v47;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    v53 = [(PU_VKCImageSubjectGlowLayer *)v34 animationGroupWithDuration:v52 beginTime:a6 + a6 animations:v25 - a6];

    v23 = v49;
    [v66 addAnimation:v51 forKey:@"strokeAnimationGroup"];
    [v46 addAnimation:v53 forKey:@"strokeAnimationGroup2"];
    [v49 addSublayer:v46];
    [v49 addSublayer:v66];

    v34 = self;
    v15 = v62;
  }

  while (v33 < [v62 strokeCount]);
  v54 = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  [v54 addSublayer:v49];

  v55 = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  v56 = [v55 objectForKeyedSubscript:v59];
  [v56 addObject:v49];
}

- (void)configureAnimationWithViewScale:(double)a3 screenScale:(double)a4 path:(id)a5 index:(int64_t)a6 count:(int64_t)a7 identifier:(id)a8
{
  v49[2] = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a8;
  v16 = [(PU_VKCImageSubjectGlowLayer *)self thinGlowParametersWithScreenScale:a4 viewScale:a3];
  v49[0] = v16;
  v17 = [(PU_VKCImageSubjectGlowLayer *)self thickGlowParametersWithViewScale:a3];
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

  v26 = [v14 bezierPathByReversingPath];

  v27 = [v26 vk_CGPath];
  [v26 vk_lengthIgnoringCurves];
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

  v32 = v31 / a7 * a6;
  if (a7 < 1)
  {
    v32 = 0.0;
  }

  if (a6 >= 1)
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
  v35 = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  [v35 setObject:v34 forKeyedSubscript:v15];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __103__PU_VKCImageSubjectGlowLayer_configureAnimationWithViewScale_screenScale_path_index_count_identifier___block_invoke;
  v37[3] = &unk_1E774C590;
  v38 = v15;
  v39 = v27;
  v40 = v29;
  v41 = v31;
  v42 = v23;
  v43 = v33;
  v37[4] = self;
  v36 = v15;
  [v19 enumerateObjectsUsingBlock:v37];
  [MEMORY[0x1E6979518] commit];
}

- (void)stopAnimationForIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 copy];

  if (v4)
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

  v11 = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  [v11 setObject:0 forKeyedSubscript:v6];
}

- (void)hideGlow:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] begin];
  v5 = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  v6 = [v5 sublayers];
  v7 = [v6 copy];

  if (v3)
  {
    [MEMORY[0x1E6979518] setAnimationDuration:0.35];
    [v5 setOpacity:0.0];
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
    [v5 setOpacity:0.0];
    [v7 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  v9 = [(PU_VKCImageSubjectGlowLayer *)self subLayersMap];
  [v9 removeAllObjects];

  [MEMORY[0x1E6979518] commit];
}

- (void)stopAnimationAnimated:(BOOL)a3
{
  [(PU_VKCImageSubjectGlowLayer *)self hideGlow:a3];

  [(PU_VKCImageSubjectGlowLayer *)self setActive:0];
}

- (void)beginAnimationWithViewScale:(double)a3 screenScale:(double)a4 path:(id)a5 index:(int64_t)a6 count:(int64_t)a7 identifier:(id)a8
{
  [(PU_VKCImageSubjectGlowLayer *)self configureAnimationWithViewScale:a5 screenScale:a6 path:a7 index:a8 count:a3 identifier:a4];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v9 = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  [v9 setOpacity:0.0];

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  v10 = [(PU_VKCImageSubjectGlowLayer *)self glowLayer];
  LODWORD(v11) = 1.0;
  [v10 setOpacity:v11];

  [MEMORY[0x1E6979518] commit];

  [(PU_VKCImageSubjectGlowLayer *)self setActive:1];
}

- (id)thickGlowParametersWithViewScale:(double)a3
{
  v4 = objc_alloc_init(PU_VKCGlowParameters);
  [(PU_VKCGlowParameters *)v4 setMinThickness:a3 * 4.0];
  [(PU_VKCGlowParameters *)v4 setMaxThickness:a3 * 16.0];
  [(PU_VKCGlowParameters *)v4 setBlurRadius:a3 * 20.0];
  [(PU_VKCGlowParameters *)v4 setStrokeLengthFraction:0.25];
  [(PU_VKCGlowParameters *)v4 setStrokeTaperLength:a3 * 200.0];
  [(PU_VKCGlowParameters *)v4 setMinOpacity:0.1];
  [(PU_VKCGlowParameters *)v4 setMaxOpacity:0.2];
  [(PU_VKCGlowParameters *)v4 setStrokeCount:3];

  return v4;
}

- (id)thinGlowParametersWithScreenScale:(double)a3 viewScale:(double)a4
{
  v6 = objc_alloc_init(PU_VKCGlowParameters);
  [(PU_VKCGlowParameters *)v6 setMinThickness:a4 * 0.3];
  [(PU_VKCGlowParameters *)v6 setMaxThickness:a4 * 1.5];
  [(PU_VKCGlowParameters *)v6 setBlurRadius:a4 * 1.5];
  [(PU_VKCGlowParameters *)v6 setStrokeLengthFraction:0.25];
  [(PU_VKCGlowParameters *)v6 setStrokeTaperLength:a4 * 200.0];
  [(PU_VKCGlowParameters *)v6 setMinOpacity:1.0];
  [(PU_VKCGlowParameters *)v6 setMaxOpacity:1.0];
  v7 = 12;
  if (a3 == 2.0)
  {
    v7 = 8;
  }

  if (a3 == 1.0)
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
    v5 = [MEMORY[0x1E695DF90] dictionary];
    subLayersMap = v2->_subLayersMap;
    v2->_subLayersMap = v5;
  }

  return v2;
}

@end