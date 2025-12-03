@interface STNotificationsPickupSummaryView
- (STNotificationsPickupSummaryView)initWithUsageReport:(id)report;
- (id)_attributedString:(id)string withFont:(id)font;
- (id)_attributedStringForNotificationsDetailText;
- (id)_attributedStringForNotificationsTitle;
- (id)_attributedStringForPickUpDetailText;
- (id)_attributedStringForPickUpTitle;
@end

@implementation STNotificationsPickupSummaryView

- (STNotificationsPickupSummaryView)initWithUsageReport:(id)report
{
  v40[4] = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v39.receiver = self;
  v39.super_class = STNotificationsPickupSummaryView;
  v6 = [(STNotificationsPickupSummaryView *)&v39 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_usageReport, report);
    v8 = objc_opt_new();
    stackView = v7->_stackView;
    v7->_stackView = v8;

    tableSeparatorLightColor = [MEMORY[0x277D75348] tableSeparatorLightColor];
    [(STNotificationsPickupSummaryView *)v7 setBackgroundColor:tableSeparatorLightColor];

    [(UIStackView *)v7->_stackView setAxis:0];
    [(UIStackView *)v7->_stackView setAlignment:0];
    [(UIStackView *)v7->_stackView setDistribution:1];
    [(UIStackView *)v7->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [STSummationView alloc];
    [(STNotificationsPickupSummaryView *)v7 _attributedStringForNotificationsTitle];
    v12 = v38 = reportCopy;
    _attributedStringForNotificationsDetailText = [(STNotificationsPickupSummaryView *)v7 _attributedStringForNotificationsDetailText];
    v14 = [(STSummationView *)v11 initWithTitle:v12 detailText:_attributedStringForNotificationsDetailText];

    v15 = [STSummationView alloc];
    _attributedStringForPickUpTitle = [(STNotificationsPickupSummaryView *)v7 _attributedStringForPickUpTitle];
    _attributedStringForPickUpDetailText = [(STNotificationsPickupSummaryView *)v7 _attributedStringForPickUpDetailText];
    v36 = [(STSummationView *)v15 initWithTitle:_attributedStringForPickUpTitle detailText:_attributedStringForPickUpDetailText];

    v37 = v14;
    [(UIStackView *)v7->_stackView addArrangedSubview:v14];
    v18 = v7->_stackView;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [(UIStackView *)v18 setCustomSpacing:v14 afterView:1.0 / v20];

    [(UIStackView *)v7->_stackView addArrangedSubview:v36];
    [(STNotificationsPickupSummaryView *)v7 addSubview:v7->_stackView];
    v31 = MEMORY[0x277CCAAD0];
    topAnchor = [(STNotificationsPickupSummaryView *)v7 topAnchor];
    topAnchor2 = [(UIStackView *)v7->_stackView topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[0] = v33;
    bottomAnchor = [(STNotificationsPickupSummaryView *)v7 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v7->_stackView bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[1] = v22;
    leadingAnchor = [(STNotificationsPickupSummaryView *)v7 leadingAnchor];
    leadingAnchor2 = [(UIStackView *)v7->_stackView leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[2] = v25;
    trailingAnchor = [(STNotificationsPickupSummaryView *)v7 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v7->_stackView trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v31 activateConstraints:v29];

    reportCopy = v38;
  }

  return v7;
}

- (id)_attributedStringForNotificationsTitle
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"DailyNotificationsLabel" value:&stru_28766E5A8 table:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v6 = [(STNotificationsPickupSummaryView *)self _attributedString:v4 withFont:v5];

  return v6;
}

- (id)_attributedStringForNotificationsDetailText
{
  v34[1] = *MEMORY[0x277D85DE8];
  totalNotifications = [(STUsageReport *)self->_usageReport totalNotifications];
  v3 = MEMORY[0x277CCABB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:llround(totalNotifications / 7.0)];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:0];

  v6 = MEMORY[0x277CCACA8];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"WeeklyReportDailyNotificationCount" value:&stru_28766E5A8 table:0];
  v9 = [v6 localizedStringWithFormat:v8, v5];

  v10 = *MEMORY[0x277D76A28];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v33 = *MEMORY[0x277D74338];
  v12 = *MEMORY[0x277D74388];
  v30[0] = *MEMORY[0x277D74398];
  v30[1] = v12;
  v31[0] = &unk_28769D2C8;
  v31[1] = &unk_28769D2E0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v32 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v34[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];

  fontDescriptor = [v11 fontDescriptor];
  v17 = [fontDescriptor fontDescriptorByAddingAttributes:v15];

  v18 = [MEMORY[0x277D74300] fontWithDescriptor:v17 size:0.0];

  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
  v20 = MEMORY[0x277CCAB48];
  v21 = v18;
  v22 = v5;
  v23 = v9;
  v24 = [[v20 alloc] initWithString:v23];
  [v24 beginEditing];
  v25 = *MEMORY[0x277D740A8];
  [v24 addAttribute:*MEMORY[0x277D740A8] value:v21 range:{0, objc_msgSend(v23, "length")}];

  v26 = [v23 rangeOfString:v22];
  v28 = v27;

  [v24 addAttribute:v25 value:v19 range:{v26, v28}];
  [v24 endEditing];

  return v24;
}

- (id)_attributedStringForPickUpTitle
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"LookedAtPhoneLabel" value:&stru_28766E5A8 table:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v6 = [(STNotificationsPickupSummaryView *)self _attributedString:v4 withFont:v5];

  return v6;
}

- (id)_attributedStringForPickUpDetailText
{
  totalPickups = [(STUsageReport *)self->_usageReport totalPickups];
  v4 = objc_opt_new();
  [v4 setAllowedUnits:96];
  [v4 setUnitsStyle:1];
  if (totalPickups)
  {
    v5 = 604800.0 / totalPickups;
  }

  else
  {
    v5 = 604800.0;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"WeeklyReportPickupInterval" value:&stru_28766E5A8 table:0];
  v9 = [v4 stringFromTimeInterval:v5];
  v10 = [v6 localizedStringWithFormat:v8, v9];

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v12 = [(STNotificationsPickupSummaryView *)self _attributedString:v10 withFont:v11];

  return v12;
}

- (id)_attributedString:(id)string withFont:(id)font
{
  v5 = MEMORY[0x277CCAB48];
  fontCopy = font;
  stringCopy = string;
  v8 = [[v5 alloc] initWithString:stringCopy];
  [v8 beginEditing];
  v9 = [stringCopy length];

  [v8 addAttribute:*MEMORY[0x277D740A8] value:fontCopy range:{0, v9}];
  [v8 endEditing];

  return v8;
}

@end