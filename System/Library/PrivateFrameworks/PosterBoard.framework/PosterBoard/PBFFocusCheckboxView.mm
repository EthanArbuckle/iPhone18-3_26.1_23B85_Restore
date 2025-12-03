@interface PBFFocusCheckboxView
- (CGSize)intrinsicContentSize;
- (PBFFocusCheckboxView)init;
- (void)_updateAccessibilityAttributes;
- (void)_updateColors;
- (void)setAssociatedPosterIdentifier:(id)identifier;
- (void)setOn:(BOOL)on;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PBFFocusCheckboxView

- (PBFFocusCheckboxView)init
{
  v41[6] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = PBFFocusCheckboxView;
  v2 = [(PBFFocusCheckboxView *)&v40 init];
  v3 = v2;
  if (v2)
  {
    [(PBFFocusCheckboxView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_alloc_init(_TtC11PosterBoard13PBFCircleView);
    circleView = v3->_circleView;
    v3->_circleView = v4;

    [(PBFCircleView *)v3->_circleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBFCircleView *)v3->_circleView setStrokeWidth:3.0];
    v6 = v3->_circleView;
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    [(PBFCircleView *)v6 setStrokeColor:systemGray3Color];

    v8 = v3->_circleView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PBFCircleView *)v8 setFillColor:systemBackgroundColor];

    layer = [(PBFCircleView *)v3->_circleView layer];
    [layer setShadowOpacity:0.0];

    layer2 = [(PBFCircleView *)v3->_circleView layer];
    [layer2 setShadowRadius:2.0];

    layer3 = [(PBFCircleView *)v3->_circleView layer];
    [layer3 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

    [(PBFFocusCheckboxView *)v3 addSubview:v3->_circleView];
    v39 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:15.0];
    v38 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v39];
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v38];
    imageView = v3->_imageView;
    v3->_imageView = v13;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setHidden:1];
    v15 = v3->_imageView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v15 setTintColor:whiteColor];

    [(PBFFocusCheckboxView *)v3 addSubview:v3->_imageView];
    v31 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(PBFCircleView *)v3->_circleView leadingAnchor];
    leadingAnchor2 = [(PBFFocusCheckboxView *)v3 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    v41[0] = v35;
    trailingAnchor = [(PBFCircleView *)v3->_circleView trailingAnchor];
    trailingAnchor2 = [(PBFFocusCheckboxView *)v3 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
    v41[1] = v32;
    topAnchor = [(PBFCircleView *)v3->_circleView topAnchor];
    topAnchor2 = [(PBFFocusCheckboxView *)v3 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v41[2] = v28;
    bottomAnchor = [(PBFCircleView *)v3->_circleView bottomAnchor];
    bottomAnchor2 = [(PBFFocusCheckboxView *)v3 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
    v41[3] = v18;
    centerXAnchor = [(UIImageView *)v3->_imageView centerXAnchor];
    centerXAnchor2 = [(PBFFocusCheckboxView *)v3 centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v41[4] = v21;
    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    centerYAnchor2 = [(PBFFocusCheckboxView *)v3 centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[5] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
    [v31 activateConstraints:v25];
  }

  return v3;
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    layer = [(PBFCircleView *)self->_circleView layer];
    v5 = layer;
    LODWORD(v6) = 1046562734;
    if (!self->_on)
    {
      *&v6 = 0.0;
    }

    [layer setShadowOpacity:v6];

    [(UIImageView *)self->_imageView setHidden:!self->_on];
    [(PBFFocusCheckboxView *)self _updateColors];

    [(PBFFocusCheckboxView *)self _updateAccessibilityAttributes];
  }
}

- (void)_updateColors
{
  if (self->_on)
  {
    traitCollection = [(PBFFocusCheckboxView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    circleView = self->_circleView;
    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] systemGray3Color];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v10 = ;
    [(PBFCircleView *)circleView setStrokeColor:v10];

    v8 = self->_circleView;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    v6 = self->_circleView;
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    [(PBFCircleView *)v6 setStrokeColor:systemGray3Color];

    v8 = self->_circleView;
    systemBlueColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v11 = systemBlueColor;
  [(PBFCircleView *)v8 setFillColor:?];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PBFFocusCheckboxView;
  changeCopy = change;
  [(PBFFocusCheckboxView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PBFFocusCheckboxView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {
    [(PBFFocusCheckboxView *)self _updateColors];
  }
}

- (void)setAssociatedPosterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [identifierCopy copy];
    associatedPosterIdentifier = self->_associatedPosterIdentifier;
    self->_associatedPosterIdentifier = v4;

    [(PBFFocusCheckboxView *)self _updateAccessibilityAttributes];
  }
}

- (void)_updateAccessibilityAttributes
{
  if (self->_associatedPosterIdentifier)
  {
    [(PBFFocusCheckboxView *)self setAccessibilityIdentifier:?];
    if ([(PBFFocusCheckboxView *)self isOn])
    {
      v3 = *MEMORY[0x277D76598];
    }

    else
    {
      v3 = 0;
    }

    [(PBFFocusCheckboxView *)self setAccessibilityTraits:v3];
  }

  else
  {

    [(PBFFocusCheckboxView *)self setAccessibilityIdentifier:?];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end