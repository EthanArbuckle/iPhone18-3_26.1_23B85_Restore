@interface STPaddleView
- (STPaddleView)init;
- (void)setDataPoint:(id)point;
@end

@implementation STPaddleView

- (STPaddleView)init
{
  v109[25] = *MEMORY[0x277D85DE8];
  v108.receiver = self;
  v108.super_class = STPaddleView;
  v2 = [(STPaddleView *)&v108 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = objc_opt_new();
  backgroundView = v2->_backgroundView;
  v2->_backgroundView = v3;

  [(UIView *)v2->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v2->_backgroundView _setContinuousCornerRadius:6.0];
  [(UIView *)v2->_backgroundView setClipsToBounds:1];
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  [(UIView *)v2->_backgroundView setBackgroundColor:systemGreenColor];

  [(STPaddleView *)v2 addSubview:v2->_backgroundView];
  v106 = objc_opt_new();
  [(STPaddleView *)v2 addLayoutGuide:v106];
  v6 = objc_opt_new();
  dayLabel = v2->_dayLabel;
  v2->_dayLabel = v6;

  [(UILabel *)v2->_dayLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *MEMORY[0x277D769D0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v2->_dayLabel setFont:v9];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)v2->_dayLabel setTextColor:systemGrayColor];

  [(UILabel *)v2->_dayLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
  [(STPaddleView *)v2 addSubview:v2->_dayLabel];
  v107 = objc_opt_new();
  [(STPaddleView *)v2 addLayoutGuide:v107];
  v11 = objc_opt_new();
  dateTimeLabel = v2->_dateTimeLabel;
  v2->_dateTimeLabel = v11;

  [(UILabel *)v2->_dateTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:v8];
  [(UILabel *)v2->_dateTimeLabel setFont:v13];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)v2->_dateTimeLabel setTextColor:systemWhiteColor];

  [(STPaddleView *)v2 addSubview:v2->_dateTimeLabel];
  v15 = objc_opt_new();
  [(STPaddleView *)v2 addLayoutGuide:?];
  v16 = objc_opt_new();
  usageLabel = v2->_usageLabel;
  v2->_usageLabel = v16;

  [(UILabel *)v2->_usageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [(UILabel *)v2->_usageLabel setFont:v18];

  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)v2->_usageLabel setTextColor:systemWhiteColor2];

  LODWORD(v20) = 1144750080;
  [(UILabel *)v2->_usageLabel setContentHuggingPriority:0 forAxis:v20];
  [(STPaddleView *)v2 addSubview:v2->_usageLabel];
  v75 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)v2->_backgroundView topAnchor];
  topAnchor2 = [(STPaddleView *)v2 topAnchor];
  v103 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v109[0] = v103;
  leadingAnchor = [(UIView *)v2->_backgroundView leadingAnchor];
  leadingAnchor2 = [(STPaddleView *)v2 leadingAnchor];
  v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v109[1] = v100;
  bottomAnchor = [(UIView *)v2->_backgroundView bottomAnchor];
  bottomAnchor2 = [(STPaddleView *)v2 bottomAnchor];
  v97 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v109[2] = v97;
  trailingAnchor = [(UIView *)v2->_backgroundView trailingAnchor];
  trailingAnchor2 = [(STPaddleView *)v2 trailingAnchor];
  v94 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v109[3] = v94;
  topAnchor3 = [v106 topAnchor];
  topAnchor4 = [(STPaddleView *)v2 topAnchor];
  v91 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v109[4] = v91;
  leadingAnchor3 = [v106 leadingAnchor];
  leadingAnchor4 = [(STPaddleView *)v2 leadingAnchor];
  v88 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v109[5] = v88;
  trailingAnchor3 = [v106 trailingAnchor];
  trailingAnchor4 = [(STPaddleView *)v2 trailingAnchor];
  v85 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v109[6] = v85;
  topAnchor5 = [(UILabel *)v2->_dayLabel topAnchor];
  bottomAnchor3 = [v106 bottomAnchor];
  v82 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  v109[7] = v82;
  topAnchor6 = [(UILabel *)v2->_dayLabel topAnchor];
  topAnchor7 = [(STPaddleView *)v2 topAnchor];
  v79 = [topAnchor6 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor7 multiplier:0.5];
  v109[8] = v79;
  leadingAnchor5 = [(UILabel *)v2->_dayLabel leadingAnchor];
  leadingAnchor6 = [(STPaddleView *)v2 leadingAnchor];
  v76 = [leadingAnchor5 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor6 multiplier:1.0];
  v109[9] = v76;
  topAnchor8 = [v107 topAnchor];
  bottomAnchor4 = [(UILabel *)v2->_dayLabel bottomAnchor];
  v71 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4];
  v109[10] = v71;
  leadingAnchor7 = [v107 leadingAnchor];
  leadingAnchor8 = [(STPaddleView *)v2 leadingAnchor];
  v68 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v109[11] = v68;
  trailingAnchor5 = [v107 trailingAnchor];
  trailingAnchor6 = [(STPaddleView *)v2 trailingAnchor];
  v65 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v109[12] = v65;
  topAnchor9 = [(UILabel *)v2->_dateTimeLabel topAnchor];
  bottomAnchor5 = [v107 bottomAnchor];
  v62 = [topAnchor9 constraintEqualToAnchor:bottomAnchor5];
  v109[13] = v62;
  leadingAnchor9 = [(UILabel *)v2->_dateTimeLabel leadingAnchor];
  leadingAnchor10 = [(UILabel *)v2->_dayLabel leadingAnchor];
  v59 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v109[14] = v59;
  trailingAnchor7 = [(UILabel *)v2->_dateTimeLabel trailingAnchor];
  trailingAnchor8 = [(UILabel *)v2->_dayLabel trailingAnchor];
  v56 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v109[15] = v56;
  topAnchor10 = [v15 topAnchor];
  bottomAnchor6 = [(UILabel *)v2->_dateTimeLabel bottomAnchor];
  v53 = [topAnchor10 constraintEqualToAnchor:bottomAnchor6];
  v109[16] = v53;
  leadingAnchor11 = [v15 leadingAnchor];
  leadingAnchor12 = [(STPaddleView *)v2 leadingAnchor];
  v50 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v109[17] = v50;
  trailingAnchor9 = [v15 trailingAnchor];
  trailingAnchor10 = [(STPaddleView *)v2 trailingAnchor];
  v47 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v109[18] = v47;
  v74 = v15;
  bottomAnchor7 = [v15 bottomAnchor];
  bottomAnchor8 = [(STPaddleView *)v2 bottomAnchor];
  v44 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v109[19] = v44;
  heightAnchor = [v106 heightAnchor];
  heightAnchor2 = [v107 heightAnchor];
  v41 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:2.0 constant:0.0];
  v109[20] = v41;
  heightAnchor3 = [v106 heightAnchor];
  heightAnchor4 = [v15 heightAnchor];
  v38 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v109[21] = v38;
  leadingAnchor13 = [(UILabel *)v2->_usageLabel leadingAnchor];
  trailingAnchor11 = [(UILabel *)v2->_dateTimeLabel trailingAnchor];
  v22 = [leadingAnchor13 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor11 multiplier:1.0];
  v109[22] = v22;
  lastBaselineAnchor = [(UILabel *)v2->_usageLabel lastBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)v2->_dateTimeLabel lastBaselineAnchor];
  v25 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v109[23] = v25;
  trailingAnchor12 = [(STPaddleView *)v2 trailingAnchor];
  trailingAnchor13 = [(UILabel *)v2->_usageLabel trailingAnchor];
  v28 = [trailingAnchor12 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor13 multiplier:1.0];
  v109[24] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:25];
  [v75 activateConstraints:v29];

  v30 = objc_opt_new();
  hourIntervalDateFormatter = v2->_hourIntervalDateFormatter;
  v2->_hourIntervalDateFormatter = v30;

  [(NSDateIntervalFormatter *)v2->_hourIntervalDateFormatter setDateTemplate:@"j"];
  v32 = objc_opt_new();
  weekdayDateFormatter = v2->_weekdayDateFormatter;
  v2->_weekdayDateFormatter = v32;

  [(NSDateFormatter *)v2->_weekdayDateFormatter setFormattingContext:2];
  [(NSDateFormatter *)v2->_weekdayDateFormatter setLocalizedDateFormatFromTemplate:@"EEEE"];
  v34 = objc_opt_new();
  monthDateFormatter = v2->_monthDateFormatter;
  v2->_monthDateFormatter = v34;

  [(NSDateFormatter *)v2->_monthDateFormatter setFormattingContext:2];
  [(NSDateFormatter *)v2->_monthDateFormatter setLocalizedDateFormatFromTemplate:@"MMMdd"];

  return v2;
}

