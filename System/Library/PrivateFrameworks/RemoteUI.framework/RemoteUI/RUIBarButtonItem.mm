@interface RUIBarButtonItem
+ (id)tapToRadarButton;
+ (id)titleItemWithLabel:(id)label imageView:(id)view imageSize:(CGSize)size style:(id)style labelColor:(id)color;
- (NSString)itemType;
- (UIBarButtonItem)barButtonItem;
- (id)_createBarButtonItemWithTitle:(id)title style:(int64_t)style;
- (id)_labelColor;
- (void)_buttonPressed:(id)pressed;
- (void)setEnabled:(BOOL)enabled;
- (void)setImageSize:(CGSize)size;
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

- (void)_buttonPressed:(id)pressed
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

  attributes = [(RUIElement *)self attributes];

  if (!attributes)
  {
    v12 = 0;
    goto LABEL_24;
  }

  attributes2 = [(RUIElement *)self attributes];
  v6 = [attributes2 objectForKey:@"style"];

  v73 = -1.0;
  if ([v6 isEqualToString:@"done"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  itemType = [(RUIBarButtonItem *)self itemType];
  v9 = [itemType isEqualToString:@"editBarItem"];

  if (v9)
  {
    _labelColor3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__buttonPressed_];
    v11 = 0;
  }

  else
  {
    itemType2 = [(RUIBarButtonItem *)self itemType];
    v14 = [itemType2 isEqualToString:@"nextBarItem"];

    if (v14)
    {
      attributes3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [attributes3 localizedStringForKey:@"NEXT" value:&stru_282D68F58 table:@"Localizable"];
    }

    else
    {
      attributes3 = [(RUIElement *)self attributes];
      [attributes3 objectForKey:@"label"];
    }
    v11 = ;

    _labelColor3 = 0;
  }

  itemType3 = [(RUIBarButtonItem *)self itemType];
  v17 = [itemType3 isEqualToString:@"closeButtonBarItem"];

  attributes4 = [(RUIElement *)self attributes];
  v19 = [attributes4 objectForKeyedSubscript:@"barButtonType"];
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

  itemType4 = [(RUIBarButtonItem *)self itemType];
  v22 = [itemType4 isEqualToString:@"titleBarItem"];

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = self->_imageView;
    self->_imageView = v23;

    attributes5 = [(RUIElement *)self attributes];
    v26 = [attributes5 objectForKey:@"imageWidth"];
    [v26 floatValue];
    v28 = v27;
    attributes6 = [(RUIElement *)self attributes];
    v30 = [attributes6 objectForKey:@"imageHeight"];
    [v30 floatValue];
    v32 = v31;

    if (![(RUIElement *)self loadImage])
    {
      v33 = self->_imageView;
      self->_imageView = 0;
    }

    v34 = self->_imageView;
    style = [(RUIElement *)self style];
    _labelColor = [(RUIBarButtonItem *)self _labelColor];
    v37 = [RUIBarButtonItem titleItemWithLabel:v11 imageView:v34 imageSize:style style:_labelColor labelColor:v28, v32];

    goto LABEL_22;
  }

  itemType5 = [(RUIBarButtonItem *)self itemType];
  if ([itemType5 isEqualToString:@"backButtonBarItem"])
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

  itemType6 = [(RUIBarButtonItem *)self itemType];
  v45 = [itemType6 isEqualToString:@"backButtonBarItem"];

  if (v45)
  {
    v46 = [(RUIElement *)self URLAttributeForImageName:@"image" getScale:&v73];
    v47 = objc_alloc_init(MEMORY[0x277D75220]);
    backButton = self->_backButton;
    self->_backButton = v47;

    v49 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    attributes7 = [(RUIElement *)self attributes];
    v51 = [attributes7 objectForKey:@"systemImage"];

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
      layer = [(UIButton *)self->_backButton layer];
      [layer setCornerRadius:30.0];
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
      layer = +[RUIImageLoader sharedImageLoader];
      v67 = [layer imageForURL:v46 loadIfAbsent:1];
      v55 = [MEMORY[0x277D755B8] imageWithCGImage:v67 scale:0 orientation:v73];

      v56 = v49;
    }

