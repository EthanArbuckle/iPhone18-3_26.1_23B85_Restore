@interface PRXButton
+ (PRXButton)buttonWithProximityType:(int64_t)a3 usesLegacyStyling:(BOOL)a4 usingCustomColors:(id)a5;
+ (id)defaultPRXButtonConfigurationForTinting:(BOOL)a3 traitCollection:(id)a4;
- (CGSize)intrinsicContentSize;
- (double)_minimumIntrinsicHeight;
- (void)setActive:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)toggleActive;
@end

@implementation PRXButton

+ (PRXButton)buttonWithProximityType:(int64_t)a3 usesLegacyStyling:(BOOL)a4 usingCustomColors:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (v5)
  {
    v9 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
    v10 = [MEMORY[0x277D75348] colorWithRed:0.831373 green:0.827451 blue:0.854902 alpha:1.0];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v9 = 0;
  }

  v11 = 0;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
LABEL_11:
        if (_UISolariumEnabled())
        {
          v67.receiver = a1;
          v67.super_class = &OBJC_METACLASS___PRXButton;
          v11 = objc_msgSendSuper2(&v67, sel_buttonWithType_, 0);
          v12 = [v11 layer];
          [v12 setCornerRadius:30.0 * 0.5];

          v13 = [MEMORY[0x277D75348] quaternarySystemFillColor];
          [v11 setBackgroundColor:v13];

          v14 = [MEMORY[0x277D75348] labelColor];
          [v11 setTintColor:v14];

          v15 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0] scale:2];
          v16 = [MEMORY[0x277D755D0] configurationWithWeight:6];
          [v15 configurationByApplyingConfiguration:v16];
          v17 = v58 = v10;
          if (a3 == 2)
          {
            v18 = @"xmark";
          }

          else
          {
            v18 = @"info";
          }

          [MEMORY[0x277D755B8] systemImageNamed:v18];
          v57 = v5;
          v19 = v9;
          v21 = v20 = v8;
          [v11 setPreferredSymbolConfiguration:v17 forImageInState:0];
          v22 = [MEMORY[0x277D75348] labelColor];
          v23 = [v21 imageWithTintColor:v22];
          [v11 setImage:v23 forState:0];

          v8 = v20;
          v9 = v19;
          v5 = v57;

          v10 = v58;
        }

        else
        {
          v66.receiver = a1;
          v66.super_class = &OBJC_METACLASS___PRXButton;
          v11 = objc_msgSendSuper2(&v66, sel_buttonWithType_, 7);
          v38 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
          v39 = [MEMORY[0x277D75348] tertiarySystemFillColor];
          v40 = [v38 imageWithTintColor:v39];
          [v11 setBackgroundImage:v40 forState:0];

          v15 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:15.0];
          [v11 setPreferredSymbolConfiguration:v15 forImageInState:0];
        }

LABEL_38:

        if (!v11)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v60.receiver = a1;
      v60.super_class = &OBJC_METACLASS___PRXButton;
      v11 = objc_msgSendSuper2(&v60, sel_buttonWithType_, 1);
      v32 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [v11 setTintColor:v32];

      v15 = [MEMORY[0x277D75520] defaultMetrics];
      v24 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74410]];
      v25 = [v15 scaledFontForFont:v24];
