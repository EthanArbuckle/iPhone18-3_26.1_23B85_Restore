@interface UIQuadCurvePointFIFO
- (UIQuadCurvePointFIFO)initWithFIFO:(id)a3;
- (UIQuadCurvePointFIFO)initWithFIFO:(id)a3 strokeView:(id)a4;
- (void)addPoint:(UIQuadCurvePointFIFO *)self;
- (void)clear;
- (void)dealloc;
- (void)enumerateInterpolationFromPoint:(id)a3 toPoint:controlPoint:usingBlock:;
- (void)flush;
- (void)setUnitScaleForViewSize:(CGSize)a3 normalizedSize:(CGSize)a4 contentScaleFactor:(double)a5;
@end

@implementation UIQuadCurvePointFIFO

- (UIQuadCurvePointFIFO)initWithFIFO:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIQuadCurvePointFIFO;
  v3 = [(UIPointFIFO *)&v6 initWithFIFO:a3];
  v4 = v3;
  if (v3)
  {
    v3->_unitScale = 1.0;
    v3->_emitInterpolatedPoints = 1;
    v3->_view = 0;
    v3->_prevPoints = objc_alloc_init(_UIPointVector);
    v4->_points = objc_alloc_init(_UIPointVector);
    v4->_controlPoints = objc_alloc_init(_UIPointVector);
  }

  return v4;
}

- (UIQuadCurvePointFIFO)initWithFIFO:(id)a3 strokeView:(id)a4
{
  v5 = [(UIQuadCurvePointFIFO *)self initWithFIFO:a3];
  if (v5)
  {
    v5->_view = a4;
  }

  return v5;
}

- (void)dealloc
{
  self->_view = 0;

  self->_emissionHandler = 0;
  self->_prevPoints = 0;

  self->_points = 0;
  self->_controlPoints = 0;
  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
    self->_path = 0;
  }

  v4.receiver = self;
  v4.super_class = UIQuadCurvePointFIFO;
  [(UIPointFIFO *)&v4 dealloc];
}

