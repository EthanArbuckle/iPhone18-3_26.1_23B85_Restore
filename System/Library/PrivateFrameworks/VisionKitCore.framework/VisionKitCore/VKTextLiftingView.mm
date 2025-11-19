@interface VKTextLiftingView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGAffineTransform)_imageTransformInBounds:(SEL)a3;
- (CGRect)_contentBounds;
- (UIBezierPath)_rotatedCutoutPath;
- (UIBezierPath)hitTestPath;
- (UIEdgeInsets)contentInsets;
- (UIView)actionInfoView;
- (VKTextLiftingView)initWithImage:(id)a3 cutoutPath:(id)a4 baselineAngle:(double)a5;
- (VKTextLiftingViewDelegate)delegate;
- (id)_gaussianBlurFilterWithRadius:(double)a3;
- (id)_springAnimationForKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5;
- (void)_applyConfigurationUpdateHandlerToQuickActions;
- (void)_applyInteractionToImageViewIfReady;
- (void)didMoveToSuperview;
- (void)fadeOutAndRemoveFromSuperview;
- (void)layoutSubviews;
- (void)performLiftAnimation;
- (void)setImageInteraction:(id)a3;
- (void)setPreferredQuickActionButtonHeight:(double)a3;
- (void)setQuickActionConfigurationUpdateHandler:(id)a3;
@end

@implementation VKTextLiftingView

- (VKTextLiftingView)initWithImage:(id)a3 cutoutPath:(id)a4 baselineAngle:(double)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v32.receiver = self;
  v32.super_class = VKTextLiftingView;
  v11 = [(VKTextLiftingView *)&v32 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_image, a3);
    objc_storeStrong(&v12->_cutoutPath, a4);
    v12->_baselineAngle = a5;
    v13 = [(VKTextLiftingView *)v12 layer];
    [v13 setShadowOffset:{0.0, 15.0}];
    [v13 setShadowRadius:45.0];
    v14 = [MEMORY[0x1E69DC888] blackColor];
    [v13 setShadowColor:{objc_msgSend(v14, "CGColor")}];

    v15 = objc_alloc_init(MEMORY[0x1E69DD298]);
    highlightView = v12->__highlightView;
    v12->__highlightView = v15;

    [(UIVisualEffectView *)v12->__highlightView setUserInteractionEnabled:0];
    v17 = [(UIVisualEffectView *)v12->__highlightView layer];
    [v17 setAllowsHitTesting:0];

    v18 = [MEMORY[0x1E69DC898] colorEffectBrightness:0.1];
    v33[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [(UIVisualEffectView *)v12->__highlightView setBackgroundEffects:v19];

    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(UIVisualEffectView *)v12->__highlightView setBackgroundColor:v20];

    [(UIVisualEffectView *)v12->__highlightView setAlpha:0.0];
    v21 = [MEMORY[0x1E69794A0] layer];
    [v21 setPath:{-[UIBezierPath CGPath](v12->_cutoutPath, "CGPath")}];
    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12->_image];
    imageView = v12->__imageView;
    v12->__imageView = v22;

    v24 = [(UIImageView *)v12->__imageView layer];
    [v24 setMask:v21];

    v25 = [(UIImageView *)v12->__imageView layer];
    [v25 setAllowsEdgeAntialiasing:1];

    [(UIImageView *)v12->__imageView setUserInteractionEnabled:1];
    [(UIImageView *)v12->__imageView addSubview:v12->__highlightView];
    [(UIImageView *)v12->__imageView bounds];
    [(UIVisualEffectView *)v12->__highlightView setFrame:?];
    v12->_maxScale = 1.0;
    __asm { FMOV            V0.2D, #10.0 }

    *&v12->_contentInsets.top = _Q0;
    *&v12->_contentInsets.bottom = _Q0;
    v12->_presentsMenuForLiftedText = 1;
    v12->_presentsQuickActions = 0;
  }

  return v12;
}

