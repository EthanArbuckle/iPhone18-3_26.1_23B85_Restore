@interface PRXButton
+ (PRXButton)buttonWithProximityType:(int64_t)type usesLegacyStyling:(BOOL)styling usingCustomColors:(id)colors;
+ (id)defaultPRXButtonConfigurationForTinting:(BOOL)tinting traitCollection:(id)collection;
- (CGSize)intrinsicContentSize;
- (double)_minimumIntrinsicHeight;
- (void)setActive:(BOOL)active;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)toggleActive;
@end

@implementation PRXButton

+ (PRXButton)buttonWithProximityType:(int64_t)type usesLegacyStyling:(BOOL)styling usingCustomColors:(id)colors
{
  stylingCopy = styling;
  colorsCopy = colors;
  if (stylingCopy)
  {
    v9 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] colorWithRed:0.831373 green:0.827451 blue:0.854902 alpha:1.0];
  }

  else
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v9 = 0;
  }

  v11 = 0;
  if (type > 2)
  {
    if (type <= 4)
    {
      if (type != 3)
      {
LABEL_11:
        if (_UISolariumEnabled())
        {
          v67.receiver = self;
          v67.super_class = &OBJC_METACLASS___PRXButton;
          v11 = objc_msgSendSuper2(&v67, sel_buttonWithType_, 0);
          layer = [v11 layer];
          [layer setCornerRadius:30.0 * 0.5];

          quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
          [v11 setBackgroundColor:quaternarySystemFillColor];

          labelColor = [MEMORY[0x277D75348] labelColor];
          [v11 setTintColor:labelColor];

          defaultMetrics = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0] scale:2];
          v16 = [MEMORY[0x277D755D0] configurationWithWeight:6];
          [defaultMetrics configurationByApplyingConfiguration:v16];
          v17 = v58 = secondarySystemBackgroundColor;
          if (type == 2)
          {
            v18 = @"xmark";
          }

          else
          {
            v18 = @"info";
          }

          [MEMORY[0x277D755B8] systemImageNamed:v18];
          v57 = stylingCopy;
          v19 = v9;
          v21 = v20 = colorsCopy;
          [v11 setPreferredSymbolConfiguration:v17 forImageInState:0];
          labelColor2 = [MEMORY[0x277D75348] labelColor];
          v23 = [v21 imageWithTintColor:labelColor2];
          [v11 setImage:v23 forState:0];

          colorsCopy = v20;
          v9 = v19;
          stylingCopy = v57;

          secondarySystemBackgroundColor = v58;
        }

        else
        {
          v66.receiver = self;
          v66.super_class = &OBJC_METACLASS___PRXButton;
          v11 = objc_msgSendSuper2(&v66, sel_buttonWithType_, 7);
          v38 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
          tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
          v40 = [v38 imageWithTintColor:tertiarySystemFillColor];
          [v11 setBackgroundImage:v40 forState:0];

          defaultMetrics = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:15.0];
          [v11 setPreferredSymbolConfiguration:defaultMetrics forImageInState:0];
        }

LABEL_38:

        if (!v11)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v60.receiver = self;
      v60.super_class = &OBJC_METACLASS___PRXButton;
      v11 = objc_msgSendSuper2(&v60, sel_buttonWithType_, 1);
      secondarySystemBackgroundColor2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [v11 setTintColor:secondarySystemBackgroundColor2];

      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      v24 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74410]];
      v25 = [defaultMetrics scaledFontForFont:v24];
LABEL_22:
      v33 = v25;
      titleLabel = [v11 titleLabel];
      [titleLabel setFont:v33];

      goto LABEL_38;
    }

    if (type != 5)
    {
      if (type != 6)
      {
        goto LABEL_40;
      }

      v63.receiver = self;
      v63.super_class = &OBJC_METACLASS___PRXButton;
      v11 = objc_msgSendSuper2(&v63, sel_buttonWithType_, 1);
      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      v24 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
      v25 = [defaultMetrics scaledFontForFont:v24 compatibleWithTraitCollection:v9];
      goto LABEL_22;
    }

    if (!colorsCopy)
    {
      v35 = PRXDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260F65000, v35, OS_LOG_TYPE_DEFAULT, "[WARN] customColor must be set if using PRXButtonTypeProminentCustom", buf, 2u);
      }
    }

    v61.receiver = self;
    v61.super_class = &OBJC_METACLASS___PRXButton;
    v11 = objc_msgSendSuper2(&v61, sel_buttonWithType_, 1);
    if (_UISolariumEnabled())
    {
      defaultMetrics = [objc_opt_class() defaultPRXButtonConfigurationForTinting:1 traitCollection:v9];
      backgroundColor = [colorsCopy backgroundColor];
      [defaultMetrics setBaseBackgroundColor:backgroundColor];

      textColor = [colorsCopy textColor];
      [defaultMetrics setBaseForegroundColor:textColor];

LABEL_32:
      [v11 setConfiguration:defaultMetrics];
      goto LABEL_38;
    }

    backgroundColor2 = [colorsCopy backgroundColor];
    [v11 setBackgroundColor:backgroundColor2];

    [v11 setCustomColors:colorsCopy];
    [v11 _setContinuousCornerRadius:12.0];
    [v11 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    v43 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v44 = [defaultMetrics2 scaledFontForFont:v43 compatibleWithTraitCollection:v9];
    titleLabel2 = [v11 titleLabel];
    [titleLabel2 setFont:v44];

    textColor2 = [colorsCopy textColor];
    [v11 setTitleColor:textColor2 forState:0];

    v47 = MEMORY[0x277D75348];
    goto LABEL_37;
  }

  if (type)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    }

    v64.receiver = self;
    v64.super_class = &OBJC_METACLASS___PRXButton;
    v11 = objc_msgSendSuper2(&v64, sel_buttonWithType_, 0);
    if (_UISolariumEnabled())
    {
      defaultMetrics = [objc_opt_class() defaultPRXButtonConfigurationForTinting:1 traitCollection:v9];
      goto LABEL_32;
    }

    [v11 setBackgroundColor:secondarySystemBackgroundColor];
    [v11 _setContinuousCornerRadius:12.0];
    [v11 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
    defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
    v49 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v50 = [defaultMetrics3 scaledFontForFont:v49 compatibleWithTraitCollection:v9];
    titleLabel3 = [v11 titleLabel];
    [titleLabel3 setFont:v50];

    labelColor3 = [MEMORY[0x277D75348] labelColor];
    [v11 setTitleColor:labelColor3 forState:0];

    v47 = MEMORY[0x277D75348];
LABEL_37:
    defaultMetrics = [v47 secondaryLabelColor];
    [v11 setTitleColor:defaultMetrics forState:2];
    goto LABEL_38;
  }

  v59 = secondarySystemBackgroundColor;
  v65.receiver = self;
  v65.super_class = &OBJC_METACLASS___PRXButton;
  v11 = objc_msgSendSuper2(&v65, sel_buttonWithType_, 1);
  defaultMetrics4 = [MEMORY[0x277D75520] defaultMetrics];
  v27 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
  v28 = [defaultMetrics4 scaledFontForFont:v27 compatibleWithTraitCollection:v9];
  titleLabel4 = [v11 titleLabel];
  [titleLabel4 setFont:v28];

  if (_UISolariumEnabled())
  {
    defaultMetrics = [objc_opt_class() defaultPRXButtonConfigurationForTinting:0 traitCollection:v9];
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    [defaultMetrics setBaseBackgroundColor:systemGray6Color];

    labelColor4 = [MEMORY[0x277D75348] labelColor];
    [defaultMetrics setBaseForegroundColor:labelColor4];

    [v11 setConfiguration:defaultMetrics];
    secondarySystemBackgroundColor = v59;
    goto LABEL_38;
  }

  secondarySystemBackgroundColor = v59;
  if (v11)
  {
LABEL_39:
    v11[94] = type;
  }

