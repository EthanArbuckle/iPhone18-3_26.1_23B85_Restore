@interface _UITextMagnifiedGlassLoupeView
+ (double)loupeZoomOutScale;
+ (double)loupeZoomScale;
- ($59ECE587B56CBF78EA342F243490147C)_defaultOriginShape;
- (CGPoint)constrainedModelPositionForPosition:(CGPoint)position;
- (CGPoint)modelPosition;
- (CGSize)preferredSize;
- (UICoordinateSpace)containerCoordinateSpace;
- (_UITextMagnifiedGlassLoupeView)initWithSourceView:(id)view;
- (_UITextSelectionWidgetAnimating)animatableSelectionWidget;
- (id)_animatableSelectionWidget;
- (id)_configuredGroupCompletion:(id)completion;
- (void)_applyClearGlassBackgroundToSubview:(id)subview;
- (void)_displayLinkFired:(id)fired;
- (void)_stopDisplayLink;
- (void)_updateCloseLoupeAnimation:(id)animation;
- (void)_updateOpenLoupeAnimation:(id)animation;
- (void)_updatePortalViewTransformForPosition:(CGPoint)position zoomScale:(double)scale;
- (void)configureHighlightAndShadow;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAnimatableSelectionWidget:(id)widget;
- (void)setModelPosition:(CGPoint)position;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
@end

@implementation _UITextMagnifiedGlassLoupeView

- (void)_applyClearGlassBackgroundToSubview:(id)subview
{
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EA92F0C8;
  subviewCopy = subview;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EA92F0D0);
  sub_188B90950(v9, v6);
  v12[3] = type metadata accessor for _Glass(0);
  v12[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  _Glass.init(_:smoothness:)(v6, boxed_opaque_existential_0, 0.0);
  UIView._background.setter(v12);
}

- (_UITextMagnifiedGlassLoupeView)initWithSourceView:(id)view
{
  viewCopy = view;
  v39.receiver = self;
  v39.super_class = _UITextMagnifiedGlassLoupeView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)&v39 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(UIView *)v9 setUserInteractionEnabled:0];
    v10->_orientation = 1;
    v11 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    containerView = v10->_containerView;
    v10->_containerView = v11;

    v13 = objc_opt_new();
    [v13 setPreferredActivationMode:3];
    [v13 setPreferredFlexSources:2];
    [v13 setPreferredVariant:3];
    [(UIView *)v10->_containerView addInteraction:v13];
    [(UIView *)v10 addSubview:v10->_containerView];
    v14 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    portalContainerView = v10->_portalContainerView;
    v10->_portalContainerView = v14;

    [(UIView *)v10->_containerView addSubview:v10->_portalContainerView];
    window = [viewCopy window];
    v17 = [[_UIPortalView alloc] initWithSourceView:window];
    contentOffsetPortalView = v10->_contentOffsetPortalView;
    v10->_contentOffsetPortalView = v17;

    [(_UIPortalView *)v10->_contentOffsetPortalView setMatchesAlpha:1];
    v19 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    contentOffsetPortalContainerView = v10->_contentOffsetPortalContainerView;
    v10->_contentOffsetPortalContainerView = v19;

    [(UIView *)v10->_contentOffsetPortalContainerView addSubview:v10->_contentOffsetPortalView];
    v21 = [[_UIPortalView alloc] initWithSourceView:v10->_contentOffsetPortalView];
    portalView = v10->_portalView;
    v10->_portalView = v21;

    [(_UIPortalView *)v10->_portalView setHidesSourceView:1];
    [(_UIPortalView *)v10->_portalView setMatchesAlpha:1];
    [(_UIPortalView *)v10->_portalView setMatchesTransform:1];
    [(_UIPortalView *)v10->_portalView setMatchesPosition:1];
    [(UIView *)v10->_portalContainerView setClipsToBounds:1];
    layer = [(UIView *)v10->_portalContainerView layer];
    [layer setAllowsEdgeAntialiasing:1];

    v24 = *MEMORY[0x1E69796E8];
    layer2 = [(UIView *)v10->_portalContainerView layer];
    [layer2 setCornerCurve:v24];

    v26 = *MEMORY[0x1E6979E40];
    layer3 = [(UIView *)v10->_portalContainerView layer];
    [layer3 setCornerRadius:v26];

    layer4 = [window layer];
    [layer4 frame];
    [(_UIPortalView *)v10->_portalView setFrame:?];

    [(UIView *)v10->_portalContainerView addSubview:v10->_portalView];
    v29 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    glassView = v10->_glassView;
    v10->_glassView = v29;

    [(UIView *)v10->_containerView addSubview:v10->_glassView];
    window2 = [viewCopy window];
    screen = [window2 screen];

    if (screen)
    {
      v33 = screen;
    }

    else
    {
      v33 = MEMORY[0x1E6979330];
    }

    v34 = [v33 displayLinkWithTarget:v10 selector:sel__displayLinkFired_];
    displayLink = v10->_displayLink;
    v10->_displayLink = v34;

    [(CADisplayLink *)v10->_displayLink setPreferredFramesPerSecond:60];
    v36 = v10->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v36 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695D918]];
  }

  return v10;
}

