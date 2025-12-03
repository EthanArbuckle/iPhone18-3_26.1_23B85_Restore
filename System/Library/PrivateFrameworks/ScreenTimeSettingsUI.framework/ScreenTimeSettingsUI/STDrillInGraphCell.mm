@interface STDrillInGraphCell
- (STDrillInGraphCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation STDrillInGraphCell

- (STDrillInGraphCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v51[6] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v50.receiver = self;
  v50.super_class = STDrillInGraphCell;
  v10 = [(STTableCell *)&v50 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v10)
  {
    v49 = specifierCopy;
    v11 = [specifierCopy objectForKeyedSubscript:@"SpecifierKeyDrillInItem"];
    usageItem = v10->_usageItem;
    v10->_usageItem = v11;

    if (!v10->_usageItem)
    {
      [STDrillInGraphCell initWithStyle:a2 reuseIdentifier:v10 specifier:?];
    }

    v13 = objc_opt_new();
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_opt_new();
    usageLabel = v10->_usageLabel;
    v10->_usageLabel = v14;

    [(UILabel *)v10->_usageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
    [(UILabel *)v10->_usageLabel setFont:v16];

    [v13 addSubview:v10->_usageLabel];
    v17 = v13;
    v18 = [[STUsageGraphViewController alloc] initWithTitleView:v13 graphHeight:1 includePaddle:0 useVibrancy:90.0];
    usageGraphViewController = v10->_usageGraphViewController;
    v10->_usageGraphViewController = v18;

    view = [(STUsageGraphViewController *)v10->_usageGraphViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    childViewControllers = [(STTableCell *)v10 childViewControllers];
    [childViewControllers addObject:v10->_usageGraphViewController];

    view2 = [(STUsageGraphViewController *)v10->_usageGraphViewController view];
    contentView = [(STDrillInGraphCell *)v10 contentView];
    [contentView addSubview:view2];
    contentLayoutGuide = [(STTableCell *)v10 contentLayoutGuide];
    v38 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v10->_usageLabel leadingAnchor];
    v48 = v17;
    leadingAnchor2 = [v17 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v45;
    bottomAnchor = [(UILabel *)v10->_usageLabel bottomAnchor];
    bottomAnchor2 = [v17 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v51[1] = v41;
    centerXAnchor = [view2 centerXAnchor];
    v24 = contentView;
    v37 = contentView;
    centerXAnchor2 = [contentView centerXAnchor];
    v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v51[2] = v36;
    widthAnchor = [view2 widthAnchor];
    widthAnchor2 = [contentLayoutGuide widthAnchor];
    v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v51[3] = v25;
    topAnchor = [view2 topAnchor];
    topAnchor2 = [v24 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
    v51[4] = v28;
    bottomAnchor3 = [v24 bottomAnchor];
    bottomAnchor4 = [view2 bottomAnchor];
    v31 = [bottomAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:2.0];
    v51[5] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:6];
    [v38 activateConstraints:v32];

    specifierCopy = v49;
  }

  return v10;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [(PSTableCell *)self value];

    v43.receiver = self;
    v43.super_class = STDrillInGraphCell;
    [(PSTableCell *)&v43 setValue:valueCopy];
    usageItem = [(STDrillInGraphCell *)self usageItem];
    v7 = [valueCopy dataSetWithUsageItem:usageItem];
    itemType = [v7 itemType];
    if ((itemType - 1) >= 4)
    {
      if (itemType != 6)
      {
LABEL_16:
        usageGraphViewController = [(STDrillInGraphCell *)self usageGraphViewController];
        [usageGraphViewController setDataSet:v7 animated:value != 0];

        goto LABEL_17;
      }

      dateIntervals = [valueCopy dateIntervals];
      v15 = [dateIntervals count];

      totalUsage = [usageItem totalUsage];
      [totalUsage doubleValue];
      v18 = v15;
      if (!v15)
      {
        v18 = 1.0;
      }

      v19 = v17 / v18;

      v41 = value;
      v20 = fmin(round(v19), 1.84467441e19);
      usageLabel2 = +[STScreenTimeSettingsUIBundle bundle];
      v40 = usageItem;
      v21 = MEMORY[0x277CCACA8];
      v22 = [usageLabel2 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
      v23 = [v21 localizedStringWithFormat:v22, v20];

      if ([valueCopy type] == 1)
      {
        v24 = @"HourlyPickupsFormat";
      }

      else
      {
        v24 = @"DailyPickupsFormat";
      }

      v25 = [usageLabel2 localizedStringForKey:v24 value:&stru_28766E5A8 table:0];
      v26 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v25, v20, v23];
      usageLabel = [(STDrillInGraphCell *)self usageLabel];
      [usageLabel setText:0];
      v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
      v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v28 = MEMORY[0x277CCAB48];
      v42 = v27;
      total = v23;
      v29 = v26;
      v30 = [[v28 alloc] initWithString:v29];
      [v30 beginEditing];
      v31 = *MEMORY[0x277D740A8];
      [v30 addAttribute:*MEMORY[0x277D740A8] value:v38 range:{0, objc_msgSend(v29, "length")}];
      v32 = [v29 rangeOfString:total];
      v37 = v33;

      v34 = v31;
      value = v41;
      v35 = v32;
      usageItem = v40;
      [v30 addAttribute:v34 value:v42 range:{v35, v37}];

      [v30 endEditing];
      [usageLabel setAttributedText:v30];
    }

    else
    {
      usageLabel2 = [(STDrillInGraphCell *)self usageLabel];
      [usageLabel2 setAttributedText:0];
      total = [v7 total];
      [total doubleValue];
      v12 = v11;
      if (v11 >= 60.0)
      {
        st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
        [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
        [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
      }

      else
      {
        st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
      }

      v25 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v12];

      [usageLabel2 setText:v25];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)initWithStyle:(uint64_t)a1 reuseIdentifier:(uint64_t)a2 specifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDrillInGraphCell.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"_usageItem"}];
}

@end