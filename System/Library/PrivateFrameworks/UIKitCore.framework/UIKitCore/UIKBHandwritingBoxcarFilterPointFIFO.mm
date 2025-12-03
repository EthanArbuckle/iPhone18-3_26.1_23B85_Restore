@interface UIKBHandwritingBoxcarFilterPointFIFO
- (UIKBHandwritingBoxcarFilterPointFIFO)initWithFIFO:(id)o width:(unint64_t)width;
- (void)addPoint:(id *)point;
- (void)clear;
- (void)emitAveragedPoint;
- (void)flush;
@end

@implementation UIKBHandwritingBoxcarFilterPointFIFO

- (UIKBHandwritingBoxcarFilterPointFIFO)initWithFIFO:(id)o width:(unint64_t)width
{
  v9.receiver = self;
  v9.super_class = UIKBHandwritingBoxcarFilterPointFIFO;
  v5 = [(UIKBHandwritingPointFIFO *)&v9 initWithFIFO:o];
  v6 = v5;
  if (v5)
  {
    [(UIKBHandwritingBoxcarFilterPointFIFO *)v5 setWidth:width];
    array = [MEMORY[0x1E695DF70] array];
    [(UIKBHandwritingBoxcarFilterPointFIFO *)v6 setPrevPoints:array];
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
  prevPoints = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v4 = [prevPoints countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(prevPoints);
        }

        [*(*(&v19 + 1) + 8 * i) UIKBHandwritingPointValue];
        v9 = v9 + v11;
        v8 = v8 + v12;
        v7 = v7 + v13;
      }

      v5 = [prevPoints countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  width = [(UIKBHandwritingBoxcarFilterPointFIFO *)self width];
  v15 = v9 / width;
  v16 = v8 / width;
  v17 = v7 / width;
  prevPoints2 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  [prevPoints2 removeObjectAtIndex:0];

  [(UIKBHandwritingPointFIFO *)self emitPoint:v15, v16, v17];
}

- (void)addPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  prevPoints = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v11 = [prevPoints count];

  if (v11)
  {
    prevPoints2 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    lastObject = [prevPoints2 lastObject];
    [lastObject UIKBHandwritingPointValue];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (hypot(v15 - v8, v17 - v7) >= 2.0 || (v20 = v6 - v19, v6 - v19 > 0.1))
    {
      prevPoints3 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
      v22 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v8, v7, v6}];
      [prevPoints3 addObject:v22];
    }

    prevPoints4 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    v24 = [prevPoints4 count];
    width = [(UIKBHandwritingBoxcarFilterPointFIFO *)self width];

    if (v24 == width)
    {

      [(UIKBHandwritingBoxcarFilterPointFIFO *)self emitAveragedPoint];
    }
  }

  else
  {
    prevPoints5 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    v27 = [MEMORY[0x1E696B098] valueWithUIKBHandwritingPoint:{v8, v7, v6}];
    [prevPoints5 addObject:v27];

    [(UIKBHandwritingPointFIFO *)self emitPoint:v8, v7, v6];
  }
}

- (void)flush
{
  prevPoints = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v4 = [prevPoints count];
  width = [(UIKBHandwritingBoxcarFilterPointFIFO *)self width];

  if (v4 == width)
  {
    [(UIKBHandwritingBoxcarFilterPointFIFO *)self emitAveragedPoint];
  }

  prevPoints2 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  v7 = [prevPoints2 count];

  if (v7)
  {
    prevPoints3 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
    lastObject = [prevPoints3 lastObject];
    [lastObject UIKBHandwritingPointValue];
    [(UIKBHandwritingPointFIFO *)self emitPoint:?];
  }

  prevPoints4 = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  [prevPoints4 removeAllObjects];

  v11.receiver = self;
  v11.super_class = UIKBHandwritingBoxcarFilterPointFIFO;
  [(UIKBHandwritingPointFIFO *)&v11 flush];
}

- (void)clear
{
  prevPoints = [(UIKBHandwritingBoxcarFilterPointFIFO *)self prevPoints];
  [prevPoints removeAllObjects];

  v4.receiver = self;
  v4.super_class = UIKBHandwritingBoxcarFilterPointFIFO;
  [(UIKBHandwritingPointFIFO *)&v4 clear];
}

@end