@interface UIKBHandwritingStrokePointFIFO
- (UIKBHandwritingStrokePointFIFO)initWithFIFO:(id)o;
- (id)scaleStrokes:(double)strokes;
- (void)addPoint:(id *)point;
- (void)clear;
- (void)flush;
@end

@implementation UIKBHandwritingStrokePointFIFO

- (UIKBHandwritingStrokePointFIFO)initWithFIFO:(id)o
{
  v6.receiver = self;
  v6.super_class = UIKBHandwritingStrokePointFIFO;
  v3 = [(UIKBHandwritingPointFIFO *)&v6 initWithFIFO:o];
  if (v3)
  {
    v4 = objc_opt_new();
    [(UIKBHandwritingStrokePointFIFO *)v3 setStrokes:v4];
  }

  return v3;
}

- (void)addPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  strokes = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  [strokes addPoint:{v8, v7}];

  v11.receiver = self;
  v11.super_class = UIKBHandwritingStrokePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v11 addPoint:v8, v7, v6];
}

- (void)flush
{
  strokes = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  [strokes endStroke];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingStrokePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 flush];
}

- (void)clear
{
  strokes = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  [strokes removeAllStrokes];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingStrokePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 clear];
}

- (id)scaleStrokes:(double)strokes
{
  if (strokes == 1.0)
  {
    strokes = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  }

  else
  {
    strokes = objc_alloc_init(MEMORY[0x1E69D9598]);
    strokes2 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
    numberOfStrokes = [strokes2 numberOfStrokes];

    if (numberOfStrokes)
    {
      v8 = 0;
      do
      {
        strokes3 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
        v10 = [strokes3 numberOfPointsInStrokeAtIndex:v8];

        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            strokes4 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
            [strokes4 pointAtIndex:i inStrokeAtIndex:v8];
            v14 = v13;
            v16 = v15;

            [strokes addPoint:{v14 * strokes, v16 * strokes}];
          }
        }

        [strokes endStroke];
        ++v8;
        strokes5 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
        numberOfStrokes2 = [strokes5 numberOfStrokes];
      }

      while (v8 < numberOfStrokes2);
    }
  }

  return strokes;
}

@end