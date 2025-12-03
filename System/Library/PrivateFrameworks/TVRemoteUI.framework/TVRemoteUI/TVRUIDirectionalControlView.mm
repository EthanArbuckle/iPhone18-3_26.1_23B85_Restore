@interface TVRUIDirectionalControlView
- (BOOL)_isArrowView:(id)view;
- (TVRUIDirectionalControlView)initWithStyleProvider:(id)provider;
- (UIView)highlightedView;
- (_TVRUIEventDelegate)eventDelegate;
- (double)centerCornerRadius;
- (double)centerEdgeLength;
- (id)_createDirectionalImageViewWithImageName:(id)name;
- (id)_directionalViewForTouchLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)_buttonTypeForLocation:(CGPoint)location;
- (void)_configureGesture;
- (void)_configureLongPressGesture:(id)gesture;
- (void)_highlightArrowView:(id)view;
- (void)_highlightView:(id)view enabled:(BOOL)enabled;
- (void)_sendSelectButtonPressBegan;
- (void)_sendSelectButtonPressEnded;
- (void)_unhighlightArrowView:(id)view;
- (void)_unhighlightView;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)setOffsetDirectionalPad:(BOOL)pad;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TVRUIDirectionalControlView

- (TVRUIDirectionalControlView)initWithStyleProvider:(id)provider
{
  v45[5] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v44.receiver = self;
  v44.super_class = TVRUIDirectionalControlView;
  v6 = [(TVRUIDirectionalControlView *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, provider);
    touchpadBackgroundColor = [(TVRUIStyleProvider *)v7->_styleProvider touchpadBackgroundColor];
    [(TVRUIDirectionalControlView *)v7 setBackgroundColor:touchpadBackgroundColor];

    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    tapHandlingSquareWrapperView = v7->_tapHandlingSquareWrapperView;
    v7->_tapHandlingSquareWrapperView = v9;

    [(TVRUIDirectionalControlView *)v7 addSubview:v7->_tapHandlingSquareWrapperView];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    directionControlsWrapperView = v7->_directionControlsWrapperView;
    v7->_directionControlsWrapperView = v11;

    [(TVRUIDirectionalControlView *)v7 addSubview:v7->_directionControlsWrapperView];
    v13 = [(TVRUIDirectionalControlView *)v7 _createDirectionalImageViewWithImageName:@"DirectionalControlArrowUp"];
    upImageView = v7->_upImageView;
    v7->_upImageView = v13;

    v15 = [(TVRUIDirectionalControlView *)v7 _createDirectionalImageViewWithImageName:@"DirectionalControlArrowRight"];
    rightImageView = v7->_rightImageView;
    v7->_rightImageView = v15;

    v17 = [(TVRUIDirectionalControlView *)v7 _createDirectionalImageViewWithImageName:@"DirectionalControlArrowDown"];
    downImageView = v7->_downImageView;
    v7->_downImageView = v17;

    v19 = [(TVRUIDirectionalControlView *)v7 _createDirectionalImageViewWithImageName:@"DirectionalControlArrowLeft"];
    leftImageView = v7->_leftImageView;
    v7->_leftImageView = v19;

    v21 = objc_alloc_init(MEMORY[0x277D75D18]);
    selectIndicator = v7->_selectIndicator;
    v7->_selectIndicator = v21;

    styleProvider = [(TVRUIDirectionalControlView *)v7 styleProvider];
    [styleProvider directionalPadSelectButtonBorderWidth];
    v25 = v24;
    layer = [(UIView *)v7->_selectIndicator layer];
    [layer setBorderWidth:v25];

    styleProvider2 = [(TVRUIDirectionalControlView *)v7 styleProvider];
    directionalPadSelectButtonBorderColor = [styleProvider2 directionalPadSelectButtonBorderColor];
    cGColor = [directionalPadSelectButtonBorderColor CGColor];
    layer2 = [(UIView *)v7->_selectIndicator layer];
    [layer2 setBorderColor:cGColor];

    [(UIView *)v7->_selectIndicator setAlpha:0.6];
    [(TVRUIDirectionalControlView *)v7 centerCornerRadius];
    v32 = v31;
    layer3 = [(UIView *)v7->_selectIndicator layer];
    [layer3 setCornerRadius:v32];

    v45[0] = v7->_upImageView;
    v45[1] = v7->_rightImageView;
    v45[2] = v7->_downImageView;
    v45[3] = v7->_leftImageView;
    v45[4] = v7->_selectIndicator;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
    interactionViews = v7->_interactionViews;
    v7->_interactionViews = v34;

    v36 = v7->_interactionViews;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __53__TVRUIDirectionalControlView_initWithStyleProvider___block_invoke;
    v42[3] = &unk_279D88898;
    v37 = v7;
    v43 = v37;
    [(NSArray *)v36 enumerateObjectsUsingBlock:v42];
    v38 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v37];
    [(TVRUIDirectionalControlView *)v37 addInteraction:v38];

    [(TVRUIDirectionalControlView *)v37 _configureLongPressGesture:v7->_selectIndicator];
    [(TVRUIDirectionalControlView *)v37 _configureGesture];
    v39 = [TVRButtonHaptic hapticForView:v7->_tapHandlingSquareWrapperView];
    haptic = v37->_haptic;
    v37->_haptic = v39;
  }

  return v7;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = TVRUIDirectionalControlView;
  [(TVRUIDirectionalControlView *)&v41 layoutSubviews];
  [(TVRUIDirectionalControlView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_tapHandlingSquareWrapperView setBounds:0.0, 0.0, v7, v7];
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  v11 = 0.5;
  v12 = CGRectGetWidth(v42) * 0.5;
  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  [(UIView *)self->_tapHandlingSquareWrapperView setCenter:v12, CGRectGetHeight(v43) * 0.5];
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  Width = CGRectGetWidth(v44);
  [(UIView *)self->_directionControlsWrapperView setBounds:0.0, 0.0, Width * 0.69, Width * 0.69];
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  Height = CGRectGetHeight(v45);
  [(UIView *)self->_directionControlsWrapperView bounds];
  x = v15;
  y = v17;
  v39 = v18;
  v20 = v19;
  if ([(TVRUIDirectionalControlView *)self offsetDirectionalPad])
  {
    v21 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "Directional view adjusting position for media controls", buf, 2u);
    }

    v46.origin.x = v4;
    v46.origin.y = v6;
    v46.size.width = v8;
    v46.size.height = v10;
    v22 = CGRectGetHeight(v46);
    styleProvider = [(TVRUIDirectionalControlView *)self styleProvider];
    [styleProvider mediaControlsViewHeight];
    v25 = v22 - v24;

    v26 = v25 * 0.5;
    styleProvider2 = [(TVRUIDirectionalControlView *)self styleProvider];
    isSmallDevice = [styleProvider2 isSmallDevice];

    if (isSmallDevice)
    {
      rect = v20;
      v29 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Showing the directional controls on a small device so adjusting the insets to ensure the controls fit.", buf, 2u);
      }

      styleProvider3 = [(TVRUIDirectionalControlView *)self styleProvider];
      [styleProvider3 directionalPadInsetForSmallDevices];
      v32 = v31;
      v34 = v33;

      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = v39;
      v47.size.height = rect;
      v48 = CGRectInset(v47, v34, v32);
      x = v48.origin.x;
      y = v48.origin.y;
      v39 = v48.size.width;
      v26 = v26 + v34;
      v20 = v48.size.height;
      v11 = 0.5;
    }
  }

  else
  {
    v26 = Height * 0.5;
  }

  v49.origin.x = v4;
  v49.origin.y = v6;
  v49.size.width = v8;
  v49.size.height = v10;
  [(UIView *)self->_directionControlsWrapperView setCenter:CGRectGetWidth(v49) * v11, v26];
  [(TVRUIDirectionalControlView *)self centerEdgeLength];
  [(UIView *)self->_selectIndicator setBounds:0.0, 0.0, v35, v35];
  [(UIView *)self->_directionControlsWrapperView bounds];
  v36 = CGRectGetWidth(v50) * v11;
  [(UIView *)self->_directionControlsWrapperView bounds];
  [(UIView *)self->_selectIndicator setCenter:v36, CGRectGetHeight(v51) * v11];
  [(UIImageView *)self->_upImageView setFrame:_TVRImageFrameForDirectionalImage_0(self->_upImageView, 1, x, y, v39, v20)];
  [(UIImageView *)self->_downImageView setFrame:_TVRImageFrameForDirectionalImage_0(self->_downImageView, 4, x, y, v39, v20)];
  [(UIImageView *)self->_leftImageView setFrame:_TVRImageFrameForDirectionalImage_0(self->_leftImageView, 2, x, y, v39, v20)];
  [(UIImageView *)self->_rightImageView setFrame:_TVRImageFrameForDirectionalImage_0(self->_rightImageView, 8, x, y, v39, v20)];
}

