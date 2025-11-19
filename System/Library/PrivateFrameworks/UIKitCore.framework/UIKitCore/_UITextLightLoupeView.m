@interface _UITextLightLoupeView
- (CGPoint)constrainedModelPositionForPosition:(CGPoint)a3;
- (CGPoint)modelPosition;
- (CGSize)preferredSize;
- (UICoordinateSpace)containerCoordinateSpace;
- (_UITextLightLoupeView)initWithSourceView:(id)a3;
- (id)_backgroundColorIfNecessary;
- (void)_displayLinkFired:(id)a3;
- (void)_stopDisplayLink;
- (void)_updateColorsForCurrentTraitCollection;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setModelPosition:(CGPoint)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation _UITextLightLoupeView

- (_UITextLightLoupeView)initWithSourceView:(id)a3
{
  v78[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = _UITextLightLoupeView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)&v77 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_sourceView, v4);
    +[UIColor blackColor];
    v11 = v65 = v4;
    v12 = [v11 CGColor];
    v13 = [(UIView *)v10 layer];
    [v13 setShadowColor:v12];

    v14 = [(UIView *)v10 layer];
    [v14 setShadowOffset:{0.0, 2.0}];

    v15 = [(UIView *)v10 layer];
    [v15 setShadowRadius:22.0];

    v16 = [(UIView *)v10 layer];
    LODWORD(v17) = 1036831949;
    [v16 setShadowOpacity:v17];

    v18 = [UIView alloc];
    [(UIView *)v10 bounds];
    v19 = [(UIView *)v18 initWithFrame:?];
    maskView = v10->_maskView;
    v10->_maskView = v19;

    v21 = *MEMORY[0x1E69796E8];
    v22 = [(UIView *)v10->_maskView layer];
    [v22 setCornerCurve:v21];

    v23 = [(UIView *)v10->_maskView layer];
    [v23 setMasksToBounds:1];

    v24 = [(UIView *)v10->_maskView layer];
    [v24 setCornerRadius:22.0];

    v25 = [(UIView *)v10->_maskView layer];
    [v25 setBorderWidth:0.66];

    [(UIView *)v10 addSubview:v10->_maskView];
    v26 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    portalContainerView = v10->_portalContainerView;
    v10->_portalContainerView = v26;

    [(UIView *)v10->_portalContainerView setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(UIView *)v10->_maskView addSubview:v10->_portalContainerView];
    v28 = [v4 window];
    v29 = [UIView alloc];
    [v28 frame];
    v30 = [(UIView *)v29 initWithFrame:?];
    backgroundView = v10->_backgroundView;
    v10->_backgroundView = v30;

    v32 = [(_UITextLightLoupeView *)v10 _backgroundColorIfNecessary];
    [(UIView *)v10->_backgroundView setBackgroundColor:v32];

    [(UIView *)v10->_portalContainerView addSubview:v10->_backgroundView];
    v66[0] = 0;
    v66[1] = 0;
    v67 = 1065353216;
    v69 = 0;
    v68 = 0;
    v70 = 1065353216;
    v71 = 0;
    v72 = 0;
    v73 = 1065353216;
    v74 = 0;
    v75 = 0;
    v76 = 0x3E6B851FBE6B851FLL;
    v33 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v66];
    v34 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    v64 = v33;
    [v34 setValue:v33 forKey:*MEMORY[0x1E6979AC0]];
    v35 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v35 setValue:&unk_1EFE2EB28 forKey:*MEMORY[0x1E6979BA8]];
    v36 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    glowView = v10->_glowView;
    v10->_glowView = v36;

    v38 = +[UIColor blackColor];
    [(UIView *)v10->_glowView setBackgroundColor:v38];

    v39 = *MEMORY[0x1E6979C38];
    v40 = [(UIView *)v10->_glowView layer];
    [v40 setCompositingFilter:v39];

    v78[0] = v35;
    v78[1] = v34;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v42 = [(UIView *)v10->_glowView layer];
    [v42 setFilters:v41];

    v43 = [(UIView *)v10->_glowView layer];
    [v43 setMasksToBounds:1];

    v44 = [(UIView *)v10->_glowView layer];
    [v44 setCornerCurve:v21];

    v45 = [(UIView *)v10->_glowView layer];
    [v45 setCornerRadius:22.0];

    v46 = [objc_opt_self() mainScreen];
    [v46 scale];
    v48 = v47;
    v49 = [(UIView *)v10->_glowView layer];
    [v49 setRasterizationScale:v48];

    v50 = [(UIView *)v10->_glowView layer];
    [v50 setShouldRasterize:1];

    [(UIView *)v10->_maskView addSubview:v10->_glowView];
    v51 = [v65 window];
    v52 = [v51 screen];

    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = MEMORY[0x1E6979330];
    }

    v54 = [v53 displayLinkWithTarget:v10 selector:sel__displayLinkFired_];
    displayLink = v10->_displayLink;
    v10->_displayLink = v54;

    [(CADisplayLink *)v10->_displayLink setPreferredFramesPerSecond:60];
    v56 = v10->_displayLink;
    v57 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v56 addToRunLoop:v57 forMode:*MEMORY[0x1E695D918]];

    v58 = [[_UIPortalView alloc] initWithSourceView:v28];
    portalView = v10->_portalView;
    v10->_portalView = v58;

    [(_UIPortalView *)v10->_portalView setMatchesAlpha:1];
    [(_UIPortalView *)v10->_portalView setMatchesTransform:1];
    [v28 anchorPoint];
    [(UIView *)v10->_portalView setAnchorPoint:?];
    v60 = [v28 layer];
    [v60 frame];
    [(_UIPortalView *)v10->_portalView setFrame:?];

    [(UIView *)v10->_portalContainerView addSubview:v10->_portalView];
    [(_UITextLightLoupeView *)v10 _updateColorsForCurrentTraitCollection];
    v61 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v62 = [(UIView *)v10 registerForTraitChanges:v61 withAction:sel__updateColorsForCurrentTraitCollection];

    v4 = v65;
  }

  return v10;
}