- (void)didMoveToSuperview
{
  v7.receiver = self;
  v7.super_class = VKTextLiftingView;
  [(VKTextLiftingView *)&v7 didMoveToSuperview];
  v3 = [(VKTextLiftingView *)self imageInteraction];

  if (v3)
  {
    v4 = [(VKTextLiftingView *)self superview];

    if (v4)
    {
      [(VKTextLiftingView *)self _applyInteractionToImageViewIfReady];
    }

    else
    {
      v5 = [(VKTextLiftingView *)self _imageView];
      v6 = [(VKTextLiftingView *)self imageInteraction];
      [v5 removeInteraction:v6];
    }
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIImageView *)self->__imageView convertPoint:self fromView:?];
  v8 = v7;
  v10 = v9;
  v11 = [(VKTextLiftingView *)self hitTestPath];
  v12 = [v11 CGPath];
  v13 = [v11 usesEvenOddFillRule];
  v19.x = v8;
  v19.y = v10;
  v14 = CGPathContainsPoint(v12, 0, v19, v13);
  v15 = [(VKTextLiftingView *)self actionInfoView];
  v16 = v15;
  if (v15)
  {
    [v15 frame];
    v20.x = x;
    v20.y = y;
    LOBYTE(v15) = CGRectContainsPoint(v21, v20);
  }

  v17 = v14 | v15;

  return v17 & 1;
}

- (void)layoutSubviews
{
  [(VKTextLiftingView *)self _contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(VKTextLiftingView *)self _imageView];
  [v11 setCenter:{VKMCenterOfRect(v4, v6, v8, v10)}];
  [(VKTextLiftingView *)self _imageTransformInBounds:v4, v6, v8, v10];
  v12[0] = v12[3];
  v12[1] = v12[4];
  v12[2] = v12[5];
  [v11 setTransform:v12];
}

- (UIBezierPath)hitTestPath
{
  hitTestPath = self->_hitTestPath;
  if (!hitTestPath)
  {
    v4 = [(VKTextLiftingView *)self cutoutPath];
    [v4 bounds];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v22 = CGRectInset(v21, -20.0, -20.0);
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, v22.size.width / width, v22.size.height / height);
    memset(&v18, 0, sizeof(v18));
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v9 = -CGRectGetMidX(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MidY = CGRectGetMidY(v24);
    CGAffineTransformMakeTranslation(&v18, v9, -MidY);
    memset(&v17, 0, sizeof(v17));
    t1 = v18;
    v14 = v19;
    CGAffineTransformConcat(&v16, &t1, &v14);
    v14 = v18;
    CGAffineTransformInvert(&t1, &v14);
    CGAffineTransformConcat(&v17, &v16, &t1);
    v11 = [v4 copy];
    v16 = v17;
    [(UIBezierPath *)v11 applyTransform:&v16];
    v12 = self->_hitTestPath;
    self->_hitTestPath = v11;

    hitTestPath = self->_hitTestPath;
  }

  return hitTestPath;
}

- (void)setImageInteraction:(id)a3
{
  v5 = a3;
  if (self->_imageInteraction != v5)
  {
    v8 = v5;
    v6 = [(VKTextLiftingView *)self _imageView];
    v7 = v6;
    if (self->_imageInteraction)
    {
      [v6 removeInteraction:?];
    }

    objc_storeStrong(&self->_imageInteraction, a3);
    [(VKTextLiftingView *)self _applyInteractionToImageViewIfReady];

    v5 = v8;
  }
}

- (UIView)actionInfoView
{
  v2 = [(VKTextLiftingView *)self imageInteraction];
  v3 = [v2 actionInfoViewIfExists];

  return v3;
}

- (void)setPreferredQuickActionButtonHeight:(double)a3
{
  if (self->_preferredQuickActionButtonHeight != a3)
  {
    self->_preferredQuickActionButtonHeight = a3;
    v4 = [(VKTextLiftingView *)self imageInteraction];
    [v4 setPreferredQuickActionButtonHeight:a3];
  }
}