- (void)setOffsetDirectionalPad:(BOOL)pad
{
  if (self->_offsetDirectionalPad != pad)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_offsetDirectionalPad = pad;
    window = [(TVRUIDirectionalControlView *)self window];
    if (window)
    {
      v7 = window;
      superview = [(TVRUIDirectionalControlView *)self superview];

      if (superview)
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __55__TVRUIDirectionalControlView_setOffsetDirectionalPad___block_invoke;
        v9[3] = &unk_279D87C20;
        v9[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v9 animations:0.4];
      }
    }
  }
}

uint64_t __55__TVRUIDirectionalControlView_setOffsetDirectionalPad___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (double)centerCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 24.0;
  if (v2)
  {
    return 28.0;
  }

  return result;
}

- (double)centerEdgeLength
{
  v2 = _UISolariumEnabled();
  result = 88.0;
  if (v2)
  {
    return 56.0;
  }

  return result;
}

- (BOOL)_isArrowView:(id)view
{
  viewCopy = view;
  v5 = self->_upImageView == viewCopy || self->_downImageView == viewCopy || self->_leftImageView == viewCopy || self->_rightImageView == viewCopy;

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = TVRUIDirectionalControlView;
  beganCopy = began;
  [(TVRUIDirectionalControlView *)&v15 touchesBegan:beganCopy withEvent:event];
  anyObject = [beganCopy anyObject];

  tapHandlingSquareWrapperView = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
  [anyObject locationInView:tapHandlingSquareWrapperView];
  v10 = v9;
  v12 = v11;

  v13 = [(TVRUIDirectionalControlView *)self _directionalViewForTouchLocation:v10, v12];
  v14 = v13;
  if (v13)
  {
    if (v13 == self->_selectIndicator)
    {
      objc_storeWeak(&self->_highlightedView, v13);
      [(TVRUIDirectionalControlView *)self _highlightView:v14 enabled:1];
    }

    else if ([(TVRUIDirectionalControlView *)self _isArrowView:v13])
    {
      objc_storeWeak(&self->_highlightedView, v14);
      [(TVRUIDirectionalControlView *)self _highlightArrowView:v14];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVRUIDirectionalControlView;
  [(TVRUIDirectionalControlView *)&v5 touchesEnded:ended withEvent:event];
  [(TVRUIDirectionalControlView *)self _unhighlightView];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVRUIDirectionalControlView;
  [(TVRUIDirectionalControlView *)&v5 touchesCancelled:cancelled withEvent:event];
  [(TVRUIDirectionalControlView *)self _unhighlightView];
}

- (void)_unhighlightView
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightedView);
  selectIndicator = self->_selectIndicator;

  v5 = objc_loadWeakRetained(&self->_highlightedView);
  if (WeakRetained == selectIndicator)
  {
    [(TVRUIDirectionalControlView *)self _highlightView:v5 enabled:0];
  }

  else
  {
    v6 = [(TVRUIDirectionalControlView *)self _isArrowView:v5];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = objc_loadWeakRetained(&self->_highlightedView);
    [(TVRUIDirectionalControlView *)self _unhighlightArrowView:v5];
  }

LABEL_6:

  objc_storeWeak(&self->_highlightedView, 0);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  interactionViews = [(TVRUIDirectionalControlView *)self interactionViews];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__TVRUIDirectionalControlView_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
  v24[3] = &unk_279D888C0;
  v24[4] = self;
  v26 = 0x403E000000000000;
  v8 = requestCopy;
  v25 = v8;
  v9 = [interactionViews indexOfObjectPassingTest:v24];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    interactionViews2 = [(TVRUIDirectionalControlView *)self interactionViews];
    v12 = [interactionViews2 objectAtIndexedSubscript:v9];

    [v12 bounds];
    v29 = CGRectInset(v28, -30.0, -30.0);
    [(TVRUIDirectionalControlView *)self convertRect:v12 fromView:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = MEMORY[0x277D75880];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v10 = [v21 regionWithRect:v22 identifier:{v14, v16, v18, v20}];
  }

  return v10;
}

