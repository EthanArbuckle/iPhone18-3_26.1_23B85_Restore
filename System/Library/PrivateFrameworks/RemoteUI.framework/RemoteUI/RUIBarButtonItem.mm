@interface RUIBarButtonItem
+ (id)tapToRadarButton;
+ (id)titleItemWithLabel:(id)a3 imageView:(id)a4 imageSize:(CGSize)a5 style:(id)a6 labelColor:(id)a7;
- (NSString)itemType;
- (UIBarButtonItem)barButtonItem;
- (id)_createBarButtonItemWithTitle:(id)a3 style:(int64_t)a4;
- (id)_labelColor;
- (void)_buttonPressed:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setImageSize:(CGSize)a3;
- (void)updateBackButtonColors;
@end

@implementation RUIBarButtonItem

+ (id)tapToRadarButton
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(RUIBarButtonItem);
  v5[0] = @"type";
  v5[1] = @"parentBar";
  v6[0] = @"tapToRadarBarItem";
  v6[1] = @"navigationBar";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(RUIElement *)v2 setAttributes:v3];

  return v2;
}

- (void)_buttonPressed:(id)a3
{
  action = self->_action;
  if (action)
  {
    action[2]();
  }
}

- (UIBarButtonItem)barButtonItem
{
  barButtonItem = self->_barButtonItem;
  if (barButtonItem)
  {
    goto LABEL_23;
  }

  v4 = [(RUIElement *)self attributes];

  if (!v4)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKey:@"style"];

  v73 = -1.0;
  if ([v6 isEqualToString:@"done"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(RUIBarButtonItem *)self itemType];
  v9 = [v8 isEqualToString:@"editBarItem"];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__buttonPressed_];
    v11 = 0;
  }

  else
  {
    v13 = [(RUIBarButtonItem *)self itemType];
    v14 = [v13 isEqualToString:@"nextBarItem"];

    if (v14)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v15 localizedStringForKey:@"NEXT" value:&stru_282D68F58 table:@"Localizable"];
    }

    else
    {
      v15 = [(RUIElement *)self attributes];
      [v15 objectForKey:@"label"];
    }
    v11 = ;

    v10 = 0;
  }

  v16 = [(RUIBarButtonItem *)self itemType];
  v17 = [v16 isEqualToString:@"closeButtonBarItem"];

  v18 = [(RUIElement *)self attributes];
  v19 = [v18 objectForKeyedSubscript:@"barButtonType"];
  v20 = [v19 isEqualToString:@"cancel"];

  if ((v17 & 1) != 0 || v20)
  {
    v38 = objc_alloc(MEMORY[0x277D751E0]);
    v39 = 1;
LABEL_20:
    v37 = [v38 initWithBarButtonSystemItem:v39 target:self action:sel__buttonPressed_];
LABEL_21:

    goto LABEL_22;
  }

  v21 = [(RUIBarButtonItem *)self itemType];
  v22 = [v21 isEqualToString:@"titleBarItem"];

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = self->_imageView;
    self->_imageView = v23;

    v25 = [(RUIElement *)self attributes];
    v26 = [v25 objectForKey:@"imageWidth"];
    [v26 floatValue];
    v28 = v27;
    v29 = [(RUIElement *)self attributes];
    v30 = [v29 objectForKey:@"imageHeight"];
    [v30 floatValue];
    v32 = v31;

    if (![(RUIElement *)self loadImage])
    {
      v33 = self->_imageView;
      self->_imageView = 0;
    }

    v34 = self->_imageView;
    v35 = [(RUIElement *)self style];
    v36 = [(RUIBarButtonItem *)self _labelColor];
    v37 = [RUIBarButtonItem titleItemWithLabel:v11 imageView:v34 imageSize:v35 style:v36 labelColor:v28, v32];

    goto LABEL_22;
  }

  v42 = [(RUIBarButtonItem *)self itemType];
  if ([v42 isEqualToString:@"backButtonBarItem"])
  {
    v43 = +[RUIPlatform isSolariumEnabled];

    if (v43)
    {
      v38 = objc_alloc(MEMORY[0x277D751E0]);
      v39 = 101;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v44 = [(RUIBarButtonItem *)self itemType];
  v45 = [v44 isEqualToString:@"backButtonBarItem"];

  if (v45)
  {
    v46 = [(RUIElement *)self URLAttributeForImageName:@"image" getScale:&v73];
    v47 = objc_alloc_init(MEMORY[0x277D75220]);
    backButton = self->_backButton;
    self->_backButton = v47;

    v49 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    v50 = [(RUIElement *)self attributes];
    v51 = [v50 objectForKey:@"systemImage"];

    v52 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.backward" withConfiguration:v49];
    v71 = v51;
    v72 = v46;
    if (v51)
    {
      v53 = v52;
      v54 = [MEMORY[0x277D755D0] configurationWithPointSize:30.0];

      v55 = [MEMORY[0x277D755B8] systemImageNamed:v51 withConfiguration:v54];

      if (![v51 isEqualToString:@"backButton"])
      {
        v56 = v54;
        goto LABEL_48;
      }

      v56 = v54;
      v57 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.backward.circle.fill" withConfiguration:v54];

      [(RUIBarButtonItem *)self updateBackButtonColors];
      v58 = [(UIButton *)self->_backButton layer];
      [v58 setCornerRadius:30.0];
      v55 = v57;
    }

    else
    {
      if (!v46)
      {
        v56 = v49;
        v55 = v52;
        goto LABEL_48;
      }

      v66 = v52;
      v58 = +[RUIImageLoader sharedImageLoader];
      v67 = [v58 imageForURL:v46 loadIfAbsent:1];
      v55 = [MEMORY[0x277D755B8] imageWithCGImage:v67 scale:0 orientation:v73];

      v56 = v49;
    }

LABEL_48:
    v68 = [MEMORY[0x277D75128] sharedApplication];
    v69 = [v68 userInterfaceLayoutDirection];

    if (v69 == 1)
    {
      v70 = [v55 imageFlippedForRightToLeftLayoutDirection];
    }

    [(UIButton *)self->_backButton setImage:v55 forState:0];
    [(UIButton *)self->_backButton addTarget:self action:sel__buttonPressed_ forControlEvents:64];
    v37 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_backButton];

    goto LABEL_22;
  }

  v59 = [(RUIBarButtonItem *)self itemType];
  v60 = [v59 isEqualToString:@"tapToRadarBarItem"];

  if (v60)
  {
    v61 = [MEMORY[0x277D75220] buttonWithType:0];
    v62 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    v63 = [MEMORY[0x277D755B8] systemImageNamed:@"ant.circle" withConfiguration:v62];
    if (!+[RUIPlatform isSolariumEnabled])
    {
      [v61 setTitle:@"Tap-To-Radar" forState:0];
    }

    [v61 setImage:v63 forState:0];
    [v61 addTarget:self action:sel__buttonPressed_ forControlEvents:64];
    v64 = [objc_alloc(MEMORY[0x277D75348]) initWithDynamicProvider:&__block_literal_global_11];
    [v61 setTintColor:v64];

    v37 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v61];
    goto LABEL_22;
  }

  if (![v11 length])
  {
    v37 = v10;
    goto LABEL_22;
  }

  v37 = [(RUIBarButtonItem *)self _createBarButtonItemWithTitle:v11 style:v7];

  v65 = [(RUIBarButtonItem *)self _labelColor];

  if (v65)
  {
    v10 = [(RUIBarButtonItem *)self _labelColor];
    [(UIBarButtonItem *)v37 setTintColor:v10];
    goto LABEL_21;
  }

