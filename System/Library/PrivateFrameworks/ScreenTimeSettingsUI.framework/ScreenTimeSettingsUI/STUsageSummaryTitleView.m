@interface STUsageSummaryTitleView
- (BOOL)_shouldHaveMultilineLayoutForLineWidth:(double)a3;
- (STUsageSummaryTitleView)initWithCoder:(id)a3;
- (STUsageSummaryTitleView)initWithVibrancy:(BOOL)a3 usageItemType:(unint64_t)a4 truncateAverageLabel:(BOOL)a5;
- (void)_setUpConstraints;
- (void)_setupSubviews;
- (void)_updateDeltaAverageViews;
- (void)_updateTitleLabel;
- (void)_updateUsageLabel;
- (void)awakeFromNib;
- (void)setUsageItemType:(unint64_t)a3;
- (void)setUsageReport:(id)a3;
@end

@implementation STUsageSummaryTitleView

- (STUsageSummaryTitleView)initWithVibrancy:(BOOL)a3 usageItemType:(unint64_t)a4 truncateAverageLabel:(BOOL)a5
{
  if (a4 > 6 || ((1 << a4) & 0x62) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"STUsageSummaryTitleView.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"(usageItemType == STUsageItemTypeScreenTime) || (usageItemType == STUsageItemTypePickups) || (usageItemType == STUsageItemTypeNotifications)"}];
  }

  v13.receiver = self;
  v13.super_class = STUsageSummaryTitleView;
  v11 = [(STUsageSummaryTitleView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11->_useVibrancy = a3;
  v11->_truncateAverageLabel = a5;
  [(STUsageSummaryTitleView *)v11 _setupSubviews];
  [(STUsageSummaryTitleView *)v11 setUsageItemType:a4];
  return v11;
}

- (STUsageSummaryTitleView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = STUsageSummaryTitleView;
  result = [(STUsageSummaryTitleView *)&v4 initWithCoder:a3];
  result->_usageItemType = 1;
  return result;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = STUsageSummaryTitleView;
  [(STUsageSummaryTitleView *)&v3 awakeFromNib];
  [(STUsageSummaryTitleView *)self _setupSubviews];
}

- (void)_setupSubviews
{
  v111 = *MEMORY[0x277D85DE8];
  v3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  self->_hasMultilineLayout = UIContentSizeCategoryIsAccessibilityCategory(v3);

  self->_previousWidth = 0.0;
  v4 = objc_opt_new();
  usageLabel = self->_usageLabel;
  self->_usageLabel = v4;

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  [(UILabel *)self->_usageLabel setFont:v6];

  [(UILabel *)self->_usageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144750080;
  [(UILabel *)self->_usageLabel setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [(UILabel *)self->_usageLabel setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_usageLabel setContentCompressionResistancePriority:1 forAxis:v9];
  v10 = objc_opt_new();
  deltaAverageImageView = self->_deltaAverageImageView;
  self->_deltaAverageImageView = v10;

  if (self->_useVibrancy)
  {
    [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v12 = ;
  [(UIImageView *)self->_deltaAverageImageView setTintColor:v12];

  [(UIImageView *)self->_deltaAverageImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [(UIImageView *)self->_deltaAverageImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1144750080;
  [(UIImageView *)self->_deltaAverageImageView setContentHuggingPriority:0 forAxis:v13];
  v14 = objc_opt_new();
  deltaAverageLabel = self->_deltaAverageLabel;
  self->_deltaAverageLabel = v14;

  v16 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_deltaAverageLabel setTextColor:v16];

  v17 = *MEMORY[0x277D76918];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_deltaAverageLabel setFont:v18];

  if (!self->_truncateAverageLabel)
  {
    [(UILabel *)self->_deltaAverageLabel setNumberOfLines:0];
    [(UILabel *)self->_deltaAverageLabel setLineBreakMode:0];
  }

  [(UILabel *)self->_deltaAverageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v19) = 1148846080;
  [(UILabel *)self->_deltaAverageLabel setContentCompressionResistancePriority:1 forAxis:v19];
  v106 = objc_opt_new();
  if (self->_useVibrancy)
  {
    v103 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:101];
    v102 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v103];
    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryTitleView *)self addSubview:v102];
    v20 = [v102 contentView];
    [v20 addSubview:self->_usageLabel];
    v21 = self->_usageLabel;
    v101 = v20;
    v104 = [v101 topAnchor];
    v99 = [(UILabel *)v21 topAnchor];
    v97 = [v104 constraintEqualToAnchor:v99];
    v107 = v97;
    v94 = [v101 leadingAnchor];
    v91 = [(UILabel *)v21 leadingAnchor];
    v22 = [v94 constraintEqualToAnchor:v91];
    v108 = v22;
    v23 = [v101 bottomAnchor];
    v24 = [(UILabel *)v21 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v109 = v25;
    v26 = [v101 trailingAnchor];

    v27 = [(UILabel *)v21 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v110 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:4];

    [v106 addObjectsFromArray:v29];
    v105 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:101];
    v100 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v105];
    [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryTitleView *)self addSubview:v100];
    v30 = [v100 contentView];
    [v30 addSubview:self->_deltaAverageImageView];
    v31 = self->_deltaAverageImageView;
    v98 = v30;
    v95 = [v98 topAnchor];
    v92 = [(UIImageView *)v31 topAnchor];
    v89 = [v95 constraintEqualToAnchor:v92];
    v107 = v89;
    v87 = [v98 leadingAnchor];
    v85 = [(UIImageView *)v31 leadingAnchor];
    v32 = [v87 constraintEqualToAnchor:v85];
    v108 = v32;
    v33 = [v98 bottomAnchor];
    v34 = [(UIImageView *)v31 bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v109 = v35;
    v36 = [v98 trailingAnchor];

    v37 = [(UIImageView *)v31 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v110 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:4];

    [v106 addObjectsFromArray:v39];
    v96 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v105];
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryTitleView *)self addSubview:v96];
    v40 = [v96 contentView];
    [v40 addSubview:self->_deltaAverageLabel];
    v41 = self->_deltaAverageLabel;
    v42 = v40;
    v93 = [v42 topAnchor];
    v90 = [(UILabel *)v41 topAnchor];
    v88 = [v93 constraintEqualToAnchor:v90];
    v107 = v88;
    v86 = [v42 leadingAnchor];
    v84 = [(UILabel *)v41 leadingAnchor];
    v83 = [v86 constraintEqualToAnchor:v84];
    v108 = v83;
    v43 = [v42 bottomAnchor];
    v44 = [(UILabel *)v41 bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    v109 = v45;
    v46 = [v42 trailingAnchor];

    v47 = [(UILabel *)v41 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v110 = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:4];

    v50 = v106;
    [v106 addObjectsFromArray:v49];
  }

  else
  {
    [(STUsageSummaryTitleView *)self addSubview:self->_usageLabel];
    [(STUsageSummaryTitleView *)self addSubview:self->_deltaAverageImageView];
    [(STUsageSummaryTitleView *)self addSubview:self->_deltaAverageLabel];
    v51 = objc_opt_new();
    titleLabel = self->_titleLabel;
    self->_titleLabel = v51;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
    [(UILabel *)self->_titleLabel setFont:v53];

    v54 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_titleLabel setTextColor:v54];

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    [(STUsageSummaryTitleView *)self addSubview:self->_titleLabel];
    v55 = [(UILabel *)self->_titleLabel topAnchor];
    v56 = [(STUsageSummaryTitleView *)self topAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v50 = v106;
    [v106 addObject:v57];

    v58 = [(UILabel *)self->_titleLabel leadingAnchor];
    v59 = [(STUsageSummaryTitleView *)self leadingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    [v106 addObject:v60];

    v61 = [(UILabel *)self->_titleLabel trailingAnchor];
    v62 = [(STUsageSummaryTitleView *)self trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    [v106 addObject:v63];
  }

  v64 = [(UIImageView *)self->_deltaAverageImageView widthAnchor];
  v65 = [v64 constraintEqualToConstant:0.0];
  deltaAverageImageViewWidthConstraint = self->_deltaAverageImageViewWidthConstraint;
  self->_deltaAverageImageViewWidthConstraint = v65;

  [v50 addObject:self->_deltaAverageImageViewWidthConstraint];
  v67 = [(UIImageView *)self->_deltaAverageImageView heightAnchor];
  v68 = [v67 constraintEqualToConstant:0.0];
  deltaAverageImageViewHeightConstraint = self->_deltaAverageImageViewHeightConstraint;
  self->_deltaAverageImageViewHeightConstraint = v68;

  [v50 addObject:self->_deltaAverageImageViewHeightConstraint];
  v70 = [(UIImageView *)self->_deltaAverageImageView bottomAnchor];
  v71 = [(UILabel *)self->_deltaAverageLabel firstBaselineAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
  deltaAverageImageViewVerticalPosition = self->_deltaAverageImageViewVerticalPosition;
  self->_deltaAverageImageViewVerticalPosition = v72;

  [v50 addObject:self->_deltaAverageImageViewVerticalPosition];
  v74 = [(UILabel *)self->_usageLabel leadingAnchor];
  v75 = [(STUsageSummaryTitleView *)self leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  [v50 addObject:v76];

  v77 = [(UILabel *)self->_deltaAverageLabel leadingAnchor];
  v78 = [(UIImageView *)self->_deltaAverageImageView leadingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];
  [v50 addObject:v79];

  v80 = [(UILabel *)self->_deltaAverageLabel trailingAnchor];
  v81 = [(STUsageSummaryTitleView *)self trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];
  [v50 addObject:v82];

  [MEMORY[0x277CCAAD0] activateConstraints:v50];
}

- (void)setUsageItemType:(unint64_t)a3
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (self->_usageItemType != a3)
  {
    self->_usageItemType = a3;
    if (a3 == 5)
    {
      v4 = [MEMORY[0x277D4BD98] sharedCache];
      v5 = [MEMORY[0x277D75348] systemRedColor];
      v23 = [v4 circleImageWithFillColor:v5 fillDiameter:0 outlineColor:9.0 outlineWidth:0.0];

      v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v23];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
      [(STUsageSummaryTitleView *)self setNotificationDot:v6];
      [(STUsageSummaryTitleView *)self addSubview:v6];
      v7 = [(STUsageSummaryTitleView *)self usageLabel];
      v8 = [v7 font];
      [v8 ascender];
      v10 = v9 + -4.5;

      v20 = MEMORY[0x277CCAAD0];
      v22 = [v6 leadingAnchor];
      v21 = [v7 trailingAnchor];
      v11 = [v22 constraintEqualToAnchor:v21 constant:3.0];
      v24[0] = v11;
      v12 = [v6 heightAnchor];
      v13 = [v6 widthAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v24[1] = v14;
      v15 = [v7 lastBaselineAnchor];
      v16 = [v6 topAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:v10];
      v24[2] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      [v20 activateConstraints:v18];
    }

    else
    {
      v19 = [(STUsageSummaryTitleView *)self notificationDot];
      [v19 removeFromSuperview];

      [(STUsageSummaryTitleView *)self setNotificationDot:0];
    }
  }
}

- (void)setUsageReport:(id)a3
{
  objc_storeStrong(&self->_usageReport, a3);
  [(STUsageSummaryTitleView *)self _updateTitleLabel];
  [(STUsageSummaryTitleView *)self _updateUsageLabel];
  [(STUsageSummaryTitleView *)self _updateDeltaAverageViews];

  [(STUsageSummaryTitleView *)self _setUpConstraints];
}

- (void)_updateTitleLabel
{
  v26 = [(STUsageSummaryTitleView *)self titleLabel];
  v3 = [(STUsageSummaryTitleView *)self usageReport];
  v4 = [v3 reportDateInterval];
  v5 = [v4 startDate];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v3 type];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = objc_opt_new();
    [v9 setFormattingContext:2];
    [v9 setLocalizedDateFormatFromTemplate:@"MMMMd"];
    v10 = [v9 stringFromDate:v5];
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    if ([v6 isDateInToday:v5])
    {
      v12 = @"TodayScreenTimeFormat";
    }

    else
    {
      if (![v6 isDateInYesterday:v5])
      {
        v16 = [v6 component:512 fromDate:v5];
        v17 = [v6 standaloneWeekdaySymbols];
        v14 = [v17 objectAtIndexedSubscript:v16 - 1];

        v15 = [v7 localizedStringForKey:@"WeekdayScreenTimeFormat" value:&stru_28766E5A8 table:0];
        v24 = v10;
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v15 locale:v11, v14, v10];
        [v26 setText:v18];

        v10 = v24;
        goto LABEL_14;
      }

      v12 = @"YesterdayScreenTimeFormat";
    }

    v14 = [v7 localizedStringForKey:v12 value:&stru_28766E5A8 table:0];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 locale:v11, v10];
    [v26 setText:v15];
