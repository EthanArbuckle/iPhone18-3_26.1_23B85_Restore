@interface WATodayPadView
- (NSString)conditionsLine;
- (NSString)locationName;
- (NSString)temperature;
- (UIImage)conditionsImage;
- (WATodayPadView)initWithFrame:(CGRect)frame;
- (void)_setupConstraintsForViews;
- (void)setConditionsImage:(id)image;
- (void)setConditionsLine:(id)line;
- (void)setLocationName:(id)name;
- (void)setStyle:(id)style;
- (void)setTemperature:(id)temperature;
- (void)sizeToFit;
- (void)updateForChangedSettings:(id)settings;
- (void)willMoveToWindow:(id)window;
@end

@implementation WATodayPadView

- (WATodayPadView)initWithFrame:(CGRect)frame
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WATodayPadView;
  v3 = [(WATodayPadView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    [(WATodayPadView *)v3 setLegibilitySettings:v4];

    v5 = objc_opt_new();
    [(WATodayPadView *)v3 setConditionsImageView:v5];

    conditionsImageView = [(WATodayPadView *)v3 conditionsImageView];
    [conditionsImageView setContentMode:6];

    conditionsImageView2 = [(WATodayPadView *)v3 conditionsImageView];
    [conditionsImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    conditionsImageView3 = [(WATodayPadView *)v3 conditionsImageView];
    [(WATodayPadView *)v3 addSubview:conditionsImageView3];

    v9 = objc_opt_new();
    [(WATodayPadView *)v3 setTemperatureLabel:v9];

    v10 = objc_opt_new();
    [(WATodayPadView *)v3 setLocationLabel:v10];

    v11 = objc_opt_new();
    [(WATodayPadView *)v3 setConditionsLabel:v11];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    locationLabel = [(WATodayPadView *)v3 locationLabel];
    v29[0] = locationLabel;
    conditionsLabel = [(WATodayPadView *)v3 conditionsLabel];
    v29[1] = conditionsLabel;
    temperatureLabel = [(WATodayPadView *)v3 temperatureLabel];
    v29[2] = temperatureLabel;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

    v16 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [v20 setTextColor:whiteColor];

          [(WATodayPadView *)v3 addSubview:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v17);
    }

    [(WATodayPadView *)v3 setConditionsLine:0];
    [(WATodayPadView *)v3 setConditionsImage:0];
    [(WATodayPadView *)v3 setTemperature:0];
    [(WATodayPadView *)v3 setLocationName:0];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = WATodayPadView;
  [(WATodayPadView *)&v6 willMoveToWindow:window];
  style = [(WATodayPadView *)self style];

  if (!style)
  {
    v5 = objc_opt_new();
    [(WATodayPadView *)self setStyle:v5];
  }
}

- (void)sizeToFit
{
  [(WATodayPadView *)self frame];
  v4 = v3;
  v6 = v5;
  [(WATodayPadView *)self systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];

  [(WATodayPadView *)self setFrame:v4, v6, v7, v8];
}

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  temperature = [(WATodayPadView *)self temperature];
  v5 = [temperatureCopy isEqualToString:temperature];

  if ((v5 & 1) == 0)
  {
    temperatureLabel = [(WATodayPadView *)self temperatureLabel];
    [temperatureLabel setText:temperatureCopy];

    legibilitySettings = [(WATodayPadView *)self legibilitySettings];

    if (legibilitySettings)
    {
      temperatureLabel2 = [(WATodayPadView *)self temperatureLabel];
      legibilitySettings2 = [(WATodayPadView *)self legibilitySettings];
      [temperatureLabel2 updateForChangedSettings:legibilitySettings2];
    }
  }
}

- (NSString)temperature
{
  temperatureLabel = [(WATodayPadView *)self temperatureLabel];
  text = [temperatureLabel text];

  return text;
}

- (void)setLocationName:(id)name
{
  nameCopy = name;
  locationName = [(WATodayPadView *)self locationName];
  v5 = [nameCopy isEqualToString:locationName];

  if ((v5 & 1) == 0)
  {
    locationLabel = [(WATodayPadView *)self locationLabel];
    [locationLabel setText:nameCopy];

    legibilitySettings = [(WATodayPadView *)self legibilitySettings];

    if (legibilitySettings)
    {
      locationLabel2 = [(WATodayPadView *)self locationLabel];
      legibilitySettings2 = [(WATodayPadView *)self legibilitySettings];
      [locationLabel2 updateForChangedSettings:legibilitySettings2];
    }
  }
}

