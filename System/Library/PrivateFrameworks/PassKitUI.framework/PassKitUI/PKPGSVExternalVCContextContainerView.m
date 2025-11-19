@interface PKPGSVExternalVCContextContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)_animatingView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (uint64_t)_removePassAnchorPoint;
- (uint64_t)_setPassAnchorPoint:(double)a3 withDisplacement:(float64x2_t)a4;
- (void)_interruptTransferedGroupView:(uint64_t)a1;
- (void)_updateAlpha:(double)a3 blurRadius:(double)a4 withSpringFactory:;
- (void)_updateForViewControllerFrame:(int)a3 usingPassAnchorPoint:(void *)a4 withSpringConfiguration:(int)a5 preferModalSpringFactories:;
- (void)_willAcquireGroupView;
- (void)_willLoanGroupView:(uint64_t)a1;
- (void)_willTransferGroupView;
- (void)layoutSubviews;
@end

@implementation PKPGSVExternalVCContextContainerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if (self->_hitTestEnabled)
  {
    v9.receiver = self;
    v9.super_class = PKPGSVExternalVCContextContainerView;
    v5 = [(PKPGSVExternalVCContextContainerView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
    v6 = v5;
    if (v5 == self)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPGSVExternalVCContextContainerView;
  if (![(PKPGSVExternalVCContextContainerView *)&v14 gestureRecognizerShouldBegin:v4])
  {
    goto LABEL_7;
  }

  if (self->_tapGestureRecognizer != v4)
  {
    v5 = 1;
    goto LABEL_8;
  }

  if (!self->_hitTestEnabled)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  [(UIGestureRecognizer *)v4 locationInView:self->_groupView];
  v7 = v6;
  v9 = v8;
  v10 = [(PKPassGroupView *)self->_groupView isHitTestEnabled];
  groupView = self->_groupView;
  if (v10)
  {
    v12 = [(PKPassGroupView *)groupView hitTest:0 withEvent:v7, v9];
    v5 = v12 != 0;
  }

  else
  {
    v5 = [(PKPassGroupView *)groupView pointInside:0 withEvent:v7, v9];
  }

LABEL_8:

  return v5;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPGSVExternalVCContextContainerView;
  [(PKPGSVExternalVCContextContainerView *)&v9 layoutSubviews];
  [(PKPGSVExternalVCContextContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_view setFrame:?];
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  [(PKBlurView *)self->_portalContainer setBounds:*MEMORY[0x1E695EFF8], v8, v4, v6];
  [(CAPortalLayer *)self->_portalLayer setFrame:v7, v8, v4, v6];
}

- (void)_willLoanGroupView:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    if (*(a1 + 552) || (v7 = v4) == 0)
    {
      __break(1u);
      return;
    }

    *(a1 + 552) = 1;
    objc_storeStrong((a1 + 560), a2);
    v5 = [v7 createExternalTapGestureRecognizer];
    v6 = *(a1 + 568);
    *(a1 + 568) = v5;

    [*(a1 + 568) setDelegate:a1];
    [a1 addGestureRecognizer:*(a1 + 568)];
    v4 = v7;
  }
}

- (void)_interruptTransferedGroupView:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!*(a1 + 552) || !v3 || ((v5 = *(a1 + 560)) != 0 ? (v6 = v5 == v3) : (v6 = 1), !v6))
    {
      __break(1u);
      return;
    }

    if (*(a1 + 552) != 1)
    {
      *(a1 + 552) = 0;
      v7 = v3;
      [(PKPGSVExternalVCContextContainerView *)a1 _willLoanGroupView:v3];
      v4 = v7;
    }
  }
}

- (void)_willTransferGroupView
{
  if (a1)
  {
    if (*(a1 + 552) == 1)
    {
      *(a1 + 552) = 2;
      v2 = *(a1 + 560);
      *(a1 + 560) = 0;

      [a1 removeGestureRecognizer:*(a1 + 568)];
      v3 = *(a1 + 568);
      *(a1 + 568) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)_willAcquireGroupView
{
  if (a1)
  {
    if (*(a1 + 552) - 1 >= 2)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 552) = 0;
      v2 = *(a1 + 560);
      if (v2)
      {
        *(a1 + 560) = 0;

        [a1 removeGestureRecognizer:*(a1 + 568)];
        v3 = *(a1 + 568);
        *(a1 + 568) = 0;
      }
    }
  }
}

