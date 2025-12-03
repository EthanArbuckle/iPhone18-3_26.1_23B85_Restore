@interface _UITextMagnifiedLoupeView
+ (double)loupeZoomOutScale;
+ (double)loupeZoomScale;
- ($2BD9DB369DDD0E9E489A8699A184AD3B)_defaultOriginShadow;
- ($59ECE587B56CBF78EA342F243490147C)_defaultOriginShape;
- (CGPoint)constrainedModelPositionForPosition:(CGPoint)position;
- (CGPoint)modelPosition;
- (CGSize)preferredSize;
- (UICoordinateSpace)containerCoordinateSpace;
- (_UITextMagnifiedLoupeView)initWithSourceView:(id)view;
- (_UITextSelectionWidgetAnimating)animatableSelectionWidget;
- (id)_animatableSelectionWidget;
- (id)_configuredGroupCompletion:(id)completion;
- (void)_displayLinkFired:(id)fired;
- (void)_stopDisplayLink;
- (void)_updateCloseLoupeAnimation:(id)animation;
- (void)_updateOpenLoupeAnimation:(id)animation;
- (void)_updatePortalViewTransformForPosition:(CGPoint)position zoomScale:(double)scale;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAnimatableSelectionWidget:(id)widget;
- (void)setModelPosition:(CGPoint)position;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
@end

@implementation _UITextMagnifiedLoupeView

- (_UITextMagnifiedLoupeView)initWithSourceView:(id)view
{
  viewCopy = view;
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
    layer = [(UIView *)v10->_containerView layer];
    [layer setAllowsEdgeAntialiasing:1];

    v15 = *MEMORY[0x1E69796E8];
    layer2 = [(UIView *)v10->_containerView layer];
    [layer2 setCornerCurve:v15];

    [(UIView *)v10 addSubview:v10->_containerView];
    v17 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    portalContainerView = v10->_portalContainerView;
    v10->_portalContainerView = v17;

    [(UIView *)v10->_containerView addSubview:v10->_portalContainerView];
    window = [viewCopy window];
    v20 = [[_UIPortalView alloc] initWithSourceView:window];
    portalView = v10->_portalView;
    v10->_portalView = v20;

    [(_UIPortalView *)v10->_portalView setMatchesAlpha:1];
    [(_UIPortalView *)v10->_portalView setMatchesTransform:1];
    [window anchorPoint];
    [(UIView *)v10->_portalView setAnchorPoint:?];
    layer3 = [window layer];
    [layer3 frame];
    [(_UIPortalView *)v10->_portalView setFrame:?];

    [(UIView *)v10->_portalContainerView addSubview:v10->_portalView];
    v23 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    glowView = v10->_glowView;
    v10->_glowView = v23;

    v25 = +[UIColor blackColor];
    cGColor = [v25 CGColor];
    layer4 = [(UIView *)v10->_glowView layer];
    [layer4 setShadowColor:cGColor];

    layer5 = [(UIView *)v10->_glowView layer];
    LODWORD(v29) = 1041865114;
    [layer5 setShadowOpacity:v29];

    v30 = *MEMORY[0x1E695F060];
    v31 = *(MEMORY[0x1E695F060] + 8);
    layer6 = [(UIView *)v10->_glowView layer];
    [layer6 setShadowOffset:{v30, v31}];

    layer7 = [(UIView *)v10->_glowView layer];
    [layer7 setShadowRadius:8.0];

    layer8 = [(UIView *)v10->_glowView layer];
    [layer8 setCornerCurve:v15];

    [viewCopy contentScaleFactor];
    v36 = v35;
    layer9 = [(UIView *)v10->_glowView layer];
    [layer9 setRasterizationScale:v36];

    layer10 = [(UIView *)v10->_glowView layer];
    [layer10 setShouldRasterize:1];

    [(UIView *)v10->_containerView addSubview:v10->_glowView];
    v39 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    coverView = v10->_coverView;
    v10->_coverView = v39;

    [(UIView *)v10->_containerView addSubview:v10->_coverView];
    window2 = [viewCopy window];
    screen = [window2 screen];

    if (screen)
    {
      v43 = screen;
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
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v46 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695D918]];
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
  window = [(UIView *)self window];
  coordinateSpace = [window coordinateSpace];

  return coordinateSpace;
}

- (CGPoint)constrainedModelPositionForPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  containerCoordinateSpace = [(_UITextMagnifiedLoupeView *)self containerCoordinateSpace];
  [containerCoordinateSpace bounds];
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

- (void)setModelPosition:(CGPoint)position
{
  if (self->_modelPosition.x != position.x || self->_modelPosition.y != position.y)
  {
    self->_modelPosition = position;
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

- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if (self->_visible == visibleCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    v10 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0);
    goto LABEL_13;
  }

  v10 = completionCopy;
  self->_visible = visibleCopy;
  [(UIView *)self bounds];
  if (visibleCopy)
  {
    containerView = [(_UITextMagnifiedLoupeView *)self containerView];
    [containerView setHidden:0];

    if (animatedCopy)
    {
      [(_UITextMagnifiedLoupeView *)self _updateOpenLoupeAnimation:v10];
      goto LABEL_13;
    }

    self->_animationState = 1;
  }

  else
  {
    if (animatedCopy)
    {
      [(_UITextMagnifiedLoupeView *)self constrainedModelPositionForPosition:self->_modelPosition.x, self->_modelPosition.y];
      [(UIView *)self setCenter:?];
      [(_UITextMagnifiedLoupeView *)self _updateCloseLoupeAnimation:v10];
      goto LABEL_13;
    }

    [(_UITextMagnifiedLoupeView *)self _resetAnimationState];
  }

  [(UIView *)self setNeedsLayout];
  completionCopy = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  (*(v10 + 2))(v10, 1);
LABEL_13:
  completionCopy = v10;
LABEL_14:
}

