@interface SHListeningLayer
- (SHListeningLayer)initWithIntroAnimation:(BOOL)a3 useCustomCompatibleBackground:(BOOL)a4;
- (SHListeningLayerDelegate)viewDelegate;
- (void)addAutoAnimationInitialShazamButtonPulse;
- (void)addAutoShadowLayer;
- (void)addAutoShadowToShazamButtonMaskLayer;
- (void)addInnerCircleToAutoShadowMaskLayer;
- (void)addInnerCirclesLayer;
- (void)addInnerCirclesToShazamButtonMaskLayer;
- (void)addOuterCirclesLayer;
- (void)addTouchDownAnimation;
- (void)animateToStoppedStateWithCompletion:(id)a3;
- (void)buildView;
- (void)buttonWillFinishDrawingShazamShape;
- (void)centerLayer:(id)a3 inSuperLayer:(id)a4 withRelativeSize:(double)a5;
- (void)layoutSublayers;
- (void)processBass:(double)a3 treble:(double)a4;
- (void)processBassForInnerCircle:(double)a3;
- (void)processBassForShazamButton:(double)a3;
- (void)processTrebleForOuterCircles:(double)a3;
- (void)removeAnimationLayers;
- (void)setBass:(double)a3;
- (void)startActiveListeningAnimation;
- (void)startIdleAnimation;
- (void)startPassiveListeningAnimation;
- (void)startShazamButtonIdleAnimation;
- (void)stopAllAnimations;
@end

@implementation SHListeningLayer

- (SHListeningLayer)initWithIntroAnimation:(BOOL)a3 useCustomCompatibleBackground:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SHListeningLayer;
  v6 = [(SHListeningLayer *)&v12 init];
  if (v6)
  {
    if (v4)
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
    v6->_shouldPerformIntroAnimation = v5;
    [(SHListeningLayer *)v6 buildView];
    v9 = [(SHListeningLayer *)v6 shazamButtonLayer];
    v10 = v9;
    if (v5)
    {
      [v9 performSDrawingIntroAnimation];
    }

    else
    {
      [v9 skipIntroAnimation];
    }
  }

  return v6;
}

