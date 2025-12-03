@interface UIKBHandwritingBezierPathPointFIFO
- (UIKBHandwritingBezierPathPointFIFO)initWithFIFO:(id)o;
- (void)addPoint:(id *)point;
- (void)clear;
- (void)flush;
@end

@implementation UIKBHandwritingBezierPathPointFIFO

- (UIKBHandwritingBezierPathPointFIFO)initWithFIFO:(id)o
{
  v7.receiver = self;
  v7.super_class = UIKBHandwritingBezierPathPointFIFO;
  v3 = [(UIKBHandwritingPointFIFO *)&v7 initWithFIFO:o];
  if (v3)
  {
    v4 = +[UIBezierPath bezierPath];
    [(UIKBHandwritingBezierPathPointFIFO *)v3 setPath:v4];

    array = [MEMORY[0x1E695DF70] array];
    [(UIKBHandwritingBezierPathPointFIFO *)v3 setPrevPoints:array];
  }

  return v3;
}

- (void)addPoint:(id *)point
{
  v5 = v4;
  v6 = v3;
  v70[2] = *MEMORY[0x1E69E9840];
  prevPoints = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
  v9 = [prevPoints count];

  if (!v9)
  {
    path = [(UIKBHandwritingBezierPathPointFIFO *)self path];
    [path removeAllPoints];
  }

  prevPoints2 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
  v12 = [MEMORY[0x1E696B098] valueWithCGPoint:{v6, v5}];
  [prevPoints2 addObject:v12];

  prevPoints3 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
  v14 = [prevPoints3 count];

  if (v14 == 1)
  {
    path2 = [(UIKBHandwritingBezierPathPointFIFO *)self path];
    [path2 moveToPoint:{v6, v5}];

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      prevPoints4 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
      v17 = [prevPoints4 copy];
      emissionHandler[2](emissionHandler, v17);
    }
  }

  else
  {
    prevPoints5 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
    v19 = [prevPoints5 count];

    prevPoints6 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
    v21 = prevPoints6;
    if (v19 == 2)
    {
      v22 = [prevPoints6 objectAtIndexedSubscript:0];
      [v22 CGPointValue];
      v24 = v23;
      v26 = v25;

      prevPoints7 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
      v28 = [prevPoints7 objectAtIndexedSubscript:1];
      [v28 CGPointValue];
      v30 = v29;
      v32 = v31;

      v33 = (v24 + v30) * 0.5;
      v34 = (v26 + v32) * 0.5;
      path3 = [(UIKBHandwritingBezierPathPointFIFO *)self path];
      [path3 addLineToPoint:{v33, v34}];

      v36 = self->_emissionHandler;
      if (v36)
      {
        v37 = [MEMORY[0x1E696B098] valueWithCGPoint:{v24, v26}];
        v70[0] = v37;
        v38 = [MEMORY[0x1E696B098] valueWithCGPoint:{v33, v34}];
        v70[1] = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
        v36[2](v36, v39);
      }
    }

    else
    {
      v40 = [prevPoints6 count];

      if (v40 == 3)
      {
        prevPoints8 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
        v42 = [prevPoints8 objectAtIndexedSubscript:0];
        [v42 CGPointValue];
        v44 = v43;
        v46 = v45;

        prevPoints9 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
        v48 = [prevPoints9 objectAtIndexedSubscript:1];
        [v48 CGPointValue];
        v50 = v49;
        v52 = v51;

        prevPoints10 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
        v54 = [prevPoints10 objectAtIndexedSubscript:2];
        [v54 CGPointValue];
        v56 = v55;
        v58 = v57;

        v59 = (v50 + v56) * 0.5;
        v60 = (v52 + v58) * 0.5;
        path4 = [(UIKBHandwritingBezierPathPointFIFO *)self path];
        [path4 addQuadCurveToPoint:v59 controlPoint:{v60, v50, v52}];

        prevPoints11 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
        [prevPoints11 removeObjectAtIndex:0];

        v63 = self->_emissionHandler;
        if (v63)
        {
          v64 = [MEMORY[0x1E696B098] valueWithCGPoint:{v44, v46}];
          v69[0] = v64;
          v65 = [MEMORY[0x1E696B098] valueWithCGPoint:{v50, v52}];
          v69[1] = v65;
          v66 = [MEMORY[0x1E696B098] valueWithCGPoint:{v59, v60}];
          v69[2] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
          v63[2](v63, v67);
        }
      }
    }
  }
}

- (void)flush
{
  v21[2] = *MEMORY[0x1E69E9840];
  path = [(UIKBHandwritingBezierPathPointFIFO *)self path];
  [path currentPoint];
  v5 = v4;
  v7 = v6;

  prevPoints = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
  lastObject = [prevPoints lastObject];
  [lastObject CGPointValue];
  v11 = v10;
  v13 = v12;

  path2 = [(UIKBHandwritingBezierPathPointFIFO *)self path];
  [path2 addLineToPoint:{v11, v13}];

  emissionHandler = self->_emissionHandler;
  if (emissionHandler)
  {
    v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{v5, v7}];
    v21[0] = v16;
    v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{v11, v13}];
    v21[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    emissionHandler[2](emissionHandler, v18);
  }

  prevPoints2 = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
  [prevPoints2 removeAllObjects];

  v20.receiver = self;
  v20.super_class = UIKBHandwritingBezierPathPointFIFO;
  [(UIKBHandwritingPointFIFO *)&v20 flush];
}

- (void)clear
{
  prevPoints = [(UIKBHandwritingBezierPathPointFIFO *)self prevPoints];
  [prevPoints removeAllObjects];

  path = [(UIKBHandwritingBezierPathPointFIFO *)self path];
  [path removeAllPoints];

  v5.receiver = self;
  v5.super_class = UIKBHandwritingBezierPathPointFIFO;
  [(UIKBHandwritingPointFIFO *)&v5 clear];
}

@end