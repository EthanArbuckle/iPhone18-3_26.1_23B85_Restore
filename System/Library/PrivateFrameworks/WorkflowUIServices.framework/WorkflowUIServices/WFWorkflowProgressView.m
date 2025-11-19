@interface WFWorkflowProgressView
- (WFWorkflowProgressView)initWithFrame:(CGRect)a3;
- (void)beginBreatheAnimation;
- (void)endBreatheAnimation;
- (void)layoutSubviews;
- (void)setFractionCompleted:(double)a3;
- (void)setProgressStrokeWidth:(double)a3;
- (void)setResolvedTintColor:(id)a3;
- (void)setStopSize:(double)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionCompletedLayerToVisible:(BOOL)a3 animated:(BOOL)a4 haptic:(BOOL)a5;
- (void)transitionRunningLayerToVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)transitionToState:(int64_t)a3;
- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4;
- (void)updatePaths;
@end

@implementation WFWorkflowProgressView

- (void)endBreatheAnimation
{
  v3 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [v3 removeAnimationForKey:@"breathe.scale"];

  v4 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [v4 removeAnimationForKey:@"breathe.opacity"];
}

- (void)beginBreatheAnimation
{
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
  [v11 setFromValue:&unk_1F4819A78];
  [v11 setToValue:&unk_1F4819A88];
  [v11 setDuration:0.9];
  [v11 setAutoreverses:1];
  LODWORD(v3) = 2139095040;
  [v11 setRepeatCount:v3];
  v4 = *MEMORY[0x1E6979EB8];
  v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v11 setTimingFunction:v5];

  v6 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [v6 addAnimation:v11 forKey:@"breathe.scale"];

  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v7 setFromValue:&unk_1F4819A78];
  [v7 setToValue:&unk_1F4819A98];
  [v7 setDuration:0.9];
  [v7 setAutoreverses:1];
  LODWORD(v8) = 2139095040;
  [v7 setRepeatCount:v8];
  v9 = [MEMORY[0x1E69793D0] functionWithName:v4];
  [v7 setTimingFunction:v9];

  v10 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [v10 addAnimation:v7 forKey:@"breathe.opacity"];
}

- (void)transitionCompletedLayerToVisible:(BOOL)a3 animated:(BOOL)a4 haptic:(BOOL)a5
{
  if (a3)
  {
    if (a4)
    {
      v6 = a5;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke;
      v14[3] = &unk_1E83086B0;
      v14[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:1 response:v14 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
      v7 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_2;
      block[3] = &unk_1E83086B0;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], block);
      if (v6)
      {
        v8 = [(WFWorkflowProgressView *)self feedbackGenerator];
        [v8 impactOccurred];
      }

      return;
    }

    v9 = [(WFWorkflowProgressView *)self checkmarkImageView];
    [v9 setAlpha:{1.0, v9}];
  }

  else
  {
    if (a4)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_4;
      v12[3] = &unk_1E83086B0;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:{a4, a5, 0.200000003}];
      return;
    }

    v11 = [(WFWorkflowProgressView *)self checkmarkImageView];
    [v11 setAlpha:{0.0, v11}];
  }
}

void __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) checkmarkImageView];
  [v2 setAlpha:1.0];

  CATransform3DMakeScale(&v5, 1.20000005, 1.20000005, 0.0);
  v3 = [*(a1 + 32) layer];
  v4 = v5;
  [v3 setTransform:&v4];
}

uint64_t __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_3;
  v2[3] = &unk_1E83086B0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:1 response:v2 tracking:0 dampingRatioSmoothing:0.55 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

void __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) checkmarkImageView];
  [v1 setAlpha:0.0];
}

void __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  v2 = *(MEMORY[0x1E69792E8] + 80);
  v6[4] = *(MEMORY[0x1E69792E8] + 64);
  v6[5] = v2;
  v3 = *(MEMORY[0x1E69792E8] + 112);
  v6[6] = *(MEMORY[0x1E69792E8] + 96);
  v6[7] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 16);
  v6[0] = *MEMORY[0x1E69792E8];
  v6[1] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 48);
  v6[2] = *(MEMORY[0x1E69792E8] + 32);
  v6[3] = v5;
  [v1 setTransform:v6];
}

