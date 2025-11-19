@interface _UITextMagnifiedLoupeView
+ (double)loupeZoomOutScale;
+ (double)loupeZoomScale;
- ($2BD9DB369DDD0E9E489A8699A184AD3B)_defaultOriginShadow;
- ($59ECE587B56CBF78EA342F243490147C)_defaultOriginShape;
- (CGPoint)constrainedModelPositionForPosition:(CGPoint)a3;
- (CGPoint)modelPosition;
- (CGSize)preferredSize;
- (UICoordinateSpace)containerCoordinateSpace;
- (_UITextMagnifiedLoupeView)initWithSourceView:(id)a3;
- (_UITextSelectionWidgetAnimating)animatableSelectionWidget;
- (id)_animatableSelectionWidget;
- (id)_configuredGroupCompletion:(id)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_stopDisplayLink;
- (void)_updateCloseLoupeAnimation:(id)a3;
- (void)_updateOpenLoupeAnimation:(id)a3;
- (void)_updatePortalViewTransformForPosition:(CGPoint)a3 zoomScale:(double)a4;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAnimatableSelectionWidget:(id)a3;
- (void)setModelPosition:(CGPoint)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation _UITextMagnifiedLoupeView

- (_UITextMagnifiedLoupeView)initWithSourceView:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = _UITextMagnifiedLoupeView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)&v49 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(UIView *)v9 setUserInteractionEnabled:0];
    v10->_orientation = 1;
    v11 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    containerView = v10->_containerView;
    v10->_containerView = v11;

    v13 = +[UIColor whiteColor];
    [(UIView *)v10->_containerView setBackgroundColor:v13];

    [(UIView *)v10->_containerView setClipsToBounds:1];
    v14 = [(UIView *)v10->_containerView layer];
    [v14 setAllowsEdgeAntialiasing:1];

    v15 = *MEMORY[0x1E69796E8];
    v16 = [(UIView *)v10->_containerView layer];
    [v16 setCornerCurve:v15];

    [(UIView *)v10 addSubview:v10->_containerView];
    v17 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    portalContainerView = v10->_portalContainerView;
    v10->_portalContainerView = v17;

    [(UIView *)v10->_containerView addSubview:v10->_portalContainerView];
    v19 = [v4 window];
    v20 = [[_UIPortalView alloc] initWithSourceView:v19];
    portalView = v10->_portalView;
    v10->_portalView = v20;

    [(_UIPortalView *)v10->_portalView setMatchesAlpha:1];
    [(_UIPortalView *)v10->_portalView setMatchesTransform:1];
    [v19 anchorPoint];
    [(UIView *)v10->_portalView setAnchorPoint:?];
    v22 = [v19 layer];
    [v22 frame];
    [(_UIPortalView *)v10->_portalView setFrame:?];

    [(UIView *)v10->_portalContainerView addSubview:v10->_portalView];
    v23 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    glowView = v10->_glowView;
    v10->_glowView = v23;

    v25 = +[UIColor blackColor];
    v26 = [v25 CGColor];
    v27 = [(UIView *)v10->_glowView layer];
    [v27 setShadowColor:v26];

    v28 = [(UIView *)v10->_glowView layer];
    LODWORD(v29) = 1041865114;
    [v28 setShadowOpacity:v29];

    v30 = *MEMORY[0x1E695F060];
    v31 = *(MEMORY[0x1E695F060] + 8);
    v32 = [(UIView *)v10->_glowView layer];
    [v32 setShadowOffset:{v30, v31}];

    v33 = [(UIView *)v10->_glowView layer];
    [v33 setShadowRadius:8.0];

    v34 = [(UIView *)v10->_glowView layer];
    [v34 setCornerCurve:v15];

    [v4 contentScaleFactor];
    v36 = v35;
    v37 = [(UIView *)v10->_glowView layer];
    [v37 setRasterizationScale:v36];

    v38 = [(UIView *)v10->_glowView layer];
    [v38 setShouldRasterize:1];

    [(UIView *)v10->_containerView addSubview:v10->_glowView];
    v39 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    coverView = v10->_coverView;
    v10->_coverView = v39;

    [(UIView *)v10->_containerView addSubview:v10->_coverView];
    v41 = [v4 window];
    v42 = [v41 screen];

    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = MEMORY[0x1E6979330];
    }

    v44 = [v43 displayLinkWithTarget:v10 selector:sel__displayLinkFired_];
    displayLink = v10->_displayLink;
    v10->_displayLink = v44;

    [(CADisplayLink *)v10->_displayLink setPreferredFramesPerSecond:60];
    v46 = v10->_displayLink;
    v47 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v46 addToRunLoop:v47 forMode:*MEMORY[0x1E695D918]];
  }

  return v10;
}

