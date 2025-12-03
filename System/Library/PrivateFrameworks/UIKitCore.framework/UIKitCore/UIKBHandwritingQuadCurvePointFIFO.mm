@interface UIKBHandwritingQuadCurvePointFIFO
- (UIKBHandwritingQuadCurvePointFIFO)initWithFIFO:(id)o scale:(double)scale;
- (void)addPoint:(id *)point;
- (void)clear;
- (void)flush;
- (void)setLastPoint:(id *)point;
@end

@implementation UIKBHandwritingQuadCurvePointFIFO

- (UIKBHandwritingQuadCurvePointFIFO)initWithFIFO:(id)o scale:(double)scale
{
  v9.receiver = self;
  v9.super_class = UIKBHandwritingQuadCurvePointFIFO;
  v5 = [(UIKBHandwritingPointFIFO *)&v9 initWithFIFO:o];
  v6 = v5;
  if (v5)
  {
    v5->_scale = scale;
    array = [MEMORY[0x1E695DF70] array];
    [(UIKBHandwritingQuadCurvePointFIFO *)v6 setPrevPoints:array];
  }

  return v6;
}

- (void)addPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v61[1] = *MEMORY[0x1E69E9840];
  prevPoints = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  v11 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v8, v7, v6}];
  [prevPoints addObject:v11];

  prevPoints2 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  v13 = [prevPoints2 count];

  if (v13 == 1)
  {
    [(UIKBHandwritingQuadCurvePointFIFO *)self setLastPoint:v8, v7, v6];
    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      v15 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v8, v7, v6}];
      v61[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
      emissionHandler[2](emissionHandler, v16);
    }
  }

  else
  {
    prevPoints3 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
    v18 = [prevPoints3 count];

    if (v18 == 3)
    {
      [(UIKBHandwritingQuadCurvePointFIFO *)self lastPoint];
      v20 = v19;
      v22 = v21;
      v57 = v23;
      prevPoints4 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
      v25 = [prevPoints4 objectAtIndexedSubscript:1];
      [v25 UIKBHandwritingPointValue];
      v27 = v26;
      v29 = v28;
      v31 = v30;

      prevPoints5 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
      v33 = [prevPoints5 objectAtIndexedSubscript:2];
      [v33 UIKBHandwritingPointValue];
      v35 = v34;
      v37 = v36;
      v58 = v38;

      v39 = (v27 + v35) * 0.5;
      v40 = v29;
      v41 = (v29 + v37) * 0.5;
      v56 = v31;
      v42 = (v31 + *&v58) * 0.5;
      prevPoints6 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
      [prevPoints6 removeObjectAtIndex:0];

      v44 = v20;
      v45 = v20 - v27;
      v46 = v22;
      v59 = hypot(v45, v22 - v40);
      v47 = v27;
      v48 = (v59 + hypot(v27 - v39, v40 - v41)) * self->_scale;
      v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:vcvtmd_u64_f64(v48)];
      if (v48 > 1.0)
      {
        v49 = 2;
        do
        {
          v50 = (v49 - 1) / v48;
          v51 = 1.0 - v50;
          v52 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v39 * (v50 * v50) + v44 * (v51 * v51) + v47 * ((v51 + v51) * v50), v41 * (v50 * v50) + v46 * (v51 * v51) + v40 * ((v51 + v51) * v50), v42 * (v50 * v50) + v57 * (v51 * v51) + v56 * ((v51 + v51) * v50)}];
          [v60 addObject:v52];

          v53 = v49++;
        }

        while (v48 > v53);
      }

      v54 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v39, v41, v42}];
      [v60 addObject:v54];

      [(UIKBHandwritingQuadCurvePointFIFO *)self setLastPoint:v39, v41, v42];
      v55 = self->_emissionHandler;
      if (v55)
      {
        v55[2](v55, v60);
      }
    }
  }
}

- (void)flush
{
  prevPoints = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  v4 = [prevPoints count];

  if (v4)
  {
    [(UIKBHandwritingQuadCurvePointFIFO *)self lastPoint];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    prevPoints2 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
    lastObject = [prevPoints2 lastObject];
    [lastObject UIKBHandwritingPointValue];
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
        v23 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v6 + (v14 - v6) * v22, v8 + (v16 - v8) * v22, v10 + (v28 - v10) * v22, *&v27}];
        [v19 addObject:v23];

        v20 = v21++;
      }

      while (v18 > v20);
    }

    v24 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v27, v16, v28, *&v27}];
    [v19 addObject:v24];

    prevPoints3 = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
    [prevPoints3 removeAllObjects];

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      emissionHandler[2](emissionHandler, v19);
    }
  }

  v29.receiver = self;
  v29.super_class = UIKBHandwritingQuadCurvePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v29 flush];
}

- (void)clear
{
  prevPoints = [(UIKBHandwritingQuadCurvePointFIFO *)self prevPoints];
  [prevPoints removeAllObjects];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingQuadCurvePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 clear];
}

- (void)setLastPoint:(id *)point
{
  self->_lastPoint.point.x = v3;
  self->_lastPoint.point.y = v4;
  self->_lastPoint.force = v5;
}

@end