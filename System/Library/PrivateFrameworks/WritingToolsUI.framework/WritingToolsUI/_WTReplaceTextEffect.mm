@interface _WTReplaceTextEffect
- (_WTReplaceTextEffect)initWithChunk:(id)chunk effectView:(id)view;
- (double)sweepDuration;
- (void)RBLayer:(id)layer draw:(id)draw;
- (void)_alignFrames;
- (void)invalidate:(BOOL)invalidate;
- (void)prepareWithCoolPalette:(id)palette warmPalette:(id)warmPalette;
- (void)update:(id)update;
- (void)updateEffectWith:(id)with;
@end

@implementation _WTReplaceTextEffect

- (_WTReplaceTextEffect)initWithChunk:(id)chunk effectView:(id)view
{
  v11.receiver = self;
  v11.super_class = _WTReplaceTextEffect;
  v4 = [(_WTTextEffect *)&v11 initWithChunk:chunk effectView:view];
  if (v4)
  {
    v5 = +[_WTLightEffectPalette coolColors];
    coolPalette = v4->_coolPalette;
    v4->_coolPalette = v5;

    v7 = +[_WTLightEffectPalette warmColors];
    warmPalette = v4->_warmPalette;
    v4->_warmPalette = v7;

    [(_WTReplaceTextEffect *)v4 setAnimateRemovalWhenDone:1];
    v9 = v4;
  }

  return v4;
}

- (double)sweepDuration
{
  [(_WTTextEffect *)self effectVisibilityFrame];
  v3 = v2 / 800.0 * 2.2;
  v4 = 2.5;
  if (v3 <= 2.5)
  {
    v4 = v2 / 800.0 * 2.2;
  }

  if (v3 >= 1.5)
  {
    return v4;
  }

  else
  {
    return 1.5;
  }
}

- (void)prepareWithCoolPalette:(id)palette warmPalette:(id)warmPalette
{
  paletteCopy = palette;
  warmPaletteCopy = warmPalette;
  coolPalette = self->_coolPalette;
  self->_coolPalette = paletteCopy;
  v10 = paletteCopy;

  warmPalette = self->_warmPalette;
  self->_warmPalette = warmPaletteCopy;
}

- (void)invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  displayLink = [(_WTReplaceTextEffect *)self displayLink];
  [displayLink invalidate];

  [(_WTReplaceTextEffect *)self setDisplayLink:0];
  isDestination = [(_WTReplaceTextEffect *)self isDestination];
  v7 = isDestination;
  if (isDestination)
  {
    completion = [(_WTReplaceTextEffect *)self completion];

    if (completion)
    {
      completion2 = [(_WTReplaceTextEffect *)self completion];
      completion2[2]();
    }
  }

  [MEMORY[0x1E6979518] begin];
  v10 = 0.0;
  if (invalidateCopy)
  {
    v10 = 0.25;
  }

  [MEMORY[0x1E6979518] setAnimationDuration:v10];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35___WTReplaceTextEffect_invalidate___block_invoke;
  v12[3] = &unk_1E8480BD0;
  v12[4] = self;
  v13 = v7;
  [MEMORY[0x1E6979518] setCompletionBlock:v12];
  rootLayer = [(_WTTextEffect *)self rootLayer];
  [rootLayer setOpacity:0.0];

  [MEMORY[0x1E6979518] commit];
}

