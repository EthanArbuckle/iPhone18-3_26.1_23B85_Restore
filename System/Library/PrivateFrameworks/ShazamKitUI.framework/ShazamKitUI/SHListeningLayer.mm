@interface SHListeningLayer
- (SHListeningLayer)initWithIntroAnimation:(BOOL)animation useCustomCompatibleBackground:(BOOL)background;
- (SHListeningLayerDelegate)viewDelegate;
- (void)addAutoAnimationInitialShazamButtonPulse;
- (void)addAutoShadowLayer;
- (void)addAutoShadowToShazamButtonMaskLayer;
- (void)addInnerCircleToAutoShadowMaskLayer;
- (void)addInnerCirclesLayer;
- (void)addInnerCirclesToShazamButtonMaskLayer;
- (void)addOuterCirclesLayer;
- (void)addTouchDownAnimation;
- (void)animateToStoppedStateWithCompletion:(id)completion;
- (void)buildView;
- (void)buttonWillFinishDrawingShazamShape;
- (void)centerLayer:(id)layer inSuperLayer:(id)superLayer withRelativeSize:(double)size;
- (void)layoutSublayers;
- (void)processBass:(double)bass treble:(double)treble;
- (void)processBassForInnerCircle:(double)circle;
- (void)processBassForShazamButton:(double)button;
- (void)processTrebleForOuterCircles:(double)circles;
- (void)removeAnimationLayers;
- (void)setBass:(double)bass;
- (void)startActiveListeningAnimation;
- (void)startIdleAnimation;
- (void)startPassiveListeningAnimation;
- (void)startShazamButtonIdleAnimation;
- (void)stopAllAnimations;
@end

@implementation SHListeningLayer

- (SHListeningLayer)initWithIntroAnimation:(BOOL)animation useCustomCompatibleBackground:(BOOL)background
{
  backgroundCopy = background;
  animationCopy = animation;
  v12.receiver = self;
  v12.super_class = SHListeningLayer;
  v6 = [(SHListeningLayer *)&v12 init];
  if (v6)
  {
    if (backgroundCopy)
    {
      v7 = objc_alloc_init(SHCustomBackgroundCompatiblePalette);
    }

    else
    {
      v7 = +[SHPalette default];
    }

    palette = v6->_palette;
    v6->_palette = &v7->super;

    v6->_state = 1;
    v6->_shouldPerformIntroAnimation = animationCopy;
    [(SHListeningLayer *)v6 buildView];
    shazamButtonLayer = [(SHListeningLayer *)v6 shazamButtonLayer];
    v10 = shazamButtonLayer;
    if (animationCopy)
    {
      [shazamButtonLayer performSDrawingIntroAnimation];
    }

    else
    {
      [shazamButtonLayer skipIntroAnimation];
    }
  }

  return v6;
}

- (void)buildView
{
  v3 = [SHShazamButtonLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:palette];
  [(SHListeningLayer *)self setShazamButtonLayer:v5];

  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer setButtonDelegate:self];

  shazamButtonLayer2 = [(SHListeningLayer *)self shazamButtonLayer];
  [(SHListeningLayer *)self addSublayer:shazamButtonLayer2];

  [(SHListeningLayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  shazamButtonLayer3 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer3 setFrame:{v9, v11, v13, v15}];
}