LABEL_14:

    goto LABEL_15;
  }

  v9 = objc_opt_new();
  v10 = [v6 dateByAddingUnit:0x2000 value:-1 toDate:v9 options:0];
  if ([v6 isDate:v5 equalToDate:v9 toUnitGranularity:0x2000])
  {
    v13 = @"CurrentWeekDailyAverageTitle";
  }

  else
  {
    if (![v6 isDate:v5 equalToDate:v10 toUnitGranularity:0x2000])
    {
      v11 = objc_opt_new();
      [v11 setDateTemplate:@"MMMdd"];
      v23 = [v11 stringFromDateInterval:v4];
      [v7 localizedStringForKey:@"WeekDailyAverageTitleFormat" value:&stru_28766E5A8 table:0];
      v19 = v25 = v10;
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v21 = [MEMORY[0x277CBEAF8] currentLocale];
      v22 = [v20 initWithFormat:v19 locale:v21, v23];
      [v26 setText:v22];

      v10 = v25;
      goto LABEL_15;
    }

    v13 = @"LastWeekDailyAverageTitle";
  }

  v11 = [v7 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
  [v26 setText:v11];
LABEL_15:

LABEL_16:
}

- (void)_updateUsageLabel
{
  v23 = [(STUsageSummaryTitleView *)self usageLabel];
  v4 = [(STUsageSummaryTitleView *)self usageReport];
  v5 = [(STUsageSummaryTitleView *)self usageItemType];
  if (v5 == 6)
  {
    v10 = [v4 totalPickups];
    v11 = @"PickupsCount";
    goto LABEL_10;
  }

  if (v5 == 5)
  {
    v10 = [v4 totalNotifications];
    v11 = @"NotificationsCount";
LABEL_10:
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];

    v14 = [v4 type];
    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_19;
      }

      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%lu" error:0, v10];
    }

    else
    {
      [v4 activePickupDateIntervals];
      v16 = 0.0;
      if (v15 > 0.0)
      {
        v16 = v10 / v15;
      }

      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%lu" error:0, vcvtad_u64_f64(v16)];
    }
    v17 = ;
