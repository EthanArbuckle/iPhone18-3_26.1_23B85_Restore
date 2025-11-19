@interface UIKeyboardPathEffectView
- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings;
- (UIKeyboardPathEffectView)initWithFrame:(CGRect)a3;
- (id)_currentPath;
- (id)_pushNewPath;
- (int64_t)keyboardAppearance;
- (void)_addDrawingPoint:(CGPoint)a3 force:(double)a4 sentinel:(BOOL)a5;
- (void)_clearPointInterpolators;
- (void)_displayLinkFired:(id)a3;
- (void)addPoint:(CGPoint)a3 force:(double)a4 timestamp:(double)a5;
- (void)buildOut;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)reset;
@end

@implementation UIKeyboardPathEffectView

- (UIKeyboardPathEffectView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = UIKeyboardPathEffectView;
  v3 = [(UIView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = [(UIView *)v4 layer];
    [v5 setAllowsHitTesting:0];

    v6 = [(UIView *)v4 layer];
    [v6 setDrawsAsynchronously:1];

    v7 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v7];

    [(UIKeyboardPathEffectView *)v4 setIncreasedContrastEnabled:_AXDarkenSystemColors() != 0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(UIKeyboardPathEffectView *)v4 setPaths:v8];

    objc_initWeak(&location, v4);
    v9 = [[UIKBHandwritingQuadCurvePointFIFO alloc] initWithFIFO:0 scale:1.0];
    [(UIKeyboardPathEffectView *)v4 setPointInterpolator:v9];

    v14 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v15, &location);
    v10 = [(UIKeyboardPathEffectView *)v4 pointInterpolator:v14];
    [v10 setEmissionHandler:&v14];

    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [(UIKeyboardPathEffectView *)v4 setPointDecayQueue:v11];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v4 selector:sel_accessibilityValueChanged_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __42__UIKeyboardPathEffectView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v15 + 1) + 8 * v7) UIKBHandwritingPointValue];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        [WeakRetained _addDrawingPoint:0 force:v9 sentinel:{v11, v13}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)didMoveToWindow
{
  v3 = [(UIKeyboardPathEffectView *)self pointDecayDisplayLink];

  if (v3)
  {
    v4 = [(UIKeyboardPathEffectView *)self pointDecayDisplayLink];
    v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v6 = *MEMORY[0x1E695DA28];
    [v4 removeFromRunLoop:v5 forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    v6 = *MEMORY[0x1E695DA28];
  }

  v7 = [(UIView *)self window];
  v8 = [v7 screen];
  v9 = [v8 displayLinkWithTarget:self selector:sel__displayLinkFired_];
  [(UIKeyboardPathEffectView *)self setPointDecayDisplayLink:v9];

  v10 = [(UIKeyboardPathEffectView *)self pointDecayDisplayLink];
  [v10 setPaused:1];

  v12 = [(UIKeyboardPathEffectView *)self pointDecayDisplayLink];
  v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v12 addToRunLoop:v11 forMode:v6];
}

- (id)_pushNewPath
{
  v3 = objc_alloc_init(_PointQueue);
  v4 = [(UIKeyboardPathEffectView *)self paths];
  [v4 addObject:v3];

  return v3;
}

- (id)_currentPath
{
  v2 = [(UIKeyboardPathEffectView *)self paths];
  v3 = [v2 lastObject];

  return v3;
}

- (void)_displayLinkFired:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardPathEffectView *)self paths];
  v4 = [v3 count];

  if (v4 && (v4 != 1 || (-[UIKeyboardPathEffectView _currentPath](self, "_currentPath"), v5 = objc_claimAutoreleasedReturnValue(), [v5 nonSentinelPoints], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7)))
  {
    v29 = [MEMORY[0x1E695DFA8] set];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(UIKeyboardPathEffectView *)self paths];
    v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [v12 nonSentinelPoints];
          v14 = [v13 count];

          if (v14)
          {
            v15 = [v12 effectiveStartIndexBasedOnLength];
            Current = CFAbsoluteTimeGetCurrent();
            v17 = [MEMORY[0x1E696AD50] indexSet];
            v18 = [v12 nonSentinelPoints];
            v19 = [v18 count];

            v20 = v15;
            if (v15 < v19)
            {
              while (1)
              {
                v21 = [v12 nonSentinelPoints];
                v22 = [v21 objectAtIndex:v20];

                if (!v22)
                {
                  break;
                }

                [v22 absoluteTime];
                v24 = Current - v23;
                if (v24 <= 0.7)
                {
                  goto LABEL_15;
                }

                [v17 addIndex:v20];
LABEL_16:

                if (v19 == ++v20)
                {
                  goto LABEL_17;
                }
              }

              v24 = 0.0;
LABEL_15:
              [v22 setDecay:v24 / 0.7];
              goto LABEL_16;
            }

LABEL_17:
            [v17 addIndexesInRange:{0, v15}];
            v25 = [v12 nonSentinelPoints];
            [v25 removeObjectsAtIndexes:v17];
          }

          else
          {
            v26 = [(UIKeyboardPathEffectView *)self _currentPath];

            if (v12 != v26)
            {
              [v29 addObject:v12];
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v9);
    }

    v27 = [(UIKeyboardPathEffectView *)self paths];
    v28 = [v29 allObjects];
    [v27 removeObjectsInArray:v28];

    [(UIView *)self setNeedsDisplay];
  }

  else
  {
    obja = [(UIKeyboardPathEffectView *)self pointDecayDisplayLink];
    [obja setPaused:1];
  }
}

