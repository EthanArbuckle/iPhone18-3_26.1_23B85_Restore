@interface TUIGradientView
- (CGPoint)_gradientEndPoint:(BOOL)a3;
- (CGPoint)_gradientStartPoint:(BOOL)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)runAnimationCount:(int64_t)a3 duration:(double)a4;
- (void)setColors:(id)a3;
- (void)setLightConfiguration:(id)a3;
@end

@implementation TUIGradientView

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v11 = v6;
    v7 = [(TUIGradientView *)self startPointAnimation];

    if (v7 == v11)
    {
      v10 = [(TUIGradientView *)self gradientLayer];
      [v10 removeAnimationForKey:@"startPoint.x"];

      [(TUIGradientView *)self setStartPointAnimation:0];
    }

    else
    {
      v8 = [(TUIGradientView *)self endPointAnimation];

      v6 = v11;
      if (v8 != v11)
      {
        goto LABEL_7;
      }

      v9 = [(TUIGradientView *)self gradientLayer];
      [v9 removeAnimationForKey:@"endPoint.x"];

      [(TUIGradientView *)self setEndPointAnimation:0];
    }

    v6 = v11;
  }

LABEL_7:
}

- (void)runAnimationCount:(int64_t)a3 duration:(double)a4
{
  v7 = [(TUIGradientView *)self startPointAnimation];
  if (v7)
  {
  }

  else
  {
    v8 = [(TUIGradientView *)self endPointAnimation];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v9 = [(TUIGradientView *)self gradientLayer];
  [v9 removeAllAnimations];

LABEL_5:
  v10 = [(TUIGradientView *)self lightConfiguration];

  if (v10)
  {
    [(_UIDirectionalLightConfiguration *)self->_lightConfiguration duration];
    a4 = v11;
  }

  [(TUIGradientView *)self _gradientStartPoint:1];
  v13 = v12;
  v15 = v14;
  [(TUIGradientView *)self _gradientStartPoint:0];
  v17 = v16;
  [(TUIGradientView *)self _gradientEndPoint:1];
  v19 = v18;
  v21 = v20;
  [(TUIGradientView *)self _gradientEndPoint:0];
  v23 = v22;
  v24 = [(TUIGradientView *)self gradientLayer];
  [v24 setStartPoint:{v13, v15}];

  v25 = [(TUIGradientView *)self gradientLayer];
  [v25 setEndPoint:{v19, v21}];

  v36 = [MEMORY[0x1E6979318] animationWithKeyPath:@"startPoint.x"];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [v36 setFromValue:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v36 setToValue:v27];

  [v36 setDuration:a4];
  *&v17 = a3;
  *&v28 = a3;
  [v36 setRepeatCount:v28];
  v29 = *MEMORY[0x1E69797E8];
  [v36 setFillMode:*MEMORY[0x1E69797E8]];
  [v36 setRemovedOnCompletion:0];
  [(TUIGradientView *)self setStartPointAnimation:v36];
  v30 = [(TUIGradientView *)self gradientLayer];
  [v30 addAnimation:v36 forKey:@"startPoint.x"];

  v31 = [MEMORY[0x1E6979318] animationWithKeyPath:@"endPoint.x"];
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [v31 setFromValue:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  [v31 setToValue:v33];

  [v31 setDuration:a4];
  LODWORD(v34) = LODWORD(v17);
  [v31 setRepeatCount:v34];
  [v31 setFillMode:v29];
  [v31 setRemovedOnCompletion:0];
  [(TUIGradientView *)self setEndPointAnimation:v31];
  v35 = [(TUIGradientView *)self gradientLayer];
  [v35 addAnimation:v31 forKey:@"endPoint.x"];
}

- (CGPoint)_gradientEndPoint:(BOOL)a3
{
  v3 = a3;
  v4 = [(TUIGradientView *)self traitCollection];
  v5 = [v4 layoutDirection];

  v6 = -1.0;
  if (v5 == 1)
  {
    v6 = 2.0;
  }

  v7 = 1.0;
  if (v5 == 1)
  {
    v7 = 0.0;
  }

  if (!v3)
  {
    v6 = v7;
  }

  v8 = 0.0;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)_gradientStartPoint:(BOOL)a3
{
  v3 = a3;
  v4 = [(TUIGradientView *)self traitCollection];
  v5 = [v4 layoutDirection];

  v6 = 0.0;
  if (v5 == 1)
  {
    v6 = 1.0;
  }

  v7 = 2.0;
  if (v5 == 1)
  {
    v7 = -1.0;
  }

  if (!v3)
  {
    v6 = v7;
  }

  v8 = 0.0;
  result.y = v8;
  result.x = v6;
  return result;
}

- (void)setColors:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = CGColorRetain([v11 CGColor]);
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v13 = [(TUIGradientView *)self gradientLayer];
  [v13 setColors:v5];

  [(TUIGradientView *)self _gradientStartPoint:1];
  v15 = v14;
  v17 = v16;
  v18 = [(TUIGradientView *)self gradientLayer];
  [v18 setStartPoint:{v15, v17}];

  [(TUIGradientView *)self _gradientEndPoint:1];
  v20 = v19;
  v22 = v21;
  v23 = [(TUIGradientView *)self gradientLayer];
  [v23 setEndPoint:{v20, v22}];
}

- (void)setLightConfiguration:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_lightConfiguration, a3);
  if (v11)
  {
    v5 = [v11 colorPalette];
    v6 = [v5 colors];
    [(TUIGradientView *)self setColors:v6];

    v7 = [v11 colorPalette];
    v8 = [v7 locations];
    v9 = [(TUIGradientView *)self gradientLayer];
    [v9 setLocations:v8];
  }

  else
  {
    v10 = [(TUIGradientView *)self gradientLayer];
    [v10 setColors:0];

    v7 = [(TUIGradientView *)self gradientLayer];
    [v7 setLocations:0];
  }
}

@end