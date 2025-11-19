@interface SBTraitsOrientedContentViewControllerView
- (BOOL)_counterTransformedToIdentityForContainerChange;
- (CGRect)contentViewBoundsInReferenceSpace;
- (NSString)description;
- (SBTraitsOrientedContentViewControllerView)initWithFrame:(CGRect)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_setDebugColorsEnabled:(BOOL)a3;
- (void)addOverlayView:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundView:(id)a3;
- (void)setContainerOrientation:(int64_t)a3;
- (void)setContentOrientation:(int64_t)a3;
- (void)setContentView:(id)a3;
- (void)setContentViewBoundsInReferenceSpace:(CGRect)a3;
@end

@implementation SBTraitsOrientedContentViewControllerView

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = SBTraitsOrientedContentViewControllerView;
  [(SBTraitsOrientedContentViewControllerView *)&v31 layoutSubviews];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 fixedCoordinateSpace];
  v5 = [SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:1 withReferenceCoordinateSpace:v4 inOrientation:1];

  v6 = [SBSceneLayoutCoordinateSpace coordinateSpaceForFrame:v5 withinCoordinateSpace:self->_contentViewBoundsInReferenceSpace.origin.x, self->_contentViewBoundsInReferenceSpace.origin.y, self->_contentViewBoundsInReferenceSpace.size.width, self->_contentViewBoundsInReferenceSpace.size.height];
  v7 = [SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:self->_contentOrientation withReferenceCoordinateSpace:v6 inOrientation:1];
  contentRotationView = self->_contentRotationView;
  [v7 bounds];
  [(SBTraitsDirectionalRotationView *)contentRotationView setBounds:?];
  contentView = self->_contentView;
  [(SBTraitsDirectionalRotationView *)self->_contentRotationView bounds];
  [(UIView *)contentView setBounds:?];
  overlayView = self->_overlayView;
  [v7 bounds];
  [(UIView *)overlayView setBounds:?];
  backgroundView = self->_backgroundView;
  [v7 bounds];
  [(UIView *)backgroundView setBounds:?];
  [(_UIDirectionalRotationView *)self->_contentRotationView setCounterTransformView:[(SBTraitsOrientedContentViewControllerView *)self _counterTransformedToIdentityForContainerChange]];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  SBFTransformFromOrientationToOrientation();
  v12 = self->_contentRotationView;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  [(SBTraitsDirectionalRotationView *)v12 setTransform:&v25];
  v13 = self->_backgroundView;
  v25 = v28;
  v26 = v29;
  v27 = v30;
  [(UIView *)v13 setTransform:&v25];
  v14 = self->_overlayView;
  v25 = v28;
  v26 = v29;
  v27 = v30;
  [(UIView *)v14 setTransform:&v25];
  self->_previousContainerLayoutOrientation = self->_containerOrientation;
  self->_previousContentLayoutOrientation = self->_contentOrientation;
  v15 = self->_contentRotationView;
  [(SBTraitsOrientedContentViewControllerView *)self bounds];
  UIRectGetCenter();
  [(SBTraitsDirectionalRotationView *)v15 setCenter:?];
  v16 = self->_contentView;
  [(SBTraitsDirectionalRotationView *)self->_contentRotationView bounds];
  UIRectGetCenter();
  [(UIView *)v16 setCenter:?];
  v17 = self->_backgroundView;
  [(SBTraitsOrientedContentViewControllerView *)self bounds];
  UIRectGetCenter();
  [(UIView *)v17 setCenter:?];
  v18 = self->_overlayView;
  [(SBTraitsOrientedContentViewControllerView *)self bounds];
  UIRectGetCenter();
  [(UIView *)v18 setCenter:?];
  placeholderLabel = self->_placeholderLabel;
  if (placeholderLabel)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = BSInterfaceOrientationDescription();
    v22 = BSInterfaceOrientationDescription();
    v23 = [v20 stringWithFormat:@"<%p>\ncontainer:\n%@\n\ncontent:\n%@", self, v21, v22];
    [(UILabel *)placeholderLabel setText:v23];

    [(UILabel *)self->_placeholderLabel sizeToFit];
    v24 = self->_placeholderLabel;
    [(UIView *)self->_contentView bounds];
    UIRectGetCenter();
    [(UILabel *)v24 setCenter:?];
  }
}

