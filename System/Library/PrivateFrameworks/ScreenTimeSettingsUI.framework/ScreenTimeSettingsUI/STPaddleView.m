@interface STPaddleView
- (STPaddleView)init;
- (void)setDataPoint:(id)a3;
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
  v5 = [MEMORY[0x277D75348] systemGreenColor];
  [(UIView *)v2->_backgroundView setBackgroundColor:v5];

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

  v10 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)v2->_dayLabel setTextColor:v10];

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

  v14 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)v2->_dateTimeLabel setTextColor:v14];

  [(STPaddleView *)v2 addSubview:v2->_dateTimeLabel];
  v15 = objc_opt_new();
  [(STPaddleView *)v2 addLayoutGuide:?];
  v16 = objc_opt_new();
  usageLabel = v2->_usageLabel;
  v2->_usageLabel = v16;

  [(UILabel *)v2->_usageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [(UILabel *)v2->_usageLabel setFont:v18];

  v19 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)v2->_usageLabel setTextColor:v19];

  LODWORD(v20) = 1144750080;
  [(UILabel *)v2->_usageLabel setContentHuggingPriority:0 forAxis:v20];
  [(STPaddleView *)v2 addSubview:v2->_usageLabel];
  v75 = MEMORY[0x277CCAAD0];
  v105 = [(UIView *)v2->_backgroundView topAnchor];
  v104 = [(STPaddleView *)v2 topAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v109[0] = v103;
  v102 = [(UIView *)v2->_backgroundView leadingAnchor];
  v101 = [(STPaddleView *)v2 leadingAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v109[1] = v100;
  v99 = [(UIView *)v2->_backgroundView bottomAnchor];
  v98 = [(STPaddleView *)v2 bottomAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v109[2] = v97;
  v96 = [(UIView *)v2->_backgroundView trailingAnchor];
  v95 = [(STPaddleView *)v2 trailingAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v109[3] = v94;
  v93 = [v106 topAnchor];
  v92 = [(STPaddleView *)v2 topAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v109[4] = v91;
  v90 = [v106 leadingAnchor];
  v89 = [(STPaddleView *)v2 leadingAnchor];
  v88 = [v90 constraintEqualToAnchor:v89];
  v109[5] = v88;
  v87 = [v106 trailingAnchor];
  v86 = [(STPaddleView *)v2 trailingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v109[6] = v85;
  v84 = [(UILabel *)v2->_dayLabel topAnchor];
  v83 = [v106 bottomAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v109[7] = v82;
  v81 = [(UILabel *)v2->_dayLabel topAnchor];
  v80 = [(STPaddleView *)v2 topAnchor];
  v79 = [v81 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v80 multiplier:0.5];
  v109[8] = v79;
  v78 = [(UILabel *)v2->_dayLabel leadingAnchor];
  v77 = [(STPaddleView *)v2 leadingAnchor];
  v76 = [v78 constraintEqualToSystemSpacingAfterAnchor:v77 multiplier:1.0];
  v109[9] = v76;
  v73 = [v107 topAnchor];
  v72 = [(UILabel *)v2->_dayLabel bottomAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v109[10] = v71;
  v70 = [v107 leadingAnchor];
  v69 = [(STPaddleView *)v2 leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v109[11] = v68;
  v67 = [v107 trailingAnchor];
  v66 = [(STPaddleView *)v2 trailingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v109[12] = v65;
  v64 = [(UILabel *)v2->_dateTimeLabel topAnchor];
  v63 = [v107 bottomAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v109[13] = v62;
  v61 = [(UILabel *)v2->_dateTimeLabel leadingAnchor];
  v60 = [(UILabel *)v2->_dayLabel leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v109[14] = v59;
  v58 = [(UILabel *)v2->_dateTimeLabel trailingAnchor];
  v57 = [(UILabel *)v2->_dayLabel trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v109[15] = v56;
  v55 = [v15 topAnchor];
  v54 = [(UILabel *)v2->_dateTimeLabel bottomAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v109[16] = v53;
  v52 = [v15 leadingAnchor];
  v51 = [(STPaddleView *)v2 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v109[17] = v50;
  v49 = [v15 trailingAnchor];
  v48 = [(STPaddleView *)v2 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v109[18] = v47;
  v74 = v15;
  v46 = [v15 bottomAnchor];
  v45 = [(STPaddleView *)v2 bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v109[19] = v44;
  v43 = [v106 heightAnchor];
  v42 = [v107 heightAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 multiplier:2.0 constant:0.0];
  v109[20] = v41;
  v40 = [v106 heightAnchor];
  v39 = [v15 heightAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v109[21] = v38;
  v37 = [(UILabel *)v2->_usageLabel leadingAnchor];
  v21 = [(UILabel *)v2->_dateTimeLabel trailingAnchor];
  v22 = [v37 constraintEqualToSystemSpacingAfterAnchor:v21 multiplier:1.0];
  v109[22] = v22;
  v23 = [(UILabel *)v2->_usageLabel lastBaselineAnchor];
  v24 = [(UILabel *)v2->_dateTimeLabel lastBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v109[23] = v25;
  v26 = [(STPaddleView *)v2 trailingAnchor];
  v27 = [(UILabel *)v2->_usageLabel trailingAnchor];
  v28 = [v26 constraintEqualToSystemSpacingAfterAnchor:v27 multiplier:1.0];
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

- (void)setDataPoint:(id)a3
{
  v31 = a3;
  objc_storeStrong(&self->_dataPoint, a3);
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = [v31 timePeriod];
  switch(v6)
  {
    case 0:
      goto LABEL_18;
    case 2:
      v13 = [(STPaddleView *)self weekdayDateFormatter];
      v14 = [v31 date];
      v15 = [v13 stringFromDate:v14];
      v16 = [(STPaddleView *)self dayLabel];
      [v16 setText:v15];

      v9 = [(STPaddleView *)self monthDateFormatter];
      v10 = [v31 date];
      v11 = [v9 stringFromDate:v10];
      v12 = [v11 localizedUppercaseString];
      v17 = [(STPaddleView *)self dateTimeLabel];
      [v17 setText:v12];

      goto LABEL_6;
    case 1:
      v7 = [v5 localizedStringForKey:@"TodayTitle" value:&stru_28766E5A8 table:0];
      v8 = [(STPaddleView *)self dayLabel];
      [v8 setText:v7];

      v9 = [(STPaddleView *)self hourIntervalDateFormatter];
      v10 = [v31 dateInterval];
      v11 = [v9 stringFromDateInterval:v10];
      v12 = [(STPaddleView *)self dateTimeLabel];
      [v12 setText:v11];
LABEL_6:

      break;
  }

  v18 = [v31 itemType];
  if ((v18 - 1) >= 4)
  {
    if (v18 == 5)
    {
      v29 = [v31 total];
      v24 = [v29 unsignedLongValue];

      v25 = MEMORY[0x277CCACA8];
      v26 = @"NotificationsCount";
    }

    else
    {
      if (v18 != 6)
      {
        goto LABEL_18;
      }

      v23 = [v31 total];
      v24 = [v23 unsignedLongValue];

      v25 = MEMORY[0x277CCACA8];
      v26 = @"PickupsCount";
    }

    v27 = [v5 localizedStringForKey:v26 value:&stru_28766E5A8 table:0];
    v28 = [v25 localizedStringWithFormat:v27, v24];
    v30 = [(STPaddleView *)self usageLabel];
    [v30 setText:v28];
  }

  else
  {
    v19 = [v31 total];
    [v19 doubleValue];
    v21 = v20;

    if (v21 >= 60.0)
    {
      v22 = objc_opt_new();
      [v22 setAllowedUnits:96];
      [v22 setUnitsStyle:1];
    }

    else
    {
      v22 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
    }

    v27 = [v22 stringFromTimeInterval:v21];

    v28 = [(STPaddleView *)self usageLabel];
    [v28 setText:v27];
  }

LABEL_18:
}

@end