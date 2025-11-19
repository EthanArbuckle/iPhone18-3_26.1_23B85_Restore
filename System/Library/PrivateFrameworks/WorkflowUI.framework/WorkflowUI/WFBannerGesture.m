@interface WFBannerGesture
- (CGPoint)effectiveScaleForTranslation:(double)a3;
- (UIScrollView)embeddedScrollView;
- (UIView)dimmingView;
- (WFBannerGesture)initWithView:(id)a3;
- (WFBannerGestureDelegate)delegate;
- (double)excessTranslationForBoundedScrollViewWithInputTranslation:(double)a3 recognizer:(id)a4;
- (double)rubberBandedTranslationForTranslation:(double)a3;
- (id)gestureSettings;
- (void)beginTrackingWithGestureRecognizer:(id)a3;
- (void)continueTrackingWithGestureRecognizer:(id)a3;
- (void)endTrackingWithGestureRecognizer:(id)a3;
- (void)handlePanGesture:(id)a3;
- (void)setDimmingLayerAlpha:(double)a3 response:(double)a4;
- (void)setEmbeddedScrollView:(id)a3;
@end

@implementation WFBannerGesture

- (UIView)dimmingView
{
  WeakRetained = objc_loadWeakRetained(&self->_dimmingView);

  return WeakRetained;
}

- (UIScrollView)embeddedScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedScrollView);

  return WeakRetained;
}

