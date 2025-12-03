@interface _UICircleProgressView
- (BOOL)showProgressTray;
- (UIColor)progressColor;
- (_UICircleProgressView)initWithFrame:(CGRect)frame;
- (double)progress;
- (double)progressLineWidth;
- (double)progressPresentationValue;
- (int64_t)progressStartPoint;
- (void)animateProgressCompletedWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)setProgress:(double)progress animated:(BOOL)animated forced:(BOOL)forced completion:(id)completion;
- (void)setProgressColor:(id)color;
- (void)setProgressLineWidth:(double)width;
- (void)setProgressStartPoint:(int64_t)point;
- (void)setShowProgressTray:(BOOL)tray;
@end

@implementation _UICircleProgressView

- (_UICircleProgressView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UICircleProgressView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    layer = [(UIView *)v3 layer];
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    [layer setContentsScale:?];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UICircleProgressView;
  [(UIView *)&v2 layoutSubviews];
}

- (void)setProgressStartPoint:(int64_t)point
{
  layer = [(UIView *)self layer];
  [layer setProgressStartPoint:point];
}

- (int64_t)progressStartPoint
{
  layer = [(UIView *)self layer];
  progressStartPoint = [layer progressStartPoint];

  return progressStartPoint;
}

- (void)setProgressColor:(id)color
{
  colorCopy = color;
  layer = [(UIView *)self layer];
  [layer setProgressColor:colorCopy];
}

- (UIColor)progressColor
{
  layer = [(UIView *)self layer];
  progressColor = [layer progressColor];

  return progressColor;
}

- (void)setProgressLineWidth:(double)width
{
  layer = [(UIView *)self layer];
  [layer setProgressLineWidth:width];
}

- (double)progressLineWidth
{
  layer = [(UIView *)self layer];
  [layer progressLineWidth];
  v4 = v3;

  return v4;
}

- (void)setShowProgressTray:(BOOL)tray
{
  trayCopy = tray;
  layer = [(UIView *)self layer];
  [layer setShowProgressTray:trayCopy];
}

- (BOOL)showProgressTray
{
  layer = [(UIView *)self layer];
  showProgressTray = [layer showProgressTray];

  return showProgressTray;
}

- (double)progress
{
  layer = [(UIView *)self layer];
  [layer progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)progress
{
  layer = [(UIView *)self layer];
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
    v11 = &__block_literal_global_162;
  }

  layer = [(UIView *)self layer];
  [layer progress];
  v14 = v13;

  if (v14 == progress && !forcedCopy)
  {
    goto LABEL_13;
  }

  if (!animatedCopy)
  {
    layer2 = [(UIView *)self layer];
    [layer2 removeAnimationForKey:@"SFCircleProgressViewAnimationKey"];

    [(_UICircleProgressView *)self setProgress:progress];
LABEL_13:
    v11[2](v11);
    goto LABEL_20;
  }

  [(_UICircleProgressView *)self progressPresentationValue];
  v17 = v16;
  v18 = vabdd_f64(progress, v16);
  v19 = 1.0;
  if (v18 <= 0.9)
  {
    if (v18 <= 0.5)
    {
      if (v18 > 0.2)
      {
        v19 = 0.5;
      }

      else
      {
        v19 = 0.25;
      }
    }

    else
    {
      v19 = 0.7;
    }
  }

  layer3 = [(UIView *)self layer];
  animationKeys = [layer3 animationKeys];
  v23 = [animationKeys containsObject:@"SFCircleProgressViewAnimationKey"];

  v24 = MEMORY[0x1E6979ED0];
  if (!v23)
  {
    v24 = MEMORY[0x1E6979EB8];
  }

  v25 = *v24;
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
  v32[2] = __64___UICircleProgressView_setProgress_animated_forced_completion___block_invoke_2;
  v32[3] = &unk_1E70F0F78;
  v33 = v11;
  [v30 setCompletionBlock:v32];
  [(_UICircleProgressView *)self setProgress:progress];
  layer4 = [(UIView *)self layer];
  [layer4 addAnimation:v26 forKey:@"SFCircleProgressViewAnimationKey"];

  [MEMORY[0x1E6979518] commit];
LABEL_20:
}

- (void)animateProgressCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_67_0;
  }

  v6 = completionCopy;
  [(_UICircleProgressView *)self progressPresentationValue];
  if (v5 == 1.0)
  {
    v6[2]();
  }

  else
  {
    [(_UICircleProgressView *)self setProgress:1 animated:1 forced:v6 completion:1.0];
  }
}

- (double)progressPresentationValue
{
  layer = [(UIView *)self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer progress];
  v5 = v4;

  return v5;
}

@end