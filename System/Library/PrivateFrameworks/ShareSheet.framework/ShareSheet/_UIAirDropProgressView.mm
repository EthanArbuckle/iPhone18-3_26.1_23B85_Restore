@interface _UIAirDropProgressView
- (BOOL)showProgressTray;
- (UIColor)progressBackgroundColor;
- (UIColor)progressColor;
- (_UIAirDropProgressView)initWithFrame:(CGRect)frame;
- (double)progress;
- (double)progressLineWidth;
- (double)progressPresentationValue;
- (void)animateProgressCompletedWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)setProgress:(double)progress animated:(BOOL)animated forced:(BOOL)forced completion:(id)completion;
- (void)setProgressBackgroundColor:(id)color;
- (void)setProgressColor:(id)color;
- (void)setProgressLineWidth:(double)width;
- (void)setShowProgressTray:(BOOL)tray;
@end

@implementation _UIAirDropProgressView

- (_UIAirDropProgressView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _UIAirDropProgressView;
  v3 = [(_UIAirDropProgressView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_UIAirDropProgressView *)v3 setBackgroundColor:clearColor];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = v6;
    layer = [(_UIAirDropProgressView *)v3 layer];
    [layer setContentsScale:v7];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UIAirDropProgressView;
  [(_UIAirDropProgressView *)&v2 layoutSubviews];
}

- (void)setProgressColor:(id)color
{
  colorCopy = color;
  layer = [(_UIAirDropProgressView *)self layer];
  [layer setProgressColor:colorCopy];
}

- (UIColor)progressColor
{
  layer = [(_UIAirDropProgressView *)self layer];
  progressColor = [layer progressColor];

  return progressColor;
}

- (void)setProgressBackgroundColor:(id)color
{
  colorCopy = color;
  layer = [(_UIAirDropProgressView *)self layer];
  [layer setProgressBackgroundColor:colorCopy];
}

- (UIColor)progressBackgroundColor
{
  layer = [(_UIAirDropProgressView *)self layer];
  progressBackgroundColor = [layer progressBackgroundColor];

  return progressBackgroundColor;
}

- (void)setProgressLineWidth:(double)width
{
  layer = [(_UIAirDropProgressView *)self layer];
  [layer setProgressLineWidth:width];
}

- (double)progressLineWidth
{
  layer = [(_UIAirDropProgressView *)self layer];
  [layer progressLineWidth];
  v4 = v3;

  return v4;
}

- (void)setShowProgressTray:(BOOL)tray
{
  trayCopy = tray;
  layer = [(_UIAirDropProgressView *)self layer];
  [layer setShowProgressTray:trayCopy];
}

- (BOOL)showProgressTray
{
  layer = [(_UIAirDropProgressView *)self layer];
  showProgressTray = [layer showProgressTray];

  return showProgressTray;
}

- (double)progress
{
  layer = [(_UIAirDropProgressView *)self layer];
  [layer progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)progress
{
  layer = [(_UIAirDropProgressView *)self layer];
  [layer setProgress:progress];
}

- (void)setProgress:(double)progress animated:(BOOL)animated forced:(BOOL)forced completion:(id)completion
{
  forcedCopy = forced;
  animatedCopy = animated;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
  }

  else
  {
    v11 = &__block_literal_global_0;
  }

  layer = [(_UIAirDropProgressView *)self layer];
  [layer progress];
  v14 = v13;

  if (v14 == progress && !forcedCopy)
  {
    goto LABEL_13;
  }

  if (!animatedCopy)
  {
    layer2 = [(_UIAirDropProgressView *)self layer];
    [layer2 removeAnimationForKey:@"_UIAirDropProgressViewAnimationKey"];

    [(_UIAirDropProgressView *)self setProgress:progress];
LABEL_13:
    v11[2](v11);
    goto LABEL_21;
  }

  [(_UIAirDropProgressView *)self progressPresentationValue];
  v17 = v16;
  v18 = vabdd_f64(progress, v16);
  v19 = 1.0;
  if (v18 <= 0.9)
  {
    if (v18 <= 0.5)
    {
      v19 = 0.25;
      if (v18 > 0.2)
      {
        v19 = 0.4;
      }
    }

    else
    {
      v19 = 0.7;
    }
  }

  layer3 = [(_UIAirDropProgressView *)self layer];
  animationKeys = [layer3 animationKeys];
  v23 = [animationKeys containsObject:@"_UIAirDropProgressViewAnimationKey"];

  v24 = MEMORY[0x1E6979ED0];
  if (!v23)
  {
    v24 = MEMORY[0x1E6979EB8];
  }

  v25 = *v24;
  if (v17 < progress)
  {
    v26 = [MEMORY[0x1E6979318] animationWithKeyPath:@"progress"];
    v27 = [MEMORY[0x1E69793D0] functionWithName:v25];
    [v26 setTimingFunction:v27];

    [v26 setDuration:v19];
    [v26 setFillMode:*MEMORY[0x1E69797D8]];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    [v26 setFromValue:v28];

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:progress];
    [v26 setToValue:v29];

    [MEMORY[0x1E6979518] begin];
    v30 = MEMORY[0x1E6979518];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __65___UIAirDropProgressView_setProgress_animated_forced_completion___block_invoke_2;
    v32[3] = &unk_1E71F9360;
    v33 = v11;
    [v30 setCompletionBlock:v32];
    layer4 = [(_UIAirDropProgressView *)self layer];
    [layer4 addAnimation:v26 forKey:@"_UIAirDropProgressViewAnimationKey"];

    [MEMORY[0x1E6979518] commit];
  }

  [(_UIAirDropProgressView *)self setProgress:progress];

LABEL_21:
}

- (void)animateProgressCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_59;
  }

  v6 = completionCopy;
  [(_UIAirDropProgressView *)self progressPresentationValue];
  if (v5 == 1.0)
  {
    v6[2]();
  }

  else
  {
    [(_UIAirDropProgressView *)self setProgress:1 animated:1 forced:v6 completion:1.0];
  }
}

- (double)progressPresentationValue
{
  layer = [(_UIAirDropProgressView *)self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer progress];
  v5 = v4;

  return v5;
}

@end