LABEL_40:
  titleLabel5 = [v11 titleLabel];
  [titleLabel5 setAdjustsFontSizeToFitWidth:1];

  titleLabel6 = [v11 titleLabel];
  [titleLabel6 setAdjustsFontForContentSizeCategory:!stylingCopy];

  LODWORD(v55) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v55];
  [v11 setMaximumContentSizeCategory:*MEMORY[0x277D76840]];

  return v11;
}

+ (id)defaultPRXButtonConfigurationForTinting:(BOOL)tinting traitCollection:(id)collection
{
  collectionCopy = collection;
  if (tinting)
  {
    [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] _glassButtonConfiguration];
  }
  v6 = ;
  [v6 setCornerStyle:4];
  [v6 setContentInsets:{10.0, 20.0, 10.0, 20.0}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__PRXButton_defaultPRXButtonConfigurationForTinting_traitCollection___block_invoke;
  v9[3] = &unk_279ACC228;
  v10 = collectionCopy;
  v7 = collectionCopy;
  [v6 setTitleTextAttributesTransformer:v9];

  return v6;
}

id __69__PRXButton_defaultPRXButtonConfigurationForTinting_traitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:*(a1 + 32)];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D740A8]];

  v8 = *MEMORY[0x277D74118];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D74118]];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D74240]);
  }

  v11 = v10;

  [v11 setAlignment:1];
  [v4 setObject:v11 forKeyedSubscript:v8];

  return v4;
}

- (double)_minimumIntrinsicHeight
{
  proximityButtonType = self->_proximityButtonType;
  if (proximityButtonType > 5)
  {
    return 0.0;
  }

  if (((1 << proximityButtonType) & 0x23) != 0)
  {
    return 50.0;
  }

  if (((1 << proximityButtonType) & 0x14) != 0)
  {
    return 30.0;
  }

  else
  {
    return 0.0;
  }
}

- (CGSize)intrinsicContentSize
{
  v14.receiver = self;
  v14.super_class = PRXButton;
  [(PRXButton *)&v14 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(PRXButton *)self _minimumIntrinsicHeight];
  v8 = v7;
  proximityButtonType = self->_proximityButtonType;
  if (proximityButtonType == 4 || proximityButtonType == 2)
  {
    [(PRXButton *)self _minimumIntrinsicHeight];
    v4 = v11;
  }

  if (v6 >= v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = v8;
  }

  v13 = v4;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = PRXButton;
  [(PRXButton *)&v6 setHighlighted:?];
  if ((self->_proximityButtonType | 4) == 5)
  {
    v5 = 1.0;
    if (highlightedCopy)
    {
      v5 = 0.5;
    }

    [(PRXButton *)self setAlpha:v5];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = PRXButton;
  [(PRXButton *)&v5 setEnabled:enabled];
  if ([(PRXButton *)self proximityButtonType]== 5)
  {
    if ([(PRXButton *)self isEnabled])
    {
      [(PRXActionCustomColors *)self->_customColors backgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    }
    v4 = ;
    [(PRXButton *)self setBackgroundColor:v4];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(PRXButton *)self proximityButtonType]== 4)
  {
    self->_active = activeCopy;
    if (activeCopy)
    {
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [(PRXButton *)self setBackgroundColor:systemBlueColor];

      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [(PRXButton *)self setBackgroundColor:secondarySystemBackgroundColor];

      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v7 = ;
    [(PRXButton *)self setTintColor:v7];
  }
}

- (void)toggleActive
{
  v3 = [(PRXButton *)self isActive]^ 1;

  [(PRXButton *)self setActive:v3];
}

@end