- (void)layoutSublayers
{
  v60.receiver = self;
  v60.super_class = SHListeningLayer;
  [(SHListeningLayer *)&v60 layoutSublayers];
  [(SHListeningLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer setFrame:{v4, v6, v8, v10}];

  autoShadowContainerLayer = [(SHListeningLayer *)self autoShadowContainerLayer];
  [(SHListeningLayer *)self centerLayer:autoShadowContainerLayer inSuperLayer:self withRelativeSize:1.0];

  autoShadowLayer = [(SHListeningLayer *)self autoShadowLayer];
  autoShadowContainerLayer2 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [(SHListeningLayer *)self centerLayer:autoShadowLayer inSuperLayer:autoShadowContainerLayer2 withRelativeSize:1.0];

  if ([(SHListeningLayer *)self state]== 4)
  {
    v15 = 3.0;
  }

  else
  {
    v15 = 2.70000005;
  }

  innerCirclesContainerLayer = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [(SHListeningLayer *)self centerLayer:innerCirclesContainerLayer inSuperLayer:self withRelativeSize:v15];

  innerCirclesSecondaryContainerLayer = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  innerCirclesContainerLayer2 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [(SHListeningLayer *)self centerLayer:innerCirclesSecondaryContainerLayer inSuperLayer:innerCirclesContainerLayer2 withRelativeSize:1.0];

  innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
  innerCirclesSecondaryContainerLayer2 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [(SHListeningLayer *)self centerLayer:innerCirclesLayer inSuperLayer:innerCirclesSecondaryContainerLayer2 withRelativeSize:1.0];

  outerCirclesLayer = [(SHListeningLayer *)self outerCirclesLayer];
  [(SHListeningLayer *)self centerLayer:outerCirclesLayer inSuperLayer:self withRelativeSize:6.30000019];

  innerCirclesContainerLayer3 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [innerCirclesContainerLayer3 bounds];
  MidX = CGRectGetMidX(v61);
  innerCirclesContainerLayer4 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [innerCirclesContainerLayer4 bounds];
  MidY = CGRectGetMidY(v62);
  innerCircleToShazamButtonMaskLayer = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [innerCircleToShazamButtonMaskLayer setPosition:{MidX, MidY}];

  shazamButtonLayer2 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer2 bounds];
  v28 = CGRectGetWidth(v63) * 3.5;
  shazamButtonLayer3 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer3 bounds];
  v30 = CGRectGetHeight(v64) * 3.5;
  innerCircleToShazamButtonMaskLayer2 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [innerCircleToShazamButtonMaskLayer2 setBounds:{0.0, 0.0, v28, v30}];

  innerCirclesSecondaryContainerLayer3 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [innerCirclesSecondaryContainerLayer3 bounds];
  v33 = CGRectGetMidX(v65);
  innerCirclesSecondaryContainerLayer4 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [innerCirclesSecondaryContainerLayer4 bounds];
  v35 = CGRectGetMidY(v66);
  innerCircleToAutoShadowMaskLayer = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [innerCircleToAutoShadowMaskLayer setPosition:{v33, v35}];

  shazamButtonLayer4 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer4 bounds];
  v38 = CGRectGetWidth(v67) * 3.5;
  shazamButtonLayer5 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer5 bounds];
  v40 = CGRectGetHeight(v68) * 3.5;
  innerCircleToAutoShadowMaskLayer2 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [innerCircleToAutoShadowMaskLayer2 setBounds:{0.0, 0.0, v38, v40}];

  autoShadowContainerLayer3 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [autoShadowContainerLayer3 bounds];
  v43 = CGRectGetMidX(v69);
  autoShadowContainerLayer4 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [autoShadowContainerLayer4 bounds];
  v45 = CGRectGetMidY(v70);
  autoShadowToShazamButtonMaskLayer = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [autoShadowToShazamButtonMaskLayer setPosition:{v43, v45}];

  autoShadowLayer2 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowLayer2 bounds];
  v48 = CGRectGetWidth(v71) * 3.5;
  autoShadowLayer3 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowLayer3 bounds];
  v50 = CGRectGetHeight(v72) * 3.5;
  autoShadowToShazamButtonMaskLayer2 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [autoShadowToShazamButtonMaskLayer2 setBounds:{0.0, 0.0, v48, v50}];

  shazamButtonLayer6 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer6 setNeedsLayout];

  shazamButtonLayer7 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer7 layoutIfNeeded];

  innerCirclesLayer2 = [(SHListeningLayer *)self innerCirclesLayer];
  [innerCirclesLayer2 setNeedsLayout];

  innerCirclesLayer3 = [(SHListeningLayer *)self innerCirclesLayer];
  [innerCirclesLayer3 layoutIfNeeded];

  outerCirclesLayer2 = [(SHListeningLayer *)self outerCirclesLayer];
  [outerCirclesLayer2 setNeedsLayout];

  outerCirclesLayer3 = [(SHListeningLayer *)self outerCirclesLayer];
  [outerCirclesLayer3 layoutIfNeeded];

  autoShadowLayer4 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowLayer4 setNeedsLayout];

  autoShadowLayer5 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowLayer5 layoutIfNeeded];
}