LABEL_18:
    v18 = v17;
    [v23 setText:v17];

    goto LABEL_19;
  }

  if (v5 != 1)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"STUsageSummaryTitleView.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
    goto LABEL_19;
  }

  [v4 totalScreenTime];
  v7 = v6;
  v8 = [v4 type];
  if (!v8)
  {
    v13 = objc_opt_new();
    [v13 setAllowedUnits:96];
    [v13 setUnitsStyle:1];
    [v4 activePickupDateIntervals];
    v20 = v7 / v19;
    v21 = v19 <= 0.0;
    v22 = 0.0;
    if (!v21)
    {
      v22 = v20;
    }

    v17 = [v13 stringFromTimeInterval:v22];
    goto LABEL_18;
  }

  if (v8 != 1)
  {
    goto LABEL_20;
  }

  if (v7 >= 60.0)
  {
    v9 = objc_opt_new();
    [v9 setAllowedUnits:96];
    [v9 setUnitsStyle:1];
  }

  else
  {
    v9 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v13 = [v9 stringFromTimeInterval:v7];

  [v23 setText:v13];
LABEL_19:

LABEL_20:
}

- (void)_updateDeltaAverageViews
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = [(STUsageSummaryTitleView *)self usageReport];
  v5 = [(STUsageSummaryTitleView *)self usageItemType];
  switch(v5)
  {
    case 6uLL:
      [v4 pickupDeltaFromHistoricalAverage];
      break;
    case 5uLL:
      [v4 notificationDeltaFromHistoricalAverage];
      break;
    case 1uLL:
      [v4 screenTimeDeltaFromHistoricalAverage];
      break;
    default:
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"STUsageSummaryTitleView.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

      goto LABEL_31;
  }

  v7 = v6;
  if ([v4 type])
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_21;
  }

  if (v7 >= 0.05 && v7 <= 2.0)
  {
    v16 = MEMORY[0x277D755B8];
    v17 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v16 imageNamed:@"AverageUp" inBundle:v17];

    v18 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v18 localizedStringForKey:@"WeeklyUsageTotalDeltaAverageFormat" value:&stru_28766E5A8 table:0];

    v19 = MEMORY[0x277CCABB8];
    v20 = MEMORY[0x277CCABB0];
    v21 = v7;
