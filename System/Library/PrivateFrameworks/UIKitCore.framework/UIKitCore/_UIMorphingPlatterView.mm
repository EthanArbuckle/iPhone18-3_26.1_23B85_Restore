@interface _UIMorphingPlatterView
- (BOOL)_previewPrefersApplyingMask:(id)mask;
- (BOOL)allowsUserInteractionInExpandedPreview;
- (BOOL)bothViewsAreLikelyOpaque;
- (BOOL)hidesCollapsedSourceView;
- (BOOL)wantsEdgeAntialiasing;
- (_UIMorphingPlatterView)initWithFrame:(CGRect)frame;
- (double)_collapsedCornerRadius:(BOOL *)radius maskedCorners:(unint64_t *)corners;
- (double)_expandedCornerRadius:(BOOL *)radius maskedCorners:(unint64_t *)corners ignoreLiftScale:(BOOL)scale;
- (void)_installPreview:(id)preview inClippingView:(id)view transformView:(id)transformView;
- (void)_installShadowViewForStyleIfNecessary:(int64_t)necessary;
- (void)_modelUpdates;
- (void)_prepareAnimatableProperties;
- (void)_updateClippingViews;
- (void)_updateCollapsedChrome;
- (void)_updatePathShadow;
- (void)_updatePathShadowTransform;
- (void)_updateShadowsWithExpansionProgress:(double)progress contentBounds:(CGRect)bounds center:(CGPoint)center forPresentation:(BOOL)presentation;
- (void)didTearOffForDrag;
- (void)freezeExpandedPreview;
- (void)layoutSubviews;
- (void)setAllowsUserInteractionInExpandedPreview:(BOOL)preview;
- (void)setAlwaysCompact:(BOOL)compact;
- (void)setCollapsedPreview:(id)preview;
- (void)setCollapsedShadowIntensity:(double)intensity;
- (void)setCollapsedShadowStyle:(int64_t)style;
- (void)setExpanded:(BOOL)expanded;
- (void)setExpandedPreview:(id)preview;
- (void)setExpandedShadowIntensity:(double)intensity;
- (void)setExpandedShadowStyle:(int64_t)style;
- (void)setHideChromeWhenCollapsed:(BOOL)collapsed;
- (void)setHidesCollapsedSourceView:(BOOL)view;
- (void)setPreventPreviewRasterization:(BOOL)rasterization;
- (void)setWantsEdgeAntialiasing:(BOOL)antialiasing;
- (void)updateContentSize;
@end

@implementation _UIMorphingPlatterView

- (_UIMorphingPlatterView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = _UIMorphingPlatterView;
  v3 = [(_UIMorphPlatterViewBase *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setClipsToBounds:0];
    v5 = [_UIPlatterClippingView alloc];
    [(UIView *)v4 bounds];
    v6 = [(_UIPlatterClippingView *)v5 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setExpandedClippingView:v6];

    expandedClippingView = [(_UIMorphingPlatterView *)v4 expandedClippingView];
    [(UIView *)v4 addSubview:expandedClippingView];

    v8 = [_UIPlatterTransformView alloc];
    [(UIView *)v4 bounds];
    v9 = [(_UIPlatterTransformView *)v8 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setExpandedTransformView:v9];

    expandedTransformView = [(_UIMorphingPlatterView *)v4 expandedTransformView];
    [expandedTransformView setHidesSourceView:1];

    expandedClippingView2 = [(_UIMorphingPlatterView *)v4 expandedClippingView];
    expandedTransformView2 = [(_UIMorphingPlatterView *)v4 expandedTransformView];
    [expandedClippingView2 addSubview:expandedTransformView2];

    v13 = [_UIPlatterClippingView alloc];
    [(UIView *)v4 bounds];
    v14 = [(_UIPlatterClippingView *)v13 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setCollapsedClippingView:v14];

    collapsedClippingView = [(_UIMorphingPlatterView *)v4 collapsedClippingView];
    [(UIView *)v4 addSubview:collapsedClippingView];

    v16 = [_UIPlatterTransformView alloc];
    [(UIView *)v4 bounds];
    v17 = [(_UIPlatterTransformView *)v16 initWithFrame:?];
    [(_UIMorphingPlatterView *)v4 setCollapsedTransformView:v17];

    collapsedTransformView = [(_UIMorphingPlatterView *)v4 collapsedTransformView];
    [collapsedTransformView setHidesSourceView:1];

    collapsedClippingView2 = [(_UIMorphingPlatterView *)v4 collapsedClippingView];
    collapsedTransformView2 = [(_UIMorphingPlatterView *)v4 collapsedTransformView];
    [collapsedClippingView2 addSubview:collapsedTransformView2];

    [(_UIMorphingPlatterView *)v4 setPreventPreviewRasterization:0];
    [(UIView *)v4 _setSafeAreaInsetsFrozen:1];
    [(_UIMorphPlatterViewBase *)v4 setShouldMorphContents:1];
    [(_UIMorphingPlatterView *)v4 setOverrideCollapsedCornerRadius:2.22507386e-308];
    [(_UIMorphingPlatterView *)v4 setOverrideExpandedCornerRadius:2.22507386e-308];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(_UIMorphingPlatterView *)v4 setShadowViews:dictionary];

    [(_UIMorphingPlatterView *)v4 _prepareAnimatableProperties];
  }

  return v4;
}

