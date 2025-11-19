@interface TUIKeyboardPathEffectView
- ($01BB1521EC52D44A8E7628F5261DCEC8)_currentThemeSettings;
- (TUIKeyboardPathEffectView)initWithFrame:(CGRect)a3;
- (id)_currentPath;
- (id)_pushNewPath;
- (id)pathsToRender;
- (int64_t)keyboardAppearance;
- (void)_addDrawingPoint:(CGPoint)a3 force:(double)a4 sentinel:(BOOL)a5;
- (void)_clearPointInterpolators;
- (void)addPoint:(CGPoint)a3 force:(double)a4 timestamp:(double)a5;
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
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
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
  v2 = [MEMORY[0x1E69DCBE0] activeInstance];
  v3 = [v2 textInputTraits];
  v4 = [v3 keyboardAppearance];

  return v4;
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
  v3 = [(TUIKeyboardPathEffectView *)self _pushNewPath];
}

- (void)_clearPointInterpolators
{
  v2 = [(TUIKeyboardPathEffectView *)self pointInterpolator];
  [v2 clear];
}

- (void)addPoint:(CGPoint)a3 force:(double)a4 timestamp:(double)a5
{
  y = a3.y;
  x = a3.x;
  [(TUIKeyboardPathEffectView *)self createMTKViewIfNecessary:a3.x];
  v8 = [(TUIKeyboardPathEffectView *)self pointInterpolator];
  [v8 addPoint:{x, y, 1.0}];
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

  v11 = [(TUIKeyboardPathEffectView *)self _currentPath];
  if (!v11)
  {
    v11 = [(TUIKeyboardPathEffectView *)self _pushNewPath];
  }

  v21 = v11;
  v12 = [v11 nonSentinelPoints];
  v13 = [v12 lastObject];

  v14 = objc_alloc_init(_TUIPathPoint);
  [(_TUIPathPoint *)v14 setPoint:x, y];
  [(_TUIPathPoint *)v14 setForce:a4];
  [(_TUIPathPoint *)v14 setRelativeTime:Current - self->_startTime];
  [(_TUIPathPoint *)v14 setAbsoluteTime:Current];
  [(_TUIPathPoint *)v14 setSentinelPoint:v5];
  [(_TUIPathPoint *)v14 setLength:0.0];
  if (v13 && !v5)
  {
    [v13 point];
    v17 = hypot(x - v15, y - v16);
    [v13 length];
    [(_TUIPathPoint *)v14 setLength:v17 + v18];
  }

  if (!v5)
  {
    v19 = [v21 nonSentinelPoints];
    [v19 addObject:v14];
  }

  v20 = [(TUIKeyboardPathEffectView *)self renderer];
  [v20 setPaused:0];
}

- (void)updatePaths
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [(TUIKeyboardPathEffectView *)self paths];
  v3 = [v2 count];

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
          v12 = [v11 nonSentinelPoints];
          v13 = [v12 count];

          if (v13)
          {
            v14 = [v11 effectiveStartIndexBasedOnLength];
            Current = CFAbsoluteTimeGetCurrent();
            v16 = [MEMORY[0x1E696AD50] indexSet];
            v17 = [v11 nonSentinelPoints];
            v18 = [v17 count];

            v19 = v14;
            if (v14 < v18)
            {
              while (1)
              {
                v20 = [v11 nonSentinelPoints];
                v21 = [v20 objectAtIndex:v19];

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

                [v16 addIndex:v19];
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
            [v16 addIndexesInRange:{0, v14}];
            v24 = [v11 nonSentinelPoints];
            [v24 removeObjectsAtIndexes:v16];
          }

          else
          {
            v25 = [(TUIKeyboardPathEffectView *)self _currentPath];

            if (v11 != v25)
            {
              [v28 addObject:v11];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v8);
    }

    v26 = [(TUIKeyboardPathEffectView *)self paths];
    v27 = [v28 allObjects];
    [v26 removeObjectsInArray:v27];

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
  v2 = [(TUIKeyboardPathEffectView *)self paths];
  v3 = [v2 lastObject];

  return v3;
}

- (id)_pushNewPath
{
  v3 = objc_alloc_init(_TUIPointQueue);
  v4 = [(TUIKeyboardPathEffectView *)self paths];
  [v4 addObject:v3];

  return v3;
}

- (void)didMoveToWindow
{
  v2 = [(TUIKeyboardPathEffectView *)self renderer];
  [v2 setPaused:1];
}

- (void)createMTKViewIfNecessary
{
  if (![(TUIKeyboardPathEffectView *)self createdMTKView])
  {
    v3 = [(TUIKeyboardPathEffectView *)self _currentPath];
    v4 = [v3 nonSentinelPoints];
    v5 = [v4 count];

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

- (TUIKeyboardPathEffectView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = TUIKeyboardPathEffectView;
  v3 = [(TUIKeyboardPathEffectView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIKeyboardPathEffectView *)v3 setUserInteractionEnabled:0];
    v5 = [(TUIKeyboardPathEffectView *)v4 layer];
    [v5 setAllowsHitTesting:0];

    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(TUIKeyboardPathEffectView *)v4 setBackgroundColor:v6];

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

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v4 selector:sel_accessibilityValueChanged_ name:*MEMORY[0x1E69DD8B8] object:0];

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