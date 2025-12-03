@interface _WTSweepTextEffect
- (CGSize)lineSize;
- (_WTSweepTextEffect)initWithChunk:(id)chunk effectView:(id)view;
- (double)sweepRadius;
- (void)RBLayer:(id)layer draw:(id)draw;
- (void)invalidate:(BOOL)invalidate;
- (void)update:(id)update;
- (void)updateEffectWith:(id)with;
@end

@implementation _WTSweepTextEffect

- (_WTSweepTextEffect)initWithChunk:(id)chunk effectView:(id)view
{
  v9.receiver = self;
  v9.super_class = _WTSweepTextEffect;
  v4 = [(_WTTextEffect *)&v9 initWithChunk:chunk effectView:view];
  if (v4)
  {
    v5 = +[_WTColor grayColor];
    v6 = *(v4 + 19);
    *(v4 + 19) = v5;

    *(v4 + 200) = *MEMORY[0x1E695F060];
    v7 = v4;
  }

  return v4;
}

- (double)sweepRadius
{
  if (self->_lineSize.width <= 0.0 || self->_lineSize.height <= 0.0)
  {
    [(_WTTextEffect *)self defaultSweepRadius];
  }

  else
  {
    [(_WTTextEffect *)self sweepRadiusForLineSize:?];
  }

  return result;
}

