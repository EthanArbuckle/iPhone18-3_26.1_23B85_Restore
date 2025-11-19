@interface _UIMorphingPlatterView
- (BOOL)_previewPrefersApplyingMask:(id)a3;
- (BOOL)allowsUserInteractionInExpandedPreview;
- (BOOL)bothViewsAreLikelyOpaque;
- (BOOL)hidesCollapsedSourceView;
- (BOOL)wantsEdgeAntialiasing;
- (_UIMorphingPlatterView)initWithFrame:(CGRect)a3;
- (double)_collapsedCornerRadius:(BOOL *)a3 maskedCorners:(unint64_t *)a4;
- (double)_expandedCornerRadius:(BOOL *)a3 maskedCorners:(unint64_t *)a4 ignoreLiftScale:(BOOL)a5;
- (void)_installPreview:(id)a3 inClippingView:(id)a4 transformView:(id)a5;
- (void)_installShadowViewForStyleIfNecessary:(int64_t)a3;
- (void)_modelUpdates;
- (void)_prepareAnimatableProperties;
- (void)_updateClippingViews;
- (void)_updateCollapsedChrome;
- (void)_updatePathShadow;
- (void)_updatePathShadowTransform;
- (void)_updateShadowsWithExpansionProgress:(double)a3 contentBounds:(CGRect)a4 center:(CGPoint)a5 forPresentation:(BOOL)a6;
- (void)didTearOffForDrag;
- (void)freezeExpandedPreview;
- (void)layoutSubviews;
- (void)setAllowsUserInteractionInExpandedPreview:(BOOL)a3;
- (void)setAlwaysCompact:(BOOL)a3;
- (void)setCollapsedPreview:(id)a3;
- (void)setCollapsedShadowIntensity:(double)a3;
- (void)setCollapsedShadowStyle:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setExpandedPreview:(id)a3;
- (void)setExpandedShadowIntensity:(double)a3;
- (void)setExpandedShadowStyle:(int64_t)a3;
- (void)setHideChromeWhenCollapsed:(BOOL)a3;
- (void)setHidesCollapsedSourceView:(BOOL)a3;
- (void)setPreventPreviewRasterization:(BOOL)a3;
- (void)setWantsEdgeAntialiasing:(BOOL)a3;
- (void)updateContentSize;
@end

@implementation _UIMorphingPlatterView

- (_UIMorphingPlatterView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = _UIMorphingPlatterView;
  v3 = [(_UIMorphPlatterViewBase *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setClipsToBounds:0];
    v5 = [_UIPlatterClippingView alloc];
    [(UIView *)v4 bounds];
    v6 = [(_UIPlatterClippingView *)v5 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setExpandedClippingView:v6];

    v7 = [(_UIMorphingPlatterView *)v4 expandedClippingView];
    [(UIView *)v4 addSubview:v7];

    v8 = [_UIPlatterTransformView alloc];
    [(UIView *)v4 bounds];
    v9 = [(_UIPlatterTransformView *)v8 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setExpandedTransformView:v9];

    v10 = [(_UIMorphingPlatterView *)v4 expandedTransformView];
    [v10 setHidesSourceView:1];

    v11 = [(_UIMorphingPlatterView *)v4 expandedClippingView];
    v12 = [(_UIMorphingPlatterView *)v4 expandedTransformView];
    [v11 addSubview:v12];

    v13 = [_UIPlatterClippingView alloc];
    [(UIView *)v4 bounds];
    v14 = [(_UIPlatterClippingView *)v13 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setCollapsedClippingView:v14];

    v15 = [(_UIMorphingPlatterView *)v4 collapsedClippingView];
    [(UIView *)v4 addSubview:v15];

    v16 = [_UIPlatterTransformView alloc];
    [(UIView *)v4 bounds];
    v17 = [(_UIPlatterTransformView *)v16 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setCollapsedTransformView:v17];

    v18 = [(_UIMorphingPlatterView *)v4 collapsedTransformView];
    [v18 setHidesSourceView:1];

    v19 = [(_UIMorphingPlatterView *)v4 collapsedClippingView];
    v20 = [(_UIMorphingPlatterView *)v4 collapsedTransformView];
    [v19 addSubview:v20];

    [(_UIMorphingPlatterView *)v4 setPreventPreviewRasterization:0];
    [(UIView *)v4 _setSafeAreaInsetsFrozen:1];
    [(_UIMorphPlatterViewBase *)v4 setShouldMorphContents:1];
    [(_UIMorphingPlatterView *)v4 setOverrideCollapsedCornerRadius:2.22507386e-308];
    [(_UIMorphingPlatterView *)v4 setOverrideExpandedCornerRadius:2.22507386e-308];
    v21 = [MEMORY[0x1E695DF90] dictionary];
    [(_UIMorphingPlatterView *)v4 setShadowViews:v21];

    [(_UIMorphingPlatterView *)v4 _prepareAnimatableProperties];
  }

  return v4;
}

- (void)setAllowsUserInteractionInExpandedPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIMorphingPlatterView *)self expandedTransformView];
  [v4 setAllowsUserInteraction:v3];
}

- (BOOL)allowsUserInteractionInExpandedPreview
{
  v2 = [(_UIMorphingPlatterView *)self expandedTransformView];
  v3 = [v2 allowsUserInteraction];

  return v3;
}

- (void)setPreventPreviewRasterization:(BOOL)a3
{
  v3 = a3;
  if ([(_UIMorphPlatterViewBase *)self preventPreviewRasterization]!= a3)
  {
    v6.receiver = self;
    v6.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v6 setPreventPreviewRasterization:v3];
    v5 = [(_UIMorphingPlatterView *)self expandedTransformView];
    [v5 setAppliesMinificationFilter:v3 ^ 1];
  }
}

- (void)setAlwaysCompact:(BOOL)a3
{
  v3 = a3;
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact]!= a3)
  {
    v6.receiver = self;
    v6.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v6 setAlwaysCompact:v3];
    if (v3)
    {
      v5 = [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
    }

    else
    {
      v5 = 2;
    }

    [(_UIMorphingPlatterView *)self setExpandedShadowStyle:v5];
  }
}

- (void)setHidesCollapsedSourceView:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIMorphingPlatterView *)self collapsedTransformView];
  [v4 setHidesSourceView:v3];
}

- (BOOL)hidesCollapsedSourceView
{
  v2 = [(_UIMorphingPlatterView *)self collapsedTransformView];
  v3 = [v2 hidesSourceView];

  return v3;
}

- (void)setWantsEdgeAntialiasing:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  v6 = [v5 layer];
  [v6 setAllowsEdgeAntialiasing:v3];

  v8 = [(_UIMorphingPlatterView *)self expandedClippingView];
  v7 = [v8 layer];
  [v7 setAllowsEdgeAntialiasing:v3];
}