- (WFBannerGestureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)effectiveScaleForTranslation:(double)a3
{
  v5 = [(WFBannerGesture *)self gestureSettings];
  v6 = [v5 squeezeEnabled];
  if (a3 <= 0.0 || v6 == 0)
  {
    [v5 trackingScale];
    v9 = v8;
    v10 = [(WFBannerGesture *)self view];
    [v10 frame];
    v12 = v11;

    if (v12 > 300.0)
    {
      v9 = v9 + (v12 + -300.0) * v9 * -0.003;
    }

    BSUIConstrainValueWithRubberBand();
    v14 = v13 * -0.005 * v9;
    BSUIConstrainValueWithRubberBand();
    v16 = v15 * -0.01;
    [v5 squeeze_up];
    v18 = v16 * v17;
    v20 = v14 + 1.0;
    v23 = v14 + 1.0 + v18;
  }

  else
  {
    BSUIConstrainValueWithRubberBand();
    v20 = v19 / -7500.0 + 1.0;
    v21 = v19 / 1000.0;
    [v5 trackingSqueezeFactor];
    v23 = v21 * v22 + 1.0;
  }

  v24 = v20;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (double)rubberBandedTranslationForTranslation:(double)a3
{
  v4 = [(WFBannerGesture *)self gestureSettings];
  if ([v4 rubberBandingEnabled])
  {
    [v4 bottomLimit];
    if (v5 >= a3)
    {
      [v4 topLimit];
      if (v9 > a3)
      {
        [v4 topLimit];
        v11 = v10;
        [v4 topLimit];
        [v4 topRubberBandRange];
        BSUIConstrainValueWithRubberBand();
        a3 = v11 - v12;
      }
    }

    else
    {
      [v4 bottomLimit];
      v7 = v6;
      [v4 bottomLimit];
      [v4 bottomRubberBandRange];
      BSUIConstrainValueWithRubberBand();
      a3 = v7 + v8;
    }
  }

  return a3;
}

- (double)excessTranslationForBoundedScrollViewWithInputTranslation:(double)a3 recognizer:(id)a4
{
  v6 = a4;
  v7 = [(WFBannerGesture *)self gestureSettings];
  v8 = [(WFBannerGesture *)self embeddedScrollView];
  if (!WFUIScrollViewCanScroll(v8))
  {
LABEL_14:

    goto LABEL_15;
  }

  v9 = [(WFBannerGesture *)self embeddedScrollView];
  v10 = [v9 panGestureRecognizer];

  if (v10 == v6)
  {
    [(WFBannerGesture *)self initialScrollOffset];
    v12 = v11;
    v13 = [(WFBannerGesture *)self embeddedScrollView];
    [v13 contentSize];
    v14 = [(WFBannerGesture *)self embeddedScrollView];
    [v14 frame];

    v15 = [(WFBannerGesture *)self view];
    UIRoundToViewScale();
    v17 = v16;

    if (![(WFBannerGesture *)self scrollViewGestureState])
    {
      [v7 scrollDismissalActivationLeniency];
      v19 = v18;
      [(WFBannerGesture *)self initialScrollOffset];
      if (v20 <= 0.0)
      {
        [(WFBannerGesture *)self initialScrollOffset];
        if (a3 > 0.0 && v25 >= -v19)
        {
          [(WFBannerGesture *)self setScrollViewGestureState:3];
          [(WFBannerGesture *)self initialScrollOffset];
          if (v26 == 0.0)
          {
            goto LABEL_7;
          }

LABEL_23:
          v22 = 1;
          goto LABEL_8;
        }
      }

      [(WFBannerGesture *)self initialScrollOffset];
      if (v21 < v17 || ([(WFBannerGesture *)self initialScrollOffset], a3 >= 0.0) || v27 > v17 + v19)
      {
        [(WFBannerGesture *)self setScrollViewGestureState:1];
      }

      else
      {
        [(WFBannerGesture *)self setScrollViewGestureState:2];
        [(WFBannerGesture *)self initialScrollOffset];
        if (v28 != v17)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_7:
    v22 = 0;
LABEL_8:
    v29[1] = 3221225472;
    v29[0] = MEMORY[0x277D85DD0];
    v29[2] = __88__WFBannerGesture_excessTranslationForBoundedScrollViewWithInputTranslation_recognizer___block_invoke;
    v29[3] = &unk_279EE8AF0;
    v23 = v12 - a3;
    v30 = v22;
    v29[4] = self;
    v8 = _Block_copy(v29);
    if ([(WFBannerGesture *)self scrollViewGestureState]== 3 && v23 < 0.0)
    {
      v8[2](v8, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      a3 = -v23;
    }

    else
    {
      a3 = 0.0;
      if ([(WFBannerGesture *)self scrollViewGestureState]== 2 && v23 > v17)
      {
        v8[2](v8, 0.0, v17);
        a3 = v17 - v23;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return a3;
}

void __88__WFBannerGesture_excessTranslationForBoundedScrollViewWithInputTranslation_recognizer___block_invoke(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 40) == 1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __88__WFBannerGesture_excessTranslationForBoundedScrollViewWithInputTranslation_recognizer___block_invoke_2;
    v6[3] = &unk_279EE8AC8;
    v6[4] = *(a1 + 32);
    *&v6[5] = a2;
    *&v6[6] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:0 animations:0.35 completion:0.0];
  }

  else
  {
    v5 = [*(a1 + 32) embeddedScrollView];
    [v5 setContentOffset:{a2, a3}];
  }
}

void __88__WFBannerGesture_excessTranslationForBoundedScrollViewWithInputTranslation_recognizer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) embeddedScrollView];
  [v2 setContentOffset:{*(a1 + 40), *(a1 + 48)}];
}

- (void)setDimmingLayerAlpha:(double)a3 response:(double)a4
{
  v7 = [(WFBannerGesture *)self dimmingView];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__WFBannerGesture_setDimmingLayerAlpha_response___block_invoke;
    v8[3] = &unk_279EE89D8;
    v8[4] = self;
    *&v8[5] = a3;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v8 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:a4 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  }
}

uint64_t __49__WFBannerGesture_setDimmingLayerAlpha_response___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__WFBannerGesture_setDimmingLayerAlpha_response___block_invoke_2;
  v4[3] = &unk_279EE89D8;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __49__WFBannerGesture_setDimmingLayerAlpha_response___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dimmingView];
  [v2 setAlpha:*(a1 + 40)];
}