- (void)setAllowsUserInteractionInExpandedPreview:(BOOL)preview
{
  previewCopy = preview;
  expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
  [expandedTransformView setAllowsUserInteraction:previewCopy];
}

- (BOOL)allowsUserInteractionInExpandedPreview
{
  expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
  allowsUserInteraction = [expandedTransformView allowsUserInteraction];

  return allowsUserInteraction;
}

- (void)setPreventPreviewRasterization:(BOOL)rasterization
{
  rasterizationCopy = rasterization;
  if ([(_UIMorphPlatterViewBase *)self preventPreviewRasterization]!= rasterization)
  {
    v6.receiver = self;
    v6.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v6 setPreventPreviewRasterization:rasterizationCopy];
    expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
    [expandedTransformView setAppliesMinificationFilter:rasterizationCopy ^ 1];
  }
}

- (void)setAlwaysCompact:(BOOL)compact
{
  compactCopy = compact;
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact]!= compact)
  {
    v6.receiver = self;
    v6.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v6 setAlwaysCompact:compactCopy];
    if (compactCopy)
    {
      collapsedShadowStyle = [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
    }

    else
    {
      collapsedShadowStyle = 2;
    }

    [(_UIMorphingPlatterView *)self setExpandedShadowStyle:collapsedShadowStyle];
  }
}

- (void)setHidesCollapsedSourceView:(BOOL)view
{
  viewCopy = view;
  collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
  [collapsedTransformView setHidesSourceView:viewCopy];
}

- (BOOL)hidesCollapsedSourceView
{
  collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
  hidesSourceView = [collapsedTransformView hidesSourceView];

  return hidesSourceView;
}

- (void)setWantsEdgeAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
  layer = [collapsedClippingView layer];
  [layer setAllowsEdgeAntialiasing:antialiasingCopy];

  expandedClippingView = [(_UIMorphingPlatterView *)self expandedClippingView];
  layer2 = [expandedClippingView layer];
  [layer2 setAllowsEdgeAntialiasing:antialiasingCopy];
}

