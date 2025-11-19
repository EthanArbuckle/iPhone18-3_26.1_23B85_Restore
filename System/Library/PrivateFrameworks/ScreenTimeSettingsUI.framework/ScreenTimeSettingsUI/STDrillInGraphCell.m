@interface STDrillInGraphCell
- (STDrillInGraphCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setValue:(id)a3;
@end

@implementation STDrillInGraphCell

- (STDrillInGraphCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v51[6] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v50.receiver = self;
  v50.super_class = STDrillInGraphCell;
  v10 = [(STTableCell *)&v50 initWithStyle:a3 reuseIdentifier:a4 specifier:v9];
  if (v10)
  {
    v49 = v9;
    v11 = [v9 objectForKeyedSubscript:@"SpecifierKeyDrillInItem"];
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

    v20 = [(STUsageGraphViewController *)v10->_usageGraphViewController view];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(STTableCell *)v10 childViewControllers];
    [v21 addObject:v10->_usageGraphViewController];

    v22 = [(STUsageGraphViewController *)v10->_usageGraphViewController view];
    v23 = [(STDrillInGraphCell *)v10 contentView];
    [v23 addSubview:v22];
    v42 = [(STTableCell *)v10 contentLayoutGuide];
    v38 = MEMORY[0x277CCAAD0];
    v47 = [(UILabel *)v10->_usageLabel leadingAnchor];
    v48 = v17;
    v46 = [v17 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v51[0] = v45;
    v44 = [(UILabel *)v10->_usageLabel bottomAnchor];
    v43 = [v17 bottomAnchor];
    v41 = [v44 constraintEqualToAnchor:v43];
    v51[1] = v41;
    v40 = [v22 centerXAnchor];
    v24 = v23;
    v37 = v23;
    v39 = [v23 centerXAnchor];
    v36 = [v40 constraintEqualToAnchor:v39];
    v51[2] = v36;
    v35 = [v22 widthAnchor];
    v34 = [v42 widthAnchor];
    v25 = [v35 constraintEqualToAnchor:v34];
    v51[3] = v25;
    v26 = [v22 topAnchor];
    v27 = [v24 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:18.0];
    v51[4] = v28;
    v29 = [v24 bottomAnchor];
    v30 = [v22 bottomAnchor];
    v31 = [v29 constraintEqualToSystemSpacingBelowAnchor:v30 multiplier:2.0];
    v51[5] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:6];
    [v38 activateConstraints:v32];

    v9 = v49;
  }

  return v10;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(PSTableCell *)self value];

    v43.receiver = self;
    v43.super_class = STDrillInGraphCell;
    [(PSTableCell *)&v43 setValue:v4];
    v6 = [(STDrillInGraphCell *)self usageItem];
    v7 = [v4 dataSetWithUsageItem:v6];
    v8 = [v7 itemType];
    if ((v8 - 1) >= 4)
    {
      if (v8 != 6)
      {
LABEL_16:
        v36 = [(STDrillInGraphCell *)self usageGraphViewController];
        [v36 setDataSet:v7 animated:v5 != 0];

        goto LABEL_17;
      }

      v14 = [v4 dateIntervals];
      v15 = [v14 count];

      v16 = [v6 totalUsage];
      [v16 doubleValue];
      v18 = v15;
      if (!v15)
      {
        v18 = 1.0;
      }

      v19 = v17 / v18;

      v41 = v5;
      v20 = fmin(round(v19), 1.84467441e19);
      v9 = +[STScreenTimeSettingsUIBundle bundle];
      v40 = v6;
      v21 = MEMORY[0x277CCACA8];
      v22 = [v9 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
      v23 = [v21 localizedStringWithFormat:v22, v20];

      if ([v4 type] == 1)
      {
        v24 = @"HourlyPickupsFormat";
      }

      else
      {
        v24 = @"DailyPickupsFormat";
      }

      v25 = [v9 localizedStringForKey:v24 value:&stru_28766E5A8 table:0];
      v26 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v25, v20, v23];
      v39 = [(STDrillInGraphCell *)self usageLabel];
      [v39 setText:0];
      v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
      v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v28 = MEMORY[0x277CCAB48];
      v42 = v27;
      v10 = v23;
      v29 = v26;
      v30 = [[v28 alloc] initWithString:v29];
      [v30 beginEditing];
      v31 = *MEMORY[0x277D740A8];
      [v30 addAttribute:*MEMORY[0x277D740A8] value:v38 range:{0, objc_msgSend(v29, "length")}];
      v32 = [v29 rangeOfString:v10];
      v37 = v33;

      v34 = v31;
      v5 = v41;
      v35 = v32;
      v6 = v40;
      [v30 addAttribute:v34 value:v42 range:{v35, v37}];

      [v30 endEditing];
      [v39 setAttributedText:v30];
    }

    else
    {
      v9 = [(STDrillInGraphCell *)self usageLabel];
      [v9 setAttributedText:0];
      v10 = [v7 total];
      [v10 doubleValue];
      v12 = v11;
      if (v11 >= 60.0)
      {
        v13 = objc_opt_new();
        [v13 setAllowedUnits:96];
        [v13 setUnitsStyle:1];
      }

      else
      {
        v13 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
      }

      v25 = [v13 stringFromTimeInterval:v12];

      [v9 setText:v25];
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