LABEL_22:
  [(UIBarButtonItem *)v37 setEnabled:[(RUIElement *)self enabled]];
  v40 = self->_barButtonItem;
  self->_barButtonItem = v37;

  barButtonItem = self->_barButtonItem;
LABEL_23:
  v12 = barButtonItem;
LABEL_24:

  return v12;
}

id __33__RUIBarButtonItem_barButtonItem__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = objc_alloc(MEMORY[0x277D75348]);
    v4 = 0.364705882;
    v3 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277D75348]);
    v3 = 0.705882353;
    v4 = 0.254901961;
    v5 = 0.866666667;
  }

  v6 = [v2 initWithDisplayP3Red:v3 green:v4 blue:v5 alpha:1.0];

  return v6;
}

+ (id)titleItemWithLabel:(id)a3 imageView:(id)a4 imageSize:(CGSize)a5 style:(id)a6 labelColor:(id)a7
{
  height = a5.height;
  width = a5.width;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x277D75A68];
  v16 = a3;
  v17 = objc_alloc_init(v15);
  [v17 setAxis:0];
  [v17 setAlignment:3];
  [v17 setDistribution:3];
  [v13 navBarLabelSpacingWithImage];
  if (v18 == 0.0)
  {
    v19 = 8.0;
  }

  else
  {
    [v13 navBarLabelSpacingWithImage];
  }

  [v17 setSpacing:v19];
  v20 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v20 setText:v16];

  v21 = [v13 navBarButtonLabelFont];

  if (v21)
  {
    [v13 navBarButtonLabelFont];
  }

  else
  {
    [MEMORY[0x277D74300] systemFontOfSize:19.0 weight:*MEMORY[0x277D74410]];
  }
  v22 = ;
  [v20 setFont:v22];

  if (v14)
  {
    [v20 setTextColor:v14];
  }

  if (width == 0.0 && height == 0.0)
  {
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v12 heightAnchor];
    v24 = [v23 constraintEqualToConstant:25.0];
    [v24 setActive:1];

    v25 = [v12 widthAnchor];
    v26 = [v25 constraintEqualToConstant:25.0];
    [v26 setActive:1];
  }

  if (v12)
  {
    [v17 addArrangedSubview:v12];
  }

  [v17 addArrangedSubview:v20];
  v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v17];
  [v27 noPlatter];

  return v27;
}