- (void)centerLayer:(id)layer inSuperLayer:(id)superLayer withRelativeSize:(double)size
{
  superLayerCopy = superLayer;
  layerCopy = layer;
  [superLayerCopy bounds];
  v8 = CGRectGetWidth(v20) * size;
  [superLayerCopy bounds];
  [layerCopy setBounds:{0.0, 0.0, v8, CGRectGetHeight(v21) * size}];
  [superLayerCopy bounds];
  MidX = CGRectGetMidX(v22);
  [superLayerCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  [layerCopy setPosition:{MidX, CGRectGetMidY(v23)}];
}

- (void)setBass:(double)bass
{
  self->_bass = bass;
  [(SHListeningLayer *)self treble];

  [(SHListeningLayer *)self processBass:bass treble:v5];
}

- (void)processBass:(double)bass treble:(double)treble
{
  if ([(SHListeningLayer *)self state]== 4)
  {
    [(SHListeningLayer *)self processBassForInnerCircle:bass];
    [(SHListeningLayer *)self processBassForShazamButton:bass];

    [(SHListeningLayer *)self processTrebleForOuterCircles:treble];
  }
}

- (void)processBassForInnerCircle:(double)circle
{
  [SHMaths interpolateValue:circle leftMin:0.0 leftMax:1.0 rightMin:0.699999988 rightMax:1.29999995];
  v6 = v5;
  [SHMaths interpolateValue:circle leftMin:0.0 leftMax:1.0 rightMin:0.5 rightMax:0.899999976];
  v8 = v7;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  CATransform3DMakeScale(&v13, v6, v6, 1.0);
  innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
  v12 = v13;
  [innerCirclesLayer setTransform:&v12];

  innerCirclesLayer2 = [(SHListeningLayer *)self innerCirclesLayer];
  *&v8 = v8;
  LODWORD(v11) = LODWORD(v8);
  [innerCirclesLayer2 setOpacity:v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)processTrebleForOuterCircles:(double)circles
{
  [SHMaths interpolateValue:circles leftMin:0.0 leftMax:1.0 rightMin:0.899999976 rightMax:1.10000002];
  v6 = v5;
  [SHMaths interpolateValue:circles leftMin:0.0 leftMax:1.0 rightMin:0.300000012 rightMax:0.699999988];
  v8 = v7;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  CATransform3DMakeScale(&v13, v6, v6, 1.0);
  outerCirclesLayer = [(SHListeningLayer *)self outerCirclesLayer];
  v12 = v13;
  [outerCirclesLayer setTransform:&v12];

  outerCirclesLayer2 = [(SHListeningLayer *)self outerCirclesLayer];
  *&v8 = v8;
  LODWORD(v11) = LODWORD(v8);
  [outerCirclesLayer2 setOpacity:v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)processBassForShazamButton:(double)button
{
  [SHMaths interpolateValue:button leftMin:0.0 leftMax:1.0 rightMin:0.75 rightMax:1.10000002];
  v5 = v4;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  CATransform3DMakeScale(&v12, v5, v5, 1.0);
  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  v11 = v12;
  [shazamButtonLayer setSublayerTransform:&v11];

  CATransform3DMakeScale(&v10, v5, v5, 1.0);
  autoShadowToShazamButtonMaskLayer = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  v11 = v10;
  [autoShadowToShazamButtonMaskLayer setTransform:&v11];

  CATransform3DMakeScale(&v9, v5, v5, 1.0);
  innerCircleToShazamButtonMaskLayer = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  v11 = v9;
  [innerCircleToShazamButtonMaskLayer setTransform:&v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)startShazamButtonIdleAnimation
{
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"sublayerTransform.scale"];
  [v6 setFromValue:&unk_2877AD0E8];
  [v6 setToValue:&unk_2877AD0F8];
  [v6 setDuration:1.0];
  [v6 setAutoreverses:1];
  LODWORD(v3) = 2139095040;
  [v6 setRepeatCount:v3];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:*MEMORY[0x277CDA238]];
  v4 = +[SHListeningMediaTimingFunctionProvider inOutSineMediaTimingFunction];
  [v6 setTimingFunction:v4];

  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer addAnimation:v6 forKey:@"SHListeningShazamButtonScaleAnimationKey"];
}

- (void)startIdleAnimation
{
  state = [(SHListeningLayer *)self state];
  [(SHListeningLayer *)self setState:2];
  if (state == 1)
  {
    shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
    [shazamButtonLayer removeAllAnimations];

    [(SHListeningLayer *)self startShazamButtonIdleAnimation];
  }

  else
  {
    innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SHListeningLayer_startIdleAnimation__block_invoke;
    v7[3] = &unk_279BBFC38;
    v8 = innerCirclesLayer;
    selfCopy = self;
    v6 = innerCirclesLayer;
    [(SHListeningLayer *)self animateToStoppedStateWithCompletion:v7];
  }
}

void __38__SHListeningLayer_startIdleAnimation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) innerCirclesLayer];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 startShazamButtonIdleAnimation];
  }
}

