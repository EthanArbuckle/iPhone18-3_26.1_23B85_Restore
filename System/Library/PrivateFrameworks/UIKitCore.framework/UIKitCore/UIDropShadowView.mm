@interface UIDropShadowView
- (BOOL)_effectiveInsetsContentViewForGrabber;
- (BOOL)_isGrabber:(id)grabber;
- (CGRect)_contentViewFrame;
- (CGSize)_grabberPreferredSize;
- (UIDropShadowView)initWithFrame:(CGRect)frame independentCorners:(int64_t)corners supportsShadow:(BOOL)shadow stylesSheetsAsCards:(BOOL)cards;
- (UIDropShadowViewDelegate)_delegate;
- (UIEdgeInsets)contentTouchInsets;
- (UIRectCornerRadii)environmentMatchingCornerRadii;
- (UIView)deepestClippingView;
- (UIView)firstCornerClippingDescendant;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_grabberPrimaryAction;
- (void)_layoutGrabbers;
- (void)_setGrabberAlpha:(double)alpha;
- (void)_setGrabberBlurEnabled:(BOOL)enabled;
- (void)_setGrabberEdge:(int64_t)edge;
- (void)_setGrabberLumaTrackingEnabled:(BOOL)enabled;
- (void)_setGrabberPreferredSize:(CGSize)size;
- (void)_setGrabberSpacing:(double)spacing;
- (void)_setHasGrabber:(BOOL)grabber;
- (void)_setInsetsContentViewForGrabber:(BOOL)grabber;
- (void)didFinishRotation;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setEnvironmentMatchingCornerRadii:(UIRectCornerRadii)radii;
- (void)setMagicShadowAlpha:(double)alpha;
- (void)setMasksTopCornersOnly:(BOOL)only;
- (void)setOverlayView:(id)view;
- (void)updateBackgroundCornerRadii:(UIRectCornerRadii)radii;
- (void)updateCornerClippingViews;
- (void)willBeginRotationWithOriginalBounds:(CGRect)bounds newBounds:(CGRect)newBounds;
@end

@implementation UIDropShadowView

- (void)updateBackgroundCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  selfCopy = self;
  sub_188AE1CF0(topLeft, bottomLeft, bottomRight, topRight);
}

