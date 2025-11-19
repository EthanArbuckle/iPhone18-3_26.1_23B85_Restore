@interface WATodayPadView
- (NSString)conditionsLine;
- (NSString)locationName;
- (NSString)temperature;
- (UIImage)conditionsImage;
- (WATodayPadView)initWithFrame:(CGRect)a3;
- (void)_setupConstraintsForViews;
- (void)setConditionsImage:(id)a3;
- (void)setConditionsLine:(id)a3;
- (void)setLocationName:(id)a3;
- (void)setStyle:(id)a3;
- (void)setTemperature:(id)a3;
- (void)sizeToFit;
- (void)updateForChangedSettings:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation WATodayPadView

- (WATodayPadView)initWithFrame:(CGRect)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WATodayPadView;
  v3 = [(WATodayPadView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    [(WATodayPadView *)v3 setLegibilitySettings:v4];

    v5 = objc_opt_new();
    [(WATodayPadView *)v3 setConditionsImageView:v5];

    v6 = [(WATodayPadView *)v3 conditionsImageView];
    [v6 setContentMode:6];

    v7 = [(WATodayPadView *)v3 conditionsImageView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(WATodayPadView *)v3 conditionsImageView];
    [(WATodayPadView *)v3 addSubview:v8];

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
    v12 = [(WATodayPadView *)v3 locationLabel];
    v29[0] = v12;
    v13 = [(WATodayPadView *)v3 conditionsLabel];
    v29[1] = v13;
    v14 = [(WATodayPadView *)v3 temperatureLabel];
    v29[2] = v14;
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
          v21 = [MEMORY[0x277D75348] whiteColor];
          [v20 setTextColor:v21];

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

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = WATodayPadView;
  [(WATodayPadView *)&v6 willMoveToWindow:a3];
  v4 = [(WATodayPadView *)self style];

  if (!v4)
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

- (void)setTemperature:(id)a3
{
  v10 = a3;
  v4 = [(WATodayPadView *)self temperature];
  v5 = [v10 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(WATodayPadView *)self temperatureLabel];
    [v6 setText:v10];

    v7 = [(WATodayPadView *)self legibilitySettings];

    if (v7)
    {
      v8 = [(WATodayPadView *)self temperatureLabel];
      v9 = [(WATodayPadView *)self legibilitySettings];
      [v8 updateForChangedSettings:v9];
    }
  }
}

- (NSString)temperature
{
  v2 = [(WATodayPadView *)self temperatureLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setLocationName:(id)a3
{
  v10 = a3;
  v4 = [(WATodayPadView *)self locationName];
  v5 = [v10 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(WATodayPadView *)self locationLabel];
    [v6 setText:v10];

    v7 = [(WATodayPadView *)self legibilitySettings];

    if (v7)
    {
      v8 = [(WATodayPadView *)self locationLabel];
      v9 = [(WATodayPadView *)self legibilitySettings];
      [v8 updateForChangedSettings:v9];
    }
  }
}

- (NSString)locationName
{
  v2 = [(WATodayPadView *)self locationLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setConditionsLine:(id)a3
{
  v10 = a3;
  v4 = [(WATodayPadView *)self conditionsLine];
  v5 = [v10 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(WATodayPadView *)self conditionsLabel];
    [v6 setText:v10];

    v7 = [(WATodayPadView *)self legibilitySettings];

    if (v7)
    {
      v8 = [(WATodayPadView *)self conditionsLabel];
      v9 = [(WATodayPadView *)self legibilitySettings];
      [v8 updateForChangedSettings:v9];
    }
  }
}

- (NSString)conditionsLine
{
  v2 = [(WATodayPadView *)self conditionsLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setConditionsImage:(id)a3
{
  v7 = a3;
  v4 = [(WATodayPadView *)self conditionsImage];
  v5 = [v4 isEqual:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(WATodayPadView *)self conditionsImageView];
    [v6 setImage:v7];
  }
}

- (UIImage)conditionsImage
{
  v2 = [(WATodayPadView *)self conditionsImageView];
  v3 = [v2 image];

  return v3;
}

- (void)updateForChangedSettings:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(WATodayPadView *)self setLegibilitySettings:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(WATodayPadView *)self locationLabel];
  v18[0] = v5;
  v6 = [(WATodayPadView *)self conditionsLabel];
  v18[1] = v6;
  v7 = [(WATodayPadView *)self temperatureLabel];
  v18[2] = v7;
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

        [*(*(&v14 + 1) + 8 * v12++) updateForChangedSettings:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setStyle:(id)a3
{
  v12 = a3;
  if (([v12 isEqual:self->_style] & 1) == 0)
  {
    v4 = [v12 copy];
    style = self->_style;
    self->_style = v4;

    v6 = [v12 locationFont];
    v7 = [(WATodayPadView *)self locationLabel];
    [v7 setFont:v6];

    v8 = [v12 conditionsFont];
    v9 = [(WATodayPadView *)self conditionsLabel];
    [v9 setFont:v8];

    v10 = [v12 temperatureFont];
    v11 = [(WATodayPadView *)self temperatureLabel];
    [v11 setFont:v10];

    [(WATodayPadView *)self _setupConstraintsForViews];
    [(WATodayPadView *)self setNeedsLayout];
  }
}

- (void)_setupConstraintsForViews
{
  v3 = [(WATodayPadView *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(WATodayPadView *)self constraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(WATodayPadView *)self style];

  if (v6)
  {
    v79 = objc_opt_new();
    v7 = [(WATodayPadView *)self style];
    [v7 conditionsImageLeadingMargin];
    v9 = v8;

    v10 = [(WATodayPadView *)self style];
    [v10 labelLeadingMargin];
    v12 = v11;

    v13 = [(WATodayPadView *)self conditionsImageView];
    v14 = [v13 leadingAnchor];
    v15 = [(WATodayPadView *)self leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:v9];
    [v79 addObject:v16];

    v17 = [(WATodayPadView *)self temperatureLabel];
    v18 = [v17 leadingAnchor];
    v19 = [(WATodayPadView *)self leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v12];
    [v79 addObject:v20];

    v21 = [(WATodayPadView *)self locationLabel];
    v22 = [v21 leadingAnchor];
    v23 = [(WATodayPadView *)self leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:v12];
    [v79 addObject:v24];

    v25 = [(WATodayPadView *)self conditionsLabel];
    v26 = [v25 leadingAnchor];
    v27 = [(WATodayPadView *)self leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:v12];
    [v79 addObject:v28];

    v29 = [(WATodayPadView *)self conditionsImageView];
    v30 = [v29 trailingAnchor];
    v31 = [(WATodayPadView *)self trailingAnchor];
    v32 = [v30 constraintLessThanOrEqualToAnchor:v31];
    [v79 addObject:v32];

    v33 = [(WATodayPadView *)self temperatureLabel];
    v34 = [v33 trailingAnchor];
    v35 = [(WATodayPadView *)self trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v79 addObject:v36];

    v37 = [(WATodayPadView *)self locationLabel];
    v38 = [v37 trailingAnchor];
    v39 = [(WATodayPadView *)self trailingAnchor];
    v40 = [v38 constraintLessThanOrEqualToAnchor:v39];
    [v79 addObject:v40];

    v41 = [(WATodayPadView *)self conditionsLabel];
    v42 = [v41 trailingAnchor];
    v43 = [(WATodayPadView *)self trailingAnchor];
    v44 = [v42 constraintLessThanOrEqualToAnchor:v43];
    [v79 addObject:v44];

    v45 = [(WATodayPadView *)self style];
    [v45 temperatureLabelBaselineToConditionsImageViewBottom];
    v47 = v46;

    v48 = [(WATodayPadView *)self style];
    [v48 locationLabelBaselineToTemperatureLabelBaseline];
    v50 = v49;

    v51 = [(WATodayPadView *)self style];
    [v51 conditionsLabelBaselineToLocationLabelBaseline];
    v53 = v52;

    v54 = [(WATodayPadView *)self style];
    [v54 conditionsLabelBaselineToBottom];
    v56 = v55;

    v57 = [(WATodayPadView *)self conditionsImageView];
    v58 = [v57 topAnchor];
    v59 = [(WATodayPadView *)self topAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    [v79 addObject:v60];

    v61 = [(WATodayPadView *)self conditionsImageView];
    v62 = [v61 bottomAnchor];
    v63 = [(WATodayPadView *)self temperatureLabel];
    v64 = [v63 lastBaselineAnchor];
    v65 = [v62 constraintEqualToAnchor:v64 constant:v47];
    [v79 addObject:v65];

    v66 = MEMORY[0x277D2C948];
    v67 = [(WATodayPadView *)self locationLabel];
    v68 = [(WATodayPadView *)self temperatureLabel];
    v69 = [v66 baselineConstraintForAutoitem:v67 relation:0 toView:v68 attribute:11 defaultConstant:v50];
    [v79 addObject:v69];

    v70 = MEMORY[0x277D2C948];
    v71 = [(WATodayPadView *)self conditionsLabel];
    v72 = [(WATodayPadView *)self locationLabel];
    v73 = [v70 baselineConstraintForAutoitem:v71 relation:0 toView:v72 attribute:11 defaultConstant:v53];
    [v79 addObject:v73];

    v74 = MEMORY[0x277D2C948];
    v75 = [(WATodayPadView *)self conditionsLabel];
    v76 = [v74 baselineConstraintForAutoitem:v75 relation:0 toView:self attribute:4 defaultConstant:v56];
    [v79 addObject:v76];

    [(WATodayPadView *)self setConstraints:v79];
    v77 = MEMORY[0x277CCAAD0];
    v78 = [(WATodayPadView *)self constraints];
    [v77 activateConstraints:v78];
  }
}

@end