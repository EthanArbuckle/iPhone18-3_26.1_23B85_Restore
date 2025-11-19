@interface _WTFinaleTextEffect
- (void)_sweep;
- (void)updateEffectWith:(id)a3;
@end

@implementation _WTFinaleTextEffect

- (void)updateEffectWith:(id)a3
{
  v4 = a3;
  v5 = [(_WTTextEffect *)self rootLayer];

  if (!v5)
  {
    v6 = [MEMORY[0x1E6979398] layer];
    [(_WTTextEffect *)self setRootLayer:v6];

    v7 = [MEMORY[0x1E69794A0] layer];
    [(_WTFinaleTextEffect *)self setMaskLayer:v7];

    v8 = [MEMORY[0x1E6979398] layer];
    [(_WTFinaleTextEffect *)self setTextContentLayer:v8];

    v9 = [MEMORY[0x1E6979380] layer];
    [(_WTFinaleTextEffect *)self setGradientLayer:v9];

    v10 = [MEMORY[0x1E6979398] layer];
    [(_WTFinaleTextEffect *)self setGradientHostLayer:v10];

    v11 = +[_WTLightEffectPalette finaleSweep];
    v12 = [v11 CGColors];
    v13 = [(_WTFinaleTextEffect *)self gradientLayer];
    [v13 setColors:v12];

    v14 = [(_WTFinaleTextEffect *)self gradientLayer];
    [v14 setStartPoint:{0.0, 0.0}];

    v15 = [(_WTFinaleTextEffect *)self gradientLayer];
    [v15 setEndPoint:{0.0, 1.0}];

    v16 = [(_WTFinaleTextEffect *)self gradientLayer];
    LODWORD(v17) = 0.5;
    [v16 setOpacity:v17];

    v18 = [(_WTFinaleTextEffect *)self maskLayer];
    v19 = [(_WTFinaleTextEffect *)self gradientHostLayer];
    [v19 setMask:v18];

    v20 = [(_WTFinaleTextEffect *)self gradientHostLayer];
    v21 = [(_WTFinaleTextEffect *)self gradientLayer];
    [v20 addSublayer:v21];

    v22 = [(_WTTextEffect *)self rootLayer];
    v23 = [(_WTFinaleTextEffect *)self gradientHostLayer];
    [v22 addSublayer:v23];

    v24 = [(_WTTextEffect *)self rootLayer];
    v25 = [(_WTFinaleTextEffect *)self textContentLayer];
    [v24 addSublayer:v25];

    v26 = [(_WTTextEffect *)self effectView];
    v27 = [v26 layer];
    v28 = [(_WTTextEffect *)self rootLayer];
    [v27 addSublayer:v28];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __40___WTFinaleTextEffect_updateEffectWith___block_invoke;
    v34[3] = &unk_1E8481188;
    v34[4] = self;
    v29 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v34 block:2.0];
    [(_WTTextEffect *)self setTimer:v29];
  }

  v30 = [(_WTTextEffect *)self effectView];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __40___WTFinaleTextEffect_updateEffectWith___block_invoke_2;
  v32[3] = &unk_1E8480C70;
  v32[4] = self;
  v33 = v4;
  v31 = v4;
  [v30 platformPerformWithoutAnimation:v32];

  [(_WTFinaleTextEffect *)self _sweep];
}

- (void)_sweep
{
  v3 = [(_WTTextEffect *)self rootLayer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v9 * -2.0;
  v11 = v9 * 4.0;
  v12 = [(_WTTextEffect *)self rootLayer];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(_WTTextEffect *)self effectView];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __29___WTFinaleTextEffect__sweep__block_invoke;
  v22[3] = &unk_1E84811B0;
  v22[4] = self;
  v22[5] = v5;
  *&v22[6] = v10;
  v22[7] = v7;
  *&v22[8] = v11;
  [v19 platformPerformWithoutAnimation:v22];

  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [MEMORY[0x1E6979518] setAnimationTimingFunction:v20];

  v21 = [(_WTFinaleTextEffect *)self gradientLayer];
  [v21 setFrame:{v14, 0.0, v16, v18 * 4.0}];

  [MEMORY[0x1E6979518] commit];
}

@end