- (void)endTrackingWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerGesture *)self gestureSettings];
  v6 = [(WFBannerGesture *)self view];
  v7 = [v6 superview];
  [v4 translationInView:v7];
  v9 = v8;

  v10 = [(WFBannerGesture *)self view];
  v11 = [v10 superview];
  [v4 velocityInView:v11];
  v13 = v12;
  v15 = v14;

  [(WFBannerGesture *)self excessTranslationForBoundedScrollViewWithInputTranslation:v4 recognizer:v9];
  v17 = v16;

  [(WFBannerGesture *)self rubberBandedTranslationForTranslation:v17];
  v19 = v18;
  _UIUpdateRequestDeactivate();
  if (([v5 testUnregisteredVelocityEdgeCase] & 1) != 0 || v15 > 0.0 && v9 < 100.0 || (v20 = 0, v15 < 0.0) && v9 > -100.0)
  {
    v20 = 1;
  }

  v21 = fabs(v15);
  if (v21 < 80.0)
  {
    goto LABEL_8;
  }

  v23 = v19 + v15 / 1000.0 * *MEMORY[0x277D76EC0] / (1.0 - *MEMORY[0x277D76EC0]);
  if (([v5 squeezeEnabled] || v19 <= 0.0 || v23 <= 150.0) && (v19 >= 0.0 || v23 >= -150.0))
  {
    v24 = +[WFBannerPrototypeSettings sharedSettings];
    if (![v24 blurFilterEnabled] || ((objc_msgSend(v5, "squeezeEnabled") & 1) != 0 || (objc_msgSend(v5, "blurTopLimit"), v17 >= v41)) && (objc_msgSend(v5, "blurBottomLimit"), v17 <= v42))
    {
      v22 = 0;
      goto LABEL_15;
    }

    if (v21 >= 20.0)
    {
LABEL_8:
      v22 = 0;
      goto LABEL_16;
    }
  }

  v24 = [(WFBannerGesture *)self embeddedScrollView];
  [v24 setBounces:0];
  v22 = 1;
LABEL_15:

