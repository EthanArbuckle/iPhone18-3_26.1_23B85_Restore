@interface UIKBHandwritingBoxcarFilterPointFIFO
- (UIKBHandwritingBoxcarFilterPointFIFO)initWithFIFO:(id)a3 width:(unint64_t)a4;
- (void)addPoint:(id *)a3;
- (void)clear;
- (void)emitAveragedPoint;
- (void)flush;
@end

@implementation UIKBHandwritingBoxcarFilterPointFIFO

- (UIKBHandwritingBoxcarFilterPointFIFO)initWithFIFO:(id)a3 width:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = UIKBHandwritingBoxcarFilterPointFIFO;
  v5 = [(UIKBHandwritingPointFIFO *)&v9 initWithFIFO:a3];
  v6 = v5;
  if (v5)
  {
    [(UIKBHandwritingBoxcarFilterPointFIFO *)v5 setWidth:a4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(UIKBHandwritingBoxcarFilterPointFIFO *)v6 setPrevPoints:v7];
  }

  return v6;
}

- (void)emitAveragedPoint
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * i) UIKBHandwritingPointValue];
        v9 = v9 + v11;
        v8 = v8 + v12;
        v7 = v7 + v13;
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v14 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self width];
  v15 = v9 / v14;
  v16 = v8 / v14;
  v17 = v7 / v14;
  v18 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  [v18 removeObjectAtIndex:0];

  [(UIKBHandwritingPointFIFO *)self emitPoint:v15, v16, v17];
}

- (void)addPoint:(id *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    v13 = [v12 lastObject];
    [v13 UIKBHandwritingPointValue];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (hypot(v15 - v8, v17 - v7) >= 2.0 || (v20 = v6 - v19, v6 - v19 > 0.1))
    {
      v21 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
      v22 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v8, v7, v6}];
      [v21 addObject:v22];
    }

    v23 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    v24 = [v23 count];
    v25 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self width];

    if (v24 == v25)
    {

      [(UIKBHandwritingBoxcarFilterPointFIFO *)self emitAveragedPoint];
    }
  }

  else
  {
    v26 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    v27 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v8, v7, v6}];
    [v26 addObject:v27];

    [(UIKBHandwritingPointFIFO *)self emitPoint:v8, v7, v6];
  }
}

- (void)flush
{
  v3 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v4 = [v3 count];
  v5 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self width];

  if (v4 == v5)
  {
    [(UIKBHandwritingBoxcarFilterPointFIFO *)self emitAveragedPoint];
  }

  v6 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    v9 = [v8 lastObject];
    [v9 UIKBHandwritingPointValue];
    [(UIKBHandwritingPointFIFO *)self emitPoint:?];
  }

  v10 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  [v10 removeAllObjects];

  v11.receiver = self;
  v11.super_class = UIKBHandwritingBoxcarFilterPointFIFO;
  [(UIKBHandwritingPointFIFO *)&v11 flush];
}

- (void)clear
{
  v3 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  [v3 removeAllObjects];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingBoxcarFilterPointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 clear];
}

@end