- (void)enumerateInterpolationFromPoint:(id)a3 toPoint:controlPoint:usingBlock:
{
  v17 = *v3.i64;
  v18 = *v4.i64;
  v7 = vsubq_f32(v3, v5);
  v19 = *v5.i64;
  v8 = vsubq_f32(v5, v4);
  v9 = sqrtf(vaddv_f32(*&vmulq_f32(v7, v7))) + sqrtf(vaddv_f32(*&vmulq_f32(v8, v8)));
  [(UIQuadCurvePointFIFO *)self unitScale];
  v10 = 0;
  v12 = vcvtps_s32_f32(v9 / v11);
  if (v12 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v20 = 0;
  do
  {
    v14 = objc_opt_class();
    *&v15 = v10 / (v13 - 1);
    [v14 interpolateFromPoint:v17 toPoint:v18 controlPoint:v19 time:v15];
    (*(a3 + 2))(a3, v10, v13, &v20);
    if (v20)
    {
      break;
    }
  }

  while (v13 - 1 != v10++);
}

- (void)setUnitScaleForViewSize:(CGSize)a3 normalizedSize:(CGSize)a4 contentScaleFactor:(double)a5
{
  v5 = a4.width / (a3.width * a5);
  *&v5 = v5;
  v6 = a4.height / (a3.height * a5);
  if (*&v5 >= v6)
  {
    *&v5 = v6;
  }

  [(UIQuadCurvePointFIFO *)self setUnitScale:v5];
}

- (void)addPoint:(UIQuadCurvePointFIFO *)self
{
  v53 = v2;
  if (![(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] count])
  {
    path = self->_path;
    if (path)
    {
      CGPathRelease(path);
    }

    self->_path = CGPathCreateMutable();
  }

  [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] addVector:*v53.i64];
  if ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] count]== 1)
  {
    CGPathMoveToPoint(self->_path, 0, v53.f32[0], v53.f32[1]);
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] clear];
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] addVector:*v53.i64];
    [(UIQuadCurvePointFIFO *)self setLastPoint:*v53.i64];
    v56 = v53;
    if ([(UIQuadCurvePointFIFO *)self view])
    {
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v6 = v53.f32[0] - v5 * 0.5;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v8 = v53.f32[1] - v7 * 0.5;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v10 = v9;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v12 = v11;
      view = [(UIQuadCurvePointFIFO *)self view];
      v14 = v6;
      v15 = v8;
      v16 = v10;
      v17 = v12;
LABEL_26:
      [(UIView *)view setNeedsDisplayInRect:v14, v15, v16, v17];
    }
  }

  else
  {
    if ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] count]!= 3)
    {
      return;
    }

    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] vectorAtIndex:1];
    v54 = v18;
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] vectorAtIndex:2];
    aRect_24a = v19;
    [(UIQuadCurvePointFIFO *)self lastPoint];
    aRect_8 = v20;
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    aRect_24 = vmlaq_f32(v54, v21, vsubq_f32(aRect_24a, v54));
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] removeVectorAtIndex:0];
    CGPathAddQuadCurveToPoint(self->_path, 0, v54.f32[0], v54.f32[1], aRect_24.f32[0], aRect_24.f32[1]);
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] clear];
    if (self->_emitInterpolatedPoints)
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __33__UIQuadCurvePointFIFO_addPoint___block_invoke;
      v55[3] = &unk_1E7268168;
      v55[4] = self;
      [(UIQuadCurvePointFIFO *)self enumerateInterpolationFromPoint:v55 toPoint:*aRect_8.i64 controlPoint:*aRect_24.i64 usingBlock:*v54.i64];
    }

    else
    {
      v22 = [(UIQuadCurvePointFIFO *)self points];
      [UIQuadCurvePointFIFO interpolateFromPoint:*aRect_8.i64 toPoint:*aRect_24.i64 controlPoint:*v54.i64 time:0.0];
      [(_UIPointVector *)v22 addVector:?];
      v23 = [(UIQuadCurvePointFIFO *)self points];
      LODWORD(v24) = 1.0;
      [UIQuadCurvePointFIFO interpolateFromPoint:*aRect_8.i64 toPoint:*aRect_24.i64 controlPoint:*v54.i64 time:v24];
      [(_UIPointVector *)v23 addVector:?];
    }

    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self controlPoints] addVector:*v54.i64];
    v56 = v54;
    *self->_lastPoint = aRect_24;
    if (self->_view)
    {
      if (vmovn_s32(vcgtq_f32(v54, aRect_8)).u8[0])
      {
        v25 = aRect_8.f32[0];
      }

      else
      {
        v25 = v54.f32[0];
      }

      v26 = v25;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      aRect = v26 - v27 * 0.5;
      if (aRect_8.f32[1] >= v54.f32[1])
      {
        v28 = v54.f32[1];
      }

      else
      {
        v28 = aRect_8.f32[1];
      }

      v29 = v28;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v31 = v29 - v30 * 0.5;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v33 = v32 + fabsf(vsubq_f32(v54, aRect_8).f32[0]);
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v35 = v34 + vabds_f32(v54.f32[1], aRect_8.f32[1]);
      if (vmovn_s32(vcgtq_f32(aRect_24, v54)).u8[0])
      {
        v36 = v54.f32[0];
      }

      else
      {
        v36 = aRect_24.f32[0];
      }

      v37 = v36;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v39 = v37 - v38 * 0.5;
      if (v54.f32[1] >= aRect_24.f32[1])
      {
        v40 = aRect_24.f32[1];
      }

      else
      {
        v40 = v54.f32[1];
      }

      v41 = v40;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v43 = v41 - v42 * 0.5;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v45 = v44 + fabsf(vsubq_f32(aRect_24, v54).f32[0]);
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v58.size.height = v46 + vabds_f32(aRect_24.f32[1], v54.f32[1]);
      v57.origin.x = aRect;
      v57.origin.y = v31;
      v57.size.width = v33;
      v57.size.height = v35;
      v58.origin.x = v39;
      v58.origin.y = v43;
      v58.size.width = v45;
      *&v14 = NSUnionRect(v57, v58);
      view = self->_view;
      goto LABEL_26;
    }
  }

  emissionHandler = self->_emissionHandler;
  if (emissionHandler)
  {
    emissionHandler[2](emissionHandler, [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] vectors], [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] count], &v56, 0);
  }

  if ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] count])
  {
    v48 = 0;
    do
    {
      [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] vectorAtIndex:v48];
      [(UIPointFIFO *)self emitPoint:?];
      ++v48;
    }

    while ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] count]> v48);
  }
}