- (BOOL)wantsEdgeAntialiasing
{
  collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
  layer = [collapsedClippingView layer];
  allowsEdgeAntialiasing = [layer allowsEdgeAntialiasing];

  return allowsEdgeAntialiasing;
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = _UIMorphingPlatterView;
  [(UIView *)&v78 layoutSubviews];
  expanded = [(_UIMorphPlatterViewBase *)self expanded];
  [(UIView *)self bounds];
  rect_16 = v5;
  rect_24 = v4;
  v73 = v7;
  v74 = v6;
  collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
  expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
  if ([(_UIMorphingPlatterView *)self contentSizeDidChange])
  {
    [(_UIMorphingPlatterView *)self setContentSizeDidChange:0];
    [collapsedTransformView sizeToFit];
    [expandedTransformView sizeToFit];
  }

  [(_UIMorphingPlatterView *)self _updatePathShadowTransform];
  [(_UIMorphingPlatterView *)self _updateClippingViews];
  if (![(_UIMorphPlatterViewBase *)self preferredMorphingAxis])
  {
    [collapsedTransformView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [expandedTransformView bounds];
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

  [collapsedTransformView bounds];
  v27 = v26;
  v63 = v28;
  recta = v26;
  v29 = v28;
  v31 = v30;
  rect_8a = v32;
  preferredMorphingAxis = [(_UIMorphPlatterViewBase *)self preferredMorphingAxis];
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
  if (preferredMorphingAxis == 1)
  {
    v39 = v35;
  }

  else
  {
    v39 = v36 / v37;
  }

  if (preferredMorphingAxis == 2)
  {
    v40 = v36 / v37;
  }

  else
  {
    v40 = v35;
  }

  if (preferredMorphingAxis != 2)
  {
    v38 = v39;
  }

  CGAffineTransformMakeScale(&v77, v40, v38);
  v76 = v77;
  [collapsedTransformView setTransform:&v76];
  [expandedTransformView bounds];
  v42 = v41;
  v64 = v43;
  rectb = v41;
  v44 = v43;
  rect_8b = v45;
  v47 = v46;
  preferredMorphingAxis2 = [(_UIMorphPlatterViewBase *)self preferredMorphingAxis];
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
  if (preferredMorphingAxis2 == 1)
  {
    v54 = v50;
  }

  else
  {
    v54 = v51 / v52;
  }

  if (preferredMorphingAxis2 == 2)
  {
    v55 = v51 / v52;
  }

  else
  {
    v55 = v50;
  }

  if (preferredMorphingAxis2 != 2)
  {
    v53 = v54;
  }

  CGAffineTransformMakeScale(&v75, v55, v53);
  v76 = v75;
  [expandedTransformView setTransform:&v76];
  if ([(_UIMorphingPlatterView *)self bothViewsAreLikelyOpaque])
  {
    collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
    [(UIView *)self bringSubviewToFront:collapsedClippingView];
  }

  if (!+[UIView _isInRetargetableAnimationBlock])
  {
    [(_UIMorphingPlatterView *)self _modelUpdates];
  }

  if (expanded)
  {
    v57 = 1.0;
  }

  else
  {
    v57 = 0.0;
  }

  expansionProgress = [(_UIMorphingPlatterView *)self expansionProgress];
  [expansionProgress setValue:v57];

  v93.origin.x = rect_24;
  v93.origin.y = rect_16;
  v93.size.width = v74;
  v93.size.height = v73;
  v59 = CGRectGetWidth(v93);
  platterWidth = [(_UIMorphingPlatterView *)self platterWidth];
  [platterWidth setValue:v59];

  v94.origin.x = rect_24;
  v94.origin.y = rect_16;
  v94.size.width = v74;
  v94.size.height = v73;
  v61 = CGRectGetHeight(v94);
  platterHeight = [(_UIMorphingPlatterView *)self platterHeight];
  [platterHeight setValue:v61];

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
  collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
  [collapsedClippingView setBounds:{v4, v6, v8, v10}];

  collapsedClippingView2 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  v24 = v12;
  [collapsedClippingView2 setCenter:{v11, v12}];

  expandedClippingView = [(_UIMorphingPlatterView *)self expandedClippingView];
  [expandedClippingView setBounds:{v4, v6, v8, v10}];

  expandedClippingView2 = [(_UIMorphingPlatterView *)self expandedClippingView];
  [expandedClippingView2 setCenter:{v11, v12}];

  collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
  v18 = 0.0;
  [collapsedTransformView setCenter:{v11, 0.0}];

  expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
  [expandedTransformView setCenter:{v11, 0.0}];

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

  collapsedClippingView3 = [(_UIMorphingPlatterView *)self collapsedClippingView];
  [collapsedClippingView3 setAlpha:v20];

  expandedClippingView3 = [(_UIMorphingPlatterView *)self expandedClippingView];
  [expandedClippingView3 setAlpha:v18];

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

  expansionProgress = [(_UIMorphingPlatterView *)self expansionProgress];
  v15[0] = expansionProgress;
  platterWidth = [(_UIMorphingPlatterView *)self platterWidth];
  v15[1] = platterWidth;
  platterHeight = [(_UIMorphingPlatterView *)self platterHeight];
  v15[2] = platterHeight;
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
  expanded = [(_UIMorphPlatterViewBase *)self expanded];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
  expandedClippingView = [(_UIMorphingPlatterView *)self expandedClippingView];
  v42 = 0;
  v41 = 15;
  if (expanded)
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
    if (expanded)
    {
      v19 = collapsedClippingView;
    }

    else
    {
      v19 = expandedClippingView;
    }

    layer = [v19 layer];
    cornerCurve = [layer cornerCurve];

    v18 = cornerCurve;
  }

  layer2 = [collapsedClippingView layer];
  [layer2 setCornerCurve:v18];

  layer3 = [expandedClippingView layer];
  [layer3 setCornerCurve:v18];

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    layer4 = [collapsedClippingView layer];
    [layer4 setCornerRadius:v16];

    layer5 = [expandedClippingView layer];
    [layer5 setCornerRadius:v16];
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

    layer6 = [collapsedClippingView layer];
    v33 = v30;
    v34 = v30;
    v35 = v31;
    v36 = v31;
    v37 = v29;
    v38 = v29;
    v39 = v28;
    v40 = v28;
    [layer6 setCornerRadii:&v33];

    layer5 = [expandedClippingView layer];
    v33 = v30;
    v34 = v30;
    v35 = v31;
    v36 = v31;
    v37 = v29;
    v38 = v29;
    v39 = v28;
    v40 = v28;
    [layer5 setCornerRadii:&v33];
  }

  [(UIView *)self _setContinuousCornerRadius:v16];
}