- (void)configureHighlightAndShadow
{
  v72[1] = *MEMORY[0x1E69E9840];
  [(UIView *)self->_containerView bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (!self->_highlightView)
  {
    v11 = [[UIView alloc] initWithFrame:v3, v4, v5, v6];
    v12 = [[UIView alloc] initWithFrame:v7, v8, v9, v10];
    v13 = [[UIView alloc] initWithFrame:v7, v8, v9, v10];
    v69 = [[UIView alloc] initWithFrame:v7, v8, v9, v10];
    [(UIView *)self->_containerView addSubview:v11];
    [(UIView *)v12 addSubview:v13];
    [(UIView *)v12 addSubview:v69];
    [(UIView *)self->_containerView addSubview:v12];
    v14 = *MEMORY[0x1E69796E8];
    layer = [(UIView *)v11 layer];
    [layer setCornerCurve:v14];

    layer2 = [(UIView *)v11 layer];
    LODWORD(v17) = 1040522936;
    [layer2 setShadowOpacity:v17];

    layer3 = [(UIView *)v11 layer];
    [layer3 setShadowOffset:{0.0, 3.66666667}];

    layer4 = [(UIView *)v11 layer];
    [layer4 setShadowRadius:6.66666667];

    layer5 = [(UIView *)v11 layer];
    [layer5 setShadowPathIsBounds:1];

    layer6 = [(UIView *)v11 layer];
    [layer6 setInvertsShadow:1];

    [(UIView *)v11 setClipsToBounds:1];
    layer7 = [(UIView *)v12 layer];
    [layer7 setCornerCurve:v14];

    [(UIView *)v12 setAlpha:0.08];
    [(UIView *)v12 setClipsToBounds:1];
    v23 = +[UIColor blackColor];
    cGColor = [v23 CGColor];
    layer8 = [(UIView *)v13 layer];
    [layer8 setBorderColor:cGColor];

    layer9 = [(UIView *)v13 layer];
    [layer9 setBorderWidth:16.2392];

    v27 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v27 setValue:&unk_1EFE2E2B8 forKey:*MEMORY[0x1E6979BA8]];
    v72[0] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
    layer10 = [(UIView *)v13 layer];
    [layer10 setFilters:v28];

    layer11 = [(UIView *)v13 layer];
    [layer11 setCornerCurve:v14];

    CATransform3DMakeScale(&v71, 1.48, 1.6793, 1.0);
    layer12 = [(UIView *)v13 layer];
    v70 = v71;
    [layer12 setTransform:&v70];

    v32 = +[UIColor whiteColor];
    [(UIView *)v69 setBackgroundColor:v32];

    layer13 = [(UIView *)v69 layer];
    [layer13 setCornerCurve:v14];

    v34 = *MEMORY[0x1E6979CF8];
    layer14 = [(UIView *)v69 layer];
    [layer14 setCompositingFilter:v34];

    layer15 = [(UIView *)v13 layer];
    layer16 = [(UIView *)v69 layer];
    [layer16 setMask:layer15];

    layer17 = [(UIView *)self->_containerView layer];
    LODWORD(v39) = 1000507263;
    [layer17 setShadowOpacity:v39];

    layer18 = [(UIView *)self->_containerView layer];
    [layer18 setShadowRadius:6.66666667];

    layer19 = [(UIView *)self->_containerView layer];
    [layer19 setShadowOffset:{0.0, 11.0}];

    layer20 = [(UIView *)self->_containerView layer];
    [layer20 setShadowPathIsBounds:1];

    layer21 = [(UIView *)self->_containerView layer];
    [layer21 setPunchoutShadow:1];

    innerShadowView = self->_innerShadowView;
    self->_innerShadowView = v11;
    v45 = v11;

    highlightView = self->_highlightView;
    self->_highlightView = v12;
    v47 = v12;

    highlightDarkView = self->_highlightDarkView;
    self->_highlightDarkView = v13;
    v49 = v13;

    highlightLightView = self->_highlightLightView;
    self->_highlightLightView = v69;
  }

  [(UIView *)self->_innerShadowView setFrame:v7, v8, v9, v10];
  layer22 = [(UIView *)self->_glassView layer];
  [layer22 cornerRadius];
  v53 = v52;
  layer23 = [(UIView *)self->_innerShadowView layer];
  [layer23 setCornerRadius:v53];

  [(UIView *)self->_highlightView setFrame:v7, v8, v9, v10];
  layer24 = [(UIView *)self->_glassView layer];
  [layer24 cornerRadius];
  v57 = v56;
  layer25 = [(UIView *)self->_highlightView layer];
  [layer25 setCornerRadius:v57];

  layer26 = [(UIView *)self->_highlightDarkView layer];
  [layer26 setBounds:{v7, v8, v9, v10}];

  layer27 = [(UIView *)self->_highlightDarkView layer];
  [layer27 setPosition:{v9 * 0.5, v10 * 0.5 + -8.0}];

  layer28 = [(UIView *)self->_glassView layer];
  [layer28 cornerRadius];
  v63 = v62;
  layer29 = [(UIView *)self->_highlightDarkView layer];
  [layer29 setCornerRadius:v63];

  [(UIView *)self->_highlightLightView setFrame:v7, v8, v9, v10];
  layer30 = [(UIView *)self->_glassView layer];
  [layer30 cornerRadius];
  v67 = v66;
  layer31 = [(UIView *)self->_highlightLightView layer];
  [layer31 setCornerRadius:v67];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = _UITextMagnifiedGlassLoupeView;
  [(UIView *)&v5 didMoveToSuperview];
  superview = [(UIView *)self superview];

  if (superview)
  {
    superview2 = [(UIView *)self superview];
    [superview2 insertSubview:self->_contentOffsetPortalContainerView belowSubview:self];
  }

  else
  {
    [(UIView *)self->_contentOffsetPortalContainerView removeFromSuperview];
  }
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
  containerCoordinateSpace = [(_UITextMagnifiedGlassLoupeView *)self containerCoordinateSpace];
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
    if (!self->_transitionGroupCompletion && setModelPosition__once != -1)
    {
      dispatch_once(&setModelPosition__once, &__block_literal_global_164);
    }

    [(_UITextMagnifiedGlassLoupeView *)self _updateCloseLoupeAnimation:0];
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
    containerView = [(_UITextMagnifiedGlassLoupeView *)self containerView];
    [containerView setHidden:0];

    if (animatedCopy)
    {
      [(_UITextMagnifiedGlassLoupeView *)self _updateOpenLoupeAnimation:v10];
      goto LABEL_13;
    }

    self->_animationState = 1;
  }

  else
  {
    if (animatedCopy)
    {
      [(_UITextMagnifiedGlassLoupeView *)self constrainedModelPositionForPosition:self->_modelPosition.x, self->_modelPosition.y];
      [(UIView *)self setCenter:?];
      [(_UITextMagnifiedGlassLoupeView *)self _updateCloseLoupeAnimation:v10];
      goto LABEL_13;
    }

    [(_UITextMagnifiedGlassLoupeView *)self _resetAnimationState];
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
  [(_UITextMagnifiedGlassLoupeView *)self _resetAnimationState];
  [objc_opt_class() loupeZoomOutScale];
  [(_UITextMagnifiedGlassLoupeView *)self _updatePortalViewTransformForPosition:self->_modelPosition.x zoomScale:self->_modelPosition.y, v5];
  [(UIView *)self layoutIfNeeded];
  objc_initWeak(&location, self);
  v6 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60___UITextMagnifiedGlassLoupeView__updateOpenLoupeAnimation___block_invoke;
  v13[3] = &unk_1E70F5A28;
  objc_copyWeak(&v14, &location);
  [UIView _animateUsingSpringBehavior:v6 tracking:0 animations:v13 completion:0];
  v7 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.8 response:0.5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___UITextMagnifiedGlassLoupeView__updateOpenLoupeAnimation___block_invoke_2;
  v11[3] = &unk_1E70F5A28;
  objc_copyWeak(&v12, &location);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___UITextMagnifiedGlassLoupeView__updateOpenLoupeAnimation___block_invoke_3;
  v9[3] = &unk_1E7103030;
  v8 = animationCopy;
  v10 = v8;
  [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v11 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (void)_updateCloseLoupeAnimation:(id)animation
{
  animationCopy = animation;
  v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.23];
  v6 = [(_UITextMagnifiedGlassLoupeView *)self _configuredGroupCompletion:animationCopy];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___UITextMagnifiedGlassLoupeView__updateCloseLoupeAnimation___block_invoke;
  aBlock[3] = &unk_1E7101A88;
  objc_copyWeak(&v17, &location);
  aBlock[4] = self;
  v7 = v6;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61___UITextMagnifiedGlassLoupeView__updateCloseLoupeAnimation___block_invoke_2;
  v13[3] = &unk_1E70F0F78;
  v9 = v8;
  v14 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61___UITextMagnifiedGlassLoupeView__updateCloseLoupeAnimation___block_invoke_3;
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
    v11[2] = __61___UITextMagnifiedGlassLoupeView__configuredGroupCompletion___block_invoke;
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
  [(_UITextMagnifiedGlassLoupeView *)self _stopDisplayLink];
  v3.receiver = self;
  v3.super_class = _UITextMagnifiedGlassLoupeView;
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
  v48.receiver = self;
  v48.super_class = _UITextMagnifiedGlassLoupeView;
  [(UIView *)&v48 layoutSubviews];
  _animatableSelectionWidget = [(_UITextMagnifiedGlassLoupeView *)self _animatableSelectionWidget];
  v4 = _animatableSelectionWidget;
  apertureOpen = self->_animationState.apertureOpen;
  floatingAbove = self->_animationState.floatingAbove;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  if (_animatableSelectionWidget)
  {
    [_animatableSelectionWidget originShape:1];
  }

  else
  {
    [(_UITextMagnifiedGlassLoupeView *)self _defaultOriginShape];
  }

  _isVertical = [(_UITextMagnifiedGlassLoupeView *)self _isVertical];
  if (_isVertical)
  {
    v8 = 75.0;
  }

  else
  {
    v8 = 0.0;
  }

  memset(&v43.c, 0, 32);
  if (_isVertical)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = -75.0;
  }

  *&v43.a = 0uLL;
  if (floatingAbove)
  {
    CGAffineTransformMakeTranslation(&v43, v8, v9);
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_15:
    *&v10 = v44;
    v39 = v10;
    *&v10 = *(&v44 + 1);
    v37 = v10;
    if (floatingAbove)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v23 = *(MEMORY[0x1E695EFD0] + 16);
  *&v43.a = *MEMORY[0x1E695EFD0];
  *&v43.c = v23;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  *&v43.tx = v10;
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_12:
  originView = [v4 originView];
  [(UIView *)self convertPoint:originView fromView:v44];
  v37 = v13;
  v39 = v12;

  if (floatingAbove)
  {
LABEL_13:
    [(UIView *)self bounds:v37];
    v15 = v14;
    v17 = v16;
    [(UIView *)self bounds];
    *&v20 = v19 + v18 * 0.5;
    v39 = v20;
    *&v20 = v22 + v21 * 0.5;
    v37 = v20;
    goto LABEL_17;
  }

LABEL_16:
  v17 = *(&v46 + 1);
  v15 = *&v46;
LABEL_17:
  if (v15 >= v17)
  {
    v24 = v17;
  }

  else
  {
    v24 = v15;
  }

  v25 = v24 * 0.5;
  if (apertureOpen)
  {
    v26 = 2.0;
  }

  else
  {
    v26 = 42.5;
  }

  if (apertureOpen)
  {
    v27 = v25;
  }

  else
  {
    v27 = *&v47;
  }

  if (apertureOpen)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = [(_UITextMagnifiedGlassLoupeView *)self containerView:v37];
  [v29 setBounds:{0.0, 0.0, v15, v17}];
  [v29 setCenter:{vaddq_f64(*&v43.tx, vaddq_f64(vmulq_n_f64(*&v43.a, v40), vmulq_n_f64(*&v43.c, v38)))}];
  layer = [v29 layer];
  [layer setCornerRadius:v27];

  layer2 = [v29 layer];
  [layer2 setBorderWidth:v26];

  [v29 setAlpha:v28];
  v32 = +[UIColor clearColor];
  cGColor = [v32 CGColor];
  layer3 = [(UIView *)self->_containerView layer];
  [layer3 setBorderColor:cGColor];

  memset(&v42, 0, sizeof(v42));
  if (floatingAbove)
  {
    CGAffineTransformMakeTranslation(&v42, v8, v9);
  }

  else
  {
    v35 = *(MEMORY[0x1E695EFD0] + 16);
    *&v42.a = *MEMORY[0x1E695EFD0];
    *&v42.c = v35;
    *&v42.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v41 = v42;
  [(UIView *)self->_contentOffsetPortalContainerView setTransform:&v41];
  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_portalContainerView setFrame:?];
  [v29 bounds];
  [(UIView *)self->_glassView setFrame:?];
  layer4 = [(UIView *)self->_glassView layer];
  [layer4 setCornerRadius:v27];

  [(_UITextMagnifiedGlassLoupeView *)self _applyClearGlassBackgroundToSubview:self->_glassView];
  [(_UITextMagnifiedGlassLoupeView *)self configureHighlightAndShadow];
}

- (void)_updatePortalViewTransformForPosition:(CGPoint)position zoomScale:(double)scale
{
  v11 = *(MEMORY[0x1E69792E8] + 8);
  v12 = *(MEMORY[0x1E69792E8] + 24);
  v5 = *(MEMORY[0x1E69792E8] + 64);
  v14 = *(MEMORY[0x1E69792E8] + 48);
  v15 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v16 = *(MEMORY[0x1E69792E8] + 80);
  v19 = v6;
  v7 = position.x * (1.0 - scale);
  v8 = position.y * (1.0 - scale);
  layer = [(UIView *)self->_contentOffsetPortalContainerView layer];
  scaleCopy = scale;
  scaleCopy2 = scale;
  v17 = v7;
  v18 = v8;
  [layer setSublayerTransform:&scaleCopy];
}

- (void)_displayLinkFired:(id)fired
{
  p_modelPosition = &self->_modelPosition;
  [(_UITextMagnifiedGlassLoupeView *)self constrainedModelPositionForPosition:fired, self->_modelPosition.x, self->_modelPosition.y];
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
    [(_UITextMagnifiedGlassLoupeView *)self _updatePortalViewTransformForPosition:v12 zoomScale:v14, v15];
  }

  v16 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.7 response:0.2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52___UITextMagnifiedGlassLoupeView__displayLinkFired___block_invoke;
  v17[3] = &unk_1E70F6848;
  v17[4] = self;
  *&v17[5] = v12;
  *&v17[6] = v14;
  [UIView _animateUsingSpringBehavior:v16 tracking:0 animations:v17 completion:0];
}

- (void)setAnimatableSelectionWidget:(id)widget
{
  obj = widget;
  WeakRetained = objc_loadWeakRetained(&self->_animatableSelectionWidget);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_animatableSelectionWidget, obj);
    transitionGroupCompletion = self->_transitionGroupCompletion;
    self->_transitionGroupCompletion = 0;

    v5 = obj;
  }
}

+ (double)loupeZoomScale
{
  if (loupeZoomScale_once != -1)
  {
    dispatch_once(&loupeZoomScale_once, &__block_literal_global_21_1);
  }

  return *&loupeZoomScale___loupeZoomScale;
}

+ (double)loupeZoomOutScale
{
  if (loupeZoomOutScale_once != -1)
  {
    dispatch_once(&loupeZoomOutScale_once, &__block_literal_global_24_0);
  }

  return *&loupeZoomOutScale___loupeZoomOutScale;
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