- (void)setQuickActionConfigurationUpdateHandler:(id)a3
{
  if (self->_quickActionConfigurationUpdateHandler != a3)
  {
    v4 = [a3 copy];
    quickActionConfigurationUpdateHandler = self->_quickActionConfigurationUpdateHandler;
    self->_quickActionConfigurationUpdateHandler = v4;

    [(VKTextLiftingView *)self _applyConfigurationUpdateHandlerToQuickActions];
  }
}

- (void)performLiftAnimation
{
  if (![(VKTextLiftingView *)self _hasLifted])
  {
    [(VKTextLiftingView *)self _hasLifted:1];
    [(VKTextLiftingView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(VKTextLiftingView *)self image];
    [v11 size];
    v13 = v12;
    v15 = v14;

    v16 = [(VKTextLiftingView *)self _imageView];
    [(VKTextLiftingView *)self addSubview:v16];
    CGAffineTransformMakeScale(&v25, v8 / v13, v10 / v15);
    v24 = v25;
    [v16 setTransform:&v24];
    [v16 setCenter:{VKMCenterOfRect(v4, v6, v8, v10)}];
    [(VKTextLiftingView *)self setNeedsLayout];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
    v18 = [(VKTextLiftingView *)self _springAnimationForKeyPath:@"shadowOpacity" fromValue:&unk_1F2C39178 toValue:v17];

    v19 = [(VKTextLiftingView *)self layer];
    [v19 addAnimation:v18 forKey:@"liftShadow"];

    v20 = [(VKTextLiftingView *)self layer];
    LODWORD(v21) = 0.5;
    [v20 setShadowOpacity:v21];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41__VKTextLiftingView_performLiftAnimation__block_invoke;
    v23[3] = &unk_1E7BE4208;
    v23[4] = self;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __41__VKTextLiftingView_performLiftAnimation__block_invoke_2;
    v22[3] = &unk_1E7BE75A8;
    v22[4] = self;
    *&v22[5] = v4;
    *&v22[6] = v6;
    *&v22[7] = v8;
    *&v22[8] = v10;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v23 options:v22 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
    [(VKTextLiftingView *)self _applyInteractionToImageViewIfReady];
  }
}

void __41__VKTextLiftingView_performLiftAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _highlightView];
  [v2 setAlpha:1.0];

  [*(a1 + 32) layoutIfNeeded];
  v3 = [*(a1 + 32) delegate];
  [v3 animateAlongsideTextLiftingForView:*(a1 + 32)];
}

void __41__VKTextLiftingView_performLiftAnimation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 textLiftingAnimationDidEndForView:*(a1 + 32)];

  if (([*(a1 + 32) _hasFadedOut] & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
    v3 = [*(a1 + 32) imageInteraction];
    v4 = [v3 baseView];
    v5 = [v4 textSelectionView];

    if ([*(a1 + 32) presentsMenuForLiftedText])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        [v6 setUseFullDocumentRangeForEmptySelection:1];
        [v6 becomeFirstResponder];
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = *(a1 + 32);
        [v7 _contentBounds];
        if (v7)
        {
          [v7 _imageTransformInBounds:?];
        }

        else
        {
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
        }

        v8 = [*(a1 + 32) cutoutPath];
        v9 = [v8 copy];

        v24[0] = v25;
        v24[1] = v26;
        v24[2] = v27;
        [v9 applyTransform:v24];
        [v9 bounds];
        v14 = VKMCenterRectOverRect(v10, v11, v12, v13, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [MEMORY[0x1E69DCC68] sharedMenuController];
        [v21 setArrowDirection:2];

        v22 = [MEMORY[0x1E69DCC68] sharedMenuController];
        [v22 showMenuFromView:*(a1 + 32) rect:{v14, v16, v18, v20}];

        [*(a1 + 32) _setPresentedMenuForLiftedText:1];
      }
    }

    if ([*(a1 + 32) presentsQuickActions])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __41__VKTextLiftingView_performLiftAnimation__block_invoke_3;
      v23[3] = &unk_1E7BE4208;
      v23[4] = *(a1 + 32);
      [MEMORY[0x1E69DD250] animateWithDuration:v23 animations:0.2];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

void __41__VKTextLiftingView_performLiftAnimation__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) actionInfoView];
  [v1 setAlpha:1.0];
}