- (void)updateCornerClippingViews
{
  window = [(UIView *)self window];
  windowScene = [window windowScene];
  _effectiveUISettings = [windowScene _effectiveUISettings];
  cornerRadiusConfiguration = [_effectiveUISettings cornerRadiusConfiguration];

  if (!cornerRadiusConfiguration)
  {
    if (_UISolariumEnabled() && _UIApplicationProcessIsSpringBoard())
    {
      v6 = objc_alloc(MEMORY[0x1E698E668]);
      traitCollection = [(UIView *)self traitCollection];
      [traitCollection displayCornerRadius];
      cornerRadiusConfiguration = [v6 initWithCornerRadius:?];
    }

    else
    {
      cornerRadiusConfiguration = 0;
    }
  }

  if ([(UIDropShadowView *)self supportsShadow])
  {
    if (self->_environmentMatchingCornerRadii.topLeft == 1.79769313e308)
    {
      [cornerRadiusConfiguration topLeft];
    }

    v8 = [UICornerRadius fixedRadius:?];
    if (self->_environmentMatchingCornerRadii.topRight == 1.79769313e308)
    {
      [cornerRadiusConfiguration topRight];
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
        [cornerRadiusConfiguration bottomLeft];
      }

      v10 = [UICornerRadius fixedRadius:?];
      if (self->_environmentMatchingCornerRadii.bottomRight == 1.79769313e308)
      {
        [cornerRadiusConfiguration bottomRight];
      }

      v11 = [UICornerRadius fixedRadius:?];
      v12 = [UICornerConfiguration configurationWithTopLeftRadius:v8 topRightRadius:v9 bottomLeftRadius:v10 bottomRightRadius:v11];
      [(UIView *)self setCornerConfiguration:v12];
    }
  }

  independentCorners = [(UIDropShadowView *)self independentCorners];
  if (independentCorners > 1)
  {
    if (independentCorners == 2)
    {
      firstCornerClippingDescendant = [(UIDropShadowView *)self firstCornerClippingDescendant];
      topLeft = self->_environmentMatchingCornerRadii.topLeft;
      [cornerRadiusConfiguration topLeft];
      setEnvironmentMatchingCornerRadius(firstCornerClippingDescendant, self, &self->_environmentMatchingCornerRadii, 3, topLeft, v44);

      cornerClippingDescendants = [(UIDropShadowView *)self cornerClippingDescendants];
      v18 = [cornerClippingDescendants objectAtIndexedSubscript:0];
      bottomRight = self->_environmentMatchingCornerRadii.bottomRight;
      [cornerRadiusConfiguration bottomRight];
      v21 = v46;
      v22 = v18;
      v23 = bottomRight;
      selfCopy3 = self;
      p_bottomRight = &self->_environmentMatchingCornerRadii.bottomRight;
      v26 = 12;
    }

    else
    {
      if (independentCorners != 3)
      {
        goto LABEL_30;
      }

      firstCornerClippingDescendant2 = [(UIDropShadowView *)self firstCornerClippingDescendant];
      v28 = self->_environmentMatchingCornerRadii.topLeft;
      [cornerRadiusConfiguration topLeft];
      setEnvironmentMatchingCornerRadius(firstCornerClippingDescendant2, self, &self->_environmentMatchingCornerRadii, 1, v28, v29);

      cornerClippingDescendants2 = [(UIDropShadowView *)self cornerClippingDescendants];
      v31 = [cornerClippingDescendants2 objectAtIndexedSubscript:0];
      bottomLeft = self->_environmentMatchingCornerRadii.bottomLeft;
      [cornerRadiusConfiguration bottomLeft];
      setEnvironmentMatchingCornerRadius(v31, self, &self->_environmentMatchingCornerRadii.bottomLeft, 4, bottomLeft, v33);

      cornerClippingDescendants3 = [(UIDropShadowView *)self cornerClippingDescendants];
      v35 = [cornerClippingDescendants3 objectAtIndexedSubscript:1];
      v36 = self->_environmentMatchingCornerRadii.bottomRight;
      [cornerRadiusConfiguration bottomRight];
      setEnvironmentMatchingCornerRadius(v35, self, &self->_environmentMatchingCornerRadii.bottomRight, 8, v36, v37);

      cornerClippingDescendants = [(UIDropShadowView *)self cornerClippingDescendants];
      v18 = [cornerClippingDescendants objectAtIndexedSubscript:2];
      topRight = self->_environmentMatchingCornerRadii.topRight;
      [cornerRadiusConfiguration topRight];
      v21 = v39;
      v22 = v18;
      v23 = topRight;
      selfCopy3 = self;
      p_bottomRight = &self->_environmentMatchingCornerRadii.topRight;
      v26 = 2;
    }

    goto LABEL_28;
  }

  if (independentCorners)
  {
    if (independentCorners != 1)
    {
      goto LABEL_30;
    }

    firstCornerClippingDescendant3 = [(UIDropShadowView *)self firstCornerClippingDescendant];
    v15 = self->_environmentMatchingCornerRadii.topLeft;
    [cornerRadiusConfiguration topLeft];
    setEnvironmentMatchingCornerRadius(firstCornerClippingDescendant3, self, &self->_environmentMatchingCornerRadii, 5, v15, v16);

    cornerClippingDescendants = [(UIDropShadowView *)self cornerClippingDescendants];
    v18 = [cornerClippingDescendants objectAtIndexedSubscript:0];
    v19 = self->_environmentMatchingCornerRadii.bottomRight;
    [cornerRadiusConfiguration bottomRight];
    v21 = v20;
    v22 = v18;
    v23 = v19;
    selfCopy3 = self;
    p_bottomRight = &self->_environmentMatchingCornerRadii.bottomRight;
    v26 = 10;
LABEL_28:
    setEnvironmentMatchingCornerRadius(v22, selfCopy3, p_bottomRight, v26, v23, v21);

    goto LABEL_29;
  }

  cornerClippingDescendants = [(UIDropShadowView *)self firstCornerClippingDescendant];
  v40 = self->_environmentMatchingCornerRadii.topLeft;
  [cornerRadiusConfiguration topLeft];
  setEnvironmentMatchingCornerRadius(cornerClippingDescendants, self, &self->_environmentMatchingCornerRadii, -1, v40, v41);
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
  cornerClippingDescendants = [(UIDropShadowView *)self cornerClippingDescendants];
  lastObject = [cornerClippingDescendants lastObject];
  v5 = lastObject;
  if (lastObject)
  {
    firstCornerClippingDescendant = lastObject;
  }

  else
  {
    firstCornerClippingDescendant = [(UIDropShadowView *)self firstCornerClippingDescendant];
  }

  v7 = firstCornerClippingDescendant;

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
    contentView = [(UIDropShadowView *)self contentView];
    [contentView _setFrameIgnoringLayerTransform:{v4, v6, v8, v10}];
  }

  _effectiveInsetsContentViewForGrabber = [(UIDropShadowView *)self _effectiveInsetsContentViewForGrabber];
  if (_effectiveInsetsContentViewForGrabber)
  {
    v13 = +[UIColor systemBackgroundColor];
  }

  else
  {
    v13 = 0;
  }

  deepestClippingView = [(UIDropShadowView *)self deepestClippingView];
  [deepestClippingView setBackgroundColor:v13];

  if (_effectiveInsetsContentViewForGrabber)
  {
  }
}