- (void)_updateColorsForCurrentTraitCollection
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = 0.2;
    v6 = 1.0;
  }

  else
  {
    v5 = 0.1;
    v6 = 0.0;
  }

  v10 = [UIColor colorWithWhite:v6 alpha:v5];
  v7 = v10;
  v8 = [v10 CGColor];
  v9 = [(UIView *)self->_maskView layer];
  [v9 setBorderColor:v8];
}

- (void)_stopDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)removeFromSuperview
{
  [(_UITextLightLoupeView *)self _stopDisplayLink];
  v3.receiver = self;
  v3.super_class = _UITextLightLoupeView;
  [(UIView *)&v3 removeFromSuperview];
}

- (CGSize)preferredSize
{
  v2 = 78.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UICoordinateSpace)containerCoordinateSpace
{
  v2 = [(UIView *)self window];
  v3 = [v2 coordinateSpace];

  return v3;
}

- (id)_backgroundColorIfNecessary
{
  v42 = *MEMORY[0x1E69E9840];
  if (![UIApp _isSpringBoard] || ((v3 = objc_loadWeakRetained(&self->_sourceView), objc_msgSend(v3, "window"), v4 = objc_claimAutoreleasedReturnValue(), v3, objc_msgSend(v4, "screen"), v5 = objc_claimAutoreleasedReturnValue(), +[UIWindow allWindowsIncludingInternalWindows:onlyVisibleWindows:forScreen:](UIWindow, "allWindowsIncludingInternalWindows:onlyVisibleWindows:forScreen:", 1, 1, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v7 = NSClassFromString(&cfstr_Sbhomescreenwi.isa), v8 = NSClassFromString(&cfstr_Sbisolationtan.isa), *&buf = 0, *(&buf + 1) = &buf, v40 = 0x2020000000, v41 = 0x7FFFFFFFFFFFFFFFLL, v35 = 0, v36 = &v35, v37 = 0x2020000000, v38 = 0x7FFFFFFFFFFFFFFFLL, v29[0] = MEMORY[0x1E69E9820], v29[1] = 3221225472, v29[2] = __52___UITextLightLoupeView__backgroundColorIfNecessary__block_invoke, v29[3] = &unk_1E711FC20, p_buf = &buf, v9 = v4, v30 = v9, v32 = &v35, v33 = v8, v34 = v7, objc_msgSend(v6, "enumerateObjectsUsingBlock:", v29), *(*(&buf + 1) + 24) != 0x7FFFFFFFFFFFFFFFLL) && v36[3] != 0x7FFFFFFFFFFFFFFFLL ? (+[UIColor blackColor](UIColor, "blackColor"), v4 = objc_claimAutoreleasedReturnValue(), v10 = 0) : (v10 = 1), v30, _Block_object_dispose(&v35, 8), _Block_object_dispose(&buf, 8), v6, v9, v10))
  {
    v11 = [(UIView *)self _window];
    if ([v11 _isHostedInAnotherProcess])
    {
LABEL_8:
      v12 = +[UIColor darkGrayColor];
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    v15 = [WeakRetained window];
    v16 = [v15 windowScene];
    v17 = [v16 _backgroundStyle];

    if (v17 <= 6)
    {
      if (((1 << v17) & 0xC) != 0)
      {
        v12 = +[UIColor lightGrayColor];
        goto LABEL_9;
      }

      if (((1 << v17) & 0x30) != 0)
      {
        goto LABEL_8;
      }

      if (((1 << v17) & 0x42) != 0)
      {
        v12 = +[UIColor grayColor];
        goto LABEL_9;
      }
    }

    if (v17)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v24 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          v25 = objc_loadWeakRetained(&self->_sourceView);
          v26 = [v25 window];
          v27 = [v26 windowScene];
          v28 = [v27 _backgroundStyle];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v28;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Modern Loupe: Unexpected background style: %ld", &buf, 0xCu);
        }
      }

      else
      {
        v18 = *(__UILogGetCategoryCachedImpl("Assert", &_backgroundColorIfNecessary___s_category) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          v20 = objc_loadWeakRetained(&self->_sourceView);
          v21 = [v20 window];
          v22 = [v21 windowScene];
          v23 = [v22 _backgroundStyle];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Modern Loupe: Unexpected background style: %ld", &buf, 0xCu);
        }
      }

      v4 = 0;
      goto LABEL_10;
    }

    v12 = +[UIColor systemBackgroundColor];
LABEL_9:
    v4 = v12;
LABEL_10:
  }

  return v4;
}