- (double)_collapsedCornerRadius:(BOOL *)radius maskedCorners:(unint64_t *)corners
{
  *corners = 15;
  *radius = 1;
  [(_UIMorphingPlatterView *)self overrideCollapsedCornerRadius];
  if (v7 <= 2.22507386e-308)
  {
    collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
    _outlineShape = [collapsedPreview _outlineShape];

    [_outlineShape cornerRadius];
    v12 = v11;
    cornerCurve = [_outlineShape cornerCurve];
    *radius = cornerCurve == *MEMORY[0x1E69796E8];

    *corners = [_outlineShape cornerMask];
    return v12;
  }

  else
  {

    [(_UIMorphingPlatterView *)self overrideCollapsedCornerRadius];
  }

  return result;
}

- (double)_expandedCornerRadius:(BOOL *)radius maskedCorners:(unint64_t *)corners ignoreLiftScale:(BOOL)scale
{
  *corners = 15;
  *radius = 1;
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
  _outlineShape = [v11 _outlineShape];
  [_outlineShape cornerRadius];
  v14 = v13;
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    cornerCurve = [_outlineShape cornerCurve];
    *radius = cornerCurve == *MEMORY[0x1E69796E8];

    cornerMask = [_outlineShape cornerMask];
  }

  else
  {
    *radius = 1;
    cornerMask = 15;
  }

  *corners = cornerMask;
  parameters = [v11 parameters];
  visiblePath = [parameters visiblePath];
  if (visiblePath)
  {

LABEL_16:
    goto LABEL_17;
  }

  if (fabs(v14) < 2.22044605e-16)
  {
    traitCollection = [(UIView *)self traitCollection];
    parameters = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    [parameters previewPlatterCornerRadius];
    if (v14 < v20)
    {
      v14 = v20;
    }

    goto LABEL_16;
  }

LABEL_17:
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    if (!scale)
    {
      [(UIView *)self bounds];
      Width = CGRectGetWidth(v24);
      [v11 size];
      v14 = v14 * (Width / v22);
    }

    *corners = 15;
  }

  return v14;
}

