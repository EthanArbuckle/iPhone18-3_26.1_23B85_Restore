@interface _UIPointerEffectPlatterView
- (_UIPointerEffectPlatterView)initWithTargetedPreview:(id)a3;
- (id)_newLumaTrackingViewForTintView:(id)a3;
- (id)_newShadowView;
- (id)_newTintView;
- (id)_specularOverlayView:(id)a3 withOptions:(unint64_t)a4;
- (void)_installAccessoryView:(id)a3;
- (void)_layoutTintView;
- (void)_updateContentMask;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPressed:(BOOL)a3;
- (void)setShadowAlpha:(double)a3;
- (void)setSpecularHighlight:(id)a3;
- (void)setTargetedPreview:(id)a3;
- (void)setTintDisabled:(BOOL)a3;
- (void)setTintMode:(int64_t)a3;
- (void)setTintViewScale:(double)a3;
- (void)setTintViewShape:(id)a3;
@end

@implementation _UIPointerEffectPlatterView

- (_UIPointerEffectPlatterView)initWithTargetedPreview:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [v4 size];
  v50.receiver = self;
  v50.super_class = _UIPointerEffectPlatterView;
  v9 = [(UIView *)&v50 initWithFrame:v5, v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(UIView *)v9 setUserInteractionEnabled:0];
    v11 = [(UIView *)v10 layer];
    [v11 setAllowsGroupBlending:0];

    [(_UIPointerEffectPlatterView *)v10 setTargetedPreview:v4];
    v10->_tintDisabled = 1;
    v12 = [v4 view];
    [v12 bounds];
    if ([v4 _sourceViewIsInViewHierarchy])
    {
      v13 = [[_UIPortalView alloc] initWithSourceView:v12];
      [(_UIPortalView *)v13 setName:@"_UIPointerEffectPlatterView.contentPortal"];
      [(_UIPortalView *)v13 setHidesSourceView:1];
      [(_UIPortalView *)v13 setMatchesAlpha:1];
      [(_UIPortalView *)v13 setAllowsBackdropGroups:1];
      [(_UIPortalView *)v13 setAllowsHitTesting:1];
      v14 = [(_UIPortalView *)v13 portalLayer];
      [v14 setOverrides:&unk_1EFE34B30];

      [(_UIPortalView *)v13 setHidesSourceLayerInOtherPortals:1];
      v15 = [(UIView *)v13 layer];
      [v15 setAllowsGroupBlending:0];
    }

    else
    {
      v13 = v12;
    }

    [(_UIPointerEffectPlatterView *)v10 setContentView:v13];
    v16 = [(_UIPointerEffectPlatterView *)v10 contentView];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v21 = [(_UIPointerEffectPlatterView *)v10 contentView];
    [v21 setFrame:{0.0, 0.0, v18, v20}];

    [(UIView *)v10 addSubview:v13];
    [(_UIPointerEffectPlatterView *)v10 _updateContentMask];
    v22 = [v4 _accessoryViews];
    v23 = [v22 count];

    if (v23)
    {
      v43 = v13;
      v44 = v12;
      v24 = [MEMORY[0x1E695DF70] array];
      [(_UIPointerEffectPlatterView *)v10 setAccessoryPortals:v24];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = [v4 _accessoryViews];
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v46 + 1) + 8 * v29);
            v31 = [v30 window];

            if (v31)
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
          v34 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
          v27 = v34;
        }

        while (v34);
      }

      v12 = v44;
      v13 = v43;
    }

    v35 = +[_UIPointerSettingsDomain rootSettings];
    v36 = [v35 showEffectPlatter];

    if (v36)
    {
      v37 = +[UIColor greenColor];
      v38 = [v37 colorWithAlphaComponent:0.75];
      v39 = [v38 CGColor];
      v40 = [(UIView *)v10 layer];
      [v40 setBorderColor:v39];

      v41 = [(UIView *)v10 layer];
      [v41 setBorderWidth:1.0];
    }
  }

  return v10;
}

- (void)_installAccessoryView:(id)a3
{
  v4 = a3;
  v13 = [[_UIPortalView alloc] initWithSourceView:v4];
  [(_UIPortalView *)v13 setName:@"_UIPointerEffectPlatterView.accessory"];
  [(_UIPortalView *)v13 setHidesSourceView:1];
  [(_UIPortalView *)v13 setMatchesAlpha:1];
  [(_UIPortalView *)v13 setAllowsBackdropGroups:1];
  v5 = [v4 superview];
  [v4 center];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIPointerEffectPlatterView *)self targetedPreview];
  v11 = [v10 view];
  [v5 convertPoint:v11 toView:{v7, v9}];
  [(_UIPortalView *)v13 setCenter:?];

  v12 = [(_UIPointerEffectPlatterView *)self accessoryPortals];
  [v12 addObject:v13];

  [(UIView *)self addSubview:v13];
}

