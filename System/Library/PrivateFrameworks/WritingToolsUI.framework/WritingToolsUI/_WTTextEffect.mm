@interface _WTTextEffect
- (BOOL)needsSetup;
- (CGRect)effectVisibilityFrame;
- (_WTTextEffect)initWithChunk:(id)chunk effectView:(id)view;
- (_WTTextEffectView)effectView;
- (double)clamp:(double)clamp min:(double)min max:(double)max;
- (double)defaultSweepRadius;
- (double)sweepDuration;
- (double)sweepRadiusForLineSize:(CGSize)size;
- (void)_applyToFill:(id)fill colors:(id)colors center:(CGPoint)center startRadius:(double)radius endRadius:(double)endRadius;
- (void)_applyToFill:(id)fill locatedColors:(id)colors center:(CGPoint)center startRadius:(double)radius endRadius:(double)endRadius;
- (void)_applyToFill:(id)fill nonlocatedColors:(id)colors center:(CGPoint)center startRadius:(double)radius endRadius:(double)endRadius;
- (void)invalidate:(BOOL)invalidate;
- (void)updateEffectWith:(id)with;
@end

@implementation _WTTextEffect

- (_WTTextEffect)initWithChunk:(id)chunk effectView:(id)view
{
  chunkCopy = chunk;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = _WTTextEffect;
  v8 = [(_WTTextEffect *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_WTTextEffect *)v8 setChunk:chunkCopy];
    [(_WTTextEffect *)v9 setEffectView:viewCopy];
    [(_WTTextEffect *)v9 setHidesOriginal:1];
    [(_WTTextEffect *)v9 setInvalidationDelay:0.0];
    v10 = v9;
  }

  return v9;
}

- (void)updateEffectWith:(id)with
{
  v24 = *MEMORY[0x1E69E9840];
  withCopy = with;
  firstObject = [withCopy firstObject];
  [firstObject presentationFrame];
  self->_firstSnapshotRect.origin.x = v6;
  self->_firstSnapshotRect.origin.y = v7;
  self->_firstSnapshotRect.size.width = v8;
  self->_firstSnapshotRect.size.height = v9;

  self->_effectPresentationRect = self->_firstSnapshotRect;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = withCopy;
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

- (void)invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  timer = [(_WTTextEffect *)self timer];
  [timer invalidate];

  [MEMORY[0x1E6979518] begin];
  v6 = 0.0;
  if (invalidateCopy)
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
  rootLayer = [(_WTTextEffect *)self rootLayer];
  [rootLayer setOpacity:0.0];

  [MEMORY[0x1E6979518] commit];
}

- (void)_applyToFill:(id)fill colors:(id)colors center:(CGPoint)center startRadius:(double)radius endRadius:(double)endRadius
{
  y = center.y;
  x = center.x;
  fillCopy = fill;
  colorsCopy = colors;
  firstObject = [colorsCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_WTTextEffect *)self _applyToFill:fillCopy nonlocatedColors:colorsCopy center:x startRadius:y endRadius:radius, endRadius];
  }

  else
  {
    firstObject2 = [colorsCopy firstObject];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      [(_WTTextEffect *)self _applyToFill:fillCopy locatedColors:colorsCopy center:x startRadius:y endRadius:radius, endRadius];
    }
  }
}

- (void)_applyToFill:(id)fill nonlocatedColors:(id)colors center:(CGPoint)center startRadius:(double)radius endRadius:(double)endRadius
{
  y = center.y;
  x = center.x;
  v23[1] = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  colorsCopy = colors;
  v14 = [colorsCopy count];
  v15 = &v23[-2 * v14];
  if (v14)
  {
    v16 = 0;
    v17 = v15 + 1;
    do
    {
      v18 = [colorsCopy objectAtIndexedSubscript:v16];
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

  [fillCopy setRadialGradientCenter:v14 startRadius:v15 endRadius:0 stopCount:0 colors:x locations:y flags:{radius, endRadius}];
}

- (void)_applyToFill:(id)fill locatedColors:(id)colors center:(CGPoint)center startRadius:(double)radius endRadius:(double)endRadius
{
  y = center.y;
  x = center.x;
  v26[1] = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  colorsCopy = colors;
  v14 = [colorsCopy count];
  v15 = &v26[-2 * v14];
  v16 = v26 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v17 = 0;
    v18 = v15 + 1;
    do
    {
      v19 = [colorsCopy objectAtIndexedSubscript:v17];
      color = [v19 color];
      [color CGColor];
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

  [fillCopy setRadialGradientCenter:v14 startRadius:v15 endRadius:v16 stopCount:0 colors:x locations:y flags:{radius, endRadius}];
}

- (double)defaultSweepRadius
{
  effectView = [(_WTTextEffect *)self effectView];
  [effectView bounds];
  width = v4;
  if (v4 == 0.0)
  {
    width = self->_firstSnapshotRect.size.width;
  }

  height = self->_firstSnapshotRect.size.height;

  [(_WTTextEffect *)self sweepRadiusForLineSize:width, height];
  return result;
}

- (double)sweepRadiusForLineSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = atan((size.height + size.height) / size.width);
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
    effectView = [(_WTTextEffect *)self effectView];
    [effectView bounds];
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

- (double)clamp:(double)clamp min:(double)min max:(double)max
{
  if (clamp >= max)
  {
    clamp = max;
  }

  if (clamp < min)
  {
    clamp = min;
  }

  return (clamp - min) / (max - min);
}

- (BOOL)needsSetup
{
  rootLayer = [(_WTTextEffect *)self rootLayer];
  v3 = rootLayer == 0;

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