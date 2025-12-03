@interface UITableViewCellSelectedBackground
- (void)layoutSubviews;
- (void)setMultiselect:(BOOL)multiselect;
- (void)setNoneStyleBackgroundColor:(id)color;
- (void)setSelectionEffects:(id)effects;
- (void)setSelectionStyle:(int64_t)style;
- (void)setSelectionTintColor:(id)color;
- (void)tintColorDidChange;
- (void)updateBackgroundColor;
@end

@implementation UITableViewCellSelectedBackground

- (void)updateBackgroundColor
{
  if (self->_selectionEffectsView)
  {

    [(UIView *)self setBackgroundColor:0];
    return;
  }

  if (!self->_multiselect)
  {
    if (!self->_selectionStyle)
    {
      v3 = 448;
      goto LABEL_14;
    }

    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 3)
    {
      selectionStyle = self->_selectionStyle;
      if (selectionStyle == 1)
      {

LABEL_19:
        tintColor = [(UIView *)self tintColor];
        goto LABEL_15;
      }

      if (selectionStyle == 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v3 = 440;
    goto LABEL_14;
  }

  v3 = 432;
LABEL_14:
  tintColor = *(&self->super.super.super.isa + v3);
LABEL_15:
  v7 = tintColor;
  [(UIView *)self setBackgroundColor:tintColor];
}

- (void)setMultiselect:(BOOL)multiselect
{
  if (self->_multiselect != multiselect)
  {
    self->_multiselect = multiselect;
    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
  }
}

- (void)setSelectionStyle:(int64_t)style
{
  if (self->_selectionStyle != style)
  {
    self->_selectionStyle = style;
    [(UITableViewCellSelectedBackground *)self setSelectionTintColor:0];

    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
  }
}

- (void)setSelectionTintColor:(id)color
{
  colorCopy = color;
  if (self->_selectionTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_selectionTintColor, color);
    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
    colorCopy = v6;
  }
}

- (void)setSelectionEffects:(id)effects
{
  effectsCopy = effects;
  selectionEffectsView = self->_selectionEffectsView;
  v10 = effectsCopy;
  if (effectsCopy)
  {
    if (!selectionEffectsView)
    {
      v6 = [UIVisualEffectView alloc];
      [(UIView *)self bounds];
      v7 = [(UIVisualEffectView *)v6 initWithFrame:?];
      v8 = self->_selectionEffectsView;
      self->_selectionEffectsView = v7;

      [(UIView *)self addSubview:self->_selectionEffectsView];
      effectsCopy = v10;
      selectionEffectsView = self->_selectionEffectsView;
    }

    [(UIVisualEffectView *)selectionEffectsView setBackgroundEffects:effectsCopy];
  }

  else
  {
    [(UIView *)selectionEffectsView removeFromSuperview];
    v9 = self->_selectionEffectsView;
    self->_selectionEffectsView = 0;
  }

  [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
}

- (void)setNoneStyleBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_noneStyleBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_noneStyleBackgroundColor, color);
    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
    colorCopy = v6;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UITableViewCellSelectedBackground;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_selectionEffectsView setFrame:?];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UITableViewCellSelectedBackground;
  [(UIView *)&v3 tintColorDidChange];
  [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
}

@end