BOOL __81__TVRUIDirectionalControlView_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 superview];
  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v4 convertRect:*(a1 + 32) toView:{v6, v8, v10, v12}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  v36 = CGRectInset(v35, -*(a1 + 48), -*(a1 + 48));
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  [*(a1 + 40) location];
  v26 = v25;
  v28 = v27;
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;

  return CGRectContainsPoint(*&v29, *&v26);
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  interactionViews = [(TVRUIDirectionalControlView *)self interactionViews];
  v7 = [interactionViews objectAtIndexedSubscript:{objc_msgSend(identifier, "integerValue")}];

  [(UIImageView *)v7 bounds];
  Width = CGRectGetWidth(v23);
  [(UIImageView *)v7 bounds];
  Height = CGRectGetHeight(v24);
  if (Width >= Height)
  {
    Height = Width;
  }

  if (v7 == self->_selectIndicator)
  {
    [(TVRUIDirectionalControlView *)self centerCornerRadius];
    v11 = v15;
    [(UIView *)self->_selectIndicator bounds];
    v26 = CGRectInset(v25, -10.0, -10.0);
    x = v26.origin.x;
    y = v26.origin.y;
    v10 = v26.size.width;
    v16 = v26.size.height;
  }

  else
  {
    v10 = Height + 20.0;
    v11 = (Height + 20.0) * 0.5;
    if (v7 == self->_leftImageView || v7 == self->_rightImageView)
    {
      y = -10.0;
      x = -25.0;
    }

    else
    {
      if (v7 != self->_upImageView && v7 != self->_downImageView)
      {
        v12 = 0;
        goto LABEL_14;
      }

      y = -25.0;
      x = -10.0;
    }

    v16 = Height + 20.0;
  }

  v17 = objc_alloc_init(MEMORY[0x277D758D8]);
  v18 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, v10, v16, v11}];
  [v17 setVisiblePath:v18];
  v19 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v7 parameters:v17];
  v20 = [MEMORY[0x277D75868] effectWithPreview:v19];
  v12 = [MEMORY[0x277D75890] styleWithEffect:v20 shape:0];