- (BOOL)_effectiveInsetsContentViewForGrabber
{
  _insetsContentViewForGrabber = [(UIDropShadowView *)self _insetsContentViewForGrabber];
  if (_insetsContentViewForGrabber)
  {

    LOBYTE(_insetsContentViewForGrabber) = [(UIDropShadowView *)self _hasGrabber];
  }

  return _insetsContentViewForGrabber;
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
    _grabberEdge = [(UIDropShadowView *)self _grabberEdge];
    [(UIDropShadowView *)self _grabberAlpha];
    v13 = v12;
    [(UIDropShadowView *)self _grabberSpacing];
    v15 = v14;
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    MidX = CGRectGetMidX(v40);
    _isGrabberLumaTrackingEnabled = [(UIDropShadowView *)self _isGrabberLumaTrackingEnabled];
    _isGrabberBlurEnabled = [(UIDropShadowView *)self _isGrabberBlurEnabled];
    [(UIDropShadowView *)self _grabberPreferredSize];
    v20 = v19;
    v22 = v21;
    _topGrabber = [(UIDropShadowView *)self _topGrabber];
    v38 = _topGrabber;
    v24 = 0.0;
    if (!_grabberEdge)
    {
      v24 = v13;
    }

    [_topGrabber setAlpha:v24];
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
    [v38 _setLumaTrackingEnabled:_isGrabberLumaTrackingEnabled];
    [v38 _setBlurEnabled:_isGrabberBlurEnabled];
    _bottomGrabber = [(UIDropShadowView *)self _bottomGrabber];
    v30 = _bottomGrabber;
    v31 = 0.0;
    if (_grabberEdge == 1)
    {
      v31 = v13;
    }

    [_bottomGrabber setAlpha:v31];
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
    [v30 _setLumaTrackingEnabled:_isGrabberLumaTrackingEnabled];
    [v30 _setBlurEnabled:_isGrabberBlurEnabled];
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

- (UIDropShadowView)initWithFrame:(CGRect)frame independentCorners:(int64_t)corners supportsShadow:(BOOL)shadow stylesSheetsAsCards:(BOOL)cards
{
  shadowCopy = shadow;
  v62[1] = *MEMORY[0x1E69E9840];
  v59.receiver = self;
  v59.super_class = UIDropShadowView;
  v9 = [(UIView *)&v59 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v9->_supportsShadow = shadowCopy;
  v9->_independentCorners = corners;
  v9->__grabberSpacing = 5.0;
  v9->__grabberBlurEnabled = 1;
  v11 = *MEMORY[0x1E69796E8];
  layer = [(UIView *)v9 layer];
  [layer setCornerCurve:v11];

  if (shadowCopy)
  {
    v13 = [[_UIRoundedRectShadowView alloc] initWithCornerRadius:10.0];
    magicShadowView = v10->_magicShadowView;
    v10->_magicShadowView = v13;

    [(UIView *)v10->_magicShadowView setUserInteractionEnabled:0];
    layer2 = [(UIView *)v10->_magicShadowView layer];
    [layer2 setAllowsHitTesting:0];

    [(_UIShadowView *)v10->_magicShadowView setUseLowerIntensity:1];
    v16 = v10->_magicShadowView;
    [(UIView *)v10 bounds];
    [(_UIRoundedRectShadowView *)v16 frameWithContentWithFrame:?];
    [(UIImageView *)v10->_magicShadowView setFrame:?];
    [(UIView *)v10->_magicShadowView setAutoresizingMask:18];
    [(UIView *)v10 addSubview:v10->_magicShadowView];
    v17 = objc_alloc_init(UIView);
    [(UIView *)v17 setAutoresizingMask:18];
    layer3 = [(UIView *)v17 layer];
    [layer3 setCornerCurve:v11];

    [(UIView *)v10 addSubview:v17];
    objc_storeWeak(&v10->_firstCornerClippingDescendant, v17);
  }

  else
  {
    objc_storeWeak(&v10->_firstCornerClippingDescendant, v10);
  }

  if (corners == 3)
  {
    WeakRetained = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
    layer4 = [WeakRetained layer];
    [layer4 setMaskedCorners:1];

    v21 = objc_alloc_init(UIView);
    [(UIView *)v21 setAutoresizingMask:18];
    layer5 = [(UIView *)v21 layer];
    [layer5 setCornerCurve:v11];

    layer6 = [(UIView *)v21 layer];
    [layer6 setMaskedCorners:4];

    v38 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
    [v38 addSubview:v21];

    v33 = objc_alloc_init(UIView);
    [(UIView *)v33 setAutoresizingMask:18];
    layer7 = [(UIView *)v33 layer];
    [layer7 setCornerCurve:v11];

    layer8 = [(UIView *)v33 layer];
    [layer8 setMaskedCorners:8];

    [(UIView *)v21 addSubview:v33];
    v41 = objc_alloc_init(UIView);
    [(UIView *)v41 setAutoresizingMask:18];
    layer9 = [(UIView *)v41 layer];
    [layer9 setCornerCurve:v11];

    layer10 = [(UIView *)v41 layer];
    [layer10 setMaskedCorners:2];

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
    if (corners == 2)
    {
      v27 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      layer11 = [v27 layer];
      [layer11 setMaskedCorners:3];

      v21 = objc_alloc_init(UIView);
      [(UIView *)v21 setAutoresizingMask:18];
      layer12 = [(UIView *)v21 layer];
      [layer12 setCornerCurve:v11];

      layer13 = [(UIView *)v21 layer];
      [layer13 setMaskedCorners:12];

      v31 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      [v31 addSubview:v21];

      v61 = v21;
      v25 = MEMORY[0x1E695DEC8];
      v26 = &v61;
    }

    else
    {
      if (corners != 1)
      {
        goto LABEL_13;
      }

      v19 = objc_loadWeakRetained(&v10->_firstCornerClippingDescendant);
      layer14 = [v19 layer];
      [layer14 setMaskedCorners:5];

      v21 = objc_alloc_init(UIView);
      [(UIView *)v21 setAutoresizingMask:18];
      layer15 = [(UIView *)v21 layer];
      [layer15 setCornerCurve:v11];

      layer16 = [(UIView *)v21 layer];
      [layer16 setMaskedCorners:10];

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
  layer17 = [(UIView *)v10 layer];
  [layer17 setShadowOffset:{v46, v47}];

  layer18 = [(UIView *)v10 layer];
  [layer18 setShadowRadius:2.0];

  layer19 = [(UIView *)v10 layer];
  [layer19 setShadowPathIsBounds:1];

  layer20 = [(UIView *)v10 layer];
  [layer20 setPunchoutShadow:1];

  v52 = +[UIColor _dimmingViewColor];
  cGColor = [v52 CGColor];
  layer21 = [(UIView *)v10 layer];
  [layer21 setShadowColor:cGColor];

  if (!cards)
  {
    v55 = 13.0;
    if ((dyld_program_sdk_at_least() & 1) != 0 || (v55 = 6.0, dyld_program_sdk_at_least()))
    {
      layer22 = [(UIView *)v10 layer];
      [layer22 setCornerRadius:v55];
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
    _grabberEdge = [(UIDropShadowView *)self _grabberEdge];
    if (_grabberEdge == 1)
    {
      _bottomGrabber = [(UIDropShadowView *)self _bottomGrabber];
      [_bottomGrabber bounds];
      v18 = v12 + v16 + CGRectGetHeight(v26);
      v19 = 0.0;
    }

    else
    {
      v18 = 0.0;
      v19 = 0.0;
      if (_grabberEdge)
      {
LABEL_7:
        v4 = v4 + 0.0;
        v6 = v6 + v19;
        v10 = v10 - (v18 + v19);
        goto LABEL_8;
      }

      _bottomGrabber = [(UIDropShadowView *)self _topGrabber];
      [_bottomGrabber bounds];
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

- (void)setEnvironmentMatchingCornerRadii:(UIRectCornerRadii)radii
{
  p_environmentMatchingCornerRadii = &self->_environmentMatchingCornerRadii;
  v4.f64[0] = radii.topLeft;
  v4.f64[1] = radii.bottomLeft;
  v5.f64[0] = radii.bottomRight;
  v5.f64[1] = radii.topRight;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_environmentMatchingCornerRadii.topLeft, v4), vceqq_f64(*&self->_environmentMatchingCornerRadii.bottomRight, v5)))) & 1) == 0)
  {
    p_environmentMatchingCornerRadii->topLeft = radii.topLeft;
    self->_environmentMatchingCornerRadii.bottomLeft = radii.bottomLeft;
    self->_environmentMatchingCornerRadii.bottomRight = radii.bottomRight;
    self->_environmentMatchingCornerRadii.topRight = radii.topRight;
    [(UIDropShadowView *)self updateCornerClippingViews];
    topLeft = p_environmentMatchingCornerRadii->topLeft;
    bottomLeft = p_environmentMatchingCornerRadii->bottomLeft;
    bottomRight = p_environmentMatchingCornerRadii->bottomRight;
    topRight = p_environmentMatchingCornerRadii->topRight;

    [(UIDropShadowView *)self updateBackgroundCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  }
}

- (void)setContentView:(id)view
{
  v24[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    superview = [(UIView *)contentView superview];
    deepestClippingView = [(UIDropShadowView *)self deepestClippingView];

    if (superview == deepestClippingView)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    if (self->_contentView)
    {
      deepestClippingView2 = [(UIDropShadowView *)self deepestClippingView];
      [deepestClippingView2 insertSubview:self->_contentView atIndex:0];

      if ([(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
      {
        [(UIView *)self bounds];
        [(UIView *)self->_contentView setFrame:?];
        [(UIView *)self->_contentView setAutoresizingMask:18];
      }

      else
      {
        v19 = MEMORY[0x1E69977A0];
        leftAnchor = [(UIView *)self->_contentView leftAnchor];
        leftAnchor2 = [(UIView *)self leftAnchor];
        v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        v24[0] = v21;
        rightAnchor = [(UIView *)self->_contentView rightAnchor];
        rightAnchor2 = [(UIView *)self rightAnchor];
        v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        v24[1] = v11;
        topAnchor = [(UIView *)self->_contentView topAnchor];
        topAnchor2 = [(UIView *)self topAnchor];
        v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v24[2] = v14;
        bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
        bottomAnchor2 = [(UIView *)self bottomAnchor];
        v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v24[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
        [v19 activateConstraints:v18];
      }
    }
  }
}

- (void)setOverlayView:(id)view
{
  v30[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  overlayView = self->_overlayView;
  if (overlayView != viewCopy)
  {
    superview = [(UIView *)overlayView superview];
    deepestClippingView = [(UIDropShadowView *)self deepestClippingView];

    if (superview == deepestClippingView)
    {
      [(UIView *)self->_overlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_overlayView, view);
    if (self->_overlayView)
    {
      deepestClippingView2 = [(UIDropShadowView *)self deepestClippingView];
      [deepestClippingView2 addSubview:self->_overlayView];

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
        centerXAnchor = [(UIView *)self->_overlayView centerXAnchor];
        centerXAnchor2 = [(UIView *)self centerXAnchor];
        v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v30[0] = v27;
        centerYAnchor = [(UIView *)self->_overlayView centerYAnchor];
        centerYAnchor2 = [(UIView *)self centerYAnchor];
        v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v30[1] = v17;
        widthAnchor = [(UIView *)self->_overlayView widthAnchor];
        widthAnchor2 = [(UIView *)self widthAnchor];
        v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:3.0];
        v30[2] = v20;
        heightAnchor = [(UIView *)self->_overlayView heightAnchor];
        heightAnchor2 = [(UIView *)self heightAnchor];
        v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:3.0];
        v30[3] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
        [v25 activateConstraints:v24];
      }
    }
  }
}

- (void)_setHasGrabber:(BOOL)grabber
{
  if (self->__hasGrabber != grabber)
  {
    self->__hasGrabber = grabber;
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

- (void)_setGrabberAlpha:(double)alpha
{
  if (self->__grabberAlpha != alpha)
  {
    self->__grabberAlpha = alpha;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberSpacing:(double)spacing
{
  if (self->__grabberSpacing != spacing)
  {
    self->__grabberSpacing = spacing;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberEdge:(int64_t)edge
{
  if (self->__grabberEdge != edge)
  {
    self->__grabberEdge = edge;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberPreferredSize:(CGSize)size
{
  if (self->__grabberPreferredSize.width != size.width || self->__grabberPreferredSize.height != size.height)
  {
    self->__grabberPreferredSize = size;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setInsetsContentViewForGrabber:(BOOL)grabber
{
  if (self->__insetsContentViewForGrabber != grabber)
  {
    self->__insetsContentViewForGrabber = grabber;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberLumaTrackingEnabled:(BOOL)enabled
{
  if (self->__grabberLumaTrackingEnabled != enabled)
  {
    self->__grabberLumaTrackingEnabled = enabled;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setGrabberBlurEnabled:(BOOL)enabled
{
  if (self->__grabberBlurEnabled != enabled)
  {
    self->__grabberBlurEnabled = enabled;
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)_isGrabber:(id)grabber
{
  grabberCopy = grabber;
  _topGrabber = [(UIDropShadowView *)self _topGrabber];
  if (_topGrabber == grabberCopy)
  {
    v7 = 1;
  }

  else
  {
    _bottomGrabber = [(UIDropShadowView *)self _bottomGrabber];
    v7 = _bottomGrabber == grabberCopy;
  }

  return v7;
}

- (void)_grabberPrimaryAction
{
  _delegate = [(UIDropShadowView *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    [_delegate _dropShadowViewGrabberDidTriggerPrimaryAction:self];
  }
}

- (void)setMagicShadowAlpha:(double)alpha
{
  magicShadowView = [(UIDropShadowView *)self magicShadowView];
  [magicShadowView setAlpha:alpha];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _topGrabber = [(UIDropShadowView *)self _topGrabber];
  [(UIView *)self convertPoint:_topGrabber toView:x, y];
  v9 = [_topGrabber hitTest:eventCopy withEvent:?];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    goto LABEL_13;
  }

  _bottomGrabber = [(UIDropShadowView *)self _bottomGrabber];
  [(UIView *)self convertPoint:_bottomGrabber toView:x, y];
  v13 = [_bottomGrabber hitTest:eventCopy withEvent:?];
  v14 = v13;
  if (!v13)
  {
    v33.receiver = self;
    v33.super_class = UIDropShadowView;
    v15 = [(UIView *)&v33 hitTest:eventCopy withEvent:x, y];
    if (v15 != self)
    {
      contentView = [(UIDropShadowView *)self contentView];
      if ([(UIView *)v15 isDescendantOfView:contentView])
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

- (void)setMasksTopCornersOnly:(BOOL)only
{
  self->_masksTopCornersOnly = only;
  if (only)
  {
    v3 = 3;
  }

  else
  {
    v3 = 15;
  }

  layer = [(UIView *)self layer];
  [layer setMaskedCorners:v3];
}

- (void)willBeginRotationWithOriginalBounds:(CGRect)bounds newBounds:(CGRect)newBounds
{
  if (bounds.size.width == newBounds.size.width && bounds.size.height == newBounds.size.height)
  {
    v9 = [(UIView *)self->_contentView layer:bounds.origin.x];
    v6 = +[UIDevice currentDevice];
    _graphicsQuality = [v6 _graphicsQuality];

    if (_graphicsQuality != 100)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      [v9 setRasterizationScale:?];

      [v9 setShouldRasterize:1];
    }

    [v9 setFrozen:1];
  }
}

- (void)didFinishRotation
{
  layer = [(UIView *)self->_contentView layer];
  [layer setFrozen:0];
  [layer setShouldRasterize:0];
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