- (void)updateEffectWith:(id)with
{
  v131 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v128.receiver = self;
  v128.super_class = _WTReplaceTextEffect;
  [(_WTTextEffect *)&v128 updateEffectWith:withCopy];
  v5 = 0.0;
  v6 = 0.0;
  if ([(_WTReplaceTextEffect *)self _isInClipView])
  {
    effectView = [(_WTTextEffect *)self effectView];
    [effectView platformGetVisibleRect];
    v6 = v8;
    v5 = v9;
  }

  if ([(_WTTextEffect *)self needsSetup])
  {
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __41___WTReplaceTextEffect_updateEffectWith___block_invoke;
    v127[3] = &unk_1E8481020;
    v127[4] = self;
    [withCopy enumerateObjectsUsingBlock:v127];
    [(_WTTextEffect *)self effectVisibilityFrame];
    v11 = v10;
    [(_WTReplaceTextEffect *)self sweepDuration];
    v13 = v12;
    v14 = MEMORY[0x1E6979398];
    if ([(_WTReplaceTextEffect *)self isDestination])
    {
      v15 = @"destination rootLayer";
    }

    else
    {
      v15 = @"source rootLayer";
    }

    v16 = [v14 layerWithName:v15];
    [(_WTTextEffect *)self setRootLayer:v16];

    if ([(_WTReplaceTextEffect *)self highlightsCandidateRects])
    {
      v17 = [MEMORY[0x1E6979398] layerWithName:@"nonCandidateTextContent"];
      [(_WTReplaceTextEffect *)self setNonCandidateTextContent:v17];

      v18 = +[_WTColor grayColor];
      cGColor = [v18 CGColor];
      nonCandidateTextContent = [(_WTReplaceTextEffect *)self nonCandidateTextContent];
      [nonCandidateTextContent setBackgroundColor:cGColor];

      v21 = [MEMORY[0x1E6979398] layerWithName:@"nonCandidateTextContentMask"];
      [(_WTReplaceTextEffect *)self setNonCandidateTextContentMask:v21];

      nonCandidateTextContentMask = [(_WTReplaceTextEffect *)self nonCandidateTextContentMask];
      nonCandidateTextContent2 = [(_WTReplaceTextEffect *)self nonCandidateTextContent];
      [nonCandidateTextContent2 setMask:nonCandidateTextContentMask];
    }

    v24 = [MEMORY[0x1E6979398] layerWithName:@"textContentMask"];
    [(_WTReplaceTextEffect *)self setTextContentMask:v24];

    v112 = CACurrentMediaTime();
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v102 = withCopy;
    obj = withCopy;
    v25 = [obj countByEnumeratingWithState:&v123 objects:v130 count:16];
    if (v25)
    {
      v26 = v25;
      v111 = v13 * (v11 / (v11 * 3.0)) / v11;
      v27 = *v124;
      v110 = *MEMORY[0x1E6979ED0];
      v28 = *MEMORY[0x1E6979EB0];
      v29 = *MEMORY[0x1E69797E0];
      v105 = *v124;
      selfCopy = self;
      v103 = *MEMORY[0x1E69797E0];
      v104 = *MEMORY[0x1E6979EB0];
      do
      {
        v30 = 0;
        v107 = v26;
        do
        {
          if (*v124 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v114 = v30;
          v31 = *(*(&v123 + 1) + 8 * v30);
          layerWithContents = [v31 layerWithContents];
          [layerWithContents setName:@"textContentLayer"];
          v113 = v31;
          if ([(_WTReplaceTextEffect *)self highlightsCandidateRects])
          {
            layerWithContents2 = [v31 layerWithContents];
            [layerWithContents2 setName:@"nonCandidateTextContentLayer"];
            v33 = [MEMORY[0x1E6979398] layerWithName:@"candidatesMask"];
            [layerWithContents bounds];
            [v33 setFrame:?];
            v34 = [MEMORY[0x1E6979398] layerWithName:@"nonCandidatesMask"];
            v117 = layerWithContents;
            [layerWithContents bounds];
            [v34 setFrame:?];
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            candidateRects = [v31 candidateRects];
            v35 = [candidateRects countByEnumeratingWithState:&v119 objects:v129 count:16];
            if (v35)
            {
              v36 = v35;
              v116 = *v120;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v120 != v116)
                  {
                    objc_enumerationMutation(candidateRects);
                  }

                  v38 = *(*(&v119 + 1) + 8 * i);
                  v39 = [MEMORY[0x1E6979398] layerWithName:@"canididateRectMask"];
                  [v33 addSublayer:v39];
                  [v38 platformCGRectValue];
                  [v117 convertRect:v33 fromLayer:?];
                  [v39 setFrame:?];
                  v40 = +[_WTColor blackColor];
                  [v39 setBackgroundColor:{objc_msgSend(v40, "CGColor")}];

                  v41 = [MEMORY[0x1E6979398] layerWithName:@"nonCanididateRectMask"];
                  [v34 addSublayer:v41];
                  [v38 platformCGRectValue];
                  [v117 convertRect:v34 fromLayer:?];
                  [v41 setFrame:?];
                  v42 = +[_WTColor whiteColor];
                  [v41 setBackgroundColor:{objc_msgSend(v42, "CGColor")}];
                }

                v36 = [candidateRects countByEnumeratingWithState:&v119 objects:v129 count:16];
              }

              while (v36);
            }

            [v117 setMask:v33];
            layerWithContents = v117;
            v43 = [MEMORY[0x1E6979398] layerWithName:@"inverter"];
            v44 = layerWithContents2;
            [layerWithContents2 bounds];
            [v43 setFrame:?];
            v45 = +[_WTColor whiteColor];
            [v43 setBackgroundColor:{objc_msgSend(v45, "CGColor")}];

            [v34 setCompositingFilter:@"xor"];
            [v43 addSublayer:v34];
            [layerWithContents2 setMask:v43];
            self = selfCopy;
            nonCandidateTextContentMask2 = [(_WTReplaceTextEffect *)selfCopy nonCandidateTextContentMask];
            [nonCandidateTextContentMask2 addSublayer:layerWithContents2];

            v26 = v107;
            v28 = v104;
            v27 = v105;
            v29 = v103;
          }

          else
          {
            v44 = 0;
          }

          textContentMask = [(_WTReplaceTextEffect *)self textContentMask];
          [textContentMask addSublayer:layerWithContents];

          [layerWithContents position];
          v49 = v48 - v6;
          [layerWithContents position];
          v51 = v50 - v5;
          [layerWithContents position];
          v53 = v52 - v6;
          [layerWithContents position];
          v55 = v54 + 12.0 - v5;
          if ([(_WTReplaceTextEffect *)self isDestination])
          {
            [layerWithContents setPosition:{v53, v55}];
            [v44 setPosition:{v53, v55}];
            v56 = v53;
            v57 = v55;
            v55 = v51;
            v53 = v49;
          }

          else
          {
            v56 = v49;
            v57 = v51;
          }

          v58 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
          v59 = MEMORY[0x1E69793D0];
          if ([(_WTReplaceTextEffect *)self isDestination])
          {
            v60 = v110;
          }

          else
          {
            v60 = v28;
          }

          v61 = [v59 functionWithName:v60];
          [v58 setTimingFunction:v61];

          v62 = [MEMORY[0x1E696B098] valueWithPlatformCGPoint:{v56, v57}];
          [v58 setFromValue:v62];

          v63 = [MEMORY[0x1E696B098] valueWithPlatformCGPoint:{v53, v55}];
          [v58 setToValue:v63];

          [v58 setDuration:0.25];
          if ([(_WTReplaceTextEffect *)self isDestination])
          {
            v64 = 0.2;
          }

          else
          {
            v64 = 0.0;
          }

          [v113 presentationFrame];
          MinY = CGRectGetMinY(v132);
          [(_WTTextEffect *)self effectVisibilityFrame];
          [v58 setBeginTime:v64 + v112 + v111 * (MinY - CGRectGetMinY(v133))];
          [v58 setFillMode:v29];
          [v58 setRemovedOnCompletion:0];
          [layerWithContents addAnimation:v58 forKey:0];
          [v44 addAnimation:v58 forKey:0];

          v30 = v114 + 1;
        }

        while (v114 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v123 objects:v130 count:16];
      }

      while (v26);
    }

    effectView2 = [(_WTTextEffect *)self effectView];
    window = [effectView2 window];
    [window platformBackingScale];
    v69 = v68;

    layer = [MEMORY[0x1E69C70E0] layer];
    [(_WTReplaceTextEffect *)self setTextContent:layer];

    textContent = [(_WTReplaceTextEffect *)self textContent];
    [textContent setName:@"textContent"];

    textContent2 = [(_WTReplaceTextEffect *)self textContent];
    [textContent2 setOpaque:0];

    textContent3 = [(_WTReplaceTextEffect *)self textContent];
    [textContent3 setColorMode:11];

    textContent4 = [(_WTReplaceTextEffect *)self textContent];
    [textContent4 setWantsExtendedDynamicRangeContent:1];

    textContent5 = [(_WTReplaceTextEffect *)self textContent];
    [textContent5 setValue:MEMORY[0x1E695E118] forKey:@"allowsLimitedHeadroom"];

    [(_WTTextEffect *)self _maxRequestedEDR];
    v77 = v76;
    textContent6 = [(_WTReplaceTextEffect *)self textContent];
    [textContent6 setContentsMaximumDesiredEDR:v77];

    textContent7 = [(_WTReplaceTextEffect *)self textContent];
    [textContent7 setContentsScale:v69];

    textContent8 = [(_WTReplaceTextEffect *)self textContent];
    [textContent8 setDelegate:self];

    layer2 = [MEMORY[0x1E69C70E0] layer];
    [(_WTReplaceTextEffect *)self setRootMask:layer2];

    rootMask = [(_WTReplaceTextEffect *)self rootMask];
    [rootMask setName:@"rootMask"];

    rootMask2 = [(_WTReplaceTextEffect *)self rootMask];
    [rootMask2 setOpaque:0];

    rootMask3 = [(_WTReplaceTextEffect *)self rootMask];
    [rootMask3 setContentsScale:v69];

    rootMask4 = [(_WTReplaceTextEffect *)self rootMask];
    [rootMask4 setDelegate:self];

    rootMask5 = [(_WTReplaceTextEffect *)self rootMask];
    rootLayer = [(_WTTextEffect *)self rootLayer];
    [rootLayer setMask:rootMask5];

    textContentMask2 = [(_WTReplaceTextEffect *)self textContentMask];
    textContent9 = [(_WTReplaceTextEffect *)self textContent];
    [textContent9 setMask:textContentMask2];

    rootLayer2 = [(_WTTextEffect *)self rootLayer];
    textContent10 = [(_WTReplaceTextEffect *)self textContent];
    [rootLayer2 addSublayer:textContent10];

    rootLayer3 = [(_WTTextEffect *)self rootLayer];
    nonCandidateTextContent3 = [(_WTReplaceTextEffect *)self nonCandidateTextContent];
    [rootLayer3 addSublayer:nonCandidateTextContent3];

    effectView3 = [(_WTTextEffect *)self effectView];
    layer3 = [effectView3 layer];
    rootLayer4 = [(_WTTextEffect *)self rootLayer];
    [layer3 addSublayer:rootLayer4];

    effectView4 = [(_WTTextEffect *)self effectView];
    v98 = [effectView4 platformInstalledDisplayLinkWithTarget:self selector:sel_update_];
    [(_WTReplaceTextEffect *)self setDisplayLink:v98];

    [(_WTTextEffect *)self invalidationDelay];
    if (v99 <= 0.0)
    {
      [(_WTReplaceTextEffect *)self sweepDuration];
    }

    else
    {
      [(_WTTextEffect *)self invalidationDelay];
    }

    withCopy = v102;
    v101 = dispatch_time(0, (v100 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41___WTReplaceTextEffect_updateEffectWith___block_invoke_2;
    block[3] = &unk_1E8480BF8;
    block[4] = self;
    dispatch_after(v101, MEMORY[0x1E69E96A0], block);
  }

  [(_WTReplaceTextEffect *)self _alignFrames];
}

