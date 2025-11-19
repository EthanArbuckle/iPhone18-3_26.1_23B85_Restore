@interface UIDropShadowView
- (BOOL)_effectiveInsetsContentViewForGrabber;
- (BOOL)_isGrabber:(id)a3;
- (CGRect)_contentViewFrame;
- (CGSize)_grabberPreferredSize;
- (UIDropShadowView)initWithFrame:(CGRect)a3 independentCorners:(int64_t)a4 supportsShadow:(BOOL)a5 stylesSheetsAsCards:(BOOL)a6;
- (UIDropShadowViewDelegate)_delegate;
- (UIEdgeInsets)contentTouchInsets;
- (UIRectCornerRadii)environmentMatchingCornerRadii;
- (UIView)deepestClippingView;
- (UIView)firstCornerClippingDescendant;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_grabberPrimaryAction;
- (void)_layoutGrabbers;
- (void)_setGrabberAlpha:(double)a3;
- (void)_setGrabberBlurEnabled:(BOOL)a3;
- (void)_setGrabberEdge:(int64_t)a3;
- (void)_setGrabberLumaTrackingEnabled:(BOOL)a3;
- (void)_setGrabberPreferredSize:(CGSize)a3;
- (void)_setGrabberSpacing:(double)a3;
- (void)_setHasGrabber:(BOOL)a3;
- (void)_setInsetsContentViewForGrabber:(BOOL)a3;
- (void)didFinishRotation;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setEnvironmentMatchingCornerRadii:(UIRectCornerRadii)a3;
- (void)setMagicShadowAlpha:(double)a3;
- (void)setMasksTopCornersOnly:(BOOL)a3;
- (void)setOverlayView:(id)a3;
- (void)updateBackgroundCornerRadii:(UIRectCornerRadii)a3;
- (void)updateCornerClippingViews;
- (void)willBeginRotationWithOriginalBounds:(CGRect)a3 newBounds:(CGRect)a4;
@end

@implementation UIDropShadowView

- (void)updateBackgroundCornerRadii:(UIRectCornerRadii)a3
{
  topRight = a3.topRight;
  bottomRight = a3.bottomRight;
  bottomLeft = a3.bottomLeft;
  topLeft = a3.topLeft;
  v7 = self;
  sub_188AE1CF0(topLeft, bottomLeft, bottomRight, topRight);
}

