@interface _UIHighlightPlatterView
- (_UIHighlightPlatterView)initWithTargetedPreview:(id)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setShadowAlpha:(double)a3;
@end

@implementation _UIHighlightPlatterView

- (_UIHighlightPlatterView)initWithTargetedPreview:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [v4 parameters];
  v7 = [v6 visiblePath];

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 bounds];
  if (v7)
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
    [(_UIHighlightPlatterView *)v21 setTargetedPreview:v4];
    if ([v4 _sourceViewIsInViewHierarchy])
    {
      v22 = [_UIPortalView alloc];
      [v5 bounds];
      v23 = [(_UIPortalView *)v22 initWithFrame:?];
      [(_UIPortalView *)v23 setName:@"_UIHighlightPlatterView.contentPortal"];
      v24 = [v4 view];
      [(_UIPortalView *)v23 setSourceView:v24];

      [(_UIPortalView *)v23 setHidesSourceView:1];
      [(_UIPortalView *)v23 setMatchesAlpha:1];
      [(UIView *)v23 setUserInteractionEnabled:0];
      [(_UIPortalView *)v23 setAllowsBackdropGroups:1];
      [(UIView *)v21 addSubview:v23];
      [(_UIHighlightPlatterView *)v21 setPortalView:v23];

      v25 = [(_UIHighlightPlatterView *)v21 portalView];
    }

    else
    {
      [(UIView *)v21 addSubview:v5];
      v25 = v5;
    }

    v26 = v25;
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
    if ([v4 _previewMode] != 4)
    {
      [v26 bounds];
      v56 = CGRectOffset(v55, v27, v28);
      [v26 setFrame:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
      if ([v4 _previewMode] != 5)
      {
        if (v7)
        {
          v29 = [_UIShapeView alloc];
          [v26 bounds];
          v30 = [(UIView *)v29 initWithFrame:?];
          v31 = [v7 CGPath];
          v32 = [(_UIShapeView *)v30 shapeLayer];
          [v32 setPath:v31];

          [(UIView *)v26 _setSafeMaskView:v30];
        }

        else
        {
          v7 = [(UIView *)v5 _outlinePath];
        }
      }
    }

    v33 = [v4 parameters];
    v34 = [v33 appliesShadow];

    if (v34)
    {
      v35 = [v4 parameters];
      v36 = [v35 backgroundColor];

      v37 = [UIView alloc];
      v50 = v36;
      if (v7)
      {
        [(UIView *)v21 bounds];
        v38 = [(UIView *)v37 initWithFrame:?];
        [(UIView *)v38 setBackgroundColor:v36];
        [(UIView *)v38 setAlpha:0.0];
        v39 = [_UIShapeView alloc];
        [(UIView *)v38 bounds];
        v40 = [(UIView *)v39 initWithFrame:?];
        v41 = [v7 copy];
        CGAffineTransformMakeTranslation(&v51, v27, v28);
        [v41 applyTransform:&v51];
        v42 = [v41 CGPath];
        v43 = [(_UIShapeView *)v40 shapeLayer];
        [v43 setPath:v42];

        [(UIView *)v38 setMaskView:v40];
      }

      else
      {
        [v26 frame];
        v38 = [(UIView *)v37 initWithFrame:?];
        [(UIView *)v38 setBackgroundColor:v36];
      }

      [(_UIHighlightPlatterView *)v21 setBackgroundView:v38];

      v44 = [v4 parameters];
      v45 = [v44 effectiveShadowPath];

      if (!v45)
      {
        v45 = [(UIView *)v5 _outlinePath];
      }

      v46 = [_UIPlatterSoftShadowView alloc];
      [v26 frame];
      v47 = [(_UIPlatterSoftShadowView *)v46 initWithFrame:v45 shadowPath:?];
      [(UIView *)v47 setAlpha:0.0];
      if ([v50 _isOpaque])
      {
        v48 = [v5 backgroundColor];
        -[_UIPlatterSoftShadowView setNeedsPunchOut:](v47, "setNeedsPunchOut:", [v48 _isOpaque] ^ 1);
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

- (void)setShadowAlpha:(double)a3
{
  if (self->_shadowAlpha != a3)
  {
    self->_shadowAlpha = a3;
    v4 = [(_UIHighlightPlatterView *)self shadowView];
    v5 = [v4 superview];

    if (!v5)
    {
      v6 = [(_UIHighlightPlatterView *)self shadowView];
      [(UIView *)self insertSubview:v6 atIndex:0];
    }

    shadowAlpha = self->_shadowAlpha;
    v8 = [(_UIHighlightPlatterView *)self shadowView];
    [v8 setAlpha:shadowAlpha];
  }
}

- (void)setBackgroundAlpha:(double)a3
{
  if (self->_backgroundAlpha != a3)
  {
    self->_backgroundAlpha = a3;
    v4 = [(_UIHighlightPlatterView *)self backgroundView];
    v5 = [v4 superview];

    if (!v5)
    {
      v6 = [(_UIHighlightPlatterView *)self shadowView];
      v7 = [v6 superview];

      v8 = [(_UIHighlightPlatterView *)self backgroundView];
      if (v7)
      {
        v9 = [(_UIHighlightPlatterView *)self shadowView];
        [(UIView *)self insertSubview:v8 aboveSubview:v9];
      }

      else
      {
        [(UIView *)self insertSubview:v8 atIndex:0];
      }
    }

    backgroundAlpha = self->_backgroundAlpha;
    v11 = [(_UIHighlightPlatterView *)self backgroundView];
    [v11 setAlpha:backgroundAlpha];
  }
}

@end