- (void)startActiveListeningAnimation
{
  if ([(SHListeningLayer *)self state]== 2 || [(SHListeningLayer *)self state]== 1)
  {
    [(SHListeningLayer *)self setState:4];
    shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
    [shazamButtonLayer removeAllAnimations];

    [(SHListeningLayer *)self addInnerCirclesLayer];
    [(SHListeningLayer *)self addOuterCirclesLayer];
    [(SHListeningLayer *)self addInnerCirclesToShazamButtonMaskLayer];
    innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
    [innerCirclesLayer startListeningAnimation];

    outerCirclesLayer = [(SHListeningLayer *)self outerCirclesLayer];
    [outerCirclesLayer startListeningAnimation];

    [(SHListeningLayer *)self setNeedsLayout];
  }
}

- (void)startPassiveListeningAnimation
{
  if ([(SHListeningLayer *)self state]== 2 || [(SHListeningLayer *)self state]== 1)
  {
    [(SHListeningLayer *)self setState:3];
    [(SHListeningLayer *)self addAutoShadowLayer];
    [(SHListeningLayer *)self addInnerCirclesLayer];
    [(SHListeningLayer *)self addInnerCircleToAutoShadowMaskLayer];
    [(SHListeningLayer *)self addInnerCirclesToShazamButtonMaskLayer];
    [(SHListeningLayer *)self addAutoShadowToShazamButtonMaskLayer];
    [(SHListeningLayer *)self addAutoAnimationInitialShazamButtonPulse];
    innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
    [innerCirclesLayer startListeningAnimation];

    [(SHListeningLayer *)self setNeedsLayout];
  }
}

- (void)stopAllAnimations
{
  if ([(SHListeningLayer *)self state]!= 1)
  {
    shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
    [shazamButtonLayer removeAllAnimations];

    [(SHListeningLayer *)self removeAnimationLayers];
    shazamButtonLayer2 = [(SHListeningLayer *)self shazamButtonLayer];
    v5 = *(MEMORY[0x277CD9DE8] + 80);
    v9[4] = *(MEMORY[0x277CD9DE8] + 64);
    v9[5] = v5;
    v6 = *(MEMORY[0x277CD9DE8] + 112);
    v9[6] = *(MEMORY[0x277CD9DE8] + 96);
    v9[7] = v6;
    v7 = *(MEMORY[0x277CD9DE8] + 16);
    v9[0] = *MEMORY[0x277CD9DE8];
    v9[1] = v7;
    v8 = *(MEMORY[0x277CD9DE8] + 48);
    v9[2] = *(MEMORY[0x277CD9DE8] + 32);
    v9[3] = v8;
    [shazamButtonLayer2 setSublayerTransform:v9];
  }
}

- (void)addAutoAnimationInitialShazamButtonPulse
{
  v8 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"sublayerTransform.scale"];
  [v8 setFromValue:&unk_2877AD108];
  [v8 setToValue:&unk_2877AD118];
  [v8 setDuration:0.200000003];
  [v8 setRemovedOnCompletion:0];
  v3 = *MEMORY[0x277CDA238];
  [v8 setFillMode:*MEMORY[0x277CDA238]];
  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer addAnimation:v8 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  v5 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale"];
  [v5 setFromValue:&unk_2877AD108];
  [v5 setToValue:&unk_2877AD118];
  [v5 setDuration:0.200000003];
  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:v3];
  innerCircleToShazamButtonMaskLayer = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [innerCircleToShazamButtonMaskLayer addAnimation:v5 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  autoShadowToShazamButtonMaskLayer = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [autoShadowToShazamButtonMaskLayer addAnimation:v5 forKey:@"SHListeningShazamButtonScaleAnimationKey"];
}

