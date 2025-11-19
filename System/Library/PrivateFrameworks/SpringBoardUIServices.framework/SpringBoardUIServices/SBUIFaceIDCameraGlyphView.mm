@interface SBUIFaceIDCameraGlyphView
- (CGAffineTransform)localTransform;
- (SBUIFaceIDCameraGlyphView)initWithFrame:(CGRect)a3;
- (void)_flyInWithText:(BOOL)a3 delay:(double)a4;
- (void)_installMask;
- (void)_removeAnimations;
- (void)_setAlpha:(double)a3 onComponents:(id)a4 completion:(id)a5;
- (void)_updateCallToActionLabelFont;
- (void)layoutSubviews;
- (void)setLegibilitySettings:(id)a3;
- (void)setLocalTransform:(CGAffineTransform *)a3;
- (void)setState:(unint64_t)a3 delay:(double)a4;
@end

@implementation SBUIFaceIDCameraGlyphView

- (SBUIFaceIDCameraGlyphView)initWithFrame:(CGRect)a3
{
  v57.receiver = self;
  v57.super_class = SBUIFaceIDCameraGlyphView;
  v3 = [(SBUIFaceIDCameraGlyphView *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBUIFaceIDCameraGlyphView *)v3 bs_setHitTestingDisabled:1];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__updateCallToActionLabelFont name:*MEMORY[0x1E69DDC48] object:0];

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    arrowContainer = v4->_arrowContainer;
    v4->_arrowContainer = v7;

    [(SBUIFaceIDCameraGlyphView *)v4 addSubview:v4->_arrowContainer];
    v9 = [MEMORY[0x1E69AE158] materialViewWithRecipe:1];
    arrowBackgroundView = v4->_arrowBackgroundView;
    v4->_arrowBackgroundView = v9;

    [(MTMaterialView *)v4->_arrowBackgroundView _setCornerRadius:15.0];
    [(MTMaterialView *)v4->_arrowBackgroundView setWeighting:1.0];
    [(UIView *)v4->_arrowContainer addSubview:v4->_arrowBackgroundView];
    v11 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskTopLayer = v4->_maskTopLayer;
    v4->_maskTopLayer = v11;

    v13 = [MEMORY[0x1E69DC888] redColor];
    -[CALayer setBackgroundColor:](v4->_maskTopLayer, "setBackgroundColor:", [v13 CGColor]);

    v14 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskLeftLayer = v4->_maskLeftLayer;
    v4->_maskLeftLayer = v14;

    v16 = [MEMORY[0x1E69DC888] redColor];
    -[CALayer setBackgroundColor:](v4->_maskLeftLayer, "setBackgroundColor:", [v16 CGColor]);

    v17 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskRightLayer = v4->_maskRightLayer;
    v4->_maskRightLayer = v17;

    v19 = [MEMORY[0x1E69DC888] redColor];
    -[CALayer setBackgroundColor:](v4->_maskRightLayer, "setBackgroundColor:", [v19 CGColor]);

    v20 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskContainerLayer = v4->_maskContainerLayer;
    v4->_maskContainerLayer = v20;

    [(CALayer *)v4->_maskContainerLayer addSublayer:v4->_maskTopLayer];
    [(CALayer *)v4->_maskContainerLayer addSublayer:v4->_maskLeftLayer];
    [(CALayer *)v4->_maskContainerLayer addSublayer:v4->_maskRightLayer];
    v22 = MEMORY[0x1E69DCAB8];
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [MEMORY[0x1E69DCEB0] mainScreen];
    v25 = [v24 traitCollection];
    v26 = [v22 imageNamed:@"CameraCoveredTail" inBundle:v23 compatibleWithTraitCollection:v25];
    v27 = [v26 sbf_imageUsingContextType:4];

    v28 = objc_alloc(MEMORY[0x1E69DD5C8]);
    v29 = [(SBUIFaceIDCameraGlyphView *)v4 legibilitySettings];
    v30 = [v28 initWithSettings:v29 strength:v27 image:0.25];
    arrowTail = v4->_arrowTail;
    v4->_arrowTail = v30;

    [(_UILegibilityView *)v4->_arrowTail setContentMode:4];
    [(MTMaterialView *)v4->_arrowBackgroundView addSubview:v4->_arrowTail];
    v32 = MEMORY[0x1E69DCAB8];
    v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v34 = [MEMORY[0x1E69DCEB0] mainScreen];
    v35 = [v34 traitCollection];
    v36 = [v32 imageNamed:@"CameraCovered" inBundle:v33 compatibleWithTraitCollection:v35];
    v37 = [v36 sbf_imageUsingContextType:4];

    v38 = objc_alloc(MEMORY[0x1E69DD5C8]);
    v39 = [(SBUIFaceIDCameraGlyphView *)v4 legibilitySettings];
    v40 = [v38 initWithSettings:v39 strength:v37 image:0.25];
    arrowHead = v4->_arrowHead;
    v4->_arrowHead = v40;

    [(_UILegibilityView *)v4->_arrowHead setContentMode:4];
    [(MTMaterialView *)v4->_arrowBackgroundView addSubview:v4->_arrowHead];
    v42 = objc_alloc_init(MEMORY[0x1E69DD250]);
    localRotationView = v4->_localRotationView;
    v4->_localRotationView = v42;

    [(SBUIFaceIDCameraGlyphView *)v4 addSubview:v4->_localRotationView];
    v44 = v4->_localRotationView;
    v45 = *&v4->_localTransform.a;
    v46 = *&v4->_localTransform.tx;
    v56[1] = *&v4->_localTransform.c;
    v56[2] = v46;
    v56[0] = v45;
    [(UIView *)v44 setTransform:v56];
    v47 = [SBUILegibilityLabel alloc];
    v48 = [(SBUIFaceIDCameraGlyphView *)v4 legibilitySettings];
    v49 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v50 = [v49 localizedStringForKey:@"CAMERA_COVERED_CALL_TO_ACTION" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices_Late_Fall_2018_iOS"];
    v51 = SBUICurrentPreferredFontForCoachingText();
    v52 = [(SBUILegibilityLabel *)v47 initWithSettings:v48 strength:v50 string:v51 font:0.25];
    callToActionLabel = v4->_callToActionLabel;
    v4->_callToActionLabel = v52;

    [(SBUILegibilityLabel *)v4->_callToActionLabel setNumberOfLines:3];
    [(UIView *)v4->_localRotationView addSubview:v4->_callToActionLabel];
    v54 = [(MTMaterialView *)v4->_arrowBackgroundView layer];
    [v54 setAllowsGroupOpacity:1];

    [(UIView *)v4->_arrowContainer setAlpha:0.0];
    [(SBUILegibilityLabel *)v4->_callToActionLabel setAlpha:0.0];
    [(SBUIFaceIDCameraGlyphView *)v4 _installMask];
  }

  return v4;
}