- (CGSize)preferredSize
{
  v2 = 85.0;
  if (self->_orientation == 1)
  {
    v3 = 115.0;
  }

  else
  {
    v3 = 85.0;
  }

  if (self->_orientation != 1)
  {
    v2 = 115.0;
  }

  result.height = v2;
  result.width = v3;
  return result;
}

- (UICoordinateSpace)containerCoordinateSpace
{
  v2 = [(UIView *)self window];
  v3 = [v2 coordinateSpace];

  return v3;
}

- (CGPoint)constrainedModelPositionForPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UITextMagnifiedLoupeView *)self containerCoordinateSpace];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIView *)self bounds];
  v17 = LoupeConstrainPointHorizontally(x, y, v8, v10, v12, v14, v15, v16, 8.0);
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)setModelPosition:(CGPoint)a3
{
  if (self->_modelPosition.x != a3.x || self->_modelPosition.y != a3.y)
  {
    self->_modelPosition = a3;
    [(CADisplayLink *)self->_displayLink setPaused:0];
  }

  if (self->_closeLoupeAnimationRunning)
  {
    if (!self->_transitionGroupCompletion && setModelPosition__once_0 != -1)
    {
      dispatch_once(&setModelPosition__once_0, &__block_literal_global_463);
    }

    [(_UITextMagnifiedLoupeView *)self _updateCloseLoupeAnimation:0];
  }
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (self->_visible == v6)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v10 = v8;
    (*(v8 + 2))(v8, 0);
    goto LABEL_13;
  }

  v10 = v8;
  self->_visible = v6;
  [(UIView *)self bounds];
  if (v6)
  {
    v9 = [(_UITextMagnifiedLoupeView *)self containerView];
    [v9 setHidden:0];

    if (v5)
    {
      [(_UITextMagnifiedLoupeView *)self _updateOpenLoupeAnimation:v10];
      goto LABEL_13;
    }

    self->_animationState = 1;
  }

  else
  {
    if (v5)
    {
      [(_UITextMagnifiedLoupeView *)self constrainedModelPositionForPosition:self->_modelPosition.x, self->_modelPosition.y];
      [(UIView *)self setCenter:?];
      [(_UITextMagnifiedLoupeView *)self _updateCloseLoupeAnimation:v10];
      goto LABEL_13;
    }

    [(_UITextMagnifiedLoupeView *)self _resetAnimationState];
  }

  [(UIView *)self setNeedsLayout];
  v8 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  (*(v10 + 2))(v10, 1);
LABEL_13:
  v8 = v10;
LABEL_14:
}