- (void)updateCornerClippingViews
{
  v3 = [(UIView *)self window];
  v4 = [v3 windowScene];
  v5 = [v4 _effectiveUISettings];
  v47 = [v5 cornerRadiusConfiguration];

  if (!v47)
  {
    if (_UISolariumEnabled() && _UIApplicationProcessIsSpringBoard())
    {
      v6 = objc_alloc(MEMORY[0x1E698E668]);
      v7 = [(UIView *)self traitCollection];
      [v7 displayCornerRadius];
      v47 = [v6 initWithCornerRadius:?];
    }

    else
    {
      v47 = 0;
    }
  }

  if ([(UIDropShadowView *)self supportsShadow])
  {
    if (self->_environmentMatchingCornerRadii.topLeft == 1.79769313e308)
    {
      [v47 topLeft];
    }

    v8 = [UICornerRadius fixedRadius:?];
    if (self->_environmentMatchingCornerRadii.topRight == 1.79769313e308)
    {
      [v47 topRight];
    }

    v9 = [UICornerRadius fixedRadius:?];
    if ([(UIDropShadowView *)self masksTopCornersOnly])
    {
      v10 = [UICornerConfiguration configurationWithTopLeftRadius:v8 topRightRadius:v9 bottomLeftRadius:0 bottomRightRadius:0];
      [(UIView *)self setCornerConfiguration:v10];
    }

    else
    {
      if (self->_environmentMatchingCornerRadii.bottomLeft == 1.79769313e308)
      {
        [v47 bottomLeft];
      }

      v10 = [UICornerRadius fixedRadius:?];
      if (self->_environmentMatchingCornerRadii.bottomRight == 1.79769313e308)
      {
        [v47 bottomRight];
      }

      v11 = [UICornerRadius fixedRadius:?];
      v12 = [UICornerConfiguration configurationWithTopLeftRadius:v8 topRightRadius:v9 bottomLeftRadius:v10 bottomRightRadius:v11];
      [(UIView *)self setCornerConfiguration:v12];
    }
  }

  v13 = [(UIDropShadowView *)self independentCorners];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v42 = [(UIDropShadowView *)self firstCornerClippingDescendant];
      topLeft = self->_environmentMatchingCornerRadii.topLeft;
      [v47 topLeft];
      setEnvironmentMatchingCornerRadius(v42, self, &self->_environmentMatchingCornerRadii, 3, topLeft, v44);

      v17 = [(UIDropShadowView *)self cornerClippingDescendants];
      v18 = [v17 objectAtIndexedSubscript:0];
      bottomRight = self->_environmentMatchingCornerRadii.bottomRight;
      [v47 bottomRight];
      v21 = v46;
      v22 = v18;
      v23 = bottomRight;
      v24 = self;
      p_bottomRight = &self->_environmentMatchingCornerRadii.bottomRight;
      v26 = 12;
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_30;
      }

      v27 = [(UIDropShadowView *)self firstCornerClippingDescendant];
      v28 = self->_environmentMatchingCornerRadii.topLeft;
      [v47 topLeft];
      setEnvironmentMatchingCornerRadius(v27, self, &self->_environmentMatchingCornerRadii, 1, v28, v29);

      v30 = [(UIDropShadowView *)self cornerClippingDescendants];
      v31 = [v30 objectAtIndexedSubscript:0];
      bottomLeft = self->_environmentMatchingCornerRadii.bottomLeft;
      [v47 bottomLeft];
      setEnvironmentMatchingCornerRadius(v31, self, &self->_environmentMatchingCornerRadii.bottomLeft, 4, bottomLeft, v33);

      v34 = [(UIDropShadowView *)self cornerClippingDescendants];
      v35 = [v34 objectAtIndexedSubscript:1];
      v36 = self->_environmentMatchingCornerRadii.bottomRight;
      [v47 bottomRight];
      setEnvironmentMatchingCornerRadius(v35, self, &self->_environmentMatchingCornerRadii.bottomRight, 8, v36, v37);

      v17 = [(UIDropShadowView *)self cornerClippingDescendants];
      v18 = [v17 objectAtIndexedSubscript:2];
      topRight = self->_environmentMatchingCornerRadii.topRight;
      [v47 topRight];
      v21 = v39;
      v22 = v18;
      v23 = topRight;
      v24 = self;
      p_bottomRight = &self->_environmentMatchingCornerRadii.topRight;
      v26 = 2;
    }

    goto LABEL_28;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_30;
    }

    v14 = [(UIDropShadowView *)self firstCornerClippingDescendant];
    v15 = self->_environmentMatchingCornerRadii.topLeft;
    [v47 topLeft];
    setEnvironmentMatchingCornerRadius(v14, self, &self->_environmentMatchingCornerRadii, 5, v15, v16);

    v17 = [(UIDropShadowView *)self cornerClippingDescendants];
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = self->_environmentMatchingCornerRadii.bottomRight;
    [v47 bottomRight];
    v21 = v20;
    v22 = v18;
    v23 = v19;
    v24 = self;
    p_bottomRight = &self->_environmentMatchingCornerRadii.bottomRight;
    v26 = 10;
LABEL_28:
    setEnvironmentMatchingCornerRadius(v22, v24, p_bottomRight, v26, v23, v21);

    goto LABEL_29;
  }

  v17 = [(UIDropShadowView *)self firstCornerClippingDescendant];
  v40 = self->_environmentMatchingCornerRadii.topLeft;
  [v47 topLeft];
  setEnvironmentMatchingCornerRadius(v17, self, &self->_environmentMatchingCornerRadii, -1, v40, v41);
LABEL_29:

LABEL_30:
}

- (UIView)firstCornerClippingDescendant
{
  WeakRetained = objc_loadWeakRetained(&self->_firstCornerClippingDescendant);

  return WeakRetained;
}

