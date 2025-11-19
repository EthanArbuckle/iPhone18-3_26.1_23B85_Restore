@interface _WTSweepTextEffect
- (CGSize)lineSize;
- (_WTSweepTextEffect)initWithChunk:(id)a3 effectView:(id)a4;
- (double)sweepRadius;
- (void)RBLayer:(id)a3 draw:(id)a4;
- (void)invalidate:(BOOL)a3;
- (void)update:(id)a3;
- (void)updateEffectWith:(id)a3;
@end

@implementation _WTSweepTextEffect

- (_WTSweepTextEffect)initWithChunk:(id)a3 effectView:(id)a4
{
  v9.receiver = self;
  v9.super_class = _WTSweepTextEffect;
  v4 = [(_WTTextEffect *)&v9 initWithChunk:a3 effectView:a4];
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

- (void)invalidate:(BOOL)a3
{
  if (a3)
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
    v5 = [(_WTSweepTextEffect *)self displayLink];
    [v5 invalidate];

    [(_WTSweepTextEffect *)self setDisplayLink:0];
    v6 = [(_WTTextEffect *)self rootLayer];
    [v6 removeFromSuperlayer];

    v7 = [(_WTSweepTextEffect *)self fadeOutLayer];
    [v7 removeFromSuperlayer];

    v8 = [(_WTTextEffect *)self completion];

    if (v8)
    {
      v9 = [(_WTTextEffect *)self completion];
      v9[2]();
    }
  }
}

- (void)updateEffectWith:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = _WTSweepTextEffect;
  [(_WTTextEffect *)&v77 updateEffectWith:v4];
  if ([(_WTTextEffect *)self needsSetup])
  {
    [MEMORY[0x1E6979518] begin];
    [(_WTSweepTextEffect *)self setStartTime:CACurrentMediaTime() + 0.25];
    v5 = [MEMORY[0x1E69C70E0] layer];
    [(_WTSweepTextEffect *)self setRbLayer:v5];

    v6 = [(_WTSweepTextEffect *)self rbLayer];
    [v6 setOpaque:0];

    v7 = [(_WTSweepTextEffect *)self rbLayer];
    [v7 setColorMode:11];

    v8 = [(_WTSweepTextEffect *)self rbLayer];
    [v8 setWantsExtendedDynamicRangeContent:1];

    v9 = [(_WTSweepTextEffect *)self rbLayer];
    [v9 setValue:MEMORY[0x1E695E118] forKey:@"allowsLimitedHeadroom"];

    [(_WTTextEffect *)self _maxRequestedEDR];
    v11 = v10;
    v12 = [(_WTSweepTextEffect *)self rbLayer];
    [v12 setContentsMaximumDesiredEDR:v11];

    v13 = [(_WTTextEffect *)self effectView];
    v14 = [v13 window];
    [v14 platformBackingScale];
    v16 = v15;
    v17 = [(_WTSweepTextEffect *)self rbLayer];
    [v17 setContentsScale:v16];

    v18 = [(_WTSweepTextEffect *)self rbLayer];
    [v18 setDelegate:self];

    v19 = [(_WTTextEffect *)self effectView];
    v20 = [v19 platformInstalledDisplayLinkWithTarget:self selector:sel_update_];
    [(_WTSweepTextEffect *)self setDisplayLink:v20];

    v21 = [MEMORY[0x1E6979398] layer];
    [(_WTTextEffect *)self setRootLayer:v21];

    v22 = [(_WTSweepTextEffect *)self baseFillColor];
    v23 = [v22 CGColor];
    v24 = [(_WTTextEffect *)self rootLayer];
    [v24 setBackgroundColor:v23];

    v25 = [(_WTSweepTextEffect *)self animateFromColor];

    v26 = MEMORY[0x1E69797E0];
    v27 = MEMORY[0x1E6979EB8];
    if (v25)
    {
      v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
      v29 = [(_WTSweepTextEffect *)self animateFromColor];
      [v28 setFromValue:{objc_msgSend(v29, "CGColor")}];

      v30 = [(_WTSweepTextEffect *)self baseFillColor];
      [v28 setToValue:{objc_msgSend(v30, "CGColor")}];

      [v28 setDuration:0.35];
      [v28 setFillMode:*v26];
      [v28 setRemovedOnCompletion:1];
      v31 = [MEMORY[0x1E69793D0] functionWithName:*v27];
      [v28 setTimingFunction:v31];

      v32 = [(_WTTextEffect *)self rootLayer];
      [v32 addAnimation:v28 forKey:@"backgroundColor"];
    }

    v33 = [MEMORY[0x1E6979398] layer];
    [(_WTSweepTextEffect *)self setRootMaskLayer:v33];

    v34 = [(_WTSweepTextEffect *)self rootMaskLayer];
    v35 = [(_WTTextEffect *)self rootLayer];
    [v35 setMask:v34];

    v36 = [(_WTTextEffect *)self rootLayer];
    v37 = [(_WTSweepTextEffect *)self rbLayer];
    [v36 addSublayer:v37];

    v38 = [MEMORY[0x1E6979398] layer];
    [(_WTSweepTextEffect *)self setFadeOutLayer:v38];

    v39 = [(_WTTextEffect *)self effectView];
    [v39 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [(_WTSweepTextEffect *)self fadeOutLayer];
    [v48 setFrame:{v41, v43, v45, v47}];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v49 = v4;
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
          v55 = [(_WTSweepTextEffect *)self fadeOutLayer];
          v56 = [v54 layerWithContents];
          [v55 addSublayer:v56];

          ++v53;
        }

        while (v51 != v53);
        v51 = [v49 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v51);
    }

    v57 = [(_WTSweepTextEffect *)self fadeOutLayer];
    [v57 setOpacity:0.0];

    v58 = [(_WTTextEffect *)self effectView];
    v59 = [v58 layer];
    v60 = [(_WTTextEffect *)self rootLayer];
    [v59 addSublayer:v60];

    v61 = [(_WTTextEffect *)self effectView];
    v62 = [v61 layer];
    v63 = [(_WTSweepTextEffect *)self fadeOutLayer];
    v64 = [(_WTTextEffect *)self rootLayer];
    [v62 insertSublayer:v63 above:v64];

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

    v67 = [(_WTSweepTextEffect *)self fadeOutLayer];
    [v67 addAnimation:v65 forKey:@"opacity"];

    [MEMORY[0x1E6979518] commit];
  }

  v68 = [(_WTTextEffect *)self effectView];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __39___WTSweepTextEffect_updateEffectWith___block_invoke_20;
  v70[3] = &unk_1E8480C70;
  v70[4] = self;
  v71 = v4;
  v69 = v4;
  [v68 platformPerformWithoutAnimation:v70];
}

