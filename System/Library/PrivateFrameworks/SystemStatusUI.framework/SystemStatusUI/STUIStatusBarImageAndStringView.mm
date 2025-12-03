@interface STUIStatusBarImageAndStringView
- (NSString)text;
- (STUIStatusBarImageAndStringView)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (void)setImage:(id)image;
- (void)setText:(id)text;
- (void)setTintColor:(id)color;
- (void)updateConstraints;
@end

@implementation STUIStatusBarImageAndStringView

- (STUIStatusBarImageAndStringView)initWithFrame:(CGRect)frame
{
  v52[6] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = STUIStatusBarImageAndStringView;
  v3 = [(STUIStatusBarImageAndStringView *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STUIStatusBarImageAndStringView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [STUIStatusBarImageView alloc];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(STUIStatusBarImageView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  [(STUIStatusBarImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STUIStatusBarImageAndStringView *)v3 addSubview:v9];
  [(STUIStatusBarImageAndStringView *)v3 setImageView:v9];
  v10 = [[STUIStatusBarStringView alloc] initWithFrame:v5, v6, v7, v8];
  [(STUIStatusBarStringView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STUIStatusBarImageAndStringView *)v3 addSubview:v10];
  [(STUIStatusBarImageAndStringView *)v3 setStringView:v10];
  leadingAnchor = [(STUIStatusBarImageView *)v9 leadingAnchor];
  leadingAnchor2 = [(STUIStatusBarImageAndStringView *)v3 leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  topAnchor = [(STUIStatusBarImageView *)v9 topAnchor];
  topAnchor2 = [(STUIStatusBarImageAndStringView *)v3 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(STUIStatusBarImageView *)v9 bottomAnchor];
  bottomAnchor2 = [(STUIStatusBarImageAndStringView *)v3 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  trailingAnchor = [(STUIStatusBarStringView *)v10 trailingAnchor];
  trailingAnchor2 = [(STUIStatusBarImageAndStringView *)v3 trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v52[0] = v48;
  v52[1] = v47;
  v52[2] = v46;
  v45 = v10;
  leadingAnchor3 = [(STUIStatusBarStringView *)v10 leadingAnchor];
  trailingAnchor3 = [(STUIStatusBarImageView *)v9 trailingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:4.0];
  v52[3] = v21;
  lastBaselineAnchor = [(STUIStatusBarStringView *)v10 lastBaselineAnchor];
  v44 = v9;
  lastBaselineAnchor2 = [(STUIStatusBarImageView *)v9 lastBaselineAnchor];
  v24 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v52[4] = v24;
  v52[5] = v43;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:6];
  [(STUIStatusBarImageAndStringView *)v3 setBothConstraints:v25];

  v51[0] = v48;
  v51[1] = v47;
  v51[2] = v46;
  trailingAnchor4 = [(STUIStatusBarImageView *)v9 trailingAnchor];
  trailingAnchor5 = [(STUIStatusBarImageAndStringView *)v3 trailingAnchor];
  v28 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v51[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [(STUIStatusBarImageAndStringView *)v3 setImageConstraints:v29];

  leadingAnchor4 = [(STUIStatusBarStringView *)v45 leadingAnchor];
  leadingAnchor5 = [(STUIStatusBarImageAndStringView *)v3 leadingAnchor];
  v30 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v50[0] = v30;
  topAnchor3 = [(STUIStatusBarStringView *)v45 topAnchor];
  topAnchor4 = [(STUIStatusBarImageAndStringView *)v3 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v50[1] = v33;
  bottomAnchor3 = [(STUIStatusBarStringView *)v45 bottomAnchor];
  bottomAnchor4 = [(STUIStatusBarImageAndStringView *)v3 bottomAnchor];
  v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v50[2] = v36;
  v50[3] = v43;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  [(STUIStatusBarImageAndStringView *)v3 setStringConstraints:v37];

  [(STUIStatusBarDisplayableContainerView *)v3 setSubviewForBaselineAlignment:v45];
  v38 = MEMORY[0x277CCAAD0];
  bothConstraints = [(STUIStatusBarImageAndStringView *)v3 bothConstraints];
  [v38 activateConstraints:bothConstraints];

  return v3;
}

- (void)updateConstraints
{
  v26.receiver = self;
  v26.super_class = STUIStatusBarImageAndStringView;
  [(STUIStatusBarImageAndStringView *)&v26 updateConstraints];
  imageView = [(STUIStatusBarImageAndStringView *)self imageView];
  image = [imageView image];
  if (image)
  {
    v5 = image;
    stringView = [(STUIStatusBarImageAndStringView *)self stringView];
    text = [stringView text];

    if (text)
    {
      v8 = MEMORY[0x277CCAAD0];
      stringConstraints = [(STUIStatusBarImageAndStringView *)self stringConstraints];
      [v8 deactivateConstraints:stringConstraints];

      v10 = MEMORY[0x277CCAAD0];
      imageConstraints = [(STUIStatusBarImageAndStringView *)self imageConstraints];
      [v10 deactivateConstraints:imageConstraints];

      v12 = MEMORY[0x277CCAAD0];
      bothConstraints = [(STUIStatusBarImageAndStringView *)self bothConstraints];
      goto LABEL_7;
    }
  }

  else
  {
  }

  stringView2 = [(STUIStatusBarImageAndStringView *)self stringView];
  text2 = [stringView2 text];

  v16 = MEMORY[0x277CCAAD0];
  bothConstraints2 = [(STUIStatusBarImageAndStringView *)self bothConstraints];
  [v16 deactivateConstraints:bothConstraints2];

  v18 = MEMORY[0x277CCAAD0];
  if (!text2)
  {
    stringConstraints2 = [(STUIStatusBarImageAndStringView *)self stringConstraints];
    [v18 deactivateConstraints:stringConstraints2];

    v23 = MEMORY[0x277CCAAD0];
    imageConstraints2 = [(STUIStatusBarImageAndStringView *)self imageConstraints];
    [v23 activateConstraints:imageConstraints2];

    imageView2 = [(STUIStatusBarImageAndStringView *)self imageView];
    goto LABEL_9;
  }

  imageConstraints3 = [(STUIStatusBarImageAndStringView *)self imageConstraints];
  [v18 deactivateConstraints:imageConstraints3];

  v12 = MEMORY[0x277CCAAD0];
  bothConstraints = [(STUIStatusBarImageAndStringView *)self stringConstraints];
LABEL_7:
  v20 = bothConstraints;
  [v12 activateConstraints:bothConstraints];

  imageView2 = [(STUIStatusBarImageAndStringView *)self stringView];
LABEL_9:
  v25 = imageView2;
  [(STUIStatusBarDisplayableContainerView *)self setSubviewForBaselineAlignment:imageView2];
}

- (UIImage)image
{
  imageView = [(STUIStatusBarImageAndStringView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(STUIStatusBarImageAndStringView *)self imageView];
  [imageView setImage:imageCopy];

  [(STUIStatusBarImageAndStringView *)self setNeedsUpdateConstraints];
}

- (NSString)text
{
  stringView = [(STUIStatusBarImageAndStringView *)self stringView];
  text = [stringView text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  stringView = [(STUIStatusBarImageAndStringView *)self stringView];
  [stringView setText:textCopy];

  [(STUIStatusBarImageAndStringView *)self setNeedsUpdateConstraints];
}

- (void)setTintColor:(id)color
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarImageAndStringView;
  colorCopy = color;
  [(STUIStatusBarImageAndStringView *)&v7 setTintColor:colorCopy];
  v5 = [(STUIStatusBarImageAndStringView *)self stringView:v7.receiver];
  [v5 setTextColor:colorCopy];

  imageView = [(STUIStatusBarImageAndStringView *)self imageView];
  [imageView setTintColor:colorCopy];
}

@end