- (UIView)deepestClippingView
{
  v3 = [(UIDropShadowView *)self cornerClippingDescendants];
  v4 = [v3 lastObject];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIDropShadowView *)self firstCornerClippingDescendant];
  }

  v7 = v6;

  return v7;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIDropShadowView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIDropShadowView *)self updateCornerClippingViews];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = UIDropShadowView;
  [(UIView *)&v15 layoutSubviews];
  [(UIDropShadowView *)self _layoutGrabbers];
  if ([(UIDropShadowView *)self _insetsContentViewForGrabber])
  {
    [(UIDropShadowView *)self _contentViewFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(UIDropShadowView *)self contentView];
    [v11 _setFrameIgnoringLayerTransform:{v4, v6, v8, v10}];
  }

  v12 = [(UIDropShadowView *)self _effectiveInsetsContentViewForGrabber];
  if (v12)
  {
    v13 = +[UIColor systemBackgroundColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(UIDropShadowView *)self deepestClippingView];
  [v14 setBackgroundColor:v13];

  if (v12)
  {
  }
}

- (BOOL)_effectiveInsetsContentViewForGrabber
{
  v3 = [(UIDropShadowView *)self _insetsContentViewForGrabber];
  if (v3)
  {

    LOBYTE(v3) = [(UIDropShadowView *)self _hasGrabber];
  }

  return v3;
}

- (void)_layoutGrabbers
{
  if ([(UIDropShadowView *)self _hasCreatedGrabbers])
  {
    [(UIView *)self bounds];
    v4 = v3;
    v36 = v5;
    v37 = v3;
    v6 = v5;
    v8 = v7;
    rect = v7;
    v10 = v9;
    v11 = [(UIDropShadowView *)self _grabberEdge];
    [(UIDropShadowView *)self _grabberAlpha];
    v13 = v12;
    [(UIDropShadowView *)self _grabberSpacing];
    v15 = v14;
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    MidX = CGRectGetMidX(v40);
    v17 = [(UIDropShadowView *)self _isGrabberLumaTrackingEnabled];
    v18 = [(UIDropShadowView *)self _isGrabberBlurEnabled];
    [(UIDropShadowView *)self _grabberPreferredSize];
    v20 = v19;
    v22 = v21;
    v23 = [(UIDropShadowView *)self _topGrabber];
    v38 = v23;
    v24 = 0.0;
    if (!v11)
    {
      v24 = v13;
    }

    [v23 setAlpha:v24];
    [v38 sizeToFit];
    [v38 bounds];
    if (v20 > 0.0)
    {
      v25 = v20;
    }

    if (v22 > 0.0)
    {
      v26 = v22;
    }

    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    [v38 setBounds:{*MEMORY[0x1E695EFF8], v28, v25, v26}];
    [v38 bounds];
    [v38 setCenter:{MidX, v15 + CGRectGetHeight(v41) * 0.5}];
    [v38 _setLumaTrackingEnabled:v17];
    [v38 _setBlurEnabled:v18];
    v29 = [(UIDropShadowView *)self _bottomGrabber];
    v30 = v29;
    v31 = 0.0;
    if (v11 == 1)
    {
      v31 = v13;
    }

    [v29 setAlpha:v31];
    [v30 sizeToFit];
    [v30 bounds];
    if (v20 > 0.0)
    {
      v32 = v20;
    }

    if (v22 > 0.0)
    {
      v33 = v22;
    }

    [v30 setBounds:{v27, v28, v32, v33}];
    v42.origin.y = v36;
    v42.origin.x = v37;
    v42.size.width = rect;
    v42.size.height = v10;
    v34 = CGRectGetHeight(v42) - v15;
    [v30 bounds];
    [v30 setCenter:{MidX, v34 - CGRectGetHeight(v43) * 0.5}];
    [v30 _setLumaTrackingEnabled:v17];
    [v30 _setBlurEnabled:v18];
  }
}