- (NSString)locationName
{
  locationLabel = [(WATodayPadView *)self locationLabel];
  text = [locationLabel text];

  return text;
}

- (void)setConditionsLine:(id)line
{
  lineCopy = line;
  conditionsLine = [(WATodayPadView *)self conditionsLine];
  v5 = [lineCopy isEqualToString:conditionsLine];

  if ((v5 & 1) == 0)
  {
    conditionsLabel = [(WATodayPadView *)self conditionsLabel];
    [conditionsLabel setText:lineCopy];

    legibilitySettings = [(WATodayPadView *)self legibilitySettings];

    if (legibilitySettings)
    {
      conditionsLabel2 = [(WATodayPadView *)self conditionsLabel];
      legibilitySettings2 = [(WATodayPadView *)self legibilitySettings];
      [conditionsLabel2 updateForChangedSettings:legibilitySettings2];
    }
  }
}

- (NSString)conditionsLine
{
  conditionsLabel = [(WATodayPadView *)self conditionsLabel];
  text = [conditionsLabel text];

  return text;
}

- (void)setConditionsImage:(id)image
{
  imageCopy = image;
  conditionsImage = [(WATodayPadView *)self conditionsImage];
  v5 = [conditionsImage isEqual:imageCopy];

  if ((v5 & 1) == 0)
  {
    conditionsImageView = [(WATodayPadView *)self conditionsImageView];
    [conditionsImageView setImage:imageCopy];
  }
}

- (UIImage)conditionsImage
{
  conditionsImageView = [(WATodayPadView *)self conditionsImageView];
  image = [conditionsImageView image];

  return image;
}

- (void)updateForChangedSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  [(WATodayPadView *)self setLegibilitySettings:settingsCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  locationLabel = [(WATodayPadView *)self locationLabel];
  v18[0] = locationLabel;
  conditionsLabel = [(WATodayPadView *)self conditionsLabel];
  v18[1] = conditionsLabel;
  temperatureLabel = [(WATodayPadView *)self temperatureLabel];
  v18[2] = temperatureLabel;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) updateForChangedSettings:settingsCopy];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (([styleCopy isEqual:self->_style] & 1) == 0)
  {
    v4 = [styleCopy copy];
    style = self->_style;
    self->_style = v4;

    locationFont = [styleCopy locationFont];
    locationLabel = [(WATodayPadView *)self locationLabel];
    [locationLabel setFont:locationFont];

    conditionsFont = [styleCopy conditionsFont];
    conditionsLabel = [(WATodayPadView *)self conditionsLabel];
    [conditionsLabel setFont:conditionsFont];

    temperatureFont = [styleCopy temperatureFont];
    temperatureLabel = [(WATodayPadView *)self temperatureLabel];
    [temperatureLabel setFont:temperatureFont];

    [(WATodayPadView *)self _setupConstraintsForViews];
    [(WATodayPadView *)self setNeedsLayout];
  }
}