- (void)_updateOpenLoupeAnimation:(id)a3
{
  v4 = a3;
  [(_UITextMagnifiedLoupeView *)self _resetAnimationState];
  [objc_opt_class() loupeZoomOutScale];
  [(_UITextMagnifiedLoupeView *)self _updatePortalViewTransformForPosition:self->_modelPosition.x zoomScale:self->_modelPosition.y, v5];
  [(UIView *)self layoutIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_animatableSelectionWidget);
  [WeakRetained setHiddenForLoupeAnimation:1];

  objc_initWeak(&location, self);
  v7 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.13];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55___UITextMagnifiedLoupeView__updateOpenLoupeAnimation___block_invoke;
  v14[3] = &unk_1E70F5A28;
  objc_copyWeak(&v15, &location);
  [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v14 completion:0];
  v8 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___UITextMagnifiedLoupeView__updateOpenLoupeAnimation___block_invoke_2;
  v12[3] = &unk_1E70F5A28;
  objc_copyWeak(&v13, &location);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___UITextMagnifiedLoupeView__updateOpenLoupeAnimation___block_invoke_3;
  v10[3] = &unk_1E7103030;
  v9 = v4;
  v11 = v9;
  [UIView _animateUsingSpringBehavior:v8 tracking:0 animations:v12 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

- (void)_updateCloseLoupeAnimation:(id)a3
{
  v4 = a3;
  v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.23];
  v6 = [(_UITextMagnifiedLoupeView *)self _configuredGroupCompletion:v4];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___UITextMagnifiedLoupeView__updateCloseLoupeAnimation___block_invoke;
  aBlock[3] = &unk_1E7101A88;
  objc_copyWeak(&v17, &location);
  aBlock[4] = self;
  v7 = v6;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___UITextMagnifiedLoupeView__updateCloseLoupeAnimation___block_invoke_2;
  v13[3] = &unk_1E70F0F78;
  v9 = v8;
  v14 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56___UITextMagnifiedLoupeView__updateCloseLoupeAnimation___block_invoke_3;
  v11[3] = &unk_1E70F3FD8;
  v10 = v7;
  v12 = v10;
  [UIView _animateUsingSpringBehavior:v5 tracking:1 animations:v13 completion:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)_configuredGroupCompletion:(id)a3
{
  v4 = a3;
  transitionGroupCompletion = self->_transitionGroupCompletion;
  if (!transitionGroupCompletion)
  {
    v6 = objc_alloc_init(_UIGroupCompletion);
    v7 = self->_transitionGroupCompletion;
    self->_transitionGroupCompletion = v6;

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_containerView);
    objc_copyWeak(&to, &self->_animatableSelectionWidget);
    v8 = self->_transitionGroupCompletion;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56___UITextMagnifiedLoupeView__configuredGroupCompletion___block_invoke;
    v11[3] = &unk_1E7104BE0;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    objc_copyWeak(&v15, &to);
    v12 = v4;
    [(_UIGroupCompletion *)v8 addNonIncrementingCompletion:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&to);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    transitionGroupCompletion = self->_transitionGroupCompletion;
  }

  v9 = transitionGroupCompletion;

  return transitionGroupCompletion;
}

- (void)_stopDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)removeFromSuperview
{
  [(_UITextMagnifiedLoupeView *)self _stopDisplayLink];
  v3.receiver = self;
  v3.super_class = _UITextMagnifiedLoupeView;
  [(UIView *)&v3 removeFromSuperview];
}

- ($59ECE587B56CBF78EA342F243490147C)_defaultOriginShape
{
  [(UIView *)self bounds];
  v6 = v5;
  [(UIView *)self bounds];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 * 0.5;
  [(UIView *)self bounds];
  retstr->var0.x = v11 + v10 * 0.5;
  retstr->var0.y = v13 + v12 * 0.5;
  [(UIView *)self bounds];
  retstr->var1.origin.x = v14;
  retstr->var1.origin.y = v15;
  retstr->var1.size.width = v16;
  retstr->var1.size.height = v17;
  retstr->var2 = v9;
  result = [(UIView *)self tintColor];
  retstr->var3 = result;
  return result;
}

- ($2BD9DB369DDD0E9E489A8699A184AD3B)_defaultOriginShadow
{
  retstr->var3.height = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return self;
}