- (CGSize)_grabberPreferredSize
{
  width = self->__grabberPreferredSize.width;
  height = self->__grabberPreferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentTouchInsets
{
  top = self->_contentTouchInsets.top;
  left = self->_contentTouchInsets.left;
  bottom = self->_contentTouchInsets.bottom;
  right = self->_contentTouchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIDropShadowView)initWithFrame:(CGRect)a3 independentCorners:(int64_t)a4 supportsShadow:(BOOL)a5 stylesSheetsAsCards:(BOOL)a6
{
  v7 = a5;
  v62[1] = *MEMORY[0x1E69E9840];
  v59.receiver = self;
  v59.super_class = UIDropShadowView;
  v9 = [(UIView *)&v59 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v9->_supportsShadow = v7;
  v9->_independentCorners = a4;
  v9->__grabberSpacing = 5.0;
  v9->__grabberBlurEnabled = 1;
  v11 = *MEMORY[0x1E69796E8];
  v12 = [(UIView *)v9 layer];
  [v12 setCornerCurve:v11];

  if (v7)
  {
    v13 = [[_UIRoundedRectShadowView alloc] initWithCornerRadius:10.0];
    magicShadowView = v10->_magicShadowView;
    v10->_magicShadowView = v13;

    [(UIView *)v10->_magicShadowView setUserInteractionEnabled:0];
    v15 = [(UIView *)v10->_magicShadowView layer];
    [v15 setAllowsHitTesting:0];

    [(_UIShadowView *)v10->_magicShadowView setUseLowerIntensity:1];
    v16 = v10->_magicShadowView;
    [(UIView *)v10 bounds];
    [(_UIRoundedRectShadowView *)v16 frameWithContentWithFrame:?];
    [(UIImageView *)v10->_magicShadowView setFrame:?];
    [(UIView *)v10->_magicShadowView setAutoresizingMask:18];
    [(UIView *)v10 addSubview:v10->_magicShadowView];
    v17 = objc_alloc_init(UIView);
    [(UIView *)v17 setAutoresizingMask:18];
    v18 = [(UIView *)v17 layer];
    [v18 setCornerCurve:v11];

    [(UIView *)v10 addSubview:v17];
    objc_storeWeak(&v10->_firstCornerClippingDescendant, v17);
  }

  else
  {
    objc_storeWeak(&v10->_firstCornerClippingDescendant, v10);
  }

  if (a4 == 3)
  {
    WeakRetained = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
    v35 = [WeakRetained layer];
    [v35 setMaskedCorners:1];

    v21 = objc_alloc_init(UIView);
    [(UIView *)v21 setAutoresizingMask:18];
    v36 = [(UIView *)v21 layer];
    [v36 setCornerCurve:v11];

    v37 = [(UIView *)v21 layer];
    [v37 setMaskedCorners:4];

    v38 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
    [v38 addSubview:v21];

    v33 = objc_alloc_init(UIView);
    [(UIView *)v33 setAutoresizingMask:18];
    v39 = [(UIView *)v33 layer];
    [v39 setCornerCurve:v11];

    v40 = [(UIView *)v33 layer];
    [v40 setMaskedCorners:8];

    [(UIView *)v21 addSubview:v33];
    v41 = objc_alloc_init(UIView);
    [(UIView *)v41 setAutoresizingMask:18];
    v42 = [(UIView *)v41 layer];
    [v42 setCornerCurve:v11];

    v43 = [(UIView *)v41 layer];
    [v43 setMaskedCorners:2];

    [(UIView *)v33 addSubview:v41];
    v60[0] = v21;
    v60[1] = v33;
    v60[2] = v41;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
    cornerClippingDescendants = v10->_cornerClippingDescendants;
    v10->_cornerClippingDescendants = v44;
  }

  else
  {
    if (a4 == 2)
    {
      v27 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      v28 = [v27 layer];
      [v28 setMaskedCorners:3];

      v21 = objc_alloc_init(UIView);
      [(UIView *)v21 setAutoresizingMask:18];
      v29 = [(UIView *)v21 layer];
      [v29 setCornerCurve:v11];

      v30 = [(UIView *)v21 layer];
      [v30 setMaskedCorners:12];

      v31 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      [v31 addSubview:v21];

      v61 = v21;
      v25 = MEMORY[0x1E695DEC8];
      v26 = &v61;
    }

    else
    {
      if (a4 != 1)
      {
        goto LABEL_13;
      }

      v19 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      v20 = [v19 layer];
      [v20 setMaskedCorners:5];

      v21 = objc_alloc_init(UIView);
      [(UIView *)v21 setAutoresizingMask:18];
      v22 = [(UIView *)v21 layer];
      [v22 setCornerCurve:v11];

      v23 = [(UIView *)v21 layer];
      [v23 setMaskedCorners:10];

      v24 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      [v24 addSubview:v21];

      v62[0] = v21;
      v25 = MEMORY[0x1E695DEC8];
      v26 = v62;
    }

    v32 = [v25 arrayWithObjects:v26 count:1];
    v33 = v10->_cornerClippingDescendants;
    v10->_cornerClippingDescendants = v32;
  }

LABEL_13:
  v46 = *MEMORY[0x1E695F060];
  v47 = *(MEMORY[0x1E695F060] + 8);
  v48 = [(UIView *)v10 layer];
  [v48 setShadowOffset:{v46, v47}];

  v49 = [(UIView *)v10 layer];
  [v49 setShadowRadius:2.0];

  v50 = [(UIView *)v10 layer];
  [v50 setShadowPathIsBounds:1];

  v51 = [(UIView *)v10 layer];
  [v51 setPunchoutShadow:1];

  v52 = +[UIColor _dimmingViewColor];
  v53 = [v52 CGColor];
  v54 = [(UIView *)v10 layer];
  [v54 setShadowColor:v53];

  if (!a6)
  {
    v55 = 13.0;
    if ((dyld_program_sdk_at_least() & 1) != 0 || (v55 = 6.0, dyld_program_sdk_at_least()))
    {
      v56 = [(UIView *)v10 layer];
      [v56 setCornerRadius:v55];
    }

    [(UIView *)v10 setClipsToBounds:dyld_program_sdk_at_least()];
    v57 = +[UIColor lightGrayColor];
    [(UIView *)v10 setBackgroundColor:v57];
  }

  return v10;
}

- (CGRect)_contentViewFrame
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UIDropShadowView *)self _effectiveInsetsContentViewForGrabber])
  {
    [(UIDropShadowView *)self _grabberSpacing];
    v12 = v11 + v11;
    [(UIView *)self safeAreaInsets];
    v14 = v13;
    v16 = v15;
    v17 = [(UIDropShadowView *)self _grabberEdge];
    if (v17 == 1)
    {
      v20 = [(UIDropShadowView *)self _bottomGrabber];
      [v20 bounds];
      v18 = v12 + v16 + CGRectGetHeight(v26);
      v19 = 0.0;
    }

    else
    {
      v18 = 0.0;
      v19 = 0.0;
      if (v17)
      {
LABEL_7:
        v4 = v4 + 0.0;
        v6 = v6 + v19;
        v10 = v10 - (v18 + v19);
        goto LABEL_8;
      }

      v20 = [(UIDropShadowView *)self _topGrabber];
      [v20 bounds];
      v19 = v12 + v14 + CGRectGetHeight(v25);
    }

    goto LABEL_7;
  }