- (BOOL)wantsEdgeAntialiasing
{
  v2 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  v3 = [v2 layer];
  v4 = [v3 allowsEdgeAntialiasing];

  return v4;
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = _UIMorphingPlatterView;
  [(UIView *)&v78 layoutSubviews];
  v3 = [(_UIMorphPlatterViewBase *)self expanded];
  [(UIView *)self bounds];
  rect_16 = v5;
  rect_24 = v4;
  v73 = v7;
  v74 = v6;
  v8 = [(_UIMorphingPlatterView *)self collapsedTransformView];
  v9 = [(_UIMorphingPlatterView *)self expandedTransformView];
  if ([(_UIMorphingPlatterView *)self contentSizeDidChange])
  {
    [(_UIMorphingPlatterView *)self setContentSizeDidChange:0];
    [v8 sizeToFit];
    [v9 sizeToFit];
  }

  [(_UIMorphingPlatterView *)self _updatePathShadowTransform];
  [(_UIMorphingPlatterView *)self _updateClippingViews];
  if (![(_UIMorphPlatterViewBase *)self preferredMorphingAxis])
  {
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v9 bounds];
    rect = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
    v21 = CGRectGetWidth(v79);
    v80.origin.x = v11;
    v80.origin.y = v13;
    v80.size.width = v15;
    v80.size.height = v17;
    v22 = vabdd_f64(v21, CGRectGetWidth(v80));
    v81.origin.x = v11;
    v81.origin.y = v13;
    v81.size.width = v15;
    v81.size.height = v17;
    rect_8 = v22 / CGRectGetWidth(v81);
    v82.origin.x = rect;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    v23 = CGRectGetHeight(v82);
    v83.origin.x = v11;
    v83.origin.y = v13;
    v83.size.width = v15;
    v83.size.height = v17;
    v24 = vabdd_f64(v23, CGRectGetHeight(v83));
    v84.origin.x = v11;
    v84.origin.y = v13;
    v84.size.width = v15;
    v84.size.height = v17;
    if (rect_8 <= v24 / CGRectGetHeight(v84))
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    [(_UIMorphPlatterViewBase *)self setPreferredMorphingAxis:v25];
  }

  [v8 bounds];
  v27 = v26;
  v63 = v28;
  recta = v26;
  v29 = v28;
  v31 = v30;
  rect_8a = v32;
  v33 = [(_UIMorphPlatterViewBase *)self preferredMorphingAxis];
  v85.origin.x = rect_24;
  v85.origin.y = rect_16;
  v85.size.width = v74;
  v85.size.height = v73;
  v34 = CGRectGetWidth(v85);
  v86.origin.x = v27;
  v86.origin.y = v29;
  v86.size.width = v31;
  v86.size.height = rect_8a;
  v35 = v34 / CGRectGetWidth(v86);
  v87.origin.x = rect_24;
  v87.origin.y = rect_16;
  v87.size.width = v74;
  v87.size.height = v73;
  v36 = CGRectGetHeight(v87);
  v88.origin.y = v63;
  v88.origin.x = recta;
  v88.size.width = v31;
  v88.size.height = rect_8a;
  v37 = CGRectGetHeight(v88);
  v38 = v36 / v37;
  if (v33 == 1)
  {
    v39 = v35;
  }

  else
  {
    v39 = v36 / v37;
  }

  if (v33 == 2)
  {
    v40 = v36 / v37;
  }

  else
  {
    v40 = v35;
  }

  if (v33 != 2)
  {
    v38 = v39;
  }

  CGAffineTransformMakeScale(&v77, v40, v38);
  v76 = v77;
  [v8 setTransform:&v76];
  [v9 bounds];
  v42 = v41;
  v64 = v43;
  rectb = v41;
  v44 = v43;
  rect_8b = v45;
  v47 = v46;
  v48 = [(_UIMorphPlatterViewBase *)self preferredMorphingAxis];
  v89.origin.x = rect_24;
  v89.origin.y = rect_16;
  v89.size.width = v74;
  v89.size.height = v73;
  v49 = CGRectGetWidth(v89);
  v90.origin.x = v42;
  v90.origin.y = v44;
  v90.size.width = rect_8b;
  v90.size.height = v47;
  v50 = v49 / CGRectGetWidth(v90);
  v91.origin.x = rect_24;
  v91.origin.y = rect_16;
  v91.size.width = v74;
  v91.size.height = v73;
  v51 = CGRectGetHeight(v91);
  v92.origin.y = v64;
  v92.origin.x = rectb;
  v92.size.width = rect_8b;
  v92.size.height = v47;
  v52 = CGRectGetHeight(v92);
  v53 = v51 / v52;
  if (v48 == 1)
  {
    v54 = v50;
  }

  else
  {
    v54 = v51 / v52;
  }

  if (v48 == 2)
  {
    v55 = v51 / v52;
  }

  else
  {
    v55 = v50;
  }

  if (v48 != 2)
  {
    v53 = v54;
  }

  CGAffineTransformMakeScale(&v75, v55, v53);
  v76 = v75;
  [v9 setTransform:&v76];
  if ([(_UIMorphingPlatterView *)self bothViewsAreLikelyOpaque])
  {
    v56 = [(_UIMorphingPlatterView *)self collapsedClippingView];
    [(UIView *)self bringSubviewToFront:v56];
  }

  if (!+[UIView _isInRetargetableAnimationBlock])
  {
    [(_UIMorphingPlatterView *)self _modelUpdates];
  }

  if (v3)
  {
    v57 = 1.0;
  }

  else
  {
    v57 = 0.0;
  }

  v58 = [(_UIMorphingPlatterView *)self expansionProgress];
  [v58 setValue:v57];

  v93.origin.x = rect_24;
  v93.origin.y = rect_16;
  v93.size.width = v74;
  v93.size.height = v73;
  v59 = CGRectGetWidth(v93);
  v60 = [(_UIMorphingPlatterView *)self platterWidth];
  [v60 setValue:v59];

  v94.origin.x = rect_24;
  v94.origin.y = rect_16;
  v94.size.width = v74;
  v94.size.height = v73;
  v61 = CGRectGetHeight(v94);
  v62 = [(_UIMorphingPlatterView *)self platterHeight];
  [v62 setValue:v61];

  [(_UIMorphingPlatterView *)self _updateCollapsedChrome];
}

