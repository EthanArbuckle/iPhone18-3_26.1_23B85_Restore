@interface _UIAirDropProgressView
- (BOOL)showProgressTray;
- (UIColor)progressBackgroundColor;
- (UIColor)progressColor;
- (_UIAirDropProgressView)initWithFrame:(CGRect)a3;
- (double)progress;
- (double)progressLineWidth;
- (double)progressPresentationValue;
- (void)animateProgressCompletedWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4 forced:(BOOL)a5 completion:(id)a6;
- (void)setProgressBackgroundColor:(id)a3;
- (void)setProgressColor:(id)a3;
- (void)setProgressLineWidth:(double)a3;
- (void)setShowProgressTray:(BOOL)a3;
@end

@implementation _UIAirDropProgressView

- (_UIAirDropProgressView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _UIAirDropProgressView;
  v3 = [(_UIAirDropProgressView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(_UIAirDropProgressView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 scale];
    v7 = v6;
    v8 = [(_UIAirDropProgressView *)v3 layer];
    [v8 setContentsScale:v7];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UIAirDropProgressView;
  [(_UIAirDropProgressView *)&v2 layoutSubviews];
}

- (void)setProgressColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIAirDropProgressView *)self layer];
  [v5 setProgressColor:v4];
}

- (UIColor)progressColor
{
  v2 = [(_UIAirDropProgressView *)self layer];
  v3 = [v2 progressColor];

  return v3;
}

- (void)setProgressBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIAirDropProgressView *)self layer];
  [v5 setProgressBackgroundColor:v4];
}

- (UIColor)progressBackgroundColor
{
  v2 = [(_UIAirDropProgressView *)self layer];
  v3 = [v2 progressBackgroundColor];

  return v3;
}

- (void)setProgressLineWidth:(double)a3
{
  v4 = [(_UIAirDropProgressView *)self layer];
  [v4 setProgressLineWidth:a3];
}

- (double)progressLineWidth
{
  v2 = [(_UIAirDropProgressView *)self layer];
  [v2 progressLineWidth];
  v4 = v3;

  return v4;
}

- (void)setShowProgressTray:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIAirDropProgressView *)self layer];
  [v4 setShowProgressTray:v3];
}

- (BOOL)showProgressTray
{
  v2 = [(_UIAirDropProgressView *)self layer];
  v3 = [v2 showProgressTray];

  return v3;
}

- (double)progress
{
  v2 = [(_UIAirDropProgressView *)self layer];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)a3
{
  v4 = [(_UIAirDropProgressView *)self layer];
  [v4 setProgress:a3];
}

- (void)setProgress:(double)a3 animated:(BOOL)a4 forced:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__block_literal_global_0;
  }

  v12 = [(_UIAirDropProgressView *)self layer];
  [v12 progress];
  v14 = v13;

  if (v14 == a3 && !v6)
  {
    goto LABEL_13;
  }

  if (!v7)
  {
    v20 = [(_UIAirDropProgressView *)self layer];
    [v20 removeAnimationForKey:@"_UIAirDropProgressViewAnimationKey"];

    [(_UIAirDropProgressView *)self setProgress:a3];
LABEL_13:
    v11[2](v11);
    goto LABEL_21;
  }

  [(_UIAirDropProgressView *)self progressPresentationValue];
  v17 = v16;
  v18 = vabdd_f64(a3, v16);
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

  v21 = [(_UIAirDropProgressView *)self layer];
  v22 = [v21 animationKeys];
  v23 = [v22 containsObject:@"_UIAirDropProgressViewAnimationKey"];

  v24 = MEMORY[0x1E6979ED0];
  if (!v23)
  {
    v24 = MEMORY[0x1E6979EB8];
  }

  v25 = *v24;
  if (v17 < a3)
  {
    v26 = [MEMORY[0x1E6979318] animationWithKeyPath:@"progress"];
    v27 = [MEMORY[0x1E69793D0] functionWithName:v25];
    [v26 setTimingFunction:v27];

    [v26 setDuration:v19];
    [v26 setFillMode:*MEMORY[0x1E69797D8]];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    [v26 setFromValue:v28];

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v26 setToValue:v29];

    [MEMORY[0x1E6979518] begin];
    v30 = MEMORY[0x1E6979518];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __65___UIAirDropProgressView_setProgress_animated_forced_completion___block_invoke_2;
    v32[3] = &unk_1E71F9360;
    v33 = v11;
    [v30 setCompletionBlock:v32];
    v31 = [(_UIAirDropProgressView *)self layer];
    [v31 addAnimation:v26 forKey:@"_UIAirDropProgressViewAnimationKey"];

    [MEMORY[0x1E6979518] commit];
  }

  [(_UIAirDropProgressView *)self setProgress:a3];

LABEL_21:
}

- (void)animateProgressCompletedWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = &__block_literal_global_59;
  }

  v6 = v4;
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
  v2 = [(_UIAirDropProgressView *)self layer];
  v3 = [v2 presentationLayer];
  [v3 progress];
  v5 = v4;

  return v5;
}

@end