LABEL_14:

  return v12;
}

- (id)_createDirectionalImageViewWithImageName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:nameCopy inBundle:v5 compatibleWithTraitCollection:0];

  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
  [v7 setAlpha:0.6];

  return v7;
}

- (id)_directionalViewForTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  p_selectIndicator = &self->_selectIndicator;
  selectIndicator = self->_selectIndicator;
  tapHandlingSquareWrapperView = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
  [(UIView *)selectIndicator convertPoint:tapHandlingSquareWrapperView fromView:x, y];
  v10 = v9;
  v12 = v11;

  [(UIView *)*p_selectIndicator bounds];
  v28.x = v10;
  v28.y = v12;
  if (CGRectContainsPoint(v29, v28))
  {
    goto LABEL_13;
  }

  tapHandlingSquareWrapperView2 = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
  [tapHandlingSquareWrapperView2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v22 = CGRectGetHeight(v30) - x;
  v23 = y >= x;
  if (y < x && y < v22)
  {
    v24 = &OBJC_IVAR___TVRUIDirectionalControlView__upImageView;
LABEL_12:
    p_selectIndicator = (self + *v24);
LABEL_13:
    v25 = *p_selectIndicator;
    goto LABEL_14;
  }

  if (y < v22)
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = &OBJC_IVAR___TVRUIDirectionalControlView__rightImageView;
    goto LABEL_12;
  }

  if (y >= x && y >= v22)
  {
    v24 = &OBJC_IVAR___TVRUIDirectionalControlView__downImageView;
    goto LABEL_12;
  }

  if (y >= x && y < v22)
  {
    v24 = &OBJC_IVAR___TVRUIDirectionalControlView__leftImageView;
    goto LABEL_12;
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (void)_highlightView:(id)view enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  viewCopy = view;
  selectIndicator = self->_selectIndicator;
  v9 = viewCopy;
  if (selectIndicator == viewCopy || (selectIndicator = self->_upImageView, selectIndicator == viewCopy) || (selectIndicator = self->_downImageView, selectIndicator == viewCopy) || (selectIndicator = self->_rightImageView, selectIndicator == viewCopy) || (selectIndicator = self->_leftImageView, selectIndicator == viewCopy))
  {
    v8 = 0.6;
    if (enabledCopy)
    {
      v8 = 1.0;
    }

    selectIndicator = [(UIImageView *)selectIndicator setAlpha:v8];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](selectIndicator, viewCopy);
}