- (void)_installMask
{
  maskContainerLayer = self->_maskContainerLayer;
  v4 = [(_UILegibilityView *)self->_arrowHead shadowImageView];
  v5 = [v4 layer];
  v6 = [v5 mask];

  if (maskContainerLayer != v6)
  {
    v7 = [(_UILegibilityView *)self->_arrowHead shadowImageView];
    v8 = [v7 layer];
    [v8 setMask:self->_maskContainerLayer];

    [(SBUIFaceIDCameraGlyphView *)self setNeedsLayout];
  }
}

- (void)setState:(unint64_t)a3 delay:(double)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    if (state)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            return;
          }

          v19[0] = self->_callToActionLabel;
          v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, a4}];
          [(SBUIFaceIDCameraGlyphView *)self _fadeComponentsIn:v6 completion:0];
          goto LABEL_13;
        }

        callToActionLabel = self->_callToActionLabel;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&callToActionLabel count:{1, a4}];
        v8 = self;
        v9 = v6;
        v10 = 0;
      }

      else
      {
        arrowContainer = self->_arrowContainer;
        v17[0] = self->_callToActionLabel;
        v17[1] = arrowContainer;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{2, a4}];
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __44__SBUIFaceIDCameraGlyphView_setState_delay___block_invoke;
        v15 = &unk_1E789DC08;
        v16 = self;
        v10 = &v12;
        v8 = self;
        v9 = v6;
      }

      [(SBUIFaceIDCameraGlyphView *)v8 _fadeComponentsOut:v9 completion:v10, v12, v13, v14, v15, v16];