- (void)setTargetedPreview:(id)a3
{
  v9 = a3;
  if (([v9 isEqual:self->_targetedPreview] & 1) == 0)
  {
    targetedPreview = self->_targetedPreview;
    if (!targetedPreview || (-[UITargetedPreview view](targetedPreview, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v9 view], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
    {
      v7 = [v9 copy];
      v8 = self->_targetedPreview;
      self->_targetedPreview = v7;

      [(_UIPointerEffectPlatterView *)self _updateContentMask];
    }
  }
}

- (void)_updateContentMask
{
  v13 = [(_UIPointerEffectPlatterView *)self targetedPreview];
  v3 = [(_UIPointerEffectPlatterView *)self contentView];
  v4 = [v13 parameters];
  v5 = [v4 visiblePath];

  if (!v5 || [v13 _previewMode] == 4 || objc_msgSend(v13, "_previewMode") == 5)
  {
    [v3 setMaskView:0];
  }

  else
  {
    [v5 bounds];
    v6 = -CGRectGetMinX(v15);
    [v5 bounds];
    v7 = -CGRectGetMinY(v16);
    [v3 bounds];
    v18 = CGRectOffset(v17, v6, v7);
    [v3 setFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
    v8 = [_UIShapeView alloc];
    v9 = [v13 view];
    [v9 bounds];
    v10 = [(UIView *)v8 initWithFrame:?];

    v11 = [v5 CGPath];
    v12 = [(_UIShapeView *)v10 shapeLayer];
    [v12 setPath:v11];

    [v3 setMaskView:v10];
  }
}

- (void)setShadowAlpha:(double)a3
{
  if (self->_shadowAlpha != a3)
  {
    self->_shadowAlpha = a3;
    if (a3 > 0.0)
    {
      v4 = [(_UIPointerEffectPlatterView *)self shadowView];

      if (!v4)
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
    v6 = [(_UIPointerEffectPlatterView *)self shadowView];
    [v6 setAlpha:shadowAlpha];
  }
}

- (void)setTintDisabled:(BOOL)a3
{
  if (self->_tintDisabled != a3)
  {
    v4 = a3;
    self->_tintDisabled = a3;
    v5 = [(_UIPointerEffectPlatterView *)self tintView];
    [v5 setDisabled:v4];
  }
}

- (void)setTintMode:(int64_t)a3
{
  if (self->_tintMode != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_tintMode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43___UIPointerEffectPlatterView_setTintMode___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)setTintViewScale:(double)a3
{
  if (vabdd_f64(a3, self->_tintViewScale) >= 2.22044605e-16)
  {
    v9 = v3;
    v10 = v4;
    self->_tintViewScale = a3;
    CGAffineTransformMakeScale(&v8, a3, a3);
    v6 = [(_UIPointerEffectPlatterView *)self tintView];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (void)setTintViewShape:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_tintViewShape] & 1) == 0)
  {
    objc_storeStrong(&self->_tintViewShape, a3);
    [(_UIPointerEffectPlatterView *)self _layoutTintView];
  }
}

- (void)setSpecularHighlight:(id)a3
{
  v5 = a3;
  if (self->_specularHighlight != v5)
  {
    objc_storeStrong(&self->_specularHighlight, a3);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___UIPointerEffectPlatterView_setSpecularHighlight___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    v4 = a3;
    self->_pressed = a3;
    v5 = [(_UIPointerEffectPlatterView *)self tintView];
    [v5 setPressed:v4];
  }
}

- (void)layoutSubviews
{
  v60 = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = _UIPointerEffectPlatterView;
  [(UIView *)&v58 layoutSubviews];
  v3 = [(_UIPointerEffectPlatterView *)self tintMode];
  if (v3 == 2)
  {
    v7 = [(_UIPointerEffectPlatterView *)self tintView];
    v8 = [(_UIPointerEffectPlatterView *)self contentView];
    [(UIView *)self insertSubview:v7 belowSubview:v8];

    v5 = [(_UIPointerEffectPlatterView *)self lumaTrackingView];
    [(UIView *)self sendSubviewToBack:v5];
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = [(_UIPointerEffectPlatterView *)self tintView];
    [(UIView *)self bringSubviewToFront:v4];

    v5 = [(_UIPointerEffectPlatterView *)self lumaTrackingView];
    v6 = [(_UIPointerEffectPlatterView *)self tintView];
    [(UIView *)self insertSubview:v5 belowSubview:v6];
  }

LABEL_6:
  v9 = [(_UIPointerEffectPlatterView *)self lumaTrackingView];

  if (v9)
  {
    v10 = [(_UIPointerEffectPlatterView *)self lumaTrackingView];
    [v10 setPaused:0];
  }

  v11 = [(_UIPointerEffectPlatterView *)self specularHighlight];

  if (v11)
  {
    v12 = [(_UIPointerEffectPlatterView *)self specularOverlayView];
    [(UIView *)self bringSubviewToFront:v12];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = [(_UIPointerEffectPlatterView *)self accessoryPortals];
  v14 = [v13 countByEnumeratingWithState:&v54 objects:v59 count:16];
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
          objc_enumerationMutation(v13);
        }

        [(UIView *)self bringSubviewToFront:*(*(&v54 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v15);
  }

  [(UIView *)self bounds];
  v20 = v19 + v18 * 0.5;
  v23 = v22 + v21 * 0.5;
  v24 = [(_UIPointerEffectPlatterView *)self targetedPreview];
  v25 = [v24 parameters];

  v26 = [v25 effectiveShadowPath];
  v27 = [v25 visiblePath];

  v28 = v23;
  v29 = v20;
  if (v26 != v27)
  {
    v30 = [v25 effectiveShadowPath];
    [v30 bounds];
    v29 = v32 + v31 * 0.5;
    v28 = v34 + v33 * 0.5;
  }

  v35 = [v25 visiblePath];

  if (v35)
  {
    v36 = [v25 visiblePath];
    [v36 bounds];
    v37 = -CGRectGetMinX(v61);

    v38 = [v25 visiblePath];
    [v38 bounds];
    v39 = -CGRectGetMinY(v62);

    v40 = [(_UIPointerEffectPlatterView *)self contentView];
    [v40 bounds];
    v64 = CGRectOffset(v63, v37, v39);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v45 = [(_UIPointerEffectPlatterView *)self contentView];
    [v45 setFrame:{x, y, width, height}];
  }

  else
  {
    v40 = [(_UIPointerEffectPlatterView *)self contentView];
    [v40 setCenter:{v20, v23}];
  }

  v46 = [(_UIPointerEffectPlatterView *)self shadowView];
  [v46 setCenter:{v29, v28}];

  v47 = [(_UIPointerEffectPlatterView *)self specularOverlayView];
  if (([(_UIPointerEffectPlatterView *)self specularOptions]& 2) != 0)
  {
    v48 = [(_UIPointerEffectPlatterView *)self tintViewShape];
    [v48 rect];
    [v47 setFrame:?];
    [v48 effectiveCornerRadius];
    v50 = v49;
    v51 = [v47 layer];
    [v51 setCornerRadius:v50];

    v52 = [v48 cornerCurve];
    v53 = [v47 layer];
    [v53 setCornerCurve:v52];

    [v47 setClipsToBounds:1];
  }

  else
  {
    [(UIView *)self bounds];
    [v47 setFrame:?];
  }

  [(_UIPointerEffectPlatterView *)self _layoutTintView];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v5.receiver = self;
    v5.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v5 setHidden:v3];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v8 setBounds:x, y, width, height];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(_UIPointerEffectPlatterView *)self geometryFrozen])
  {
    v6.receiver = self;
    v6.super_class = _UIPointerEffectPlatterView;
    [(UIView *)&v6 setCenter:x, y];
  }
}