- (void)_modelUpdates
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v3 + v7 * 0.5;
  v12 = v5 + v9 * 0.5;
  v13 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  [v13 setBounds:{v4, v6, v8, v10}];

  v14 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  v24 = v12;
  [v14 setCenter:{v11, v12}];

  v15 = [(_UIMorphingPlatterView *)self expandedClippingView];
  [v15 setBounds:{v4, v6, v8, v10}];

  v16 = [(_UIMorphingPlatterView *)self expandedClippingView];
  [v16 setCenter:{v11, v12}];

  v17 = [(_UIMorphingPlatterView *)self collapsedTransformView];
  v18 = 0.0;
  [v17 setCenter:{v11, 0.0}];

  v19 = [(_UIMorphingPlatterView *)self expandedTransformView];
  [v19 setCenter:{v11, 0.0}];

  v20 = 1.0;
  if ([(_UIMorphPlatterViewBase *)self expanded])
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  if (![(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    v20 = 1.0 - v21;
    v18 = v21;
  }

  v22 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  [v22 setAlpha:v20];

  v23 = [(_UIMorphingPlatterView *)self expandedClippingView];
  [v23 setAlpha:v18];

  [(_UIMorphingPlatterView *)self _updateShadowsWithExpansionProgress:0 contentBounds:v21 center:v4 forPresentation:v6, v8, v10, v11, v24];
}

- (void)_prepareAnimatableProperties
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(_UIMorphingPlatterView *)self setExpansionProgress:v3];

  v4 = objc_opt_new();
  [(_UIMorphingPlatterView *)self setPlatterWidth:v4];

  v5 = objc_opt_new();
  [(_UIMorphingPlatterView *)self setPlatterHeight:v5];

  v6 = [(_UIMorphingPlatterView *)self expansionProgress];
  v15[0] = v6;
  v7 = [(_UIMorphingPlatterView *)self platterWidth];
  v15[1] = v7;
  v8 = [(_UIMorphingPlatterView *)self platterHeight];
  v15[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke;
  v12[3] = &unk_1E70F5A28;
  objc_copyWeak(&v13, &location);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke_2;
  v10[3] = &unk_1E70F5A28;
  objc_copyWeak(&v11, &location);
  [UIView _createTransformerWithInputAnimatableProperties:v9 modelValueSetter:v12 presentationValueSetter:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_updateClippingViews
{
  v3 = [(_UIMorphPlatterViewBase *)self expanded];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  v13 = [(_UIMorphingPlatterView *)self expandedClippingView];
  v42 = 0;
  v41 = 15;
  if (v3)
  {
    [(_UIMorphingPlatterView *)self _expandedCornerRadius:&v42 maskedCorners:&v41 ignoreLiftScale:0];
    v15 = _UIClampedCornerRadius(15, v14, v5, v7, v9, v11);
  }

  else
  {
    [(_UIMorphingPlatterView *)self _collapsedCornerRadius:&v42 maskedCorners:&v41];
  }

  v16 = v15;
  v17 = MEMORY[0x1E69796E8];
  if (!v42)
  {
    v17 = MEMORY[0x1E69796E0];
  }

  v18 = *v17;
  if (fabs(v16) < 2.22044605e-16)
  {
    v41 = 15;
    if (v3)
    {
      v19 = v12;
    }

    else
    {
      v19 = v13;
    }

    v20 = [v19 layer];
    v21 = [v20 cornerCurve];

    v18 = v21;
  }

  v22 = [v12 layer];
  [v22 setCornerCurve:v18];

  v23 = [v13 layer];
  [v23 setCornerCurve:v18];

  v24 = [(UIView *)self traitCollection];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 6)
  {
    v26 = [v12 layer];
    [v26 setCornerRadius:v16];

    v27 = [v13 layer];
    [v27 setCornerRadius:v16];
  }

  else
  {
    if (v41)
    {
      v28 = v16;
    }

    else
    {
      v28 = 0.0;
    }

    if ((v41 & 2) != 0)
    {
      v29 = v16;
    }

    else
    {
      v29 = 0.0;
    }

    if ((v41 & 4) != 0)
    {
      v30 = v16;
    }

    else
    {
      v30 = 0.0;
    }

    if ((v41 & 8) != 0)
    {
      v31 = v16;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = [v12 layer];
    v33 = v30;
    v34 = v30;
    v35 = v31;
    v36 = v31;
    v37 = v29;
    v38 = v29;
    v39 = v28;
    v40 = v28;
    [v32 setCornerRadii:&v33];

    v27 = [v13 layer];
    v33 = v30;
    v34 = v30;
    v35 = v31;
    v36 = v31;
    v37 = v29;
    v38 = v29;
    v39 = v28;
    v40 = v28;
    [v27 setCornerRadii:&v33];
  }

  [(UIView *)self _setContinuousCornerRadius:v16];
}

- (double)_collapsedCornerRadius:(BOOL *)a3 maskedCorners:(unint64_t *)a4
{
  *a4 = 15;
  *a3 = 1;
  [(_UIMorphingPlatterView *)self overrideCollapsedCornerRadius];
  if (v7 <= 2.22507386e-308)
  {
    v9 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
    v10 = [v9 _outlineShape];

    [v10 cornerRadius];
    v12 = v11;
    v13 = [v10 cornerCurve];
    *a3 = v13 == *MEMORY[0x1E69796E8];

    *a4 = [v10 cornerMask];
    return v12;
  }

  else
  {

    [(_UIMorphingPlatterView *)self overrideCollapsedCornerRadius];
  }

  return result;
}

- (double)_expandedCornerRadius:(BOOL *)a3 maskedCorners:(unint64_t *)a4 ignoreLiftScale:(BOOL)a5
{
  *a4 = 15;
  *a3 = 1;
  [(_UIMorphingPlatterView *)self overrideExpandedCornerRadius];
  if (v9 > 2.22507386e-308)
  {

    [(_UIMorphingPlatterView *)self overrideExpandedCornerRadius];
    return result;
  }

  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    [(_UIMorphPlatterViewBase *)self collapsedPreview];
  }

  else
  {
    [(_UIMorphPlatterViewBase *)self expandedPreview];
  }
  v11 = ;
  v12 = [v11 _outlineShape];
  [v12 cornerRadius];
  v14 = v13;
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    v15 = [v12 cornerCurve];
    *a3 = v15 == *MEMORY[0x1E69796E8];

    v16 = [v12 cornerMask];
  }

  else
  {
    *a3 = 1;
    v16 = 15;
  }

  *a4 = v16;
  v17 = [v11 parameters];
  v18 = [v17 visiblePath];
  if (v18)
  {

LABEL_16:
    goto LABEL_17;
  }

  if (fabs(v14) < 2.22044605e-16)
  {
    v19 = [(UIView *)self traitCollection];
    v17 = _UIContextMenuGetPlatformMetrics([v19 userInterfaceIdiom]);

    [v17 previewPlatterCornerRadius];
    if (v14 < v20)
    {
      v14 = v20;
    }

    goto LABEL_16;
  }

LABEL_17:
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    if (!a5)
    {
      [(UIView *)self bounds];
      Width = CGRectGetWidth(v24);
      [v11 size];
      v14 = v14 * (Width / v22);
    }

    *a4 = 15;
  }

  return v14;
}