- (void)_highlightArrowView:(id)view
{
  viewCopy = view;
  unhighlightAnimator = [(TVRUIDirectionalControlView *)self unhighlightAnimator];
  isRunning = [unhighlightAnimator isRunning];

  if (isRunning)
  {
    unhighlightAnimator2 = [(TVRUIDirectionalControlView *)self unhighlightAnimator];
    [unhighlightAnimator2 stopAnimation:1];
  }

  v8 = objc_alloc(MEMORY[0x277D75D40]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__TVRUIDirectionalControlView__highlightArrowView___block_invoke;
  v12[3] = &unk_279D87C20;
  v13 = viewCopy;
  v9 = viewCopy;
  v10 = [v8 initWithDuration:3 curve:v12 animations:0.12];
  [(TVRUIDirectionalControlView *)self setHighlightAnimator:v10];

  highlightAnimator = [(TVRUIDirectionalControlView *)self highlightAnimator];
  [highlightAnimator startAnimation];
}

uint64_t __51__TVRUIDirectionalControlView__highlightArrowView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  result = +[TVRUIFeatures isSolariumEnabled];
  if (result)
  {
    memset(&v4, 0, sizeof(v4));
    CGAffineTransformMakeScale(&v4, 1.3, 1.3);
    v3 = v4;
    return [*(a1 + 32) setTransform:&v3];
  }

  return result;
}

- (void)_unhighlightArrowView:(id)view
{
  viewCopy = view;
  highlightAnimator = [(TVRUIDirectionalControlView *)self highlightAnimator];
  isRunning = [highlightAnimator isRunning];

  if (isRunning)
  {
    highlightAnimator2 = [(TVRUIDirectionalControlView *)self highlightAnimator];
    [highlightAnimator2 stopAnimation:1];
  }

  v8 = objc_alloc(MEMORY[0x277D75D40]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__TVRUIDirectionalControlView__unhighlightArrowView___block_invoke;
  v12[3] = &unk_279D87C20;
  v13 = viewCopy;
  v9 = viewCopy;
  v10 = [v8 initWithDuration:2 curve:v12 animations:0.25];
  [(TVRUIDirectionalControlView *)self setUnhighlightAnimator:v10];

  unhighlightAnimator = [(TVRUIDirectionalControlView *)self unhighlightAnimator];
  [unhighlightAnimator startAnimation];
}

uint64_t __53__TVRUIDirectionalControlView__unhighlightArrowView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.6];
  result = +[TVRUIFeatures isSolariumEnabled];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v5[0] = *MEMORY[0x277CBF2C0];
    v5[1] = v4;
    v5[2] = *(MEMORY[0x277CBF2C0] + 32);
    return [v3 setTransform:v5];
  }

  return result;
}

- (void)_configureGesture
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v3 setCancelsTouchesInView:0];
  [v3 setDelaysTouchesBegan:0];
  [v3 setDelaysTouchesEnded:0];
  [(TVRUIDirectionalControlView *)self addGestureRecognizer:v3];
}