LABEL_16:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke;
  aBlock[3] = &unk_279EE8A00;
  v25 = v5;
  v57 = v19;
  v58 = v13;
  v59 = v15;
  v55 = v25;
  v56 = self;
  v26 = _Block_copy(aBlock);
  if (v22)
  {
    if (v20)
    {
      [v25 phase1_impulse_unregisteredVelocity];
    }

    else
    {
      [v25 phase1_impulse];
    }

    v29 = v27;
    v30 = MEMORY[0x277D75D18];
    [v25 phase1_response];
    v32 = v31;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_10;
    v49[3] = &unk_279EE8A28;
    v52 = v13;
    v53 = v15;
    v33 = v25;
    v50 = v33;
    v51 = self;
    v28 = 0.0;
    [v30 _animateUsingSpringWithDampingRatio:0 response:v49 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v32 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:v29];
    [v33 phase1_phaseDuration];
    v35 = dispatch_time(0, (v34 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_12;
    block[3] = &unk_279EE8A50;
    v48 = v26;
    dispatch_after(v35, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_13;
    v46[3] = &unk_279EE8A78;
    v46[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v46 tracking:0 dampingRatioSmoothing:0.76 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    v28 = 1.0;
  }

  [(WFBannerGesture *)self setDimmingLayerAlpha:v28 response:0.55];
  v36 = [(WFBannerGesture *)self gestureSettings];
  v37 = [v36 squeezeEnabled];

  if (v17 > 0.0 && v37)
  {
    v38 = [(WFBannerGesture *)self embeddedScrollView];
    [v38 setBounces:0];

    v39 = dispatch_time(0, 100000000);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_189;
    v45[3] = &unk_279EE8A78;
    v45[4] = self;
    dispatch_after(v39, MEMORY[0x277D85CD0], v45);
  }

  v40 = dispatch_time(0, 160000000);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_2_190;
  v43[3] = &unk_279EE8AA0;
  v43[4] = self;
  v44 = v22;
  dispatch_after(v40, MEMORY[0x277D85CD0], v43);
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  [*(a1 + 32) poofResponse];
  v4 = v3;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_2;
  v24[3] = &unk_279EE8A00;
  v27 = *(a1 + 48);
  v5 = *(a1 + 32);
  v28 = *(a1 + 56);
  v6 = *(a1 + 40);
  v25 = v5;
  v26 = v6;
  [v2 _animateUsingSpringWithDampingRatio:0 response:v24 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v4 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  v7 = +[WFBannerPrototypeSettings sharedSettings];
  v8 = [v7 blurFilterEnabled];

  if (v8)
  {
    [*(a1 + 32) poofBlurDelay];
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_4;
    block[3] = &unk_279EE8C58;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v22 = v11;
    v23 = v12;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    if ([*(a1 + 32) alphaOutEnabled])
    {
      [*(a1 + 32) poofAlphaDelay];
      v14 = dispatch_time(0, (v13 * 1000000000.0));
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_7;
      v18[3] = &unk_279EE8C58;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v19 = v15;
      v20 = v16;
      v17 = MEMORY[0x277D85CD0];
      dispatch_after(v14, MEMORY[0x277D85CD0], v18);
    }
  }
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_11;
  v11[3] = &unk_279EE8A28;
  v14 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v11 animations:{v8, v9, v10}];
}

uint64_t __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_13(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_14;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_189(uint64_t a1)
{
  v1 = [*(a1 + 32) embeddedScrollView];
  [v1 setBounces:1];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_2_190(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 bannerGestureDidEndWithDismissal:*(a1 + 40)];
  }
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v6];

  v4 = [*(a1 + 32) view];
  v5 = [v4 layer];
  [v5 setValue:&unk_2883C22F0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 56);
  [*(a1 + 32) phase1_artificialInitialOffset];
  if (v2 <= 0.0)
  {
    v4 = -v3;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0.0;
  if (v4 < 0.0)
  {
    v6 = [*(a1 + 40) view];
    [v6 bounds];
    v8 = v7;
    [*(a1 + 32) phase1_initialScale];
    v5 = v8 * (1.0 - v9) * -0.5;
  }

  v10 = v4 + v5;
  [*(a1 + 32) phase1_initialScale];
  v12 = v11;
  [*(a1 + 32) phase1_initialScale];
  CGAffineTransformMakeScale(&t1, v12, v13);
  CGAffineTransformMakeTranslation(&v21, 0.0, v10);
  CGAffineTransformConcat(&v23, &t1, &v21);
  v14 = [*(a1 + 40) view];
  t1 = v23;
  [v14 setTransform:&t1];

  v15 = +[WFBannerPrototypeSettings sharedSettings];
  v16 = [v15 blurFilterEnabled];

  if (v16)
  {
    v17 = [*(a1 + 40) view];
    v18 = [v17 layer];
    v19 = MEMORY[0x277CCABB0];
    [*(a1 + 32) phase1_initialBlurRadius];
    v20 = [v19 numberWithDouble:?];
    [v18 setValue:v20 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_3;
  v10[3] = &unk_279EE8A00;
  v13 = *(a1 + 48);
  v6 = *(a1 + 32);
  v14 = *(a1 + 56);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v10 animations:{COERCE_DOUBLE(__PAIR64__(DWORD1(v14), LODWORD(minimum))), v8, v9}];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  [*(a1 + 32) poofBlurResponse];
  v4 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_5;
  v7[3] = &unk_279EE8C58;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v2 _animateUsingSpringWithDampingRatio:0 response:v7 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v4 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  [*(a1 + 32) poofAlphaResponse];
  v4 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_8;
  v7[3] = &unk_279EE8C58;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v2 _animateUsingSpringWithDampingRatio:0 response:v7 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v4 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_9;
  v10[3] = &unk_279EE8C58;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v10 animations:{v7, v8, v9}];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 layer];
  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 40) poofBlurRadius];
  v5 = [v4 numberWithDouble:?];
  [v3 setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v6 = [*(a1 + 32) view];
  v7 = [v6 layer];
  v9 = 1065353216;
  v11 = 0;
  v10 = 0;
  v12 = 0x3F80000000000000;
  v14 = 0;
  v13 = 0;
  v15 = 0x3F80000000000000;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v8 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v9];
  [v7 setValue:v8 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_6;
  v10[3] = &unk_279EE8C58;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v10 animations:{v7, v8, v9}];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 layer];
  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 40) poofBlurRadius];
  v5 = [v4 numberWithDouble:?];
  [v3 setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v6 = [*(a1 + 32) view];
  v7 = [v6 layer];
  v9 = 1065353216;
  v11 = 0;
  v10 = 0;
  v12 = 0x3F80000000000000;
  v14 = 0;
  v13 = 0;
  v15 = 0x3F80000000000000;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v8 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v9];
  [v7 setValue:v8 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
}