- (id)_animatableSelectionWidget
{
  WeakRetained = objc_loadWeakRetained(&self->_animatableSelectionWidget);
  v4 = [(UIView *)WeakRetained _isInVisibleHierarchy];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_animatableSelectionWidget);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v83.receiver = self;
  v83.super_class = _UITextMagnifiedLoupeView;
  [(UIView *)&v83 layoutSubviews];
  v3 = [(_UITextMagnifiedLoupeView *)self _animatableSelectionWidget];
  v4 = v3;
  apertureOpen = self->_animationState.apertureOpen;
  floatingAbove = self->_animationState.floatingAbove;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  if (v3)
  {
    [v3 originShape];
    v78 = 0.0;
    v76 = 0u;
    v77 = 0u;
    [v4 originShadow];
  }

  else
  {
    [(_UITextMagnifiedLoupeView *)self _defaultOriginShape];
    v78 = 0.0;
    v76 = 0u;
    v77 = 0u;
    [(_UITextMagnifiedLoupeView *)self _defaultOriginShadow];
  }

  v7 = [(_UITextMagnifiedLoupeView *)self _isVertical];
  memset(&v75, 0, sizeof(v75));
  if (!floatingAbove)
  {
    v29 = *(MEMORY[0x1E695EFD0] + 16);
    *&v75.a = *MEMORY[0x1E695EFD0];
    *&v75.c = v29;
    *&v75.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v14 = *(&v79 + 1);
    v12 = *&v79;
    if (floatingAbove)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v8 = 65.0;
  v9 = 0.0;
  if (!v7)
  {
    v8 = 0.0;
    v9 = -65.0;
  }

  CGAffineTransformMakeTranslation(&v75, v8, v9);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = [v4 originView];
  [(UIView *)self convertPoint:v10 fromView:v79];
  v12 = v11;
  v14 = v13;

  if (floatingAbove)
  {
LABEL_9:
    [(UIView *)self bounds];
    v16 = v15;
    v18 = v17;
    [(UIView *)self bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(UIView *)self tintColor];
    v14 = v22 + v26 * 0.5;
    v12 = v20 + v24 * 0.5;
    v28 = 0.0;
    goto LABEL_13;
  }

LABEL_12:
  v18 = *(&v81 + 1);
  v16 = *&v81;
  v27 = *(&v82 + 1);
  v28 = 1.0;
LABEL_13:
  if (v16 >= v18)
  {
    v30 = v18;
  }

  else
  {
    v30 = v16;
  }

  v31 = v30 * 0.5;
  if (apertureOpen)
  {
    v32 = 2.0;
  }

  else
  {
    v32 = 42.5;
  }

  if (apertureOpen)
  {
    v33 = v31;
  }

  else
  {
    v33 = *&v82;
  }

  v34 = !apertureOpen;
  if (v4 && !apertureOpen)
  {
    v34 = [v4 crossfadeOnDismissal];
  }

  if (v34)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 1.0;
  }

  v36 = [(_UITextMagnifiedLoupeView *)self containerView];
  [v36 setBounds:{0.0, 0.0, v16, v18}];
  [v36 setCenter:{v12, v14}];
  v37 = [v36 layer];
  [v37 setCornerRadius:v33];

  v38 = [v36 layer];
  [v38 setBorderWidth:v32];

  v74 = v75;
  [v36 setTransform:&v74];
  [v36 setAlpha:v35];
  if (floatingAbove)
  {
    v39 = +[UIColor blackColor];
    v40 = 0.0;
    v41 = 4.0;
  }

  else
  {
    v39 = v76;
    v40 = *(&v77 + 1);
    v41 = v78;
  }

  v42 = *(&v76 + 1);
  if (floatingAbove)
  {
    v43 = 18.0;
  }

  else
  {
    v43 = *&v77;
  }

  v44 = [v39 CGColor];
  v45 = [(UIView *)self layer];
  [v45 setShadowColor:v44];

  v46 = [(UIView *)self layer];
  [v46 setShadowOffset:{v40, v41}];

  v47 = [(UIView *)self layer];
  [v47 setShadowRadius:v43];

  v48 = [(UIView *)self layer];
  v49 = v48;
  *&v50 = v42;
  if (floatingAbove)
  {
    *&v50 = 0.18;
  }

  [v48 setShadowOpacity:v50];

  v51 = [v27 CGColor];
  v52 = [(UIView *)self->_containerView layer];
  [v52 setBorderColor:v51];

  [(UIView *)self->_coverView setBackgroundColor:v27];
  [v36 bounds];
  [(UIView *)self->_coverView setFrame:?];
  [(UIView *)self->_coverView setAlpha:v28];
  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_portalContainerView setFrame:?];
  [(UIView *)self->_containerView bounds];
  x = v84.origin.x;
  y = v84.origin.y;
  width = v84.size.width;
  height = v84.size.height;
  v85 = CGRectInset(v84, -5.0, -5.0);
  v57 = v85.origin.x;
  v58 = v85.origin.y;
  v59 = v85.size.width;
  v60 = v85.size.height;
  v72 = y;
  v73 = x;
  v85.origin.x = x;
  v85.origin.y = y;
  v70 = height;
  v71 = width;
  v85.size.width = width;
  v85.size.height = height;
  v86 = CGRectInset(v85, 5.0, 5.0);
  v61 = v86.origin.x;
  v62 = v86.origin.y;
  v63 = v86.size.width;
  v64 = v86.size.height;
  v86.origin.x = v57;
  v86.origin.y = v58;
  v86.size.width = v59;
  v86.size.height = v60;
  v65 = [UIBezierPath bezierPathWithRoundedRect:v57 cornerRadius:v58, v59, v60, CGRectGetHeight(v86) * 0.5];
  v87.origin.x = v61;
  v87.origin.y = v62;
  v87.size.width = v63;
  v87.size.height = v64;
  v66 = [UIBezierPath bezierPathWithRoundedRect:v61 cornerRadius:v62, v63, v64, CGRectGetHeight(v87) * 0.5];
  v67 = [v66 bezierPathByReversingPath];
  [v65 appendPath:v67];

  v88.origin.y = v72;
  v88.origin.x = v73;
  v88.size.height = v70;
  v88.size.width = v71;
  v89 = CGRectOffset(v88, 0.0, 5.0);
  [(UIView *)self->_glowView setFrame:v89.origin.x, v89.origin.y, v89.size.width, v89.size.height];
  v68 = [v65 CGPath];
  v69 = [(UIView *)self->_glowView layer];
  [v69 setShadowPath:v68];
}

