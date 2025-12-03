@interface _UIInterfaceActionVibrantSeparatorView
- (_UIInterfaceActionVibrantSeparatorView)init;
- (void)_setupEffectView;
- (void)_updateContentDirectionalInsets;
- (void)setConstantAxisDimension:(double)dimension;
- (void)setConstantSizedAxis:(int64_t)axis;
- (void)setHorizontalLineLeadingInset:(double)inset;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionVibrantSeparatorView

- (_UIInterfaceActionVibrantSeparatorView)init
{
  v6.receiver = self;
  v6.super_class = _UIInterfaceActionVibrantSeparatorView;
  v2 = [(UIView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [[_UIInterfaceActionSeparatorConstraintController alloc] initWithSeparatorView:v2];
    separatorViewConstraints = v2->_separatorViewConstraints;
    v2->_separatorViewConstraints = v3;

    [(_UIInterfaceActionVibrantSeparatorView *)v2 _setupEffectView];
  }

  return v2;
}

- (void)_setupEffectView
{
  v8 = [UIBlurEffect effectWithStyle:1200];
  v3 = [UIVibrancyEffect _effectForBlurEffect:v8 vibrancyStyle:120];
  v4 = [[UIVisualEffectView alloc] initWithEffect:v3];
  effectView = self->_effectView;
  self->_effectView = v4;

  v6 = +[UIColor whiteColor];
  contentView = [(UIVisualEffectView *)self->_effectView contentView];
  [contentView setBackgroundColor:v6];

  [(UIView *)self bounds];
  [(UIView *)self->_effectView setFrame:?];
  [(UIView *)self->_effectView setAutoresizingMask:18];
  [(UIView *)self addSubview:self->_effectView];
}

- (void)setConstantAxisDimension:(double)dimension
{
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints setConstantAxisDimension:?];
  if (dimension >= 0.0)
  {
    v6 = [UIColor colorWithWhite:1.0 alpha:0.3];
    contentView = [(UIVisualEffectView *)self->_effectView contentView];
    [contentView setBackgroundColor:v6];
  }
}

- (void)setHorizontalLineLeadingInset:(double)inset
{
  if (self->_horizontalLineLeadingInset != inset)
  {
    self->_horizontalLineLeadingInset = inset;
    [(_UIInterfaceActionVibrantSeparatorView *)self _updateContentDirectionalInsets];
  }
}

- (void)setConstantSizedAxis:(int64_t)axis
{
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints setConstantSizedAxis:axis];

  [(_UIInterfaceActionVibrantSeparatorView *)self _updateContentDirectionalInsets];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionVibrantSeparatorView;
  [(UIView *)&v3 updateConstraints];
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints separatorViewDidUpdateConstraints];
}

- (void)_updateContentDirectionalInsets
{
  constantSizedAxis = [(_UIInterfaceActionVibrantSeparatorView *)self constantSizedAxis];
  v4 = 0.0;
  if (constantSizedAxis == 1)
  {
    [(_UIInterfaceActionVibrantSeparatorView *)self horizontalLineLeadingInset];
    v4 = v5;
  }

  [(UIView *)self setDirectionalLayoutMargins:0.0, v4, 0.0, 0.0];
}

@end