LABEL_48:
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      imageFlippedForRightToLeftLayoutDirection = [v55 imageFlippedForRightToLeftLayoutDirection];
    }

    [(UIButton *)self->_backButton setImage:v55 forState:0];
    [(UIButton *)self->_backButton addTarget:self action:sel__buttonPressed_ forControlEvents:64];
    v37 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_backButton];

    goto LABEL_22;
  }

  itemType7 = [(RUIBarButtonItem *)self itemType];
  v60 = [itemType7 isEqualToString:@"tapToRadarBarItem"];

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
    v37 = _labelColor3;
    goto LABEL_22;
  }

  v37 = [(RUIBarButtonItem *)self _createBarButtonItemWithTitle:v11 style:v7];

  _labelColor2 = [(RUIBarButtonItem *)self _labelColor];

  if (_labelColor2)
  {
    _labelColor3 = [(RUIBarButtonItem *)self _labelColor];
    [(UIBarButtonItem *)v37 setTintColor:_labelColor3];
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

+ (id)titleItemWithLabel:(id)label imageView:(id)view imageSize:(CGSize)size style:(id)style labelColor:(id)color
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  styleCopy = style;
  colorCopy = color;
  v15 = MEMORY[0x277D75A68];
  labelCopy = label;
  v17 = objc_alloc_init(v15);
  [v17 setAxis:0];
  [v17 setAlignment:3];
  [v17 setDistribution:3];
  [styleCopy navBarLabelSpacingWithImage];
  if (v18 == 0.0)
  {
    v19 = 8.0;
  }

  else
  {
    [styleCopy navBarLabelSpacingWithImage];
  }

  [v17 setSpacing:v19];
  v20 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v20 setText:labelCopy];

  navBarButtonLabelFont = [styleCopy navBarButtonLabelFont];

  if (navBarButtonLabelFont)
  {
    [styleCopy navBarButtonLabelFont];
  }

  else
  {
    [MEMORY[0x277D74300] systemFontOfSize:19.0 weight:*MEMORY[0x277D74410]];
  }
  v22 = ;
  [v20 setFont:v22];

  if (colorCopy)
  {
    [v20 setTextColor:colorCopy];
  }

  if (width == 0.0 && height == 0.0)
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [viewCopy heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:25.0];
    [v24 setActive:1];

    widthAnchor = [viewCopy widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:25.0];
    [v26 setActive:1];
  }

  if (viewCopy)
  {
    [v17 addArrangedSubview:viewCopy];
  }

  [v17 addArrangedSubview:v20];
  v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v17];
  [v27 noPlatter];

  return v27;
}

- (id)_createBarButtonItemWithTitle:(id)title style:(int64_t)style
{
  titleCopy = title;
  attributes = [(RUIElement *)self attributes];
  v8 = [attributes objectForKeyedSubscript:@"parentBar"];
  v9 = [v8 isEqualToString:@"navigationBar"];

  if (style == 2 && (+[RUIPlatform isSolariumEnabled]& v9) == 1)
  {
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__buttonPressed_];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:titleCopy style:style target:self action:sel__buttonPressed_];
  }

  v11 = v10;

  return v11;
}

- (id)_labelColor
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"labelColor"];

  if (v4)
  {
    v5 = MEMORY[0x277D75348];
    attributes2 = [(RUIElement *)self attributes];
    v7 = [attributes2 objectForKey:@"labelColor"];
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
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"type"];

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = RUIBarButtonItem;
  [(RUIElement *)&v5 setEnabled:?];
  [(UIBarButtonItem *)self->_barButtonItem setEnabled:enabledCopy];
}

- (void)updateBackButtonColors
{
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];

  backButton = self->_backButton;
  if (userInterfaceStyle == 2)
  {
    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UIButton *)backButton setTintColor:systemDarkGrayColor];

    v7 = self->_backButton;
    [MEMORY[0x277D75348] systemExtraLightGrayColor];
  }

  else
  {
    systemExtraLightGrayColor = [MEMORY[0x277D75348] systemExtraLightGrayColor];
    [(UIButton *)backButton setTintColor:systemExtraLightGrayColor];

    v7 = self->_backButton;
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v9 = ;
  [(UIButton *)v7 setBackgroundColor:?];
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:height];
  [v7 setActive:1];

  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:width];
  [v8 setActive:1];
}

@end