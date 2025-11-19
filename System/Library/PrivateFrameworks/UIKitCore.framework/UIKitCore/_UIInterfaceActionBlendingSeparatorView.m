@interface _UIInterfaceActionBlendingSeparatorView
- (_UIInterfaceActionBlendingSeparatorView)init;
- (_UIInterfaceActionBlendingSeparatorView)initWithTopLevelFilters:(id)a3 compositingColors:(id)a4 compositingFilterModes:(id)a5;
- (void)_updateContentDirectionalInsets;
- (void)setConstantSizedAxis:(int64_t)a3;
- (void)setHorizontalLineLeadingInset:(double)a3;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionBlendingSeparatorView

- (_UIInterfaceActionBlendingSeparatorView)initWithTopLevelFilters:(id)a3 compositingColors:(id)a4 compositingFilterModes:(id)a5
{
  v9.receiver = self;
  v9.super_class = _UIInterfaceActionBlendingSeparatorView;
  v5 = [(_UIBlendingHighlightView *)&v9 initWithTopLevelFilters:a3 compositingColors:a4 compositingFilterModes:a5];
  if (v5)
  {
    v6 = [[_UIInterfaceActionSeparatorConstraintController alloc] initWithSeparatorView:v5];
    separatorViewConstraints = v5->_separatorViewConstraints;
    v5->_separatorViewConstraints = v6;
  }

  return v5;
}

- (_UIInterfaceActionBlendingSeparatorView)init
{
  v3 = +[UIColor _vibrantLightDividerBurnColor];
  v4 = +[UIColor _vibrantLightDividerDarkeningColor];
  v7.receiver = self;
  v7.super_class = _UIInterfaceActionBlendingSeparatorView;
  v5 = [(_UIBlendingHighlightView *)&v7 initWithCompositingBurnColor:v3 plusDColor:v4];

  return v5;
}

- (void)setHorizontalLineLeadingInset:(double)a3
{
  if (self->_horizontalLineLeadingInset != a3)
  {
    self->_horizontalLineLeadingInset = a3;
    [(_UIInterfaceActionBlendingSeparatorView *)self _updateContentDirectionalInsets];
  }
}

- (void)setConstantSizedAxis:(int64_t)a3
{
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints setConstantSizedAxis:a3];

  [(_UIInterfaceActionBlendingSeparatorView *)self _updateContentDirectionalInsets];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionBlendingSeparatorView;
  [(UIView *)&v3 updateConstraints];
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints separatorViewDidUpdateConstraints];
}

- (void)_updateContentDirectionalInsets
{
  v3 = [(_UIInterfaceActionBlendingSeparatorView *)self constantSizedAxis];
  v4 = 0.0;
  if (v3 == 1)
  {
    [(_UIInterfaceActionBlendingSeparatorView *)self horizontalLineLeadingInset];
    v4 = v5 + 0.0;
  }

  [(UIView *)self setDirectionalLayoutMargins:0.0, v4, 0.0, 0.0];
}

@end