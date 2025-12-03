@interface _UIGrabber
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (_UIGrabber)initWithCoder:(id)coder;
- (_UIGrabber)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_setBackgroundLuminanceLevel:(unint64_t)level;
- (void)_setBlurEnabled:(BOOL)enabled;
- (void)_setLumaTrackingEnabled:(BOOL)enabled;
- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level;
- (void)layoutSubviews;
@end

@implementation _UIGrabber

- (void)layoutSubviews
{
  v58[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  v60 = CGRectInset(v59, 0.0, -5.0);
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  _lumaTrackingBackdropView = [(_UIGrabber *)self _lumaTrackingBackdropView];
  [_lumaTrackingBackdropView setFrame:{x, y, width, height}];

  LODWORD(_lumaTrackingBackdropView) = [(_UIGrabber *)self _isBlurEnabled];
  _lumaTrackingBackdropView2 = [(_UIGrabber *)self _lumaTrackingBackdropView];
  [_lumaTrackingBackdropView2 setHidden:_lumaTrackingBackdropView ^ 1];

  [(UIView *)self bounds];
  v62 = CGRectInset(v61, 0.0, -5.0);
  v9 = v62.origin.x;
  v10 = v62.origin.y;
  v11 = v62.size.width;
  v12 = v62.size.height;
  _visualEffectView = [(_UIGrabber *)self _visualEffectView];
  [_visualEffectView setFrame:{v9, v10, v11, v12}];

  traitCollection = [(UIView *)self traitCollection];
  _backgroundLuminanceLevel = [(_UIGrabber *)self _backgroundLuminanceLevel];
  if (_backgroundLuminanceLevel - 1 <= 1)
  {
    v16 = [traitCollection _traitCollectionByReplacingNSIntegerValue:_backgroundLuminanceLevel forTraitToken:0x1EFE323B0];

    traitCollection = v16;
  }

  v17 = +[UIColor tertiaryLabelColor];
  v56 = 0.0;
  v57 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  v18 = [v17 resolvedColorWithTraitCollection:traitCollection];
  [v18 getRed:&v57 green:&v56 blue:&v55 alpha:&v54];

  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v20.f64[0] = v57;
  v20.f64[1] = v56;
  if (userInterfaceStyle == 2)
  {
    v21 = vmulq_n_f64(v20, v54);
    v22 = v55;
  }

  else
  {
    __asm { FMOV            V2.2D, #1.0 }

    v21 = vmulq_n_f64(vnegq_f64(vsubq_f64(_Q2, v20)), v54);
    v22 = -(1.0 - v55);
  }

  v41 = 0x3FF0000000000000;
  v42 = 0u;
  v43 = 0u;
  v44 = 0x3FF0000000000000;
  v45 = 0u;
  v46 = 0u;
  v47 = 0x3FF0000000000000;
  v48 = 0u;
  v49 = 0u;
  v50 = 0x3FF0000000000000;
  v51 = v21;
  v52 = v54 * v22;
  v53 = 0;
  v28 = [UIColorEffect colorEffectMatrix:&v41];
  v58[0] = v28;
  v29 = [UIBlurEffect effectWithBlurRadius:30.0];
  v58[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  _visualEffectView2 = [(_UIGrabber *)self _visualEffectView];
  [_visualEffectView2 setBackgroundEffects:v30];

  LODWORD(v29) = [(_UIGrabber *)self _isBlurEnabled];
  _visualEffectView3 = [(_UIGrabber *)self _visualEffectView];
  [_visualEffectView3 setHidden:v29 ^ 1];

  if ([(_UIGrabber *)self _isBlurEnabled])
  {
    v33 = 0;
  }

  else
  {
    v33 = v17;
  }

  [(UIView *)self setBackgroundColor:v33];
  [(UIView *)self bounds];
  v34 = CGRectGetHeight(v63) * 0.5;
  layer = [(UIView *)self layer];
  [layer setCornerRadius:v34];

  [(UIView *)self bounds];
  v38 = v37 + -44.0;
  if (v37 + -44.0 > 0.0)
  {
    v38 = 0.0;
  }

  v39 = v38 * 0.5;
  v40 = v36 + -44.0;
  if (v36 + -44.0 > 0.0)
  {
    v40 = 0.0;
  }

  [(UIView *)self _setTouchInsets:v40 * 0.5, v39, v40 * 0.5, v39];
}

- (_UIGrabber)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIGrabber;
  v3 = [(UIControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _UIGrabberCommonInit(v3);
  }

  return v4;
}

- (_UIGrabber)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIGrabber;
  v3 = [(UIControl *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _UIGrabberCommonInit(v3);
  }

  return v4;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v3 = 36.0;
  v4 = 5.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(UIView *)self pointInside:event withEvent:test.x, test.y])
  {
    if (UIViewIgnoresTouchEvents(self))
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_setLumaTrackingEnabled:(BOOL)enabled
{
  if (self->__lumaTrackingEnabled != enabled)
  {
    enabledCopy = enabled;
    self->__lumaTrackingEnabled = enabled;
    _lumaTrackingBackdropView = [(_UIGrabber *)self _lumaTrackingBackdropView];
    [_lumaTrackingBackdropView setPaused:!enabledCopy];
  }
}

- (void)_setBackgroundLuminanceLevel:(unint64_t)level
{
  if (self->__backgroundLuminanceLevel != level)
  {
    self->__backgroundLuminanceLevel = level;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level
{
  [(_UIGrabber *)self _setBackgroundLuminanceLevel:level];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___UIGrabber_backgroundLumaView_didTransitionToLevel___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIView animateWithSpringDuration:0 bounce:v5 initialSpringVelocity:0 delay:0.21 options:0.0 animations:0.0 completion:0.0];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [(UIView *)self bounds:interaction];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self _touchInsets];
  v18 = [UIPointerRegion regionWithRect:0 identifier:v7 + v17, v9 + v14, v11 - (v17 + v15), v13 - (v14 + v16)];
  [v18 setLatchingAxes:2];

  return v18;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [[UITargetedPreview alloc] initWithView:self];
  [(UIView *)self center];
  v7 = v6;
  v9 = v8;
  _screen = [(UIView *)self _screen];
  [_screen scale];
  UIRectCenteredAboutPointScale(0.0, 0.0, 48.0, 13.0, v7, v9, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v20 = [UIPointerShape shapeWithRoundedRect:v13 cornerRadius:v15, v17, v19, CGRectGetHeight(v25) * 0.5];
  v21 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v5];
  v22 = [UIPointerStyle styleWithEffect:v21 shape:v20];

  return v22;
}

- (void)_setBlurEnabled:(BOOL)enabled
{
  if (self->__blurEnabled != enabled)
  {
    self->__blurEnabled = enabled;
    [(UIView *)self setNeedsLayout];
  }
}

@end