- (void)invalidate:(BOOL)invalidate
{
  if (invalidate)
  {
    v4 = dispatch_time(0, 16000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___WTSweepTextEffect_invalidate___block_invoke;
    block[3] = &unk_1E8480BD0;
    v11 = 1;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    displayLink = [(_WTSweepTextEffect *)self displayLink];
    [displayLink invalidate];

    [(_WTSweepTextEffect *)self setDisplayLink:0];
    rootLayer = [(_WTTextEffect *)self rootLayer];
    [rootLayer removeFromSuperlayer];

    fadeOutLayer = [(_WTSweepTextEffect *)self fadeOutLayer];
    [fadeOutLayer removeFromSuperlayer];

    completion = [(_WTTextEffect *)self completion];

    if (completion)
    {
      completion2 = [(_WTTextEffect *)self completion];
      completion2[2]();
    }
  }
}

- (void)updateEffectWith:(id)with
{
  v79 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v77.receiver = self;
  v77.super_class = _WTSweepTextEffect;
  [(_WTTextEffect *)&v77 updateEffectWith:withCopy];
  if ([(_WTTextEffect *)self needsSetup])
  {
    [MEMORY[0x1E6979518] begin];
    [(_WTSweepTextEffect *)self setStartTime:CACurrentMediaTime() + 0.25];
    layer = [MEMORY[0x1E69C70E0] layer];
    [(_WTSweepTextEffect *)self setRbLayer:layer];

    rbLayer = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer setOpaque:0];

    rbLayer2 = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer2 setColorMode:11];

    rbLayer3 = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer3 setWantsExtendedDynamicRangeContent:1];

    rbLayer4 = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer4 setValue:MEMORY[0x1E695E118] forKey:@"allowsLimitedHeadroom"];

    [(_WTTextEffect *)self _maxRequestedEDR];
    v11 = v10;
    rbLayer5 = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer5 setContentsMaximumDesiredEDR:v11];

    effectView = [(_WTTextEffect *)self effectView];
    window = [effectView window];
    [window platformBackingScale];
    v16 = v15;
    rbLayer6 = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer6 setContentsScale:v16];

    rbLayer7 = [(_WTSweepTextEffect *)self rbLayer];
    [rbLayer7 setDelegate:self];

    effectView2 = [(_WTTextEffect *)self effectView];
    v20 = [effectView2 platformInstalledDisplayLinkWithTarget:self selector:sel_update_];
    [(_WTSweepTextEffect *)self setDisplayLink:v20];

    layer2 = [MEMORY[0x1E6979398] layer];
    [(_WTTextEffect *)self setRootLayer:layer2];

    baseFillColor = [(_WTSweepTextEffect *)self baseFillColor];
    cGColor = [baseFillColor CGColor];
    rootLayer = [(_WTTextEffect *)self rootLayer];
    [rootLayer setBackgroundColor:cGColor];

    animateFromColor = [(_WTSweepTextEffect *)self animateFromColor];

    v26 = MEMORY[0x1E69797E0];
    v27 = MEMORY[0x1E6979EB8];
    if (animateFromColor)
    {
      v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
      animateFromColor2 = [(_WTSweepTextEffect *)self animateFromColor];
      [v28 setFromValue:{objc_msgSend(animateFromColor2, "CGColor")}];

      baseFillColor2 = [(_WTSweepTextEffect *)self baseFillColor];
      [v28 setToValue:{objc_msgSend(baseFillColor2, "CGColor")}];

      [v28 setDuration:0.35];
      [v28 setFillMode:*v26];
      [v28 setRemovedOnCompletion:1];
      v31 = [MEMORY[0x1E69793D0] functionWithName:*v27];
      [v28 setTimingFunction:v31];

      rootLayer2 = [(_WTTextEffect *)self rootLayer];
      [rootLayer2 addAnimation:v28 forKey:@"backgroundColor"];
    }

    layer3 = [MEMORY[0x1E6979398] layer];
    [(_WTSweepTextEffect *)self setRootMaskLayer:layer3];

    rootMaskLayer = [(_WTSweepTextEffect *)self rootMaskLayer];
    rootLayer3 = [(_WTTextEffect *)self rootLayer];
    [rootLayer3 setMask:rootMaskLayer];

    rootLayer4 = [(_WTTextEffect *)self rootLayer];
    rbLayer8 = [(_WTSweepTextEffect *)self rbLayer];
    [rootLayer4 addSublayer:rbLayer8];

    layer4 = [MEMORY[0x1E6979398] layer];
    [(_WTSweepTextEffect *)self setFadeOutLayer:layer4];

    effectView3 = [(_WTTextEffect *)self effectView];
    [effectView3 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    fadeOutLayer = [(_WTSweepTextEffect *)self fadeOutLayer];
    [fadeOutLayer setFrame:{v41, v43, v45, v47}];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v49 = withCopy;
    v50 = [v49 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v74;
      do
      {
        v53 = 0;
        do
        {
          if (*v74 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v73 + 1) + 8 * v53);
          fadeOutLayer2 = [(_WTSweepTextEffect *)self fadeOutLayer];
          layerWithContents = [v54 layerWithContents];
          [fadeOutLayer2 addSublayer:layerWithContents];

          ++v53;
        }

        while (v51 != v53);
        v51 = [v49 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v51);
    }

    fadeOutLayer3 = [(_WTSweepTextEffect *)self fadeOutLayer];
    [fadeOutLayer3 setOpacity:0.0];

    effectView4 = [(_WTTextEffect *)self effectView];
    layer5 = [effectView4 layer];
    rootLayer5 = [(_WTTextEffect *)self rootLayer];
    [layer5 addSublayer:rootLayer5];

    effectView5 = [(_WTTextEffect *)self effectView];
    layer6 = [effectView5 layer];
    fadeOutLayer4 = [(_WTSweepTextEffect *)self fadeOutLayer];
    rootLayer6 = [(_WTTextEffect *)self rootLayer];
    [layer6 insertSublayer:fadeOutLayer4 above:rootLayer6];

    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __39___WTSweepTextEffect_updateEffectWith___block_invoke;
    v72[3] = &unk_1E8480BF8;
    v72[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v72];
    v65 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v65 setFromValue:&unk_1F4FCB950];
    [v65 setToValue:&unk_1F4FCB968];
    [v65 setDuration:0.75];
    [v65 setFillMode:*MEMORY[0x1E69797E0]];
    [v65 setRemovedOnCompletion:1];
    v66 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v65 setTimingFunction:v66];

    fadeOutLayer5 = [(_WTSweepTextEffect *)self fadeOutLayer];
    [fadeOutLayer5 addAnimation:v65 forKey:@"opacity"];

    [MEMORY[0x1E6979518] commit];
  }

  effectView6 = [(_WTTextEffect *)self effectView];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __39___WTSweepTextEffect_updateEffectWith___block_invoke_20;
  v70[3] = &unk_1E8480C70;
  v70[4] = self;
  v71 = withCopy;
  v69 = withCopy;
  [effectView6 platformPerformWithoutAnimation:v70];
}

