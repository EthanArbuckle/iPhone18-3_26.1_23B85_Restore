@interface WATodayHourlyForecastView
- (NSAttributedString)temperature;
- (NSAttributedString)time;
- (UIImage)conditionsImage;
- (WATodayHourlyForecastView)initWithFrame:(CGRect)a3;
- (void)_setupConstraints;
- (void)applyVibrancyToTimeWithEffect:(id)a3;
- (void)setConditionsImage:(id)a3;
- (void)setTemperature:(id)a3;
- (void)setTime:(id)a3;
@end

@implementation WATodayHourlyForecastView

- (WATodayHourlyForecastView)initWithFrame:(CGRect)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WATodayHourlyForecastView;
  v3 = [(WATodayHourlyForecastView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(WATodayHourlyForecastView *)v3 setTemperatureLabel:v4];

    v5 = [(WATodayHourlyForecastView *)v3 temperatureLabel];
    [v5 setAdjustsFontForContentSizeCategory:1];

    v6 = [(WATodayHourlyForecastView *)v3 temperatureLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(WATodayHourlyForecastView *)v3 setTemperatureLabelVisualEffectView:v7];

    v8 = [(WATodayHourlyForecastView *)v3 temperatureLabelVisualEffectView];
    v9 = [v8 contentView];
    v10 = [(WATodayHourlyForecastView *)v3 temperatureLabel];
    [v9 addSubview:v10];

    v11 = objc_opt_new();
    [(WATodayHourlyForecastView *)v3 setTimeLabel:v11];

    v12 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [v12 setAdjustsFontForContentSizeCategory:1];

    v13 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [v13 setAdjustsFontSizeToFitWidth:1];

    v14 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(WATodayHourlyForecastView *)v3 setTimeLabelVisualEffectView:v15];

    v16 = [(WATodayHourlyForecastView *)v3 timeLabelVisualEffectView];
    v17 = [v16 contentView];
    v18 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [v17 addSubview:v18];

    v19 = objc_opt_new();
    [(WATodayHourlyForecastView *)v3 setConditionsImageView:v19];

    v20 = [(WATodayHourlyForecastView *)v3 conditionsImageView];
    [v20 setContentMode:2];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = [(WATodayHourlyForecastView *)v3 temperatureLabelVisualEffectView];
    v37[0] = v21;
    v22 = [(WATodayHourlyForecastView *)v3 timeLabelVisualEffectView];
    v37[1] = v22;
    v23 = [(WATodayHourlyForecastView *)v3 conditionsImageView];
    v37[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];

    v25 = [v24 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v32 + 1) + 8 * i);
          [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(WATodayHourlyForecastView *)v3 addSubview:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v26);
    }

    [(WATodayHourlyForecastView *)v3 _setupConstraints];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setTemperature:(id)a3
{
  v8 = a3;
  v4 = [(WATodayHourlyForecastView *)self temperatureLabel];
  v5 = [v4 attributedText];
  v6 = [v5 isEqualToAttributedString:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(WATodayHourlyForecastView *)self temperatureLabel];
    [v7 setAttributedText:v8];
  }
}

