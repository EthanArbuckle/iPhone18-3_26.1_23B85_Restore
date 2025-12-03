@interface CACGestureLivePreviewPathEffectView
- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings;
- (CACGestureLivePreviewPathEffectView)initWithFrame:(CGRect)frame;
- (id)_currentPath;
- (id)_pushNewPath;
- (void)_addDrawingPoint:(CGPoint)point force:(double)force sentinel:(BOOL)sentinel;
- (void)_clearPointInterpolators;
- (void)_displayLinkFired:(id)fired;
- (void)addPoint:(CGPoint)point force:(double)force timestamp:(double)timestamp;
- (void)buildOut;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)reset;
@end

@implementation CACGestureLivePreviewPathEffectView

- (CACGestureLivePreviewPathEffectView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = CACGestureLivePreviewPathEffectView;
  v3 = [(CACGestureLivePreviewPathEffectView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = CACLogGestureRecording();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CACGestureLivePreviewPathEffectView *)v4 initWithFrame:v5, v6, v7, v8, v9, v10, v11];
    }

    [(CACGestureLivePreviewPathEffectView *)v3 setUserInteractionEnabled:0];
    layer = [(CACGestureLivePreviewPathEffectView *)v3 layer];
    [layer setAllowsHitTesting:0];

    layer2 = [(CACGestureLivePreviewPathEffectView *)v3 layer];
    [layer2 setDrawsAsynchronously:1];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CACGestureLivePreviewPathEffectView *)v3 setBackgroundColor:clearColor];

    [(CACGestureLivePreviewPathEffectView *)v3 setIncreasedContrastEnabled:UIAccessibilityDarkerSystemColorsEnabled()];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CACGestureLivePreviewPathEffectView *)v3 setPaths:v15];

    objc_initWeak(&location, v3);
    v16 = [[CACGestureLivePreviewHandwritingQuadCurvePointFIFO alloc] initWithFIFO:0 scale:1.0];
    [(CACGestureLivePreviewPathEffectView *)v3 setPointInterpolator:v16];

    v21 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v22, &location);
    v17 = [(CACGestureLivePreviewPathEffectView *)v3 pointInterpolator:v21];
    [v17 setEmissionHandler:&v21];

    v18 = objc_alloc_init(MEMORY[0x277CCAB58]);
    [(CACGestureLivePreviewPathEffectView *)v3 setPointDecayQueue:v18];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_accessibilityValueChanged_ name:*MEMORY[0x277D76460] object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __53__CACGestureLivePreviewPathEffectView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
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

        [*(*(&v15 + 1) + 8 * v7) CACGestureLivePreviewHandwritingPointValue];
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
  v3 = CACLogGestureRecording();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CACGestureLivePreviewPathEffectView *)v3 didMoveToWindow:v4];
  }

  pointDecayDisplayLink = [(CACGestureLivePreviewPathEffectView *)self pointDecayDisplayLink];

  if (pointDecayDisplayLink)
  {
    pointDecayDisplayLink2 = [(CACGestureLivePreviewPathEffectView *)self pointDecayDisplayLink];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    v14 = *MEMORY[0x277CBE738];
    [pointDecayDisplayLink2 removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  }

  else
  {
    v14 = *MEMORY[0x277CBE738];
  }

  window = [(CACGestureLivePreviewPathEffectView *)self window];
  screen = [window screen];
  v17 = [screen displayLinkWithTarget:self selector:sel__displayLinkFired_];
  [(CACGestureLivePreviewPathEffectView *)self setPointDecayDisplayLink:v17];

  pointDecayDisplayLink3 = [(CACGestureLivePreviewPathEffectView *)self pointDecayDisplayLink];
  [pointDecayDisplayLink3 setPaused:1];

  pointDecayDisplayLink4 = [(CACGestureLivePreviewPathEffectView *)self pointDecayDisplayLink];
  mainRunLoop2 = [MEMORY[0x277CBEB88] mainRunLoop];
  [pointDecayDisplayLink4 addToRunLoop:mainRunLoop2 forMode:v14];
}

- (id)_pushNewPath
{
  v3 = objc_alloc_init(_CACGesturePointQueue);
  paths = [(CACGestureLivePreviewPathEffectView *)self paths];
  [paths addObject:v3];

  return v3;
}

- (id)_currentPath
{
  paths = [(CACGestureLivePreviewPathEffectView *)self paths];
  lastObject = [paths lastObject];

  return lastObject;
}

