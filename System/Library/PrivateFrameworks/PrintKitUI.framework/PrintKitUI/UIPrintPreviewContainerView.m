@interface UIPrintPreviewContainerView
- (void)layoutSubviews;
@end

@implementation UIPrintPreviewContainerView

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = UIPrintPreviewContainerView;
  [(UIPrintPreviewContainerView *)&v19 layoutSubviews];
  v3 = [(UIPrintPreviewContainerView *)self layoutGlassButton];

  if (v3)
  {
    v4 = [(UIPrintPreviewContainerView *)self usingCompactPreview];
    if (v4)
    {
      v5 = 20.0;
    }

    else
    {
      v5 = 8.0;
    }

    if (v4)
    {
      v6 = 20.0;
    }

    else
    {
      v6 = -6.0;
    }

    v7 = [(UIPrintPreviewContainerView *)self layoutGlassButtonLeadingConstraint];

    if (v7)
    {
      v8 = [(UIPrintPreviewContainerView *)self layoutGlassButtonLeadingConstraint];
      [v8 setConstant:v5];
    }

    else
    {
      v9 = [(UIPrintPreviewContainerView *)self layoutGlassButton];
      v10 = [v9 leadingAnchor];
      v11 = [(UIPrintPreviewContainerView *)self leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:v5];
      [(UIPrintPreviewContainerView *)self setLayoutGlassButtonLeadingConstraint:v12];

      v8 = [(UIPrintPreviewContainerView *)self layoutGlassButtonLeadingConstraint];
      [v8 setActive:1];
    }

    v13 = [(UIPrintPreviewContainerView *)self layoutGlassButtonVerticalConstraint];

    if (v13)
    {
      v14 = [(UIPrintPreviewContainerView *)self layoutGlassButtonVerticalConstraint];
      [v14 setConstant:v6];
    }

    else
    {
      if ([(UIPrintPreviewContainerView *)self usingCompactPreview])
      {
        v15 = [(UIPrintPreviewContainerView *)self bottomAnchor];
        v16 = [(UIPrintPreviewContainerView *)self layoutGlassButton];
        [v16 bottomAnchor];
      }

      else
      {
        v15 = [(UIPrintPreviewContainerView *)self topAnchor];
        v16 = [(UIPrintPreviewContainerView *)self layoutGlassButton];
        [v16 topAnchor];
      }
      v17 = ;
      v18 = [v15 constraintEqualToAnchor:v17 constant:v6];
      [(UIPrintPreviewContainerView *)self setLayoutGlassButtonVerticalConstraint:v18];

      v14 = [(UIPrintPreviewContainerView *)self layoutGlassButtonVerticalConstraint];
      [v14 setActive:1];
    }
  }
}

@end