- (void)freezeExpandedPreview
{
  if (![(_UIMorphingPlatterView *)self isFrozen]&& ![(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    [(_UIMorphingPlatterView *)self setFrozen:1];
    v13 = [(_UIMorphPlatterViewBase *)self expandedPreview];
    v3 = [v13 view];
    [v3 bounds];
    v8 = _UISnapshotViewRectAfterCommit(v3, 0, v4, v5, v6, v7);
    [v3 bounds];
    [v8 setFrame:?];
    if (v8)
    {
      v9 = [UITargetedPreview alloc];
      v10 = [v13 parameters];
      v11 = [v13 target];
      v12 = [(UITargetedPreview *)v9 initWithView:v8 parameters:v10 target:v11];
      [(_UIMorphingPlatterView *)self setExpandedPreview:v12];
    }
  }
}

- (void)didTearOffForDrag
{
  v3 = [(_UIMorphingPlatterView *)self collapsedTransformView];
  [v3 didTearOffForDrag];

  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    v4 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
    v5 = [v4 _previewMode];

    if (v5 == 4)
    {
      CGAffineTransformMakeScale(&v7, 0.909090909, 0.909090909);
      v6 = v7;
      [(UIView *)self setTransform:&v6];
    }
  }
}

- (BOOL)bothViewsAreLikelyOpaque
{
  v3 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
  if ([v3 _isLikelyOpaque])
  {
    v4 = [(_UIMorphPlatterViewBase *)self expandedPreview];
    v5 = [v4 _isLikelyOpaque];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_previewPrefersApplyingMask:(id)a3
{
  v3 = a3;
  v4 = [v3 _previewMode] != 4 && objc_msgSend(v3, "_previewMode") != 5;

  return v4;
}

- (void)setCollapsedPreview:(id)a3
{
  v4 = a3;
  v5 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
  if (v5 != v4)
  {
    v15.receiver = self;
    v15.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v15 setCollapsedPreview:v4];
    v6 = [(_UIMorphingPlatterView *)self collapsedTransformView];
    [v6 setSourcePreview:v4];

    if (_AXSReduceMotionEnabled())
    {
      v7 = [(_UIMorphingPlatterView *)self collapsedTransformView];
      [v7 setHidesSourceView:0];
    }

    v8 = [(_UIMorphingPlatterView *)self collapsedClippingView];
    v9 = [(_UIMorphingPlatterView *)self collapsedTransformView];
    [(_UIMorphingPlatterView *)self _installPreview:v4 inClippingView:v8 transformView:v9];

    v10 = [v4 parameters];
    v11 = [v10 backgroundColor];
    v12 = [v11 _isOpaque];
    v13 = [(_UIMorphingPlatterView *)self collapsedClippingView];
    v14 = [v13 layer];
    [v14 setAllowsGroupOpacity:v12];

    [(_UIMorphingPlatterView *)self _updatePathShadow];
  }
}

- (void)_updatePathShadow
{
  if ([(_UIMorphPlatterViewBase *)self expanded])
  {
    v3 = [(_UIMorphPlatterViewBase *)self expandedShadowStyle];
  }

  else
  {
    v3 = [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
  }

  v4 = v3;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __43___UIMorphingPlatterView__updatePathShadow__block_invoke;
  v15 = &unk_1E70F35E0;
  v16 = self;
  v17 = v3 == 1;
  [UIView performWithoutAnimation:&v12];
  v5 = [(_UIMorphingPlatterView *)self pathShadowView:v12];

  if (v5)
  {
    if (v4 == 1)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [(_UIMorphingPlatterView *)self pathShadowView];
    [v7 setAlpha:v6];

    v8 = [(_UIMorphingPlatterView *)self shadowViews];
    v9 = [v8 objectForKeyedSubscript:&unk_1EFE32620];
    [v9 removeFromSuperview];

    v10 = [(_UIMorphingPlatterView *)self pathShadowView];
    v11 = [(_UIMorphingPlatterView *)self shadowViews];
    [v11 setObject:v10 forKeyedSubscript:&unk_1EFE32620];
  }
}

- (void)setCollapsedShadowStyle:(int64_t)a3
{
  [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
  if ([(_UIMorphPlatterViewBase *)self collapsedShadowStyle]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v5 setCollapsedShadowStyle:a3];
    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      [(_UIMorphingPlatterView *)self setExpandedShadowStyle:a3];
    }

    [(_UIMorphingPlatterView *)self _installShadowViewForStyleIfNecessary:a3];
  }
}

- (void)setCollapsedShadowIntensity:(double)a3
{
  [(_UIMorphPlatterViewBase *)self collapsedShadowIntensity];
  if (vabdd_f64(a3, v5) > 2.22044605e-16)
  {
    v17.receiver = self;
    v17.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v17 setCollapsedShadowIntensity:a3];
    v6 = [(_UIMorphingPlatterView *)self expansionProgress];
    [v6 value];
    [(_UIMorphingPlatterView *)self _collapsedShadowAlphaForExpansionProgress:?];
    v8 = v7;

    v9 = [(_UIMorphPlatterViewBase *)self shadowSettings];

    if (v9)
    {
      v10 = [(_UIMorphPlatterViewBase *)self shadowSettings];
      [v10 opacity];
      v12 = v8 * v11;
      v13 = [(UIView *)self layer];
      *&v14 = v12;
      [v13 setShadowOpacity:v14];
    }

    else
    {
      v15 = [(_UIMorphingPlatterView *)self shadowViews];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIMorphPlatterViewBase collapsedShadowStyle](self, "collapsedShadowStyle")}];
      v10 = [v15 objectForKeyedSubscript:v16];

      [v10 setAlpha:v8];
    }
  }
}

