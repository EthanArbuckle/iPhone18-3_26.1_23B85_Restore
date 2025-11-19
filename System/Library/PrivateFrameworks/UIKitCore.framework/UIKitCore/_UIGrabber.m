@interface _UIGrabber
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (_UIGrabber)initWithCoder:(id)a3;
- (_UIGrabber)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_setBackgroundLuminanceLevel:(unint64_t)a3;
- (void)_setBlurEnabled:(BOOL)a3;
- (void)_setLumaTrackingEnabled:(BOOL)a3;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
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
  v7 = [(_UIGrabber *)self _lumaTrackingBackdropView];
  [v7 setFrame:{x, y, width, height}];

  LODWORD(v7) = [(_UIGrabber *)self _isBlurEnabled];
  v8 = [(_UIGrabber *)self _lumaTrackingBackdropView];
  [v8 setHidden:v7 ^ 1];

  [(UIView *)self bounds];
  v62 = CGRectInset(v61, 0.0, -5.0);
  v9 = v62.origin.x;
  v10 = v62.origin.y;
  v11 = v62.size.width;
  v12 = v62.size.height;
  v13 = [(_UIGrabber *)self _visualEffectView];
  [v13 setFrame:{v9, v10, v11, v12}];

  v14 = [(UIView *)self traitCollection];
  v15 = [(_UIGrabber *)self _backgroundLuminanceLevel];
  if (v15 - 1 <= 1)
  {
    v16 = [v14 _traitCollectionByReplacingNSIntegerValue:v15 forTraitToken:0x1EFE323B0];

    v14 = v16;
  }

  v17 = +[UIColor tertiaryLabelColor];
  v56 = 0.0;
  v57 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  v18 = [v17 resolvedColorWithTraitCollection:v14];
  [v18 getRed:&v57 green:&v56 blue:&v55 alpha:&v54];

  v19 = [v14 userInterfaceStyle];
  v20.f64[0] = v57;
  v20.f64[1] = v56;
  if (v19 == 2)
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
  v31 = [(_UIGrabber *)self _visualEffectView];
  [v31 setBackgroundEffects:v30];

  LODWORD(v29) = [(_UIGrabber *)self _isBlurEnabled];
  v32 = [(_UIGrabber *)self _visualEffectView];
  [v32 setHidden:v29 ^ 1];

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
  v35 = [(UIView *)self layer];
  [v35 setCornerRadius:v34];

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

- (_UIGrabber)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIGrabber;
  v3 = [(UIControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _UIGrabberCommonInit(v3);
  }

  return v4;
}

- (_UIGrabber)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIGrabber;
  v3 = [(UIControl *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _UIGrabberCommonInit(v3);
  }

  return v4;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v3 = 36.0;
  v4 = 5.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(UIView *)self pointInside:a4 withEvent:a3.x, a3.y])
  {
    if (UIViewIgnoresTouchEvents(self))
    {
      v5 = 0;
    }

    else
    {
      v5 = self;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setLumaTrackingEnabled:(BOOL)a3
{
  if (self->__lumaTrackingEnabled != a3)
  {
    v4 = a3;
    self->__lumaTrackingEnabled = a3;
    v5 = [(_UIGrabber *)self _lumaTrackingBackdropView];
    [v5 setPaused:!v4];
  }
}

- (void)_setBackgroundLuminanceLevel:(unint64_t)a3
{
  if (self->__backgroundLuminanceLevel != a3)
  {
    self->__backgroundLuminanceLevel = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  [(_UIGrabber *)self _setBackgroundLuminanceLevel:a4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___UIGrabber_backgroundLumaView_didTransitionToLevel___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIView animateWithSpringDuration:0 bounce:v5 initialSpringVelocity:0 delay:0.21 options:0.0 animations:0.0 completion:0.0];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [(UIView *)self bounds:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self _touchInsets];
  v18 = [UIPointerRegion regionWithRect:0 identifier:v7 + v17, v9 + v14, v11 - (v17 + v15), v13 - (v14 + v16)];
  [v18 setLatchingAxes:2];

  return v18;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [[UITargetedPreview alloc] initWithView:self];
  [(UIView *)self center];
  v7 = v6;
  v9 = v8;
  v10 = [(UIView *)self _screen];
  [v10 scale];
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

- (void)_setBlurEnabled:(BOOL)a3
{
  if (self->__blurEnabled != a3)
  {
    self->__blurEnabled = a3;
    [(UIView *)self setNeedsLayout];
  }
}

@end