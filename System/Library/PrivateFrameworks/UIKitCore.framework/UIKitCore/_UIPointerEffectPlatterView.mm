@interface _UIPointerEffectPlatterView
- (_UIPointerEffectPlatterView)initWithTargetedPreview:(id)preview;
- (id)_newLumaTrackingViewForTintView:(id)view;
- (id)_newShadowView;
- (id)_newTintView;
- (id)_specularOverlayView:(id)view withOptions:(unint64_t)options;
- (void)_installAccessoryView:(id)view;
- (void)_layoutTintView;
- (void)_updateContentMask;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setPressed:(BOOL)pressed;
- (void)setShadowAlpha:(double)alpha;
- (void)setSpecularHighlight:(id)highlight;
- (void)setTargetedPreview:(id)preview;
- (void)setTintDisabled:(BOOL)disabled;
- (void)setTintMode:(int64_t)mode;
- (void)setTintViewScale:(double)scale;
- (void)setTintViewShape:(id)shape;
@end

@implementation _UIPointerEffectPlatterView

- (_UIPointerEffectPlatterView)initWithTargetedPreview:(id)preview
{
  v52 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [previewCopy size];
  v50.receiver = self;
  v50.super_class = _UIPointerEffectPlatterView;
  v9 = [(UIView *)&v50 initWithFrame:v5, v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(UIView *)v9 setUserInteractionEnabled:0];
    layer = [(UIView *)v10 layer];
    [layer setAllowsGroupBlending:0];

    [(_UIPointerEffectPlatterView *)v10 setTargetedPreview:previewCopy];
    v10->_tintDisabled = 1;
    view = [previewCopy view];
    [view bounds];
    if ([previewCopy _sourceViewIsInViewHierarchy])
    {
      v13 = [[_UIPortalView alloc] initWithSourceView:view];
      [(_UIPortalView *)v13 setName:@"_UIPointerEffectPlatterView.contentPortal"];
      [(_UIPortalView *)v13 setHidesSourceView:1];
      [(_UIPortalView *)v13 setMatchesAlpha:1];
      [(_UIPortalView *)v13 setAllowsBackdropGroups:1];
      [(_UIPortalView *)v13 setAllowsHitTesting:1];
      portalLayer = [(_UIPortalView *)v13 portalLayer];
      [portalLayer setOverrides:&unk_1EFE34B30];

      [(_UIPortalView *)v13 setHidesSourceLayerInOtherPortals:1];
      layer2 = [(UIView *)v13 layer];
      [layer2 setAllowsGroupBlending:0];
    }

    else
    {
      v13 = view;
    }

    [(_UIPointerEffectPlatterView *)v10 setContentView:v13];
    contentView = [(_UIPointerEffectPlatterView *)v10 contentView];
    [contentView frame];
    v18 = v17;
    v20 = v19;
    contentView2 = [(_UIPointerEffectPlatterView *)v10 contentView];
    [contentView2 setFrame:{0.0, 0.0, v18, v20}];

    [(UIView *)v10 addSubview:v13];
    [(_UIPointerEffectPlatterView *)v10 _updateContentMask];
    _accessoryViews = [previewCopy _accessoryViews];
    v23 = [_accessoryViews count];

    if (v23)
    {
      v43 = v13;
      v44 = view;
      array = [MEMORY[0x1E695DF70] array];
      [(_UIPointerEffectPlatterView *)v10 setAccessoryPortals:array];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      _accessoryViews2 = [previewCopy _accessoryViews];
      v26 = [_accessoryViews2 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v47;
        do
        {
          v29 = 0;
          do
          {
            if (*v47 != v28)
            {
              objc_enumerationMutation(_accessoryViews2);
            }

            v30 = *(*(&v46 + 1) + 8 * v29);
            window = [v30 window];

            if (window)
            {
              [(_UIPointerEffectPlatterView *)v10 _installAccessoryView:v30];
            }

            else if (os_variant_has_internal_diagnostics())
            {
              v33 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "All of UITargetedPreview's _accessoryViews must be in a window.", buf, 2u);
              }
            }

            else
            {
              v32 = *(__UILogGetCategoryCachedImpl("Assert", &initWithTargetedPreview____s_category) + 8);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "All of UITargetedPreview's _accessoryViews must be in a window.", buf, 2u);
              }
            }

            ++v29;
          }

          while (v27 != v29);
          v34 = [_accessoryViews2 countByEnumeratingWithState:&v46 objects:v51 count:16];
          v27 = v34;
        }

        while (v34);
      }

      view = v44;
      v13 = v43;
    }

    v35 = +[_UIPointerSettingsDomain rootSettings];
    showEffectPlatter = [v35 showEffectPlatter];

    if (showEffectPlatter)
    {
      v37 = +[UIColor greenColor];
      v38 = [v37 colorWithAlphaComponent:0.75];
      cGColor = [v38 CGColor];
      layer3 = [(UIView *)v10 layer];
      [layer3 setBorderColor:cGColor];

      layer4 = [(UIView *)v10 layer];
      [layer4 setBorderWidth:1.0];
    }
  }

  return v10;
}