void __52__WFBannerGesture_endTrackingWithGestureRecognizer___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 <= 0.0)
  {
    [v3 poofScaleUp];
  }

  else
  {
    [v3 poofScaleDown];
  }

  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 <= 0.0)
  {
    v9 = 0.0;
    if (v6 < 0.0)
    {
      if ([*(a1 + 32) fixedEndTranslationUpEnabled])
      {
        v10 = *(a1 + 40);
        [*(a1 + 32) fixedEndTranslationUp];
        v12 = v11;
        [*(a1 + 32) poof_scale_multiplier_y];
        v14 = v5 * v13;
        v15 = [*(a1 + 40) view];
        [v15 bounds];
        [v10 topEdgeClampedTranslationForTranslation:v12 scale:v14 height:v16];
        v9 = v17;

        v18 = [*(a1 + 40) view];
        [v18 bounds];
        v20 = v19;

        if (v20 > 200.0)
        {
          v21 = [*(a1 + 40) view];
          [v21 bounds];
          v23 = (v22 + -200.0) * 0.08;

          v9 = v9 + v23;
        }
      }

      else
      {
        v24 = *(a1 + 48);
        [*(a1 + 32) poofThrowDistanceUp];
        v26 = v24 - v25;
        if (v26 <= -25.0)
        {
          v9 = v26;
        }

        else
        {
          v9 = -25.0;
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    [*(a1 + 32) poofThrowDistanceDown];
    v9 = v7 + v8;
  }

  [*(a1 + 32) poof_scale_multiplier_y];
  CGAffineTransformMakeScale(&t1, v5, v5 * v27);
  CGAffineTransformMakeTranslation(&v29, 0.0, v9);
  CGAffineTransformConcat(&v31, &t1, &v29);
  v28 = [*(a1 + 40) view];
  t1 = v31;
  [v28 setTransform:&t1];
}

- (void)continueTrackingWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerGesture *)self gestureSettings];
  v6 = [(WFBannerGesture *)self view];
  v7 = [v6 superview];
  [v4 translationInView:v7];
  v9 = v8;
  v11 = v10;

  [(WFBannerGesture *)self excessTranslationForBoundedScrollViewWithInputTranslation:v4 recognizer:v11];
  v13 = v12;

  [(WFBannerGesture *)self effectiveScaleForTranslation:v13];
  v15 = v14;
  v17 = v16;
  [(WFBannerGesture *)self rubberBandedTranslationForTranslation:v13];
  v19 = v18;
  if ([v5 testUnregisteredVelocityEdgeCase])
  {
    goto LABEL_22;
  }

  _UIUpdateRequestActivate();
  v20 = 0.0;
  if ([v5 horizontalTrackingEnabled])
  {
    if (v13 < 0.0 || v13 > 0.0 || ([(WFBannerGesture *)self embeddedScrollView], v21 = objc_claimAutoreleasedReturnValue(), CanScroll = WFUIScrollViewCanScroll(v21), v21, !CanScroll))
    {
      [v5 horizontalTrackingFriction];
      v20 = v9 * (1.0 - v23);
    }
  }

  v24 = MEMORY[0x277D75D18];
  [v5 trackingDampingRatio];
  v26 = v25;
  [v5 trackingResponse];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke;
  v50[3] = &unk_279EE89B0;
  v50[4] = self;
  v50[5] = v19;
  v50[6] = v15;
  v50[7] = v17;
  *&v50[8] = v20;
  v27 = 0.0;
  [v24 _animateUsingSpringWithDampingRatio:1 response:v50 tracking:0 dampingRatioSmoothing:v26 responseSmoothing:v28 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  [v5 blurTopLimit];
  if (v13 >= v29)
  {
    if ([v5 squeezeEnabled])
    {
      goto LABEL_13;
    }

    [v5 blurBottomLimit];
    if (v13 <= v35)
    {
      goto LABEL_13;
    }

    [v5 poofBlurRadius];
    v37 = v36;
    [v5 blurBottomLimit];
    v33 = v37 * (v13 - v38);
    v34 = 1000.0;
  }

  else
  {
    [v5 poofBlurRadius];
    v31 = v30;
    [v5 blurTopLimit];
    v33 = v31 * (fabs(v13) - fabs(v32));
    v34 = 2400.0;
  }

  v27 = v33 / v34;
LABEL_13:
  v39 = +[WFBannerPrototypeSettings sharedSettings];
  if ([v39 blurFilterEnabled] && (objc_msgSend(v5, "trackingBlurEnabled") & 1) != 0)
  {
    v40 = [(WFBannerGesture *)self view];
    v41 = [v40 layer];
    v42 = [v41 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    v43 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    v44 = [v42 isEqual:v43];

    if ((v44 & 1) == 0)
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke_3;
      v49[3] = &unk_279EE89D8;
      v49[4] = self;
      *&v49[5] = v27;
      [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v49 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    }
  }

  else
  {
  }

  v45 = fmax(v13 * 0.005 + 1.0, 0.0);
  if (v13 >= 0.0)
  {
    v45 = 1.0;
  }

  [(WFBannerGesture *)self setDimmingLayerAlpha:v45 response:0.4];
  v46 = [(WFBannerGesture *)self delegate];
  v47 = objc_opt_respondsToSelector();

  if (v47)
  {
    v48 = [(WFBannerGesture *)self delegate];
    [v48 bannerGestureDidContinue];
  }

LABEL_22:
}

uint64_t __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v7 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke_2;
  v4[3] = &unk_279EE89B0;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v7.minimum, *&v7.maximum, *&v7.preferred}];
}