- (void)setExpandedShadowStyle:(int64_t)a3
{
  if ([(_UIMorphPlatterViewBase *)self expandedShadowStyle]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v5 setExpandedShadowStyle:a3];
    [(_UIMorphingPlatterView *)self _installShadowViewForStyleIfNecessary:a3];
  }
}

- (void)setExpandedShadowIntensity:(double)a3
{
  [(_UIMorphPlatterViewBase *)self expandedShadowIntensity];
  if (vabdd_f64(a3, v5) > 2.22044605e-16)
  {
    v17.receiver = self;
    v17.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v17 setExpandedShadowIntensity:a3];
    v6 = [(_UIMorphingPlatterView *)self expansionProgress];
    [v6 value];
    [(_UIMorphingPlatterView *)self _expandedShadowAlphaForExpansionProgress:?];
    v8 = v7;

    v9 = [(_UIMorphPlatterViewBase *)self shadowSettings];

    if (v9)
    {
      v10 = [(_UIMorphPlatterViewBase *)self shadowSettings];
      [v10 opacity];
      v12 = v8 * v11;
      v13 = [(UIView *)self layer];
      *&v14 = v12;
      [v13 setShadowOpacity:v14];
    }

    else
    {
      v15 = [(_UIMorphingPlatterView *)self shadowViews];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIMorphPlatterViewBase expandedShadowStyle](self, "expandedShadowStyle")}];
      v10 = [v15 objectForKeyedSubscript:v16];

      [v10 setAlpha:v8];
    }
  }
}

- (void)setHideChromeWhenCollapsed:(BOOL)a3
{
  v3 = a3;
  if ([(_UIMorphPlatterViewBase *)self hideChromeWhenCollapsed]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v5 setHideChromeWhenCollapsed:v3];
    [(_UIMorphingPlatterView *)self _updateCollapsedChrome];
  }
}

- (void)_updateCollapsedChrome
{
  if ([(_UIMorphPlatterViewBase *)self hideChromeWhenCollapsed])
  {
    v3 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
    v4 = [v3 _isLikelyOpaque];

    if ((v4 & 1) == 0)
    {
      v6 = +[UIColor clearColor];
      v5 = [(_UIMorphingPlatterView *)self collapsedTransformView];
      [v5 setBackgroundColor:v6];
    }
  }
}