- (void)buildView
{
  v3 = [SHShazamButtonLayer alloc];
  v4 = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:v4];
  [(SHListeningLayer *)self setShazamButtonLayer:v5];

  v6 = [(SHListeningLayer *)self shazamButtonLayer];
  [v6 setButtonDelegate:self];

  v7 = [(SHListeningLayer *)self shazamButtonLayer];
  [(SHListeningLayer *)self addSublayer:v7];

  [(SHListeningLayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SHListeningLayer *)self shazamButtonLayer];
  [v16 setFrame:{v9, v11, v13, v15}];
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
  v11 = [(SHListeningLayer *)self shazamButtonLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [(SHListeningLayer *)self centerLayer:v12 inSuperLayer:self withRelativeSize:1.0];

  v13 = [(SHListeningLayer *)self autoShadowLayer];
  v14 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [(SHListeningLayer *)self centerLayer:v13 inSuperLayer:v14 withRelativeSize:1.0];

  if ([(SHListeningLayer *)self state]== 4)
  {
    v15 = 3.0;
  }

  else
  {
    v15 = 2.70000005;
  }

  v16 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [(SHListeningLayer *)self centerLayer:v16 inSuperLayer:self withRelativeSize:v15];

  v17 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  v18 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [(SHListeningLayer *)self centerLayer:v17 inSuperLayer:v18 withRelativeSize:1.0];

  v19 = [(SHListeningLayer *)self innerCirclesLayer];
  v20 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [(SHListeningLayer *)self centerLayer:v19 inSuperLayer:v20 withRelativeSize:1.0];

  v21 = [(SHListeningLayer *)self outerCirclesLayer];
  [(SHListeningLayer *)self centerLayer:v21 inSuperLayer:self withRelativeSize:6.30000019];

  v22 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [v22 bounds];
  MidX = CGRectGetMidX(v61);
  v24 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [v24 bounds];
  MidY = CGRectGetMidY(v62);
  v26 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [v26 setPosition:{MidX, MidY}];

  v27 = [(SHListeningLayer *)self shazamButtonLayer];
  [v27 bounds];
  v28 = CGRectGetWidth(v63) * 3.5;
  v29 = [(SHListeningLayer *)self shazamButtonLayer];
  [v29 bounds];
  v30 = CGRectGetHeight(v64) * 3.5;
  v31 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [v31 setBounds:{0.0, 0.0, v28, v30}];

  v32 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [v32 bounds];
  v33 = CGRectGetMidX(v65);
  v34 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [v34 bounds];
  v35 = CGRectGetMidY(v66);
  v36 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [v36 setPosition:{v33, v35}];

  v37 = [(SHListeningLayer *)self shazamButtonLayer];
  [v37 bounds];
  v38 = CGRectGetWidth(v67) * 3.5;
  v39 = [(SHListeningLayer *)self shazamButtonLayer];
  [v39 bounds];
  v40 = CGRectGetHeight(v68) * 3.5;
  v41 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [v41 setBounds:{0.0, 0.0, v38, v40}];

  v42 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [v42 bounds];
  v43 = CGRectGetMidX(v69);
  v44 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [v44 bounds];
  v45 = CGRectGetMidY(v70);
  v46 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [v46 setPosition:{v43, v45}];

  v47 = [(SHListeningLayer *)self autoShadowLayer];
  [v47 bounds];
  v48 = CGRectGetWidth(v71) * 3.5;
  v49 = [(SHListeningLayer *)self autoShadowLayer];
  [v49 bounds];
  v50 = CGRectGetHeight(v72) * 3.5;
  v51 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [v51 setBounds:{0.0, 0.0, v48, v50}];

  v52 = [(SHListeningLayer *)self shazamButtonLayer];
  [v52 setNeedsLayout];

  v53 = [(SHListeningLayer *)self shazamButtonLayer];
  [v53 layoutIfNeeded];

  v54 = [(SHListeningLayer *)self innerCirclesLayer];
  [v54 setNeedsLayout];

  v55 = [(SHListeningLayer *)self innerCirclesLayer];
  [v55 layoutIfNeeded];

  v56 = [(SHListeningLayer *)self outerCirclesLayer];
  [v56 setNeedsLayout];

  v57 = [(SHListeningLayer *)self outerCirclesLayer];
  [v57 layoutIfNeeded];

  v58 = [(SHListeningLayer *)self autoShadowLayer];
  [v58 setNeedsLayout];

  v59 = [(SHListeningLayer *)self autoShadowLayer];
  [v59 layoutIfNeeded];
}

- (void)centerLayer:(id)a3 inSuperLayer:(id)a4 withRelativeSize:(double)a5
{
  v7 = a4;
  v18 = a3;
  [v7 bounds];
  v8 = CGRectGetWidth(v20) * a5;
  [v7 bounds];
  [v18 setBounds:{0.0, 0.0, v8, CGRectGetHeight(v21) * a5}];
  [v7 bounds];
  MidX = CGRectGetMidX(v22);
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  [v18 setPosition:{MidX, CGRectGetMidY(v23)}];
}

- (void)setBass:(double)a3
{
  self->_bass = a3;
  [(SHListeningLayer *)self treble];

  [(SHListeningLayer *)self processBass:a3 treble:v5];
}

- (void)processBass:(double)a3 treble:(double)a4
{
  if ([(SHListeningLayer *)self state]== 4)
  {
    [(SHListeningLayer *)self processBassForInnerCircle:a3];
    [(SHListeningLayer *)self processBassForShazamButton:a3];

    [(SHListeningLayer *)self processTrebleForOuterCircles:a4];
  }
}

