@interface PRXFeatureIcon
- (PRXFeatureIcon)initWithImage:(id)image;
- (PRXFeatureIcon)initWithImageView:(id)view;
- (PRXFeatureIcon)initWithSystemImageNamed:(id)named;
- (id)makeImageView;
- (void)setPlatterColor:(id)color;
@end

@implementation PRXFeatureIcon

- (PRXFeatureIcon)initWithSystemImageNamed:(id)named
{
  v8.receiver = self;
  v8.super_class = PRXFeatureIcon;
  namedCopy = named;
  v4 = [(PRXFeatureIcon *)&v8 init];
  v5 = [namedCopy copy];

  symbolName = v4->_symbolName;
  v4->_symbolName = v5;

  return v4;
}

- (PRXFeatureIcon)initWithImage:(id)image
{
  v4 = MEMORY[0x277D755E8];
  imageCopy = image;
  v6 = [[v4 alloc] initWithImage:imageCopy];

  v7 = [(PRXFeatureIcon *)self initWithImageView:v6];
  return v7;
}

- (PRXFeatureIcon)initWithImageView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = PRXFeatureIcon;
  v5 = [(PRXFeatureIcon *)&v8 init];
  imageView = v5->_imageView;
  v5->_imageView = viewCopy;

  return v5;
}

- (void)setPlatterColor:(id)color
{
  objc_storeStrong(&self->_platterColor, color);
  if (color)
  {
    [(PRXFeatureIcon *)self setPlatterCornerRadius:9.0];

    [(PRXFeatureIcon *)self setPlatterSize:40.0];
  }
}

- (id)makeImageView
{
  v21[2] = *MEMORY[0x277D85DE8];
  imageView = [(PRXFeatureIcon *)self imageView];

  if (imageView)
  {
    imageView2 = [(PRXFeatureIcon *)self imageView];
  }

  else
  {
    v20 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
    v5 = MEMORY[0x277D755B8];
    symbolName = [(PRXFeatureIcon *)self symbolName];
    v19 = [v5 systemImageNamed:symbolName withConfiguration:v20];

    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v7 setTintColor:whiteColor];

    [v7 setContentMode:4];
    [v7 setMaximumContentSizeCategory:*MEMORY[0x277D76838]];
    imageView2 = objc_alloc_init(MEMORY[0x277D75D18]);
    [imageView2 _setLayoutDebuggingIdentifier:@"PRXFeaturePlatter"];
    platterColor = [(PRXFeatureIcon *)self platterColor];
    [imageView2 setBackgroundColor:platterColor];

    [(PRXFeatureIcon *)self platterCornerRadius];
    [imageView2 _setContinuousCornerRadius:?];
    [imageView2 addSubview:v7];
    v10 = MEMORY[0x277CCAAD0];
    centerXAnchor = [imageView2 centerXAnchor];
    centerXAnchor2 = [v7 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v21[0] = v13;
    centerYAnchor = [imageView2 centerYAnchor];
    centerYAnchor2 = [v7 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v21[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [v10 activateConstraints:v17];
  }

  return imageView2;
}

@end