LABEL_8:
  v21 = v4;
  v22 = v6;
  v23 = v8;
  v24 = v10;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setEnvironmentMatchingCornerRadii:(UIRectCornerRadii)a3
{
  p_environmentMatchingCornerRadii = &self->_environmentMatchingCornerRadii;
  v4.f64[0] = a3.topLeft;
  v4.f64[1] = a3.bottomLeft;
  v5.f64[0] = a3.bottomRight;
  v5.f64[1] = a3.topRight;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_environmentMatchingCornerRadii.topLeft, v4), vceqq_f64(*&self->_environmentMatchingCornerRadii.bottomRight, v5)))) & 1) == 0)
  {
    p_environmentMatchingCornerRadii->topLeft = a3.topLeft;
    self->_environmentMatchingCornerRadii.bottomLeft = a3.bottomLeft;
    self->_environmentMatchingCornerRadii.bottomRight = a3.bottomRight;
    self->_environmentMatchingCornerRadii.topRight = a3.topRight;
    [(UIDropShadowView *)self updateCornerClippingViews];
    topLeft = p_environmentMatchingCornerRadii->topLeft;
    bottomLeft = p_environmentMatchingCornerRadii->bottomLeft;
    bottomRight = p_environmentMatchingCornerRadii->bottomRight;
    topRight = p_environmentMatchingCornerRadii->topRight;

    [(UIDropShadowView *)self updateBackgroundCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  }
}

