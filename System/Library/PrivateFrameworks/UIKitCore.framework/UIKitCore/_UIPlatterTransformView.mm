@interface _UIPlatterTransformView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)sourceView;
- (_UIPlatterTransformView)initWithFrame:(CGRect)frame;
- (void)_updateMinificationFilter;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didTearOffForDrag;
- (void)layoutSubviews;
- (void)setAppliesMinificationFilter:(BOOL)filter;
- (void)setForwardsHitTestingToSourceView:(BOOL)view;
- (void)setHidesSourceView:(BOOL)view;
- (void)setMatchesAlpha:(BOOL)alpha;
- (void)setSourcePreview:(id)preview;
@end

@implementation _UIPlatterTransformView

- (_UIPlatterTransformView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIPlatterTransformView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAnchorPoint:0.5, 0.0];
    [(UIView *)v4 setAutoresizesSubviews:0];
    [(UIView *)v4 _setShouldAdaptToMaterials:0];
  }

  return v4;
}

- (void)dealloc
{
  backgroundCaptureView = [(_UIPlatterTransformView *)self backgroundCaptureView];
  [backgroundCaptureView removeFromSuperview];

  v4.receiver = self;
  v4.super_class = _UIPlatterTransformView;
  [(UIView *)&v4 dealloc];
}

- (UIView)sourceView
{
  sourcePreview = [(_UIPlatterTransformView *)self sourcePreview];
  view = [sourcePreview view];

  return view;
}

- (void)setSourcePreview:(id)preview
{
  previewCopy = preview;
  if (self->_sourcePreview != previewCopy)
  {
    if ([(_UIPlatterTransformView *)self shouldTakeOwnershipOfSourceView])
    {
      view = [(UITargetedPreview *)self->_sourcePreview view];
      [view removeFromSuperview];
    }

    objc_storeStrong(&self->_sourcePreview, preview);
    if ([(_UIPlatterTransformView *)self allowsUserInteraction])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(UITargetedPreview *)self->_sourcePreview _sourceViewIsInViewHierarchy]^ 1;
    }

    [(_UIPlatterTransformView *)self setShouldTakeOwnershipOfSourceView:v6];
    [(UIView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    shouldTakeOwnershipOfSourceView = [(_UIPlatterTransformView *)self shouldTakeOwnershipOfSourceView];
    portalView = [(_UIPlatterTransformView *)self portalView];
    sourceView = portalView;
    if (shouldTakeOwnershipOfSourceView)
    {
      [(UIView *)portalView removeFromSuperview];

      sourceView = [(_UIPlatterTransformView *)self sourceView];
    }

    else
    {
      if (!portalView)
      {
        sourceView = [[_UIPortalView alloc] initWithFrame:v8, v10, v12, v14];
        [(_UIPortalView *)sourceView setAllowsBackdropGroups:1];
        [(_UIPortalView *)sourceView setHidesSourceView:[(_UIPlatterTransformView *)self hidesSourceView]];
        [(_UIPortalView *)sourceView setMatchesAlpha:[(_UIPlatterTransformView *)self matchesAlpha]];
        [(_UIPortalView *)sourceView setForwardsClientHitTestingToSourceView:[(_UIPlatterTransformView *)self forwardsHitTestingToSourceView]];
        sourceView2 = [(_UIPlatterTransformView *)self sourceView];
        -[UIView _setFlipsHorizontalAxis:](sourceView, "_setFlipsHorizontalAxis:", [sourceView2 _flipsHorizontalAxis]);

        [(_UIPortalView *)sourceView setName:@"_UIPlatterTransformView.content"];
        [(_UIPlatterTransformView *)self setPortalView:sourceView];
      }

      sourceView3 = [(_UIPlatterTransformView *)self sourceView];
      [(_UIPortalView *)sourceView setSourceView:sourceView3];
    }

    [(UIView *)self addSubview:sourceView];

    [(UIView *)self sizeToFit];
    if ([(UITargetedPreview *)previewCopy _captureHierarchyBelowSourceView]&& [(UITargetedPreview *)previewCopy _sourceViewIsInViewHierarchy])
    {
      backgroundCaptureView = [(_UIPlatterTransformView *)self backgroundCaptureView];

      if (!backgroundCaptureView)
      {
        v21 = objc_opt_new();
        [(_UIPlatterTransformView *)self setBackgroundCaptureView:v21];

        backgroundCaptureView2 = [(_UIPlatterTransformView *)self backgroundCaptureView];
        [backgroundCaptureView2 setAlpha:0.002];
      }

      backgroundPortalView = [(_UIPlatterTransformView *)self backgroundPortalView];

      if (!backgroundPortalView)
      {
        v24 = [_UIPortalView alloc];
        backgroundCaptureView3 = [(_UIPlatterTransformView *)self backgroundCaptureView];
        v26 = [(_UIPortalView *)v24 initWithSourceView:backgroundCaptureView3];
        [(_UIPlatterTransformView *)self setBackgroundPortalView:v26];

        backgroundPortalView2 = [(_UIPlatterTransformView *)self backgroundPortalView];
        [backgroundPortalView2 setName:@"_UIPlatterTransformView.backgroundCapture"];

        backgroundPortalView3 = [(_UIPlatterTransformView *)self backgroundPortalView];
        [backgroundPortalView3 setAllowsBackdropGroups:1];
      }

      target = [(UITargetedPreview *)previewCopy target];
      container = [target container];
      backgroundCaptureView4 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      view2 = [(UITargetedPreview *)previewCopy view];
      [container insertSubview:backgroundCaptureView4 belowSubview:view2];

      backgroundPortalView4 = [(_UIPlatterTransformView *)self backgroundPortalView];
      [(UIView *)self insertSubview:backgroundPortalView4 atIndex:0];

      view3 = [(UITargetedPreview *)previewCopy view];
      [view3 frame];
      v56 = CGRectInset(v55, -50.0, 0.0);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
      backgroundCaptureView5 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      [backgroundCaptureView5 setFrame:{x, y, width, height}];

      backgroundCaptureView6 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      [backgroundCaptureView6 bounds];
      v42 = v41;
      v44 = v43;
      [(UIView *)self bounds];
      v49 = round(v48 + v47 * 0.5 - v44 * 0.5);
      v50 = round(v46 + v45 * 0.5 - v42 * 0.5);
      backgroundPortalView5 = [(_UIPlatterTransformView *)self backgroundPortalView];
      [backgroundPortalView5 setFrame:{v50, v49, v42, v44}];
    }

    else
    {
      backgroundCaptureView7 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      [backgroundCaptureView7 removeFromSuperview];

      backgroundCaptureView6 = [(_UIPlatterTransformView *)self backgroundPortalView];
      [backgroundCaptureView6 removeFromSuperview];
    }
  }
}