- (void)setExpandedPreview:(id)a3
{
  v4 = a3;
  v5 = [(_UIMorphPlatterViewBase *)self expandedPreview];
  if (v5 != v4)
  {
    v10.receiver = self;
    v10.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v10 setExpandedPreview:v4];
    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      v6 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      [v4 _setPreviewMode:{objc_msgSend(v6, "_previewMode")}];
    }

    v7 = [(_UIMorphingPlatterView *)self expandedTransformView];
    [v7 setSourcePreview:v4];

    v8 = [(_UIMorphingPlatterView *)self expandedClippingView];
    v9 = [(_UIMorphingPlatterView *)self expandedTransformView];
    [(_UIMorphingPlatterView *)self _installPreview:v4 inClippingView:v8 transformView:v9];
  }
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  if ([(_UIMorphPlatterViewBase *)self expanded]!= a3)
  {
    v15.receiver = self;
    v15.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v15 setExpanded:v3];
    v5 = [(_UIMorphingPlatterView *)self expandedTransformView];
    [v5 setHidesSourceView:0];

    v6 = [(_UIMorphingPlatterView *)self collapsedTransformView];
    [v6 setForwardsHitTestingToSourceView:v3 ^ 1];

    [(UIView *)self setNeedsLayout];
    v7 = [(_UIMorphPlatterViewBase *)self shadowSettings];

    if (v7)
    {
      if (v3)
      {
        [(_UIMorphPlatterViewBase *)self expandedPreview];
      }

      else
      {
        [(_UIMorphPlatterViewBase *)self collapsedPreview];
      }
      v8 = ;
      v9 = [v8 parameters];
      v10 = [v9 effectiveShadowPath];

      v11 = [(UIView *)self layer];
      v12 = v11;
      if (v10)
      {
        [v11 setShadowPathIsBounds:0];

        v13 = [v10 CGPath];
      }

      else
      {
        [v11 setShadowPathIsBounds:1];

        v13 = 0;
      }

      v14 = [(UIView *)self layer];
      [v14 setShadowPath:v13];
    }
  }
}

- (void)updateContentSize
{
  [(_UIMorphingPlatterView *)self setContentSizeDidChange:1];
  [(UIView *)self setNeedsLayout];
  if (+[UIView _isInAnimationBlock])
  {

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)_installShadowViewForStyleIfNecessary:(int64_t)a3
{
  v5 = [(_UIMorphPlatterViewBase *)self shadowSettings];

  if (!v5)
  {
    v6 = [(_UIMorphingPlatterView *)self shadowViews];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      goto LABEL_12;
    }

    switch(a3)
    {
      case 1:
        v8 = [(_UIMorphingPlatterView *)self pathShadowView];
        break;
      case 3:
        v14 = [_UIDiffuseShadowView alloc];
        v15 = [(_UIMorphingPlatterView *)self expandedClippingView];
        [v15 bounds];
        v8 = [(_UIDiffuseShadowView *)v14 initWithFrame:?];

        break;
      case 2:
        v9 = [(_UIMorphPlatterViewBase *)self expandedPreview];
        [v9 _previewMode];
        v10 = objc_opt_class();

        v25 = 0;
        v24 = 0;
        v11 = [v10 alloc];
        [(_UIMorphingPlatterView *)self _expandedCornerRadius:&v25 maskedCorners:&v24 ignoreLiftScale:1];
        v8 = [v11 initWithCornerRadius:?];
        v12 = +[UIDevice currentDevice];
        v13 = [v12 userInterfaceIdiom];

        [(_UIDiffuseShadowView *)v8 setUseLowerIntensity:(v13 & 0xFFFFFFFFFFFFFFFBLL) == 1];
        break;
      default:
        v8 = 0;
LABEL_12:
        v16 = [(_UIMorphingPlatterView *)self shadowViews:v18];
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
        [v16 setObject:v8 forKeyedSubscript:v17];

        [(UIView *)self setNeedsLayout];
        return;
    }

    if (v8)
    {
      [(UIView *)v8 setUserInteractionEnabled:0];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __64___UIMorphingPlatterView__installShadowViewForStyleIfNecessary___block_invoke;
      v21 = &unk_1E70F35B8;
      v22 = self;
      v8 = v8;
      v23 = v8;
      [UIView performWithoutAnimation:&v18];
    }

    goto LABEL_12;
  }
}