- (id)_newShadowView
{
  v3 = [(_UIPointerEffectPlatterView *)self targetedPreview];
  v4 = [v3 parameters];

  v5 = [v4 effectiveShadowPath];
  v6 = [v5 copy];

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
    v10 = [(_UIPointerEffectPlatterView *)self targetedPreview];
    v11 = [v10 view];
    [v11 _cornerRadius];

    [(UIView *)self bounds];
    v9 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  }

  v12 = [_UIRadiosityShadowView alloc];
  v13 = [(_UIPointerEffectPlatterView *)self contentView];
  v14 = [(_UIRadiosityShadowView *)v12 initWithSourceView:v13 shadowPath:v9 isSoft:[(_UIPointerEffectPlatterView *)self useSoftShadow]];

  v15 = [(UIView *)v14 layer];
  [v15 setName:@"_UIPointerContentEffectPlatterView.shadowView"];

  if (v6)
  {
    v16 = 1;
  }

  else
  {
    v17 = [v4 backgroundColor];
    [v17 alphaComponent];
    if (fabs(v18) < 2.22044605e-16)
    {
      v16 = 0;
    }

    else
    {
      v19 = [v4 backgroundColor];
      v16 = [v19 _isOpaque] ^ 1;
    }
  }

  [(_UIRadiosityShadowView *)v14 setNeedsPunchout:v16];
  [(UIView *)v14 setAlpha:0.0];
  v20 = [(UIView *)v14 layer];
  [v20 setZPosition:-1.0];

  return v14;
}