- (void)didTearOffForDrag
{
  sourceView = [(_UIPlatterTransformView *)self sourceView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [sourceView setHidesSourceView:0];
  }

  [(_UIPlatterTransformView *)self setHidesSourceView:0];
  backgroundCaptureView = [(_UIPlatterTransformView *)self backgroundCaptureView];
  [backgroundCaptureView removeFromSuperview];
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = _UIPlatterTransformView;
  [(UIView *)&v48 layoutSubviews];
  if ([(_UIPlatterTransformView *)self shouldTakeOwnershipOfSourceView])
  {
    [(_UIPlatterTransformView *)self sourceView];
  }

  else
  {
    [(_UIPlatterTransformView *)self portalView];
  }
  v3 = ;
  sourcePreview = [(_UIPlatterTransformView *)self sourcePreview];
  parameters = [sourcePreview parameters];
  visiblePath = [parameters visiblePath];

  sourceView = [(_UIPlatterTransformView *)self sourceView];
  v8 = visiblePath;
  v9 = sourceView;
  v10 = v9;
  if (v8)
  {
    if (([v8 _isRoundedRect] & 1) == 0)
    {

LABEL_11:
      sourceView2 = [(_UIPlatterTransformView *)self sourceView];
      [sourceView2 bounds];
      v36 = v35;
      v47 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      [v8 bounds];
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      v32 = v36 + v40 * 0.5 - CGRectGetMinX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v33 = v38 + v42 * 0.5 - CGRectGetMinY(v51);
      [v3 setBounds:{v47, v38, v40, v42}];
      goto LABEL_12;
    }

    [v8 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 bounds];
    v52.origin.x = v19;
    v52.origin.y = v20;
    v52.size.width = v21;
    v52.size.height = v22;
    v49.origin.x = v12;
    v49.origin.y = v14;
    v49.size.width = v16;
    v49.size.height = v18;
    v23 = CGRectEqualToRect(v49, v52);

    if (!v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(UIView *)self bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v3 setBounds:?];
  v32 = v25 + v29 * 0.5;
  v33 = v27 + v31 * 0.5;
LABEL_12:
  [v3 setCenter:{v32, v33}];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = _UIPlatterTransformView;
  [(UIView *)&v6 didMoveToWindow];
  [(_UIPlatterTransformView *)self _updateMinificationFilter];
  window = [(UIView *)self window];

  if (!window)
  {
    backgroundCaptureView = [(_UIPlatterTransformView *)self backgroundCaptureView];
    [backgroundCaptureView removeFromSuperview];

    backgroundPortalView = [(_UIPlatterTransformView *)self backgroundPortalView];
    [backgroundPortalView removeFromSuperview];
  }
}

- (void)setHidesSourceView:(BOOL)view
{
  if (self->_hidesSourceView != view)
  {
    viewCopy = view;
    self->_hidesSourceView = view;
    portalView = [(_UIPlatterTransformView *)self portalView];
    [portalView setHidesSourceView:viewCopy];
  }
}

- (void)setForwardsHitTestingToSourceView:(BOOL)view
{
  if (self->_forwardsHitTestingToSourceView != view)
  {
    viewCopy = view;
    self->_forwardsHitTestingToSourceView = view;
    portalView = [(_UIPlatterTransformView *)self portalView];
    [portalView setForwardsClientHitTestingToSourceView:viewCopy];
  }
}

- (void)setMatchesAlpha:(BOOL)alpha
{
  if (self->_matchesAlpha != alpha)
  {
    alphaCopy = alpha;
    self->_matchesAlpha = alpha;
    portalView = [(_UIPlatterTransformView *)self portalView];
    [portalView setMatchesAlpha:alphaCopy];
  }
}

- (void)setAppliesMinificationFilter:(BOOL)filter
{
  if (self->_appliesMinificationFilter != filter)
  {
    self->_appliesMinificationFilter = filter;
    [(_UIPlatterTransformView *)self _updateMinificationFilter];
  }
}

- (void)_updateMinificationFilter
{
  window = [(UIView *)self window];

  if (window)
  {
    appliesMinificationFilter = [(_UIPlatterTransformView *)self appliesMinificationFilter];
    layer = [(UIView *)self layer];
    window2 = layer;
    if (appliesMinificationFilter)
    {
      [layer setShouldRasterize:1];

      window2 = [(UIView *)self window];
      screen = [window2 screen];
      [screen scale];
      v9 = v8;
      layer2 = [(UIView *)self layer];
      [layer2 setRasterizationScale:v9];

      v11 = MEMORY[0x1E6979820];
    }

    else
    {
      [layer setShouldRasterize:0];
      v11 = MEMORY[0x1E6979C48];
    }

    v12 = *v11;
    layer3 = [(UIView *)self layer];
    [layer3 setMinificationFilter:v12];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  sourceView = [(_UIPlatterTransformView *)self sourceView];

  if (sourceView)
  {
    sourcePreview = [(_UIPlatterTransformView *)self sourcePreview];
    parameters = [sourcePreview parameters];
    visiblePath = [parameters visiblePath];

    sourceView2 = [(_UIPlatterTransformView *)self sourceView];
    v11 = visiblePath;
    v12 = sourceView2;
    v13 = v12;
    if (v11)
    {
      if (([v11 _isRoundedRect] & 1) == 0)
      {

LABEL_10:
        [v11 bounds];
        v28 = v34;
        v30 = v35;
        goto LABEL_11;
      }

      [v11 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v13 bounds];
      v41.origin.x = v22;
      v41.origin.y = v23;
      v41.size.width = v24;
      v41.size.height = v25;
      v40.origin.x = v15;
      v40.origin.y = v17;
      v40.size.width = v19;
      v40.size.height = v21;
      v26 = CGRectEqualToRect(v40, v41);

      if (!v26)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    sourceView3 = [(_UIPlatterTransformView *)self sourceView];
    [sourceView3 bounds];
    v28 = v32;
    v30 = v33;

LABEL_11:
    goto LABEL_12;
  }

  v38.receiver = self;
  v38.super_class = _UIPlatterTransformView;
  [(UIView *)&v38 sizeThatFits:width, height];
  v28 = v27;
  v30 = v29;
LABEL_12:
  v36 = v28;
  v37 = v30;
  result.height = v37;
  result.width = v36;
  return result;
}

@end