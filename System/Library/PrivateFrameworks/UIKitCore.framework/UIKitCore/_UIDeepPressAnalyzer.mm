@interface _UIDeepPressAnalyzer
- (BOOL)isDeepPressLikely;
- (_UIDeepPressAnalyzer)init;
- (double)_touchForceFromTouches:(id)a3;
- (void)analyzeTouchForce:(double)a3 centroidAtLocation:(CGPoint)a4;
- (void)analyzeTouches:(id)a3;
@end

@implementation _UIDeepPressAnalyzer

- (_UIDeepPressAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = _UIDeepPressAnalyzer;
  v2 = [(_UIDeepPressAnalyzer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UIVelocityIntegrator);
    [(_UIDeepPressAnalyzer *)v2 setTouchForceIntegrator:v3];

    v4 = objc_alloc_init(_UIVelocityIntegrator);
    [(_UIDeepPressAnalyzer *)v2 setLocationIntegrator:v4];

    v5 = v2;
  }

  return v2;
}

- (void)analyzeTouches:(id)a3
{
  v4 = a3;
  [(_UIDeepPressAnalyzer *)self _touchForceFromTouches:v4];
  v6 = v5;
  v7 = _CentroidOfTouches(v4, 0);
  v9 = v8;

  [(_UIDeepPressAnalyzer *)self analyzeTouchForce:v6 centroidAtLocation:v7, v9];
}

- (void)analyzeTouchForce:(double)a3 centroidAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3 * 10.0;
  v8 = [(_UIDeepPressAnalyzer *)self touchForceIntegrator];
  [v8 addSample:{v7, v7}];

  v9 = [(_UIDeepPressAnalyzer *)self locationIntegrator];
  [v9 addSample:{x, y}];
}

- (BOOL)isDeepPressLikely
{
  v3 = [(_UIDeepPressAnalyzer *)self locationIntegrator];
  [v3 velocity];
  v5 = v4;
  v7 = v6;

  v8 = fabs(v7);
  v9 = fabs(v5);
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(_UIDeepPressAnalyzer *)self touchForceIntegrator];
  [v11 velocity];
  v13 = v12;

  return v13 > 0.0 && v10 < 10.0;
}

- (double)_touchForceFromTouches:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 = v8 + [(UITouch *)*(*(&v12 + 1) + 8 * i) _unclampedForce];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v10 = v8 / [v4 count];
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end