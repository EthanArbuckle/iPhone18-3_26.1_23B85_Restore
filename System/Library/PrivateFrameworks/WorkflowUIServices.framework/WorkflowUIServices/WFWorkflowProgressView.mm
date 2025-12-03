@interface WFWorkflowProgressView
- (WFWorkflowProgressView)initWithFrame:(CGRect)frame;
- (void)beginBreatheAnimation;
- (void)endBreatheAnimation;
- (void)layoutSubviews;
- (void)setFractionCompleted:(double)completed;
- (void)setProgressStrokeWidth:(double)width;
- (void)setResolvedTintColor:(id)color;
- (void)setStopSize:(double)size;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionCompletedLayerToVisible:(BOOL)visible animated:(BOOL)animated haptic:(BOOL)haptic;
- (void)transitionRunningLayerToVisible:(BOOL)visible animated:(BOOL)animated;
- (void)transitionToState:(int64_t)state;
- (void)transitionToState:(int64_t)state animated:(BOOL)animated;
- (void)updatePaths;
@end

@implementation WFWorkflowProgressView

- (void)endBreatheAnimation
{
  stopGlyphLayer = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [stopGlyphLayer removeAnimationForKey:@"breathe.scale"];

  stopGlyphLayer2 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [stopGlyphLayer2 removeAnimationForKey:@"breathe.opacity"];
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

  stopGlyphLayer = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [stopGlyphLayer addAnimation:v11 forKey:@"breathe.scale"];

  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v7 setFromValue:&unk_1F4819A78];
  [v7 setToValue:&unk_1F4819A98];
  [v7 setDuration:0.9];
  [v7 setAutoreverses:1];
  LODWORD(v8) = 2139095040;
  [v7 setRepeatCount:v8];
  v9 = [MEMORY[0x1E69793D0] functionWithName:v4];
  [v7 setTimingFunction:v9];

  stopGlyphLayer2 = [(WFWorkflowProgressView *)self stopGlyphLayer];
  [stopGlyphLayer2 addAnimation:v7 forKey:@"breathe.opacity"];
}

- (void)transitionCompletedLayerToVisible:(BOOL)visible animated:(BOOL)animated haptic:(BOOL)haptic
{
  if (visible)
  {
    if (animated)
    {
      hapticCopy = haptic;
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
      if (hapticCopy)
      {
        feedbackGenerator = [(WFWorkflowProgressView *)self feedbackGenerator];
        [feedbackGenerator impactOccurred];
      }

      return;
    }

    checkmarkImageView = [(WFWorkflowProgressView *)self checkmarkImageView];
    [checkmarkImageView setAlpha:{1.0, checkmarkImageView}];
  }

  else
  {
    if (animated)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __76__WFWorkflowProgressView_transitionCompletedLayerToVisible_animated_haptic___block_invoke_4;
      v12[3] = &unk_1E83086B0;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:{animated, haptic, 0.200000003}];
      return;
    }

    checkmarkImageView2 = [(WFWorkflowProgressView *)self checkmarkImageView];
    [checkmarkImageView2 setAlpha:{0.0, checkmarkImageView2}];
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

- (void)transitionRunningLayerToVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  if (!visible)
  {
    stopGlyphLayer = [(WFWorkflowProgressView *)self stopGlyphLayer];
    [stopGlyphLayer setOpacity:0.0];

    v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    runningContainerLayer = [(WFWorkflowProgressView *)self runningContainerLayer];
    presentationLayer = [runningContainerLayer presentationLayer];
    v16 = [presentationLayer valueForKeyPath:@"opacity"];
    [v20 setFromValue:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v20 setToValue:v17];

    [v20 setDuration:0.200000003];
    runningContainerLayer2 = [(WFWorkflowProgressView *)self runningContainerLayer];
    [runningContainerLayer2 setOpacity:0.0];

    if (!animatedCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  runningContainerLayer3 = [(WFWorkflowProgressView *)self runningContainerLayer];
  presentationLayer2 = [runningContainerLayer3 presentationLayer];
  v8 = [presentationLayer2 valueForKeyPath:@"opacity"];
  [v20 setFromValue:v8];

  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v20 setToValue:v10];

  [v20 setDuration:0.200000003];
  runningContainerLayer4 = [(WFWorkflowProgressView *)self runningContainerLayer];
  LODWORD(v12) = 1.0;
  [runningContainerLayer4 setOpacity:v12];

  if (animatedCopy)
  {
LABEL_5:
    runningContainerLayer5 = [(WFWorkflowProgressView *)self runningContainerLayer];
    [runningContainerLayer5 addAnimation:v20 forKey:0];
  }

LABEL_6:
}