- (void)processBassForInnerCircle:(double)a3
{
  [SHMaths interpolateValue:a3 leftMin:0.0 leftMax:1.0 rightMin:0.699999988 rightMax:1.29999995];
  v6 = v5;
  [SHMaths interpolateValue:a3 leftMin:0.0 leftMax:1.0 rightMin:0.5 rightMax:0.899999976];
  v8 = v7;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  CATransform3DMakeScale(&v13, v6, v6, 1.0);
  v9 = [(SHListeningLayer *)self innerCirclesLayer];
  v12 = v13;
  [v9 setTransform:&v12];

  v10 = [(SHListeningLayer *)self innerCirclesLayer];
  *&v8 = v8;
  LODWORD(v11) = LODWORD(v8);
  [v10 setOpacity:v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)processTrebleForOuterCircles:(double)a3
{
  [SHMaths interpolateValue:a3 leftMin:0.0 leftMax:1.0 rightMin:0.899999976 rightMax:1.10000002];
  v6 = v5;
  [SHMaths interpolateValue:a3 leftMin:0.0 leftMax:1.0 rightMin:0.300000012 rightMax:0.699999988];
  v8 = v7;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  CATransform3DMakeScale(&v13, v6, v6, 1.0);
  v9 = [(SHListeningLayer *)self outerCirclesLayer];
  v12 = v13;
  [v9 setTransform:&v12];

  v10 = [(SHListeningLayer *)self outerCirclesLayer];
  *&v8 = v8;
  LODWORD(v11) = LODWORD(v8);
  [v10 setOpacity:v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)processBassForShazamButton:(double)a3
{
  [SHMaths interpolateValue:a3 leftMin:0.0 leftMax:1.0 rightMin:0.75 rightMax:1.10000002];
  v5 = v4;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  CATransform3DMakeScale(&v12, v5, v5, 1.0);
  v6 = [(SHListeningLayer *)self shazamButtonLayer];
  v11 = v12;
  [v6 setSublayerTransform:&v11];

  CATransform3DMakeScale(&v10, v5, v5, 1.0);
  v7 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  v11 = v10;
  [v7 setTransform:&v11];

  CATransform3DMakeScale(&v9, v5, v5, 1.0);
  v8 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  v11 = v9;
  [v8 setTransform:&v11];

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

  v5 = [(SHListeningLayer *)self shazamButtonLayer];
  [v5 addAnimation:v6 forKey:@"SHListeningShazamButtonScaleAnimationKey"];
}

- (void)startIdleAnimation
{
  v3 = [(SHListeningLayer *)self state];
  [(SHListeningLayer *)self setState:2];
  if (v3 == 1)
  {
    v4 = [(SHListeningLayer *)self shazamButtonLayer];
    [v4 removeAllAnimations];

    [(SHListeningLayer *)self startShazamButtonIdleAnimation];
  }

  else
  {
    v5 = [(SHListeningLayer *)self innerCirclesLayer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SHListeningLayer_startIdleAnimation__block_invoke;
    v7[3] = &unk_279BBFC38;
    v8 = v5;
    v9 = self;
    v6 = v5;
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
    v3 = [(SHListeningLayer *)self shazamButtonLayer];
    [v3 removeAllAnimations];

    [(SHListeningLayer *)self addInnerCirclesLayer];
    [(SHListeningLayer *)self addOuterCirclesLayer];
    [(SHListeningLayer *)self addInnerCirclesToShazamButtonMaskLayer];
    v4 = [(SHListeningLayer *)self innerCirclesLayer];
    [v4 startListeningAnimation];

    v5 = [(SHListeningLayer *)self outerCirclesLayer];
    [v5 startListeningAnimation];

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
    v3 = [(SHListeningLayer *)self innerCirclesLayer];
    [v3 startListeningAnimation];

    [(SHListeningLayer *)self setNeedsLayout];
  }
}

- (void)stopAllAnimations
{
  if ([(SHListeningLayer *)self state]!= 1)
  {
    v3 = [(SHListeningLayer *)self shazamButtonLayer];
    [v3 removeAllAnimations];

    [(SHListeningLayer *)self removeAnimationLayers];
    v4 = [(SHListeningLayer *)self shazamButtonLayer];
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
    [v4 setSublayerTransform:v9];
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
  v4 = [(SHListeningLayer *)self shazamButtonLayer];
  [v4 addAnimation:v8 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  v5 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale"];
  [v5 setFromValue:&unk_2877AD108];
  [v5 setToValue:&unk_2877AD118];
  [v5 setDuration:0.200000003];
  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:v3];
  v6 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [v6 addAnimation:v5 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  v7 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [v7 addAnimation:v5 forKey:@"SHListeningShazamButtonScaleAnimationKey"];
}

- (void)addTouchDownAnimation
{
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  v3 = [(SHListeningLayer *)self shazamButtonLayer];
  v4 = [v3 presentationLayer];
  v5 = [v4 valueForKeyPath:@"transform.scale"];
  [v8 setFromValue:v5];

  [v8 setToValue:&unk_2877AD118];
  [v8 setDuration:0.349999994];
  [v8 setFillMode:*MEMORY[0x277CDA238]];
  [v8 setRemovedOnCompletion:0];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v8 setTimingFunction:v6];

  v7 = [(SHListeningLayer *)self shazamButtonLayer];
  [v7 addAnimation:v8 forKey:@"SHListeningShazamButtonScaleAnimationKey"];
}

- (void)animateToStoppedStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [v5 removeAllAnimations];

  v6 = [(SHListeningLayer *)self shazamButtonLayer];
  [v6 removeAllAnimations];

  v7 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [v7 removeAllAnimations];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:v4];

  v8 = [(SHListeningLayer *)self shazamButtonLayer];
  v9 = [v8 presentationLayer];
  v43 = [v9 valueForKeyPath:@"sublayerTransform.scale"];

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

  v14 = [(SHListeningLayer *)self shazamButtonLayer];
  [v14 addAnimation:v10 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  v15 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  v16 = [v15 presentationLayer];
  v42 = [v16 valueForKeyPath:@"transform.scale"];

  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v17 setFromValue:v42];
  [v17 setToValue:&unk_2877AD0E8];
  [v17 setDuration:0.349999994];
  [v17 setRemovedOnCompletion:0];
  [v17 setFillMode:v11];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:v12];
  [v17 setTimingFunction:v18];

  v19 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [v19 addAnimation:v17 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  v20 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [v20 addAnimation:v17 forKey:@"SHListeningShazamButtonScaleAnimationKey"];

  v21 = [(SHListeningLayer *)self innerCirclesLayer];
  v22 = [v21 presentationLayer];
  v41 = [v22 valueForKeyPath:@"transform.scale"];

  v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v23 setFromValue:v41];
  [v23 setToValue:&unk_2877AD128];
  [v23 setDuration:0.349999994];
  [v23 setRemovedOnCompletion:0];
  [v23 setFillMode:v11];
  v38 = *MEMORY[0x277CDA7B0];
  v24 = [MEMORY[0x277CD9EF8] functionWithName:?];
  [v23 setTimingFunction:v24];

  v25 = [(SHListeningLayer *)self innerCirclesLayer];
  [v25 addAnimation:v23 forKey:@"SHListeningInnerCirclesScaleAnimationKey"];

  v26 = [(SHListeningLayer *)self outerCirclesLayer];
  v27 = [v26 presentationLayer];
  v39 = [v27 valueForKeyPath:@"opacity"];

  v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v28 setFromValue:v39];
  [v28 setToValue:&unk_2877AD138];
  [v28 setDuration:0.5];
  [v28 setRemovedOnCompletion:0];
  [v28 setFillMode:v11];
  v29 = [MEMORY[0x277CD9EF8] functionWithName:v40];
  [v28 setTimingFunction:v29];

  v30 = [(SHListeningLayer *)self outerCirclesLayer];
  [v30 addAnimation:v28 forKey:@"SHListeningOuterCirclesOpacityAnimationKey"];

  v31 = [(SHListeningLayer *)self autoShadowLayer];
  v32 = [v31 presentationLayer];
  v33 = [v32 valueForKeyPath:@"transform.scale"];

  v34 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v34 setFromValue:v33];
  [v34 setToValue:&unk_2877AD148];
  [v34 setDuration:0.5];
  [v34 setRemovedOnCompletion:0];
  [v34 setFillMode:v11];
  v35 = [MEMORY[0x277CD9EF8] functionWithName:v38];
  [v34 setTimingFunction:v35];

  v36 = [(SHListeningLayer *)self autoShadowLayer];
  [v36 addAnimation:v34 forKey:0];

  v37 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [v37 addAnimation:v34 forKey:@"SHListeningAutoShadowScaleAnimationKey"];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)addInnerCirclesLayer
{
  v3 = [(SHListeningLayer *)self innerCirclesLayer];
  if (v3 || ([(SHListeningLayer *)self innerCirclesContainerLayer], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v4 = [(SHListeningLayer *)self innerCirclesLayer];
    [v4 removeFromSuperlayer];

    v5 = [(SHListeningLayer *)self innerCirclesContainerLayer];
    [v5 removeFromSuperlayer];

    v6 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
    [v6 removeFromSuperlayer];

    goto LABEL_5;
  }

  v17 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];

  if (v17)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningLayer *)self setInnerCirclesContainerLayer:v7];

  v8 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  v9 = [(SHListeningLayer *)self shazamButtonLayer];
  [(SHListeningLayer *)self insertSublayer:v8 below:v9];

  v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningLayer *)self setInnerCirclesSecondaryContainerLayer:v10];

  v11 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  v12 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [v11 addSublayer:v12];

  v13 = [SHListeningInnerCirclesLayer alloc];
  v14 = [(SHListeningLayer *)self palette];
  v15 = [(SHPaletteLayer *)v13 initWithPalette:v14];
  [(SHListeningLayer *)self setInnerCirclesLayer:v15];

  v18 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  v16 = [(SHListeningLayer *)self innerCirclesLayer];
  [v18 addSublayer:v16];
}