- (void)_updateShadowsWithExpansionProgress:(double)a3 contentBounds:(CGRect)a4 center:(CGPoint)a5 forPresentation:(BOOL)a6
{
  v6 = a6;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  v11 = a4.origin.x;
  v14 = a3;
  if (a6)
  {
    v14 = fmax(fmin(a3 / 0.4, 1.0), 0.0);
  }

  v15 = [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
  if (v15 == [(_UIMorphPlatterViewBase *)self expandedShadowStyle])
  {
    v16 = 1.0;
    v17 = 1.0;
    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      [(_UIMorphPlatterViewBase *)self collapsedShadowIntensity];
      v16 = v18;
      v17 = v18;
    }
  }

  else
  {
    [(_UIMorphingPlatterView *)self _expandedShadowAlphaForExpansionProgress:v14];
    v17 = v19;
    [(_UIMorphingPlatterView *)self _collapsedShadowAlphaForExpansionProgress:v14];
    v16 = v20;
  }

  v21 = [(_UIMorphPlatterViewBase *)self shadowSettings];

  if (v21)
  {
    v22 = 0.0;
    v23 = 0.0;
    if ([(_UIMorphPlatterViewBase *)self collapsedShadowStyle])
    {
      [(_UIMorphPlatterViewBase *)self collapsedShadowIntensity];
      v23 = v24;
    }

    if ([(_UIMorphPlatterViewBase *)self expandedShadowStyle])
    {
      [(_UIMorphPlatterViewBase *)self expandedShadowIntensity];
      v22 = v25;
    }

    v26 = [(_UIMorphPlatterViewBase *)self shadowSettings];
    [v26 opacity];
    v28 = ((1.0 - a3) * v23 + v22 * a3) * v27;

    if (v6)
    {
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [(UIView *)self _setPresentationValue:v33 forKey:@"shadowOpacity"];
    }

    else
    {
      v33 = [(UIView *)self layer];
      v30 = v28;
      *&v31 = v30;
      [v33 setShadowOpacity:v31];
    }
  }

  else
  {
    v29 = [(_UIMorphingPlatterView *)self shadowViews];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __99___UIMorphingPlatterView__updateShadowsWithExpansionProgress_contentBounds_center_forPresentation___block_invoke;
    v34[3] = &unk_1E711C8F0;
    *&v34[5] = v11;
    *&v34[6] = y;
    *&v34[7] = width;
    *&v34[8] = height;
    v34[4] = self;
    *&v34[9] = v17;
    *&v34[10] = v16;
    v35 = v6;
    *&v34[11] = a3;
    *&v34[12] = x;
    v34[13] = v32;
    [v29 enumerateKeysAndObjectsUsingBlock:v34];
  }
}

- (void)_updatePathShadowTransform
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_UIMorphingPlatterView *)self pathShadowView];
  rect = v4;
  [v11 setCenter:{v4 + v8 * 0.5, v6 + v10 * 0.5}];
  v12 = [(_UIMorphingPlatterView *)self collapsedTransformView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  v22 = Width / CGRectGetWidth(v29);
  v30.origin.x = rect;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  Height = CGRectGetHeight(v30);
  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  v24 = CGRectGetHeight(v31);
  CGAffineTransformMakeScale(&v27, v22, Height / v24);
  rect_8 = v27;
  [v11 setTransform:&rect_8];
}

- (void)_installPreview:(id)a3 inClippingView:(id)a4 transformView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(_UIMorphingPlatterView *)self _previewPrefersApplyingMask:v8])
  {
    goto LABEL_19;
  }

  v11 = [v8 parameters];
  v12 = [v11 backgroundColor];

  v13 = [v8 parameters];
  v14 = [v13 visiblePath];
  v15 = [v14 copy];

  v16 = [v8 view];
  v17 = v15;
  v18 = v16;
  v19 = v18;
  if (v17)
  {
    if (([v17 _isRoundedRect] & 1) == 0)
    {

LABEL_10:
      [v17 bounds];
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      v39 = -CGRectGetMinX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      MinY = CGRectGetMinY(v51);
      CGAffineTransformMakeTranslation(&v48, v39, -MinY);
      [v17 applyTransform:&v48];
      v41 = [_UIShapeView alloc];
      [v10 bounds];
      v42 = [(UIView *)v41 initWithFrame:?];
      v43 = [v17 CGPath];
      v44 = [(_UIShapeView *)v42 shapeLayer];
      [v44 setPath:v43];

      [v10 setMaskView:v42];
      [v10 setBackgroundColor:v12];
      v45 = +[UIColor clearColor];
      [v9 setBackgroundColor:v45];

      [v9 setClipsToBounds:0];
LABEL_15:

      goto LABEL_16;
    }

    [v17 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v19 bounds];
    v52.origin.x = v28;
    v52.origin.y = v29;
    v52.size.width = v30;
    v52.size.height = v31;
    v49.origin.x = v21;
    v49.origin.y = v23;
    v49.size.width = v25;
    v49.size.height = v27;
    v32 = CGRectEqualToRect(v49, v52);

    if (!v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [v10 setMaskView:0];
  [v10 setBackgroundColor:v12];
  v33 = [(_UIMorphPlatterViewBase *)self shouldApplyClippingHandler];

  if (v33)
  {
    v34 = [(_UIMorphPlatterViewBase *)self shouldApplyClippingHandler];
    [v9 setClipsToBounds:{(v34)[2](v34, v8)}];
  }

  else
  {
    [v9 setClipsToBounds:1];
  }

  if (![v12 _isOpaque])
  {
    v42 = +[UIColor clearColor];
    [v9 setBackgroundColor:v42];
    goto LABEL_15;
  }

  [v9 setBackgroundColor:v12];
LABEL_16:
  if ([(_UIMorphingPlatterView *)self bothViewsAreLikelyOpaque])
  {
    v46 = +[UIColor clearColor];
    v47 = [(_UIMorphingPlatterView *)self collapsedClippingView];
    [v47 setBackgroundColor:v46];
  }

LABEL_19:
}

@end