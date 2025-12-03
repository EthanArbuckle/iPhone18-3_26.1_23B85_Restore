@interface UIPrintPreviewContainerView
- (void)layoutSubviews;
@end

@implementation UIPrintPreviewContainerView

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = UIPrintPreviewContainerView;
  [(UIPrintPreviewContainerView *)&v19 layoutSubviews];
  layoutGlassButton = [(UIPrintPreviewContainerView *)self layoutGlassButton];

  if (layoutGlassButton)
  {
    usingCompactPreview = [(UIPrintPreviewContainerView *)self usingCompactPreview];
    if (usingCompactPreview)
    {
      v5 = 20.0;
    }

    else
    {
      v5 = 8.0;
    }

    if (usingCompactPreview)
    {
      v6 = 20.0;
    }

    else
    {
      v6 = -6.0;
    }

    layoutGlassButtonLeadingConstraint = [(UIPrintPreviewContainerView *)self layoutGlassButtonLeadingConstraint];

    if (layoutGlassButtonLeadingConstraint)
    {
      layoutGlassButtonLeadingConstraint2 = [(UIPrintPreviewContainerView *)self layoutGlassButtonLeadingConstraint];
      [layoutGlassButtonLeadingConstraint2 setConstant:v5];
    }

    else
    {
      layoutGlassButton2 = [(UIPrintPreviewContainerView *)self layoutGlassButton];
      leadingAnchor = [layoutGlassButton2 leadingAnchor];
      leadingAnchor2 = [(UIPrintPreviewContainerView *)self leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
      [(UIPrintPreviewContainerView *)self setLayoutGlassButtonLeadingConstraint:v12];

      layoutGlassButtonLeadingConstraint2 = [(UIPrintPreviewContainerView *)self layoutGlassButtonLeadingConstraint];
      [layoutGlassButtonLeadingConstraint2 setActive:1];
    }

    layoutGlassButtonVerticalConstraint = [(UIPrintPreviewContainerView *)self layoutGlassButtonVerticalConstraint];

    if (layoutGlassButtonVerticalConstraint)
    {
      layoutGlassButtonVerticalConstraint2 = [(UIPrintPreviewContainerView *)self layoutGlassButtonVerticalConstraint];
      [layoutGlassButtonVerticalConstraint2 setConstant:v6];
    }

    else
    {
      if ([(UIPrintPreviewContainerView *)self usingCompactPreview])
      {
        bottomAnchor = [(UIPrintPreviewContainerView *)self bottomAnchor];
        layoutGlassButton3 = [(UIPrintPreviewContainerView *)self layoutGlassButton];
        [layoutGlassButton3 bottomAnchor];
      }

      else
      {
        bottomAnchor = [(UIPrintPreviewContainerView *)self topAnchor];
        layoutGlassButton3 = [(UIPrintPreviewContainerView *)self layoutGlassButton];
        [layoutGlassButton3 topAnchor];
      }
      v17 = ;
      v18 = [bottomAnchor constraintEqualToAnchor:v17 constant:v6];
      [(UIPrintPreviewContainerView *)self setLayoutGlassButtonVerticalConstraint:v18];

      layoutGlassButtonVerticalConstraint2 = [(UIPrintPreviewContainerView *)self layoutGlassButtonVerticalConstraint];
      [layoutGlassButtonVerticalConstraint2 setActive:1];
    }
  }
}

@end