uint64_t __33__UIQuadCurvePointFIFO_addPoint___block_invoke(uint64_t a1, double a2)
{
  v2 = [*(a1 + 32) points];

  return [v2 addVector:a2];
}

- (void)flush
{
  v30 = 0uLL;
  if ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] count])
  {
    v27 = *self->_lastPoint;
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] lastVector];
    v4 = v3;
    v5 = vsubq_f32(v3, v27);
    v3.i64[0] = 0x3F0000003F000000;
    v3.i64[1] = 0x3F0000003F000000;
    v23 = v5;
    v25 = v4;
    v26 = vmlaq_f32(v27, v3, v5);
    v6 = v4.f32[1];
    CGPathAddLineToPoint(self->_path, 0, v4.f32[0], v4.f32[1]);
    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] clear];
    if (self->_emitInterpolatedPoints)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __29__UIQuadCurvePointFIFO_flush__block_invoke;
      v29[3] = &unk_1E7268168;
      v29[4] = self;
      [(UIQuadCurvePointFIFO *)self enumerateInterpolationFromPoint:v29 toPoint:*v27.i64 controlPoint:*v25.i64 usingBlock:*v26.i64];
    }

    else
    {
      v7 = [(UIQuadCurvePointFIFO *)self points];
      [UIQuadCurvePointFIFO interpolateFromPoint:*v27.i64 toPoint:*v25.i64 controlPoint:*v26.i64 time:0.0];
      [(_UIPointVector *)v7 addVector:?];
      v8 = [(UIQuadCurvePointFIFO *)self points];
      LODWORD(v9) = 1.0;
      [UIQuadCurvePointFIFO interpolateFromPoint:*v27.i64 toPoint:*v25.i64 controlPoint:*v26.i64 time:v9];
      [(_UIPointVector *)v8 addVector:?];
    }

    [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self controlPoints] addVector:*v26.i64];
    v30 = v26;
    if (self->_view)
    {
      if (vmovn_s32(vcgtq_f32(v25, v27)).u8[0])
      {
        v10 = v27.f32[0];
      }

      else
      {
        v10 = v25.f32[0];
      }

      v11 = v10;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v13 = v11 - v12 * 0.5;
      if (v27.f32[1] >= v6)
      {
        v14 = v6;
      }

      else
      {
        v14 = v27.f32[1];
      }

      v15 = v14;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v17 = v15 - v16 * 0.5;
      [(UIQuadCurvePointFIFO *)self lineWidth];
      v19 = v18 + fabsf(v24);
      [(UIQuadCurvePointFIFO *)self lineWidth];
      [(UIView *)self->_view setNeedsDisplayInRect:v13, v17, v19, v20 + vabds_f32(v6, v27.f32[1])];
    }

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      (emissionHandler)[2](emissionHandler, [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] vectors], [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] count], &v30, 1);
    }

    if ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] count])
    {
      v22 = 0;
      do
      {
        [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] vectorAtIndex:v22];
        [(UIPointFIFO *)self emitPoint:?];
        ++v22;
      }

      while ([(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] count]> v22);
    }
  }

  [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] clear];
  v28.receiver = self;
  v28.super_class = UIQuadCurvePointFIFO;
  [(UIPointFIFO *)&v28 flush];
}

uint64_t __29__UIQuadCurvePointFIFO_flush__block_invoke(uint64_t a1, double a2)
{
  v2 = [*(a1 + 32) points];

  return [v2 addVector:a2];
}

- (void)clear
{
  [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self prevPoints] clear];
  [(_UIPointVector *)[(UIQuadCurvePointFIFO *)self points] clear];
  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
  }

  self->_path = CGPathCreateMutable();
  v4.receiver = self;
  v4.super_class = UIQuadCurvePointFIFO;
  [(UIPointFIFO *)&v4 clear];
}

@end