- (void)_setupConstraintsForViews
{
  constraints = [(WATodayPadView *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(WATodayPadView *)self constraints];
    [v4 deactivateConstraints:constraints2];
  }

  style = [(WATodayPadView *)self style];

  if (style)
  {
    v79 = objc_opt_new();
    style2 = [(WATodayPadView *)self style];
    [style2 conditionsImageLeadingMargin];
    v9 = v8;

    style3 = [(WATodayPadView *)self style];
    [style3 labelLeadingMargin];
    v12 = v11;

    conditionsImageView = [(WATodayPadView *)self conditionsImageView];
    leadingAnchor = [conditionsImageView leadingAnchor];
    leadingAnchor2 = [(WATodayPadView *)self leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
    [v79 addObject:v16];

    temperatureLabel = [(WATodayPadView *)self temperatureLabel];
    leadingAnchor3 = [temperatureLabel leadingAnchor];
    leadingAnchor4 = [(WATodayPadView *)self leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v12];
    [v79 addObject:v20];

    locationLabel = [(WATodayPadView *)self locationLabel];
    leadingAnchor5 = [locationLabel leadingAnchor];
    leadingAnchor6 = [(WATodayPadView *)self leadingAnchor];
    v24 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v12];
    [v79 addObject:v24];

    conditionsLabel = [(WATodayPadView *)self conditionsLabel];
    leadingAnchor7 = [conditionsLabel leadingAnchor];
    leadingAnchor8 = [(WATodayPadView *)self leadingAnchor];
    v28 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v12];
    [v79 addObject:v28];

    conditionsImageView2 = [(WATodayPadView *)self conditionsImageView];
    trailingAnchor = [conditionsImageView2 trailingAnchor];
    trailingAnchor2 = [(WATodayPadView *)self trailingAnchor];
    v32 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [v79 addObject:v32];

    temperatureLabel2 = [(WATodayPadView *)self temperatureLabel];
    trailingAnchor3 = [temperatureLabel2 trailingAnchor];
    trailingAnchor4 = [(WATodayPadView *)self trailingAnchor];
    v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v79 addObject:v36];

    locationLabel2 = [(WATodayPadView *)self locationLabel];
    trailingAnchor5 = [locationLabel2 trailingAnchor];
    trailingAnchor6 = [(WATodayPadView *)self trailingAnchor];
    v40 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    [v79 addObject:v40];

    conditionsLabel2 = [(WATodayPadView *)self conditionsLabel];
    trailingAnchor7 = [conditionsLabel2 trailingAnchor];
    trailingAnchor8 = [(WATodayPadView *)self trailingAnchor];
    v44 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
    [v79 addObject:v44];

    style4 = [(WATodayPadView *)self style];
    [style4 temperatureLabelBaselineToConditionsImageViewBottom];
    v47 = v46;

    style5 = [(WATodayPadView *)self style];
    [style5 locationLabelBaselineToTemperatureLabelBaseline];
    v50 = v49;

    style6 = [(WATodayPadView *)self style];
    [style6 conditionsLabelBaselineToLocationLabelBaseline];
    v53 = v52;

    style7 = [(WATodayPadView *)self style];
    [style7 conditionsLabelBaselineToBottom];
    v56 = v55;

    conditionsImageView3 = [(WATodayPadView *)self conditionsImageView];
    topAnchor = [conditionsImageView3 topAnchor];
    topAnchor2 = [(WATodayPadView *)self topAnchor];
    v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v79 addObject:v60];

    conditionsImageView4 = [(WATodayPadView *)self conditionsImageView];
    bottomAnchor = [conditionsImageView4 bottomAnchor];
    temperatureLabel3 = [(WATodayPadView *)self temperatureLabel];
    lastBaselineAnchor = [temperatureLabel3 lastBaselineAnchor];
    v65 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v47];
    [v79 addObject:v65];

    v66 = MEMORY[0x277D2C948];
    locationLabel3 = [(WATodayPadView *)self locationLabel];
    temperatureLabel4 = [(WATodayPadView *)self temperatureLabel];
    v69 = [v66 baselineConstraintForAutoitem:locationLabel3 relation:0 toView:temperatureLabel4 attribute:11 defaultConstant:v50];
    [v79 addObject:v69];

    v70 = MEMORY[0x277D2C948];
    conditionsLabel3 = [(WATodayPadView *)self conditionsLabel];
    locationLabel4 = [(WATodayPadView *)self locationLabel];
    v73 = [v70 baselineConstraintForAutoitem:conditionsLabel3 relation:0 toView:locationLabel4 attribute:11 defaultConstant:v53];
    [v79 addObject:v73];

    v74 = MEMORY[0x277D2C948];
    conditionsLabel4 = [(WATodayPadView *)self conditionsLabel];
    v76 = [v74 baselineConstraintForAutoitem:conditionsLabel4 relation:0 toView:self attribute:4 defaultConstant:v56];
    [v79 addObject:v76];

    [(WATodayPadView *)self setConstraints:v79];
    v77 = MEMORY[0x277CCAAD0];
    constraints3 = [(WATodayPadView *)self constraints];
    [v77 activateConstraints:constraints3];
  }
}

@end