@interface NCNotificationManagementView
- (CGSize)_explanationSizeForPlatterWidth:(double)a3;
- (CGSize)_titleSizeForPlatterWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationManagementView)initWithIcon:(id)a3 title:(id)a4 subtitle:(id)a5 sectionSettings:(id)a6 criticalAlert:(BOOL)a7;
- (id)_newSeparatorView;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_configureDeliveryButtonIfNeccessary:(id)a3;
- (void)_configureExplanationIfNeccessary:(id)a3;
- (void)_configureIconIfNeccessary:(id)a3;
- (void)_configureOnOffToggleButtonIfNeccessary:(id)a3;
- (void)_configureSubtitleIfNeccessary:(id)a3;
- (void)_configureTitleIfNeccessary:(id)a3;
- (void)_configureTopSeparatorIfNeccessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateExplanationVisualStyling;
- (void)_updateTopSeparatorVisualStyling;
- (void)layoutSubviews;
@end

@implementation NCNotificationManagementView

- (NCNotificationManagementView)initWithIcon:(id)a3 title:(id)a4 subtitle:(id)a5 sectionSettings:(id)a6 criticalAlert:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = NCNotificationManagementView;
  v16 = [(NCNotificationManagementView *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_isCriticalAlert = a7;
    [(NCNotificationManagementView *)v16 _configureIconIfNeccessary:v12];
    [(NCNotificationManagementView *)v17 _configureTitleIfNeccessary:v13];
    [(NCNotificationManagementView *)v17 _configureSubtitleIfNeccessary:v14];
    [(NCNotificationManagementView *)v17 _configureDeliveryButtonIfNeccessary:v15];
    [(NCNotificationManagementView *)v17 _configureExplanationIfNeccessary:v15];
    [(NCNotificationManagementView *)v17 _configureOnOffToggleButtonIfNeccessary:v15];
    v18 = [(NCNotificationManagementView *)v17 layer];
    [v18 setAllowsGroupBlending:0];
  }

  return v17;
}

- (void)_configureIconIfNeccessary:(id)a3
{
  if (!self->_icon)
  {
    v4 = MEMORY[0x277D755E8];
    v5 = a3;
    v6 = [[v4 alloc] initWithImage:v5];

    icon = self->_icon;
    self->_icon = v6;

    v8 = self->_icon;

    [(NCNotificationManagementView *)self addSubview:v8];
  }
}

- (void)_configureTitleIfNeccessary:(id)a3
{
  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D74310];
    v5 = *MEMORY[0x277D76A00];
    v6 = a3;
    v16 = [v4 preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:2 options:0];
    v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:2 options:0];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v8;

    [(UILabel *)self->_titleLabel setText:v6];
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

- (void)_configureSubtitleIfNeccessary:(id)a3
{
  if (!self->_subtitleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v6;

    [(UILabel *)self->_subtitleLabel setText:v5];
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
    v3 = [(NCNotificationManagementView *)self _newSeparatorView];
    topSeparator = self->_topSeparator;
    self->_topSeparator = v3;

    [(NCNotificationManagementView *)self addSubview:self->_topSeparator];

    [(NCNotificationManagementView *)self _updateTopSeparatorVisualStyling];
  }
}

- (void)_configureDeliveryButtonIfNeccessary:(id)a3
{
  v4 = a3;
  if (!self->_deliveryButton && !self->_isCriticalAlert)
  {
    v12 = v4;
    v5 = [v4 isDeliveredQuietly];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = v6;
    if (v5)
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
    v4 = v12;
  }
}