- (void)setModelPosition:(CGPoint)a3
{
  if (self->_modelPosition.x != a3.x || self->_modelPosition.y != a3.y)
  {
    self->_modelPosition = a3;
    if (self->_visible)
    {
      [(CADisplayLink *)self->_displayLink setPaused:0];
    }
  }
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___UITextLightLoupeView_setVisible_animated_completion___block_invoke;
  aBlock[3] = &unk_1E711FC48;
  aBlock[4] = self;
  v20 = v5;
  v9 = v8;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (self->_visible == v6)
  {
    (*(v10 + 2))(v10, 1, 0);
  }

  else
  {
    self->_visible = v6;
    v12 = *MEMORY[0x1E695EFF8];
    if (v6)
    {
      [(CADisplayLink *)self->_displayLink setPaused:0];
      v13 = 1.0;
      v14 = 0xC049000000000000;
    }

    else
    {
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      v13 = 0.0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56___UITextLightLoupeView_setVisible_animated_completion___block_invoke_2;
    v17[3] = &unk_1E70F38C0;
    v17[4] = self;
    *&v17[5] = v13;
    v17[6] = v12;
    v17[7] = v14;
    v15 = _Block_copy(v17);
    v16 = v15;
    if (v5)
    {
      [UIView _animateUsingSpringWithTension:0 friction:v15 interactive:v11 animations:400.0 completion:35.0];
    }

    else
    {
      (*(v15 + 2))(v15);
      v11[2](v11, 1, 0);
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UITextLightLoupeView;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_maskView setFrame:?];
  [(UIView *)self->_maskView bounds];
  [(UIView *)self->_glowView setFrame:?];
  [(UIView *)self->_maskView bounds];
  [(UIView *)self->_portalContainerView setFrame:?];
}

- (CGPoint)constrainedModelPositionForPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_UITextLightLoupeView *)self _visualOffset];
  v7 = y + v6;
  v8 = [(_UITextLightLoupeView *)self containerCoordinateSpace];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)self bounds];
  v19 = LoupeConstrainPointHorizontally(x, v7, v10, v12, v14, v16, v17, v18, 8.0);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)_displayLinkFired:(id)a3
{
  p_modelPosition = &self->_modelPosition;
  [(_UITextLightLoupeView *)self constrainedModelPositionForPosition:a3, self->_modelPosition.x, self->_modelPosition.y];
  v6 = v5;
  v8 = v7;
  [(UIView *)self center];
  if (sqrt((p_modelPosition->x - v9) * (p_modelPosition->x - v9) + (p_modelPosition->y - v10) * (p_modelPosition->y - v10)) < 0.00000011920929)
  {
    [(CADisplayLink *)self->_displayLink setPaused:1];
  }

  [(UIView *)self center];
  v12 = v6 * 0.3 + v11 * 0.7;
  v14 = v8 * 0.3 + v13 * 0.7;
  if (self->_visible)
  {
    [(UIView *)self bounds];
    v19 = v14 - (v18 + v17 * 0.5);
    v20 = -(v12 - (v16 + v15 * 0.5));
    [(_UITextLightLoupeView *)self _visualOffset];
    CATransform3DMakeTranslation(&v24, v20, v21 - v19, 0.0);
    v22 = [(UIView *)self->_portalContainerView layer];
    v23 = v24;
    [v22 setSublayerTransform:&v23];
  }

  [(UIView *)self setCenter:v12, v14];
}

- (CGPoint)modelPosition
{
  x = self->_modelPosition.x;
  y = self->_modelPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end