- (void)setDataPoint:(id)point
{
  pointCopy = point;
  objc_storeStrong(&self->_dataPoint, point);
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  timePeriod = [pointCopy timePeriod];
  switch(timePeriod)
  {
    case 0:
      goto LABEL_18;
    case 2:
      weekdayDateFormatter = [(STPaddleView *)self weekdayDateFormatter];
      date = [pointCopy date];
      v15 = [weekdayDateFormatter stringFromDate:date];
      dayLabel = [(STPaddleView *)self dayLabel];
      [dayLabel setText:v15];

      monthDateFormatter = [(STPaddleView *)self monthDateFormatter];
      date2 = [pointCopy date];
      v11 = [monthDateFormatter stringFromDate:date2];
      localizedUppercaseString = [v11 localizedUppercaseString];
      dateTimeLabel = [(STPaddleView *)self dateTimeLabel];
      [dateTimeLabel setText:localizedUppercaseString];

      goto LABEL_6;
    case 1:
      v7 = [v5 localizedStringForKey:@"TodayTitle" value:&stru_28766E5A8 table:0];
      dayLabel2 = [(STPaddleView *)self dayLabel];
      [dayLabel2 setText:v7];

      monthDateFormatter = [(STPaddleView *)self hourIntervalDateFormatter];
      date2 = [pointCopy dateInterval];
      v11 = [monthDateFormatter stringFromDateInterval:date2];
      localizedUppercaseString = [(STPaddleView *)self dateTimeLabel];
      [localizedUppercaseString setText:v11];
LABEL_6:

      break;
  }

  itemType = [pointCopy itemType];
  if ((itemType - 1) >= 4)
  {
    if (itemType == 5)
    {
      total = [pointCopy total];
      unsignedLongValue = [total unsignedLongValue];

      v25 = MEMORY[0x277CCACA8];
      v26 = @"NotificationsCount";
    }

    else
    {
      if (itemType != 6)
      {
        goto LABEL_18;
      }

      total2 = [pointCopy total];
      unsignedLongValue = [total2 unsignedLongValue];

      v25 = MEMORY[0x277CCACA8];
      v26 = @"PickupsCount";
    }

    v27 = [v5 localizedStringForKey:v26 value:&stru_28766E5A8 table:0];
    usageLabel2 = [v25 localizedStringWithFormat:v27, unsignedLongValue];
    usageLabel = [(STPaddleView *)self usageLabel];
    [usageLabel setText:usageLabel2];
  }

  else
  {
    total3 = [pointCopy total];
    [total3 doubleValue];
    v21 = v20;

    if (v21 >= 60.0)
    {
      st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
      [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
      [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
    }

    else
    {
      st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
    }

    v27 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v21];

    usageLabel2 = [(STPaddleView *)self usageLabel];
    [usageLabel2 setText:v27];
  }

LABEL_18:
}

@end