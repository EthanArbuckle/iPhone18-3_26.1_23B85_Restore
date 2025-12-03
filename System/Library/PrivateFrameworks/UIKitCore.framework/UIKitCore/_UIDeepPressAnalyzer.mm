@interface _UIDeepPressAnalyzer
- (BOOL)isDeepPressLikely;
- (_UIDeepPressAnalyzer)init;
- (double)_touchForceFromTouches:(id)touches;
- (void)analyzeTouchForce:(double)force centroidAtLocation:(CGPoint)location;
- (void)analyzeTouches:(id)touches;
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

- (void)analyzeTouches:(id)touches
{
  touchesCopy = touches;
  [(_UIDeepPressAnalyzer *)self _touchForceFromTouches:touchesCopy];
  v6 = v5;
  v7 = _CentroidOfTouches(touchesCopy, 0);
  v9 = v8;

  [(_UIDeepPressAnalyzer *)self analyzeTouchForce:v6 centroidAtLocation:v7, v9];
}

- (void)analyzeTouchForce:(double)force centroidAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7 = force * 10.0;
  touchForceIntegrator = [(_UIDeepPressAnalyzer *)self touchForceIntegrator];
  [touchForceIntegrator addSample:{v7, v7}];

  locationIntegrator = [(_UIDeepPressAnalyzer *)self locationIntegrator];
  [locationIntegrator addSample:{x, y}];
}

- (BOOL)isDeepPressLikely
{
  locationIntegrator = [(_UIDeepPressAnalyzer *)self locationIntegrator];
  [locationIntegrator velocity];
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

  touchForceIntegrator = [(_UIDeepPressAnalyzer *)self touchForceIntegrator];
  [touchForceIntegrator velocity];
  v13 = v12;

  return v13 > 0.0 && v10 < 10.0;
}

- (double)_touchForceFromTouches:(id)touches
{
  v17 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  if ([touchesCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = touchesCopy;
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