- (void)addOuterCirclesLayer
{
  v3 = [(SHListeningLayer *)self outerCirclesLayer];

  if (v3)
  {
    v4 = [(SHListeningLayer *)self outerCirclesLayer];
    [v4 removeFromSuperlayer];
  }

  v5 = [SHListeningOuterCirclesLayer alloc];
  v6 = [(SHListeningLayer *)self palette];
  v7 = [(SHPaletteLayer *)v5 initWithPalette:v6];
  [(SHListeningLayer *)self setOuterCirclesLayer:v7];

  v8 = [(SHListeningLayer *)self outerCirclesLayer];
  [(SHListeningLayer *)self addSublayer:v8];
}

- (void)addAutoShadowLayer
{
  v3 = [(SHListeningLayer *)self autoShadowLayer];
  if (v3)
  {
  }

  else
  {
    v4 = [(SHListeningLayer *)self autoShadowContainerLayer];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = [(SHListeningLayer *)self autoShadowLayer];
  [v5 removeFromSuperlayer];

  v6 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [v6 removeFromSuperlayer];

LABEL_5:
  v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningLayer *)self setAutoShadowContainerLayer:v7];

  v8 = [(SHListeningLayer *)self autoShadowContainerLayer];
  v9 = [(SHListeningLayer *)self shazamButtonLayer];
  [(SHListeningLayer *)self insertSublayer:v8 below:v9];

  v10 = [SHListeningAutoShadowLayer alloc];
  v11 = [(SHListeningLayer *)self palette];
  v12 = [(SHPaletteLayer *)v10 initWithPalette:v11];
  [(SHListeningLayer *)self setAutoShadowLayer:v12];

  v14 = [(SHListeningLayer *)self autoShadowContainerLayer];
  v13 = [(SHListeningLayer *)self autoShadowLayer];
  [v14 addSublayer:v13];
}

