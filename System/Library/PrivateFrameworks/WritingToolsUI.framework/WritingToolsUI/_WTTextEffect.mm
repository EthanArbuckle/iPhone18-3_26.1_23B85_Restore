@interface _WTTextEffect
- (BOOL)needsSetup;
- (CGRect)effectVisibilityFrame;
- (_WTTextEffect)initWithChunk:(id)a3 effectView:(id)a4;
- (_WTTextEffectView)effectView;
- (double)clamp:(double)a3 min:(double)a4 max:(double)a5;
- (double)defaultSweepRadius;
- (double)sweepDuration;
- (double)sweepRadiusForLineSize:(CGSize)a3;
- (void)_applyToFill:(id)a3 colors:(id)a4 center:(CGPoint)a5 startRadius:(double)a6 endRadius:(double)a7;
- (void)_applyToFill:(id)a3 locatedColors:(id)a4 center:(CGPoint)a5 startRadius:(double)a6 endRadius:(double)a7;
- (void)_applyToFill:(id)a3 nonlocatedColors:(id)a4 center:(CGPoint)a5 startRadius:(double)a6 endRadius:(double)a7;
- (void)invalidate:(BOOL)a3;
- (void)updateEffectWith:(id)a3;
@end

@implementation _WTTextEffect

- (_WTTextEffect)initWithChunk:(id)a3 effectView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _WTTextEffect;
  v8 = [(_WTTextEffect *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_WTTextEffect *)v8 setChunk:v6];
    [(_WTTextEffect *)v9 setEffectView:v7];
    [(_WTTextEffect *)v9 setHidesOriginal:1];
    [(_WTTextEffect *)v9 setInvalidationDelay:0.0];
    v10 = v9;
  }

  return v9;
}

- (void)updateEffectWith:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  [v5 presentationFrame];
  self->_firstSnapshotRect.origin.x = v6;
  self->_firstSnapshotRect.origin.y = v7;
  self->_firstSnapshotRect.size.width = v8;
  self->_firstSnapshotRect.size.height = v9;

  self->_effectPresentationRect = self->_firstSnapshotRect;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v19 + 1) + 8 * v14) presentationFrame];
        v25.origin.x = v15;
        v25.origin.y = v16;
        v25.size.width = v17;
        v25.size.height = v18;
        self->_effectPresentationRect = CGRectUnion(self->_effectPresentationRect, v25);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)invalidate:(BOOL)a3
{
  v3 = a3;
  v5 = [(_WTTextEffect *)self timer];
  [v5 invalidate];

  [MEMORY[0x1E6979518] begin];
  v6 = 0.0;
  if (v3)
  {
    [(_WTTextEffect *)self invalidationAnimationDuration];
  }

  [MEMORY[0x1E6979518] setAnimationDuration:v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28___WTTextEffect_invalidate___block_invoke;
  v8[3] = &unk_1E8480BF8;
  v8[4] = self;
  [MEMORY[0x1E6979518] setCompletionBlock:v8];
  v7 = [(_WTTextEffect *)self rootLayer];
  [v7 setOpacity:0.0];

  [MEMORY[0x1E6979518] commit];
}

- (void)_applyToFill:(id)a3 colors:(id)a4 center:(CGPoint)a5 startRadius:(double)a6 endRadius:(double)a7
{
  y = a5.y;
  x = a5.x;
  v18 = a3;
  v13 = a4;
  v14 = [v13 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_WTTextEffect *)self _applyToFill:v18 nonlocatedColors:v13 center:x startRadius:y endRadius:a6, a7];
  }

  else
  {
    v16 = [v13 firstObject];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      [(_WTTextEffect *)self _applyToFill:v18 locatedColors:v13 center:x startRadius:y endRadius:a6, a7];
    }
  }
}

- (void)_applyToFill:(id)a3 nonlocatedColors:(id)a4 center:(CGPoint)a5 startRadius:(double)a6 endRadius:(double)a7
{
  y = a5.y;
  x = a5.x;
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = [v13 count];
  v15 = &v23[-2 * v14];
  if (v14)
  {
    v16 = 0;
    v17 = v15 + 1;
    do
    {
      v18 = [v13 objectAtIndexedSubscript:v16];
      [v18 CGColor];
      RBColorFromCGColor();
      *(v17 - 2) = v19;
      *(v17 - 1) = v20;
      *v17 = v21;
      v17[1] = v22;
      v17 += 4;

      ++v16;
    }

    while (v14 != v16);
  }

  [v12 setRadialGradientCenter:v14 startRadius:v15 endRadius:0 stopCount:0 colors:x locations:y flags:{a6, a7}];
}

- (void)_applyToFill:(id)a3 locatedColors:(id)a4 center:(CGPoint)a5 startRadius:(double)a6 endRadius:(double)a7
{
  y = a5.y;
  x = a5.x;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = [v13 count];
  v15 = &v26[-2 * v14];
  v16 = v26 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v17 = 0;
    v18 = v15 + 1;
    do
    {
      v19 = [v13 objectAtIndexedSubscript:v17];
      v20 = [v19 color];
      [v20 CGColor];
      RBColorFromCGColor();
      *(v18 - 2) = v21;
      *(v18 - 1) = v22;
      *v18 = v23;
      v18[1] = v24;
      v18 += 4;

      [v19 location];
      *&v16[8 * v17] = v25;

      ++v17;
    }

    while (v14 != v17);
  }

  [v12 setRadialGradientCenter:v14 startRadius:v15 endRadius:v16 stopCount:0 colors:x locations:y flags:{a6, a7}];
}

- (double)defaultSweepRadius
{
  v3 = [(_WTTextEffect *)self effectView];
  [v3 bounds];
  width = v4;
  if (v4 == 0.0)
  {
    width = self->_firstSnapshotRect.size.width;
  }

  height = self->_firstSnapshotRect.size.height;

  [(_WTTextEffect *)self sweepRadiusForLineSize:width, height];
  return result;
}

- (double)sweepRadiusForLineSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = atan((a3.height + a3.height) / a3.width);
  v6 = cos(1.57079633 - v5);
  return sqrt(height * height + width * 0.5 * (width * 0.5)) / (v6 + v6);
}

- (CGRect)effectVisibilityFrame
{
  x = self->_effectPresentationRect.origin.x;
  y = self->_effectPresentationRect.origin.y;
  width = self->_effectPresentationRect.size.width;
  height = self->_effectPresentationRect.size.height;
  if (width == 0.0)
  {
    v6 = [(_WTTextEffect *)self effectView];
    [v6 bounds];
    width = v7;
  }

  if (height >= 400.0)
  {
    v8 = height;
  }

  else
  {
    v8 = 400.0;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)clamp:(double)a3 min:(double)a4 max:(double)a5
{
  if (a3 >= a5)
  {
    a3 = a5;
  }

  if (a3 < a4)
  {
    a3 = a4;
  }

  return (a3 - a4) / (a5 - a4);
}

- (BOOL)needsSetup
{
  v2 = [(_WTTextEffect *)self rootLayer];
  v3 = v2 == 0;

  return v3;
}

- (double)sweepDuration
{
  [(_WTTextEffect *)self effectVisibilityFrame];
  v3 = v2 / 300.0 * 2.2;
  v4 = 2.5;
  if (v3 <= 2.5)
  {
    v4 = v2 / 300.0 * 2.2;
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

- (_WTTextEffectView)effectView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectView);

  return WeakRetained;
}

@end