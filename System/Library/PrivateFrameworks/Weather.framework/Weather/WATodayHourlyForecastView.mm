@interface WATodayHourlyForecastView
- (NSAttributedString)temperature;
- (NSAttributedString)time;
- (UIImage)conditionsImage;
- (WATodayHourlyForecastView)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)applyVibrancyToTimeWithEffect:(id)effect;
- (void)setConditionsImage:(id)image;
- (void)setTemperature:(id)temperature;
- (void)setTime:(id)time;
@end

@implementation WATodayHourlyForecastView

- (WATodayHourlyForecastView)initWithFrame:(CGRect)frame
{
  v39 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WATodayHourlyForecastView;
  v3 = [(WATodayHourlyForecastView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(WATodayHourlyForecastView *)v3 setTemperatureLabel:v4];

    temperatureLabel = [(WATodayHourlyForecastView *)v3 temperatureLabel];
    [temperatureLabel setAdjustsFontForContentSizeCategory:1];

    temperatureLabel2 = [(WATodayHourlyForecastView *)v3 temperatureLabel];
    [temperatureLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(WATodayHourlyForecastView *)v3 setTemperatureLabelVisualEffectView:v7];

    temperatureLabelVisualEffectView = [(WATodayHourlyForecastView *)v3 temperatureLabelVisualEffectView];
    contentView = [temperatureLabelVisualEffectView contentView];
    temperatureLabel3 = [(WATodayHourlyForecastView *)v3 temperatureLabel];
    [contentView addSubview:temperatureLabel3];

    v11 = objc_opt_new();
    [(WATodayHourlyForecastView *)v3 setTimeLabel:v11];

    timeLabel = [(WATodayHourlyForecastView *)v3 timeLabel];
    [timeLabel setAdjustsFontForContentSizeCategory:1];

    timeLabel2 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [timeLabel2 setAdjustsFontSizeToFitWidth:1];

    timeLabel3 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [timeLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(WATodayHourlyForecastView *)v3 setTimeLabelVisualEffectView:v15];

    timeLabelVisualEffectView = [(WATodayHourlyForecastView *)v3 timeLabelVisualEffectView];
    contentView2 = [timeLabelVisualEffectView contentView];
    timeLabel4 = [(WATodayHourlyForecastView *)v3 timeLabel];
    [contentView2 addSubview:timeLabel4];

    v19 = objc_opt_new();
    [(WATodayHourlyForecastView *)v3 setConditionsImageView:v19];

    conditionsImageView = [(WATodayHourlyForecastView *)v3 conditionsImageView];
    [conditionsImageView setContentMode:2];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    temperatureLabelVisualEffectView2 = [(WATodayHourlyForecastView *)v3 temperatureLabelVisualEffectView];
    v37[0] = temperatureLabelVisualEffectView2;
    timeLabelVisualEffectView2 = [(WATodayHourlyForecastView *)v3 timeLabelVisualEffectView];
    v37[1] = timeLabelVisualEffectView2;
    conditionsImageView2 = [(WATodayHourlyForecastView *)v3 conditionsImageView];
    v37[2] = conditionsImageView2;
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

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  temperatureLabel = [(WATodayHourlyForecastView *)self temperatureLabel];
  attributedText = [temperatureLabel attributedText];
  v6 = [attributedText isEqualToAttributedString:temperatureCopy];

  if ((v6 & 1) == 0)
  {
    temperatureLabel2 = [(WATodayHourlyForecastView *)self temperatureLabel];
    [temperatureLabel2 setAttributedText:temperatureCopy];
  }
}

- (NSAttributedString)temperature
{
  temperatureLabel = [(WATodayHourlyForecastView *)self temperatureLabel];
  attributedText = [temperatureLabel attributedText];

  return attributedText;
}

- (void)setTime:(id)time
{
  timeCopy = time;
  timeLabel = [(WATodayHourlyForecastView *)self timeLabel];
  attributedText = [timeLabel attributedText];
  v6 = [attributedText isEqualToAttributedString:timeCopy];

  if ((v6 & 1) == 0)
  {
    timeLabel2 = [(WATodayHourlyForecastView *)self timeLabel];
    [timeLabel2 setAttributedText:timeCopy];
  }
}

- (NSAttributedString)time
{
  timeLabel = [(WATodayHourlyForecastView *)self timeLabel];
  attributedText = [timeLabel attributedText];

  return attributedText;
}

- (void)setConditionsImage:(id)image
{
  imageCopy = image;
  conditionsImageView = [(WATodayHourlyForecastView *)self conditionsImageView];
  image = [conditionsImageView image];
  v6 = [image isEqual:imageCopy];

  if ((v6 & 1) == 0)
  {
    conditionsImageView2 = [(WATodayHourlyForecastView *)self conditionsImageView];
    [conditionsImageView2 setImage:imageCopy];
  }
}

- (UIImage)conditionsImage
{
  conditionsImageView = [(WATodayHourlyForecastView *)self conditionsImageView];
  image = [conditionsImageView image];

  return image;
}

- (void)applyVibrancyToTimeWithEffect:(id)effect
{
  effectCopy = effect;
  timeLabelVisualEffectView = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  [timeLabelVisualEffectView setEffect:effectCopy];

  temperatureLabelVisualEffectView = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  [temperatureLabelVisualEffectView setEffect:effectCopy];
}

- (void)_setupConstraints
{
  v96 = *MEMORY[0x277D85DE8];
  constraints = [(WATodayHourlyForecastView *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(WATodayHourlyForecastView *)self constraints];
    [v4 deactivateConstraints:constraints2];

    [(WATodayHourlyForecastView *)self setConstraints:0];
  }

  v6 = *MEMORY[0x277D76968];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  v9 = objc_opt_new();
  timeLabelVisualEffectView = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  lastBaselineAnchor = [timeLabelVisualEffectView lastBaselineAnchor];
  topAnchor = [(WATodayHourlyForecastView *)self topAnchor];
  [v7 _scaledValueForValue:28.0];
  v13 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v9 addObject:v13];

  timeLabelVisualEffectView2 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  lastBaselineAnchor2 = [timeLabelVisualEffectView2 lastBaselineAnchor];
  conditionsImageView = [(WATodayHourlyForecastView *)self conditionsImageView];
  topAnchor2 = [conditionsImageView topAnchor];
  v90 = v7;
  [v7 _scaledValueForValue:12.0];
  v19 = [lastBaselineAnchor2 constraintEqualToAnchor:topAnchor2 constant:-v18];
  [v9 addObject:v19];

  temperatureLabelVisualEffectView = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  lastBaselineAnchor3 = [temperatureLabelVisualEffectView lastBaselineAnchor];
  conditionsImageView2 = [(WATodayHourlyForecastView *)self conditionsImageView];
  bottomAnchor = [conditionsImageView2 bottomAnchor];
  [v8 _scaledValueForValue:22.0];
  v24 = [lastBaselineAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
  [v9 addObject:v24];

  temperatureLabelVisualEffectView2 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  lastBaselineAnchor4 = [temperatureLabelVisualEffectView2 lastBaselineAnchor];
  bottomAnchor2 = [(WATodayHourlyForecastView *)self bottomAnchor];
  v89 = v8;
  [v8 _scaledValueForValue:17.0];
  v29 = [lastBaselineAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:-v28];
  [v9 addObject:v29];

  timeLabel = [(WATodayHourlyForecastView *)self timeLabel];
  leadingAnchor = [timeLabel leadingAnchor];
  timeLabelVisualEffectView3 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  leadingAnchor2 = [timeLabelVisualEffectView3 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 addObject:v34];

  timeLabel2 = [(WATodayHourlyForecastView *)self timeLabel];
  trailingAnchor = [timeLabel2 trailingAnchor];
  timeLabelVisualEffectView4 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  trailingAnchor2 = [timeLabelVisualEffectView4 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v9 addObject:v39];

  timeLabel3 = [(WATodayHourlyForecastView *)self timeLabel];
  topAnchor3 = [timeLabel3 topAnchor];
  timeLabelVisualEffectView5 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  topAnchor4 = [timeLabelVisualEffectView5 topAnchor];
  v44 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v9 addObject:v44];

  timeLabel4 = [(WATodayHourlyForecastView *)self timeLabel];
  bottomAnchor3 = [timeLabel4 bottomAnchor];
  timeLabelVisualEffectView6 = [(WATodayHourlyForecastView *)self timeLabelVisualEffectView];
  bottomAnchor4 = [timeLabelVisualEffectView6 bottomAnchor];
  v49 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v9 addObject:v49];

  temperatureLabel = [(WATodayHourlyForecastView *)self temperatureLabel];
  leadingAnchor3 = [temperatureLabel leadingAnchor];
  temperatureLabelVisualEffectView3 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  contentView = [temperatureLabelVisualEffectView3 contentView];
  leadingAnchor4 = [contentView leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v9 addObject:v55];

  temperatureLabel2 = [(WATodayHourlyForecastView *)self temperatureLabel];
  trailingAnchor3 = [temperatureLabel2 trailingAnchor];
  temperatureLabelVisualEffectView4 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  contentView2 = [temperatureLabelVisualEffectView4 contentView];
  trailingAnchor4 = [contentView2 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v9 addObject:v61];

  temperatureLabel3 = [(WATodayHourlyForecastView *)self temperatureLabel];
  topAnchor5 = [temperatureLabel3 topAnchor];
  temperatureLabelVisualEffectView5 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  contentView3 = [temperatureLabelVisualEffectView5 contentView];
  topAnchor6 = [contentView3 topAnchor];
  v67 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v9 addObject:v67];

  temperatureLabel4 = [(WATodayHourlyForecastView *)self temperatureLabel];
  bottomAnchor5 = [temperatureLabel4 bottomAnchor];
  temperatureLabelVisualEffectView6 = [(WATodayHourlyForecastView *)self temperatureLabelVisualEffectView];
  contentView4 = [temperatureLabelVisualEffectView6 contentView];
  bottomAnchor6 = [contentView4 bottomAnchor];
  v73 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v9 addObject:v73];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  subviews = [(WATodayHourlyForecastView *)self subviews];
  v75 = [subviews countByEnumeratingWithState:&v91 objects:v95 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v79 = *(*(&v91 + 1) + 8 * i);
        centerXAnchor = [v79 centerXAnchor];
        centerXAnchor2 = [(WATodayHourlyForecastView *)self centerXAnchor];
        v82 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [v9 addObject:v82];

        widthAnchor = [(WATodayHourlyForecastView *)self widthAnchor];
        widthAnchor2 = [v79 widthAnchor];
        v85 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:1.0];
        [v9 addObject:v85];
      }

      v76 = [subviews countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v76);
  }

  [(WATodayHourlyForecastView *)self setConstraints:v9];
  v86 = MEMORY[0x277CCAAD0];
  constraints3 = [(WATodayHourlyForecastView *)self constraints];
  [v86 activateConstraints:constraints3];

  v88 = *MEMORY[0x277D85DE8];
}

@end