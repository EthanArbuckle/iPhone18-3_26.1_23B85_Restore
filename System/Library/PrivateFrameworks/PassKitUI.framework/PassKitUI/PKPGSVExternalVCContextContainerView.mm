@interface PKPGSVExternalVCContextContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)_animatingView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (uint64_t)_removePassAnchorPoint;
- (uint64_t)_setPassAnchorPoint:(double)point withDisplacement:(float64x2_t)displacement;
- (void)_interruptTransferedGroupView:(uint64_t)view;
- (void)_updateAlpha:(double)alpha blurRadius:(double)radius withSpringFactory:;
- (void)_updateForViewControllerFrame:(int)frame usingPassAnchorPoint:(void *)point withSpringConfiguration:(int)configuration preferModalSpringFactories:;
- (void)_willAcquireGroupView;
- (void)_willLoanGroupView:(uint64_t)view;
- (void)_willTransferGroupView;
- (void)layoutSubviews;
@end

@implementation PKPGSVExternalVCContextContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if (self->_hitTestEnabled)
  {
    v9.receiver = self;
    v9.super_class = PKPGSVExternalVCContextContainerView;
    v5 = [(PKPGSVExternalVCContextContainerView *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v14.receiver = self;
  v14.super_class = PKPGSVExternalVCContextContainerView;
  if (![(PKPGSVExternalVCContextContainerView *)&v14 gestureRecognizerShouldBegin:beginCopy])
  {
    goto LABEL_7;
  }

  if (self->_tapGestureRecognizer != beginCopy)
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

  [(UIGestureRecognizer *)beginCopy locationInView:self->_groupView];
  v7 = v6;
  v9 = v8;
  isHitTestEnabled = [(PKPassGroupView *)self->_groupView isHitTestEnabled];
  groupView = self->_groupView;
  if (isHitTestEnabled)
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

- (void)_willLoanGroupView:(uint64_t)view
{
  v4 = a2;
  if (view)
  {
    if (*(view + 552) || (v7 = v4) == 0)
    {
      __break(1u);
      return;
    }

    *(view + 552) = 1;
    objc_storeStrong((view + 560), a2);
    createExternalTapGestureRecognizer = [v7 createExternalTapGestureRecognizer];
    v6 = *(view + 568);
    *(view + 568) = createExternalTapGestureRecognizer;

    [*(view + 568) setDelegate:view];
    [view addGestureRecognizer:*(view + 568)];
    v4 = v7;
  }
}

- (void)_interruptTransferedGroupView:(uint64_t)view
{
  v3 = a2;
  v4 = v3;
  if (view)
  {
    if (!*(view + 552) || !v3 || ((v5 = *(view + 560)) != 0 ? (v6 = v5 == v3) : (v6 = 1), !v6))
    {
      __break(1u);
      return;
    }

    if (*(view + 552) != 1)
    {
      *(view + 552) = 0;
      v7 = v3;
      [(PKPGSVExternalVCContextContainerView *)view _willLoanGroupView:v3];
      v4 = v7;
    }
  }
}

- (void)_willTransferGroupView
{
  if (self)
  {
    if (*(self + 552) == 1)
    {
      *(self + 552) = 2;
      v2 = *(self + 560);
      *(self + 560) = 0;

      [self removeGestureRecognizer:*(self + 568)];
      v3 = *(self + 568);
      *(self + 568) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)_willAcquireGroupView
{
  if (self)
  {
    if (*(self + 552) - 1 >= 2)
    {
      __break(1u);
    }

    else
    {
      *(self + 552) = 0;
      v2 = *(self + 560);
      if (v2)
      {
        *(self + 560) = 0;

        [self removeGestureRecognizer:*(self + 568)];
        v3 = *(self + 568);
        *(self + 568) = 0;
      }
    }
  }
}

- (void)_updateAlpha:(double)alpha blurRadius:(double)radius withSpringFactory:
{
  v7 = a2;
  if (self)
  {
    superview = [self superview];

    if (!superview)
    {

      v7 = 0;
    }

    layer = [self[72] layer];
    if (v7)
    {
      [self[72] blurRadius];
      if (v10 != radius)
      {
        v11 = v10;
        v12 = self[72];
        v13 = +[PKBlurView blurRadiusKeyPath];
        v14 = [v7 springAnimationForView:v12 withKeyPath:v13];

        [v14 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:radius];
        v15 = [layer pkui_addAdditiveAnimation:v14];
      }
    }

    [self[72] pkui_setAlpha:v7 withAnimationFactory:0 completion:alpha];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__PKPGSVExternalVCContextContainerView__updateAlpha_blurRadius_withSpringFactory___block_invoke;
    v16[3] = &unk_1E80119C8;
    v16[4] = self;
    *&v16[5] = radius;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  }
}

- (void)_updateForViewControllerFrame:(int)frame usingPassAnchorPoint:(void *)point withSpringConfiguration:(int)configuration preferModalSpringFactories:
{
  pointCopy = point;
  if (!self)
  {
    goto LABEL_21;
  }

  *(self + 416) = *a2;
  v10 = *(a2 + 64);
  v12 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(self + 464) = *(a2 + 48);
  *(self + 480) = v10;
  *(self + 432) = v12;
  *(self + 448) = v11;
  v14 = *(a2 + 96);
  v13 = *(a2 + 112);
  v15 = *(a2 + 80);
  *(self + 544) = *(a2 + 128);
  *(self + 512) = v14;
  *(self + 528) = v13;
  *(self + 496) = v15;
  v16 = *(a2 + 112);
  v40 = v16;
  v17 = *(self + 601);
  v39 = pointCopy;
  if (!frame)
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
      [*(self + 576) anchorPoint];
      *(self + 448) = v21;
      *(self + 456) = v22;
      *(self + 536) = vmlaq_f64(v37, v38, *(self + 448));
    }

    else
    {
      [*(self + 576) anchorPoint];
      if (*(self + 448) != v24 || *(self + 456) != v23)
      {
        [*(self + 576) setAnchorPoint:{*(self + 448), *(self + 456)}];
      }
    }

    a2 = self + 416;
    pointCopy = v39;
  }

  v26 = *(a2 + 120);
  v27 = *(a2 + 128);
  v28 = pointCopy;
  layer = [*(self + 576) layer];
  [layer position];
  v32 = [(PKPGSVSpringAnimationConfiguration *)v28 createPositionAnimationFromPosition:configuration toPosition:v30 forView:v31 modal:v26, v27];
  if (v32)
  {
    v33 = [layer pkui_addAdditiveAnimation:v32];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  if (layer)
  {
    [layer transform];
    v34 = *&v42;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = [(PKPGSVSpringAnimationConfiguration *)v28 createScaleAnimationFromScale:configuration toScale:v34 forView:v40 modal:?];

  if (v35)
  {
    v36 = [layer pkui_addAdditiveAnimation:v35];
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __116__PKPGSVExternalVCContextContainerView__updateForPosition_scale_withSpringConfiguration_preferModalSpringFactories___block_invoke;
  v41[3] = &unk_1E8024318;
  v41[4] = self;
  *&v41[5] = v26;
  *&v41[6] = v27;
  *&v41[7] = v40;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v41];

  pointCopy = v39;
LABEL_21:
}

uint64_t __116__PKPGSVExternalVCContextContainerView__updateForPosition_scale_withSpringConfiguration_preferModalSpringFactories___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 576) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(*(a1 + 32) + 576);
  CATransform3DMakeScale(&v4, *(a1 + 56), *(a1 + 56), 1.0);
  return [v2 setTransform3D:&v4];
}

- (uint64_t)_setPassAnchorPoint:(double)point withDisplacement:(float64x2_t)displacement
{
  if (!self)
  {
    return 0;
  }

  if (displacement.f64[0] == *MEMORY[0x1E69DE258] && a5 == *(MEMORY[0x1E69DE258] + 8))
  {
    v6 = (self + 601);
    if (*(self + 601))
    {
      return 0;
    }

LABEL_10:
    v7 = 1;
    *v6 = 1;
    v8 = *(self + 528);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PKPGSVExternalVCContextContainerView__setPassAnchorPoint_withDisplacement___block_invoke;
    v14[3] = &unk_1E8024340;
    v14[4] = self;
    *&v14[5] = a2;
    *&v14[6] = point;
    v9 = vdup_n_s32(v8 == 1.0);
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    v11 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), *(self + 432), vmulq_n_f64(*(self + 432), v8));
    v15 = vmlsq_f64(*(self + 536), v11, *(self + 448));
    v16 = v11;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v14];
    return v7;
  }

  displacement.f64[1] = a5;
  *(self + 536) = vaddq_f64(displacement, *(self + 536));
  v6 = (self + 601);
  if ((*(self + 601) & 1) == 0)
  {
    goto LABEL_10;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPGSVExternalVCContextContainerView__setPassAnchorPoint_withDisplacement___block_invoke_2;
  v13[3] = &unk_1E8010970;
  v13[4] = self;
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
  if (self)
  {
    self = self[72];
    v1 = vars8;
  }

  return self;
}

@end