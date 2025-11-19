@interface _UIPlatterTransformView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIView)sourceView;
- (_UIPlatterTransformView)initWithFrame:(CGRect)a3;
- (void)_updateMinificationFilter;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didTearOffForDrag;
- (void)layoutSubviews;
- (void)setAppliesMinificationFilter:(BOOL)a3;
- (void)setForwardsHitTestingToSourceView:(BOOL)a3;
- (void)setHidesSourceView:(BOOL)a3;
- (void)setMatchesAlpha:(BOOL)a3;
- (void)setSourcePreview:(id)a3;
@end

@implementation _UIPlatterTransformView

- (_UIPlatterTransformView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIPlatterTransformView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_UIPlatterTransformView *)self backgroundCaptureView];
  [v3 removeFromSuperview];

  v4.receiver = self;
  v4.super_class = _UIPlatterTransformView;
  [(UIView *)&v4 dealloc];
}

- (UIView)sourceView
{
  v2 = [(_UIPlatterTransformView *)self sourcePreview];
  v3 = [v2 view];

  return v3;
}

- (void)setSourcePreview:(id)a3
{
  v53 = a3;
  if (self->_sourcePreview != v53)
  {
    if ([(_UIPlatterTransformView *)self shouldTakeOwnershipOfSourceView])
    {
      v5 = [(UITargetedPreview *)self->_sourcePreview view];
      [v5 removeFromSuperview];
    }

    objc_storeStrong(&self->_sourcePreview, a3);
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
    v15 = [(_UIPlatterTransformView *)self shouldTakeOwnershipOfSourceView];
    v16 = [(_UIPlatterTransformView *)self portalView];
    v17 = v16;
    if (v15)
    {
      [(UIView *)v16 removeFromSuperview];

      v17 = [(_UIPlatterTransformView *)self sourceView];
    }

    else
    {
      if (!v16)
      {
        v17 = [[_UIPortalView alloc] initWithFrame:v8, v10, v12, v14];
        [(_UIPortalView *)v17 setAllowsBackdropGroups:1];
        [(_UIPortalView *)v17 setHidesSourceView:[(_UIPlatterTransformView *)self hidesSourceView]];
        [(_UIPortalView *)v17 setMatchesAlpha:[(_UIPlatterTransformView *)self matchesAlpha]];
        [(_UIPortalView *)v17 setForwardsClientHitTestingToSourceView:[(_UIPlatterTransformView *)self forwardsHitTestingToSourceView]];
        v18 = [(_UIPlatterTransformView *)self sourceView];
        -[UIView _setFlipsHorizontalAxis:](v17, "_setFlipsHorizontalAxis:", [v18 _flipsHorizontalAxis]);

        [(_UIPortalView *)v17 setName:@"_UIPlatterTransformView.content"];
        [(_UIPlatterTransformView *)self setPortalView:v17];
      }

      v19 = [(_UIPlatterTransformView *)self sourceView];
      [(_UIPortalView *)v17 setSourceView:v19];
    }

    [(UIView *)self addSubview:v17];

    [(UIView *)self sizeToFit];
    if ([(UITargetedPreview *)v53 _captureHierarchyBelowSourceView]&& [(UITargetedPreview *)v53 _sourceViewIsInViewHierarchy])
    {
      v20 = [(_UIPlatterTransformView *)self backgroundCaptureView];

      if (!v20)
      {
        v21 = objc_opt_new();
        [(_UIPlatterTransformView *)self setBackgroundCaptureView:v21];

        v22 = [(_UIPlatterTransformView *)self backgroundCaptureView];
        [v22 setAlpha:0.002];
      }

      v23 = [(_UIPlatterTransformView *)self backgroundPortalView];

      if (!v23)
      {
        v24 = [_UIPortalView alloc];
        v25 = [(_UIPlatterTransformView *)self backgroundCaptureView];
        v26 = [(_UIPortalView *)v24 initWithSourceView:v25];
        [(_UIPlatterTransformView *)self setBackgroundPortalView:v26];

        v27 = [(_UIPlatterTransformView *)self backgroundPortalView];
        [v27 setName:@"_UIPlatterTransformView.backgroundCapture"];

        v28 = [(_UIPlatterTransformView *)self backgroundPortalView];
        [v28 setAllowsBackdropGroups:1];
      }

      v29 = [(UITargetedPreview *)v53 target];
      v30 = [v29 container];
      v31 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      v32 = [(UITargetedPreview *)v53 view];
      [v30 insertSubview:v31 belowSubview:v32];

      v33 = [(_UIPlatterTransformView *)self backgroundPortalView];
      [(UIView *)self insertSubview:v33 atIndex:0];

      v34 = [(UITargetedPreview *)v53 view];
      [v34 frame];
      v56 = CGRectInset(v55, -50.0, 0.0);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
      v39 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      [v39 setFrame:{x, y, width, height}];

      v40 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      [v40 bounds];
      v42 = v41;
      v44 = v43;
      [(UIView *)self bounds];
      v49 = round(v48 + v47 * 0.5 - v44 * 0.5);
      v50 = round(v46 + v45 * 0.5 - v42 * 0.5);
      v51 = [(_UIPlatterTransformView *)self backgroundPortalView];
      [v51 setFrame:{v50, v49, v42, v44}];
    }

    else
    {
      v52 = [(_UIPlatterTransformView *)self backgroundCaptureView];
      [v52 removeFromSuperview];

      v40 = [(_UIPlatterTransformView *)self backgroundPortalView];
      [v40 removeFromSuperview];
    }
  }
}