- (void)handleTap:(id)tap
{
  v33 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    eventDelegate = [(TVRUIDirectionalControlView *)self eventDelegate];
    if (eventDelegate)
    {
      v6 = eventDelegate;
      eventDelegate2 = [(TVRUIDirectionalControlView *)self eventDelegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        [(TVRButtonHaptic *)self->_haptic userInteractionBegan];
        [tapCopy locationInView:self];
        v10 = v9;
        v12 = v11;
        tapHandlingSquareWrapperView = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
        [tapHandlingSquareWrapperView frame];
        v34.x = v10;
        v34.y = v12;
        v14 = CGRectContainsPoint(v35, v34);

        if (v14)
        {
          tapHandlingSquareWrapperView2 = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
          [tapCopy locationInView:tapHandlingSquareWrapperView2];
          v16 = [(TVRUIDirectionalControlView *)self _buttonTypeForLocation:?];

          v17 = [TVRUIButtonEvent createButtonEvent:1 buttonType:v16];
          eventDelegate3 = [(TVRUIDirectionalControlView *)self eventDelegate];
          [eventDelegate3 generatedButtonEvent:v17];

          v19 = [TVRUIButtonEvent createButtonEvent:2 buttonType:v16];
          eventDelegate4 = [(TVRUIDirectionalControlView *)self eventDelegate];
          [eventDelegate4 generatedButtonEvent:v19];

          v21 = _TVRUIViewControllerLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v32 = v16;
            v22 = "Detected directional control tap within bounds of button type %ld";
            v23 = v21;
            v24 = 12;
LABEL_13:
            _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
          }

LABEL_14:

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41__TVRUIDirectionalControlView_handleTap___block_invoke;
          block[3] = &unk_279D87C20;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
          goto LABEL_15;
        }

        [(TVRUIDirectionalControlView *)self bounds];
        if (v12 >= v25 * 0.5)
        {
          v17 = [TVRUIButtonEvent createButtonEvent:1 buttonType:13];
          eventDelegate5 = [(TVRUIDirectionalControlView *)self eventDelegate];
          [eventDelegate5 generatedButtonEvent:v17];

          v19 = [TVRUIButtonEvent createButtonEvent:2 buttonType:13];
          eventDelegate6 = [(TVRUIDirectionalControlView *)self eventDelegate];
          [eventDelegate6 generatedButtonEvent:v19];

          v21 = _TVRUIViewControllerLog();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          *buf = 0;
          v22 = "Detected directional control tap outside bounds - lower half. Sending arrow down";
        }

        else
        {
          v17 = [TVRUIButtonEvent createButtonEvent:1 buttonType:12];
          eventDelegate7 = [(TVRUIDirectionalControlView *)self eventDelegate];
          [eventDelegate7 generatedButtonEvent:v17];

          v19 = [TVRUIButtonEvent createButtonEvent:2 buttonType:12];
          eventDelegate8 = [(TVRUIDirectionalControlView *)self eventDelegate];
          [eventDelegate8 generatedButtonEvent:v19];

          v21 = _TVRUIViewControllerLog();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          *buf = 0;
          v22 = "Detected directional control tap outside bounds - top half. Sending arrow up";
        }

        v23 = v21;
        v24 = 2;
        goto LABEL_13;
      }
    }
  }

LABEL_15:
}

- (int64_t)_buttonTypeForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  selectIndicator = self->_selectIndicator;
  tapHandlingSquareWrapperView = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
  [(UIView *)selectIndicator convertPoint:tapHandlingSquareWrapperView fromView:x, y];
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_selectIndicator bounds];
  v24.x = v9;
  v24.y = v11;
  if (CGRectContainsPoint(v25, v24))
  {
    return 1;
  }

  tapHandlingSquareWrapperView2 = [(TVRUIDirectionalControlView *)self tapHandlingSquareWrapperView];
  [tapHandlingSquareWrapperView2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v26.origin.x = v15;
  v26.origin.y = v17;
  v26.size.width = v19;
  v26.size.height = v21;
  v22 = CGRectGetHeight(v26) - x;
  v23 = y >= x;
  if (y < x && y < v22)
  {
    return 12;
  }

  if (y < v22)
  {
    v23 = 1;
  }

  if (!v23)
  {
    return 15;
  }

  if (y >= x && y >= v22)
  {
    return 13;
  }

  if (y < x || y >= v22)
  {
    return 0;
  }

  return 14;
}

- (void)_configureLongPressGesture:(id)gesture
{
  v4 = MEMORY[0x277D75708];
  gestureCopy = gesture;
  v6 = [[v4 alloc] initWithTarget:self action:sel_handleLongPress_];
  [v6 setMinimumPressDuration:0.3];
  [v6 setCancelsTouchesInView:1];
  [v6 setDelaysTouchesBegan:0];
  [v6 setDelaysTouchesEnded:0];
  [gestureCopy addGestureRecognizer:v6];
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [(TVRUIDirectionalControlView *)self _sendSelectButtonPressBegan];
  }

  else if ([pressCopy state] == 3 || objc_msgSend(pressCopy, "state") == 4)
  {
    [(TVRUIDirectionalControlView *)self _sendSelectButtonPressEnded];
  }
}

- (void)_sendSelectButtonPressBegan
{
  v4 = [TVRUIButtonEvent createButtonEvent:1 buttonType:1];
  eventDelegate = [(TVRUIDirectionalControlView *)self eventDelegate];
  [eventDelegate generatedButtonEvent:v4];
}

- (void)_sendSelectButtonPressEnded
{
  v4 = [TVRUIButtonEvent createButtonEvent:2 buttonType:1];
  eventDelegate = [(TVRUIDirectionalControlView *)self eventDelegate];
  [eventDelegate generatedButtonEvent:v4];
}

- (_TVRUIEventDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (UIView)highlightedView
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightedView);

  return WeakRetained;
}

@end