- (void)_alignFrames
{
  effectView = [(_WTTextEffect *)self effectView];
  [effectView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  rootLayer = [(_WTTextEffect *)self rootLayer];
  [rootLayer setFrame:{v5, v7, v9, v11}];

  effectView2 = [(_WTTextEffect *)self effectView];
  [effectView2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  textContentMask = [(_WTReplaceTextEffect *)self textContentMask];
  [textContentMask setFrame:{v15, v17, v19, v21}];

  LOBYTE(textContentMask) = [(_WTReplaceTextEffect *)self _isInClipView];
  effectView3 = [(_WTTextEffect *)self effectView];
  v24 = effectView3;
  if (textContentMask)
  {
    [effectView3 platformGetVisibleRect];
  }

  else
  {
    [effectView3 bounds];
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;

  rootMask = [(_WTReplaceTextEffect *)self rootMask];
  [rootMask setFrame:{v29, v30, v31, v32}];

  textContent = [(_WTReplaceTextEffect *)self textContent];
  [textContent setFrame:{v29, v30, v31, v32}];

  nonCandidateTextContent = [(_WTReplaceTextEffect *)self nonCandidateTextContent];
  [nonCandidateTextContent setFrame:{v29, v30, v31, v32}];
}

- (void)update:(id)update
{
  effectView = [(_WTTextEffect *)self effectView];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __31___WTReplaceTextEffect_update___block_invoke;
  v17[3] = &unk_1E8480BF8;
  v17[4] = self;
  [effectView platformPerformWithoutAnimation:v17];

  [(_WTReplaceTextEffect *)self startTime];
  if (v5 == 0.0)
  {
    displayLink = [(_WTReplaceTextEffect *)self displayLink];
    [displayLink timestamp];
    [(_WTReplaceTextEffect *)self setStartTime:?];
  }

  displayLink2 = [(_WTReplaceTextEffect *)self displayLink];
  [displayLink2 timestamp];
  v9 = v8;
  [(_WTReplaceTextEffect *)self startTime];
  v11 = v9 - v10;

  [(_WTTextEffect *)self invalidationDelay];
  if (v12 <= 0.0)
  {
    [(_WTReplaceTextEffect *)self sweepDuration];
  }

  else
  {
    [(_WTTextEffect *)self invalidationDelay];
  }

  if (v11 > v13)
  {
    displayLink3 = [(_WTReplaceTextEffect *)self displayLink];
    [displayLink3 invalidate];
  }

  rootMask = [(_WTReplaceTextEffect *)self rootMask];
  [rootMask setNeedsDisplay];

  textContent = [(_WTReplaceTextEffect *)self textContent];
  [textContent setNeedsDisplay];
}

- (void)RBLayer:(id)layer draw:(id)draw
{
  layerCopy = layer;
  drawCopy = draw;
  [(_WTTextEffect *)self defaultSweepRadius];
  v8 = v7;
  [(_WTTextEffect *)self effectVisibilityFrame];
  v10 = v9;
  v11 = 0.0;
  if ([(_WTReplaceTextEffect *)self _isInClipView])
  {
    effectView = [(_WTTextEffect *)self effectView];
    [effectView platformGetVisibleRect];
    v11 = v13;
  }

  [(_WTTextEffect *)self effectVisibilityFrame];
  MidX = CGRectGetMidX(v78);
  [(_WTTextEffect *)self effectVisibilityFrame];
  v15 = CGRectGetMinY(v79) - v8 - v11;
  v16 = v8 - v10;
  v75 = v8 - v10 + v10 * 3.0;
  v17 = v8 + v10 * 3.0;
  displayLink = [(_WTReplaceTextEffect *)self displayLink];
  [displayLink timestamp];
  v20 = v19;
  [(_WTReplaceTextEffect *)self startTime];
  v22 = v21;
  [(_WTReplaceTextEffect *)self sweepDuration];
  v24 = v23;

  textContent = [(_WTReplaceTextEffect *)self textContent];

  if (textContent == layerCopy)
  {
    colorFillInterpolator = [(_WTReplaceTextEffect *)self colorFillInterpolator];

    if (!colorFillInterpolator)
    {
      v33 = objc_opt_new();
      v34 = objc_opt_new();
      v35 = objc_opt_new();
      [v35 setInfinite];
      v36 = objc_opt_new();
      effectView2 = [(_WTTextEffect *)self effectView];
      _WTIsDarkMode = [effectView2 _WTIsDarkMode];

      LODWORD(v39) = 0.5;
      LODWORD(v40) = 0.5;
      LODWORD(v41) = 0.5;
      LODWORD(v42) = 1.0;
      [v36 setColor:{v39, v40, v41, v42}];
      LODWORD(v43) = 1.0;
      [v33 drawShape:v35 fill:v36 alpha:0 blendMode:v43];
      destinationColor = [(_WTReplaceTextEffect *)self destinationColor];
      v45 = destinationColor;
      if (destinationColor)
      {
        v46 = destinationColor;
      }

      else
      {
        v47 = 0.0;
        if (_WTIsDarkMode)
        {
          v47 = 1.0;
        }

        v46 = [MEMORY[0x1E69DC888] colorWithWhite:v47 alpha:?];
      }

      v48 = v46;

      if ([(_WTReplaceTextEffect *)self isDestination])
      {
        [v48 CGColor];
        RBColorFromCGColor();
      }

      else
      {
        LODWORD(v51) = 0.5;
        LODWORD(v52) = 1.0;
        LODWORD(v50) = 0.5;
        LODWORD(v49) = 0.5;
      }

      [v36 setColor:{v49, v50, v51, v52}];
      LODWORD(v53) = 1.0;
      [v34 drawShape:v35 fill:v36 alpha:0 blendMode:v53];
      v54 = objc_opt_new();
      if ([(_WTReplaceTextEffect *)self isDestination])
      {
        v55 = +[_WTLightEffectPalette replaceDestinationColors];
        [(_WTTextEffect *)self _applyToFill:v54 colors:v55 center:MidX startRadius:v15 endRadius:v16, v8];

        LODWORD(v56) = 2.0;
        [v33 drawShape:v35 fill:v54 alpha:0 blendMode:v56];
        v57 = +[_WTLightEffectPalette ponderingLightEdgeDestination];
        [(_WTTextEffect *)self _applyToFill:v54 colors:v57 center:MidX startRadius:v15 endRadius:v8 + -80.0, v8];

        LODWORD(v58) = 1.0;
        [v33 drawShape:v35 fill:v54 alpha:27 blendMode:v58];
        [v33 addBlurFilterWithRadius:10.0];
        LODWORD(v59) = 1028443341;
        [v33 addBrightnessFilterWithAmount:v59];
        v60 = +[_WTLightEffectPalette replaceDestinationColors];
        [(_WTTextEffect *)self _applyToFill:v54 colors:v60 center:MidX startRadius:v15 endRadius:v75, v17];

        v61 = 0.0;
        if (_WTIsDarkMode)
        {
          *&v61 = 0.5;
        }

        [v34 drawShape:v35 fill:v54 alpha:0 blendMode:v61];
        v62 = +[_WTLightEffectPalette ponderingLightEdgeDestination];
        [(_WTTextEffect *)self _applyToFill:v54 colors:v62 center:MidX startRadius:v15 endRadius:v17 + -80.0, v17];

        LODWORD(v63) = 1.0;
        [v34 drawShape:v35 fill:v54 alpha:27 blendMode:v63];
        [v34 addBlurFilterWithRadius:10.0];
        LODWORD(v64) = 1028443341;
        [v34 addBrightnessFilterWithAmount:v64];
      }

      v65 = [MEMORY[0x1E69C70B0] interpolatorWithFrom:v33 to:v34 options:0];
      [(_WTReplaceTextEffect *)self setColorFillInterpolator:v65];
    }

    colorFillInterpolator2 = [(_WTReplaceTextEffect *)self colorFillInterpolator];
  }

  else
  {
    rootMask = [(_WTReplaceTextEffect *)self rootMask];

    if (rootMask != layerCopy)
    {
      goto LABEL_27;
    }

    interpolator = [(_WTReplaceTextEffect *)self interpolator];

    if (!interpolator)
    {
      v28 = objc_opt_new();
      v29 = objc_opt_new();
      v30 = objc_opt_new();
      [v30 setInfinite];
      v31 = objc_opt_new();
      if ([(_WTReplaceTextEffect *)self isDestination])
      {
        +[_WTLightEffectPalette replaceDestinationSweepMask];
      }

      else
      {
        +[_WTLightEffectPalette replaceSourceSweepMask];
      }
      v67 = ;
      [(_WTTextEffect *)self _applyToFill:v31 colors:v67 center:MidX startRadius:v15 endRadius:v16, v8];
      LODWORD(v68) = 1.0;
      [v28 drawShape:v30 fill:v31 alpha:0 blendMode:v68];
      [(_WTTextEffect *)self _applyToFill:v31 colors:v67 center:MidX startRadius:v15 endRadius:v75, v17];
      LODWORD(v69) = 1.0;
      [v29 drawShape:v30 fill:v31 alpha:0 blendMode:v69];
      v70 = [MEMORY[0x1E69C70B0] interpolatorWithFrom:v28 to:v29 options:0];
      [(_WTReplaceTextEffect *)self setInterpolator:v70];
    }

    colorFillInterpolator2 = [(_WTReplaceTextEffect *)self interpolator];
  }

  v71 = colorFillInterpolator2;
  v72 = (v20 - v22) / v24;
  State = RBDisplayListGetState();
  *&v74 = v72;
  [v71 drawInState:State by:v74];

LABEL_27:
}

@end