- (void)_displayLinkFired:(id)fired
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = CACLogGestureRecording();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CACGestureLivePreviewPathEffectView *)v4 _displayLinkFired:v5, v6, v7, v8, v9, v10, v11];
  }

  paths = [(CACGestureLivePreviewPathEffectView *)self paths];
  v13 = [paths count];

  if (v13 && (v13 != 1 || (-[CACGestureLivePreviewPathEffectView _currentPath](self, "_currentPath"), v14 = objc_claimAutoreleasedReturnValue(), [v14 nonSentinelPoints], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16)))
  {
    v39 = [MEMORY[0x277CBEB58] set];
    selfCopy = self;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(CACGestureLivePreviewPathEffectView *)self paths];
    v17 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          nonSentinelPoints = [v21 nonSentinelPoints];
          v23 = [nonSentinelPoints count];

          if (v23)
          {
            effectiveStartIndexBasedOnLength = [v21 effectiveStartIndexBasedOnLength];
            Current = CFAbsoluteTimeGetCurrent();
            indexSet = [MEMORY[0x277CCAB58] indexSet];
            nonSentinelPoints2 = [v21 nonSentinelPoints];
            v28 = [nonSentinelPoints2 count];

            v29 = effectiveStartIndexBasedOnLength;
            if (effectiveStartIndexBasedOnLength < v28)
            {
              while (1)
              {
                nonSentinelPoints3 = [v21 nonSentinelPoints];
                v31 = [nonSentinelPoints3 objectAtIndex:v29];

                if (!v31)
                {
                  break;
                }

                [v31 absoluteTime];
                v33 = Current - v32;
                if (v33 <= 0.3)
                {
                  goto LABEL_17;
                }

                [indexSet addIndex:v29];
LABEL_18:

                if (v28 == ++v29)
                {
                  goto LABEL_19;
                }
              }

              v33 = 0.0;
LABEL_17:
              [v31 setDecay:v33 / 0.3];
              goto LABEL_18;
            }

LABEL_19:
            [indexSet addIndexesInRange:{0, effectiveStartIndexBasedOnLength}];
            nonSentinelPoints4 = [v21 nonSentinelPoints];
            [nonSentinelPoints4 removeObjectsAtIndexes:indexSet];
          }

          else
          {
            _currentPath = [(CACGestureLivePreviewPathEffectView *)selfCopy _currentPath];

            if (v21 != _currentPath)
            {
              [v39 addObject:v21];
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v18);
    }

    paths2 = [(CACGestureLivePreviewPathEffectView *)selfCopy paths];
    pointDecayDisplayLink = v39;
    allObjects = [v39 allObjects];
    [paths2 removeObjectsInArray:allObjects];

    [(CACGestureLivePreviewPathEffectView *)selfCopy setNeedsDisplay];
  }

  else
  {
    pointDecayDisplayLink = [(CACGestureLivePreviewPathEffectView *)self pointDecayDisplayLink];
    [pointDecayDisplayLink setPaused:1];
  }
}

- (void)_addDrawingPoint:(CGPoint)point force:(double)force sentinel:(BOOL)sentinel
{
  sentinelCopy = sentinel;
  y = point.y;
  x = point.x;
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_startTime == 0.0)
  {
    self->_startTime = Current;
  }

  _currentPath = [(CACGestureLivePreviewPathEffectView *)self _currentPath];
  if (!_currentPath)
  {
    _currentPath = [(CACGestureLivePreviewPathEffectView *)self _pushNewPath];
  }

  v21 = _currentPath;
  nonSentinelPoints = [_currentPath nonSentinelPoints];
  lastObject = [nonSentinelPoints lastObject];

  v14 = objc_alloc_init(_CACGesturePathPoint);
  [(_CACGesturePathPoint *)v14 setPoint:x, y];
  [(_CACGesturePathPoint *)v14 setForce:force];
  [(_CACGesturePathPoint *)v14 setRelativeTime:Current - self->_startTime];
  [(_CACGesturePathPoint *)v14 setAbsoluteTime:Current];
  [(_CACGesturePathPoint *)v14 setSentinelPoint:sentinelCopy];
  [(_CACGesturePathPoint *)v14 setLength:0.0];
  if (lastObject && !sentinelCopy)
  {
    [lastObject point];
    v17 = CACCGPointDistance(v15, v16, x, y);
    [lastObject length];
    [(_CACGesturePathPoint *)v14 setLength:v17 + v18];
  }

  if (!sentinelCopy)
  {
    nonSentinelPoints2 = [v21 nonSentinelPoints];
    [nonSentinelPoints2 addObject:v14];
  }

  pointDecayDisplayLink = [(CACGestureLivePreviewPathEffectView *)self pointDecayDisplayLink];
  [pointDecayDisplayLink setPaused:0];
}