- (void)transitionToState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(WFWorkflowProgressView *)self currentState]!= state)
  {
    [(WFWorkflowProgressView *)self transitionRunningLayerToVisible:state == 0 animated:animatedCopy];
    [(WFWorkflowProgressView *)self transitionCompletedLayerToVisible:state != 0 animated:animatedCopy haptic:1];
    self->_currentState = state;
  }
}

- (void)transitionToState:(int64_t)state
{
  [(WFWorkflowProgressView *)self transitionToState:state animated:1];
  if (state)
  {

    [(WFWorkflowProgressView *)self endBreatheAnimation];
  }

  else
  {
    stopGlyphLayer = [(WFWorkflowProgressView *)self stopGlyphLayer];
    animationKeys = [stopGlyphLayer animationKeys];
    v7 = [animationKeys count];

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
  stopGlyphLayer = [(WFWorkflowProgressView *)self stopGlyphLayer];
  backgroundCircleLayer = [(WFWorkflowProgressView *)self backgroundCircleLayer];
  partialRingLayer = [(WFWorkflowProgressView *)self partialRingLayer];
  [(WFWorkflowProgressView *)self stopSize];
  v8 = v7;
  [stopGlyphLayer setBounds:{0.0, 0.0, v8, v8}];
  [stopGlyphLayer setCornerRadius:v8 * *MEMORY[0x1E69E0FE0]];
  [stopGlyphLayer setCornerCurve:*MEMORY[0x1E69796E8]];
  [(WFWorkflowProgressView *)self bounds];
  MidX = CGRectGetMidX(v27);
  [(WFWorkflowProgressView *)self bounds];
  [stopGlyphLayer setPosition:{MidX, CGRectGetMidY(v28)}];
  resolvedTintColor = [(WFWorkflowProgressView *)self resolvedTintColor];
  [stopGlyphLayer setBackgroundColor:{objc_msgSend(resolvedTintColor, "CGColor")}];

  [(WFWorkflowProgressView *)self bounds];
  [backgroundCircleLayer setFrame:?];
  [(WFWorkflowProgressView *)self bounds];
  [backgroundCircleLayer setCornerRadius:v11 * 0.5];
  resolvedTintColor2 = [(WFWorkflowProgressView *)self resolvedTintColor];
  v13 = [resolvedTintColor2 colorWithAlphaComponent:0.100000001];
  [backgroundCircleLayer setBackgroundColor:{objc_msgSend(v13, "CGColor")}];

  [(WFWorkflowProgressView *)self progressStrokeWidth];
  v15 = v14;
  [(WFWorkflowProgressView *)self bounds];
  v30 = CGRectInset(v29, v15 + v15, v15 + v15);
  [partialRingLayer setFrame:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
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
  [partialRingLayer bounds];
  v21 = CGRectGetMidX(v31);
  [partialRingLayer bounds];
  v22 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v21 startAngle:CGRectGetMidY(v32) endAngle:v20 clockwise:{-1.57079633, 4.71238898}];
  [partialRingLayer setPath:{objc_msgSend(v22, "CGPath")}];

  resolvedTintColor3 = [(WFWorkflowProgressView *)self resolvedTintColor];
  [partialRingLayer setStrokeColor:{objc_msgSend(resolvedTintColor3, "CGColor")}];

  [partialRingLayer setLineWidth:v15];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [partialRingLayer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  [partialRingLayer setLineCap:*MEMORY[0x1E6979E78]];
  [partialRingLayer setStrokeEnd:v4];
}

- (void)setResolvedTintColor:(id)color
{
  objc_storeStrong(&self->_resolvedTintColor, color);
  colorCopy = color;
  [(WFWorkflowProgressView *)self updatePaths];
  checkmarkImageView = [(WFWorkflowProgressView *)self checkmarkImageView];
  [checkmarkImageView setTintColor:colorCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = WFWorkflowProgressView;
  changeCopy = change;
  [(WFWorkflowProgressView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(WFWorkflowProgressView *)self traitCollection:v11.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    tintColor = [(WFWorkflowProgressView *)self tintColor];
    traitCollection = [(WFWorkflowProgressView *)self traitCollection];
    v10 = [tintColor resolvedColorWithTraitCollection:traitCollection];
    [(WFWorkflowProgressView *)self setResolvedTintColor:v10];
  }
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = WFWorkflowProgressView;
  [(WFWorkflowProgressView *)&v6 tintColorDidChange];
  tintColor = [(WFWorkflowProgressView *)self tintColor];
  traitCollection = [(WFWorkflowProgressView *)self traitCollection];
  v5 = [tintColor resolvedColorWithTraitCollection:traitCollection];
  [(WFWorkflowProgressView *)self setResolvedTintColor:v5];
}

- (void)setProgressStrokeWidth:(double)width
{
  if (self->_progressStrokeWidth != width)
  {
    self->_progressStrokeWidth = width;
    [(WFWorkflowProgressView *)self updatePaths];
  }
}

- (void)setStopSize:(double)size
{
  if (self->_stopSize != size)
  {
    self->_stopSize = size;
    [(WFWorkflowProgressView *)self updatePaths];
  }
}

- (void)setFractionCompleted:(double)completed
{
  fractionCompleted = self->_fractionCompleted;
  if (fractionCompleted != completed)
  {
    if (fractionCompleted > completed)
    {
      completed = self->_fractionCompleted;
    }

    self->_fractionCompleted = completed;
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
  runningContainerLayer = [(WFWorkflowProgressView *)self runningContainerLayer];
  [runningContainerLayer setFrame:{v4, v6, v8, v10}];

  [(WFWorkflowProgressView *)self bounds];
  traitCollection = [(WFWorkflowProgressView *)self traitCollection];
  [traitCollection displayScale];
  BSFloatRoundForScale();
  v14 = v13;

  [(WFWorkflowProgressView *)self bounds];
  v16 = v14 + v15;
  v18 = v14 + v17;
  v19 = v14 + v14;
  v21 = v20 - (v14 + v14);
  v23 = v22 - v19;
  checkmarkImageView = [(WFWorkflowProgressView *)self checkmarkImageView];
  [checkmarkImageView setFrame:{v16, v18, v21, v23}];

  [(WFWorkflowProgressView *)self updatePaths];
}

- (WFWorkflowProgressView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = WFWorkflowProgressView;
  v3 = [(WFWorkflowProgressView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_stopSize = 8.0;
    v3->_progressStrokeWidth = 2.0;
    layer = [MEMORY[0x1E6979398] layer];
    layer2 = [(WFWorkflowProgressView *)v4 layer];
    [layer2 addSublayer:layer];

    runningContainerLayer = v4->_runningContainerLayer;
    v4->_runningContainerLayer = layer;
    v8 = layer;

    v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CAShapeLayer *)v9 setAllowsGroupBlending:0];
    v10 = *MEMORY[0x1E6979CF8];
    [(CAShapeLayer *)v9 setCompositingFilter:*MEMORY[0x1E6979CF8]];
    layer3 = [(WFWorkflowProgressView *)v4 layer];
    [layer3 addSublayer:v9];

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