- (void)fadeOutAndRemoveFromSuperview
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (![(VKTextLiftingView *)self _hasFadedOut])
  {
    [(VKTextLiftingView *)self _hasFadedOut:1];
    v3 = [(VKTextLiftingView *)self imageInteraction];
    [v3 resetSelection];

    v4 = [MEMORY[0x1E69DCC68] sharedMenuController];
    if ([(VKTextLiftingView *)self _presentedMenuForLiftedText])
    {
      if ([v4 isMenuVisible])
      {
        [v4 hideMenu];
      }
    }

    v5 = [(VKTextLiftingView *)self _gaussianBlurFilterWithRadius:0.0];
    v15[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v7 = [(VKTextLiftingView *)self layer];
    [v7 setFilters:v6];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [v5 name];
    v10 = [v8 stringWithFormat:@"filters.%@.inputRadius", v9];

    v11 = [(VKTextLiftingView *)self _springAnimationForKeyPath:v10 fromValue:&unk_1F2C39178 toValue:&unk_1F2C39188];
    v12 = [(VKTextLiftingView *)self layer];
    [v12 addAnimation:v11 forKey:@"dismissBlur"];

    [(VKTextLiftingView *)self setNeedsLayout];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__VKTextLiftingView_fadeOutAndRemoveFromSuperview__block_invoke;
    v14[3] = &unk_1E7BE4208;
    v14[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__VKTextLiftingView_fadeOutAndRemoveFromSuperview__block_invoke_2;
    v13[3] = &unk_1E7BE42A8;
    v13[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v14 options:v13 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  }
}

void __50__VKTextLiftingView_fadeOutAndRemoveFromSuperview__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _highlightView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) _imageView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) actionInfoView];
  [v4 setAlpha:0.0];

  [*(a1 + 32) layoutIfNeeded];
  v5 = [*(a1 + 32) delegate];
  [v5 animateAlongsideFadeOutForTextLiftingView:*(a1 + 32)];
}

void __50__VKTextLiftingView_fadeOutAndRemoveFromSuperview__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 32) delegate];
  [v2 fadeOutAnimationDidEndForView:*(a1 + 32)];
}

- (id)_gaussianBlurFilterWithRadius:(double)a3
{
  v4 = objc_alloc(MEMORY[0x1E6979378]);
  v5 = [v4 initWithType:*MEMORY[0x1E6979928]];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v6 forKey:*MEMORY[0x1E695FB10]];

  [v5 setName:@"gaussianBlur"];

  return v5;
}

- (id)_springAnimationForKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v7 = MEMORY[0x1E69794A8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 animationWithKeyPath:a3];
  [v10 setMass:2.0];
  [v10 setStiffness:300.0];
  [v10 setDamping:50.0];
  [v10 setDuration:0.8];
  [v10 setFromValue:v9];

  [v10 setToValue:v8];

  return v10;
}