- (BOOL)_counterTransformedToIdentityForContainerChange
{
  previousContainerLayoutOrientation = self->_previousContainerLayoutOrientation;
  containerOrientation = self->_containerOrientation;
  if (previousContainerLayoutOrientation == containerOrientation)
  {
    return 0;
  }

  previousContentLayoutOrientation = self->_previousContentLayoutOrientation;
  if (previousContentLayoutOrientation != self->_contentOrientation)
  {
    return 0;
  }

  v5 = (previousContainerLayoutOrientation - 1) <= 1 && (previousContentLayoutOrientation - 1) < 2;
  if ((previousContainerLayoutOrientation - 3) <= 1)
  {
    v6 = (previousContentLayoutOrientation - 3) < 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = previousContainerLayoutOrientation != previousContentLayoutOrientation && v6;
  return previousContentLayoutOrientation == containerOrientation && v7;
}

- (SBTraitsOrientedContentViewControllerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = SBTraitsOrientedContentViewControllerView;
  v7 = [(SBTraitsOrientedContentViewControllerView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [[SBTraitsDirectionalRotationView alloc] initWithFrame:x, y, width, height];
    contentRotationView = v7->_contentRotationView;
    v7->_contentRotationView = v8;

    [(SBTraitsOrientedContentViewControllerView *)v7 addSubview:v7->_contentRotationView];
    [(SBTraitsOrientedContentViewControllerView *)v7 setContentView:0];
    [(SBTraitsOrientedContentViewControllerView *)v7 setContentViewBoundsInReferenceSpace:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  return v7;
}

- (void)setContentView:(id)a3
{
  v4 = a3;
  if (!v4 || self->_contentView != v4)
  {
    v23 = v4;
    if (v4)
    {
      [(SBTraitsOrientedContentViewControllerView *)self bs_setHitTestingDisabled:0];
      v5 = [(SBTraitsOrientedContentViewControllerView *)self window];
      [v5 bs_setHitTestingDisabled:0];

      [(UIView *)self->_contentView removeFromSuperview];
      [(UILabel *)self->_placeholderLabel removeFromSuperview];
      placeholderLabel = self->_placeholderLabel;
      self->_placeholderLabel = 0;

      contentView = self->_contentView;
      self->_contentView = 0;

      v8 = v23;
      v9 = self->_contentView;
      self->_contentView = v8;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277D65F80]);
      v11 = *MEMORY[0x277CBF3A0];
      v12 = *(MEMORY[0x277CBF3A0] + 8);
      v13 = *(MEMORY[0x277CBF3A0] + 16);
      v14 = *(MEMORY[0x277CBF3A0] + 24);
      v15 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], v12, v13, v14}];
      v16 = self->_contentView;
      self->_contentView = v15;

      v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
      v18 = self->_placeholderLabel;
      self->_placeholderLabel = v17;

      v19 = self->_placeholderLabel;
      v20 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)v19 setTextColor:v20];

      v21 = self->_placeholderLabel;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p>", self];
      [(UILabel *)v21 setText:v22];

      [(UILabel *)self->_placeholderLabel setNumberOfLines:8];
      [(UILabel *)self->_placeholderLabel sizeToFit];
      [(UIView *)self->_contentView addSubview:self->_placeholderLabel];
      [(SBTraitsOrientedContentViewControllerView *)self bs_setHitTestingDisabled:1];
      v9 = [(SBTraitsOrientedContentViewControllerView *)self window];
      [v9 bs_setHitTestingDisabled:1];
    }

    [(SBTraitsOrientedContentViewControllerView *)self _setDebugColorsEnabled:v23 == 0];
    [(SBTraitsDirectionalRotationView *)self->_contentRotationView addSubview:self->_contentView];
    [(SBTraitsOrientedContentViewControllerView *)self setNeedsLayout];
    v4 = v23;
  }
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v8 = v5;
    if (backgroundView)
    {
      [(UIView *)backgroundView removeFromSuperview];
      v7 = self->_backgroundView;
      self->_backgroundView = 0;
    }

    objc_storeStrong(&self->_backgroundView, a3);
    v5 = v8;
    if (v8)
    {
      [(SBTraitsOrientedContentViewControllerView *)self insertSubview:self->_backgroundView atIndex:0];
      v5 = v8;
    }
  }
}

- (void)addOverlayView:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_overlayView)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    overlayView = self->_overlayView;
    self->_overlayView = v6;

    [(SBTraitsOrientedContentViewControllerView *)self addSubview:self->_overlayView];
    [(SBTraitsOrientedContentViewControllerView *)self bringSubviewToFront:self->_overlayView];
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_overlayView addSubview:v4];
  v17 = MEMORY[0x277CCAAD0];
  v21 = [(UIView *)self->_overlayView leadingAnchor];
  v20 = [v4 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v18 = [(UIView *)self->_overlayView trailingAnchor];
  v8 = [v4 trailingAnchor];
  v9 = [v18 constraintEqualToAnchor:v8];
  v22[1] = v9;
  v10 = [(UIView *)self->_overlayView topAnchor];
  v11 = [v4 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v22[2] = v12;
  v13 = [(UIView *)self->_overlayView bottomAnchor];
  v14 = [v4 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v22[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v17 activateConstraints:v16];
}

- (void)setContentViewBoundsInReferenceSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentViewBoundsInReferenceSpace = &self->_contentViewBoundsInReferenceSpace;
  if (CGRectEqualToRect(*MEMORY[0x277CBF3A0], a3))
  {
    p_contentViewBoundsInReferenceSpace->origin.x = 0.0;
    self->_contentViewBoundsInReferenceSpace.origin.y = 0.0;
    self->_contentViewBoundsInReferenceSpace.size = xmmword_21F8A6F90;
  }

  else
  {
    v10.origin.x = p_contentViewBoundsInReferenceSpace->origin.x;
    v10.origin.y = self->_contentViewBoundsInReferenceSpace.origin.y;
    v10.size.width = self->_contentViewBoundsInReferenceSpace.size.width;
    v10.size.height = self->_contentViewBoundsInReferenceSpace.size.height;
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectEqualToRect(v10, v11))
    {
      p_contentViewBoundsInReferenceSpace->origin.x = x;
      self->_contentViewBoundsInReferenceSpace.origin.y = y;
      self->_contentViewBoundsInReferenceSpace.size.width = width;
      self->_contentViewBoundsInReferenceSpace.size.height = height;
    }
  }

  [(SBTraitsOrientedContentViewControllerView *)self setNeedsLayout];
}

