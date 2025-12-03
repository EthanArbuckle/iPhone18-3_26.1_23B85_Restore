@interface NCNotificationManagementView
- (CGSize)_explanationSizeForPlatterWidth:(double)width;
- (CGSize)_titleSizeForPlatterWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationManagementView)initWithIcon:(id)icon title:(id)title subtitle:(id)subtitle sectionSettings:(id)settings criticalAlert:(BOOL)alert;
- (id)_newSeparatorView;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureDeliveryButtonIfNeccessary:(id)neccessary;
- (void)_configureExplanationIfNeccessary:(id)neccessary;
- (void)_configureIconIfNeccessary:(id)neccessary;
- (void)_configureOnOffToggleButtonIfNeccessary:(id)neccessary;
- (void)_configureSubtitleIfNeccessary:(id)neccessary;
- (void)_configureTitleIfNeccessary:(id)neccessary;
- (void)_configureTopSeparatorIfNeccessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateExplanationVisualStyling;
- (void)_updateTopSeparatorVisualStyling;
- (void)layoutSubviews;
@end

@implementation NCNotificationManagementView

- (NCNotificationManagementView)initWithIcon:(id)icon title:(id)title subtitle:(id)subtitle sectionSettings:(id)settings criticalAlert:(BOOL)alert
{
  iconCopy = icon;
  titleCopy = title;
  subtitleCopy = subtitle;
  settingsCopy = settings;
  v20.receiver = self;
  v20.super_class = NCNotificationManagementView;
  v16 = [(NCNotificationManagementView *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_isCriticalAlert = alert;
    [(NCNotificationManagementView *)v16 _configureIconIfNeccessary:iconCopy];
    [(NCNotificationManagementView *)v17 _configureTitleIfNeccessary:titleCopy];
    [(NCNotificationManagementView *)v17 _configureSubtitleIfNeccessary:subtitleCopy];
    [(NCNotificationManagementView *)v17 _configureDeliveryButtonIfNeccessary:settingsCopy];
    [(NCNotificationManagementView *)v17 _configureExplanationIfNeccessary:settingsCopy];
    [(NCNotificationManagementView *)v17 _configureOnOffToggleButtonIfNeccessary:settingsCopy];
    layer = [(NCNotificationManagementView *)v17 layer];
    [layer setAllowsGroupBlending:0];
  }

  return v17;
}

- (void)_configureIconIfNeccessary:(id)neccessary
{
  if (!self->_icon)
  {
    v4 = MEMORY[0x277D755E8];
    neccessaryCopy = neccessary;
    v6 = [[v4 alloc] initWithImage:neccessaryCopy];

    icon = self->_icon;
    self->_icon = v6;

    v8 = self->_icon;

    [(NCNotificationManagementView *)self addSubview:v8];
  }
}

- (void)_configureTitleIfNeccessary:(id)neccessary
{
  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D74310];
    v5 = *MEMORY[0x277D76A00];
    neccessaryCopy = neccessary;
    v16 = [v4 preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:2 options:0];
    v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:2 options:0];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v8;

    [(UILabel *)self->_titleLabel setText:neccessaryCopy];
    v10 = self->_titleLabel;
    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
    v12 = self->_titleLabel;
    [v7 pointSize];
    v14 = v13;
    [v16 pointSize];
    [(UILabel *)v12 setMinimumScaleFactor:v14 / v15];
    [(NCNotificationManagementView *)self addSubview:self->_titleLabel];
  }
}

- (void)_configureSubtitleIfNeccessary:(id)neccessary
{
  if (!self->_subtitleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    neccessaryCopy = neccessary;
    v6 = objc_alloc_init(v4);
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v6;

    [(UILabel *)self->_subtitleLabel setText:neccessaryCopy];
    v8 = self->_subtitleLabel;
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v8 setFont:v9];

    v10 = self->_subtitleLabel;

    [(NCNotificationManagementView *)self addSubview:v10];
  }
}

- (void)_configureTopSeparatorIfNeccessary
{
  if (!self->_topSeparator)
  {
    _newSeparatorView = [(NCNotificationManagementView *)self _newSeparatorView];
    topSeparator = self->_topSeparator;
    self->_topSeparator = _newSeparatorView;

    [(NCNotificationManagementView *)self addSubview:self->_topSeparator];

    [(NCNotificationManagementView *)self _updateTopSeparatorVisualStyling];
  }
}

- (void)_configureDeliveryButtonIfNeccessary:(id)neccessary
{
  neccessaryCopy = neccessary;
  if (!self->_deliveryButton && !self->_isCriticalAlert)
  {
    v12 = neccessaryCopy;
    isDeliveredQuietly = [neccessaryCopy isDeliveredQuietly];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = v6;
    if (isDeliveredQuietly)
    {
      v8 = @"NOTIFICATION_MANAGEMENT_DELIVER_PROMINENTLY";
    }

    else
    {
      v8 = @"NOTIFICATION_MANAGEMENT_DELIVER_QUIETLY";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_282FE84F8 table:0];

    v10 = [NCNotificationManagementBlueButton buttonWithTitle:v9];
    deliveryButton = self->_deliveryButton;
    self->_deliveryButton = v10;

    [(NCNotificationManagementView *)self addSubview:self->_deliveryButton];
    neccessaryCopy = v12;
  }
}