- (void)_applyInteractionToImageViewIfReady
{
  v9 = [(VKTextLiftingView *)self imageInteraction];
  v3 = [(VKTextLiftingView *)self _hasLifted];
  v4 = v9;
  if (v3 && v9)
  {
    if (self->_presentsQuickActions)
    {
      [v9 setActionInfoLiveTextButtonDisabled:1];
      [v9 setActionInfoViewHidden:0];
      v5 = [v9 setDeriveQuickActionsVisibilityFromState:0];
      [v9 setWantsTranslucentActionInfoButtons:{vk_solariumEnabled(v5, v6)}];
      [(VKTextLiftingView *)self preferredQuickActionButtonHeight];
      [v9 setPreferredQuickActionButtonHeight:?];
    }

    v7 = [(VKTextLiftingView *)self _imageView];
    [v7 addInteraction:v9];

    v4 = v9;
    if (self->_presentsQuickActions)
    {
      v8 = [v9 actionInfoViewIfExists];
      if (v8)
      {
        [(VKTextLiftingView *)self addSubview:v8];
        [(VKTextLiftingView *)self _applyConfigurationUpdateHandlerToQuickActions];
        [v8 edgeInsets];
        [v8 setEdgeInsets:0.0];
        [v8 setAutomaticVisualRectLayoutDisabled:1];
        [v8 setAlignQuickActionsWithVerticalCenter:1];
        [v8 setShouldAnimateQuickActionVisibilityChanges:1];
        [v8 setAlpha:0.0];
        [v8 set_quickActionsHidden:0];
      }

      v4 = v9;
    }
  }
}

- (void)_applyConfigurationUpdateHandlerToQuickActions
{
  v4 = [(VKTextLiftingView *)self quickActionConfigurationUpdateHandler];
  v3 = [(VKTextLiftingView *)self imageInteraction];
  [v3 setQuickActionConfigurationUpdateHandler:v4];
}

- (CGRect)_contentBounds
{
  [(VKTextLiftingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKTextLiftingView *)self contentInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIBezierPath)_rotatedCutoutPath
{
  rotatedCutoutPath = self->__rotatedCutoutPath;
  if (!rotatedCutoutPath)
  {
    v4 = [(VKTextLiftingView *)self cutoutPath];
    v5 = [v4 copy];
    v6 = self->__rotatedCutoutPath;
    self->__rotatedCutoutPath = v5;

    v7 = self->__rotatedCutoutPath;
    [(VKTextLiftingView *)self baselineAngle];
    CGAffineTransformMakeRotation(&v10, -v8);
    [(UIBezierPath *)v7 applyTransform:&v10];
    rotatedCutoutPath = self->__rotatedCutoutPath;
  }

  return rotatedCutoutPath;
}

- (CGAffineTransform)_imageTransformInBounds:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  v8 = [(VKTextLiftingView *)self _rotatedCutoutPath:a4.origin.x];
  [(VKTextLiftingView *)self baselineAngle];
  v10 = v9;
  [v8 bounds];
  v12 = v11;
  v14 = v13;
  [v8 bounds];
  v19 = VKMCenterOfRect(v15, v16, v17, v18);
  v36 = v20;
  v37 = v19;
  CGAffineTransformMakeRotation(&v44, v10);
  *&v38 = *&vaddq_f64(*&v44.tx, vmlaq_n_f64(vmulq_n_f64(*&v44.c, *&v36), *&v44.a, v37));
  [(VKTextLiftingView *)self maxScale];
  v22 = fmin(v21, fmin(width / v12, height / v14));
  if ([(VKTextLiftingView *)self _hasFadedOut])
  {
    v22 = v22 * 1.5;
  }

  v23 = [(VKTextLiftingView *)self image];
  [v23 size];
  v24 = VKMRectWithSize();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = VKMCenterOfRect(v24, v26, v28, v30);
  v33 = VKMSubtractPoints(v31, v32, v38);
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeTranslation(&v44, v33, v34);
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeRotation(&v43, -v10);
  memset(&v42, 0, sizeof(v42));
  CGAffineTransformMakeScale(&v42, v22, v22);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v44;
  t2 = v43;
  CGAffineTransformConcat(&v41, &t1, &t2);
  t1 = v42;
  CGAffineTransformConcat(retstr, &v41, &t1);

  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (VKTextLiftingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end