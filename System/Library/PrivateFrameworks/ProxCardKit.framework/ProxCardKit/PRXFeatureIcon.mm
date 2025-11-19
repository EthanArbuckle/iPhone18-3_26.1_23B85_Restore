@interface PRXFeatureIcon
- (PRXFeatureIcon)initWithImage:(id)a3;
- (PRXFeatureIcon)initWithImageView:(id)a3;
- (PRXFeatureIcon)initWithSystemImageNamed:(id)a3;
- (id)makeImageView;
- (void)setPlatterColor:(id)a3;
@end

@implementation PRXFeatureIcon

- (PRXFeatureIcon)initWithSystemImageNamed:(id)a3
{
  v8.receiver = self;
  v8.super_class = PRXFeatureIcon;
  v3 = a3;
  v4 = [(PRXFeatureIcon *)&v8 init];
  v5 = [v3 copy];

  symbolName = v4->_symbolName;
  v4->_symbolName = v5;

  return v4;
}

- (PRXFeatureIcon)initWithImage:(id)a3
{
  v4 = MEMORY[0x277D755E8];
  v5 = a3;
  v6 = [[v4 alloc] initWithImage:v5];

  v7 = [(PRXFeatureIcon *)self initWithImageView:v6];
  return v7;
}

- (PRXFeatureIcon)initWithImageView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRXFeatureIcon;
  v5 = [(PRXFeatureIcon *)&v8 init];
  imageView = v5->_imageView;
  v5->_imageView = v4;

  return v5;
}

- (void)setPlatterColor:(id)a3
{
  objc_storeStrong(&self->_platterColor, a3);
  if (a3)
  {
    [(PRXFeatureIcon *)self setPlatterCornerRadius:9.0];

    [(PRXFeatureIcon *)self setPlatterSize:40.0];
  }
}

- (id)makeImageView
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [(PRXFeatureIcon *)self imageView];

  if (v3)
  {
    v4 = [(PRXFeatureIcon *)self imageView];
  }

  else
  {
    v20 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
    v5 = MEMORY[0x277D755B8];
    v6 = [(PRXFeatureIcon *)self symbolName];
    v19 = [v5 systemImageNamed:v6 withConfiguration:v20];

    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x277D75348] whiteColor];
    [v7 setTintColor:v8];

    [v7 setContentMode:4];
    [v7 setMaximumContentSizeCategory:*MEMORY[0x277D76838]];
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 _setLayoutDebuggingIdentifier:@"PRXFeaturePlatter"];
    v9 = [(PRXFeatureIcon *)self platterColor];
    [v4 setBackgroundColor:v9];

    [(PRXFeatureIcon *)self platterCornerRadius];
    [v4 _setContinuousCornerRadius:?];
    [v4 addSubview:v7];
    v10 = MEMORY[0x277CCAAD0];
    v11 = [v4 centerXAnchor];
    v12 = [v7 centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v21[0] = v13;
    v14 = [v4 centerYAnchor];
    v15 = [v7 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v21[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [v10 activateConstraints:v17];
  }

  return v4;
}

@end