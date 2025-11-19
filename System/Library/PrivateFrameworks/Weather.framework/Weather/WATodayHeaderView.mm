@interface WATodayHeaderView
- (WATodayHeaderView)init;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateContent;
- (void)setConditionsImage:(id)a3;
- (void)setConditionsLine1:(id)a3;
- (void)setConditionsLine2:(id)a3;
- (void)setLocationName:(id)a3;
- (void)setTemperature:(id)a3;
- (void)setTemperatureHigh:(id)a3;
- (void)setTemperatureLow:(id)a3;
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

- (void)setConditionsLine1:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_conditionsLine1 isEqualToString:?])
  {
    v4 = [v6 copy];
    conditionsLine1 = self->_conditionsLine1;
    self->_conditionsLine1 = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setConditionsLine2:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_conditionsLine2 isEqualToString:?])
  {
    v4 = [v6 copy];
    conditionsLine2 = self->_conditionsLine2;
    self->_conditionsLine2 = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setConditionsImage:(id)a3
{
  v6 = a3;
  if (([(UIImage *)self->_conditionsImage isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    conditionsImage = self->_conditionsImage;
    self->_conditionsImage = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setTemperature:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_temperature isEqualToString:?])
  {
    v4 = [v6 copy];
    temperature = self->_temperature;
    self->_temperature = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setTemperatureLow:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_temperatureLow isEqualToString:?])
  {
    v4 = [v6 copy];
    temperatureLow = self->_temperatureLow;
    self->_temperatureLow = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setTemperatureHigh:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_temperatureHigh isEqualToString:?])
  {
    v4 = [v6 copy];
    temperatureHigh = self->_temperatureHigh;
    self->_temperatureHigh = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)setLocationName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_locationName isEqualToString:?])
  {
    v4 = [v6 copy];
    locationName = self->_locationName;
    self->_locationName = v4;

    [(WATodayHeaderView *)self _updateContent];
  }
}

