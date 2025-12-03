@interface SFCircleProgressView
- (BOOL)showProgressTray;
- (BOOL)usesRoundedLineCap;
- (SFCircleProgressView)initWithFrame:(CGRect)frame;
- (UIColor)progressBackgroundColor;
- (UIColor)progressColor;
- (double)progress;
- (double)progressLineWidth;
- (double)progressPresentationValue;
- (int64_t)progressStartPoint;
- (void)animateProgressCompletedWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)setProgress:(double)progress animated:(BOOL)animated forced:(BOOL)forced completion:(id)completion;
- (void)setProgressBackgroundColor:(id)color;
- (void)setProgressColor:(id)color;
- (void)setProgressLineWidth:(double)width;
- (void)setProgressStartPoint:(int64_t)point;
- (void)setShowProgressTray:(BOOL)tray;
- (void)setUsesRoundedLineCap:(BOOL)cap;
@end

@implementation SFCircleProgressView

- (SFCircleProgressView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SFCircleProgressView;
  v3 = [(SFCircleProgressView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFCircleProgressView *)v3 setBackgroundColor:clearColor];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = v6;
    layer = [(SFCircleProgressView *)v3 layer];
    [layer setContentsScale:v7];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = SFCircleProgressView;
  [(SFCircleProgressView *)&v2 layoutSubviews];
}

- (void)setProgressStartPoint:(int64_t)point
{
  layer = [(SFCircleProgressView *)self layer];
  [layer setProgressStartPoint:point];
}

- (int64_t)progressStartPoint
{
  layer = [(SFCircleProgressView *)self layer];
  progressStartPoint = [layer progressStartPoint];

  return progressStartPoint;
}

- (void)setProgressColor:(id)color
{
  colorCopy = color;
  layer = [(SFCircleProgressView *)self layer];
  [layer setProgressColor:colorCopy];
}

- (UIColor)progressColor
{
  layer = [(SFCircleProgressView *)self layer];
  progressColor = [layer progressColor];

  return progressColor;
}

- (void)setProgressBackgroundColor:(id)color
{
  colorCopy = color;
  layer = [(SFCircleProgressView *)self layer];
  [layer setProgressBackgroundColor:colorCopy];
}

- (UIColor)progressBackgroundColor
{
  layer = [(SFCircleProgressView *)self layer];
  progressBackgroundColor = [layer progressBackgroundColor];

  return progressBackgroundColor;
}

- (void)setProgressLineWidth:(double)width
{
  layer = [(SFCircleProgressView *)self layer];
  [layer setProgressLineWidth:width];
}

- (double)progressLineWidth
{
  layer = [(SFCircleProgressView *)self layer];
  [layer progressLineWidth];
  v4 = v3;

  return v4;
}

- (void)setUsesRoundedLineCap:(BOOL)cap
{
  capCopy = cap;
  layer = [(SFCircleProgressView *)self layer];
  [layer setUsesRoundedLineCap:capCopy];
}

- (BOOL)usesRoundedLineCap
{
  layer = [(SFCircleProgressView *)self layer];
  usesRoundedLineCap = [layer usesRoundedLineCap];

  return usesRoundedLineCap;
}

- (void)setShowProgressTray:(BOOL)tray
{
  trayCopy = tray;
  layer = [(SFCircleProgressView *)self layer];
  [layer setShowProgressTray:trayCopy];
}

- (BOOL)showProgressTray
{
  layer = [(SFCircleProgressView *)self layer];
  showProgressTray = [layer showProgressTray];

  return showProgressTray;
}

- (double)progress
{
  layer = [(SFCircleProgressView *)self layer];
  [layer progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)progress
{
  layer = [(SFCircleProgressView *)self layer];
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
    v11 = &__block_literal_global_1;
  }

  layer = [(SFCircleProgressView *)self layer];
  [layer progress];
  v14 = v13;

  if (v14 == progress && !forcedCopy)
  {
    goto LABEL_13;
  }

  if (!animatedCopy)
  {
    layer2 = [(SFCircleProgressView *)self layer];
    [layer2 removeAnimationForKey:@"SFCircleProgressViewAnimationKey"];

    [(SFCircleProgressView *)self setProgress:progress];
LABEL_13:
    v11[2](v11);
    goto LABEL_21;
  }

  [(SFCircleProgressView *)self progressPresentationValue];
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

  layer3 = [(SFCircleProgressView *)self layer];
  animationKeys = [layer3 animationKeys];
  v23 = [animationKeys containsObject:@"SFCircleProgressViewAnimationKey"];

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
    v32[2] = __63__SFCircleProgressView_setProgress_animated_forced_completion___block_invoke_2;
    v32[3] = &unk_1E7EE3CE0;
    v33 = v11;
    [v30 setCompletionBlock:v32];
    layer4 = [(SFCircleProgressView *)self layer];
    [layer4 addAnimation:v26 forKey:@"SFCircleProgressViewAnimationKey"];

    [MEMORY[0x1E6979518] commit];
  }

  [(SFCircleProgressView *)self setProgress:progress];

LABEL_21:
}

- (void)animateProgressCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_205;
  }

  v6 = completionCopy;
  [(SFCircleProgressView *)self progressPresentationValue];
  if (v5 == 1.0)
  {
    v6[2]();
  }

  else
  {
    [(SFCircleProgressView *)self setProgress:1 animated:1 forced:v6 completion:1.0];
  }
}

- (double)progressPresentationValue
{
  layer = [(SFCircleProgressView *)self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer progress];
  v5 = v4;

  return v5;
}

@end