LABEL_13:

      return;
    }

    v7 = a3 == 2;

    [(SBUIFaceIDCameraGlyphView *)self _flyInWithText:v7 delay:a4];
  }
}

- (void)_flyInWithText:(BOOL)a3 delay:(double)a4
{
  v6 = 0x1E698E000uLL;
  v7 = 0x1E698E000uLL;
  if (a3)
  {
    v8 = [MEMORY[0x1E698E708] settingsWithMass:3.0 stiffness:200.0 damping:38.0];
    [v8 setDelay:a4 + 0.045];
    v9 = [(SBUIFaceIDCameraGlyphView *)self window];
    v10 = [v9 interfaceOrientation];

    v11 = 300.0;
    if (v10 != 3)
    {
      v11 = 0.0;
    }

    if (v10 == 4)
    {
      v11 = -300.0;
    }

    callToActionLabel = self->_callToActionLabel;
    CGAffineTransformMakeTranslation(&v37, v11, 0.0);
    [(SBUILegibilityLabel *)callToActionLabel setTransform:&v37];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50__SBUIFaceIDCameraGlyphView__flyInWithText_delay___block_invoke;
    v36[3] = &unk_1E789DA38;
    v36[4] = self;
    [MEMORY[0x1E698E7D0] animateWithSettings:v8 actions:v36];
    v13 = MEMORY[0x1E698E608];
    v14 = *MEMORY[0x1E6979EB8];
    v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v16 = [v13 settingsWithDuration:v15 delay:0.5 timingFunction:a4 + 0.265];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __50__SBUIFaceIDCameraGlyphView__flyInWithText_delay___block_invoke_2;
    v35[3] = &unk_1E789DA38;
    v35[4] = self;
    [MEMORY[0x1E698E7D0] animateWithSettings:v16 actions:v35];
    v17 = [MEMORY[0x1E6979390] animation];
    [v17 setDuration:0.7];
    [v17 setRemovedOnCompletion:1];
    [v17 setBeginTime:CACurrentMediaTime() + 0.335 + a4];
    [v17 setValues:&unk_1F1DB5CF8];
    [v17 setKeyTimes:&unk_1F1DB5D10];
    v18 = [(_UILegibilityView *)self->_arrowTail layer];
    [v18 addAnimation:v17 forKey:@"transform.translation.y"];

    v7 = 0x1E698E000;
    v6 = 0x1E698E000;
  }

  else
  {
    v14 = *MEMORY[0x1E6979EB8];
  }

  v19 = [*(v6 + 1800) settingsWithMass:3.0 stiffness:250.0 damping:50.0];
  v20 = v19;
  v21 = a4 + -0.005;
  if (a4 + -0.005 < 0.0)
  {
    v21 = 0.0;
  }

  [v19 setDelay:v21];
  arrowContainer = self->_arrowContainer;
  CGAffineTransformMakeTranslation(&v37, 0.0, 300.0);
  [(UIView *)arrowContainer setTransform:&v37];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __50__SBUIFaceIDCameraGlyphView__flyInWithText_delay___block_invoke_48;
  v34[3] = &unk_1E789DA38;
  v34[4] = self;
  [MEMORY[0x1E698E7D0] animateWithSettings:v20 actions:v34];
  v23 = *(v7 + 1544);
  v24 = [MEMORY[0x1E69793D0] functionWithName:v14];
  v25 = [v23 settingsWithDuration:v24 delay:0.5 timingFunction:a4 + 0.04];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __50__SBUIFaceIDCameraGlyphView__flyInWithText_delay___block_invoke_2_49;
  v33[3] = &unk_1E789DA38;
  v33[4] = self;
  [MEMORY[0x1E698E7D0] animateWithSettings:v25 actions:v33];
  v26 = [MEMORY[0x1E6979318] animation];
  [v26 setDuration:0.75];
  [v26 setBeginTime:CACurrentMediaTime() + 0.7464 + a4];
  [v26 setRemovedOnCompletion:0];
  [v26 setAutoreverses:1];
  LODWORD(v27) = 2139095040;
  [v26 setRepeatCount:v27];
  [v26 setKeyPath:@"transform.translation.y"];
  [v26 setFromValue:&unk_1F1DB5AB8];
  [v26 setToValue:&unk_1F1DB5C10];
  LODWORD(v28) = 0.5;
  LODWORD(v29) = 0.5;
  LODWORD(v30) = 1.0;
  v31 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :0.0 :v29 :v30];
  [v26 setTimingFunction:v31];

  v32 = [(_UILegibilityView *)self->_arrowHead layer];
  [v32 addAnimation:v26 forKey:@"transform.translation.y"];
}

