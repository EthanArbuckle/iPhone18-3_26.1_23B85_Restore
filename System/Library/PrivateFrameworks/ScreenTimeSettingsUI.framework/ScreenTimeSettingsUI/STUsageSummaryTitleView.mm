@interface STUsageSummaryTitleView
- (BOOL)_shouldHaveMultilineLayoutForLineWidth:(double)width;
- (STUsageSummaryTitleView)initWithCoder:(id)coder;
- (STUsageSummaryTitleView)initWithVibrancy:(BOOL)vibrancy usageItemType:(unint64_t)type truncateAverageLabel:(BOOL)label;
- (void)_setUpConstraints;
- (void)_setupSubviews;
- (void)_updateDeltaAverageViews;
- (void)_updateTitleLabel;
- (void)_updateUsageLabel;
- (void)awakeFromNib;
- (void)setUsageItemType:(unint64_t)type;
- (void)setUsageReport:(id)report;
@end

@implementation STUsageSummaryTitleView

- (STUsageSummaryTitleView)initWithVibrancy:(BOOL)vibrancy usageItemType:(unint64_t)type truncateAverageLabel:(BOOL)label
{
  if (type > 6 || ((1 << type) & 0x62) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STUsageSummaryTitleView.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"(usageItemType == STUsageItemTypeScreenTime) || (usageItemType == STUsageItemTypePickups) || (usageItemType == STUsageItemTypeNotifications)"}];
  }

  v13.receiver = self;
  v13.super_class = STUsageSummaryTitleView;
  v11 = [(STUsageSummaryTitleView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11->_useVibrancy = vibrancy;
  v11->_truncateAverageLabel = label;
  [(STUsageSummaryTitleView *)v11 _setupSubviews];
  [(STUsageSummaryTitleView *)v11 setUsageItemType:type];
  return v11;
}

- (STUsageSummaryTitleView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = STUsageSummaryTitleView;
  result = [(STUsageSummaryTitleView *)&v4 initWithCoder:coder];
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
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  self->_hasMultilineLayout = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_deltaAverageLabel setTextColor:secondaryLabelColor];

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
    contentView = [v102 contentView];
    [contentView addSubview:self->_usageLabel];
    v21 = self->_usageLabel;
    v101 = contentView;
    topAnchor = [v101 topAnchor];
    topAnchor2 = [(UILabel *)v21 topAnchor];
    v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v107 = v97;
    leadingAnchor = [v101 leadingAnchor];
    leadingAnchor2 = [(UILabel *)v21 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v108 = v22;
    bottomAnchor = [v101 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v21 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v109 = v25;
    trailingAnchor = [v101 trailingAnchor];

    trailingAnchor2 = [(UILabel *)v21 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v110 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:4];

    [v106 addObjectsFromArray:v29];
    v105 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:101];
    v100 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v105];
    [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryTitleView *)self addSubview:v100];
    contentView2 = [v100 contentView];
    [contentView2 addSubview:self->_deltaAverageImageView];
    v31 = self->_deltaAverageImageView;
    v98 = contentView2;
    topAnchor3 = [v98 topAnchor];
    topAnchor4 = [(UIImageView *)v31 topAnchor];
    v89 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v107 = v89;
    leadingAnchor3 = [v98 leadingAnchor];
    leadingAnchor4 = [(UIImageView *)v31 leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v108 = v32;
    bottomAnchor3 = [v98 bottomAnchor];
    bottomAnchor4 = [(UIImageView *)v31 bottomAnchor];
    v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v109 = v35;
    trailingAnchor3 = [v98 trailingAnchor];

    trailingAnchor4 = [(UIImageView *)v31 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v110 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:4];

    [v106 addObjectsFromArray:v39];
    v96 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v105];
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryTitleView *)self addSubview:v96];
    contentView3 = [v96 contentView];
    [contentView3 addSubview:self->_deltaAverageLabel];
    v41 = self->_deltaAverageLabel;
    v42 = contentView3;
    topAnchor5 = [v42 topAnchor];
    topAnchor6 = [(UILabel *)v41 topAnchor];
    v88 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v107 = v88;
    leadingAnchor5 = [v42 leadingAnchor];
    leadingAnchor6 = [(UILabel *)v41 leadingAnchor];
    v83 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v108 = v83;
    bottomAnchor5 = [v42 bottomAnchor];
    bottomAnchor6 = [(UILabel *)v41 bottomAnchor];
    v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v109 = v45;
    trailingAnchor5 = [v42 trailingAnchor];

    trailingAnchor6 = [(UILabel *)v41 trailingAnchor];
    v48 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
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

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_titleLabel setTextColor:secondaryLabelColor2];

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    [(STUsageSummaryTitleView *)self addSubview:self->_titleLabel];
    topAnchor7 = [(UILabel *)self->_titleLabel topAnchor];
    topAnchor8 = [(STUsageSummaryTitleView *)self topAnchor];
    v57 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v50 = v106;
    [v106 addObject:v57];

    leadingAnchor7 = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor8 = [(STUsageSummaryTitleView *)self leadingAnchor];
    v60 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v106 addObject:v60];

    trailingAnchor7 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor8 = [(STUsageSummaryTitleView *)self trailingAnchor];
    v63 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v106 addObject:v63];
  }

  widthAnchor = [(UIImageView *)self->_deltaAverageImageView widthAnchor];
  v65 = [widthAnchor constraintEqualToConstant:0.0];
  deltaAverageImageViewWidthConstraint = self->_deltaAverageImageViewWidthConstraint;
  self->_deltaAverageImageViewWidthConstraint = v65;

  [v50 addObject:self->_deltaAverageImageViewWidthConstraint];
  heightAnchor = [(UIImageView *)self->_deltaAverageImageView heightAnchor];
  v68 = [heightAnchor constraintEqualToConstant:0.0];
  deltaAverageImageViewHeightConstraint = self->_deltaAverageImageViewHeightConstraint;
  self->_deltaAverageImageViewHeightConstraint = v68;

  [v50 addObject:self->_deltaAverageImageViewHeightConstraint];
  bottomAnchor7 = [(UIImageView *)self->_deltaAverageImageView bottomAnchor];
  firstBaselineAnchor = [(UILabel *)self->_deltaAverageLabel firstBaselineAnchor];
  v72 = [bottomAnchor7 constraintEqualToAnchor:firstBaselineAnchor];
  deltaAverageImageViewVerticalPosition = self->_deltaAverageImageViewVerticalPosition;
  self->_deltaAverageImageViewVerticalPosition = v72;

  [v50 addObject:self->_deltaAverageImageViewVerticalPosition];
  leadingAnchor9 = [(UILabel *)self->_usageLabel leadingAnchor];
  leadingAnchor10 = [(STUsageSummaryTitleView *)self leadingAnchor];
  v76 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v50 addObject:v76];

  leadingAnchor11 = [(UILabel *)self->_deltaAverageLabel leadingAnchor];
  leadingAnchor12 = [(UIImageView *)self->_deltaAverageImageView leadingAnchor];
  v79 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  [v50 addObject:v79];

  trailingAnchor9 = [(UILabel *)self->_deltaAverageLabel trailingAnchor];
  trailingAnchor10 = [(STUsageSummaryTitleView *)self trailingAnchor];
  v82 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v50 addObject:v82];

  [MEMORY[0x277CCAAD0] activateConstraints:v50];
}