- (void)setContentOrientation:(int64_t)a3
{
  if (self->_contentOrientation != a3)
  {
    self->_contentOrientation = a3;
    [(SBTraitsOrientedContentViewControllerView *)self setNeedsLayout];
  }
}

- (void)setContainerOrientation:(int64_t)a3
{
  if (self->_containerOrientation != a3)
  {
    self->_containerOrientation = a3;
    [(SBTraitsOrientedContentViewControllerView *)self setNeedsLayout];
  }
}

- (void)_setDebugColorsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBTraitsOrientedContentViewControllerView *)self layer];
  if (v3)
  {
    v6 = [MEMORY[0x277D75348] blueColor];
    [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [(SBTraitsDirectionalRotationView *)self->_contentRotationView layer];
    v8 = [MEMORY[0x277D75348] greenColor];
    [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];

    v9 = [(UIView *)self->_contentView layer];
    v10 = [MEMORY[0x277D75348] magentaColor];
    [v9 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [(SBTraitsOrientedContentViewControllerView *)self layer];
    [v11 setBorderWidth:2.0];

    v12 = [(SBTraitsDirectionalRotationView *)self->_contentRotationView layer];
    [v12 setBorderWidth:3.0];

    v13 = [(UIView *)self->_contentView layer];
    [v13 setBorderWidth:1.0];

    contentView = self->_contentView;
    v15 = [MEMORY[0x277D75348] colorWithRed:0.0392156863 green:0.784313725 blue:0.0784313725 alpha:0.6];
    [(UIView *)contentView setBackgroundColor:v15];

    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
  }

  else
  {
    v16 = [MEMORY[0x277D75348] clearColor];
    [v5 setBorderColor:{objc_msgSend(v16, "CGColor")}];

    v17 = [(SBTraitsDirectionalRotationView *)self->_contentRotationView layer];
    v18 = [MEMORY[0x277D75348] clearColor];
    [v17 setBorderColor:{objc_msgSend(v18, "CGColor")}];

    v19 = [(UIView *)self->_contentView layer];
    v20 = [MEMORY[0x277D75348] clearColor];
    [v19 setBorderColor:{objc_msgSend(v20, "CGColor")}];

    v21 = [(SBTraitsOrientedContentViewControllerView *)self layer];
    [v21 setBorderWidth:0.0];

    v22 = [(UIView *)self->_contentView layer];
    [v22 setBorderWidth:0.0];

    v23 = [(SBTraitsDirectionalRotationView *)self->_contentRotationView layer];
    [v23 setBorderWidth:0.0];

    [MEMORY[0x277D75348] clearColor];
  }
  v24 = ;
  [(SBTraitsOrientedContentViewControllerView *)self setBackgroundColor:v24];
}

- (id)succinctDescription
{
  v2 = [(SBTraitsOrientedContentViewControllerView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SBFStringForBSInterfaceOrientation();
  v7 = SBFStringForBSInterfaceOrientation();
  v8 = [v3 stringWithFormat:@"<%@:%p container: %@, content: %@>", v5, self, v6, v7];

  return v8;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = SBFStringForBSInterfaceOrientation();
  [v3 appendString:v4 withName:@"containerOrientation"];

  v5 = SBFStringForBSInterfaceOrientation();
  [v3 appendString:v5 withName:@"contentOrientation"];

  v6 = NSStringFromCGRect(self->_contentViewBoundsInReferenceSpace);
  [v3 appendString:v6 withName:@"contentReferenceBounds"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBTraitsOrientedContentViewControllerView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (CGRect)contentViewBoundsInReferenceSpace
{
  x = self->_contentViewBoundsInReferenceSpace.origin.x;
  y = self->_contentViewBoundsInReferenceSpace.origin.y;
  width = self->_contentViewBoundsInReferenceSpace.size.width;
  height = self->_contentViewBoundsInReferenceSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end