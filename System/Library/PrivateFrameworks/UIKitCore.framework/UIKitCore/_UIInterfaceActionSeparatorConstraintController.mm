@interface _UIInterfaceActionSeparatorConstraintController
- (UIInterfaceActionVisualSeparatorDisplaying)separatorView;
- (_UIInterfaceActionSeparatorConstraintController)initWithSeparatorView:(id)view;
- (double)constantAxisDimension;
- (void)_updateConstantSizedConstraints;
- (void)setConstantAxisDimension:(double)dimension;
- (void)setConstantSizedAxis:(int64_t)axis;
@end

@implementation _UIInterfaceActionSeparatorConstraintController

- (_UIInterfaceActionSeparatorConstraintController)initWithSeparatorView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = _UIInterfaceActionSeparatorConstraintController;
  v5 = [(_UIInterfaceActionSeparatorConstraintController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_separatorView, viewCopy);
    widthAnchor = [viewCopy widthAnchor];
    v8 = [widthAnchor constraintEqualToConstant:0.0];
    fixedWidthConstraint = v6->_fixedWidthConstraint;
    v6->_fixedWidthConstraint = v8;

    [(NSLayoutConstraint *)v6->_fixedWidthConstraint setIdentifier:@"verticalSeparatorWidth"];
    heightAnchor = [viewCopy heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:0.0];
    fixedHeightConstraint = v6->_fixedHeightConstraint;
    v6->_fixedHeightConstraint = v11;

    [(NSLayoutConstraint *)v6->_fixedHeightConstraint setIdentifier:@"horizontalSeparatorHeight"];
    LODWORD(v13) = 1148829696;
    [(NSLayoutConstraint *)v6->_fixedHeightConstraint setPriority:v13];
    v6->_constantSizedAxis = 1;
    v6->_constantAxisDimension = -1.0;
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [viewCopy setNeedsUpdateConstraints];
    [(_UIInterfaceActionSeparatorConstraintController *)v6 _updateConstantSizedConstraints];
  }

  return v6;
}

- (void)setConstantSizedAxis:(int64_t)axis
{
  if (self->_constantSizedAxis != axis)
  {
    self->_constantSizedAxis = axis;
    WeakRetained = objc_loadWeakRetained(&self->_separatorView);
    if ([(_UIInterfaceActionSeparatorConstraintController *)self _isFixedWidth])
    {
      v5 = @"separator|";
    }

    else
    {
      v5 = @"separator__";
    }

    [WeakRetained _setLayoutDebuggingIdentifier:v5];
    [WeakRetained setNeedsUpdateConstraints];
    [WeakRetained invalidateIntrinsicContentSize];
  }
}

- (void)setConstantAxisDimension:(double)dimension
{
  if (self->_constantAxisDimension != dimension)
  {
    self->_constantAxisDimension = dimension;
    WeakRetained = objc_loadWeakRetained(&self->_separatorView);
    [WeakRetained setNeedsUpdateConstraints];
  }
}

- (double)constantAxisDimension
{
  result = self->_constantAxisDimension;
  if (result < 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_separatorView);
    traitCollection = [WeakRetained traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      [WeakRetained _currentScreenScale];
    }

    UIRoundToViewScale(WeakRetained);
    v7 = v6;

    return v7;
  }

  return result;
}

- (void)_updateConstantSizedConstraints
{
  if ([(_UIInterfaceActionSeparatorConstraintController *)self _isFixedWidth])
  {
    v3 = 32;
  }

  else
  {
    v3 = 24;
  }

  v6 = *(&self->super.isa + v3);
  if ([(_UIInterfaceActionSeparatorConstraintController *)self _isFixedWidth])
  {
    v4 = 24;
  }

  else
  {
    v4 = 32;
  }

  v5 = *(&self->super.isa + v4);
  [v5 setActive:0];
  [(_UIInterfaceActionSeparatorConstraintController *)self constantAxisDimension];
  [v6 setConstant:?];
  [v6 setActive:1];
}

- (UIInterfaceActionVisualSeparatorDisplaying)separatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_separatorView);

  return WeakRetained;
}

@end