- (void)setUsageItemType:(unint64_t)type
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (self->_usageItemType != type)
  {
    self->_usageItemType = type;
    if (type == 5)
    {
      mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      v23 = [mEMORY[0x277D4BD98] circleImageWithFillColor:systemRedColor fillDiameter:0 outlineColor:9.0 outlineWidth:0.0];

      v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v23];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
      [(STUsageSummaryTitleView *)self setNotificationDot:v6];
      [(STUsageSummaryTitleView *)self addSubview:v6];
      usageLabel = [(STUsageSummaryTitleView *)self usageLabel];
      font = [usageLabel font];
      [font ascender];
      v10 = v9 + -4.5;

      v20 = MEMORY[0x277CCAAD0];
      leadingAnchor = [v6 leadingAnchor];
      trailingAnchor = [usageLabel trailingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:3.0];
      v24[0] = v11;
      heightAnchor = [v6 heightAnchor];
      widthAnchor = [v6 widthAnchor];
      v14 = [heightAnchor constraintEqualToAnchor:widthAnchor];
      v24[1] = v14;
      lastBaselineAnchor = [usageLabel lastBaselineAnchor];
      topAnchor = [v6 topAnchor];
      v17 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:v10];
      v24[2] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      [v20 activateConstraints:v18];
    }

    else
    {
      notificationDot = [(STUsageSummaryTitleView *)self notificationDot];
      [notificationDot removeFromSuperview];

      [(STUsageSummaryTitleView *)self setNotificationDot:0];
    }
  }
}

