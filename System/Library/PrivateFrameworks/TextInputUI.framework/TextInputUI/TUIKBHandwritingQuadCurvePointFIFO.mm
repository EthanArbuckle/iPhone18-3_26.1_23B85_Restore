@interface TUIKBHandwritingQuadCurvePointFIFO
- (TUIKBHandwritingQuadCurvePointFIFO)initWithFIFO:(id)o scale:(double)scale;
- (void)addPoint:(id *)point;
- (void)clear;
- (void)flush;
- (void)setLastPoint:(id *)point;
@end

@implementation TUIKBHandwritingQuadCurvePointFIFO

- (void)setLastPoint:(id *)point
{
  self->_lastPoint.point.x = v3;
  self->_lastPoint.point.y = v4;
  self->_lastPoint.force = v5;
}

- (void)clear
{
  prevPoints = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  [prevPoints removeAllObjects];

  v4.receiver = self;
  v4.super_class = TUIKBHandwritingQuadCurvePointFIFO;
  [(TUIKBHandwritingPointFIFO *)&v4 clear];
}

- (void)flush
{
  prevPoints = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  v4 = [prevPoints count];

  if (v4)
  {
    [(TUIKBHandwritingQuadCurvePointFIFO *)self lastPoint];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    prevPoints2 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
    lastObject = [prevPoints2 lastObject];
    [lastObject TUIKBHandwritingPointValue];
    v14 = v13;
    v16 = v15;
    v28 = v17;

    v27 = v14;
    v18 = hypot(v14 - v6, v16 - v8) * self->_scale;
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:vcvtmd_u64_f64(v18)];
    v20 = 1.0;
    if (v18 > 1.0)
    {
      v21 = 2;
      do
      {
        v22 = v20 / v18;
        v23 = [MEMORY[0x1E696B098] valueWithTUIKBHandwritingPoint:{v6 + (v14 - v6) * v22, v8 + (v16 - v8) * v22, v10 + (v28 - v10) * v22, *&v27}];
        [v19 addObject:v23];

        v20 = v21++;
      }

      while (v18 > v20);
    }

    v24 = [MEMORY[0x1E696B098] valueWithTUIKBHandwritingPoint:{v27, v16, v28, *&v27}];
    [v19 addObject:v24];

    prevPoints3 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
    [prevPoints3 removeAllObjects];

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      emissionHandler[2](emissionHandler, v19);
    }
  }

  v29.receiver = self;
  v29.super_class = TUIKBHandwritingQuadCurvePointFIFO;
  [(TUIKBHandwritingPointFIFO *)&v29 flush];
}

- (void)addPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v57[1] = *MEMORY[0x1E69E9840];
  prevPoints = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  v11 = [MEMORY[0x1E696B098] valueWithTUIKBHandwritingPoint:{v8, v7, v6}];
  [prevPoints addObject:v11];

  prevPoints2 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  v13 = [prevPoints2 count];

  if (v13 == 1)
  {
    [(TUIKBHandwritingQuadCurvePointFIFO *)self setLastPoint:v8, v7, v6];
    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      v15 = [MEMORY[0x1E696B098] valueWithTUIKBHandwritingPoint:{v8, v7, v6}];
      v57[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
      emissionHandler[2](emissionHandler, v16);
    }
  }

  else
  {
    prevPoints3 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
    v18 = [prevPoints3 count];

    if (v18 == 3)
    {
      [(TUIKBHandwritingQuadCurvePointFIFO *)self lastPoint];
      v20 = v19;
      v52 = v21;
      v54 = v22;
      prevPoints4 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
      v24 = [prevPoints4 objectAtIndexedSubscript:1];
      [v24 TUIKBHandwritingPointValue];
      v26 = v25;
      v28 = v27;
      v30 = v29;

      prevPoints5 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
      v32 = [prevPoints5 objectAtIndexedSubscript:2];
      [v32 TUIKBHandwritingPointValue];
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = (v28 + v36) * 0.5;
      v53 = v30;
      v40 = (v30 + v38) * 0.5;
      prevPoints6 = [(TUIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
      [prevPoints6 removeObjectAtIndex:0];

      v55 = hypot(v20 - v26, v52 - v28);
      v42 = (v26 + v34) * 0.5;
      v43 = v28;
      v44 = (v55 + hypot(v26 - v42, v28 - v39)) * self->_scale;
      v56 = [MEMORY[0x1E695DF70] arrayWithCapacity:vcvtmd_u64_f64(v44)];
      if (v44 > 1.0)
      {
        v45 = 2;
        do
        {
          v46 = (v45 - 1) / v44;
          v47 = 1.0 - v46;
          v48 = [MEMORY[0x1E696B098] valueWithTUIKBHandwritingPoint:{v26 * ((v47 + v47) * v46) + (v47 * v47) * v20 + (v46 * v46) * v42, v43 * ((v47 + v47) * v46) + (v47 * v47) * v52 + (v46 * v46) * v39, v53 * ((v47 + v47) * v46) + (v47 * v47) * v54 + (v46 * v46) * v40}];
          [v56 addObject:v48];

          v49 = v45++;
        }

        while (v44 > v49);
      }

      v50 = [MEMORY[0x1E696B098] valueWithTUIKBHandwritingPoint:{v42, v39, v40}];
      [v56 addObject:v50];

      [(TUIKBHandwritingQuadCurvePointFIFO *)self setLastPoint:v42, v39, v40];
      v51 = self->_emissionHandler;
      if (v51)
      {
        v51[2](v51, v56);
      }
    }
  }
}

- (TUIKBHandwritingQuadCurvePointFIFO)initWithFIFO:(id)o scale:(double)scale
{
  v9.receiver = self;
  v9.super_class = TUIKBHandwritingQuadCurvePointFIFO;
  v5 = [(TUIKBHandwritingPointFIFO *)&v9 initWithFIFO:o];
  v6 = v5;
  if (v5)
  {
    v5->_scale = scale;
    array = [MEMORY[0x1E695DF70] array];
    [(TUIKBHandwritingQuadCurvePointFIFO *)v6 setPrevPoints:array];
  }

  return v6;
}

@end