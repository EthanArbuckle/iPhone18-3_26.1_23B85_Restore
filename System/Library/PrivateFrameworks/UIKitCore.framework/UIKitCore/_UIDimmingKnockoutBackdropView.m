@interface _UIDimmingKnockoutBackdropView
- (_UIDimmingKnockoutBackdropView)initWithStyle:(int64_t)a3;
- (id)_dimmingKnockoutBackgroundColorForBackdropStyle:(int64_t)a3;
- (id)_dimmingKnockoutFilterForBackdropStyle:(int64_t)a3;
- (id)_visualEffectForStyle:(int64_t)a3;
- (void)_configureViewsWithStyle:(int64_t)a3;
- (void)_updateBackdropViewWithStyle:(int64_t)a3 alpha:(double)a4;
- (void)_updateCornerRadius;
- (void)setAlpha:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setRoundedCornerPosition:(unint64_t)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation _UIDimmingKnockoutBackdropView

- (_UIDimmingKnockoutBackdropView)initWithStyle:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = _UIDimmingKnockoutBackdropView;
  v4 = [(UIView *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 alpha];
    v5->_alpha = v6;
    v5->_style = a3;
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UIView *)v5 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = [(UIView *)v5 layer];
    [v8 setAllowsGroupOpacity:0];

    [(_UIDimmingKnockoutBackdropView *)v5 _configureViewsWithStyle:a3];
  }

  return v5;
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(_UIDimmingKnockoutBackdropView *)self _configureViewsWithStyle:?];
  }
}

- (void)_configureViewsWithStyle:(int64_t)a3
{
  dimmingKnockoutView = self->dimmingKnockoutView;
  if (!a3 || dimmingKnockoutView)
  {
    if (!a3 && dimmingKnockoutView)
    {
      [(UIView *)dimmingKnockoutView removeFromSuperview];
      v8 = self->dimmingKnockoutView;
      self->dimmingKnockoutView = 0;
    }
  }

  else
  {
    v6 = objc_alloc_init(UIView);
    v7 = self->dimmingKnockoutView;
    self->dimmingKnockoutView = v6;

    [(UIView *)self insertSubview:self->dimmingKnockoutView atIndex:0];
    [(UIView *)self bounds];
    [(UIView *)self->dimmingKnockoutView setFrame:?];
    [(UIView *)self->dimmingKnockoutView setAutoresizingMask:18];
  }

  v9 = [(UIView *)self->dimmingKnockoutView layer];
  v10 = [(_UIDimmingKnockoutBackdropView *)self _dimmingKnockoutFilterForBackdropStyle:a3];
  [v9 setCompositingFilter:v10];

  v11 = self->dimmingKnockoutView;
  v12 = [(_UIDimmingKnockoutBackdropView *)self _dimmingKnockoutBackgroundColorForBackdropStyle:a3];
  [(UIView *)v11 setBackgroundColor:v12];

  if (!self->backdropView)
  {
    v13 = [UIVisualEffectView alloc];
    v14 = [(_UIDimmingKnockoutBackdropView *)self _visualEffectForStyle:a3];
    v15 = [(UIVisualEffectView *)v13 initWithEffect:v14];
    backdropView = self->backdropView;
    self->backdropView = v15;

    [(UIView *)self addSubview:self->backdropView];
    [(UIView *)self bounds];
    [(UIView *)self->backdropView setFrame:?];
    [(UIView *)self->backdropView setAutoresizingMask:18];
  }

  alpha = self->_alpha;

  [(_UIDimmingKnockoutBackdropView *)self _updateBackdropViewWithStyle:a3 alpha:alpha];
}