- (void)_updateAlpha:(double)a3 blurRadius:(double)a4 withSpringFactory:
{
  v7 = a2;
  if (a1)
  {
    v8 = [a1 superview];

    if (!v8)
    {

      v7 = 0;
    }

    v9 = [a1[72] layer];
    if (v7)
    {
      [a1[72] blurRadius];
      if (v10 != a4)
      {
        v11 = v10;
        v12 = a1[72];
        v13 = +[PKBlurView blurRadiusKeyPath];
        v14 = [v7 springAnimationForView:v12 withKeyPath:v13];

        [v14 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:a4];
        v15 = [v9 pkui_addAdditiveAnimation:v14];
      }
    }

    [a1[72] pkui_setAlpha:v7 withAnimationFactory:0 completion:a3];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__PKPGSVExternalVCContextContainerView__updateAlpha_blurRadius_withSpringFactory___block_invoke;
    v16[3] = &unk_1E80119C8;
    v16[4] = a1;
    *&v16[5] = a4;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  }
}

- (void)_updateForViewControllerFrame:(int)a3 usingPassAnchorPoint:(void *)a4 withSpringConfiguration:(int)a5 preferModalSpringFactories:
{
  v9 = a4;
  if (!a1)
  {
    goto LABEL_21;
  }

  *(a1 + 416) = *a2;
  v10 = *(a2 + 64);
  v12 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 464) = *(a2 + 48);
  *(a1 + 480) = v10;
  *(a1 + 432) = v12;
  *(a1 + 448) = v11;
  v14 = *(a2 + 96);
  v13 = *(a2 + 112);
  v15 = *(a2 + 80);
  *(a1 + 544) = *(a2 + 128);
  *(a1 + 512) = v14;
  *(a1 + 528) = v13;
  *(a1 + 496) = v15;
  v16 = *(a2 + 112);
  v40 = v16;
  v17 = *(a1 + 601);
  v39 = v9;
  if (!a3)
  {
    goto LABEL_5;
  }

  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_5:
    if (v17)
    {
      v18 = vdup_n_s32(v16 == 1.0);
      v19.i64[0] = v18.u32[0];
      v19.i64[1] = v18.u32[1];
      v20 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), *(a2 + 16), vmulq_n_f64(*(a2 + 16), v16));
      v37 = vmlsq_f64(*(a2 + 120), v20, *(a2 + 32));
      v38 = v20;
      [*(a1 + 576) anchorPoint];
      *(a1 + 448) = v21;
      *(a1 + 456) = v22;
      *(a1 + 536) = vmlaq_f64(v37, v38, *(a1 + 448));
    }

    else
    {
      [*(a1 + 576) anchorPoint];
      if (*(a1 + 448) != v24 || *(a1 + 456) != v23)
      {
        [*(a1 + 576) setAnchorPoint:{*(a1 + 448), *(a1 + 456)}];
      }
    }

    a2 = a1 + 416;
    v9 = v39;
  }

  v26 = *(a2 + 120);
  v27 = *(a2 + 128);
  v28 = v9;
  v29 = [*(a1 + 576) layer];
  [v29 position];
  v32 = [(PKPGSVSpringAnimationConfiguration *)v28 createPositionAnimationFromPosition:a5 toPosition:v30 forView:v31 modal:v26, v27];
  if (v32)
  {
    v33 = [v29 pkui_addAdditiveAnimation:v32];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  if (v29)
  {
    [v29 transform];
    v34 = *&v42;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = [(PKPGSVSpringAnimationConfiguration *)v28 createScaleAnimationFromScale:a5 toScale:v34 forView:v40 modal:?];

  if (v35)
  {
    v36 = [v29 pkui_addAdditiveAnimation:v35];
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __116__PKPGSVExternalVCContextContainerView__updateForPosition_scale_withSpringConfiguration_preferModalSpringFactories___block_invoke;
  v41[3] = &unk_1E8024318;
  v41[4] = a1;
  *&v41[5] = v26;
  *&v41[6] = v27;
  *&v41[7] = v40;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v41];

  v9 = v39;
LABEL_21:
}

uint64_t __116__PKPGSVExternalVCContextContainerView__updateForPosition_scale_withSpringConfiguration_preferModalSpringFactories___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 576) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(*(a1 + 32) + 576);
  CATransform3DMakeScale(&v4, *(a1 + 56), *(a1 + 56), 1.0);
  return [v2 setTransform3D:&v4];
}