- (void)update:(id)update
{
  displayLink = [(_WTSweepTextEffect *)self displayLink];
  [displayLink timestamp];
  v6 = v5;
  [(_WTSweepTextEffect *)self startTime];
  v8 = v7;

  [(_WTSweepTextEffect *)self startTime];
  if (v9 == 0.0 || ([(_WTTextEffect *)self sweepDuration], v6 - v8 > v10))
  {
    displayLink2 = [(_WTSweepTextEffect *)self displayLink];
    [displayLink2 timestamp];
    [(_WTSweepTextEffect *)self setStartTime:?];
  }

  rbLayer = [(_WTSweepTextEffect *)self rbLayer];
  [rbLayer setNeedsDisplay];
}

- (void)RBLayer:(id)layer draw:(id)draw
{
  drawCopy = draw;
  [(_WTTextEffect *)self effectVisibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  effectView = [(_WTTextEffect *)self effectView];
  [effectView platformGetVisibleRect];
  v44 = v15;

  displayLink = [(_WTSweepTextEffect *)self displayLink];
  [displayLink timestamp];
  v18 = v17;
  [(_WTSweepTextEffect *)self startTime];
  v20 = v18 - v19;
  [(_WTTextEffect *)self sweepDuration];
  v22 = v20 / v21;

  v23 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  *&v24 = v22;
  [v23 _solveForInput:v24];
  v26 = v25;

  if (v13 >= 320.0)
  {
    v27 = v13;
  }

  else
  {
    v27 = 320.0;
  }

  [(_WTSweepTextEffect *)self sweepRadius];
  v29 = v28;
  v30 = v28 + v27 * v26 * 2.0;
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  MidX = CGRectGetMidX(v47);
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  v32 = v29 + CGRectGetMaxY(v48) + 50.0 - *&v44;
  v45 = objc_opt_new();
  v33 = +[_WTLightEffectPalette ponderingSweep];
  [(_WTTextEffect *)self _applyToFill:v45 colors:v33 center:MidX startRadius:v32 endRadius:v29, v30];

  v34 = objc_opt_new();
  [v34 setInfinite];
  [drawCopy beginLayer];
  [drawCopy addBlurFilterWithRadius:50.0];
  LODWORD(v35) = 1045220557;
  [drawCopy addBrightnessFilterWithAmount:v35];
  LODWORD(v36) = 1067030938;
  [drawCopy addContrastFilterWithAmount:v36];
  [(_WTTextEffect *)self clamp:v26 min:0.5 max:1.0];
  v38 = 1.0 - v37;
  *&v38 = v38;
  [drawCopy drawShape:v34 fill:v45 alpha:0 blendMode:v38];
  LODWORD(v39) = 1.0;
  [drawCopy drawLayerWithAlpha:0 blendMode:v39];
  [drawCopy beginLayer];
  v40 = objc_opt_new();
  v41 = +[_WTLightEffectPalette ponderingLightEdge];
  [(_WTTextEffect *)self _applyToFill:v40 colors:v41 center:MidX startRadius:v32 endRadius:v30 + -130.0, v30];

  [drawCopy addBlurFilterWithRadius:20.0];
  LODWORD(v42) = *"333?";
  [drawCopy drawShape:v34 fill:v40 alpha:27 blendMode:v42];
  LODWORD(v43) = 1.0;
  [drawCopy drawLayerWithAlpha:1003 blendMode:v43];
}

- (CGSize)lineSize
{
  width = self->_lineSize.width;
  height = self->_lineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end