- (void)_updateBackdropViewWithStyle:(int64_t)a3 alpha:(double)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  backdropView = self->backdropView;
  if (a4 == 0.0)
  {
    [(UIVisualEffectView *)self->backdropView setEffect:0];
  }

  else
  {
    v8 = [(_UIDimmingKnockoutBackdropView *)self _visualEffectForStyle:a3];
    [(UIVisualEffectView *)backdropView setEffect:v8];
  }

  v9 = [(_UIDimmingKnockoutBackdropView *)self _vibrancyEffectForStyle:a3];
  v10 = v9;
  if (a4 > 0.0 && v9)
  {
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(UIVisualEffectView *)self->backdropView setContentEffects:v11];

    v12 = +[UIColor whiteColor];
    v13 = [(UIVisualEffectView *)self->backdropView contentView];
    [v13 setBackgroundColor:v12];
  }

  else
  {
    [(UIVisualEffectView *)self->backdropView setContentEffects:MEMORY[0x1E695E0F0]];
    v14 = [(UIVisualEffectView *)self->backdropView contentView];
    [v14 setBackgroundColor:0];
  }
}

- (id)_visualEffectForStyle:(int64_t)a3
{
  v3 = 0;
  v11[4] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_11;
      }

      v4 = 0;
    }

    else
    {
      v4 = 1200;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v4 = 1;
LABEL_10:
    v3 = [UIBlurEffect effectWithStyle:v4];
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v5 = [UIBlurEffect _effectWithBlurRadius:18.0 scale:0.25];
    v6 = [UIColorEffect _colorEffectSourceOver:0.175, 0.175, 0.175, 0.35];
    v7 = [UIColorEffect _colorEffectSourceOver:0.0, 0.0, 0.0, 0.35];
    v8 = [_UIZoomEffect zoomEffectWithMagnitude:0.025];
    v11[0] = v5;
    v11[1] = v6;
    v11[2] = v7;
    v11[3] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
    v3 = [UIVisualEffect effectCombiningEffects:v9];
  }

LABEL_11:

  return v3;
}

- (id)_dimmingKnockoutFilterForBackdropStyle:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979CD0], v3}];
  }

  return v5;
}

- (id)_dimmingKnockoutBackgroundColorForBackdropStyle:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v4 = 0.0;
      goto LABEL_7;
    case 2:
      v4 = 1.0;
LABEL_7:
      v3 = [UIColor colorWithWhite:v4 alpha:0.5];
      break;
    case 1:
      v3 = +[UIColor whiteColor];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)setAlpha:(double)a3
{
  if (self->_alpha != a3)
  {
    self->_alpha = a3;
    [(_UIDimmingKnockoutBackdropView *)self _updateBackdropViewWithStyle:[(_UIDimmingKnockoutBackdropView *)self style] alpha:a3];
    dimmingKnockoutView = self->dimmingKnockoutView;

    [(UIView *)dimmingKnockoutView setAlpha:a3];
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIDimmingKnockoutBackdropView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIDimmingKnockoutBackdropView *)self _updateCornerRadius];
}

- (void)setRoundedCornerPosition:(unint64_t)a3
{
  v5 = [(UIView *)self layer];
  [v5 setMaskedCorners:a3];

  v6 = [(UIView *)self->backdropView layer];
  [v6 setMaskedCorners:a3];

  v7 = [(UIView *)self->dimmingKnockoutView layer];
  [v7 setMaskedCorners:a3];

  [(_UIDimmingKnockoutBackdropView *)self _updateCornerRadius];
}

- (void)_updateCornerRadius
{
  currentCornerRadius = self->_currentCornerRadius;
  [(UIView *)self->backdropView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self->backdropView layer];
  v13 = _UIClampedCornerRadius([v12 maskedCorners], currentCornerRadius, v5, v7, v9, v11);

  v14.receiver = self;
  v14.super_class = _UIDimmingKnockoutBackdropView;
  [(UIView *)&v14 _setContinuousCornerRadius:v13];
  [(UIVisualEffectView *)self->backdropView _setContinuousCornerRadius:v13];
  [(UIView *)self->dimmingKnockoutView _setContinuousCornerRadius:v13];
  [(UIView *)self setClipsToBounds:v13 > 0.0];
  [(UIView *)self->backdropView setClipsToBounds:v13 > 0.0];
  [(UIView *)self->dimmingKnockoutView setClipsToBounds:v13 > 0.0];
}

@end