- (uint64_t)_setPassAnchorPoint:(double)a3 withDisplacement:(float64x2_t)a4
{
  if (!a1)
  {
    return 0;
  }

  if (a4.f64[0] == *MEMORY[0x1E69DE258] && a5 == *(MEMORY[0x1E69DE258] + 8))
  {
    v6 = (a1 + 601);
    if (*(a1 + 601))
    {
      return 0;
    }

LABEL_10:
    v7 = 1;
    *v6 = 1;
    v8 = *(a1 + 528);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PKPGSVExternalVCContextContainerView__setPassAnchorPoint_withDisplacement___block_invoke;
    v14[3] = &unk_1E8024340;
    v14[4] = a1;
    *&v14[5] = a2;
    *&v14[6] = a3;
    v9 = vdup_n_s32(v8 == 1.0);
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    v11 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), *(a1 + 432), vmulq_n_f64(*(a1 + 432), v8));
    v15 = vmlsq_f64(*(a1 + 536), v11, *(a1 + 448));
    v16 = v11;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v14];
    return v7;
  }

  a4.f64[1] = a5;
  *(a1 + 536) = vaddq_f64(a4, *(a1 + 536));
  v6 = (a1 + 601);
  if ((*(a1 + 601) & 1) == 0)
  {
    goto LABEL_10;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPGSVExternalVCContextContainerView__setPassAnchorPoint_withDisplacement___block_invoke_2;
  v13[3] = &unk_1E8010970;
  v13[4] = a1;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v13];
  return 0;
}

uint64_t __77__PKPGSVExternalVCContextContainerView__setPassAnchorPoint_withDisplacement___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 576) setAnchorPoint:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(*(a1 + 32) + 576);
  v3 = vmlaq_f64(*(a1 + 56), *(a1 + 72), *(a1 + 40));

  return [v2 setCenter:*&v3];
}

- (uint64_t)_removePassAnchorPoint
{
  if (result)
  {
    v1 = result;
    if (*(result + 601) == 1)
    {
      *(result + 601) = 0;
      v2 = *(result + 528);
      v3 = vdup_n_s32(v2 == 1.0);
      v4.i64[0] = v3.u32[0];
      v4.i64[1] = v3.u32[1];
      v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), *(result + 432), vmulq_n_f64(*(result + 432), v2));
      v8 = vmlsq_f64(*(result + 536), v5, *(result + 448));
      v9 = v5;
      [*(result + 408) anchorPoint];
      *(v1 + 448) = v6;
      *(v1 + 456) = v7;
      *(v1 + 536) = vmlaq_f64(v8, v9, *(v1 + 448));
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__PKPGSVExternalVCContextContainerView__removePassAnchorPoint__block_invoke;
      v10[3] = &unk_1E8010970;
      v10[4] = v1;
      return [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
    }
  }

  return result;
}

uint64_t __62__PKPGSVExternalVCContextContainerView__removePassAnchorPoint__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 576) setAnchorPoint:{*(*(a1 + 32) + 448), *(*(a1 + 32) + 456)}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v2 += 52;
  v4 = v2[15];
  v5 = v2[16];

  return [v3 setCenter:{v4, v5}];
}

- (id)_animatingView
{
  if (a1)
  {
    a1 = a1[72];
    v1 = vars8;
  }

  return a1;
}

@end