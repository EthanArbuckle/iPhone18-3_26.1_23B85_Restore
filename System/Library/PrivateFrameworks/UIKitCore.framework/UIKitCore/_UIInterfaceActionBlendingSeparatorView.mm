@interface _UIInterfaceActionBlendingSeparatorView
- (_UIInterfaceActionBlendingSeparatorView)init;
- (_UIInterfaceActionBlendingSeparatorView)initWithTopLevelFilters:(id)filters compositingColors:(id)colors compositingFilterModes:(id)modes;
- (void)_updateContentDirectionalInsets;
- (void)setConstantSizedAxis:(int64_t)axis;
- (void)setHorizontalLineLeadingInset:(double)inset;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionBlendingSeparatorView

- (_UIInterfaceActionBlendingSeparatorView)initWithTopLevelFilters:(id)filters compositingColors:(id)colors compositingFilterModes:(id)modes
{
  v9.receiver = self;
  v9.super_class = _UIInterfaceActionBlendingSeparatorView;
  v5 = [(_UIBlendingHighlightView *)&v9 initWithTopLevelFilters:filters compositingColors:colors compositingFilterModes:modes];
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

- (void)setHorizontalLineLeadingInset:(double)inset
{
  if (self->_horizontalLineLeadingInset != inset)
  {
    self->_horizontalLineLeadingInset = inset;
    [(_UIInterfaceActionBlendingSeparatorView *)self _updateContentDirectionalInsets];
  }
}

- (void)setConstantSizedAxis:(int64_t)axis
{
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints setConstantSizedAxis:axis];

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
  constantSizedAxis = [(_UIInterfaceActionBlendingSeparatorView *)self constantSizedAxis];
  v4 = 0.0;
  if (constantSizedAxis == 1)
  {
    [(_UIInterfaceActionBlendingSeparatorView *)self horizontalLineLeadingInset];
    v4 = v5 + 0.0;
  }

  [(UIView *)self setDirectionalLayoutMargins:0.0, v4, 0.0, 0.0];
}

@end