- (void)didTearOffForDrag
{
  v4 = [(_UIPlatterTransformView *)self sourceView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setHidesSourceView:0];
  }

  [(_UIPlatterTransformView *)self setHidesSourceView:0];
  v3 = [(_UIPlatterTransformView *)self backgroundCaptureView];
  [v3 removeFromSuperview];
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
  v4 = [(_UIPlatterTransformView *)self sourcePreview];
  v5 = [v4 parameters];
  v6 = [v5 visiblePath];

  v7 = [(_UIPlatterTransformView *)self sourceView];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8)
  {
    if (([v8 _isRoundedRect] & 1) == 0)
    {

LABEL_11:
      v34 = [(_UIPlatterTransformView *)self sourceView];
      [v34 bounds];
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
  v3 = [(UIView *)self window];

  if (!v3)
  {
    v4 = [(_UIPlatterTransformView *)self backgroundCaptureView];
    [v4 removeFromSuperview];

    v5 = [(_UIPlatterTransformView *)self backgroundPortalView];
    [v5 removeFromSuperview];
  }
}

- (void)setHidesSourceView:(BOOL)a3
{
  if (self->_hidesSourceView != a3)
  {
    v4 = a3;
    self->_hidesSourceView = a3;
    v5 = [(_UIPlatterTransformView *)self portalView];
    [v5 setHidesSourceView:v4];
  }
}

- (void)setForwardsHitTestingToSourceView:(BOOL)a3
{
  if (self->_forwardsHitTestingToSourceView != a3)
  {
    v4 = a3;
    self->_forwardsHitTestingToSourceView = a3;
    v5 = [(_UIPlatterTransformView *)self portalView];
    [v5 setForwardsClientHitTestingToSourceView:v4];
  }
}

- (void)setMatchesAlpha:(BOOL)a3
{
  if (self->_matchesAlpha != a3)
  {
    v4 = a3;
    self->_matchesAlpha = a3;
    v5 = [(_UIPlatterTransformView *)self portalView];
    [v5 setMatchesAlpha:v4];
  }
}

- (void)setAppliesMinificationFilter:(BOOL)a3
{
  if (self->_appliesMinificationFilter != a3)
  {
    self->_appliesMinificationFilter = a3;
    [(_UIPlatterTransformView *)self _updateMinificationFilter];
  }
}

- (void)_updateMinificationFilter
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(_UIPlatterTransformView *)self appliesMinificationFilter];
    v5 = [(UIView *)self layer];
    v6 = v5;
    if (v4)
    {
      [v5 setShouldRasterize:1];

      v6 = [(UIView *)self window];
      v7 = [v6 screen];
      [v7 scale];
      v9 = v8;
      v10 = [(UIView *)self layer];
      [v10 setRasterizationScale:v9];

      v11 = MEMORY[0x1E6979820];
    }

    else
    {
      [v5 setShouldRasterize:0];
      v11 = MEMORY[0x1E6979C48];
    }

    v12 = *v11;
    v13 = [(UIView *)self layer];
    [v13 setMinificationFilter:v12];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIPlatterTransformView *)self sourceView];

  if (v6)
  {
    v7 = [(_UIPlatterTransformView *)self sourcePreview];
    v8 = [v7 parameters];
    v9 = [v8 visiblePath];

    v10 = [(_UIPlatterTransformView *)self sourceView];
    v11 = v9;
    v12 = v10;
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

    v31 = [(_UIPlatterTransformView *)self sourceView];
    [v31 bounds];
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