- (void)_updateOpenLoupeAnimation:(id)animation
{
  animationCopy = animation;
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
  v9 = animationCopy;
  v11 = v9;
  [UIView _animateUsingSpringBehavior:v8 tracking:0 animations:v12 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

- (void)_updateCloseLoupeAnimation:(id)animation
{
  animationCopy = animation;
  v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.23];
  v6 = [(_UITextMagnifiedLoupeView *)self _configuredGroupCompletion:animationCopy];
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

- (id)_configuredGroupCompletion:(id)completion
{
  completionCopy = completion;
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
    v12 = completionCopy;
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
  _isInVisibleHierarchy = [(UIView *)WeakRetained _isInVisibleHierarchy];

  if (_isInVisibleHierarchy)
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
  _animatableSelectionWidget = [(_UITextMagnifiedLoupeView *)self _animatableSelectionWidget];
  v4 = _animatableSelectionWidget;
  apertureOpen = self->_animationState.apertureOpen;
  floatingAbove = self->_animationState.floatingAbove;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  if (_animatableSelectionWidget)
  {
    [_animatableSelectionWidget originShape];
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

  _isVertical = [(_UITextMagnifiedLoupeView *)self _isVertical];
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
  if (!_isVertical)
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
  originView = [v4 originView];
  [(UIView *)self convertPoint:originView fromView:v79];
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
    tintColor = [(UIView *)self tintColor];
    v14 = v22 + v26 * 0.5;
    v12 = v20 + v24 * 0.5;
    v28 = 0.0;
    goto LABEL_13;
  }

LABEL_12:
  v18 = *(&v81 + 1);
  v16 = *&v81;
  tintColor = *(&v82 + 1);
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

  crossfadeOnDismissal = !apertureOpen;
  if (v4 && !apertureOpen)
  {
    crossfadeOnDismissal = [v4 crossfadeOnDismissal];
  }

  if (crossfadeOnDismissal)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 1.0;
  }

  containerView = [(_UITextMagnifiedLoupeView *)self containerView];
  [containerView setBounds:{0.0, 0.0, v16, v18}];
  [containerView setCenter:{v12, v14}];
  layer = [containerView layer];
  [layer setCornerRadius:v33];

  layer2 = [containerView layer];
  [layer2 setBorderWidth:v32];

  v74 = v75;
  [containerView setTransform:&v74];
  [containerView setAlpha:v35];
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

  cGColor = [v39 CGColor];
  layer3 = [(UIView *)self layer];
  [layer3 setShadowColor:cGColor];

  layer4 = [(UIView *)self layer];
  [layer4 setShadowOffset:{v40, v41}];

  layer5 = [(UIView *)self layer];
  [layer5 setShadowRadius:v43];

  layer6 = [(UIView *)self layer];
  v49 = layer6;
  *&v50 = v42;
  if (floatingAbove)
  {
    *&v50 = 0.18;
  }

  [layer6 setShadowOpacity:v50];

  cGColor2 = [tintColor CGColor];
  layer7 = [(UIView *)self->_containerView layer];
  [layer7 setBorderColor:cGColor2];

  [(UIView *)self->_coverView setBackgroundColor:tintColor];
  [containerView bounds];
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
  bezierPathByReversingPath = [v66 bezierPathByReversingPath];
  [v65 appendPath:bezierPathByReversingPath];

  v88.origin.y = v72;
  v88.origin.x = v73;
  v88.size.height = v70;
  v88.size.width = v71;
  v89 = CGRectOffset(v88, 0.0, 5.0);
  [(UIView *)self->_glowView setFrame:v89.origin.x, v89.origin.y, v89.size.width, v89.size.height];
  cGPath = [v65 CGPath];
  layer8 = [(UIView *)self->_glowView layer];
  [layer8 setShadowPath:cGPath];
}

- (void)_updatePortalViewTransformForPosition:(CGPoint)position zoomScale:(double)scale
{
  y = position.y;
  x = position.x;
  [(UIView *)self->_containerView bounds];
  memset(&v17, 0, sizeof(v17));
  CATransform3DMakeTranslation(&v17, v9 + v8 * 0.5 - x, v11 + v10 * 0.5 - y, 0.0);
  memset(&v16, 0, sizeof(v16));
  CATransform3DMakeScale(&v16, scale, scale, 1.0);
  a = v17;
  v13 = v16;
  CATransform3DConcat(&v15, &a, &v13);
  layer = [(UIView *)self->_portalContainerView layer];
  a = v15;
  [layer setSublayerTransform:&a];
}

- (void)_displayLinkFired:(id)fired
{
  p_modelPosition = &self->_modelPosition;
  [(_UITextMagnifiedLoupeView *)self constrainedModelPositionForPosition:fired, self->_modelPosition.x, self->_modelPosition.y];
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

- (void)setAnimatableSelectionWidget:(id)widget
{
  obj = widget;
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