LABEL_22:
      v33 = v25;
      v34 = [v11 titleLabel];
      [v34 setFont:v33];

      goto LABEL_38;
    }

    if (a3 != 5)
    {
      if (a3 != 6)
      {
        goto LABEL_40;
      }

      v63.receiver = a1;
      v63.super_class = &OBJC_METACLASS___PRXButton;
      v11 = objc_msgSendSuper2(&v63, sel_buttonWithType_, 1);
      v15 = [MEMORY[0x277D75520] defaultMetrics];
      v24 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
      v25 = [v15 scaledFontForFont:v24 compatibleWithTraitCollection:v9];
      goto LABEL_22;
    }

    if (!v8)
    {
      v35 = PRXDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260F65000, v35, OS_LOG_TYPE_DEFAULT, "[WARN] customColor must be set if using PRXButtonTypeProminentCustom", buf, 2u);
      }
    }

    v61.receiver = a1;
    v61.super_class = &OBJC_METACLASS___PRXButton;
    v11 = objc_msgSendSuper2(&v61, sel_buttonWithType_, 1);
    if (_UISolariumEnabled())
    {
      v15 = [objc_opt_class() defaultPRXButtonConfigurationForTinting:1 traitCollection:v9];
      v36 = [v8 backgroundColor];
      [v15 setBaseBackgroundColor:v36];

      v37 = [v8 textColor];
      [v15 setBaseForegroundColor:v37];

LABEL_32:
      [v11 setConfiguration:v15];
      goto LABEL_38;
    }

    v41 = [v8 backgroundColor];
    [v11 setBackgroundColor:v41];

    [v11 setCustomColors:v8];
    [v11 _setContinuousCornerRadius:12.0];
    [v11 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
    v42 = [MEMORY[0x277D75520] defaultMetrics];
    v43 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v44 = [v42 scaledFontForFont:v43 compatibleWithTraitCollection:v9];
    v45 = [v11 titleLabel];
    [v45 setFont:v44];

    v46 = [v8 textColor];
    [v11 setTitleColor:v46 forState:0];

    v47 = MEMORY[0x277D75348];
    goto LABEL_37;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    }

    v64.receiver = a1;
    v64.super_class = &OBJC_METACLASS___PRXButton;
    v11 = objc_msgSendSuper2(&v64, sel_buttonWithType_, 0);
    if (_UISolariumEnabled())
    {
      v15 = [objc_opt_class() defaultPRXButtonConfigurationForTinting:1 traitCollection:v9];
      goto LABEL_32;
    }

    [v11 setBackgroundColor:v10];
    [v11 _setContinuousCornerRadius:12.0];
    [v11 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
    v48 = [MEMORY[0x277D75520] defaultMetrics];
    v49 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v50 = [v48 scaledFontForFont:v49 compatibleWithTraitCollection:v9];
    v51 = [v11 titleLabel];
    [v51 setFont:v50];

    v52 = [MEMORY[0x277D75348] labelColor];
    [v11 setTitleColor:v52 forState:0];

    v47 = MEMORY[0x277D75348];
LABEL_37:
    v15 = [v47 secondaryLabelColor];
    [v11 setTitleColor:v15 forState:2];
    goto LABEL_38;
  }

  v59 = v10;
  v65.receiver = a1;
  v65.super_class = &OBJC_METACLASS___PRXButton;
  v11 = objc_msgSendSuper2(&v65, sel_buttonWithType_, 1);
  v26 = [MEMORY[0x277D75520] defaultMetrics];
  v27 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
  v28 = [v26 scaledFontForFont:v27 compatibleWithTraitCollection:v9];
  v29 = [v11 titleLabel];
  [v29 setFont:v28];

  if (_UISolariumEnabled())
  {
    v15 = [objc_opt_class() defaultPRXButtonConfigurationForTinting:0 traitCollection:v9];
    v30 = [MEMORY[0x277D75348] systemGray6Color];
    [v15 setBaseBackgroundColor:v30];

    v31 = [MEMORY[0x277D75348] labelColor];
    [v15 setBaseForegroundColor:v31];

    [v11 setConfiguration:v15];
    v10 = v59;
    goto LABEL_38;
  }

  v10 = v59;
  if (v11)
  {
LABEL_39:
    v11[94] = a3;
  }

LABEL_40:
  v53 = [v11 titleLabel];
  [v53 setAdjustsFontSizeToFitWidth:1];

  v54 = [v11 titleLabel];
  [v54 setAdjustsFontForContentSizeCategory:!v5];

  LODWORD(v55) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v55];
  [v11 setMaximumContentSizeCategory:*MEMORY[0x277D76840]];

  return v11;
}

+ (id)defaultPRXButtonConfigurationForTinting:(BOOL)a3 traitCollection:(id)a4
{
  v5 = a4;
  if (a3)
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
  v10 = v5;
  v7 = v5;
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PRXButton;
  [(PRXButton *)&v6 setHighlighted:?];
  if ((self->_proximityButtonType | 4) == 5)
  {
    v5 = 1.0;
    if (v3)
    {
      v5 = 0.5;
    }

    [(PRXButton *)self setAlpha:v5];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PRXButton;
  [(PRXButton *)&v5 setEnabled:a3];
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

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  if ([(PRXButton *)self proximityButtonType]== 4)
  {
    self->_active = v3;
    if (v3)
    {
      v5 = [MEMORY[0x277D75348] systemBlueColor];
      [(PRXButton *)self setBackgroundColor:v5];

      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      v6 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [(PRXButton *)self setBackgroundColor:v6];

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