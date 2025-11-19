@interface UIKBHandwritingStrokePointFIFO
- (UIKBHandwritingStrokePointFIFO)initWithFIFO:(id)a3;
- (id)scaleStrokes:(double)a3;
- (void)addPoint:(id *)a3;
- (void)clear;
- (void)flush;
@end

@implementation UIKBHandwritingStrokePointFIFO

- (UIKBHandwritingStrokePointFIFO)initWithFIFO:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIKBHandwritingStrokePointFIFO;
  v3 = [(UIKBHandwritingPointFIFO *)&v6 initWithFIFO:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    [(UIKBHandwritingStrokePointFIFO *)v3 setStrokes:v4];
  }

  return v3;
}

- (void)addPoint:(id *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  [v10 addPoint:{v8, v7}];

  v11.receiver = self;
  v11.super_class = UIKBHandwritingStrokePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v11 addPoint:v8, v7, v6];
}

- (void)flush
{
  v3 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  [v3 endStroke];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingStrokePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 flush];
}

- (void)clear
{
  v3 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  [v3 removeAllStrokes];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingStrokePointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 clear];
}

- (id)scaleStrokes:(double)a3
{
  if (a3 == 1.0)
  {
    v5 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69D9598]);
    v6 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
    v7 = [v6 numberOfStrokes];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
        v10 = [v9 numberOfPointsInStrokeAtIndex:v8];

        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
            [v12 pointAtIndex:i inStrokeAtIndex:v8];
            v14 = v13;
            v16 = v15;

            [v5 addPoint:{v14 * a3, v16 * a3}];
          }
        }

        [v5 endStroke];
        ++v8;
        v17 = [(UIKBHandwritingStrokePointFIFO *)self strokes];
        v18 = [v17 numberOfStrokes];
      }

      while (v8 < v18);
    }
  }

  return v5;
}

@end