- (void)_installAccessoryView:(id)view
{
  viewCopy = view;
  v13 = [[_UIPortalView alloc] initWithSourceView:viewCopy];
  [(_UIPortalView *)v13 setName:@"_UIPointerEffectPlatterView.accessory"];
  [(_UIPortalView *)v13 setHidesSourceView:1];
  [(_UIPortalView *)v13 setMatchesAlpha:1];
  [(_UIPortalView *)v13 setAllowsBackdropGroups:1];
  superview = [viewCopy superview];
  [viewCopy center];
  v7 = v6;
  v9 = v8;

  targetedPreview = [(_UIPointerEffectPlatterView *)self targetedPreview];
  view = [targetedPreview view];
  [superview convertPoint:view toView:{v7, v9}];
  [(_UIPortalView *)v13 setCenter:?];

  accessoryPortals = [(_UIPointerEffectPlatterView *)self accessoryPortals];
  [accessoryPortals addObject:v13];

  [(UIView *)self addSubview:v13];
}

- (void)setTargetedPreview:(id)preview
{
  previewCopy = preview;
  if (([previewCopy isEqual:self->_targetedPreview] & 1) == 0)
  {
    targetedPreview = self->_targetedPreview;
    if (!targetedPreview || (-[UITargetedPreview view](targetedPreview, "view"), v5 = objc_claimAutoreleasedReturnValue(), [previewCopy view], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
    {
      v7 = [previewCopy copy];
      v8 = self->_targetedPreview;
      self->_targetedPreview = v7;

      [(_UIPointerEffectPlatterView *)self _updateContentMask];
    }
  }
}

- (void)_updateContentMask
{
  targetedPreview = [(_UIPointerEffectPlatterView *)self targetedPreview];
  contentView = [(_UIPointerEffectPlatterView *)self contentView];
  parameters = [targetedPreview parameters];
  visiblePath = [parameters visiblePath];

  if (!visiblePath || [targetedPreview _previewMode] == 4 || objc_msgSend(targetedPreview, "_previewMode") == 5)
  {
    [contentView setMaskView:0];
  }

  else
  {
    [visiblePath bounds];
    v6 = -CGRectGetMinX(v15);
    [visiblePath bounds];
    v7 = -CGRectGetMinY(v16);
    [contentView bounds];
    v18 = CGRectOffset(v17, v6, v7);
    [contentView setFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
    v8 = [_UIShapeView alloc];
    view = [targetedPreview view];
    [view bounds];
    v10 = [(UIView *)v8 initWithFrame:?];

    cGPath = [visiblePath CGPath];
    shapeLayer = [(_UIShapeView *)v10 shapeLayer];
    [shapeLayer setPath:cGPath];

    [contentView setMaskView:v10];
  }
}

- (void)setShadowAlpha:(double)alpha
{
  if (self->_shadowAlpha != alpha)
  {
    self->_shadowAlpha = alpha;
    if (alpha > 0.0)
    {
      shadowView = [(_UIPointerEffectPlatterView *)self shadowView];

      if (!shadowView)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __46___UIPointerEffectPlatterView_setShadowAlpha___block_invoke;
        v7[3] = &unk_1E70F3590;
        v7[4] = self;
        [UIView performWithoutAnimation:v7];
      }
    }

    shadowAlpha = self->_shadowAlpha;
    shadowView2 = [(_UIPointerEffectPlatterView *)self shadowView];
    [shadowView2 setAlpha:shadowAlpha];
  }
}

- (void)setTintDisabled:(BOOL)disabled
{
  if (self->_tintDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_tintDisabled = disabled;
    tintView = [(_UIPointerEffectPlatterView *)self tintView];
    [tintView setDisabled:disabledCopy];
  }
}

- (void)setTintMode:(int64_t)mode
{
  if (self->_tintMode != mode)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_tintMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43___UIPointerEffectPlatterView_setTintMode___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)setTintViewScale:(double)scale
{
  if (vabdd_f64(scale, self->_tintViewScale) >= 2.22044605e-16)
  {
    v9 = v3;
    v10 = v4;
    self->_tintViewScale = scale;
    CGAffineTransformMakeScale(&v8, scale, scale);
    tintView = [(_UIPointerEffectPlatterView *)self tintView];
    v7 = v8;
    [tintView setTransform:&v7];
  }
}

- (void)setTintViewShape:(id)shape
{
  shapeCopy = shape;
  if (([shapeCopy isEqual:self->_tintViewShape] & 1) == 0)
  {
    objc_storeStrong(&self->_tintViewShape, shape);
    [(_UIPointerEffectPlatterView *)self _layoutTintView];
  }
}

- (void)setSpecularHighlight:(id)highlight
{
  highlightCopy = highlight;
  if (self->_specularHighlight != highlightCopy)
  {
    objc_storeStrong(&self->_specularHighlight, highlight);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___UIPointerEffectPlatterView_setSpecularHighlight___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    pressedCopy = pressed;
    self->_pressed = pressed;
    tintView = [(_UIPointerEffectPlatterView *)self tintView];
    [tintView setPressed:pressedCopy];
  }
}

- (void)layoutSubviews
{
  v60 = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = _UIPointerEffectPlatterView;
  [(UIView *)&v58 layoutSubviews];
  tintMode = [(_UIPointerEffectPlatterView *)self tintMode];
  if (tintMode == 2)
  {
    tintView = [(_UIPointerEffectPlatterView *)self tintView];
    contentView = [(_UIPointerEffectPlatterView *)self contentView];
    [(UIView *)self insertSubview:tintView belowSubview:contentView];

    lumaTrackingView = [(_UIPointerEffectPlatterView *)self lumaTrackingView];
    [(UIView *)self sendSubviewToBack:lumaTrackingView];
  }

  else
  {
    if (tintMode != 1)
    {
      goto LABEL_6;
    }

    tintView2 = [(_UIPointerEffectPlatterView *)self tintView];
    [(UIView *)self bringSubviewToFront:tintView2];

    lumaTrackingView = [(_UIPointerEffectPlatterView *)self lumaTrackingView];
    tintView3 = [(_UIPointerEffectPlatterView *)self tintView];
    [(UIView *)self insertSubview:lumaTrackingView belowSubview:tintView3];
  }

LABEL_6:
  lumaTrackingView2 = [(_UIPointerEffectPlatterView *)self lumaTrackingView];

  if (lumaTrackingView2)
  {
    lumaTrackingView3 = [(_UIPointerEffectPlatterView *)self lumaTrackingView];
    [lumaTrackingView3 setPaused:0];
  }

  specularHighlight = [(_UIPointerEffectPlatterView *)self specularHighlight];

  if (specularHighlight)
  {
    specularOverlayView = [(_UIPointerEffectPlatterView *)self specularOverlayView];
    [(UIView *)self bringSubviewToFront:specularOverlayView];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  accessoryPortals = [(_UIPointerEffectPlatterView *)self accessoryPortals];
  v14 = [accessoryPortals countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    do
    {
      v17 = 0;
      do
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(accessoryPortals);
        }

        [(UIView *)self bringSubviewToFront:*(*(&v54 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [accessoryPortals countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v15);
  }

  [(UIView *)self bounds];
  v20 = v19 + v18 * 0.5;
  v23 = v22 + v21 * 0.5;
  targetedPreview = [(_UIPointerEffectPlatterView *)self targetedPreview];
  parameters = [targetedPreview parameters];

  effectiveShadowPath = [parameters effectiveShadowPath];
  visiblePath = [parameters visiblePath];

  v28 = v23;
  v29 = v20;
  if (effectiveShadowPath != visiblePath)
  {
    effectiveShadowPath2 = [parameters effectiveShadowPath];
    [effectiveShadowPath2 bounds];
    v29 = v32 + v31 * 0.5;
    v28 = v34 + v33 * 0.5;
  }

  visiblePath2 = [parameters visiblePath];

  if (visiblePath2)
  {
    visiblePath3 = [parameters visiblePath];
    [visiblePath3 bounds];
    v37 = -CGRectGetMinX(v61);

    visiblePath4 = [parameters visiblePath];
    [visiblePath4 bounds];
    v39 = -CGRectGetMinY(v62);

    contentView2 = [(_UIPointerEffectPlatterView *)self contentView];
    [contentView2 bounds];
    v64 = CGRectOffset(v63, v37, v39);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    contentView3 = [(_UIPointerEffectPlatterView *)self contentView];
    [contentView3 setFrame:{x, y, width, height}];
  }

  else
  {
    contentView2 = [(_UIPointerEffectPlatterView *)self contentView];
    [contentView2 setCenter:{v20, v23}];
  }

  shadowView = [(_UIPointerEffectPlatterView *)self shadowView];
  [shadowView setCenter:{v29, v28}];

  specularOverlayView2 = [(_UIPointerEffectPlatterView *)self specularOverlayView];
  if (([(_UIPointerEffectPlatterView *)self specularOptions]& 2) != 0)
  {
    tintViewShape = [(_UIPointerEffectPlatterView *)self tintViewShape];
    [tintViewShape rect];
    [specularOverlayView2 setFrame:?];
    [tintViewShape effectiveCornerRadius];
    v50 = v49;
    layer = [specularOverlayView2 layer];
    [layer setCornerRadius:v50];

    cornerCurve = [tintViewShape cornerCurve];
    layer2 = [specularOverlayView2 layer];
    [layer2 setCornerCurve:cornerCurve];

    [specularOverlayView2 setClipsToBounds:1];
  }

  else
  {
    [(UIView *)self bounds];
    [specularOverlayView2 setFrame:?];
  }

  [(_UIPointerEffectPlatterView *)self _layoutTintView];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v5.receiver = self;
    v5.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v5 setHidden:hiddenCopy];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v8 setBounds:x, y, width, height];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v6.receiver = self;
    v6.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v6 setCenter:x, y];
  }
}

- (id)_newShadowView
{
  targetedPreview = [(_UIPointerEffectPlatterView *)self targetedPreview];
  parameters = [targetedPreview parameters];

  effectiveShadowPath = [parameters effectiveShadowPath];
  v6 = [effectiveShadowPath copy];

  if (v6)
  {
    [v6 bounds];
    v7 = -CGRectGetMinX(v23);
    [v6 bounds];
    MinY = CGRectGetMinY(v24);
    CGAffineTransformMakeTranslation(&v22, v7, -MinY);
    [v6 applyTransform:&v22];
    v9 = v6;
  }

  else
  {
    targetedPreview2 = [(_UIPointerEffectPlatterView *)self targetedPreview];
    view = [targetedPreview2 view];
    [view _cornerRadius];

    [(UIView *)self bounds];
    v9 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  }

  v12 = [_UIRadiosityShadowView alloc];
  contentView = [(_UIPointerEffectPlatterView *)self contentView];
  v14 = [(_UIRadiosityShadowView *)v12 initWithSourceView:contentView shadowPath:v9 isSoft:[(_UIPointerEffectPlatterView *)self useSoftShadow]];

  layer = [(UIView *)v14 layer];
  [layer setName:@"_UIPointerContentEffectPlatterView.shadowView"];

  if (v6)
  {
    v16 = 1;
  }

  else
  {
    backgroundColor = [parameters backgroundColor];
    [backgroundColor alphaComponent];
    if (fabs(v18) < 2.22044605e-16)
    {
      v16 = 0;
    }

    else
    {
      backgroundColor2 = [parameters backgroundColor];
      v16 = [backgroundColor2 _isOpaque] ^ 1;
    }
  }

  [(_UIRadiosityShadowView *)v14 setNeedsPunchout:v16];
  [(UIView *)v14 setAlpha:0.0];
  layer2 = [(UIView *)v14 layer];
  [layer2 setZPosition:-1.0];

  return v14;
}

- (id)_newTintView
{
  v3 = [_UIPointerEffectTintView alloc];
  tintColorMatrixProvider = [(_UIPointerEffectPlatterView *)self tintColorMatrixProvider];
  v5 = [(_UIPointerEffectTintView *)v3 initWithTintColorMatrixProvider:tintColorMatrixProvider];

  [(UIView *)v5 setClipsToBounds:1];
  [(_UIPointerEffectTintView *)v5 setDisabled:[(_UIPointerEffectPlatterView *)self isTintDisabled]];
  layer = [(UIView *)v5 layer];
  [layer setName:@"_UIPointerContentEffectPlatterView.tintView"];

  return v5;
}

- (void)_layoutTintView
{
  tintView = [(_UIPointerEffectPlatterView *)self tintView];
  if (tintView)
  {
    targetedPreview = [(_UIPointerEffectPlatterView *)self targetedPreview];
    view = [targetedPreview view];
    target = [targetedPreview target];
    tintViewShape = [(_UIPointerEffectPlatterView *)self tintViewShape];
    v8 = tintViewShape;
    if (tintViewShape)
    {
      path = [tintViewShape path];
      v10 = [path copy];

      if (v10)
      {
        [v10 bounds];
      }

      else
      {
        [v8 rect];
      }

      v29 = v11;
      v28 = v12;
      v18 = v13;
      v20 = v14;
      [v8 effectiveCornerRadius];
      v22 = v30;
      cornerCurve = [v8 cornerCurve];
      v25 = cornerCurve == *MEMORY[0x1E69796E8];
      maskedCorners = 15;
    }

    else
    {
      parameters = [targetedPreview parameters];
      visiblePath = [parameters visiblePath];
      v10 = [visiblePath copy];

      [targetedPreview size];
      v18 = v17;
      v20 = v19;
      [view _cornerRadius];
      v22 = v21;
      layer = [view layer];
      cornerCurve2 = [layer cornerCurve];
      v25 = cornerCurve2 == *MEMORY[0x1E69796E8];

      cornerCurve = [view layer];
      maskedCorners = [cornerCurve maskedCorners];
      v28 = 0.0;
      v29 = 0.0;
    }

    [tintView setCenter:{v29 + v18 * 0.5, v28 + v20 * 0.5}];
    [tintView setBounds:{0.0, 0.0, v18, v20}];
    if (v10)
    {
      [v10 bounds];
      v31 = -CGRectGetMinX(v38);
      [v10 bounds];
      MinY = CGRectGetMinY(v39);
      CGAffineTransformMakeTranslation(&v37, v31, -MinY);
      [v10 applyTransform:&v37];
      v33 = [_UIShapeView alloc];
      [v10 bounds];
      v34 = [(UIView *)v33 initWithFrame:?];
      cGPath = [v10 CGPath];
      shapeLayer = [(_UIShapeView *)v34 shapeLayer];
      [shapeLayer setPath:cGPath];

      [tintView setMaskView:v34];
    }

    else
    {
      [tintView _setCornerRadius:v25 continuous:maskedCorners maskedCorners:v22];
    }
  }
}

- (id)_newLumaTrackingViewForTintView:(id)view
{
  viewCopy = view;
  v4 = [_UILumaTrackingBackdropView alloc];
  [viewCopy frame];
  v9 = [(_UILumaTrackingBackdropView *)v4 initWithTransitionBoundaries:viewCopy delegate:0.4 frame:0.6, v5, v6, v7, v8];

  return v9;
}

- (id)_specularOverlayView:(id)view withOptions:(unint64_t)options
{
  optionsCopy = options;
  viewCopy = view;
  v7 = viewCopy;
  if ((optionsCopy & 2) != 0)
  {
    v10 = viewCopy;
  }

  else
  {
    contentView = [(_UIPointerEffectPlatterView *)self contentView];
    v9 = [UIView alloc];
    [contentView bounds];
    v10 = [(UIView *)v9 initWithFrame:?];
    layer = [(UIView *)v10 layer];
    [layer setAllowsGroupBlending:0];

    v12 = [UIView alloc];
    [(UIView *)v10 bounds];
    v13 = [(UIView *)v12 initWithFrame:?];
    if (optionsCopy)
    {
      v14 = [_UIPortalView alloc];
      [(UIView *)v13 bounds];
      v15 = [(_UIPortalView *)v14 initWithFrame:?];
      [(_UIPortalView *)v15 setName:@"_UIPointerEffectPlatterView.specularOverlayMask"];
      [(_UIPortalView *)v15 setSourceView:contentView];
      [(_UIPortalView *)v15 setMatchesAlpha:1];
      [(_UIPortalView *)v15 setMatchesPosition:1];
      [(_UIPortalView *)v15 setMatchesTransform:1];
      [(UIView *)v15 setUserInteractionEnabled:0];
      [(UIView *)v13 setMaskView:v15];
    }

    if ((optionsCopy & 4) == 0)
    {
      v16 = *MEMORY[0x1E6979CF8];
      layer2 = [(UIView *)v13 layer];
      [layer2 setCompositingFilter:v16];
    }

    [(UIView *)v13 addSubview:v7];
    [(UIView *)v10 addSubview:v13];
    layer3 = [(UIView *)v10 layer];
    [layer3 setName:@"_UIPointerContentEffectPlatterView.specularOverlayView"];
  }

  return v10;
}

@end