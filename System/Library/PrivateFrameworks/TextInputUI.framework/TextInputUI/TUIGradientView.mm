@interface TUIGradientView
- (CGPoint)_gradientEndPoint:(BOOL)point;
- (CGPoint)_gradientStartPoint:(BOOL)point;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)runAnimationCount:(int64_t)count duration:(double)duration;
- (void)setColors:(id)colors;
- (void)setLightConfiguration:(id)configuration;
@end

@implementation TUIGradientView

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  if (finishedCopy)
  {
    v11 = stopCopy;
    startPointAnimation = [(TUIGradientView *)self startPointAnimation];

    if (startPointAnimation == v11)
    {
      gradientLayer = [(TUIGradientView *)self gradientLayer];
      [gradientLayer removeAnimationForKey:@"startPoint.x"];

      [(TUIGradientView *)self setStartPointAnimation:0];
    }

    else
    {
      endPointAnimation = [(TUIGradientView *)self endPointAnimation];

      stopCopy = v11;
      if (endPointAnimation != v11)
      {
        goto LABEL_7;
      }

      gradientLayer2 = [(TUIGradientView *)self gradientLayer];
      [gradientLayer2 removeAnimationForKey:@"endPoint.x"];

      [(TUIGradientView *)self setEndPointAnimation:0];
    }

    stopCopy = v11;
  }

LABEL_7:
}

- (void)runAnimationCount:(int64_t)count duration:(double)duration
{
  startPointAnimation = [(TUIGradientView *)self startPointAnimation];
  if (startPointAnimation)
  {
  }

  else
  {
    endPointAnimation = [(TUIGradientView *)self endPointAnimation];

    if (!endPointAnimation)
    {
      goto LABEL_5;
    }
  }

  gradientLayer = [(TUIGradientView *)self gradientLayer];
  [gradientLayer removeAllAnimations];

LABEL_5:
  lightConfiguration = [(TUIGradientView *)self lightConfiguration];

  if (lightConfiguration)
  {
    [(_UIDirectionalLightConfiguration *)self->_lightConfiguration duration];
    duration = v11;
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
  gradientLayer2 = [(TUIGradientView *)self gradientLayer];
  [gradientLayer2 setStartPoint:{v13, v15}];

  gradientLayer3 = [(TUIGradientView *)self gradientLayer];
  [gradientLayer3 setEndPoint:{v19, v21}];

  v36 = [MEMORY[0x1E6979318] animationWithKeyPath:@"startPoint.x"];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [v36 setFromValue:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v36 setToValue:v27];

  [v36 setDuration:duration];
  *&v17 = count;
  *&v28 = count;
  [v36 setRepeatCount:v28];
  v29 = *MEMORY[0x1E69797E8];
  [v36 setFillMode:*MEMORY[0x1E69797E8]];
  [v36 setRemovedOnCompletion:0];
  [(TUIGradientView *)self setStartPointAnimation:v36];
  gradientLayer4 = [(TUIGradientView *)self gradientLayer];
  [gradientLayer4 addAnimation:v36 forKey:@"startPoint.x"];

  v31 = [MEMORY[0x1E6979318] animationWithKeyPath:@"endPoint.x"];
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [v31 setFromValue:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  [v31 setToValue:v33];

  [v31 setDuration:duration];
  LODWORD(v34) = LODWORD(v17);
  [v31 setRepeatCount:v34];
  [v31 setFillMode:v29];
  [v31 setRemovedOnCompletion:0];
  [(TUIGradientView *)self setEndPointAnimation:v31];
  gradientLayer5 = [(TUIGradientView *)self gradientLayer];
  [gradientLayer5 addAnimation:v31 forKey:@"endPoint.x"];
}

- (CGPoint)_gradientEndPoint:(BOOL)point
{
  pointCopy = point;
  traitCollection = [(TUIGradientView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v6 = -1.0;
  if (layoutDirection == 1)
  {
    v6 = 2.0;
  }

  v7 = 1.0;
  if (layoutDirection == 1)
  {
    v7 = 0.0;
  }

  if (!pointCopy)
  {
    v6 = v7;
  }

  v8 = 0.0;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)_gradientStartPoint:(BOOL)point
{
  pointCopy = point;
  traitCollection = [(TUIGradientView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v6 = 0.0;
  if (layoutDirection == 1)
  {
    v6 = 1.0;
  }

  v7 = 2.0;
  if (layoutDirection == 1)
  {
    v7 = -1.0;
  }

  if (!pointCopy)
  {
    v6 = v7;
  }

  v8 = 0.0;
  result.y = v8;
  result.x = v6;
  return result;
}

- (void)setColors:(id)colors
{
  v29 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(colorsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = colorsCopy;
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

  gradientLayer = [(TUIGradientView *)self gradientLayer];
  [gradientLayer setColors:v5];

  [(TUIGradientView *)self _gradientStartPoint:1];
  v15 = v14;
  v17 = v16;
  gradientLayer2 = [(TUIGradientView *)self gradientLayer];
  [gradientLayer2 setStartPoint:{v15, v17}];

  [(TUIGradientView *)self _gradientEndPoint:1];
  v20 = v19;
  v22 = v21;
  gradientLayer3 = [(TUIGradientView *)self gradientLayer];
  [gradientLayer3 setEndPoint:{v20, v22}];
}

- (void)setLightConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_lightConfiguration, configuration);
  if (configurationCopy)
  {
    colorPalette = [configurationCopy colorPalette];
    colors = [colorPalette colors];
    [(TUIGradientView *)self setColors:colors];

    colorPalette2 = [configurationCopy colorPalette];
    locations = [colorPalette2 locations];
    gradientLayer = [(TUIGradientView *)self gradientLayer];
    [gradientLayer setLocations:locations];
  }

  else
  {
    gradientLayer2 = [(TUIGradientView *)self gradientLayer];
    [gradientLayer2 setColors:0];

    colorPalette2 = [(TUIGradientView *)self gradientLayer];
    [colorPalette2 setLocations:0];
  }
}

@end