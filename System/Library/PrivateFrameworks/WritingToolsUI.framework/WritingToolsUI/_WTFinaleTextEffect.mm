@interface _WTFinaleTextEffect
- (void)_sweep;
- (void)updateEffectWith:(id)with;
@end

@implementation _WTFinaleTextEffect

- (void)updateEffectWith:(id)with
{
  withCopy = with;
  rootLayer = [(_WTTextEffect *)self rootLayer];

  if (!rootLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    [(_WTTextEffect *)self setRootLayer:layer];

    layer2 = [MEMORY[0x1E69794A0] layer];
    [(_WTFinaleTextEffect *)self setMaskLayer:layer2];

    layer3 = [MEMORY[0x1E6979398] layer];
    [(_WTFinaleTextEffect *)self setTextContentLayer:layer3];

    layer4 = [MEMORY[0x1E6979380] layer];
    [(_WTFinaleTextEffect *)self setGradientLayer:layer4];

    layer5 = [MEMORY[0x1E6979398] layer];
    [(_WTFinaleTextEffect *)self setGradientHostLayer:layer5];

    v11 = +[_WTLightEffectPalette finaleSweep];
    cGColors = [v11 CGColors];
    gradientLayer = [(_WTFinaleTextEffect *)self gradientLayer];
    [gradientLayer setColors:cGColors];

    gradientLayer2 = [(_WTFinaleTextEffect *)self gradientLayer];
    [gradientLayer2 setStartPoint:{0.0, 0.0}];

    gradientLayer3 = [(_WTFinaleTextEffect *)self gradientLayer];
    [gradientLayer3 setEndPoint:{0.0, 1.0}];

    gradientLayer4 = [(_WTFinaleTextEffect *)self gradientLayer];
    LODWORD(v17) = 0.5;
    [gradientLayer4 setOpacity:v17];

    maskLayer = [(_WTFinaleTextEffect *)self maskLayer];
    gradientHostLayer = [(_WTFinaleTextEffect *)self gradientHostLayer];
    [gradientHostLayer setMask:maskLayer];

    gradientHostLayer2 = [(_WTFinaleTextEffect *)self gradientHostLayer];
    gradientLayer5 = [(_WTFinaleTextEffect *)self gradientLayer];
    [gradientHostLayer2 addSublayer:gradientLayer5];

    rootLayer2 = [(_WTTextEffect *)self rootLayer];
    gradientHostLayer3 = [(_WTFinaleTextEffect *)self gradientHostLayer];
    [rootLayer2 addSublayer:gradientHostLayer3];

    rootLayer3 = [(_WTTextEffect *)self rootLayer];
    textContentLayer = [(_WTFinaleTextEffect *)self textContentLayer];
    [rootLayer3 addSublayer:textContentLayer];

    effectView = [(_WTTextEffect *)self effectView];
    layer6 = [effectView layer];
    rootLayer4 = [(_WTTextEffect *)self rootLayer];
    [layer6 addSublayer:rootLayer4];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __40___WTFinaleTextEffect_updateEffectWith___block_invoke;
    v34[3] = &unk_1E8481188;
    v34[4] = self;
    v29 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v34 block:2.0];
    [(_WTTextEffect *)self setTimer:v29];
  }

  effectView2 = [(_WTTextEffect *)self effectView];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __40___WTFinaleTextEffect_updateEffectWith___block_invoke_2;
  v32[3] = &unk_1E8480C70;
  v32[4] = self;
  v33 = withCopy;
  v31 = withCopy;
  [effectView2 platformPerformWithoutAnimation:v32];

  [(_WTFinaleTextEffect *)self _sweep];
}

- (void)_sweep
{
  rootLayer = [(_WTTextEffect *)self rootLayer];
  [rootLayer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v9 * -2.0;
  v11 = v9 * 4.0;
  rootLayer2 = [(_WTTextEffect *)self rootLayer];
  [rootLayer2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;

  effectView = [(_WTTextEffect *)self effectView];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __29___WTFinaleTextEffect__sweep__block_invoke;
  v22[3] = &unk_1E84811B0;
  v22[4] = self;
  v22[5] = v5;
  *&v22[6] = v10;
  v22[7] = v7;
  *&v22[8] = v11;
  [effectView platformPerformWithoutAnimation:v22];

  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [MEMORY[0x1E6979518] setAnimationTimingFunction:v20];

  gradientLayer = [(_WTFinaleTextEffect *)self gradientLayer];
  [gradientLayer setFrame:{v14, 0.0, v16, v18 * 4.0}];

  [MEMORY[0x1E6979518] commit];
}

@end