- (void)update:(id)a3
{
  v4 = [(_WTSweepTextEffect *)self displayLink];
  [v4 timestamp];
  v6 = v5;
  [(_WTSweepTextEffect *)self startTime];
  v8 = v7;

  [(_WTSweepTextEffect *)self startTime];
  if (v9 == 0.0 || ([(_WTTextEffect *)self sweepDuration], v6 - v8 > v10))
  {
    v11 = [(_WTSweepTextEffect *)self displayLink];
    [v11 timestamp];
    [(_WTSweepTextEffect *)self setStartTime:?];
  }

  v12 = [(_WTSweepTextEffect *)self rbLayer];
  [v12 setNeedsDisplay];
}

- (void)RBLayer:(id)a3 draw:(id)a4
{
  v5 = a4;
  [(_WTTextEffect *)self effectVisibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(_WTTextEffect *)self effectView];
  [v14 platformGetVisibleRect];
  v44 = v15;

  v16 = [(_WTSweepTextEffect *)self displayLink];
  [v16 timestamp];
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
  [v5 beginLayer];
  [v5 addBlurFilterWithRadius:50.0];
  LODWORD(v35) = 1045220557;
  [v5 addBrightnessFilterWithAmount:v35];
  LODWORD(v36) = 1067030938;
  [v5 addContrastFilterWithAmount:v36];
  [(_WTTextEffect *)self clamp:v26 min:0.5 max:1.0];
  v38 = 1.0 - v37;
  *&v38 = v38;
  [v5 drawShape:v34 fill:v45 alpha:0 blendMode:v38];
  LODWORD(v39) = 1.0;
  [v5 drawLayerWithAlpha:0 blendMode:v39];
  [v5 beginLayer];
  v40 = objc_opt_new();
  v41 = +[_WTLightEffectPalette ponderingLightEdge];
  [(_WTTextEffect *)self _applyToFill:v40 colors:v41 center:MidX startRadius:v32 endRadius:v30 + -130.0, v30];

  [v5 addBlurFilterWithRadius:20.0];
  LODWORD(v42) = *"333?";
  [v5 drawShape:v34 fill:v40 alpha:27 blendMode:v42];
  LODWORD(v43) = 1.0;
  [v5 drawLayerWithAlpha:1003 blendMode:v43];
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