- (void)_addDrawingPoint:(CGPoint)a3 force:(double)a4 sentinel:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_startTime == 0.0)
  {
    self->_startTime = Current;
  }

  v11 = [(UIKeyboardPathEffectView *)self _currentPath];
  if (!v11)
  {
    v11 = [(UIKeyboardPathEffectView *)self _pushNewPath];
  }

  v21 = v11;
  v12 = [v11 nonSentinelPoints];
  v13 = [v12 lastObject];

  v14 = objc_alloc_init(_PathPoint);
  [(_PathPoint *)v14 setPoint:x, y];
  [(_PathPoint *)v14 setForce:a4];
  [(_PathPoint *)v14 setRelativeTime:Current - self->_startTime];
  [(_PathPoint *)v14 setAbsoluteTime:Current];
  [(_PathPoint *)v14 setSentinelPoint:v5];
  [(_PathPoint *)v14 setLength:0.0];
  if (v13 && !v5)
  {
    [v13 point];
    v17 = hypot(x - v15, y - v16);
    [v13 length];
    [(_PathPoint *)v14 setLength:v17 + v18];
  }

  if (!v5)
  {
    v19 = [v21 nonSentinelPoints];
    [v19 addObject:v14];
  }

  v20 = [(UIKeyboardPathEffectView *)self pointDecayDisplayLink];
  [v20 setPaused:0];
}

- (void)addPoint:(CGPoint)a3 force:(double)a4 timestamp:(double)a5
{
  y = a3.y;
  x = a3.x;
  v7 = [(UIKeyboardPathEffectView *)self pointInterpolator:a3.x];
  [v7 addPoint:{x, y, 1.0}];
}

- (void)_clearPointInterpolators
{
  v2 = [(UIKeyboardPathEffectView *)self pointInterpolator];
  [v2 clear];
}

- (void)buildOut
{
  self->_done = 1;
  [(UIKeyboardPathEffectView *)self _clearPointInterpolators];
  v3 = [(UIKeyboardPathEffectView *)self _pushNewPath];
}

- (void)reset
{
  self->_done = 0;
  self->_startTime = 0.0;
  [(NSMutableArray *)self->_paths removeAllObjects];

  [(UIKeyboardPathEffectView *)self _clearPointInterpolators];
}

- (int64_t)keyboardAppearance
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 textInputTraits];
  v4 = [v3 keyboardAppearance];

  return v4;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings
{
  v3 = [(UIKeyboardPathEffectView *)self keyboardAppearance]== 1;
  v4 = dbl_18A680810[v3];
  if (self->_increasedContrastEnabled)
  {
    v5 = 0.69;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = dbl_18A680820[v3];
  if (!self->_increasedContrastEnabled)
  {
    v4 = 0.67;
  }

  v7 = 0.635;
  if (self->_increasedContrastEnabled)
  {
    v7 = dbl_18A680820[v3];
  }

  else
  {
    v6 = 0.619;
  }

  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v48 = *MEMORY[0x1E69E9840];
  [(UIKeyboardPathEffectView *)self _currentThemeSettings:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetRGBStrokeColor(v13, v5, v7, v9, v11);
  CGContextSetLineCap(v13, kCGLineCapRound);
  CGContextSetLineJoin(v13, kCGLineJoinRound);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(UIKeyboardPathEffectView *)self paths];
  v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    do
    {
      v17 = 0;
      v41 = v15;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = [v18 nonSentinelPoints];
        v20 = [v19 count];

        if (v20 >= 2)
        {
          v21 = [v18 effectiveStartIndexBasedOnLength];
          v22 = [v18 nonSentinelPoints];
          v23 = [v22 objectAtIndex:v21];

          [v23 point];
          v25 = v24;
          [v23 point];
          CGContextMoveToPoint(v13, v25, v26);
          v27 = v21 + 1;
          if (v21 + 1 < v20)
          {
            v28 = (v20 - v21);
            v29 = v21;
            do
            {
              v30 = [v18 nonSentinelPoints];
              v31 = [v30 objectAtIndex:v27];

              [v31 decay];
              v33 = 19.7 - (1.0 - (v27 - (v32 * v28 + v29)) / v28) * 19.7;
              if (v33 > 0.0)
              {
                CGContextSetLineWidth(v13, v33);
                [v31 point];
                v35 = v34;
                [v31 point];
                CGContextAddLineToPoint(v13, v35, v36);
                CGContextStrokePath(v13);
              }

              [v31 point];
              v38 = v37;
              [v31 point];
              CGContextMoveToPoint(v13, v38, v39);
              if (v27 + 3 < v20 || v27 == v20 - 1)
              {
                v27 += 3;
              }

              else
              {
                v27 = v20 - 1;
              }
            }

            while (v27 < v20);
          }

          v15 = v41;
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v15);
  }
}

@end