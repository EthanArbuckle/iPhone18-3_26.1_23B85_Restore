@interface _WTReplaceRemainderTextEffect
- (void)updateEffectWith:(id)with;
@end

@implementation _WTReplaceRemainderTextEffect

- (void)updateEffectWith:(id)with
{
  withCopy = with;
  rootLayer = [(_WTTextEffect *)self rootLayer];

  firstObject = [withCopy firstObject];

  if (!rootLayer)
  {
    [(_WTReplaceRemainderTextEffect *)self durationOverride];
    v8 = v7;
    if (v7 == 0.0)
    {
      [(_WTReplaceTextEffect *)self sweepDuration];
      v8 = v9;
    }

    [(_WTReplaceRemainderTextEffect *)self offset];
    v11 = v8 * dbl_1D455A330[v10 > 0.0];
    layerWithContents = [firstObject layerWithContents];
    [(_WTTextEffect *)self setRootLayer:layerWithContents];

    effectView = [(_WTTextEffect *)self effectView];
    layer = [effectView layer];
    rootLayer2 = [(_WTTextEffect *)self rootLayer];
    [layer addSublayer:rootLayer2];

    rootLayer3 = [(_WTTextEffect *)self rootLayer];
    [rootLayer3 position];
    v18 = v17;
    rootLayer4 = [(_WTTextEffect *)self rootLayer];
    [rootLayer4 position];
    v21 = v20;
    [(_WTReplaceRemainderTextEffect *)self offset];
    v23 = v21 - v22;

    rootLayer5 = [(_WTTextEffect *)self rootLayer];
    [rootLayer5 position];
    v26 = v25;
    v28 = v27;

    v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
    v30 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v29 setTimingFunction:v30];

    v39[0] = v18;
    *&v39[1] = v23;
    v31 = [MEMORY[0x1E696B098] valueWithBytes:v39 objCType:"{CGPoint=dd}"];
    [v29 setFromValue:v31];

    v38[0] = v26;
    v38[1] = v28;
    v32 = [MEMORY[0x1E696B098] valueWithBytes:v38 objCType:"{CGPoint=dd}"];
    [v29 setToValue:v32];

    [v29 setDuration:(v8 - v11) * 0.5];
    [v29 setBeginTime:v11 + CACurrentMediaTime()];
    [v29 setFillMode:*MEMORY[0x1E69797E0]];
    [v29 setRemovedOnCompletion:0];
    rootLayer6 = [(_WTTextEffect *)self rootLayer];
    [rootLayer6 addAnimation:v29 forKey:0];

    [(_WTTextEffect *)self invalidationDelay];
    if (v34 > 0.0)
    {
      [(_WTTextEffect *)self invalidationDelay];
      v8 = v35;
    }

    v36 = dispatch_time(0, (v8 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___WTReplaceRemainderTextEffect_updateEffectWith___block_invoke;
    block[3] = &unk_1E8480BF8;
    block[4] = self;
    dispatch_after(v36, MEMORY[0x1E69E96A0], block);
  }
}

@end