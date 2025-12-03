@interface UIKBStrokeView
- (UIKBStrokeView)initWithFrame:(CGRect)frame;
- (void)addStrokePoint:(CGPoint)point withTimestamp:(double)timestamp;
- (void)drawRect:(CGRect)rect;
- (void)resetStrokePoints;
@end

@implementation UIKBStrokeView

- (UIKBStrokeView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UIKBStrokeView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    points = v3->_points;
    v3->_points = v4;

    [(UIView *)v3 setOpaque:0];
    [(UIView *)v3 setAlpha:0.2];
    [(UIView *)v3 setUserInteractionEnabled:0];
    v6 = v3;
  }

  return v3;
}

- (void)addStrokePoint:(CGPoint)point withTimestamp:(double)timestamp
{
  timestamp = [[UIKBStrokeSample alloc] initWithPoint:point.x timestamp:point.y, timestamp];
  [(NSMutableArray *)self->_points addObject:timestamp];
  [(UIView *)self setNeedsDisplay];
}

- (void)resetStrokePoints
{
  [(NSMutableArray *)self->_points removeAllObjects];

  [(UIView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  if ([(NSMutableArray *)self->_points count:rect.origin.x]>= 2)
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v5);
    CGContextSetGrayFillColor(v5, 0.0, 0.0);
    [(UIView *)self bounds];
    CGContextFillRect(v5, v47);
    CGContextSetLineJoin(v5, kCGLineJoinRound);
    CGContextSetLineCap(v5, kCGLineCapRound);
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v7 = 7.5;
    v42 = 3221225472;
    v41 = MEMORY[0x1E69E9820];
    v43 = __27__UIKBStrokeView_drawRect___block_invoke;
    v44 = &unk_1E710BEC0;
    if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = 10.0;
    }

    selfCopy = self;
    v46 = v7;
    v8 = _Block_copy(&v41);
    v9 = [(NSMutableArray *)self->_points count:v41];
    v10 = v9 - 1;
    if (v9 != 1)
    {
      v11 = 0.5;
      do
      {
        v12 = [(NSMutableArray *)self->_points objectAtIndexedSubscript:v10 - 1];
        [v12 point];
        v14 = v13;
        v16 = v15;

        v17 = [(NSMutableArray *)self->_points objectAtIndexedSubscript:v10];
        [v17 point];
        v19 = v18;
        v21 = v20;

        CGContextSetRGBFillColor(v5, 0.0, 0.0, 1.0, 1.0);
        v22 = v8[2](v8, v10 - 1);
        v23 = v8[2](v8, v10);
        CGContextSaveGState(v5);
        v24 = v22 * v11;
        if (v22 * v11 > 0.0)
        {
          v48.origin.x = v14 - v24;
          v48.origin.y = v16 - v24;
          v48.size.width = v24 + v24;
          v48.size.height = v24 + v24;
          CGContextAddEllipseInRect(v5, v48);
          CGContextFillPath(v5);
        }

        v25 = v23 * 0.5;
        if (v23 * 0.5 > 0.0)
        {
          v49.origin.x = v19 - v25;
          v49.origin.y = v21 - v25;
          v49.size.width = v25 + v25;
          v49.size.height = v25 + v25;
          CGContextAddEllipseInRect(v5, v49);
          CGContextFillPath(v5);
        }

        v26 = v21 - v16;
        v27 = hypot(v19 - v14, v21 - v16);
        if (fmax(v24, v25) > 0.0 && v27 > 0.0)
        {
          v28 = v26 / v27;
          v29 = -(v19 - v14) / v27;
          v30 = v24 * (v26 / v27);
          v31 = v14 + v30;
          v32 = v16 + v24 * v29;
          v33 = v14 - v30;
          v34 = v16 - v24 * v29;
          v35 = v25 * v28;
          v36 = v19 + v35;
          v37 = v25 * v29;
          v38 = v21 + v37;
          v39 = v19 - v35;
          v40 = v21 - v37;
          CGContextMoveToPoint(v5, v31, v32);
          CGContextAddLineToPoint(v5, v33, v34);
          CGContextAddLineToPoint(v5, v39, v40);
          CGContextAddLineToPoint(v5, v36, v38);
          CGContextClosePath(v5);
          CGContextFillPath(v5);
        }

        CGContextRestoreGState(v5);
        --v10;
        v11 = 0.5;
      }

      while (v10);
    }

    CGContextRestoreGState(v5);
  }
}

void __27__UIKBStrokeView_drawRect___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = a2 + 3;
  if (a2 + 3 >= [*(*(a1 + 32) + 408) count])
  {
    v4 = [*(*(a1 + 32) + 408) count] - 1;
  }

  if (a2 <= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 - 3;
  }

  v6 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:v5];
  [v6 point];
  v8 = v7;
  v10 = v9;

  v11 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:v4];
  [v11 point];
  v13 = v12;
  v15 = v14;

  v16 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:v5];
  [v16 timestamp];

  v17 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:v4];
  [v17 timestamp];

  hypot(v13 - v8, v15 - v10);
}

@end