- (void)setContentView:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = [(UIView *)contentView superview];
    v8 = [(UIDropShadowView *)self deepestClippingView];

    if (v7 == v8)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    if (self->_contentView)
    {
      v9 = [(UIDropShadowView *)self deepestClippingView];
      [v9 insertSubview:self->_contentView atIndex:0];

      if ([(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
      {
        [(UIView *)self bounds];
        [(UIView *)self->_contentView setFrame:?];
        [(UIView *)self->_contentView setAutoresizingMask:18];
      }

      else
      {
        v19 = MEMORY[0x1E69977A0];
        v23 = [(UIView *)self->_contentView leftAnchor];
        v22 = [(UIView *)self leftAnchor];
        v21 = [v23 constraintEqualToAnchor:v22];
        v24[0] = v21;
        v20 = [(UIView *)self->_contentView rightAnchor];
        v10 = [(UIView *)self rightAnchor];
        v11 = [v20 constraintEqualToAnchor:v10];
        v24[1] = v11;
        v12 = [(UIView *)self->_contentView topAnchor];
        v13 = [(UIView *)self topAnchor];
        v14 = [v12 constraintEqualToAnchor:v13];
        v24[2] = v14;
        v15 = [(UIView *)self->_contentView bottomAnchor];
        v16 = [(UIView *)self bottomAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];
        v24[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
        [v19 activateConstraints:v18];
      }
    }
  }
}

- (void)setOverlayView:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  overlayView = self->_overlayView;
  if (overlayView != v5)
  {
    v7 = [(UIView *)overlayView superview];
    v8 = [(UIDropShadowView *)self deepestClippingView];

    if (v7 == v8)
    {
      [(UIView *)self->_overlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_overlayView, a3);
    if (self->_overlayView)
    {
      v9 = [(UIDropShadowView *)self deepestClippingView];
      [v9 addSubview:self->_overlayView];

      if ([(UIView *)self->_overlayView translatesAutoresizingMaskIntoConstraints])
      {
        [(UIView *)self bounds];
        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
        v14 = -CGRectGetWidth(v31);
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v15 = -CGRectGetHeight(v32);
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v34 = CGRectInset(v33, v14, v15);
        [(UIView *)self->_overlayView setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
        [(UIView *)self->_overlayView setAutoresizingMask:18];
      }

      else
      {
        v25 = MEMORY[0x1E69977A0];
        v29 = [(UIView *)self->_overlayView centerXAnchor];
        v28 = [(UIView *)self centerXAnchor];
        v27 = [v29 constraintEqualToAnchor:v28];
        v30[0] = v27;
        v26 = [(UIView *)self->_overlayView centerYAnchor];
        v16 = [(UIView *)self centerYAnchor];
        v17 = [v26 constraintEqualToAnchor:v16];
        v30[1] = v17;
        v18 = [(UIView *)self->_overlayView widthAnchor];
        v19 = [(UIView *)self widthAnchor];
        v20 = [v18 constraintEqualToAnchor:v19 multiplier:3.0];
        v30[2] = v20;
        v21 = [(UIView *)self->_overlayView heightAnchor];
        v22 = [(UIView *)self heightAnchor];
        v23 = [v21 constraintEqualToAnchor:v22 multiplier:3.0];
        v30[3] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
        [v25 activateConstraints:v24];
      }
    }
  }
}

- (void)_setHasGrabber:(BOOL)a3
{
  if (self->__hasGrabber != a3)
  {
    self->__hasGrabber = a3;
    [(UIView *)self setNeedsLayout];
    if (self->__hasGrabber && ![(UIDropShadowView *)self _hasCreatedGrabbers])
    {
      v4 = objc_alloc_init(_UIGrabber);
      topGrabber = self->__topGrabber;
      self->__topGrabber = v4;

      [(UIControl *)self->__topGrabber addTarget:self action:sel__grabberPrimaryAction forControlEvents:0x2000];
      [(UIView *)self addSubview:self->__topGrabber];
      v6 = objc_alloc_init(_UIGrabber);
      bottomGrabber = self->__bottomGrabber;
      self->__bottomGrabber = v6;

      [(UIControl *)self->__bottomGrabber addTarget:self action:sel__grabberPrimaryAction forControlEvents:0x2000];
      [(UIView *)self addSubview:self->__bottomGrabber];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35__UIDropShadowView__setHasGrabber___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [UIView performWithoutAnimation:v8];
    }
  }
}

- (void)_setGrabberAlpha:(double)a3
{
  if (self->__grabberAlpha != a3)
  {
    self->__grabberAlpha = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberSpacing:(double)a3
{
  if (self->__grabberSpacing != a3)
  {
    self->__grabberSpacing = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberEdge:(int64_t)a3
{
  if (self->__grabberEdge != a3)
  {
    self->__grabberEdge = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberPreferredSize:(CGSize)a3
{
  if (self->__grabberPreferredSize.width != a3.width || self->__grabberPreferredSize.height != a3.height)
  {
    self->__grabberPreferredSize = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setInsetsContentViewForGrabber:(BOOL)a3
{
  if (self->__insetsContentViewForGrabber != a3)
  {
    self->__insetsContentViewForGrabber = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberLumaTrackingEnabled:(BOOL)a3
{
  if (self->__grabberLumaTrackingEnabled != a3)
  {
    self->__grabberLumaTrackingEnabled = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberBlurEnabled:(BOOL)a3
{
  if (self->__grabberBlurEnabled != a3)
  {
    self->__grabberBlurEnabled = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)_isGrabber:(id)a3
{
  v4 = a3;
  v5 = [(UIDropShadowView *)self _topGrabber];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(UIDropShadowView *)self _bottomGrabber];
    v7 = v6 == v4;
  }

  return v7;
}

- (void)_grabberPrimaryAction
{
  v3 = [(UIDropShadowView *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _dropShadowViewGrabberDidTriggerPrimaryAction:self];
  }
}

- (void)setMagicShadowAlpha:(double)a3
{
  v4 = [(UIDropShadowView *)self magicShadowView];
  [v4 setAlpha:a3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIDropShadowView *)self _topGrabber];
  [(UIView *)self convertPoint:v8 toView:x, y];
  v9 = [v8 hitTest:v7 withEvent:?];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    goto LABEL_13;
  }

  v12 = [(UIDropShadowView *)self _bottomGrabber];
  [(UIView *)self convertPoint:v12 toView:x, y];
  v13 = [v12 hitTest:v7 withEvent:?];
  v14 = v13;
  if (!v13)
  {
    v33.receiver = self;
    v33.super_class = UIDropShadowView;
    v15 = [(UIView *)&v33 hitTest:v7 withEvent:x, y];
    if (v15 != self)
    {
      v16 = [(UIDropShadowView *)self contentView];
      if ([(UIView *)v15 isDescendantOfView:v16])
      {
        [(UIView *)self bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [(UIDropShadowView *)self contentTouchInsets];
        v26 = v20 + v25;
        v29 = v22 - (v27 + v28);
        v36.size.height = v24 - (v25 + v30);
        v36.origin.x = v18 + v27;
        v36.origin.y = v26;
        v36.size.width = v29;
        v35.x = x;
        v35.y = y;
        v31 = CGRectContainsPoint(v36, v35);

        if (!v31)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v11 = v15;
      goto LABEL_11;
    }

LABEL_8:
    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = v13;
LABEL_12:

LABEL_13:

  return v11;
}

- (void)setMasksTopCornersOnly:(BOOL)a3
{
  self->_masksTopCornersOnly = a3;
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 15;
  }

  v4 = [(UIView *)self layer];
  [v4 setMaskedCorners:v3];
}

- (void)willBeginRotationWithOriginalBounds:(CGRect)a3 newBounds:(CGRect)a4
{
  if (a3.size.width == a4.size.width && a3.size.height == a4.size.height)
  {
    v9 = [(UIView *)self->_contentView layer:a3.origin.x];
    v6 = +[UIDevice currentDevice];
    v7 = [v6 _graphicsQuality];

    if (v7 != 100)
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 scale];
      [v9 setRasterizationScale:?];

      [v9 setShouldRasterize:1];
    }

    [v9 setFrozen:1];
  }
}

- (void)didFinishRotation
{
  v2 = [(UIView *)self->_contentView layer];
  [v2 setFrozen:0];
  [v2 setShouldRasterize:0];
}

- (UIRectCornerRadii)environmentMatchingCornerRadii
{
  topLeft = self->_environmentMatchingCornerRadii.topLeft;
  bottomLeft = self->_environmentMatchingCornerRadii.bottomLeft;
  bottomRight = self->_environmentMatchingCornerRadii.bottomRight;
  topRight = self->_environmentMatchingCornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (UIDropShadowViewDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end