- (void)_updatePortalViewTransformForPosition:(CGPoint)a3 zoomScale:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_containerView bounds];
  memset(&v17, 0, sizeof(v17));
  CATransform3DMakeTranslation(&v17, v9 + v8 * 0.5 - x, v11 + v10 * 0.5 - y, 0.0);
  memset(&v16, 0, sizeof(v16));
  CATransform3DMakeScale(&v16, a4, a4, 1.0);
  a = v17;
  v13 = v16;
  CATransform3DConcat(&v15, &a, &v13);
  v12 = [(UIView *)self->_portalContainerView layer];
  a = v15;
  [v12 setSublayerTransform:&a];
}

- (void)_displayLinkFired:(id)a3
{
  p_modelPosition = &self->_modelPosition;
  [(_UITextMagnifiedLoupeView *)self constrainedModelPositionForPosition:a3, self->_modelPosition.x, self->_modelPosition.y];
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
    [objc_opt_class() loupeZoomScale];
    [(_UITextMagnifiedLoupeView *)self _updatePortalViewTransformForPosition:v12 zoomScale:v14, v15];
  }

  [(UIView *)self setCenter:v12, v14];
}

- (void)setAnimatableSelectionWidget:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_animatableSelectionWidget);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_animatableSelectionWidget);
    [v5 setHiddenForLoupeAnimation:0];

    objc_storeWeak(&self->_animatableSelectionWidget, obj);
    transitionGroupCompletion = self->_transitionGroupCompletion;
    self->_transitionGroupCompletion = 0;
  }
}

+ (double)loupeZoomScale
{
  if (loupeZoomScale_once_0 != -1)
  {
    dispatch_once(&loupeZoomScale_once_0, &__block_literal_global_17_5);
  }

  return *&loupeZoomScale___loupeZoomScale_0;
}

+ (double)loupeZoomOutScale
{
  if (loupeZoomOutScale_once_0 != -1)
  {
    dispatch_once(&loupeZoomOutScale_once_0, &__block_literal_global_20_6);
  }

  return *&loupeZoomOutScale___loupeZoomOutScale_0;
}

- (CGPoint)modelPosition
{
  x = self->_modelPosition.x;
  y = self->_modelPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UITextSelectionWidgetAnimating)animatableSelectionWidget
{
  WeakRetained = objc_loadWeakRetained(&self->_animatableSelectionWidget);

  return WeakRetained;
}

@end