- (void)setUsageReport:(id)report
{
  objc_storeStrong(&self->_usageReport, report);
  [(STUsageSummaryTitleView *)self _updateTitleLabel];
  [(STUsageSummaryTitleView *)self _updateUsageLabel];
  [(STUsageSummaryTitleView *)self _updateDeltaAverageViews];

  [(STUsageSummaryTitleView *)self _setUpConstraints];
}

- (void)_updateTitleLabel
{
  titleLabel = [(STUsageSummaryTitleView *)self titleLabel];
  usageReport = [(STUsageSummaryTitleView *)self usageReport];
  reportDateInterval = [usageReport reportDateInterval];
  startDate = [reportDateInterval startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  type = [usageReport type];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_16;
    }

    v9 = objc_opt_new();
    [v9 setFormattingContext:2];
    [v9 setLocalizedDateFormatFromTemplate:@"MMMMd"];
    v10 = [v9 stringFromDate:startDate];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    if ([currentCalendar isDateInToday:startDate])
    {
      v12 = @"TodayScreenTimeFormat";
    }

    else
    {
      if (![currentCalendar isDateInYesterday:startDate])
      {
        v16 = [currentCalendar component:512 fromDate:startDate];
        standaloneWeekdaySymbols = [currentCalendar standaloneWeekdaySymbols];
        v14 = [standaloneWeekdaySymbols objectAtIndexedSubscript:v16 - 1];

        v15 = [v7 localizedStringForKey:@"WeekdayScreenTimeFormat" value:&stru_28766E5A8 table:0];
        v24 = v10;
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v15 locale:currentLocale, v14, v10];
        [titleLabel setText:v18];

        v10 = v24;
        goto LABEL_14;
      }

      v12 = @"YesterdayScreenTimeFormat";
    }

    v14 = [v7 localizedStringForKey:v12 value:&stru_28766E5A8 table:0];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 locale:currentLocale, v10];
    [titleLabel setText:v15];
LABEL_14:

    goto LABEL_15;
  }

  v9 = objc_opt_new();
  v10 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:v9 options:0];
  if ([currentCalendar isDate:startDate equalToDate:v9 toUnitGranularity:0x2000])
  {
    v13 = @"CurrentWeekDailyAverageTitle";
  }

  else
  {
    if (![currentCalendar isDate:startDate equalToDate:v10 toUnitGranularity:0x2000])
    {
      currentLocale = objc_opt_new();
      [currentLocale setDateTemplate:@"MMMdd"];
      v23 = [currentLocale stringFromDateInterval:reportDateInterval];
      [v7 localizedStringForKey:@"WeekDailyAverageTitleFormat" value:&stru_28766E5A8 table:0];
      v19 = v25 = v10;
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      v22 = [v20 initWithFormat:v19 locale:currentLocale2, v23];
      [titleLabel setText:v22];

      v10 = v25;
      goto LABEL_15;
    }

    v13 = @"LastWeekDailyAverageTitle";
  }

  currentLocale = [v7 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
  [titleLabel setText:currentLocale];
LABEL_15:

LABEL_16:
}