- (void)_configureOnOffToggleButtonIfNeccessary:(id)a3
{
  v4 = a3;
  if (!self->_onOffToggleButton)
  {
    v12 = v4;
    if (self->_isCriticalAlert)
    {
      v5 = [v4 criticalAlertsEnabled];
      v6 = NCUserNotificationsUIKitFrameworkBundle();
      if (v5)
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
      v8 = [v4 notificationsEnabled];
      v6 = NCUserNotificationsUIKitFrameworkBundle();
      if (v8)
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
    v4 = v12;
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

- (void)_configureExplanationIfNeccessary:(id)a3
{
  v4 = a3;
  if (!self->_explanation)
  {
    v18 = v4;
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    explanation = self->_explanation;
    self->_explanation = v5;

    if (self->_isCriticalAlert)
    {
      v7 = [MEMORY[0x277CF0CA8] sharedInstance];
      v8 = [v7 deviceClass];

      if (v8 == 2)
      {
        v9 = NCUserNotificationsUIKitFrameworkBundle();
        v10 = v9;
        v11 = @"NOTIFICATION_MANAGEMENT_CRITICAL_EXPLANATION_IPAD";
LABEL_12:
        v15 = [v9 localizedStringForKey:v11 value:&stru_282FE84F8 table:0];

        [(UILabel *)self->_explanation setText:v15];
        [(UILabel *)self->_explanation setContentMode:4];
        [(UILabel *)self->_explanation setTextAlignment:1];
        v16 = [MEMORY[0x277CF0D60] preferredFontProvider];
        v17 = [v16 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];

        [(UILabel *)self->_explanation setFont:v17];
        [(UILabel *)self->_explanation setNumberOfLines:0];
        [(NCNotificationManagementView *)self _updateExplanationVisualStyling];
        [(NCNotificationManagementView *)self addSubview:self->_explanation];

        v4 = v18;
        goto LABEL_13;
      }

      v13 = [MEMORY[0x277CF0CA8] sharedInstance];
      v14 = [v13 deviceClass];

      v10 = NCUserNotificationsUIKitFrameworkBundle();
      if (v14 == 1)
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
      v12 = [v18 isDeliveredQuietly];
      v10 = NCUserNotificationsUIKitFrameworkBundle();
      if (v12)
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
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (CGSize)_titleSizeForPlatterWidth:(double)a3
{
  v3 = a3 + -32.0 + -40.0 + -16.0;
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

- (CGSize)_explanationSizeForPlatterWidth:(double)a3
{
  v3 = a3 + -32.0;
  [(UILabel *)self->_explanation sizeThatFits:a3 + -32.0, 1.79769313e308];
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
  v4 = [(NCNotificationManagementView *)&v35 _shouldReverseLayoutDirection];
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  v32 = v6;
  v33 = v5;
  v30 = v8;
  v31 = v7;
  [(UIImageView *)self->_icon setFrame:?];
  if (v4)
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
  v12 = [(UILabel *)self->_subtitleLabel font];
  [v12 _scaledValueForValue:24.0];

  v34 = Width;
  v13 = NCRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_subtitleLabel setBounds:?];
  [(UILabel *)self->_subtitleLabel _firstLineBaselineOffsetFromBoundsTop];
  if (v4)
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
  v21 = [(UILabel *)self->_subtitleLabel font];
  [v21 _scaledValueForValue:8.0];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(NCNotificationManagementView *)self _configureTopSeparatorIfNeccessary:a3.width];
  [(NCNotificationManagementView *)self _titleSizeForPlatterWidth:width];
  v6 = fmax(v5, 44.0) + 16.0;
  v7 = [(UILabel *)self->_subtitleLabel font];
  [v7 _scaledValueForValue:32.0];
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

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  if (!self->_categoriesToProviders)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoriesToProviders = self->_categoriesToProviders;
    self->_categoriesToProviders = v5;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)self->_categoriesToProviders objectForKey:v7];
  if (!v8)
  {
    v9 = MEMORY[0x277D26740];
    v10 = [(NCNotificationManagementView *)self traitCollection];
    v8 = [v9 _visualStylingProviderForRecipe:53 category:a3 andUserInterfaceStyle:{objc_msgSend(v10, "userInterfaceStyle")}];

    if (v8)
    {
      [(NSMutableDictionary *)self->_categoriesToProviders setObject:v8 forKey:v7];
    }
  }

  return v8;
}

@end