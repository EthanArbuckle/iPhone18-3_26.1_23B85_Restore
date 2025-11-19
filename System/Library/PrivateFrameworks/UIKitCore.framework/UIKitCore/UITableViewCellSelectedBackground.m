@interface UITableViewCellSelectedBackground
- (void)layoutSubviews;
- (void)setMultiselect:(BOOL)a3;
- (void)setNoneStyleBackgroundColor:(id)a3;
- (void)setSelectionEffects:(id)a3;
- (void)setSelectionStyle:(int64_t)a3;
- (void)setSelectionTintColor:(id)a3;
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

    v4 = [(UIView *)self traitCollection];
    if ([v4 userInterfaceIdiom] == 3)
    {
      selectionStyle = self->_selectionStyle;
      if (selectionStyle == 1)
      {

LABEL_19:
        v6 = [(UIView *)self tintColor];
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
  v6 = *(&self->super.super.super.isa + v3);
LABEL_15:
  v7 = v6;
  [(UIView *)self setBackgroundColor:v6];
}

- (void)setMultiselect:(BOOL)a3
{
  if (self->_multiselect != a3)
  {
    self->_multiselect = a3;
    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
  }
}

- (void)setSelectionStyle:(int64_t)a3
{
  if (self->_selectionStyle != a3)
  {
    self->_selectionStyle = a3;
    [(UITableViewCellSelectedBackground *)self setSelectionTintColor:0];

    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
  }
}

- (void)setSelectionTintColor:(id)a3
{
  v5 = a3;
  if (self->_selectionTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectionTintColor, a3);
    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
    v5 = v6;
  }
}

- (void)setSelectionEffects:(id)a3
{
  v4 = a3;
  selectionEffectsView = self->_selectionEffectsView;
  v10 = v4;
  if (v4)
  {
    if (!selectionEffectsView)
    {
      v6 = [UIVisualEffectView alloc];
      [(UIView *)self bounds];
      v7 = [(UIVisualEffectView *)v6 initWithFrame:?];
      v8 = self->_selectionEffectsView;
      self->_selectionEffectsView = v7;

      [(UIView *)self addSubview:self->_selectionEffectsView];
      v4 = v10;
      selectionEffectsView = self->_selectionEffectsView;
    }

    [(UIVisualEffectView *)selectionEffectsView setBackgroundEffects:v4];
  }

  else
  {
    [(UIView *)selectionEffectsView removeFromSuperview];
    v9 = self->_selectionEffectsView;
    self->_selectionEffectsView = 0;
  }

  [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
}

- (void)setNoneStyleBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_noneStyleBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_noneStyleBackgroundColor, a3);
    [(UITableViewCellSelectedBackground *)self updateBackgroundColor];
    v5 = v6;
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