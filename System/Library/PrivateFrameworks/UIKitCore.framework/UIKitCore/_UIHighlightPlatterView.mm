@interface _UIHighlightPlatterView
- (_UIHighlightPlatterView)initWithTargetedPreview:(id)preview;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setShadowAlpha:(double)alpha;
@end

@implementation _UIHighlightPlatterView

- (_UIHighlightPlatterView)initWithTargetedPreview:(id)preview
{
  previewCopy = preview;
  view = [previewCopy view];
  parameters = [previewCopy parameters];
  visiblePath = [parameters visiblePath];

  [visiblePath bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [view bounds];
  if (visiblePath)
  {
    v19 = v15;
    v18 = v13;
    v17 = 0.0;
    v16 = 0.0;
  }

  v52.receiver = self;
  v52.super_class = _UIHighlightPlatterView;
  v20 = [(UIView *)&v52 initWithFrame:v16, v17, v18, v19, 0.0];
  v21 = v20;
  if (v20)
  {
    [(UIView *)v20 setUserInteractionEnabled:0];
    [(_UIHighlightPlatterView *)v21 setTargetedPreview:previewCopy];
    if ([previewCopy _sourceViewIsInViewHierarchy])
    {
      v22 = [_UIPortalView alloc];
      [view bounds];
      v23 = [(_UIPortalView *)v22 initWithFrame:?];
      [(_UIPortalView *)v23 setName:@"_UIHighlightPlatterView.contentPortal"];
      view2 = [previewCopy view];
      [(_UIPortalView *)v23 setSourceView:view2];

      [(_UIPortalView *)v23 setHidesSourceView:1];
      [(_UIPortalView *)v23 setMatchesAlpha:1];
      [(UIView *)v23 setUserInteractionEnabled:0];
      [(_UIPortalView *)v23 setAllowsBackdropGroups:1];
      [(UIView *)v21 addSubview:v23];
      [(_UIHighlightPlatterView *)v21 setPortalView:v23];

      portalView = [(_UIHighlightPlatterView *)v21 portalView];
    }

    else
    {
      [(UIView *)v21 addSubview:view];
      portalView = view;
    }

    v26 = portalView;
    v53.origin.x = v9;
    v53.origin.y = v11;
    v53.size.width = v13;
    v53.size.height = v15;
    v27 = -CGRectGetMinX(v53);
    v54.origin.x = v9;
    v54.origin.y = v11;
    v54.size.width = v13;
    v54.size.height = v15;
    v28 = -CGRectGetMinY(v54);
    if ([previewCopy _previewMode] != 4)
    {
      [v26 bounds];
      v56 = CGRectOffset(v55, v27, v28);
      [v26 setFrame:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
      if ([previewCopy _previewMode] != 5)
      {
        if (visiblePath)
        {
          v29 = [_UIShapeView alloc];
          [v26 bounds];
          v30 = [(UIView *)v29 initWithFrame:?];
          cGPath = [visiblePath CGPath];
          shapeLayer = [(_UIShapeView *)v30 shapeLayer];
          [shapeLayer setPath:cGPath];

          [(UIView *)v26 _setSafeMaskView:v30];
        }

        else
        {
          visiblePath = [(UIView *)view _outlinePath];
        }
      }
    }

    parameters2 = [previewCopy parameters];
    appliesShadow = [parameters2 appliesShadow];

    if (appliesShadow)
    {
      parameters3 = [previewCopy parameters];
      backgroundColor = [parameters3 backgroundColor];

      v37 = [UIView alloc];
      v50 = backgroundColor;
      if (visiblePath)
      {
        [(UIView *)v21 bounds];
        v38 = [(UIView *)v37 initWithFrame:?];
        [(UIView *)v38 setBackgroundColor:backgroundColor];
        [(UIView *)v38 setAlpha:0.0];
        v39 = [_UIShapeView alloc];
        [(UIView *)v38 bounds];
        v40 = [(UIView *)v39 initWithFrame:?];
        v41 = [visiblePath copy];
        CGAffineTransformMakeTranslation(&v51, v27, v28);
        [v41 applyTransform:&v51];
        cGPath2 = [v41 CGPath];
        shapeLayer2 = [(_UIShapeView *)v40 shapeLayer];
        [shapeLayer2 setPath:cGPath2];

        [(UIView *)v38 setMaskView:v40];
      }

      else
      {
        [v26 frame];
        v38 = [(UIView *)v37 initWithFrame:?];
        [(UIView *)v38 setBackgroundColor:backgroundColor];
      }

      [(_UIHighlightPlatterView *)v21 setBackgroundView:v38];

      parameters4 = [previewCopy parameters];
      effectiveShadowPath = [parameters4 effectiveShadowPath];

      if (!effectiveShadowPath)
      {
        effectiveShadowPath = [(UIView *)view _outlinePath];
      }

      v46 = [_UIPlatterSoftShadowView alloc];
      [v26 frame];
      v47 = [(_UIPlatterSoftShadowView *)v46 initWithFrame:effectiveShadowPath shadowPath:?];
      [(UIView *)v47 setAlpha:0.0];
      if ([v50 _isOpaque])
      {
        backgroundColor2 = [view backgroundColor];
        -[_UIPlatterSoftShadowView setNeedsPunchOut:](v47, "setNeedsPunchOut:", [backgroundColor2 _isOpaque] ^ 1);
      }

      else
      {
        [(_UIPlatterSoftShadowView *)v47 setNeedsPunchOut:1];
      }

      [(_UIHighlightPlatterView *)v21 setShadowView:v47];
    }
  }

  return v21;
}

- (void)setShadowAlpha:(double)alpha
{
  if (self->_shadowAlpha != alpha)
  {
    self->_shadowAlpha = alpha;
    shadowView = [(_UIHighlightPlatterView *)self shadowView];
    superview = [shadowView superview];

    if (!superview)
    {
      shadowView2 = [(_UIHighlightPlatterView *)self shadowView];
      [(UIView *)self insertSubview:shadowView2 atIndex:0];
    }

    shadowAlpha = self->_shadowAlpha;
    shadowView3 = [(_UIHighlightPlatterView *)self shadowView];
    [shadowView3 setAlpha:shadowAlpha];
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    backgroundView = [(_UIHighlightPlatterView *)self backgroundView];
    superview = [backgroundView superview];

    if (!superview)
    {
      shadowView = [(_UIHighlightPlatterView *)self shadowView];
      superview2 = [shadowView superview];

      backgroundView2 = [(_UIHighlightPlatterView *)self backgroundView];
      if (superview2)
      {
        shadowView2 = [(_UIHighlightPlatterView *)self shadowView];
        [(UIView *)self insertSubview:backgroundView2 aboveSubview:shadowView2];
      }

      else
      {
        [(UIView *)self insertSubview:backgroundView2 atIndex:0];
      }
    }

    backgroundAlpha = self->_backgroundAlpha;
    backgroundView3 = [(_UIHighlightPlatterView *)self backgroundView];
    [backgroundView3 setAlpha:backgroundAlpha];
  }
}

@end