- (id)_createBarButtonItemWithTitle:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUIElement *)self attributes];
  v8 = [v7 objectForKeyedSubscript:@"parentBar"];
  v9 = [v8 isEqualToString:@"navigationBar"];

  if (a4 == 2 && (+[RUIPlatform isSolariumEnabled]& v9) == 1)
  {
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__buttonPressed_];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:a4 target:self action:sel__buttonPressed_];
  }

  v11 = v10;

  return v11;
}

- (id)_labelColor
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"labelColor"];

  if (v4)
  {
    v5 = MEMORY[0x277D75348];
    v6 = [(RUIElement *)self attributes];
    v7 = [v6 objectForKey:@"labelColor"];
    v8 = [v5 _remoteUI_colorWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)itemType
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"type"];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = RUIBarButtonItem;
  [(RUIElement *)&v5 setEnabled:?];
  [(UIBarButtonItem *)self->_barButtonItem setEnabled:v3];
}

- (void)updateBackButtonColors
{
  v3 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  backButton = self->_backButton;
  if (v4 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UIButton *)backButton setTintColor:v6];

    v7 = self->_backButton;
    [MEMORY[0x277D75348] systemExtraLightGrayColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] systemExtraLightGrayColor];
    [(UIButton *)backButton setTintColor:v8];

    v7 = self->_backButton;
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v9 = ;
  [(UIButton *)v7 setBackgroundColor:?];
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(UIImageView *)self->_imageView heightAnchor];
  v7 = [v6 constraintEqualToConstant:height];
  [v7 setActive:1];

  v9 = [(UIImageView *)self->_imageView widthAnchor];
  v8 = [v9 constraintEqualToConstant:width];
  [v8 setActive:1];
}

@end