LABEL_20:
    v22 = [v20 numberWithDouble:v21];
    v8 = [v19 localizedStringFromNumber:v22 numberStyle:3];

    goto LABEL_21;
  }

  v8 = 0;
  if (v7 >= -0.9)
  {
    v9 = 0;
    v10 = 0;
    if (v7 > -0.05)
    {
      goto LABEL_21;
    }

    v12 = MEMORY[0x277D755B8];
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v12 imageNamed:@"AverageDown" inBundle:v13];

    v14 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v14 localizedStringForKey:@"WeeklyUsageTotalDeltaAverageFormat" value:&stru_28766E5A8 table:0];

    v19 = MEMORY[0x277CCABB8];
    v20 = MEMORY[0x277CCABB0];
    v21 = -v7;
    if (v7 >= 0.0)
    {
      v21 = v7;
    }

    goto LABEL_20;
  }

  v9 = 0;
  v10 = 0;
LABEL_21:
  v23 = [(STUsageSummaryTitleView *)self deltaAverageImageView];
  [v23 setImage:v10];
  [v23 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v25 = v24;
  v27 = v26;
  v28 = [(STUsageSummaryTitleView *)self deltaAverageImageViewWidthConstraint];
  [v28 setConstant:v25];

  v29 = [(STUsageSummaryTitleView *)self deltaAverageImageViewHeightConstraint];
  [v29 setConstant:v27];

  if (v9 && v8)
  {
    v48 = v10;
    v30 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v8];
    v31 = [(STUsageSummaryTitleView *)self deltaAverageLabel];
    v32 = [(STUsageSummaryTitleView *)self truncateAverageLabel];
    v33 = *MEMORY[0x277D76620];
    v34 = v30;
    v35 = [v33 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v35))
    {
      v36 = 8.0;
    }

    else
    {
      v36 = 4.0;
    }

    v37 = [MEMORY[0x277D74240] defaultParagraphStyle];
    v38 = [v37 mutableCopy];

    [v38 setFirstLineHeadIndent:v25 + v36];
    if (v32)
    {
      [v38 setLineBreakMode:4];
    }

    v39 = objc_alloc(MEMORY[0x277CCA898]);
    v49 = *MEMORY[0x277D74118];
    v50[0] = v38;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v41 = [v39 initWithString:v34 attributes:v40];

    [v31 setAttributedText:v41];
    v42 = [v31 font];
    [v42 capHeight];
    v44 = v43;

    v45 = [(STUsageSummaryTitleView *)self deltaAverageImageViewVerticalPosition];
    [v45 setConstant:(v27 - v44) * 0.5];

    v10 = v48;
  }

  else
  {
    v46 = [(STUsageSummaryTitleView *)self deltaAverageLabel];
    [v46 setAttributedText:0];

    v47 = [(STUsageSummaryTitleView *)self deltaAverageImageViewVerticalPosition];
    [v47 setConstant:0.0];
  }