- (NSAttributedString)temperature
{
  v2 = [(WATodayHourlyForecastView *)self temperatureLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setTime:(id)a3
{
  v8 = a3;
  v4 = [(WATodayHourlyForecastView *)self timeLabel];
  v5 = [v4 attributedText];
  v6 = [v5 isEqualToAttributedString:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(WATodayHourlyForecastView *)self timeLabel];
    [v7 setAttributedText:v8];
  }
}

- (NSAttributedString)time
{
  v2 = [(WATodayHourlyForecastView *)self timeLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setConditionsImage:(id)a3
{
  v8 = a3;
  v4 = [(WATodayHourlyForecastView *)self conditionsImageView];
  v5 = [v4 image];
  v6 = [v5 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(WATodayHourlyForecastView *)self conditionsImageView];
    [v7 setImage:v8];
  }
}

- (UIImage)conditionsImage
{
  v2 = [(WATodayHourlyForecastView *)self conditionsImageView];
  v3 = [v2 image];

  return v3;
}

- (void)applyVibrancyToTimeWithEffect:(id)a3
{
  v4 = a3;
  v5 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  [v5 setEffect:v4];

  v6 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  [v6 setEffect:v4];
}

- (void)_setupConstraints
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = [(WATodayHourlyForecastView *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(WATodayHourlyForecastView *)self constraints];
    [v4 deactivateConstraints:v5];

    [(WATodayHourlyForecastView *)self setConstraints:0];
  }

  v6 = *MEMORY[0x277D76968];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  v9 = objc_opt_new();
  v10 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  v11 = [v10 lastBaselineAnchor];
  v12 = [(WATodayHourlyForecastView *)self topAnchor];
  [v7 _scaledValueForValue:28.0];
  v13 = [v11 constraintEqualToAnchor:v12 constant:?];
  [v9 addObject:v13];

  v14 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  v15 = [v14 lastBaselineAnchor];
  v16 = [(WATodayHourlyForecastView *)self conditionsImageView];
  v17 = [v16 topAnchor];
  v90 = v7;
  [v7 _scaledValueForValue:12.0];
  v19 = [v15 constraintEqualToAnchor:v17 constant:-v18];
  [v9 addObject:v19];

  v20 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  v21 = [v20 lastBaselineAnchor];
  v22 = [(WATodayHourlyForecastView *)self conditionsImageView];
  v23 = [v22 bottomAnchor];
  [v8 _scaledValueForValue:22.0];
  v24 = [v21 constraintEqualToAnchor:v23 constant:?];
  [v9 addObject:v24];

  v25 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  v26 = [v25 lastBaselineAnchor];
  v27 = [(WATodayHourlyForecastView *)self bottomAnchor];
  v89 = v8;
  [v8 _scaledValueForValue:17.0];
  v29 = [v26 constraintEqualToAnchor:v27 constant:-v28];
  [v9 addObject:v29];

  v30 = [(WATodayHourlyForecastView *)self timeLabel];
  v31 = [v30 leadingAnchor];
  v32 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  v33 = [v32 leadingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v9 addObject:v34];

  v35 = [(WATodayHourlyForecastView *)self timeLabel];
  v36 = [v35 trailingAnchor];
  v37 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  v38 = [v37 trailingAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v9 addObject:v39];

  v40 = [(WATodayHourlyForecastView *)self timeLabel];
  v41 = [v40 topAnchor];
  v42 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  v43 = [v42 topAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v9 addObject:v44];

  v45 = [(WATodayHourlyForecastView *)self timeLabel];
  v46 = [v45 bottomAnchor];
  v47 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [v9 addObject:v49];

  v50 = [(WATodayHourlyForecastView *)self temperatureLabel];
  v51 = [v50 leadingAnchor];
  v52 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  v53 = [v52 contentView];
  v54 = [v53 leadingAnchor];
  v55 = [v51 constraintEqualToAnchor:v54];
  [v9 addObject:v55];

  v56 = [(WATodayHourlyForecastView *)self temperatureLabel];
  v57 = [v56 trailingAnchor];
  v58 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  v59 = [v58 contentView];
  v60 = [v59 trailingAnchor];
  v61 = [v57 constraintEqualToAnchor:v60];
  [v9 addObject:v61];

  v62 = [(WATodayHourlyForecastView *)self temperatureLabel];
  v63 = [v62 topAnchor];
  v64 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  v65 = [v64 contentView];
  v66 = [v65 topAnchor];
  v67 = [v63 constraintEqualToAnchor:v66];
  [v9 addObject:v67];

  v68 = [(WATodayHourlyForecastView *)self temperatureLabel];
  v69 = [v68 bottomAnchor];
  v70 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  v71 = [v70 contentView];
  v72 = [v71 bottomAnchor];
  v73 = [v69 constraintEqualToAnchor:v72];
  [v9 addObject:v73];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = [(WATodayHourlyForecastView *)self subviews];
  v75 = [v74 countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v92;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v92 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v91 + 1) + 8 * i);
        v80 = [v79 centerXAnchor];
        v81 = [(WATodayHourlyForecastView *)self centerXAnchor];
        v82 = [v80 constraintEqualToAnchor:v81];
        [v9 addObject:v82];

        v83 = [(WATodayHourlyForecastView *)self widthAnchor];
        v84 = [v79 widthAnchor];
        v85 = [v83 constraintGreaterThanOrEqualToAnchor:v84 multiplier:1.0];
        [v9 addObject:v85];
      }

      v76 = [v74 countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v76);
  }

  [(WATodayHourlyForecastView *)self setConstraints:v9];
  v86 = MEMORY[0x277CCAAD0];
  v87 = [(WATodayHourlyForecastView *)self constraints];
  [v86 activateConstraints:v87];

  v88 = *MEMORY[0x277D85DE8];
}

@end