- (void)_configureOnOffToggleButtonIfNeccessary:(id)neccessary
{
  neccessaryCopy = neccessary;
  if (!self->_onOffToggleButton)
  {
    v12 = neccessaryCopy;
    if (self->_isCriticalAlert)
    {
      criticalAlertsEnabled = [neccessaryCopy criticalAlertsEnabled];
      v6 = NCUserNotificationsUIKitFrameworkBundle();
      if (criticalAlertsEnabled)
      {
        v7 = @"NOTIFICATION_MANAGEMENT_TURN_OFF_CRITICAL_ALERTS";
      }

      else
      {
        v7 = @"NOTIFICATION_MANAGEMENT_TURN_ON_CRITICAL_ALERTS";
      }
    }

    else
    {
      notificationsEnabled = [neccessaryCopy notificationsEnabled];
      v6 = NCUserNotificationsUIKitFrameworkBundle();
      if (notificationsEnabled)
      {
        v7 = @"NOTIFICATION_MANAGEMENT_TURN_OFF_DEFAULT";
      }

      else
      {
        v7 = @"NOTIFICATION_MANAGEMENT_TURN_ON_DEFAULT";
      }
    }

    v9 = [v6 localizedStringForKey:v7 value:&stru_282FE84F8 table:0];

    v10 = [NCNotificationManagementBlueButton buttonWithTitle:v9];
    onOffToggleButton = self->_onOffToggleButton;
    self->_onOffToggleButton = v10;

    [(NCNotificationManagementView *)self addSubview:self->_onOffToggleButton];
    neccessaryCopy = v12;
  }
}

- (void)_updateExplanationVisualStyling
{
  explanation = self->_explanation;
  if (explanation)
  {
    v4 = [(NCNotificationManagementView *)self visualStylingProviderForCategory:1];
    v3 = [v4 _visualStylingForStyle:1];
    [(UILabel *)explanation mt_replaceVisualStyling:v3];
  }
}

- (void)_configureExplanationIfNeccessary:(id)neccessary
{
  neccessaryCopy = neccessary;
  if (!self->_explanation)
  {
    v18 = neccessaryCopy;
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    explanation = self->_explanation;
    self->_explanation = v5;

    if (self->_isCriticalAlert)
    {
      mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
      deviceClass = [mEMORY[0x277CF0CA8] deviceClass];

      if (deviceClass == 2)
      {
        v9 = NCUserNotificationsUIKitFrameworkBundle();
        v10 = v9;
        v11 = @"NOTIFICATION_MANAGEMENT_CRITICAL_EXPLANATION_IPAD";
LABEL_12:
        v15 = [v9 localizedStringForKey:v11 value:&stru_282FE84F8 table:0];

        [(UILabel *)self->_explanation setText:v15];
        [(UILabel *)self->_explanation setContentMode:4];
        [(UILabel *)self->_explanation setTextAlignment:1];
        preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
        v17 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];

        [(UILabel *)self->_explanation setFont:v17];
        [(UILabel *)self->_explanation setNumberOfLines:0];
        [(NCNotificationManagementView *)self _updateExplanationVisualStyling];
        [(NCNotificationManagementView *)self addSubview:self->_explanation];

        neccessaryCopy = v18;
        goto LABEL_13;
      }

      mEMORY[0x277CF0CA8]2 = [MEMORY[0x277CF0CA8] sharedInstance];
      deviceClass2 = [mEMORY[0x277CF0CA8]2 deviceClass];

      v10 = NCUserNotificationsUIKitFrameworkBundle();
      if (deviceClass2 == 1)
      {
        v11 = @"NOTIFICATION_MANAGEMENT_CRITICAL_EXPLANATION_IPOD";
      }

      else
      {
        v11 = @"NOTIFICATION_MANAGEMENT_CRITICAL_EXPLANATION_IPHONE";
      }
    }

    else
    {
      isDeliveredQuietly = [v18 isDeliveredQuietly];
      v10 = NCUserNotificationsUIKitFrameworkBundle();
      if (isDeliveredQuietly)
      {
        v11 = @"NOTIFICATION_MANAGEMENT_PROMINENT_EXPLANATION";
      }

      else
      {
        v11 = @"NOTIFICATION_MANAGEMENT_QUIET_EXPLANATION";
      }
    }

    v9 = v10;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateTopSeparatorVisualStyling
{
  topSeparator = self->_topSeparator;
  if (topSeparator)
  {
    v4 = [(NCNotificationManagementView *)self visualStylingProviderForCategory:2];
    v3 = [v4 _visualStylingForStyle:3];
    [(UIView *)topSeparator mt_replaceVisualStyling:v3];
  }
}

- (id)_newSeparatorView
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v2 setUserInteractionEnabled:0];
  [v2 setAutoresizingMask:2];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setBackgroundColor:whiteColor];

  return v2;
}