- (void)transitionRunningLayerToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (!a3)
  {
    v13 = [(WFWorkflowProgressView *)self stopGlyphLayer];
    [v13 setOpacity:0.0];

    v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v14 = [(WFWorkflowProgressView *)self runningContainerLayer];
    v15 = [v14 presentationLayer];
    v16 = [v15 valueForKeyPath:@"opacity"];
    [v20 setFromValue:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v20 setToValue:v17];

    [v20 setDuration:0.200000003];
    v18 = [(WFWorkflowProgressView *)self runningContainerLayer];
    [v18 setOpacity:0.0];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v6 = [(WFWorkflowProgressView *)self runningContainerLayer];
  v7 = [v6 presentationLayer];
  v8 = [v7 valueForKeyPath:@"opacity"];
  [v20 setFromValue:v8];

  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v20 setToValue:v10];

  [v20 setDuration:0.200000003];
  v11 = [(WFWorkflowProgressView *)self runningContainerLayer];
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];

  if (v4)
  {
LABEL_5:
    v19 = [(WFWorkflowProgressView *)self runningContainerLayer];
    [v19 addAnimation:v20 forKey:0];
  }

LABEL_6:
}

- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(WFWorkflowProgressView *)self currentState]!= a3)
  {
    [(WFWorkflowProgressView *)self transitionRunningLayerToVisible:a3 == 0 animated:v4];
    [(WFWorkflowProgressView *)self transitionCompletedLayerToVisible:a3 != 0 animated:v4 haptic:1];
    self->_currentState = a3;
  }
}

- (void)transitionToState:(int64_t)a3
{
  [(WFWorkflowProgressView *)self transitionToState:a3 animated:1];
  if (a3)
  {

    [(WFWorkflowProgressView *)self endBreatheAnimation];
  }

  else
  {
    v5 = [(WFWorkflowProgressView *)self stopGlyphLayer];
    v6 = [v5 animationKeys];
    v7 = [v6 count];

    if (!v7)
    {

      [(WFWorkflowProgressView *)self beginBreatheAnimation];
    }
  }
}

- (void)updatePaths
{
  [(WFWorkflowProgressView *)self fractionCompleted];
  v4 = v3;
  v25 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  v5 = [(WFWorkflowProgressView *)self backgroundCircleLayer];
  v6 = [(WFWorkflowProgressView *)self partialRingLayer];
  [(WFWorkflowProgressView *)self stopSize];
  v8 = v7;
  [v25 setBounds:{0.0, 0.0, v8, v8}];
  [v25 setCornerRadius:v8 * *MEMORY[0x1E69E0FE0]];
  [v25 setCornerCurve:*MEMORY[0x1E69796E8]];
  [(WFWorkflowProgressView *)self bounds];
  MidX = CGRectGetMidX(v27);
  [(WFWorkflowProgressView *)self bounds];
  [v25 setPosition:{MidX, CGRectGetMidY(v28)}];
  v10 = [(WFWorkflowProgressView *)self resolvedTintColor];
  [v25 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];

  [(WFWorkflowProgressView *)self bounds];
  [v5 setFrame:?];
  [(WFWorkflowProgressView *)self bounds];
  [v5 setCornerRadius:v11 * 0.5];
  v12 = [(WFWorkflowProgressView *)self resolvedTintColor];
  v13 = [v12 colorWithAlphaComponent:0.100000001];
  [v5 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];

  [(WFWorkflowProgressView *)self progressStrokeWidth];
  v15 = v14;
  [(WFWorkflowProgressView *)self bounds];
  v30 = CGRectInset(v29, v15 + v15, v15 + v15);
  [v6 setFrame:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
  [(WFWorkflowProgressView *)self bounds];
  v17 = v16;
  [(WFWorkflowProgressView *)self bounds];
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = (v19 - v15) * 0.5;
  [v6 bounds];
  v21 = CGRectGetMidX(v31);
  [v6 bounds];
  v22 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v21 startAngle:CGRectGetMidY(v32) endAngle:v20 clockwise:{-1.57079633, 4.71238898}];
  [v6 setPath:{objc_msgSend(v22, "CGPath")}];

  v23 = [(WFWorkflowProgressView *)self resolvedTintColor];
  [v6 setStrokeColor:{objc_msgSend(v23, "CGColor")}];

  [v6 setLineWidth:v15];
  v24 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setFillColor:{objc_msgSend(v24, "CGColor")}];

  [v6 setLineCap:*MEMORY[0x1E6979E78]];
  [v6 setStrokeEnd:v4];
}