- (void)addTouchDownAnimation
{
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  presentationLayer = [shazamButtonLayer presentationLayer];
  v5 = [presentationLayer valueForKeyPath:@"transform.scale"];
  [v8 setFromValue:v5];

  [v8 setToValue:&unk_2877AD118];
  [v8 setDuration:0.349999994];
  [v8 setFillMode:*MEMORY[0x277CDA238]];
  [v8 setRemovedOnCompletion:0];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v8 setTimingFunction:v6];

  shazamButtonLayer2 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer2 addAnimation:v8 forKey:@"SHListeningShazamButtonScaleAnimationKey"];
}

- (void)animateToStoppedStateWithCompletion:(id)completion
{
  completionCopy = completion;
  innerCircleToShazamButtonMaskLayer = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [innerCircleToShazamButtonMaskLayer removeAllAnimations];

  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer removeAllAnimations];

  autoShadowToShazamButtonMaskLayer = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [autoShadowToShazamButtonMaskLayer removeAllAnimations];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:completionCopy];

  shazamButtonLayer2 = [(SHListeningLayer *)self shazamButtonLayer];
  presentationLayer = [shazamButtonLayer2 presentationLayer];
  v43 = [presentationLayer valueForKeyPath:@"sublayerTransform.scale"];

  v10 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"sublayerTransform.scale"];
  [v10 setFromValue:v43];
  [v10 setToValue:&unk_2877AD0E8];
  [v10 setDuration:0.349999994];
  [v10 setRemovedOnCompletion:0];
  v11 = *MEMORY[0x277CDA238];
  [v10 setFillMode:*MEMORY[0x277CDA238]];
  v12 = *MEMORY[0x277CDA7C0];
  v40 = *MEMORY[0x277CDA7C0];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v10 setTimingFunction:v13];

  shazamButtonLayer3 = [(SHListeningLayer *)self shazamButtonLayer];
  [shazamButtonLayer3 addAnimation:v10 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  innerCircleToShazamButtonMaskLayer2 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  presentationLayer2 = [innerCircleToShazamButtonMaskLayer2 presentationLayer];
  v42 = [presentationLayer2 valueForKeyPath:@"transform.scale"];

  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v17 setFromValue:v42];
  [v17 setToValue:&unk_2877AD0E8];
  [v17 setDuration:0.349999994];
  [v17 setRemovedOnCompletion:0];
  [v17 setFillMode:v11];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:v12];
  [v17 setTimingFunction:v18];

  innerCircleToShazamButtonMaskLayer3 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [innerCircleToShazamButtonMaskLayer3 addAnimation:v17 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  autoShadowToShazamButtonMaskLayer2 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [autoShadowToShazamButtonMaskLayer2 addAnimation:v17 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
  presentationLayer3 = [innerCirclesLayer presentationLayer];
  v41 = [presentationLayer3 valueForKeyPath:@"transform.scale"];

  v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v23 setFromValue:v41];
  [v23 setToValue:&unk_2877AD128];
  [v23 setDuration:0.349999994];
  [v23 setRemovedOnCompletion:0];
  [v23 setFillMode:v11];
  v38 = *MEMORY[0x277CDA7B0];
  v24 = [MEMORY[0x277CD9EF8] functionWithName:?];
  [v23 setTimingFunction:v24];

  innerCirclesLayer2 = [(SHListeningLayer *)self innerCirclesLayer];
  [innerCirclesLayer2 addAnimation:v23 forKey:@"SHListeningInnerCirclesScaleAnimationKey"];

  outerCirclesLayer = [(SHListeningLayer *)self outerCirclesLayer];
  presentationLayer4 = [outerCirclesLayer presentationLayer];
  v39 = [presentationLayer4 valueForKeyPath:@"opacity"];

  v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v28 setFromValue:v39];
  [v28 setToValue:&unk_2877AD138];
  [v28 setDuration:0.5];
  [v28 setRemovedOnCompletion:0];
  [v28 setFillMode:v11];
  v29 = [MEMORY[0x277CD9EF8] functionWithName:v40];
  [v28 setTimingFunction:v29];

  outerCirclesLayer2 = [(SHListeningLayer *)self outerCirclesLayer];
  [outerCirclesLayer2 addAnimation:v28 forKey:@"SHListeningOuterCirclesOpacityAnimationKey"];

  autoShadowLayer = [(SHListeningLayer *)self autoShadowLayer];
  presentationLayer5 = [autoShadowLayer presentationLayer];
  v33 = [presentationLayer5 valueForKeyPath:@"transform.scale"];

  v34 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v34 setFromValue:v33];
  [v34 setToValue:&unk_2877AD148];
  [v34 setDuration:0.5];
  [v34 setRemovedOnCompletion:0];
  [v34 setFillMode:v11];
  v35 = [MEMORY[0x277CD9EF8] functionWithName:v38];
  [v34 setTimingFunction:v35];

  autoShadowLayer2 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowLayer2 addAnimation:v34 forKey:0];

  innerCircleToAutoShadowMaskLayer = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [innerCircleToAutoShadowMaskLayer addAnimation:v34 forKey:@"SHListeningAutoShadowScaleAnimationKey"];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)addInnerCirclesLayer
{
  innerCirclesLayer = [(SHListeningLayer *)self innerCirclesLayer];
  if (innerCirclesLayer || ([(SHListeningLayer *)self innerCirclesContainerLayer], (innerCirclesLayer = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    innerCirclesLayer2 = [(SHListeningLayer *)self innerCirclesLayer];
    [innerCirclesLayer2 removeFromSuperlayer];

    innerCirclesContainerLayer = [(SHListeningLayer *)self innerCirclesContainerLayer];
    [innerCirclesContainerLayer removeFromSuperlayer];

    innerCirclesSecondaryContainerLayer = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
    [innerCirclesSecondaryContainerLayer removeFromSuperlayer];

    goto LABEL_5;
  }

  innerCirclesSecondaryContainerLayer2 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];

  if (innerCirclesSecondaryContainerLayer2)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningLayer *)self setInnerCirclesContainerLayer:v7];

  innerCirclesContainerLayer2 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [(SHListeningLayer *)self insertSublayer:innerCirclesContainerLayer2 below:shazamButtonLayer];

  v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningLayer *)self setInnerCirclesSecondaryContainerLayer:v10];

  innerCirclesContainerLayer3 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  innerCirclesSecondaryContainerLayer3 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [innerCirclesContainerLayer3 addSublayer:innerCirclesSecondaryContainerLayer3];

  v13 = [SHListeningInnerCirclesLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v15 = [(SHPaletteLayer *)v13 initWithPalette:palette];
  [(SHListeningLayer *)self setInnerCirclesLayer:v15];

  innerCirclesSecondaryContainerLayer4 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  innerCirclesLayer3 = [(SHListeningLayer *)self innerCirclesLayer];
  [innerCirclesSecondaryContainerLayer4 addSublayer:innerCirclesLayer3];
}