- (void)_updateUsageLabel
{
  usageLabel = [(STUsageSummaryTitleView *)self usageLabel];
  usageReport = [(STUsageSummaryTitleView *)self usageReport];
  usageItemType = [(STUsageSummaryTitleView *)self usageItemType];
  if (usageItemType == 6)
  {
    totalPickups = [usageReport totalPickups];
    v11 = @"PickupsCount";
    goto LABEL_10;
  }

  if (usageItemType == 5)
  {
    totalPickups = [usageReport totalNotifications];
    v11 = @"NotificationsCount";
LABEL_10:
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    currentHandler = [v12 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];

    type = [usageReport type];
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_19;
      }

      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:currentHandler validFormatSpecifiers:@"%lu" error:0, totalPickups];
    }

    else
    {
      [usageReport activePickupDateIntervals];
      v16 = 0.0;
      if (v15 > 0.0)
      {
        v16 = totalPickups / v15;
      }

      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:currentHandler validFormatSpecifiers:@"%lu" error:0, vcvtad_u64_f64(v16)];
    }
    v17 = ;
LABEL_18:
    v18 = v17;
    [usageLabel setText:v17];

    goto LABEL_19;
  }

  if (usageItemType != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STUsageSummaryTitleView.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
    goto LABEL_19;
  }

  [usageReport totalScreenTime];
  v7 = v6;
  type2 = [usageReport type];
  if (!type2)
  {
    currentHandler = objc_opt_new();
    [currentHandler setAllowedUnits:96];
    [currentHandler setUnitsStyle:1];
    [usageReport activePickupDateIntervals];
    v20 = v7 / v19;
    v21 = v19 <= 0.0;
    v22 = 0.0;
    if (!v21)
    {
      v22 = v20;
    }

    v17 = [currentHandler stringFromTimeInterval:v22];
    goto LABEL_18;
  }

  if (type2 != 1)
  {
    goto LABEL_20;
  }

  if (v7 >= 60.0)
  {
    st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
    [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
    [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
  }

  else
  {
    st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  currentHandler = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v7];

  [usageLabel setText:currentHandler];
LABEL_19:

LABEL_20:
}

- (void)_updateDeltaAverageViews
{
  v50[1] = *MEMORY[0x277D85DE8];
  usageReport = [(STUsageSummaryTitleView *)self usageReport];
  usageItemType = [(STUsageSummaryTitleView *)self usageItemType];
  switch(usageItemType)
  {
    case 6uLL:
      [usageReport pickupDeltaFromHistoricalAverage];
      break;
    case 5uLL:
      [usageReport notificationDeltaFromHistoricalAverage];
      break;
    case 1uLL:
      [usageReport screenTimeDeltaFromHistoricalAverage];
      break;
    default:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STUsageSummaryTitleView.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

      goto LABEL_31;
  }

  v7 = v6;
  if ([usageReport type])
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
  deltaAverageImageView = [(STUsageSummaryTitleView *)self deltaAverageImageView];
  [deltaAverageImageView setImage:v10];
  [deltaAverageImageView sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v25 = v24;
  v27 = v26;
  deltaAverageImageViewWidthConstraint = [(STUsageSummaryTitleView *)self deltaAverageImageViewWidthConstraint];
  [deltaAverageImageViewWidthConstraint setConstant:v25];

  deltaAverageImageViewHeightConstraint = [(STUsageSummaryTitleView *)self deltaAverageImageViewHeightConstraint];
  [deltaAverageImageViewHeightConstraint setConstant:v27];

  if (v9 && v8)
  {
    v48 = v10;
    v30 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v8];
    deltaAverageLabel = [(STUsageSummaryTitleView *)self deltaAverageLabel];
    truncateAverageLabel = [(STUsageSummaryTitleView *)self truncateAverageLabel];
    v33 = *MEMORY[0x277D76620];
    v34 = v30;
    preferredContentSizeCategory = [v33 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      v36 = 8.0;
    }

    else
    {
      v36 = 4.0;
    }

    defaultParagraphStyle = [MEMORY[0x277D74240] defaultParagraphStyle];
    v38 = [defaultParagraphStyle mutableCopy];

    [v38 setFirstLineHeadIndent:v25 + v36];
    if (truncateAverageLabel)
    {
      [v38 setLineBreakMode:4];
    }

    v39 = objc_alloc(MEMORY[0x277CCA898]);
    v49 = *MEMORY[0x277D74118];
    v50[0] = v38;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v41 = [v39 initWithString:v34 attributes:v40];

    [deltaAverageLabel setAttributedText:v41];
    font = [deltaAverageLabel font];
    [font capHeight];
    v44 = v43;

    deltaAverageImageViewVerticalPosition = [(STUsageSummaryTitleView *)self deltaAverageImageViewVerticalPosition];
    [deltaAverageImageViewVerticalPosition setConstant:(v27 - v44) * 0.5];

    v10 = v48;
  }

  else
  {
    deltaAverageLabel2 = [(STUsageSummaryTitleView *)self deltaAverageLabel];
    [deltaAverageLabel2 setAttributedText:0];

    deltaAverageImageViewVerticalPosition2 = [(STUsageSummaryTitleView *)self deltaAverageImageViewVerticalPosition];
    [deltaAverageImageViewVerticalPosition2 setConstant:0.0];
  }

LABEL_31:
}

- (void)_setUpConstraints
{
  [(STUsageSummaryTitleView *)self frame];
  Width = CGRectGetWidth(v61);
  [(STUsageSummaryTitleView *)self setPreviousWidth:?];
  truncateAverageLabel = [(STUsageSummaryTitleView *)self truncateAverageLabel];
  if (Width <= 0.0 || truncateAverageLabel)
  {
    Width = 1.79769313e308;
  }

  variableConstraints = [(STUsageSummaryTitleView *)self variableConstraints];
  hasMultilineLayout = [(STUsageSummaryTitleView *)self hasMultilineLayout];
  v7 = [(STUsageSummaryTitleView *)self _shouldHaveMultilineLayoutForLineWidth:Width];
  v8 = variableConstraints;
  if (!variableConstraints || hasMultilineLayout != v7)
  {
    titleLabel = [(STUsageSummaryTitleView *)self titleLabel];
    usageLabel = [(STUsageSummaryTitleView *)self usageLabel];
    deltaAverageImageView = [(STUsageSummaryTitleView *)self deltaAverageImageView];
    deltaAverageLabel = [(STUsageSummaryTitleView *)self deltaAverageLabel];
    v13 = objc_opt_new();
    topAnchor = [usageLabel topAnchor];
    if (v7)
    {
      if (titleLabel)
      {
        [titleLabel bottomAnchor];
      }

      else
      {
        [(STUsageSummaryTitleView *)self topAnchor];
      }
      v20 = ;
      v21 = [topAnchor constraintEqualToAnchor:v20];
      [v13 addObject:v21];

      trailingAnchor = [usageLabel trailingAnchor];
      trailingAnchor2 = [(STUsageSummaryTitleView *)self trailingAnchor];
      v24 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      [v13 addObject:v24];

      leadingAnchor = [deltaAverageImageView leadingAnchor];
      leadingAnchor2 = [(STUsageSummaryTitleView *)self leadingAnchor];
      v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v13 addObject:v27];

      topAnchor2 = [deltaAverageLabel topAnchor];
      bottomAnchor = [usageLabel bottomAnchor];
      v30 = [topAnchor2 constraintEqualToAnchor:bottomAnchor];
      [v13 addObject:v30];

      bottomAnchor2 = [deltaAverageLabel bottomAnchor];
      bottomAnchor3 = [(STUsageSummaryTitleView *)self bottomAnchor];
      v33 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [v13 addObject:v33];

      trailingAnchor3 = [deltaAverageLabel trailingAnchor];
      trailingAnchor4 = [(STUsageSummaryTitleView *)self trailingAnchor];
      v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v37 = 1144750080;
      v38 = 1132068864;
    }

    else
    {
      if (titleLabel)
      {
        bottomAnchor4 = [titleLabel bottomAnchor];
        v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
        [v13 addObject:v16];

        topAnchor3 = [deltaAverageImageView topAnchor];
        bottomAnchor5 = [titleLabel bottomAnchor];
        v19 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor5];
        [v13 addObject:v19];

        topAnchor = [deltaAverageLabel topAnchor];
        [titleLabel bottomAnchor];
      }

      else
      {
        [(STUsageSummaryTitleView *)self topAnchor];
      }
      v39 = ;
      v40 = [topAnchor constraintGreaterThanOrEqualToAnchor:v39];
      [v13 addObject:v40];

      lastBaselineAnchor = [usageLabel lastBaselineAnchor];
      lastBaselineAnchor2 = [deltaAverageLabel lastBaselineAnchor];
      v43 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
      [v13 addObject:v43];

      bottomAnchor6 = [usageLabel bottomAnchor];
      bottomAnchor7 = [(STUsageSummaryTitleView *)self bottomAnchor];
      v46 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      [v13 addObject:v46];

      leadingAnchor3 = [deltaAverageImageView leadingAnchor];
      trailingAnchor5 = [usageLabel trailingAnchor];
      v49 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:8.0];
      [v13 addObject:v49];

      topAnchor4 = [deltaAverageLabel topAnchor];
      topAnchor5 = [(STUsageSummaryTitleView *)self topAnchor];
      v52 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
      [v13 addObject:v52];

      trailingAnchor6 = [deltaAverageLabel trailingAnchor];
      trailingAnchor7 = [(STUsageSummaryTitleView *)self trailingAnchor];
      v55 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      [v13 addObject:v55];

      trailingAnchor3 = [deltaAverageLabel bottomAnchor];
      trailingAnchor4 = [(STUsageSummaryTitleView *)self bottomAnchor];
      v36 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
      v37 = 1132068864;
      v38 = 1144750080;
    }

    [v13 addObject:v36];

    LODWORD(v56) = v38;
    [deltaAverageLabel setContentHuggingPriority:0 forAxis:v56];
    LODWORD(v57) = v37;
    [deltaAverageLabel setContentHuggingPriority:1 forAxis:v57];
    LODWORD(v58) = v37;
    [deltaAverageLabel setContentCompressionResistancePriority:0 forAxis:v58];
    if (variableConstraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:variableConstraints];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    [(STUsageSummaryTitleView *)self setVariableConstraints:v13];
    [(STUsageSummaryTitleView *)self setHasMultilineLayout:v7];

    v8 = variableConstraints;
  }
}

- (BOOL)_shouldHaveMultilineLayoutForLineWidth:(double)width
{
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return 1;
  }

  usageLabel = [(STUsageSummaryTitleView *)self usageLabel];
  [usageLabel sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  v13 = width - v10;
  if (v13 <= 0.0)
  {
    return 0;
  }

  deltaAverageImageView = [(STUsageSummaryTitleView *)self deltaAverageImageView];
  [deltaAverageImageView sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v16 = v15;

  v17 = v13 - (v16 + 8.0);
  if (v17 <= 0.0)
  {
    return 0;
  }

  deltaAverageLabel = [(STUsageSummaryTitleView *)self deltaAverageLabel];
  [deltaAverageLabel sizeThatFits:{v17, 1.79769313e308}];
  v20 = v19;

  return v20 > v12 + v12;
}

@end