- (void)setResolvedTintColor:(id)a3
{
  objc_storeStrong(&self->_resolvedTintColor, a3);
  v5 = a3;
  [(WFWorkflowProgressView *)self updatePaths];
  v6 = [(WFWorkflowProgressView *)self checkmarkImageView];
  [v6 setTintColor:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = WFWorkflowProgressView;
  v4 = a3;
  [(WFWorkflowProgressView *)&v11 traitCollectionDidChange:v4];
  v5 = [(WFWorkflowProgressView *)self traitCollection:v11.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(WFWorkflowProgressView *)self tintColor];
    v9 = [(WFWorkflowProgressView *)self traitCollection];
    v10 = [v8 resolvedColorWithTraitCollection:v9];
    [(WFWorkflowProgressView *)self setResolvedTintColor:v10];
  }
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = WFWorkflowProgressView;
  [(WFWorkflowProgressView *)&v6 tintColorDidChange];
  v3 = [(WFWorkflowProgressView *)self tintColor];
  v4 = [(WFWorkflowProgressView *)self traitCollection];
  v5 = [v3 resolvedColorWithTraitCollection:v4];
  [(WFWorkflowProgressView *)self setResolvedTintColor:v5];
}

- (void)setProgressStrokeWidth:(double)a3
{
  if (self->_progressStrokeWidth != a3)
  {
    self->_progressStrokeWidth = a3;
    [(WFWorkflowProgressView *)self updatePaths];
  }
}

- (void)setStopSize:(double)a3
{
  if (self->_stopSize != a3)
  {
    self->_stopSize = a3;
    [(WFWorkflowProgressView *)self updatePaths];
  }
}

- (void)setFractionCompleted:(double)a3
{
  fractionCompleted = self->_fractionCompleted;
  if (fractionCompleted != a3)
  {
    if (fractionCompleted > a3)
    {
      a3 = self->_fractionCompleted;
    }

    self->_fractionCompleted = a3;
    [(WFWorkflowProgressView *)self updatePaths];
  }
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = WFWorkflowProgressView;
  [(WFWorkflowProgressView *)&v25 layoutSubviews];
  [(WFWorkflowProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WFWorkflowProgressView *)self runningContainerLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(WFWorkflowProgressView *)self bounds];
  v12 = [(WFWorkflowProgressView *)self traitCollection];
  [v12 displayScale];
  BSFloatRoundForScale();
  v14 = v13;

  [(WFWorkflowProgressView *)self bounds];
  v16 = v14 + v15;
  v18 = v14 + v17;
  v19 = v14 + v14;
  v21 = v20 - (v14 + v14);
  v23 = v22 - v19;
  v24 = [(WFWorkflowProgressView *)self checkmarkImageView];
  [v24 setFrame:{v16, v18, v21, v23}];

  [(WFWorkflowProgressView *)self updatePaths];
}

- (WFWorkflowProgressView)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = WFWorkflowProgressView;
  v3 = [(WFWorkflowProgressView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_stopSize = 8.0;
    v3->_progressStrokeWidth = 2.0;
    v5 = [MEMORY[0x1E6979398] layer];
    v6 = [(WFWorkflowProgressView *)v4 layer];
    [v6 addSublayer:v5];

    runningContainerLayer = v4->_runningContainerLayer;
    v4->_runningContainerLayer = v5;
    v8 = v5;

    v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CAShapeLayer *)v9 setAllowsGroupBlending:0];
    v10 = *MEMORY[0x1E6979CF8];
    [(CAShapeLayer *)v9 setCompositingFilter:*MEMORY[0x1E6979CF8]];
    v11 = [(WFWorkflowProgressView *)v4 layer];
    [v11 addSublayer:v9];

    backgroundCircleLayer = v4->_backgroundCircleLayer;
    v4->_backgroundCircleLayer = v9;
    v13 = v9;

    v14 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CAShapeLayer *)v14 setAllowsGroupBlending:0];
    [(CAShapeLayer *)v14 setCompositingFilter:v10];
    [(CALayer *)v8 addSublayer:v14];
    partialRingLayer = v4->_partialRingLayer;
    v4->_partialRingLayer = v14;
    v16 = v14;

    v17 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CAShapeLayer *)v17 setAllowsGroupBlending:0];
    [(CAShapeLayer *)v17 setCompositingFilter:v10];
    [(CALayer *)v8 addSublayer:v17];
    stopGlyphLayer = v4->_stopGlyphLayer;
    v4->_stopGlyphLayer = v17;
    v19 = v17;

    v20 = MEMORY[0x1E69DCAD8];
    v21 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
    v22 = [v20 configurationWithFont:v21];

    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v22];
    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v23];
    [(UIImageView *)v24 setAlpha:0.0];
    [(WFWorkflowProgressView *)v4 addSubview:v24];
    checkmarkImageView = v4->_checkmarkImageView;
    v4->_checkmarkImageView = v24;
    v26 = v24;

    v27 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:3];
    feedbackGenerator = v4->_feedbackGenerator;
    v4->_feedbackGenerator = v27;

    [(WFWorkflowProgressView *)v4 updatePaths];
    v29 = v4;
  }

  return v4;
}

@end