LABEL_31:
}

- (void)_setUpConstraints
{
  [(STUsageSummaryTitleView *)self frame];
  Width = CGRectGetWidth(v61);
  [(STUsageSummaryTitleView *)self setPreviousWidth:?];
  v4 = [(STUsageSummaryTitleView *)self truncateAverageLabel];
  if (Width <= 0.0 || v4)
  {
    Width = 1.79769313e308;
  }

  v59 = [(STUsageSummaryTitleView *)self variableConstraints];
  v6 = [(STUsageSummaryTitleView *)self hasMultilineLayout];
  v7 = [(STUsageSummaryTitleView *)self _shouldHaveMultilineLayoutForLineWidth:Width];
  v8 = v59;
  if (!v59 || v6 != v7)
  {
    v9 = [(STUsageSummaryTitleView *)self titleLabel];
    v10 = [(STUsageSummaryTitleView *)self usageLabel];
    v11 = [(STUsageSummaryTitleView *)self deltaAverageImageView];
    v12 = [(STUsageSummaryTitleView *)self deltaAverageLabel];
    v13 = objc_opt_new();
    v14 = [v10 topAnchor];
    if (v7)
    {
      if (v9)
      {
        [v9 bottomAnchor];
      }

      else
      {
        [(STUsageSummaryTitleView *)self topAnchor];
      }
      v20 = ;
      v21 = [v14 constraintEqualToAnchor:v20];
      [v13 addObject:v21];

      v22 = [v10 trailingAnchor];
      v23 = [(STUsageSummaryTitleView *)self trailingAnchor];
      v24 = [v22 constraintLessThanOrEqualToAnchor:v23];
      [v13 addObject:v24];

      v25 = [v11 leadingAnchor];
      v26 = [(STUsageSummaryTitleView *)self leadingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v13 addObject:v27];

      v28 = [v12 topAnchor];
      v29 = [v10 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [v13 addObject:v30];

      v31 = [v12 bottomAnchor];
      v32 = [(STUsageSummaryTitleView *)self bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v13 addObject:v33];

      v34 = [v12 trailingAnchor];
      v35 = [(STUsageSummaryTitleView *)self trailingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v37 = 1144750080;
      v38 = 1132068864;
    }

    else
    {
      if (v9)
      {
        v15 = [v9 bottomAnchor];
        v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
        [v13 addObject:v16];

        v17 = [v11 topAnchor];
        v18 = [v9 bottomAnchor];
        v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
        [v13 addObject:v19];

        v14 = [v12 topAnchor];
        [v9 bottomAnchor];
      }

      else
      {
        [(STUsageSummaryTitleView *)self topAnchor];
      }
      v39 = ;
      v40 = [v14 constraintGreaterThanOrEqualToAnchor:v39];
      [v13 addObject:v40];

      v41 = [v10 lastBaselineAnchor];
      v42 = [v12 lastBaselineAnchor];
      v43 = [v41 constraintEqualToAnchor:v42];
      [v13 addObject:v43];

      v44 = [v10 bottomAnchor];
      v45 = [(STUsageSummaryTitleView *)self bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      [v13 addObject:v46];

      v47 = [v11 leadingAnchor];
      v48 = [v10 trailingAnchor];
      v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48 constant:8.0];
      [v13 addObject:v49];

      v50 = [v12 topAnchor];
      v51 = [(STUsageSummaryTitleView *)self topAnchor];
      v52 = [v50 constraintGreaterThanOrEqualToAnchor:v51];
      [v13 addObject:v52];

      v53 = [v12 trailingAnchor];
      v54 = [(STUsageSummaryTitleView *)self trailingAnchor];
      v55 = [v53 constraintEqualToAnchor:v54];
      [v13 addObject:v55];

      v34 = [v12 bottomAnchor];
      v35 = [(STUsageSummaryTitleView *)self bottomAnchor];
      v36 = [v34 constraintLessThanOrEqualToAnchor:v35];
      v37 = 1132068864;
      v38 = 1144750080;
    }

    [v13 addObject:v36];

    LODWORD(v56) = v38;
    [v12 setContentHuggingPriority:0 forAxis:v56];
    LODWORD(v57) = v37;
    [v12 setContentHuggingPriority:1 forAxis:v57];
    LODWORD(v58) = v37;
    [v12 setContentCompressionResistancePriority:0 forAxis:v58];
    if (v59)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:v59];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    [(STUsageSummaryTitleView *)self setVariableConstraints:v13];
    [(STUsageSummaryTitleView *)self setHasMultilineLayout:v7];

    v8 = v59;
  }
}

- (BOOL)_shouldHaveMultilineLayoutForLineWidth:(double)a3
{
  v5 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (IsAccessibilityCategory)
  {
    return 1;
  }

  v8 = [(STUsageSummaryTitleView *)self usageLabel];
  [v8 sizeThatFits:{a3, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  v13 = a3 - v10;
  if (v13 <= 0.0)
  {
    return 0;
  }

  v14 = [(STUsageSummaryTitleView *)self deltaAverageImageView];
  [v14 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v16 = v15;

  v17 = v13 - (v16 + 8.0);
  if (v17 <= 0.0)
  {
    return 0;
  }

  v18 = [(STUsageSummaryTitleView *)self deltaAverageLabel];
  [v18 sizeThatFits:{v17, 1.79769313e308}];
  v20 = v19;

  return v20 > v12 + v12;
}

@end