- (CGSize)_titleSizeForPlatterWidth:(double)width
{
  v3 = width + -32.0 + -40.0 + -16.0;
  [(UILabel *)self->_titleLabel sizeThatFits:v3, 1.79769313e308];
  _NCMainScreenScale();
  UISizeRoundToScale();
  if (v4 >= v3)
  {
    v4 = v3;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_explanationSizeForPlatterWidth:(double)width
{
  v3 = width + -32.0;
  [(UILabel *)self->_explanation sizeThatFits:width + -32.0, 1.79769313e308];
  _NCMainScreenScale();
  UISizeRoundToScale();
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = NCNotificationManagementView;
  [(NCNotificationManagementView *)&v36 layoutSubviews];
  [(NCNotificationManagementView *)self _configureTopSeparatorIfNeccessary];
  [(NCNotificationManagementView *)self bounds];
  Width = CGRectGetWidth(v37);
  v35.receiver = self;
  v35.super_class = NCNotificationManagementView;
  _shouldReverseLayoutDirection = [(NCNotificationManagementView *)&v35 _shouldReverseLayoutDirection];
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  v32 = v6;
  v33 = v5;
  v30 = v8;
  v31 = v7;
  [(UIImageView *)self->_icon setFrame:?];
  if (_shouldReverseLayoutDirection)
  {
    [(UILabel *)self->_titleLabel frame];
    v9 = CGRectGetWidth(v38);
  }

  v10 = [(UILabel *)self->_titleLabel font:v9];
  [v10 lineHeight];

  [(NCNotificationManagementView *)self _titleSizeForPlatterWidth:Width];
  titleLabel = self->_titleLabel;
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  [(UILabel *)titleLabel setFrame:?];
  [(UILabel *)self->_titleLabel _firstLineBaselineOffsetFromBoundsTop];
  font = [(UILabel *)self->_subtitleLabel font];
  [font _scaledValueForValue:24.0];

  v34 = Width;
  v13 = NCRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_subtitleLabel setBounds:?];
  [(UILabel *)self->_subtitleLabel _firstLineBaselineOffsetFromBoundsTop];
  if (_shouldReverseLayoutDirection)
  {
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    CGRectGetWidth(v39);
  }

  v40.origin.y = v32;
  v40.origin.x = v33;
  v40.size.height = v30;
  v40.size.width = v31;
  CGRectGetMaxY(v40);
  subtitleLabel = self->_subtitleLabel;
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  [(UILabel *)subtitleLabel setFrame:?];
  font2 = [(UILabel *)self->_subtitleLabel font];
  [font2 _scaledValueForValue:8.0];

  _NCMainScreenScale();
  UIPointRoundToScale();
  v23 = v22;
  v25 = v24;
  [(NCNotificationManagementView *)self _separatorHeight];
  [(UIView *)self->_topSeparator setFrame:v23, v25, v34, v26];
  [(NCNotificationManagementView *)self _separatorHeight];
  deliveryButton = self->_deliveryButton;
  if (deliveryButton)
  {
    _NCMainScreenScale();
    UIRectIntegralWithScale();
    [(NCNotificationManagementBlueButton *)deliveryButton setFrame:?];
  }

  onOffToggleButton = self->_onOffToggleButton;
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  [(NCNotificationManagementBlueButton *)onOffToggleButton setFrame:?];
  [(NCNotificationManagementView *)self _explanationSizeForPlatterWidth:v34];
  explanation = self->_explanation;
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  [(UILabel *)explanation setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(NCNotificationManagementView *)self _configureTopSeparatorIfNeccessary:fits.width];
  [(NCNotificationManagementView *)self _titleSizeForPlatterWidth:width];
  v6 = fmax(v5, 44.0) + 16.0;
  font = [(UILabel *)self->_subtitleLabel font];
  [font _scaledValueForValue:32.0];
  v9 = v6 + v8;

  [(NCNotificationManagementView *)self _separatorHeight];
  v11 = v9 + v10 + 8.0;
  if (self->_deliveryButton)
  {
    v11 = v11 + 58.0;
  }

  v12 = v11 + 82.0;
  [(NCNotificationManagementView *)self _explanationSizeForPlatterWidth:width];
  v14 = v13 + v12 + 16.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = NCNotificationManagementView;
  [(NCNotificationManagementView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(NSMutableDictionary *)self->_categoriesToProviders removeAllObjects];
  [(NCNotificationManagementView *)self _updateTopSeparatorVisualStyling];
  [(NCNotificationManagementView *)self _updateExplanationVisualStyling];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (!self->_categoriesToProviders)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoriesToProviders = self->_categoriesToProviders;
    self->_categoriesToProviders = v5;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v8 = [(NSMutableDictionary *)self->_categoriesToProviders objectForKey:v7];
  if (!v8)
  {
    v9 = MEMORY[0x277D26740];
    traitCollection = [(NCNotificationManagementView *)self traitCollection];
    v8 = [v9 _visualStylingProviderForRecipe:53 category:category andUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    if (v8)
    {
      [(NSMutableDictionary *)self->_categoriesToProviders setObject:v8 forKey:v7];
    }
  }

  return v8;
}

@end