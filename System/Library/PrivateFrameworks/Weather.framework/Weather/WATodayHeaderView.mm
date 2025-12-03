@interface WATodayHeaderView
- (WATodayHeaderView)init;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateContent;
- (void)setConditionsImage:(id)image;
- (void)setConditionsLine1:(id)line1;
- (void)setConditionsLine2:(id)line2;
- (void)setLocationName:(id)name;
- (void)setTemperature:(id)temperature;
- (void)setTemperatureHigh:(id)high;
- (void)setTemperatureLow:(id)low;
@end

@implementation WATodayHeaderView

- (WATodayHeaderView)init
{
  v5.receiver = self;
  v5.super_class = WATodayHeaderView;
  v2 = [(WATodayHeaderView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WATodayHeaderView *)v2 _setupSubviews];
  }

  return v3;
}

- (void)setConditionsLine1:(id)line1
{
  line1Copy = line1;
  if (![(NSString *)self->_conditionsLine1 isEqualToString:?])
  {
    v4 = [line1Copy copy];
    conditionsLine1 = self->_conditionsLine1;
    self->_conditionsLine1 = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setConditionsLine2:(id)line2
{
  line2Copy = line2;
  if (![(NSString *)self->_conditionsLine2 isEqualToString:?])
  {
    v4 = [line2Copy copy];
    conditionsLine2 = self->_conditionsLine2;
    self->_conditionsLine2 = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setConditionsImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_conditionsImage isEqual:?]& 1) == 0)
  {
    v4 = [imageCopy copy];
    conditionsImage = self->_conditionsImage;
    self->_conditionsImage = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  if (![(NSString *)self->_temperature isEqualToString:?])
  {
    v4 = [temperatureCopy copy];
    temperature = self->_temperature;
    self->_temperature = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setTemperatureLow:(id)low
{
  lowCopy = low;
  if (![(NSString *)self->_temperatureLow isEqualToString:?])
  {
    v4 = [lowCopy copy];
    temperatureLow = self->_temperatureLow;
    self->_temperatureLow = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setTemperatureHigh:(id)high
{
  highCopy = high;
  if (![(NSString *)self->_temperatureHigh isEqualToString:?])
  {
    v4 = [highCopy copy];
    temperatureHigh = self->_temperatureHigh;
    self->_temperatureHigh = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setLocationName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_locationName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    locationName = self->_locationName;
    self->_locationName = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)_updateContent
{
  locationName = [(WATodayHeaderView *)self locationName];
  locationLabel = [(WATodayHeaderView *)self locationLabel];
  [locationLabel setText:locationName];

  temperature = [(WATodayHeaderView *)self temperature];
  v6 = WATodayHeaderViewDegreeAttributedStringWithTemperatureObject(0, temperature);
  temperatureLabel = [(WATodayHeaderView *)self temperatureLabel];
  [temperatureLabel setAttributedText:v6];

  temperatureHigh = [(WATodayHeaderView *)self temperatureHigh];
  if (temperatureHigh && (v9 = temperatureHigh, [(WATodayHeaderView *)self temperatureLow], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = MEMORY[0x277CCACA8];
    temperatureHigh2 = [(WATodayHeaderView *)self temperatureHigh];
    temperatureLow = [(WATodayHeaderView *)self temperatureLow];
    v14 = [v11 stringWithFormat:@"%@ / %@", temperatureHigh2, temperatureLow];
    temperatureHighLowLabel = [(WATodayHeaderView *)self temperatureHighLowLabel];
    [temperatureHighLowLabel setText:v14];
  }

  else
  {
    temperatureHigh2 = [(WATodayHeaderView *)self temperatureHighLowLabel];
    [temperatureHigh2 setText:&stru_2882270E8];
  }

  conditionsLine1 = [(WATodayHeaderView *)self conditionsLine1];
  conditionsLabel1 = [(WATodayHeaderView *)self conditionsLabel1];
  [conditionsLabel1 setText:conditionsLine1];

  conditionsLine2 = [(WATodayHeaderView *)self conditionsLine2];
  conditionsLabel2 = [(WATodayHeaderView *)self conditionsLabel2];
  [conditionsLabel2 setText:conditionsLine2];

  conditionsImage = [(WATodayHeaderView *)self conditionsImage];
  conditionsImageView = [(WATodayHeaderView *)self conditionsImageView];
  [conditionsImageView setImage:conditionsImage];
}

- (void)_setupSubviews
{
  v88 = *MEMORY[0x277D85DE8];
  v52 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76998] addingSymbolicTraits:0x8000 options:2];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:0.0 size:?];
  v50 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0x8000 options:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:0.0 size:?];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v54 = v6;
  v55 = v5;
  v86[0] = v5;
  v86[1] = v6;
  v86[2] = v7;
  v56 = objc_opt_new();
  v57 = v8;
  v86[3] = v8;
  v86[4] = v56;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:5];
  v10 = [v9 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v75;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v75 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v74 + 1) + 8 * i);
        [v14 setAdjustsFontForContentSizeCategory:1];
        [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v11);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v53 = v7;
  v84[0] = v7;
  v84[1] = v57;
  v84[2] = v56;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
  v16 = [v15 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v71;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v70 + 1) + 8 * j);
        v21 = WADetailColor();
        [v20 setTextColor:v21];

        [v20 setFont:v4];
        [v20 setNumberOfLines:1];
      }

      v17 = [v15 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v17);
  }

  [v55 setFont:v3];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v82[0] = v55;
  v82[1] = v53;
  v82[2] = v57;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
  v23 = [v22 countByEnumeratingWithState:&v66 objects:v83 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v67;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v67 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v66 + 1) + 8 * k);
        [v27 setAdjustsFontSizeToFitWidth:1];
        [v27 setMinimumScaleFactor:0.4];
      }

      v24 = [v22 countByEnumeratingWithState:&v66 objects:v83 count:16];
    }

    while (v24);
  }

  v51 = v3;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v80[0] = v54;
  v80[1] = v56;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v29 = [v28 countByEnumeratingWithState:&v62 objects:v81 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v63;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v62 + 1) + 8 * m);
        [v33 setAdjustsFontSizeToFitWidth:1];
        [v33 setMinimumScaleFactor:0.2];
      }

      v30 = [v28 countByEnumeratingWithState:&v62 objects:v81 count:16];
    }

    while (v30);
  }

  v34 = WAContentColor();
  [v54 setTextColor:v34];

  [v54 setTextAlignment:2];
  [v56 setTextAlignment:1];
  v35 = WAContentColor();
  [v56 setTextColor:v35];

  v36 = objc_opt_new();
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setContentMode:1];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WATodayHeaderView *)self addSubview:v36];
  v49 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:101];
  v37 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v49];
  [(WATodayHeaderView *)self setWeatherInformationVisualEffectView:v37];

  weatherInformationVisualEffectView = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  [weatherInformationVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];

  weatherInformationVisualEffectView2 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  [(WATodayHeaderView *)self addSubview:weatherInformationVisualEffectView2];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v78[0] = v55;
  v78[1] = v54;
  v78[2] = v53;
  v78[3] = v57;
  v78[4] = v56;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:5];
  v41 = [v40 countByEnumeratingWithState:&v58 objects:v79 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v59;
    do
    {
      for (n = 0; n != v42; ++n)
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v58 + 1) + 8 * n);
        weatherInformationVisualEffectView3 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
        contentView = [weatherInformationVisualEffectView3 contentView];
        [contentView addSubview:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v58 objects:v79 count:16];
    }

    while (v42);
  }

  [(WATodayHeaderView *)self setLocationLabel:v55];
  [(WATodayHeaderView *)self setConditionsLabel1:v53];
  [(WATodayHeaderView *)self setConditionsLabel2:v57];
  [(WATodayHeaderView *)self setTemperatureHighLowLabel:v56];
  [(WATodayHeaderView *)self setTemperatureLabel:v54];
  [(WATodayHeaderView *)self setConditionsImageView:v36];
  [(WATodayHeaderView *)self _setupConstraints];

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraints
{
  v170 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCAAD0];
  conditionsImageView = [(WATodayHeaderView *)self conditionsImageView];
  conditionsImageView2 = [(WATodayHeaderView *)self conditionsImageView];
  v7 = [v4 constraintWithItem:conditionsImageView attribute:8 relatedBy:0 toItem:conditionsImageView2 attribute:7 multiplier:1.0 constant:0.0];
  [v3 addObject:v7];

  conditionsImageView3 = [(WATodayHeaderView *)self conditionsImageView];
  LODWORD(v9) = 1132068864;
  [conditionsImageView3 setContentCompressionResistancePriority:0 forAxis:v9];

  conditionsImageView4 = [(WATodayHeaderView *)self conditionsImageView];
  LODWORD(v11) = 1132068864;
  [conditionsImageView4 setContentCompressionResistancePriority:1 forAxis:v11];

  locationLabel = [(WATodayHeaderView *)self locationLabel];
  LODWORD(v13) = 1132068864;
  [locationLabel setContentCompressionResistancePriority:0 forAxis:v13];

  conditionsLabel1 = [(WATodayHeaderView *)self conditionsLabel1];
  LODWORD(v15) = 1144750080;
  [conditionsLabel1 setContentCompressionResistancePriority:0 forAxis:v15];

  conditionsLabel2 = [(WATodayHeaderView *)self conditionsLabel2];
  LODWORD(v17) = 1144750080;
  [conditionsLabel2 setContentCompressionResistancePriority:0 forAxis:v17];

  temperatureLabel = [(WATodayHeaderView *)self temperatureLabel];
  LODWORD(v19) = 1144750080;
  [temperatureLabel setContentCompressionResistancePriority:0 forAxis:v19];

  temperatureHighLowLabel = [(WATodayHeaderView *)self temperatureHighLowLabel];
  LODWORD(v21) = 1144750080;
  [temperatureHighLowLabel setContentCompressionResistancePriority:0 forAxis:v21];

  conditionsImageView5 = [(WATodayHeaderView *)self conditionsImageView];
  widthAnchor = [conditionsImageView5 widthAnchor];
  v24 = [widthAnchor constraintGreaterThanOrEqualToConstant:30.0];
  [v3 addObject:v24];

  conditionsImageView6 = [(WATodayHeaderView *)self conditionsImageView];
  heightAnchor = [conditionsImageView6 heightAnchor];
  v27 = [heightAnchor constraintGreaterThanOrEqualToConstant:30.0];
  [v3 addObject:v27];

  conditionsImageView7 = [(WATodayHeaderView *)self conditionsImageView];
  leadingAnchor = [conditionsImageView7 leadingAnchor];
  leadingAnchor2 = [(WATodayHeaderView *)self leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:2.0];
  [v3 addObject:v31];

  weatherInformationVisualEffectView = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  leadingAnchor3 = [weatherInformationVisualEffectView leadingAnchor];
  conditionsImageView8 = [(WATodayHeaderView *)self conditionsImageView];
  trailingAnchor = [conditionsImageView8 trailingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:5.0];
  [v3 addObject:v36];

  weatherInformationVisualEffectView2 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  trailingAnchor2 = [weatherInformationVisualEffectView2 trailingAnchor];
  trailingAnchor3 = [(WATodayHeaderView *)self trailingAnchor];
  v40 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  [v3 addObject:v40];

  locationLabel2 = [(WATodayHeaderView *)self locationLabel];
  leadingAnchor4 = [locationLabel2 leadingAnchor];
  weatherInformationVisualEffectView3 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  leadingAnchor5 = [weatherInformationVisualEffectView3 leadingAnchor];
  v45 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  [v3 addObject:v45];

  conditionsLabel12 = [(WATodayHeaderView *)self conditionsLabel1];
  leadingAnchor6 = [conditionsLabel12 leadingAnchor];
  weatherInformationVisualEffectView4 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  leadingAnchor7 = [weatherInformationVisualEffectView4 leadingAnchor];
  v50 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v3 addObject:v50];

  conditionsLabel22 = [(WATodayHeaderView *)self conditionsLabel2];
  leadingAnchor8 = [conditionsLabel22 leadingAnchor];
  weatherInformationVisualEffectView5 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  leadingAnchor9 = [weatherInformationVisualEffectView5 leadingAnchor];
  v55 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  [v3 addObject:v55];

  locationLabel3 = [(WATodayHeaderView *)self locationLabel];
  widthAnchor2 = [locationLabel3 widthAnchor];
  v58 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:140.0];
  [v3 addObject:v58];

  conditionsLabel13 = [(WATodayHeaderView *)self conditionsLabel1];
  widthAnchor3 = [conditionsLabel13 widthAnchor];
  v61 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:140.0];
  [v3 addObject:v61];

  conditionsLabel23 = [(WATodayHeaderView *)self conditionsLabel2];
  widthAnchor4 = [conditionsLabel23 widthAnchor];
  v64 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:140.0];
  [v3 addObject:v64];

  locationLabel4 = [(WATodayHeaderView *)self locationLabel];
  trailingAnchor4 = [locationLabel4 trailingAnchor];
  temperatureLabel2 = [(WATodayHeaderView *)self temperatureLabel];
  leadingAnchor10 = [temperatureLabel2 leadingAnchor];
  v69 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor10 constant:-7.0];
  [v3 addObject:v69];

  temperatureLabel3 = [(WATodayHeaderView *)self temperatureLabel];
  leadingAnchor11 = [temperatureLabel3 leadingAnchor];
  temperatureHighLowLabel2 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  leadingAnchor12 = [temperatureHighLowLabel2 leadingAnchor];
  v74 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  [v3 addObject:v74];

  temperatureLabel4 = [(WATodayHeaderView *)self temperatureLabel];
  trailingAnchor5 = [temperatureLabel4 trailingAnchor];
  weatherInformationVisualEffectView6 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  trailingAnchor6 = [weatherInformationVisualEffectView6 trailingAnchor];
  v79 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v3 addObject:v79];

  temperatureHighLowLabel3 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  trailingAnchor7 = [temperatureHighLowLabel3 trailingAnchor];
  weatherInformationVisualEffectView7 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  trailingAnchor8 = [weatherInformationVisualEffectView7 trailingAnchor];
  v84 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v3 addObject:v84];

  temperatureLabel5 = [(WATodayHeaderView *)self temperatureLabel];
  widthAnchor5 = [temperatureLabel5 widthAnchor];
  v87 = [widthAnchor5 constraintGreaterThanOrEqualToConstant:60.0];
  [v3 addObject:v87];

  temperatureHighLowLabel4 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  widthAnchor6 = [temperatureHighLowLabel4 widthAnchor];
  v90 = [widthAnchor6 constraintGreaterThanOrEqualToConstant:60.0];
  [v3 addObject:v90];

  weatherInformationVisualEffectView8 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  topAnchor = [weatherInformationVisualEffectView8 topAnchor];
  topAnchor2 = [(WATodayHeaderView *)self topAnchor];
  v94 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v94];

  weatherInformationVisualEffectView9 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  bottomAnchor = [weatherInformationVisualEffectView9 bottomAnchor];
  bottomAnchor2 = [(WATodayHeaderView *)self bottomAnchor];
  v98 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v98];

  v99 = MEMORY[0x277CCAAD0];
  conditionsImageView9 = [(WATodayHeaderView *)self conditionsImageView];
  weatherInformationVisualEffectView10 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v102 = [v99 constraintWithItem:conditionsImageView9 attribute:10 relatedBy:0 toItem:weatherInformationVisualEffectView10 attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v102];

  locationLabel5 = [(WATodayHeaderView *)self locationLabel];
  weatherInformationVisualEffectView11 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  locationLabel6 = [(WATodayHeaderView *)self locationLabel];
  font = [locationLabel6 font];
  v107 = [font _scaledValueForValue:32.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(v109, v107, locationLabel5, v108, weatherInformationVisualEffectView11, 3, v3);

  conditionsLabel14 = [(WATodayHeaderView *)self conditionsLabel1];
  locationLabel7 = [(WATodayHeaderView *)self locationLabel];
  conditionsLabel15 = [(WATodayHeaderView *)self conditionsLabel1];
  font2 = [conditionsLabel15 font];
  v114 = [font2 _scaledValueForValue:20.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(v116, v114, conditionsLabel14, v115, locationLabel7, 11, v3);

  conditionsLabel24 = [(WATodayHeaderView *)self conditionsLabel2];
  conditionsLabel16 = [(WATodayHeaderView *)self conditionsLabel1];
  conditionsLabel25 = [(WATodayHeaderView *)self conditionsLabel2];
  font3 = [conditionsLabel25 font];
  v121 = [font3 _scaledValueForValue:16.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(v123, v121, conditionsLabel24, v122, conditionsLabel16, 11, v3);

  conditionsLabel26 = [(WATodayHeaderView *)self conditionsLabel2];
  lastBaselineAnchor = [conditionsLabel26 lastBaselineAnchor];
  temperatureHighLowLabel5 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  lastBaselineAnchor2 = [temperatureHighLowLabel5 lastBaselineAnchor];
  __38__WATodayHeaderView__setupConstraints__block_invoke(0.0, lastBaselineAnchor2, lastBaselineAnchor, lastBaselineAnchor2, v3);

  temperatureHighLowLabel6 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  widthAnchor7 = [temperatureHighLowLabel6 widthAnchor];
  temperatureLabel6 = [(WATodayHeaderView *)self temperatureLabel];
  widthAnchor8 = [temperatureLabel6 widthAnchor];
  v132 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
  [v3 addObject:v132];

  conditionsLabel17 = [(WATodayHeaderView *)self conditionsLabel1];
  temperatureLabel7 = [(WATodayHeaderView *)self temperatureLabel];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(0.0, temperatureLabel7, conditionsLabel17, v135, temperatureLabel7, 11, v3);

  conditionsLabel27 = [(WATodayHeaderView *)self conditionsLabel2];
  weatherInformationVisualEffectView12 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  conditionsLabel18 = [(WATodayHeaderView *)self conditionsLabel1];
  font4 = [conditionsLabel18 font];
  v140 = [font4 _scaledValueForValue:20.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(-v141, v140, conditionsLabel27, v142, weatherInformationVisualEffectView12, 4, v3);

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  locationLabel8 = [(WATodayHeaderView *)self locationLabel];
  v168[0] = locationLabel8;
  conditionsLabel19 = [(WATodayHeaderView *)self conditionsLabel1];
  v168[1] = conditionsLabel19;
  conditionsLabel28 = [(WATodayHeaderView *)self conditionsLabel2];
  v168[2] = conditionsLabel28;
  v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:3];

  v147 = [v146 countByEnumeratingWithState:&v164 objects:v169 count:16];
  if (v147)
  {
    v148 = v147;
    v149 = *v165;
    do
    {
      v150 = 0;
      do
      {
        if (*v165 != v149)
        {
          objc_enumerationMutation(v146);
        }

        trailingAnchor9 = [*(*(&v164 + 1) + 8 * v150) trailingAnchor];
        temperatureLabel8 = [(WATodayHeaderView *)self temperatureLabel];
        leadingAnchor13 = [temperatureLabel8 leadingAnchor];
        v154 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:leadingAnchor13 constant:-8.0];
        [v3 addObject:v154];

        ++v150;
      }

      while (v148 != v150);
      v148 = [v146 countByEnumeratingWithState:&v164 objects:v169 count:16];
    }

    while (v148);
  }

  conditionsImageView10 = [(WATodayHeaderView *)self conditionsImageView];
  widthAnchor9 = [conditionsImageView10 widthAnchor];
  conditionsImageView11 = [(WATodayHeaderView *)self conditionsImageView];
  heightAnchor2 = [conditionsImageView11 heightAnchor];
  v159 = [widthAnchor9 constraintEqualToAnchor:heightAnchor2];
  [v3 addObject:v159];

  conditionsImageView12 = [(WATodayHeaderView *)self conditionsImageView];
  widthAnchor10 = [conditionsImageView12 widthAnchor];
  v162 = [widthAnchor10 constraintEqualToConstant:100.0];
  [v3 addObject:v162];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  v163 = *MEMORY[0x277D85DE8];
}

void __38__WATodayHeaderView__setupConstraints__block_invoke(double a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a3 constraintEqualToAnchor:a4 constant:a1];
  [v8 addObject:v9];
}

void __38__WATodayHeaderView__setupConstraints__block_invoke_2(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = MEMORY[0x277CCAAD0];
  v12 = a7;
  v13 = [v11 constraintWithItem:a3 attribute:11 relatedBy:0 toItem:a5 attribute:a6 multiplier:1.0 constant:a1];
  [v12 addObject:v13];
}

@end