- (id)_newTintView
{
  v3 = [_UIPointerEffectTintView alloc];
  v4 = [(_UIPointerEffectPlatterView *)self tintColorMatrixProvider];
  v5 = [(_UIPointerEffectTintView *)v3 initWithTintColorMatrixProvider:v4];

  [(UIView *)v5 setClipsToBounds:1];
  [(_UIPointerEffectTintView *)v5 setDisabled:[(_UIPointerEffectPlatterView *)self isTintDisabled]];
  v6 = [(UIView *)v5 layer];
  [v6 setName:@"_UIPointerContentEffectPlatterView.tintView"];

  return v5;
}

- (void)_layoutTintView
{
  v3 = [(_UIPointerEffectPlatterView *)self tintView];
  if (v3)
  {
    v4 = [(_UIPointerEffectPlatterView *)self targetedPreview];
    v5 = [v4 view];
    v6 = [v4 target];
    v7 = [(_UIPointerEffectPlatterView *)self tintViewShape];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 path];
      v10 = [v9 copy];

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
      v26 = [v8 cornerCurve];
      v25 = v26 == *MEMORY[0x1E69796E8];
      v27 = 15;
    }

    else
    {
      v15 = [v4 parameters];
      v16 = [v15 visiblePath];
      v10 = [v16 copy];

      [v4 size];
      v18 = v17;
      v20 = v19;
      [v5 _cornerRadius];
      v22 = v21;
      v23 = [v5 layer];
      v24 = [v23 cornerCurve];
      v25 = v24 == *MEMORY[0x1E69796E8];

      v26 = [v5 layer];
      v27 = [v26 maskedCorners];
      v28 = 0.0;
      v29 = 0.0;
    }

    [v3 setCenter:{v29 + v18 * 0.5, v28 + v20 * 0.5}];
    [v3 setBounds:{0.0, 0.0, v18, v20}];
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
      v35 = [v10 CGPath];
      v36 = [(_UIShapeView *)v34 shapeLayer];
      [v36 setPath:v35];

      [v3 setMaskView:v34];
    }

    else
    {
      [v3 _setCornerRadius:v25 continuous:v27 maskedCorners:v22];
    }
  }
}

- (id)_newLumaTrackingViewForTintView:(id)a3
{
  v3 = a3;
  v4 = [_UILumaTrackingBackdropView alloc];
  [v3 frame];
  v9 = [(_UILumaTrackingBackdropView *)v4 initWithTransitionBoundaries:v3 delegate:0.4 frame:0.6, v5, v6, v7, v8];

  return v9;
}

- (id)_specularOverlayView:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if ((v4 & 2) != 0)
  {
    v10 = v6;
  }

  else
  {
    v8 = [(_UIPointerEffectPlatterView *)self contentView];
    v9 = [UIView alloc];
    [v8 bounds];
    v10 = [(UIView *)v9 initWithFrame:?];
    v11 = [(UIView *)v10 layer];
    [v11 setAllowsGroupBlending:0];

    v12 = [UIView alloc];
    [(UIView *)v10 bounds];
    v13 = [(UIView *)v12 initWithFrame:?];
    if (v4)
    {
      v14 = [_UIPortalView alloc];
      [(UIView *)v13 bounds];
      v15 = [(_UIPortalView *)v14 initWithFrame:?];
      [(_UIPortalView *)v15 setName:@"_UIPointerEffectPlatterView.specularOverlayMask"];
      [(_UIPortalView *)v15 setSourceView:v8];
      [(_UIPortalView *)v15 setMatchesAlpha:1];
      [(_UIPortalView *)v15 setMatchesPosition:1];
      [(_UIPortalView *)v15 setMatchesTransform:1];
      [(UIView *)v15 setUserInteractionEnabled:0];
      [(UIView *)v13 setMaskView:v15];
    }

    if ((v4 & 4) == 0)
    {
      v16 = *MEMORY[0x1E6979CF8];
      v17 = [(UIView *)v13 layer];
      [v17 setCompositingFilter:v16];
    }

    [(UIView *)v13 addSubview:v7];
    [(UIView *)v10 addSubview:v13];
    v18 = [(UIView *)v10 layer];
    [v18 setName:@"_UIPointerContentEffectPlatterView.specularOverlayView"];
  }

  return v10;
}

@end