- (void)freezeExpandedPreview
{
  if (![(_UIMorphingPlatterView *)self isFrozen]&& ![(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    [(_UIMorphingPlatterView *)self setFrozen:1];
    expandedPreview = [(_UIMorphPlatterViewBase *)self expandedPreview];
    view = [expandedPreview view];
    [view bounds];
    v8 = _UISnapshotViewRectAfterCommit(view, 0, v4, v5, v6, v7);
    [view bounds];
    [v8 setFrame:?];
    if (v8)
    {
      v9 = [UITargetedPreview alloc];
      parameters = [expandedPreview parameters];
      target = [expandedPreview target];
      v12 = [(UITargetedPreview *)v9 initWithView:v8 parameters:parameters target:target];
      [(_UIMorphingPlatterView *)self setExpandedPreview:v12];
    }
  }
}

- (void)didTearOffForDrag
{
  collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
  [collapsedTransformView didTearOffForDrag];

  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
    _previewMode = [collapsedPreview _previewMode];

    if (_previewMode == 4)
    {
      CGAffineTransformMakeScale(&v7, 0.909090909, 0.909090909);
      v6 = v7;
      [(UIView *)self setTransform:&v6];
    }
  }
}

- (BOOL)bothViewsAreLikelyOpaque
{
  collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
  if ([collapsedPreview _isLikelyOpaque])
  {
    expandedPreview = [(_UIMorphPlatterViewBase *)self expandedPreview];
    _isLikelyOpaque = [expandedPreview _isLikelyOpaque];
  }

  else
  {
    _isLikelyOpaque = 0;
  }

  return _isLikelyOpaque;
}

- (BOOL)_previewPrefersApplyingMask:(id)mask
{
  maskCopy = mask;
  v4 = [maskCopy _previewMode] != 4 && objc_msgSend(maskCopy, "_previewMode") != 5;

  return v4;
}

- (void)setCollapsedPreview:(id)preview
{
  previewCopy = preview;
  collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
  if (collapsedPreview != previewCopy)
  {
    v15.receiver = self;
    v15.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v15 setCollapsedPreview:previewCopy];
    collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
    [collapsedTransformView setSourcePreview:previewCopy];

    if (_AXSReduceMotionEnabled())
    {
      collapsedTransformView2 = [(_UIMorphingPlatterView *)self collapsedTransformView];
      [collapsedTransformView2 setHidesSourceView:0];
    }

    collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
    collapsedTransformView3 = [(_UIMorphingPlatterView *)self collapsedTransformView];
    [(_UIMorphingPlatterView *)self _installPreview:previewCopy inClippingView:collapsedClippingView transformView:collapsedTransformView3];

    parameters = [previewCopy parameters];
    backgroundColor = [parameters backgroundColor];
    _isOpaque = [backgroundColor _isOpaque];
    collapsedClippingView2 = [(_UIMorphingPlatterView *)self collapsedClippingView];
    layer = [collapsedClippingView2 layer];
    [layer setAllowsGroupOpacity:_isOpaque];

    [(_UIMorphingPlatterView *)self _updatePathShadow];
  }
}

- (void)_updatePathShadow
{
  if ([(_UIMorphPlatterViewBase *)self expanded])
  {
    expandedShadowStyle = [(_UIMorphPlatterViewBase *)self expandedShadowStyle];
  }

  else
  {
    expandedShadowStyle = [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
  }

  v4 = expandedShadowStyle;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __43___UIMorphingPlatterView__updatePathShadow__block_invoke;
  v15 = &unk_1E70F35E0;
  selfCopy = self;
  v17 = expandedShadowStyle == 1;
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

    pathShadowView = [(_UIMorphingPlatterView *)self pathShadowView];
    [pathShadowView setAlpha:v6];

    shadowViews = [(_UIMorphingPlatterView *)self shadowViews];
    v9 = [shadowViews objectForKeyedSubscript:&unk_1EFE32620];
    [v9 removeFromSuperview];

    pathShadowView2 = [(_UIMorphingPlatterView *)self pathShadowView];
    shadowViews2 = [(_UIMorphingPlatterView *)self shadowViews];
    [shadowViews2 setObject:pathShadowView2 forKeyedSubscript:&unk_1EFE32620];
  }
}

- (void)setCollapsedShadowStyle:(int64_t)style
{
  [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
  if ([(_UIMorphPlatterViewBase *)self collapsedShadowStyle]!= style)
  {
    v5.receiver = self;
    v5.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v5 setCollapsedShadowStyle:style];
    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      [(_UIMorphingPlatterView *)self setExpandedShadowStyle:style];
    }

    [(_UIMorphingPlatterView *)self _installShadowViewForStyleIfNecessary:style];
  }
}