- (void)addInnerCirclesToShazamButtonMaskLayer
{
  v3 = [SHInnerCircleMaskLayer alloc];
  v4 = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:v4];
  [(SHListeningLayer *)self setInnerCircleToShazamButtonMaskLayer:v5];

  v6 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  [v6 setInnerCircleRelativeSize:3.5];

  v8 = [(SHListeningLayer *)self innerCircleToShazamButtonMaskLayer];
  v7 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [v7 setMask:v8];
}

- (void)addInnerCircleToAutoShadowMaskLayer
{
  v3 = [SHInnerCircleMaskLayer alloc];
  v4 = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:v4];
  [(SHListeningLayer *)self setInnerCircleToAutoShadowMaskLayer:v5];

  v6 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  [v6 setInnerCircleRelativeSize:3.5];

  v8 = [(SHListeningLayer *)self innerCircleToAutoShadowMaskLayer];
  v7 = [(SHListeningLayer *)self innerCirclesSecondaryContainerLayer];
  [v7 setMask:v8];
}

- (void)addAutoShadowToShazamButtonMaskLayer
{
  v3 = [SHInnerCircleMaskLayer alloc];
  v4 = [(SHListeningLayer *)self palette];
  v5 = [(SHPaletteLayer *)v3 initWithPalette:v4];
  [(SHListeningLayer *)self setAutoShadowToShazamButtonMaskLayer:v5];

  v6 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  [v6 setInnerCircleRelativeSize:3.5];

  v8 = [(SHListeningLayer *)self autoShadowToShazamButtonMaskLayer];
  v7 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [v7 setMask:v8];
}

- (void)removeAnimationLayers
{
  v3 = [(SHListeningLayer *)self innerCirclesContainerLayer];
  [v3 removeFromSuperlayer];

  v4 = [(SHListeningLayer *)self autoShadowContainerLayer];
  [v4 removeFromSuperlayer];

  v5 = [(SHListeningLayer *)self outerCirclesLayer];
  [v5 removeFromSuperlayer];

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
  v2 = [(SHListeningLayer *)self viewDelegate];
  [v2 willFinishDrawingShazamShape];
}

- (SHListeningLayerDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

@end