- (void)addOuterCirclesLayer
{
  outerCirclesLayer = [(SHListeningLayer *)self outerCirclesLayer];

  if (outerCirclesLayer)
  {
    outerCirclesLayer2 = [(SHListeningLayer *)self outerCirclesLayer];
    [outerCirclesLayer2 removeFromSuperlayer];
  }

  v5 = [SHListeningOuterCirclesLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v7 = [(SHPaletteLayer *)v5 initWithPalette:palette];
  [(SHListeningLayer *)self setOuterCirclesLayer:v7];

  outerCirclesLayer3 = [(SHListeningLayer *)self outerCirclesLayer];
  [(SHListeningLayer *)self addSublayer:outerCirclesLayer3];
}

- (void)addAutoShadowLayer
{
  autoShadowLayer = [(SHListeningLayer *)self autoShadowLayer];
  if (autoShadowLayer)
  {
  }

  else
  {
    autoShadowContainerLayer = [(SHListeningLayer *)self autoShadowContainerLayer];

    if (!autoShadowContainerLayer)
    {
      goto LABEL_5;
    }
  }

  autoShadowLayer2 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowLayer2 removeFromSuperlayer];

  autoShadowContainerLayer2 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [autoShadowContainerLayer2 removeFromSuperlayer];

LABEL_5:
  v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningLayer *)self setAutoShadowContainerLayer:v7];

  autoShadowContainerLayer3 = [(SHListeningLayer *)self autoShadowContainerLayer];
  shazamButtonLayer = [(SHListeningLayer *)self shazamButtonLayer];
  [(SHListeningLayer *)self insertSublayer:autoShadowContainerLayer3 below:shazamButtonLayer];

  v10 = [SHListeningAutoShadowLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v12 = [(SHPaletteLayer *)v10 initWithPalette:palette];
  [(SHListeningLayer *)self setAutoShadowLayer:v12];

  autoShadowContainerLayer4 = [(SHListeningLayer *)self autoShadowContainerLayer];
  autoShadowLayer3 = [(SHListeningLayer *)self autoShadowLayer];
  [autoShadowContainerLayer4 addSublayer:autoShadowLayer3];
}

