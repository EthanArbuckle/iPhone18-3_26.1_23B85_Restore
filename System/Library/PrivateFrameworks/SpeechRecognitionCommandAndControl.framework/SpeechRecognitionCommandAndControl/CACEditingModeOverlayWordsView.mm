@interface CACEditingModeOverlayWordsView
- (CACEditingModeOverlayWordsView)initWithFrame:(CGRect)frame;
- (void)setLabels:(id)labels;
@end

@implementation CACEditingModeOverlayWordsView

- (CACEditingModeOverlayWordsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = CACEditingModeOverlayWordsView;
  v7 = [(CACEditingModeOverlayWordsView *)&v13 initWithFrame:?];
  height = [CACOverlayContainerView badgeViewContainerWithFrame:0 usingContrast:x, y, width, height];
  badgeContainer = v7->_badgeContainer;
  v7->_badgeContainer = height;

  height2 = [CACOverlayContainerView badgeViewContainerWithFrame:1 usingContrast:x, y, width, height];
  contrastedBadgeContainer = v7->_contrastedBadgeContainer;
  v7->_contrastedBadgeContainer = height2;

  [(CACEditingModeOverlayWordsView *)v7 addSubview:v7->_contrastedBadgeContainer];
  [(CACEditingModeOverlayWordsView *)v7 addSubview:v7->_badgeContainer];
  return v7;
}

- (void)setLabels:(id)labels
{
  v43 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  subviews = [(UIView *)self->_badgeContainer subviews];
  v6 = [subviews countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v37 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [subviews countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  subviews2 = [(UIView *)self->_contrastedBadgeContainer subviews];
  v11 = [subviews2 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(subviews2);
        }

        [*(*(&v33 + 1) + 8 * j) removeFromSuperview];
      }

      v12 = [subviews2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v12);
  }

  if ([labelsCopy count])
  {
    v15 = 0;
    do
    {
      v16 = [labelsCopy objectAtIndexedSubscript:v15];
      label = [v16 label];

      +[CACLabeledBadgeView sizeOfBadgeGivenNumberOfDisplayedDigits:arrowOrientation:badgePresentation:badgeIndicator:contrasted:](CACLabeledBadgeView, "sizeOfBadgeGivenNumberOfDisplayedDigits:arrowOrientation:badgePresentation:badgeIndicator:contrasted:", [label length], 0, 0, 0, UIAccessibilityDarkerSystemColorsEnabled());
      v19 = v18;
      v21 = v20;
      v22 = [labelsCopy objectAtIndexedSubscript:v15];
      overlayType = self->_overlayType;
      v24 = overlayType & 0xF;
      [v22 frame];
      v26 = v25;
      [v22 frame];
      v28 = v27;
      if (overlayType <= 3 && ((0xEu >> v24) & 1) != 0)
      {
        [v22 frame];
        v26 = fmax(v29 - v19, 0.0);
      }

      if (((overlayType < 4) & (2u >> v24)) != 0)
      {
        [v22 frame];
        v28 = CGRectGetMidY(v44) + v21 * -0.5;
      }

      v30 = [[CACLabeledBadgeView alloc] initWithFrame:label label:0 arrowOrientation:0 badgePresentation:0 badgeIndicator:v26, v28, v19, v21];
      [(UIView *)self->_badgeContainer addSubview:v30];
      if (UIAccessibilityDarkerSystemColorsEnabled())
      {
        contrastedBadgeContainer = self->_contrastedBadgeContainer;
        contrastedCopy = [(CACLabeledBadgeView *)v30 contrastedCopy];
        [(UIView *)contrastedBadgeContainer addSubview:contrastedCopy];
      }

      ++v15;
    }

    while (v15 < [labelsCopy count]);
  }
}

@end