- (void)setCollapsedShadowIntensity:(double)intensity
{
  [(_UIMorphPlatterViewBase *)self collapsedShadowIntensity];
  if (vabdd_f64(intensity, v5) > 2.22044605e-16)
  {
    v17.receiver = self;
    v17.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v17 setCollapsedShadowIntensity:intensity];
    expansionProgress = [(_UIMorphingPlatterView *)self expansionProgress];
    [expansionProgress value];
    [(_UIMorphingPlatterView *)self _collapsedShadowAlphaForExpansionProgress:?];
    v8 = v7;

    shadowSettings = [(_UIMorphPlatterViewBase *)self shadowSettings];

    if (shadowSettings)
    {
      shadowSettings2 = [(_UIMorphPlatterViewBase *)self shadowSettings];
      [shadowSettings2 opacity];
      v12 = v8 * v11;
      layer = [(UIView *)self layer];
      *&v14 = v12;
      [layer setShadowOpacity:v14];
    }

    else
    {
      shadowViews = [(_UIMorphingPlatterView *)self shadowViews];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIMorphPlatterViewBase collapsedShadowStyle](self, "collapsedShadowStyle")}];
      shadowSettings2 = [shadowViews objectForKeyedSubscript:v16];

      [shadowSettings2 setAlpha:v8];
    }
  }
}

- (void)setExpandedShadowStyle:(int64_t)style
{
  if ([(_UIMorphPlatterViewBase *)self expandedShadowStyle]!= style)
  {
    v5.receiver = self;
    v5.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v5 setExpandedShadowStyle:style];
    [(_UIMorphingPlatterView *)self _installShadowViewForStyleIfNecessary:style];
  }
}

- (void)setExpandedShadowIntensity:(double)intensity
{
  [(_UIMorphPlatterViewBase *)self expandedShadowIntensity];
  if (vabdd_f64(intensity, v5) > 2.22044605e-16)
  {
    v17.receiver = self;
    v17.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v17 setExpandedShadowIntensity:intensity];
    expansionProgress = [(_UIMorphingPlatterView *)self expansionProgress];
    [expansionProgress value];
    [(_UIMorphingPlatterView *)self _expandedShadowAlphaForExpansionProgress:?];
    v8 = v7;

    shadowSettings = [(_UIMorphPlatterViewBase *)self shadowSettings];

    if (shadowSettings)
    {
      shadowSettings2 = [(_UIMorphPlatterViewBase *)self shadowSettings];
      [shadowSettings2 opacity];
      v12 = v8 * v11;
      layer = [(UIView *)self layer];
      *&v14 = v12;
      [layer setShadowOpacity:v14];
    }

    else
    {
      shadowViews = [(_UIMorphingPlatterView *)self shadowViews];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIMorphPlatterViewBase expandedShadowStyle](self, "expandedShadowStyle")}];
      shadowSettings2 = [shadowViews objectForKeyedSubscript:v16];

      [shadowSettings2 setAlpha:v8];
    }
  }
}

- (void)setHideChromeWhenCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  if ([(_UIMorphPlatterViewBase *)self hideChromeWhenCollapsed]!= collapsed)
  {
    v5.receiver = self;
    v5.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v5 setHideChromeWhenCollapsed:collapsedCopy];
    [(_UIMorphingPlatterView *)self _updateCollapsedChrome];
  }
}

- (void)_updateCollapsedChrome
{
  if ([(_UIMorphPlatterViewBase *)self hideChromeWhenCollapsed])
  {
    collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
    _isLikelyOpaque = [collapsedPreview _isLikelyOpaque];

    if ((_isLikelyOpaque & 1) == 0)
    {
      v6 = +[UIColor clearColor];
      collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
      [collapsedTransformView setBackgroundColor:v6];
    }
  }
}

