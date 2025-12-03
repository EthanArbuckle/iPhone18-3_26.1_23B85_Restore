@interface TUIKeyboardPathEffectView
- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings;
- (TUIKeyboardPathEffectView)initWithFrame:(CGRect)frame;
- (id)_currentPath;
- (id)_pushNewPath;
- (id)pathsToRender;
- (int64_t)keyboardAppearance;
- (void)_addDrawingPoint:(CGPoint)point force:(double)force sentinel:(BOOL)sentinel;
- (void)_clearPointInterpolators;
- (void)addPoint:(CGPoint)point force:(double)force timestamp:(double)timestamp;
- (void)buildOut;
- (void)createMTKViewIfNecessary;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reset;
- (void)updatePaths;
@end

@implementation TUIKeyboardPathEffectView

- (id)pathsToRender
{
  [(TUIKeyboardPathEffectView *)self _currentThemeSettings];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  [(TUIKeyboardPathRenderer *)self->_renderer setPathColor:*vcvt_hight_f32_f64(vcvt_f32_f64(v6), v4).i64];
  [(TUIKeyboardPathEffectView *)self updatePaths];
  v7 = [(NSMutableArray *)self->_paths copy];

  return v7;
}

- (void)layoutSubviews
{
  [(TUIKeyboardPathEffectView *)self bounds];
  [(MTKView *)self->_mtkView setFrame:?];
  [(TUIKeyboardPathEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  if ([MEMORY[0x1E69DCBB8] isKeyboardProcess])
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v9 = v8;

    v10 = fmax(v9, 1.0);
  }

  else
  {
    v10 = 1.4;
  }

  v11 = v6 * v10;
  v12 = v4 * v10;
  mtkView = self->_mtkView;

  [(MTKView *)mtkView setDrawableSize:v12, v11];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings
{
  if ([(TUIKeyboardPathEffectView *)self keyboardAppearance]== 1)
  {
    v3 = !self->_increasedContrastEnabled;
    if (self->_increasedContrastEnabled)
    {
      v4 = 0.69;
    }

    else
    {
      v4 = 1.0;
    }

    if (self->_increasedContrastEnabled)
    {
      v5 = 0.914;
    }

    else
    {
      v5 = 0.67;
    }

    v6 = 0.895;
LABEL_26:
    if (v3)
    {
      v7 = 0.635;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0.619;
    if (!v3)
    {
      v8 = v6;
    }

    goto LABEL_31;
  }

  if ([(TUIKeyboardPathEffectView *)self keyboardAppearance]!= 13)
  {
    v3 = !self->_increasedContrastEnabled;
    if (self->_increasedContrastEnabled)
    {
      v4 = 0.69;
    }

    else
    {
      v4 = 1.0;
    }

    if (self->_increasedContrastEnabled)
    {
      v5 = 0.398;
    }

    else
    {
      v5 = 0.67;
    }

    v6 = 0.387;
    goto LABEL_26;
  }

  if (self->_increasedContrastEnabled)
  {
    v4 = 0.69;
  }

  else
  {
    v4 = 0.5;
  }

  v7 = 1.0;
  if (self->_increasedContrastEnabled)
  {
    v5 = 0.398;
  }

  else
  {
    v5 = 1.0;
  }

  if (self->_increasedContrastEnabled)
  {
    v7 = 0.387;
  }

  v8 = v7;
LABEL_31:
  result.var3 = v4;
  result.var2 = v5;
  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- (int64_t)keyboardAppearance
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  textInputTraits = [activeInstance textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  return keyboardAppearance;
}

- (void)reset
{
  self->_done = 0;
  self->_startTime = 0.0;
  [(NSMutableArray *)self->_paths removeAllObjects];

  [(TUIKeyboardPathEffectView *)self _clearPointInterpolators];
}

- (void)buildOut
{
  self->_done = 1;
  [(TUIKeyboardPathEffectView *)self _clearPointInterpolators];
  _pushNewPath = [(TUIKeyboardPathEffectView *)self _pushNewPath];
}

- (void)_clearPointInterpolators
{
  pointInterpolator = [(TUIKeyboardPathEffectView *)self pointInterpolator];
  [pointInterpolator clear];
}

- (void)addPoint:(CGPoint)point force:(double)force timestamp:(double)timestamp
{
  y = point.y;
  x = point.x;
  [(TUIKeyboardPathEffectView *)self createMTKViewIfNecessary:point.x];
  pointInterpolator = [(TUIKeyboardPathEffectView *)self pointInterpolator];
  [pointInterpolator addPoint:{x, y, 1.0}];
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

  _currentPath = [(TUIKeyboardPathEffectView *)self _currentPath];
  if (!_currentPath)
  {
    _currentPath = [(TUIKeyboardPathEffectView *)self _pushNewPath];
  }

  v21 = _currentPath;
  nonSentinelPoints = [_currentPath nonSentinelPoints];
  lastObject = [nonSentinelPoints lastObject];

  v14 = objc_alloc_init(_TUIPathPoint);
  [(_TUIPathPoint *)v14 setPoint:x, y];
  [(_TUIPathPoint *)v14 setForce:force];
  [(_TUIPathPoint *)v14 setRelativeTime:Current - self->_startTime];
  [(_TUIPathPoint *)v14 setAbsoluteTime:Current];
  [(_TUIPathPoint *)v14 setSentinelPoint:sentinelCopy];
  [(_TUIPathPoint *)v14 setLength:0.0];
  if (lastObject && !sentinelCopy)
  {
    [lastObject point];
    v17 = hypot(x - v15, y - v16);
    [lastObject length];
    [(_TUIPathPoint *)v14 setLength:v17 + v18];
  }

  if (!sentinelCopy)
  {
    nonSentinelPoints2 = [v21 nonSentinelPoints];
    [nonSentinelPoints2 addObject:v14];
  }

  renderer = [(TUIKeyboardPathEffectView *)self renderer];
  [renderer setPaused:0];
}

- (void)updatePaths
{
  v37 = *MEMORY[0x1E69E9840];
  paths = [(TUIKeyboardPathEffectView *)self paths];
  v3 = [paths count];

  if (v3 && (v3 != 1 || (-[TUIKeyboardPathEffectView _currentPath](self, "_currentPath"), v4 = objc_claimAutoreleasedReturnValue(), [v4 nonSentinelPoints], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6)))
  {
    v28 = [MEMORY[0x1E695DFA8] set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(TUIKeyboardPathEffectView *)self paths];
    v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          nonSentinelPoints = [v11 nonSentinelPoints];
          v13 = [nonSentinelPoints count];

          if (v13)
          {
            effectiveStartIndexBasedOnLength = [v11 effectiveStartIndexBasedOnLength];
            Current = CFAbsoluteTimeGetCurrent();
            indexSet = [MEMORY[0x1E696AD50] indexSet];
            nonSentinelPoints2 = [v11 nonSentinelPoints];
            v18 = [nonSentinelPoints2 count];

            v19 = effectiveStartIndexBasedOnLength;
            if (effectiveStartIndexBasedOnLength < v18)
            {
              while (1)
              {
                nonSentinelPoints3 = [v11 nonSentinelPoints];
                v21 = [nonSentinelPoints3 objectAtIndex:v19];

                if (!v21)
                {
                  break;
                }

                [v21 absoluteTime];
                v23 = Current - v22;
                if (v23 <= 0.7)
                {
                  goto LABEL_15;
                }

                [indexSet addIndex:v19];
LABEL_16:

                if (v18 == ++v19)
                {
                  goto LABEL_17;
                }
              }

              v23 = 0.0;
LABEL_15:
              [v21 setDecay:v23 / 0.7];
              goto LABEL_16;
            }

LABEL_17:
            [indexSet addIndexesInRange:{0, effectiveStartIndexBasedOnLength}];
            nonSentinelPoints4 = [v11 nonSentinelPoints];
            [nonSentinelPoints4 removeObjectsAtIndexes:indexSet];
          }

          else
          {
            _currentPath = [(TUIKeyboardPathEffectView *)self _currentPath];

            if (v11 != _currentPath)
            {
              [v28 addObject:v11];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v8);
    }

    paths2 = [(TUIKeyboardPathEffectView *)self paths];
    allObjects = [v28 allObjects];
    [paths2 removeObjectsInArray:allObjects];

    [(TUIKeyboardPathEffectView *)self setNeedsDisplay];
  }

  else
  {
    obja = [(TUIKeyboardPathEffectView *)self renderer];
    [obja setPaused:1];
  }
}

- (id)_currentPath
{
  paths = [(TUIKeyboardPathEffectView *)self paths];
  lastObject = [paths lastObject];

  return lastObject;
}

- (id)_pushNewPath
{
  v3 = objc_alloc_init(_TUIPointQueue);
  paths = [(TUIKeyboardPathEffectView *)self paths];
  [paths addObject:v3];

  return v3;
}

- (void)didMoveToWindow
{
  renderer = [(TUIKeyboardPathEffectView *)self renderer];
  [renderer setPaused:1];
}

- (void)createMTKViewIfNecessary
{
  if (![(TUIKeyboardPathEffectView *)self createdMTKView])
  {
    _currentPath = [(TUIKeyboardPathEffectView *)self _currentPath];
    nonSentinelPoints = [_currentPath nonSentinelPoints];
    v5 = [nonSentinelPoints count];

    if (v5)
    {
      [(TUIKeyboardPathEffectView *)self setCreatedMTKView:1];
      v6 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__TUIKeyboardPathEffectView_createMTKViewIfNecessary__block_invoke;
      block[3] = &unk_1E72D83A0;
      block[4] = self;
      dispatch_async(v6, block);
    }
  }
}

void __53__TUIKeyboardPathEffectView_createMTKViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = MTLCreateSystemDefaultDevice();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__TUIKeyboardPathEffectView_createMTKViewIfNecessary__block_invoke_2;
  v4[3] = &unk_1E72D85E0;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __53__TUIKeyboardPathEffectView_createMTKViewIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974440]);
  [*(a1 + 32) bounds];
  v3 = [v2 initWithFrame:*(a1 + 40) device:?];
  [*(a1 + 32) setMtkView:v3];

  v4 = [*(a1 + 32) mtkView];
  v5 = [v4 layer];
  [v5 setOpaque:0];

  v6 = *(a1 + 32);
  v7 = [v6 mtkView];
  [v6 addSubview:v7];

  v8 = [TUIKeyboardPathRenderer alloc];
  v9 = [*(a1 + 32) mtkView];
  v10 = [(TUIKeyboardPathRenderer *)v8 initWithMTKView:v9 generatePipelineDescriptors:0];
  [*(a1 + 32) setRenderer:v10];

  v11 = *(a1 + 32);
  v12 = [v11 renderer];
  [v12 setDatasource:v11];
}

- (TUIKeyboardPathEffectView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = TUIKeyboardPathEffectView;
  v3 = [(TUIKeyboardPathEffectView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIKeyboardPathEffectView *)v3 setUserInteractionEnabled:0];
    layer = [(TUIKeyboardPathEffectView *)v4 layer];
    [layer setAllowsHitTesting:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TUIKeyboardPathEffectView *)v4 setBackgroundColor:clearColor];

    [(TUIKeyboardPathEffectView *)v4 setIncreasedContrastEnabled:UIAccessibilityDarkerSystemColorsEnabled()];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyboardPathEffectView *)v4 setPaths:v7];

    objc_initWeak(&location, v4);
    v8 = [[TUIKBHandwritingQuadCurvePointFIFO alloc] initWithFIFO:0 scale:1.0];
    [(TUIKeyboardPathEffectView *)v4 setPointInterpolator:v8];

    v13 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v14, &location);
    v9 = [(TUIKeyboardPathEffectView *)v4 pointInterpolator:v13];
    [v9 setEmissionHandler:&v13];

    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [(TUIKeyboardPathEffectView *)v4 setPointDecayQueue:v10];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_accessibilityValueChanged_ name:*MEMORY[0x1E69DD8B8] object:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __43__TUIKeyboardPathEffectView_initWithFrame___block_invoke(uint64_t a1, void *a2)
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

        [*(*(&v15 + 1) + 8 * v7) TUIKBHandwritingPointValue];
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

@end