- (void)addInnerCirclesToShazamButtonMaskLayer
{
  v3 = [SHInnerCircleMaskLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:palette];
  [(SHListeningLayer *)self setInnerCircleToShazamButtonMaskLayer:v5];

  innerCircleToShazamButtonMaskLayer = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [innerCircleToShazamButtonMaskLayer setInnerCircleRelativeSize:3.5];

  innerCircleToShazamButtonMaskLayer2 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  innerCirclesContainerLayer = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [innerCirclesContainerLayer setMask:innerCircleToShazamButtonMaskLayer2];
}

- (void)addInnerCircleToAutoShadowMaskLayer
{
  v3 = [SHInnerCircleMaskLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:palette];
  [(SHListeningLayer *)self setInnerCircleToAutoShadowMaskLayer:v5];

  innerCircleToAutoShadowMaskLayer = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [innerCircleToAutoShadowMaskLayer setInnerCircleRelativeSize:3.5];

  innerCircleToAutoShadowMaskLayer2 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  innerCirclesSecondaryContainerLayer = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [innerCirclesSecondaryContainerLayer setMask:innerCircleToAutoShadowMaskLayer2];
}

- (void)addAutoShadowToShazamButtonMaskLayer
{
  v3 = [SHInnerCircleMaskLayer alloc];
  palette = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:palette];
  [(SHListeningLayer *)self setAutoShadowToShazamButtonMaskLayer:v5];

  autoShadowToShazamButtonMaskLayer = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [autoShadowToShazamButtonMaskLayer setInnerCircleRelativeSize:3.5];

  autoShadowToShazamButtonMaskLayer2 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  autoShadowContainerLayer = [(SHListeningLayer *)self autoShadowContainerLayer];
  [autoShadowContainerLayer setMask:autoShadowToShazamButtonMaskLayer2];
}

- (void)removeAnimationLayers
{
  innerCirclesContainerLayer = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [innerCirclesContainerLayer removeFromSuperlayer];

  autoShadowContainerLayer = [(SHListeningLayer *)self autoShadowContainerLayer];
  [autoShadowContainerLayer removeFromSuperlayer];

  outerCirclesLayer = [(SHListeningLayer *)self outerCirclesLayer];
  [outerCirclesLayer removeFromSuperlayer];

  [(SHListeningLayer *)self setInnerCirclesLayer:0];
  [(SHListeningLayer *)self setOuterCirclesLayer:0];
  [(SHListeningLayer *)self setAutoShadowLayer:0];
  [(SHListeningLayer *)self setInnerCirclesContainerLayer:0];
  [(SHListeningLayer *)self setInnerCirclesSecondaryContainerLayer:0];
  [(SHListeningLayer *)self setAutoShadowContainerLayer:0];
  [(SHListeningLayer *)self setInnerCircleToAutoShadowMaskLayer:0];
  [(SHListeningLayer *)self setInnerCircleToShazamButtonMaskLayer:0];

  [(SHListeningLayer *)self setAutoShadowToShazamButtonMaskLayer:0];
}

- (void)buttonWillFinishDrawingShazamShape
{
  viewDelegate = [(SHListeningLayer *)self viewDelegate];
  [viewDelegate willFinishDrawingShazamShape];
}

- (SHListeningLayerDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

@end