- (void)setExpandedPreview:(id)preview
{
  previewCopy = preview;
  expandedPreview = [(_UIMorphPlatterViewBase *)self expandedPreview];
  if (expandedPreview != previewCopy)
  {
    v10.receiver = self;
    v10.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v10 setExpandedPreview:previewCopy];
    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      [previewCopy _setPreviewMode:{objc_msgSend(collapsedPreview, "_previewMode")}];
    }

    expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
    [expandedTransformView setSourcePreview:previewCopy];

    expandedClippingView = [(_UIMorphingPlatterView *)self expandedClippingView];
    expandedTransformView2 = [(_UIMorphingPlatterView *)self expandedTransformView];
    [(_UIMorphingPlatterView *)self _installPreview:previewCopy inClippingView:expandedClippingView transformView:expandedTransformView2];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if ([(_UIMorphPlatterViewBase *)self expanded]!= expanded)
  {
    v15.receiver = self;
    v15.super_class = _UIMorphingPlatterView;
    [(_UIMorphPlatterViewBase *)&v15 setExpanded:expandedCopy];
    expandedTransformView = [(_UIMorphingPlatterView *)self expandedTransformView];
    [expandedTransformView setHidesSourceView:0];

    collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
    [collapsedTransformView setForwardsHitTestingToSourceView:expandedCopy ^ 1];

    [(UIView *)self setNeedsLayout];
    shadowSettings = [(_UIMorphPlatterViewBase *)self shadowSettings];

    if (shadowSettings)
    {
      if (expandedCopy)
      {
        [(_UIMorphPlatterViewBase *)self expandedPreview];
      }

      else
      {
        [(_UIMorphPlatterViewBase *)self collapsedPreview];
      }
      v8 = ;
      parameters = [v8 parameters];
      effectiveShadowPath = [parameters effectiveShadowPath];

      layer = [(UIView *)self layer];
      v12 = layer;
      if (effectiveShadowPath)
      {
        [layer setShadowPathIsBounds:0];

        cGPath = [effectiveShadowPath CGPath];
      }

      else
      {
        [layer setShadowPathIsBounds:1];

        cGPath = 0;
      }

      layer2 = [(UIView *)self layer];
      [layer2 setShadowPath:cGPath];
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

- (void)_installShadowViewForStyleIfNecessary:(int64_t)necessary
{
  shadowSettings = [(_UIMorphPlatterViewBase *)self shadowSettings];

  if (!shadowSettings)
  {
    shadowViews = [(_UIMorphingPlatterView *)self shadowViews];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:necessary];
    pathShadowView = [shadowViews objectForKeyedSubscript:v7];

    if (pathShadowView)
    {
      goto LABEL_12;
    }

    switch(necessary)
    {
      case 1:
        pathShadowView = [(_UIMorphingPlatterView *)self pathShadowView];
        break;
      case 3:
        v14 = [_UIDiffuseShadowView alloc];
        expandedClippingView = [(_UIMorphingPlatterView *)self expandedClippingView];
        [expandedClippingView bounds];
        pathShadowView = [(_UIDiffuseShadowView *)v14 initWithFrame:?];

        break;
      case 2:
        expandedPreview = [(_UIMorphPlatterViewBase *)self expandedPreview];
        [expandedPreview _previewMode];
        v10 = objc_opt_class();

        v25 = 0;
        v24 = 0;
        v11 = [v10 alloc];
        [(_UIMorphingPlatterView *)self _expandedCornerRadius:&v25 maskedCorners:&v24 ignoreLiftScale:1];
        pathShadowView = [v11 initWithCornerRadius:?];
        v12 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v12 userInterfaceIdiom];

        [(_UIDiffuseShadowView *)pathShadowView setUseLowerIntensity:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
        break;
      default:
        pathShadowView = 0;
LABEL_12:
        v16 = [(_UIMorphingPlatterView *)self shadowViews:v18];
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:necessary];
        [v16 setObject:pathShadowView forKeyedSubscript:v17];

        [(UIView *)self setNeedsLayout];
        return;
    }

    if (pathShadowView)
    {
      [(UIView *)pathShadowView setUserInteractionEnabled:0];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __64___UIMorphingPlatterView__installShadowViewForStyleIfNecessary___block_invoke;
      v21 = &unk_1E70F35B8;
      selfCopy = self;
      pathShadowView = pathShadowView;
      v23 = pathShadowView;
      [UIView performWithoutAnimation:&v18];
    }

    goto LABEL_12;
  }
}