- (void)_updateContent
{
  v3 = [(WATodayHeaderView *)self locationName];
  v4 = [(WATodayHeaderView *)self locationLabel];
  [v4 setText:v3];

  v5 = [(WATodayHeaderView *)self temperature];
  v6 = WATodayHeaderViewDegreeAttributedStringWithTemperatureObject(0, v5);
  v7 = [(WATodayHeaderView *)self temperatureLabel];
  [v7 setAttributedText:v6];

  v8 = [(WATodayHeaderView *)self temperatureHigh];
  if (v8 && (v9 = v8, [(WATodayHeaderView *)self temperatureLow], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(WATodayHeaderView *)self temperatureHigh];
    v13 = [(WATodayHeaderView *)self temperatureLow];
    v14 = [v11 stringWithFormat:@"%@ / %@", v12, v13];
    v15 = [(WATodayHeaderView *)self temperatureHighLowLabel];
    [v15 setText:v14];
  }

  else
  {
    v12 = [(WATodayHeaderView *)self temperatureHighLowLabel];
    [v12 setText:&stru_2882270E8];
  }

  v16 = [(WATodayHeaderView *)self conditionsLine1];
  v17 = [(WATodayHeaderView *)self conditionsLabel1];
  [v17 setText:v16];

  v18 = [(WATodayHeaderView *)self conditionsLine2];
  v19 = [(WATodayHeaderView *)self conditionsLabel2];
  [v19 setText:v18];

  v21 = [(WATodayHeaderView *)self conditionsImage];
  v20 = [(WATodayHeaderView *)self conditionsImageView];
  [v20 setImage:v21];
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

  v38 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  [(WATodayHeaderView *)self addSubview:v39];

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
        v46 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
        v47 = [v46 contentView];
        [v47 addSubview:v45];
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
  v5 = [(WATodayHeaderView *)self conditionsImageView];
  v6 = [(WATodayHeaderView *)self conditionsImageView];
  v7 = [v4 constraintWithItem:v5 attribute:8 relatedBy:0 toItem:v6 attribute:7 multiplier:1.0 constant:0.0];
  [v3 addObject:v7];

  v8 = [(WATodayHeaderView *)self conditionsImageView];
  LODWORD(v9) = 1132068864;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];

  v10 = [(WATodayHeaderView *)self conditionsImageView];
  LODWORD(v11) = 1132068864;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];

  v12 = [(WATodayHeaderView *)self locationLabel];
  LODWORD(v13) = 1132068864;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];

  v14 = [(WATodayHeaderView *)self conditionsLabel1];
  LODWORD(v15) = 1144750080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];

  v16 = [(WATodayHeaderView *)self conditionsLabel2];
  LODWORD(v17) = 1144750080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];

  v18 = [(WATodayHeaderView *)self temperatureLabel];
  LODWORD(v19) = 1144750080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v19];

  v20 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  LODWORD(v21) = 1144750080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];

  v22 = [(WATodayHeaderView *)self conditionsImageView];
  v23 = [v22 widthAnchor];
  v24 = [v23 constraintGreaterThanOrEqualToConstant:30.0];
  [v3 addObject:v24];

  v25 = [(WATodayHeaderView *)self conditionsImageView];
  v26 = [v25 heightAnchor];
  v27 = [v26 constraintGreaterThanOrEqualToConstant:30.0];
  [v3 addObject:v27];

  v28 = [(WATodayHeaderView *)self conditionsImageView];
  v29 = [v28 leadingAnchor];
  v30 = [(WATodayHeaderView *)self leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:2.0];
  [v3 addObject:v31];

  v32 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v33 = [v32 leadingAnchor];
  v34 = [(WATodayHeaderView *)self conditionsImageView];
  v35 = [v34 trailingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:5.0];
  [v3 addObject:v36];

  v37 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v38 = [v37 trailingAnchor];
  v39 = [(WATodayHeaderView *)self trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-16.0];
  [v3 addObject:v40];

  v41 = [(WATodayHeaderView *)self locationLabel];
  v42 = [v41 leadingAnchor];
  v43 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v44 = [v43 leadingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  [v3 addObject:v45];

  v46 = [(WATodayHeaderView *)self conditionsLabel1];
  v47 = [v46 leadingAnchor];
  v48 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v49 = [v48 leadingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  [v3 addObject:v50];

  v51 = [(WATodayHeaderView *)self conditionsLabel2];
  v52 = [v51 leadingAnchor];
  v53 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v54 = [v53 leadingAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  [v3 addObject:v55];

  v56 = [(WATodayHeaderView *)self locationLabel];
  v57 = [v56 widthAnchor];
  v58 = [v57 constraintGreaterThanOrEqualToConstant:140.0];
  [v3 addObject:v58];

  v59 = [(WATodayHeaderView *)self conditionsLabel1];
  v60 = [v59 widthAnchor];
  v61 = [v60 constraintGreaterThanOrEqualToConstant:140.0];
  [v3 addObject:v61];

  v62 = [(WATodayHeaderView *)self conditionsLabel2];
  v63 = [v62 widthAnchor];
  v64 = [v63 constraintGreaterThanOrEqualToConstant:140.0];
  [v3 addObject:v64];

  v65 = [(WATodayHeaderView *)self locationLabel];
  v66 = [v65 trailingAnchor];
  v67 = [(WATodayHeaderView *)self temperatureLabel];
  v68 = [v67 leadingAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:-7.0];
  [v3 addObject:v69];

  v70 = [(WATodayHeaderView *)self temperatureLabel];
  v71 = [v70 leadingAnchor];
  v72 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  v73 = [v72 leadingAnchor];
  v74 = [v71 constraintEqualToAnchor:v73];
  [v3 addObject:v74];

  v75 = [(WATodayHeaderView *)self temperatureLabel];
  v76 = [v75 trailingAnchor];
  v77 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v78 = [v77 trailingAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];
  [v3 addObject:v79];

  v80 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  v81 = [v80 trailingAnchor];
  v82 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v83 = [v82 trailingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83];
  [v3 addObject:v84];

  v85 = [(WATodayHeaderView *)self temperatureLabel];
  v86 = [v85 widthAnchor];
  v87 = [v86 constraintGreaterThanOrEqualToConstant:60.0];
  [v3 addObject:v87];

  v88 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  v89 = [v88 widthAnchor];
  v90 = [v89 constraintGreaterThanOrEqualToConstant:60.0];
  [v3 addObject:v90];

  v91 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v92 = [v91 topAnchor];
  v93 = [(WATodayHeaderView *)self topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];
  [v3 addObject:v94];

  v95 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v96 = [v95 bottomAnchor];
  v97 = [(WATodayHeaderView *)self bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];
  [v3 addObject:v98];

  v99 = MEMORY[0x277CCAAD0];
  v100 = [(WATodayHeaderView *)self conditionsImageView];
  v101 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v102 = [v99 constraintWithItem:v100 attribute:10 relatedBy:0 toItem:v101 attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v102];

  v103 = [(WATodayHeaderView *)self locationLabel];
  v104 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v105 = [(WATodayHeaderView *)self locationLabel];
  v106 = [v105 font];
  v107 = [v106 _scaledValueForValue:32.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(v109, v107, v103, v108, v104, 3, v3);

  v110 = [(WATodayHeaderView *)self conditionsLabel1];
  v111 = [(WATodayHeaderView *)self locationLabel];
  v112 = [(WATodayHeaderView *)self conditionsLabel1];
  v113 = [v112 font];
  v114 = [v113 _scaledValueForValue:20.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(v116, v114, v110, v115, v111, 11, v3);

  v117 = [(WATodayHeaderView *)self conditionsLabel2];
  v118 = [(WATodayHeaderView *)self conditionsLabel1];
  v119 = [(WATodayHeaderView *)self conditionsLabel2];
  v120 = [v119 font];
  v121 = [v120 _scaledValueForValue:16.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(v123, v121, v117, v122, v118, 11, v3);

  v124 = [(WATodayHeaderView *)self conditionsLabel2];
  v125 = [v124 lastBaselineAnchor];
  v126 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  v127 = [v126 lastBaselineAnchor];
  __38__WATodayHeaderView__setupConstraints__block_invoke(0.0, v127, v125, v127, v3);

  v128 = [(WATodayHeaderView *)self temperatureHighLowLabel];
  v129 = [v128 widthAnchor];
  v130 = [(WATodayHeaderView *)self temperatureLabel];
  v131 = [v130 widthAnchor];
  v132 = [v129 constraintEqualToAnchor:v131];
  [v3 addObject:v132];

  v133 = [(WATodayHeaderView *)self conditionsLabel1];
  v134 = [(WATodayHeaderView *)self temperatureLabel];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(0.0, v134, v133, v135, v134, 11, v3);

  v136 = [(WATodayHeaderView *)self conditionsLabel2];
  v137 = [(WATodayHeaderView *)self weatherInformationVisualEffectView];
  v138 = [(WATodayHeaderView *)self conditionsLabel1];
  v139 = [v138 font];
  v140 = [v139 _scaledValueForValue:20.0];
  __38__WATodayHeaderView__setupConstraints__block_invoke_2(-v141, v140, v136, v142, v137, 4, v3);

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v143 = [(WATodayHeaderView *)self locationLabel];
  v168[0] = v143;
  v144 = [(WATodayHeaderView *)self conditionsLabel1];
  v168[1] = v144;
  v145 = [(WATodayHeaderView *)self conditionsLabel2];
  v168[2] = v145;
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

        v151 = [*(*(&v164 + 1) + 8 * v150) trailingAnchor];
        v152 = [(WATodayHeaderView *)self temperatureLabel];
        v153 = [v152 leadingAnchor];
        v154 = [v151 constraintLessThanOrEqualToAnchor:v153 constant:-8.0];
        [v3 addObject:v154];

        ++v150;
      }

      while (v148 != v150);
      v148 = [v146 countByEnumeratingWithState:&v164 objects:v169 count:16];
    }

    while (v148);
  }

  v155 = [(WATodayHeaderView *)self conditionsImageView];
  v156 = [v155 widthAnchor];
  v157 = [(WATodayHeaderView *)self conditionsImageView];
  v158 = [v157 heightAnchor];
  v159 = [v156 constraintEqualToAnchor:v158];
  [v3 addObject:v159];

  v160 = [(WATodayHeaderView *)self conditionsImageView];
  v161 = [v160 widthAnchor];
  v162 = [v161 constraintEqualToConstant:100.0];
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