uint64_t __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke_4;
  v4[3] = &unk_279EE89D8;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) view];
  v2 = [v4 layer];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setValue:v3 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __57__WFBannerGesture_continueTrackingWithGestureRecognizer___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = [v2 view];
  [v5 bounds];
  [v2 topEdgeClampedTranslationForTranslation:v3 scale:v4 height:v6];
  v8 = v7;

  CGAffineTransformMakeScale(&t1, *(a1 + 48), *(a1 + 56));
  CGAffineTransformMakeTranslation(&v10, *(a1 + 64), v8);
  CGAffineTransformConcat(&v12, &t1, &v10);
  v9 = [*(a1 + 32) view];
  t1 = v12;
  [v9 setTransform:&t1];
}

- (void)beginTrackingWithGestureRecognizer:(id)a3
{
  v4 = a3;
  _UIUpdateRequestActivate();
  v5 = [(WFBannerGesture *)self view];
  [v4 locationInView:v5];
  v7 = v6;

  [(WFBannerGesture *)self setInitialGestureLocationY:v7];
  v8 = [(WFBannerGesture *)self embeddedScrollView];
  [v8 contentOffset];
  [(WFBannerGesture *)self setInitialScrollOffset:v9];

  [(WFBannerGesture *)self setScrollViewGestureState:0];
  v10 = [(WFBannerGesture *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v11 = [(WFBannerGesture *)self delegate];
    [v11 bannerGestureDidBegin];
  }
}

- (void)handlePanGesture:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(WFBannerGesture *)self endTrackingWithGestureRecognizer:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    [(WFBannerGesture *)self continueTrackingWithGestureRecognizer:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(WFBannerGesture *)self beginTrackingWithGestureRecognizer:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setEmbeddedScrollView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_embeddedScrollView, v4);
  v5 = [v4 panGestureRecognizer];

  [v5 addTarget:self action:sel_handlePanGesture_];
}

- (WFBannerGesture)initWithView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFBannerGesture;
  v6 = [(WFBannerGesture *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v6 action:sel_handlePanGesture_];
    [v5 addGestureRecognizer:v7];
    objc_storeStrong(&v6->_view, a3);
    v8 = v6;
  }

  return v6;
}

- (id)gestureSettings
{
  v2 = +[WFBannerPrototypeSettings sharedSettings];
  v3 = [v2 gestureSettings];

  return v3;
}

@end