uint64_t __50__SBUIFaceIDCameraGlyphView__flyInWithText_delay___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 424);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __50__SBUIFaceIDCameraGlyphView__flyInWithText_delay___block_invoke_48(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)_setAlpha:(double)a3 onComponents:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E698E608] settingsWithDuration:0.2];
  v10 = MEMORY[0x1E698E7D0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__SBUIFaceIDCameraGlyphView__setAlpha_onComponents_completion___block_invoke;
  v15[3] = &unk_1E789DD70;
  v16 = v7;
  v17 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SBUIFaceIDCameraGlyphView__setAlpha_onComponents_completion___block_invoke_2;
  v13[3] = &unk_1E789DBE0;
  v14 = v8;
  v11 = v8;
  v12 = v7;
  [v10 animateWithSettings:v9 actions:v15 completion:v13];
}

void __63__SBUIFaceIDCameraGlyphView__setAlpha_onComponents_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t __63__SBUIFaceIDCameraGlyphView__setAlpha_onComponents_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_removeAnimations
{
  v17 = *MEMORY[0x1E69E9840];
  arrowTail = self->_arrowTail;
  v15[0] = self->_callToActionLabel;
  v15[1] = arrowTail;
  arrowHead = self->_arrowHead;
  arrowContainer = self->_arrowContainer;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15[2] = arrowHead;
  v15[3] = arrowContainer;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{4, 0}];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) layer];
        [v10 removeAllAnimations];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)layoutSubviews
{
  v65.receiver = self;
  v65.super_class = SBUIFaceIDCameraGlyphView;
  [(SBUIFaceIDCameraGlyphView *)&v65 layoutSubviews];
  [(SBUIFaceIDCameraGlyphView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(_UILegibilityView *)self->_arrowHead image];
  [v9 size];

  [(UIView *)self->_arrowContainer setFrame:0.0, 0.0, 80.0, 80.0];
  [(MTMaterialView *)self->_arrowBackgroundView setFrame:0.0, 0.0, 80.0, 80.0];
  v10 = SBUIFaceIDCameraOrientationForDevice();
  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2 || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1 || SBFEffectiveHomeButtonType() != 2)
    {
LABEL_14:

      goto LABEL_15;
    }
  }

  v13 = __sb__runningInSpringBoard();
  v14 = v13;
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  if ((v14 & 1) == 0)
  {
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v6 < v8 != (v10 == 2))
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  v61 = v15 * 0.5;
  [(UIView *)self->_arrowContainer setCenter:?];
  v16 = [(_UILegibilityView *)self->_arrowHead image];
  [v16 size];
  v18 = (80.0 - v17) * 0.5;

  [(UIView *)self->_arrowContainer bounds];
  v67 = CGRectInset(v66, v18, 14.0);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v56 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  origin = slice.origin;
  slice.size = v56;
  remainder.origin = slice.origin;
  remainder.size = v56;
  v23 = [(_UILegibilityView *)self->_arrowHead image];
  [v23 size];
  v25 = v24;
  v68.origin.x = x;
  v59 = x;
  v60 = y;
  v68.origin.y = y;
  v68.size.width = width;
  recta = width;
  v68.size.height = height;
  CGRectDivide(v68, &slice, &remainder, v25, CGRectMinYEdge);

  [(_UILegibilityView *)self->_arrowHead setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  v62.origin = origin;
  v62.size = v56;
  v26 = [(_UILegibilityView *)self->_arrowTail image];
  [v26 size];
  v28 = v27;
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  CGRectDivide(v69, &v62, &remainder, v28, CGRectMaxYEdge);

  [(_UILegibilityView *)self->_arrowTail setFrame:v62.origin.x, v62.origin.y, v62.size.width, v62.size.height];
  v29 = [(_UILegibilityView *)self->_arrowHead shadowImageView];
  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [(CALayer *)self->_maskContainerLayer setFrame:v31, v33, v35, v37];
  v38 = v37 * 0.5 + slice.size.height * 0.5;
  v39 = [(_UILegibilityView *)self->_arrowTail image];
  [v39 size];
  v41 = (v35 - v40) * 0.5;
  v42 = v37 - v38;

  v43 = [(_UILegibilityView *)self->_arrowTail image];
  [v43 size];
  v45 = (v35 + v44) * 0.5;
  v46 = [(_UILegibilityView *)self->_arrowTail image];
  [v46 size];
  v48 = (v35 - v47) * 0.5;

  [(CALayer *)self->_maskTopLayer setFrame:0.0, 0.0, v35, v38];
  [(CALayer *)self->_maskLeftLayer setFrame:0.0, v38, v41, v42];
  [(CALayer *)self->_maskRightLayer setFrame:v45, v38, v48, v42];
  [(SBUILegibilityLabel *)self->_callToActionLabel sizeThatFits:165.0, 1.79769313e308];
  v50 = v49;
  v52 = v51;
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v50;
  v70.size.height = v52;
  v53 = CGRectGetWidth(v70) * 0.5;
  v71.origin.x = v59;
  v71.origin.y = v60;
  v71.size.width = recta;
  v71.size.height = height;
  v54 = v53 + CGRectGetMaxY(v71) + 20.0;
  [(UIView *)self->_localRotationView setBounds:0.0, 0.0, v50, v52];
  [(UIView *)self->_localRotationView setCenter:v61, v54];
  callToActionLabel = self->_callToActionLabel;
  [(UIView *)self->_localRotationView bounds];
  [(SBUILegibilityLabel *)callToActionLabel setFrame:?];
  [(MTMaterialView *)self->_arrowBackgroundView setWeighting:1.0];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(_UILegibilityView *)self->_arrowHead updateForChangedSettings:self->_legibilitySettings];
    [(_UILegibilityView *)self->_arrowTail updateForChangedSettings:self->_legibilitySettings];
    [(SBUILegibilityLabel *)self->_callToActionLabel setLegibilitySettings:self->_legibilitySettings];
    [(SBUIFaceIDCameraGlyphView *)self _installMask];
  }
}

- (void)setLocalTransform:(CGAffineTransform *)a3
{
  p_localTransform = &self->_localTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_localTransform.c;
  *&v12.a = *&self->_localTransform.a;
  *&v12.c = v7;
  *&v12.tx = *&self->_localTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_localTransform->c = *&a3->c;
    *&p_localTransform->tx = v9;
    *&p_localTransform->a = v8;
    localRotationView = self->_localRotationView;
    v11 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v11;
    *&t1.tx = *&a3->tx;
    [(UIView *)localRotationView setTransform:&t1];
  }
}

- (void)_updateCallToActionLabelFont
{
  v3 = SBUICurrentPreferredFontForCoachingText();
  [(SBUILegibilityLabel *)self->_callToActionLabel setFont:v3];
  [(SBUIFaceIDCameraGlyphView *)self setNeedsLayout];
}

- (CGAffineTransform)localTransform
{
  v3 = *&self[10].ty;
  *&retstr->a = *&self[10].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].b;
  return self;
}

@end