- (void)_updateShadowsWithExpansionProgress:(double)progress contentBounds:(CGRect)bounds center:(CGPoint)center forPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  v11 = bounds.origin.x;
  progressCopy = progress;
  if (presentation)
  {
    progressCopy = fmax(fmin(progress / 0.4, 1.0), 0.0);
  }

  collapsedShadowStyle = [(_UIMorphPlatterViewBase *)self collapsedShadowStyle];
  if (collapsedShadowStyle == [(_UIMorphPlatterViewBase *)self expandedShadowStyle])
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
    [(_UIMorphingPlatterView *)self _expandedShadowAlphaForExpansionProgress:progressCopy];
    v17 = v19;
    [(_UIMorphingPlatterView *)self _collapsedShadowAlphaForExpansionProgress:progressCopy];
    v16 = v20;
  }

  shadowSettings = [(_UIMorphPlatterViewBase *)self shadowSettings];

  if (shadowSettings)
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

    shadowSettings2 = [(_UIMorphPlatterViewBase *)self shadowSettings];
    [shadowSettings2 opacity];
    v28 = ((1.0 - progress) * v23 + v22 * progress) * v27;

    if (presentationCopy)
    {
      layer = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [(UIView *)self _setPresentationValue:layer forKey:@"shadowOpacity"];
    }

    else
    {
      layer = [(UIView *)self layer];
      v30 = v28;
      *&v31 = v30;
      [layer setShadowOpacity:v31];
    }
  }

  else
  {
    shadowViews = [(_UIMorphingPlatterView *)self shadowViews];
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
    v35 = presentationCopy;
    *&v34[11] = progress;
    *&v34[12] = x;
    v34[13] = v32;
    [shadowViews enumerateKeysAndObjectsUsingBlock:v34];
  }
}

- (void)_updatePathShadowTransform
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pathShadowView = [(_UIMorphingPlatterView *)self pathShadowView];
  rect = v4;
  [pathShadowView setCenter:{v4 + v8 * 0.5, v6 + v10 * 0.5}];
  collapsedTransformView = [(_UIMorphingPlatterView *)self collapsedTransformView];
  [collapsedTransformView bounds];
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
  [pathShadowView setTransform:&rect_8];
}

- (void)_installPreview:(id)preview inClippingView:(id)view transformView:(id)transformView
{
  previewCopy = preview;
  viewCopy = view;
  transformViewCopy = transformView;
  if (![(_UIMorphingPlatterView *)self _previewPrefersApplyingMask:previewCopy])
  {
    goto LABEL_19;
  }

  parameters = [previewCopy parameters];
  backgroundColor = [parameters backgroundColor];

  parameters2 = [previewCopy parameters];
  visiblePath = [parameters2 visiblePath];
  v15 = [visiblePath copy];

  view = [previewCopy view];
  v17 = v15;
  v18 = view;
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
      [transformViewCopy bounds];
      v42 = [(UIView *)v41 initWithFrame:?];
      cGPath = [v17 CGPath];
      shapeLayer = [(_UIShapeView *)v42 shapeLayer];
      [shapeLayer setPath:cGPath];

      [transformViewCopy setMaskView:v42];
      [transformViewCopy setBackgroundColor:backgroundColor];
      v45 = +[UIColor clearColor];
      [viewCopy setBackgroundColor:v45];

      [viewCopy setClipsToBounds:0];
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

  [transformViewCopy setMaskView:0];
  [transformViewCopy setBackgroundColor:backgroundColor];
  shouldApplyClippingHandler = [(_UIMorphPlatterViewBase *)self shouldApplyClippingHandler];

  if (shouldApplyClippingHandler)
  {
    shouldApplyClippingHandler2 = [(_UIMorphPlatterViewBase *)self shouldApplyClippingHandler];
    [viewCopy setClipsToBounds:{(shouldApplyClippingHandler2)[2](shouldApplyClippingHandler2, previewCopy)}];
  }

  else
  {
    [viewCopy setClipsToBounds:1];
  }

  if (![backgroundColor _isOpaque])
  {
    v42 = +[UIColor clearColor];
    [viewCopy setBackgroundColor:v42];
    goto LABEL_15;
  }

  [viewCopy setBackgroundColor:backgroundColor];
LABEL_16:
  if ([(_UIMorphingPlatterView *)self bothViewsAreLikelyOpaque])
  {
    v46 = +[UIColor clearColor];
    collapsedClippingView = [(_UIMorphingPlatterView *)self collapsedClippingView];
    [collapsedClippingView setBackgroundColor:v46];
  }

LABEL_19:
}

@end