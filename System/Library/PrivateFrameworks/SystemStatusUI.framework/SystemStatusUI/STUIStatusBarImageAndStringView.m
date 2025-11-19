@interface STUIStatusBarImageAndStringView
- (NSString)text;
- (STUIStatusBarImageAndStringView)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (void)setImage:(id)a3;
- (void)setText:(id)a3;
- (void)setTintColor:(id)a3;
- (void)updateConstraints;
@end

@implementation STUIStatusBarImageAndStringView

- (STUIStatusBarImageAndStringView)initWithFrame:(CGRect)a3
{
  v52[6] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = STUIStatusBarImageAndStringView;
  v3 = [(STUIStatusBarImageAndStringView *)&v49 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(STUIStatusBarImageView *)v9 leadingAnchor];
  v12 = [(STUIStatusBarImageAndStringView *)v3 leadingAnchor];
  v48 = [v11 constraintEqualToAnchor:v12];

  v13 = [(STUIStatusBarImageView *)v9 topAnchor];
  v14 = [(STUIStatusBarImageAndStringView *)v3 topAnchor];
  v47 = [v13 constraintEqualToAnchor:v14];

  v15 = [(STUIStatusBarImageView *)v9 bottomAnchor];
  v16 = [(STUIStatusBarImageAndStringView *)v3 bottomAnchor];
  v46 = [v15 constraintEqualToAnchor:v16];

  v17 = [(STUIStatusBarStringView *)v10 trailingAnchor];
  v18 = [(STUIStatusBarImageAndStringView *)v3 trailingAnchor];
  v43 = [v17 constraintEqualToAnchor:v18];

  v52[0] = v48;
  v52[1] = v47;
  v52[2] = v46;
  v45 = v10;
  v19 = [(STUIStatusBarStringView *)v10 leadingAnchor];
  v20 = [(STUIStatusBarImageView *)v9 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:4.0];
  v52[3] = v21;
  v22 = [(STUIStatusBarStringView *)v10 lastBaselineAnchor];
  v44 = v9;
  v23 = [(STUIStatusBarImageView *)v9 lastBaselineAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v52[4] = v24;
  v52[5] = v43;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:6];
  [(STUIStatusBarImageAndStringView *)v3 setBothConstraints:v25];

  v51[0] = v48;
  v51[1] = v47;
  v51[2] = v46;
  v26 = [(STUIStatusBarImageView *)v9 trailingAnchor];
  v27 = [(STUIStatusBarImageAndStringView *)v3 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v51[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [(STUIStatusBarImageAndStringView *)v3 setImageConstraints:v29];

  v42 = [(STUIStatusBarStringView *)v45 leadingAnchor];
  v41 = [(STUIStatusBarImageAndStringView *)v3 leadingAnchor];
  v30 = [v42 constraintEqualToAnchor:v41];
  v50[0] = v30;
  v31 = [(STUIStatusBarStringView *)v45 topAnchor];
  v32 = [(STUIStatusBarImageAndStringView *)v3 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v50[1] = v33;
  v34 = [(STUIStatusBarStringView *)v45 bottomAnchor];
  v35 = [(STUIStatusBarImageAndStringView *)v3 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v50[2] = v36;
  v50[3] = v43;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  [(STUIStatusBarImageAndStringView *)v3 setStringConstraints:v37];

  [(STUIStatusBarDisplayableContainerView *)v3 setSubviewForBaselineAlignment:v45];
  v38 = MEMORY[0x277CCAAD0];
  v39 = [(STUIStatusBarImageAndStringView *)v3 bothConstraints];
  [v38 activateConstraints:v39];

  return v3;
}

- (void)updateConstraints
{
  v26.receiver = self;
  v26.super_class = STUIStatusBarImageAndStringView;
  [(STUIStatusBarImageAndStringView *)&v26 updateConstraints];
  v3 = [(STUIStatusBarImageAndStringView *)self imageView];
  v4 = [v3 image];
  if (v4)
  {
    v5 = v4;
    v6 = [(STUIStatusBarImageAndStringView *)self stringView];
    v7 = [v6 text];

    if (v7)
    {
      v8 = MEMORY[0x277CCAAD0];
      v9 = [(STUIStatusBarImageAndStringView *)self stringConstraints];
      [v8 deactivateConstraints:v9];

      v10 = MEMORY[0x277CCAAD0];
      v11 = [(STUIStatusBarImageAndStringView *)self imageConstraints];
      [v10 deactivateConstraints:v11];

      v12 = MEMORY[0x277CCAAD0];
      v13 = [(STUIStatusBarImageAndStringView *)self bothConstraints];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = [(STUIStatusBarImageAndStringView *)self stringView];
  v15 = [v14 text];

  v16 = MEMORY[0x277CCAAD0];
  v17 = [(STUIStatusBarImageAndStringView *)self bothConstraints];
  [v16 deactivateConstraints:v17];

  v18 = MEMORY[0x277CCAAD0];
  if (!v15)
  {
    v22 = [(STUIStatusBarImageAndStringView *)self stringConstraints];
    [v18 deactivateConstraints:v22];

    v23 = MEMORY[0x277CCAAD0];
    v24 = [(STUIStatusBarImageAndStringView *)self imageConstraints];
    [v23 activateConstraints:v24];

    v21 = [(STUIStatusBarImageAndStringView *)self imageView];
    goto LABEL_9;
  }

  v19 = [(STUIStatusBarImageAndStringView *)self imageConstraints];
  [v18 deactivateConstraints:v19];

  v12 = MEMORY[0x277CCAAD0];
  v13 = [(STUIStatusBarImageAndStringView *)self stringConstraints];
LABEL_7:
  v20 = v13;
  [v12 activateConstraints:v13];

  v21 = [(STUIStatusBarImageAndStringView *)self stringView];
LABEL_9:
  v25 = v21;
  [(STUIStatusBarDisplayableContainerView *)self setSubviewForBaselineAlignment:v21];
}

- (UIImage)image
{
  v2 = [(STUIStatusBarImageAndStringView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarImageAndStringView *)self imageView];
  [v5 setImage:v4];

  [(STUIStatusBarImageAndStringView *)self setNeedsUpdateConstraints];
}

- (NSString)text
{
  v2 = [(STUIStatusBarImageAndStringView *)self stringView];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarImageAndStringView *)self stringView];
  [v5 setText:v4];

  [(STUIStatusBarImageAndStringView *)self setNeedsUpdateConstraints];
}

- (void)setTintColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarImageAndStringView;
  v4 = a3;
  [(STUIStatusBarImageAndStringView *)&v7 setTintColor:v4];
  v5 = [(STUIStatusBarImageAndStringView *)self stringView:v7.receiver];
  [v5 setTextColor:v4];

  v6 = [(STUIStatusBarImageAndStringView *)self imageView];
  [v6 setTintColor:v4];
}

@end