- (void)addPoint:(CGPoint)point force:(double)force timestamp:(double)timestamp
{
  y = point.y;
  x = point.x;
  v7 = [(CACGestureLivePreviewPathEffectView *)self pointInterpolator:point.x];
  [v7 addPoint:{x, y, 1.0}];
}

- (void)_clearPointInterpolators
{
  pointInterpolator = [(CACGestureLivePreviewPathEffectView *)self pointInterpolator];
  [pointInterpolator clear];
}

- (void)buildOut
{
  self->_done = 1;
  [(CACGestureLivePreviewPathEffectView *)self _clearPointInterpolators];
  _pushNewPath = [(CACGestureLivePreviewPathEffectView *)self _pushNewPath];
}

- (void)reset
{
  self->_done = 0;
  self->_startTime = 0.0;
  [(NSMutableArray *)self->_paths removeAllObjects];

  [(CACGestureLivePreviewPathEffectView *)self _clearPointInterpolators];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = CACIsInDarkMode();
  v4 = 0.398;
  if (v3)
  {
    v4 = 0.914;
  }

  v5 = 0.387;
  if (v3)
  {
    v5 = 0.895;
  }

  if (self->_increasedContrastEnabled)
  {
    v6 = 0.69;
  }

  else
  {
    v6 = 1.0;
  }

  if (self->_increasedContrastEnabled)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0.67;
  }

  if (self->_increasedContrastEnabled)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0.635;
  }

  if (self->_increasedContrastEnabled)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0.619;
  }

  v10 = CACLogGestureRecording();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218752;
    v16 = v9;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v6;
    _os_log_debug_impl(&dword_26B354000, v10, OS_LOG_TYPE_DEBUG, "Picked colors r:%f g:%f b:%f a:%f", &v15, 0x2Au);
  }

  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  v46 = *MEMORY[0x277D85DE8];
  [(CACGestureLivePreviewPathEffectView *)self _currentThemeSettings:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetRGBStrokeColor(CurrentContext, v5, v7, v9, v11);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(CACGestureLivePreviewPathEffectView *)self paths];
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    v38 = *v42;
    do
    {
      v16 = 0;
      v39 = v14;
      do
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * v16);
        nonSentinelPoints = [v17 nonSentinelPoints];
        v19 = [nonSentinelPoints count];

        if (v19 >= 2)
        {
          effectiveStartIndexBasedOnLength = [v17 effectiveStartIndexBasedOnLength];
          nonSentinelPoints2 = [v17 nonSentinelPoints];
          v22 = [nonSentinelPoints2 objectAtIndex:effectiveStartIndexBasedOnLength];

          [v22 point];
          v24 = v23;
          [v22 point];
          CGContextMoveToPoint(CurrentContext, v24, v25);
          v26 = effectiveStartIndexBasedOnLength + 1;
          while (v26 < v19)
          {
            nonSentinelPoints3 = [v17 nonSentinelPoints];
            v28 = [nonSentinelPoints3 objectAtIndex:v26];

            [v28 decay];
            v30 = 1.0 - v29;
            if ((v26 - effectiveStartIndexBasedOnLength) / (v19 - effectiveStartIndexBasedOnLength) < v30)
            {
              v30 = (v26 - effectiveStartIndexBasedOnLength) / (v19 - effectiveStartIndexBasedOnLength);
            }

            CGContextSetLineWidth(CurrentContext, (1.0 - v30) * -62.1 + 69.0);
            [v28 point];
            v32 = v31;
            [v28 point];
            CGContextAddLineToPoint(CurrentContext, v32, v33);
            CGContextStrokePath(CurrentContext);
            [v28 point];
            v35 = v34;
            [v28 point];
            CGContextMoveToPoint(CurrentContext, v35, v36);
            if (v26 + 3 < v19 || v26 == v19 - 1)
            {
              v26 += 3;
            }

            else
            {
              v26 = v19 - 1;
            }
          }

          v15 = v38;
          v14 = v39;
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }
}

@end