@interface WFWidgetConfigurationCardHeaderView
- (WFWidgetConfigurationCardHeaderView)initWithIcon:(id)a3 closeButton:(id)a4 title:(id)a5 subtitle:(id)a6;
- (WFWidgetConfigurationCardHeaderView)initWithRequest:(id)a3;
- (WFWidgetConfigurationCardHeaderViewDelegate)delegate;
- (void)close;
- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIconBorderColor;
- (void)updateIconBorderWidth;
@end

@implementation WFWidgetConfigurationCardHeaderView

- (WFWidgetConfigurationCardHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)close
{
  v3 = [(WFWidgetConfigurationCardHeaderView *)self delegate];
  [v3 widgetConfigurationCardHeaderViewDidRequestToClose:self];
}

- (void)updateIconBorderColor
{
  v3 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1)
  {
    SRGB = CGColorCreateSRGB(0.874509811, 0.874509811, 0.894117653, 1.0);
    v6 = MEMORY[0x1E69798C0];
  }

  else
  {
    SRGB = CGColorCreateSRGB(0.247058824, 0.247058824, 0.247058824, 1.0);
    v6 = MEMORY[0x1E6979C30];
  }

  v7 = [(WFWidgetConfigurationCardHeaderView *)self blendedBorderView];
  v8 = [v7 layer];
  [v8 setBorderColor:SRGB];

  CFRelease(SRGB);
  v9 = *v6;
  v11 = [(WFWidgetConfigurationCardHeaderView *)self blendedBorderView];
  v10 = [v11 layer];
  [v10 setCompositingFilter:v9];
}

- (void)updateIconBorderWidth
{
  v10 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  [v10 displayScale];
  v5 = v4;
  if (v4 <= 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v2 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
    [v2 displayScale];
    v7 = 1.0 / v6;
  }

  v8 = [(WFWidgetConfigurationCardHeaderView *)self blendedBorderView];
  v9 = [v8 layer];
  [v9 setBorderWidth:v7];

  if (v5 > 0.0)
  {
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WFWidgetConfigurationCardHeaderView;
  [(WFWidgetConfigurationCardHeaderView *)&v21 traitCollectionDidChange:v4];
  v5 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD40]];
    v9 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
    [v8 scaledValueForValue:v9 compatibleWithTraitCollection:1.0];
    v11 = v10;
    v12 = [(WFWidgetConfigurationCardHeaderView *)self labelsStackView];
    [v12 setSpacing:v11];
  }

  v13 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  v14 = [v13 userInterfaceStyle];
  v15 = [v4 userInterfaceStyle];

  if (v14 != v15)
  {
    [(WFWidgetConfigurationCardHeaderView *)self updateIconBorderColor];
  }

  v16 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  [v16 displayScale];
  v18 = v17;
  [v4 displayScale];
  v20 = v19;

  if (v18 != v20)
  {
    [(WFWidgetConfigurationCardHeaderView *)self updateIconBorderWidth];
  }
}

- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)a3
{
  self->_widgetDescriptionTallScriptCompensatedSpacing = a3;
  v4 = [(WFWidgetConfigurationCardHeaderView *)self bottomAreaCompensationSpacingConstraint];
  [v4 setConstant:a3];
}

- (WFWidgetConfigurationCardHeaderView)initWithIcon:(id)a3 closeButton:(id)a4 title:(id)a5 subtitle:(id)a6
{
  v167[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v164.receiver = self;
  v164.super_class = WFWidgetConfigurationCardHeaderView;
  v14 = [(WFWidgetConfigurationCardHeaderView *)&v164 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v14)
  {
    v162 = v10;
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148829696;
    [v15 setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1148829696;
    [v15 setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148829696;
    [v15 setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148829696;
    [v15 setContentCompressionResistancePriority:1 forAxis:v19];
    v163 = v13;
    v20 = objc_alloc(MEMORY[0x1E69DD250]);
    [v15 bounds];
    v21 = [v20 initWithFrame:?];
    blendedBorderView = v14->_blendedBorderView;
    v14->_blendedBorderView = v21;

    v23 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    [v23 setAutoresizingMask:18];

    v24 = [(WFWidgetConfigurationCardHeaderView *)v14 traitCollection];
    [v24 displayScale];
    v26 = 1.0 / v25;
    v27 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    v28 = [v27 layer];
    [v28 setBorderWidth:v26];

    v29 = *MEMORY[0x1E69796E8];
    v30 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    v31 = [v30 layer];
    [v31 setCornerCurve:v29];

    v32 = *MEMORY[0x1E69E0FE0] * 36.0;
    v33 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    v34 = [v33 layer];
    [v34 setCornerRadius:v32];

    [(WFWidgetConfigurationCardHeaderView *)v14 updateIconBorderColor];
    [(WFWidgetConfigurationCardHeaderView *)v14 updateIconBorderWidth];
    v35 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    [v15 addSubview:v35];

    v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v14->_titleLabel;
    v14->_titleLabel = v36;

    v38 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

    v39 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    v159 = v12;
    [v39 setText:v12];

    v40 = *MEMORY[0x1E69DDD00];
    v41 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD00]];
    v42 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v40 weight:*MEMORY[0x1E69DB980]];
    v43 = [v41 scaledFontForFont:v42];
    [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    v44 = v160 = v11;
    [v44 setFont:v43];

    v45 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [v45 setAdjustsFontForContentSizeCategory:1];

    v46 = [v12 length] == 0;
    v47 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [v47 setHidden:v46];

    v48 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v14->_subtitleLabel;
    v14->_subtitleLabel = v48;

    v50 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

    v51 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [v51 setText:v163];

    v52 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v53 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [v53 setFont:v52];

    v54 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [v54 setAdjustsFontForContentSizeCategory:1];

    v55 = [v163 length] == 0;
    v56 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [v56 setHidden:v55];

    v57 = *MEMORY[0x1E69DDC30];
    v58 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [v58 setMaximumContentSizeCategory:v57];

    v59 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [v59 setMaximumContentSizeCategory:v57];

    v60 = objc_alloc(MEMORY[0x1E69DCF90]);
    v61 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    v167[0] = v61;
    v62 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    v167[1] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:2];
    v64 = [v60 initWithArrangedSubviews:v63];
    labelsStackView = v14->_labelsStackView;
    v14->_labelsStackView = v64;

    v66 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [v66 setTranslatesAutoresizingMaskIntoConstraints:0];

    v67 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [v67 setAxis:1];

    v68 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [v68 setAlignment:1];

    v69 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [v69 setSpacing:1.0];

    v70 = objc_alloc(MEMORY[0x1E69DCF90]);
    v71 = v15;
    v166[0] = v15;
    v72 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    v166[1] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:2];
    v74 = [v70 initWithArrangedSubviews:v73];

    v75 = v74;
    [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v74 setSpacing:10.0];
    [v74 setAlignment:3];
    v158 = v74;
    [v74 setDistribution:0];
    objc_storeStrong(&v14->_closeButton, a4);
    v76 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v77) = 1148829696;
    [v76 setContentCompressionResistancePriority:0 forAxis:v77];

    v78 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v79) = 1148829696;
    [v78 setContentCompressionResistancePriority:1 forAxis:v79];

    v80 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v81) = 1148829696;
    [v80 setContentHuggingPriority:0 forAxis:v81];

    v82 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v83) = 1148829696;
    [v82 setContentHuggingPriority:1 forAxis:v83];

    v84 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    [v84 addTarget:v14 action:sel_close forControlEvents:0x2000];

    v85 = MEMORY[0x1E695DEC8];
    v86 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    v157 = [v85 arrayWithObjects:{v75, v86, 0}];

    v87 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v157];
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v87 setSpacing:8.0];
    [v87 setAlignment:1];
    [v87 setDistribution:0];
    [v15 setHidden:v162 == 0];
    [(WFWidgetConfigurationCardHeaderView *)v14 addSubview:v87];
    v88 = objc_opt_new();
    v161 = objc_opt_new();
    [(WFWidgetConfigurationCardHeaderView *)v14 addLayoutGuide:v88];
    [(WFWidgetConfigurationCardHeaderView *)v14 addLayoutGuide:v161];
    v89 = [v161 bottomAnchor];
    v90 = [(WFWidgetConfigurationCardHeaderView *)v14 bottomAnchor];
    [(WFWidgetConfigurationCardHeaderView *)v14 widgetDescriptionTallScriptCompensatedSpacing];
    v91 = [v89 constraintEqualToAnchor:v90 constant:?];
    bottomAreaCompensationSpacingConstraint = v14->_bottomAreaCompensationSpacingConstraint;
    v14->_bottomAreaCompensationSpacingConstraint = v91;

    v93 = [v87 topAnchor];
    v94 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v95 = [v94 topAnchor];
    v96 = [v93 constraintEqualToAnchor:v95 constant:-1.0];

    v97 = [v87 leadingAnchor];
    v98 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v99 = [v98 leadingAnchor];
    v100 = [v97 constraintEqualToAnchor:v99];

    v150 = v96;
    LODWORD(v101) = 1144750080;
    [v96 setPriority:v101];
    v149 = v100;
    LODWORD(v102) = 1144750080;
    [v100 setPriority:v102];
    v133 = MEMORY[0x1E696ACD8];
    v156 = [v71 widthAnchor];
    v154 = [v156 constraintEqualToConstant:36.0];
    v165[0] = v154;
    v153 = [v71 heightAnchor];
    v152 = [v71 widthAnchor];
    v151 = [v153 constraintEqualToAnchor:v152];
    v165[1] = v151;
    v155 = v71;
    v146 = [v71 topAnchor];
    v147 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v145 = [v147 topAnchor];
    v144 = [v146 constraintEqualToAnchor:v145];
    v165[2] = v144;
    v142 = [v71 leadingAnchor];
    v143 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v141 = [v143 leadingAnchor];
    v140 = [v142 constraintEqualToAnchor:v141];
    v165[3] = v140;
    v165[4] = v96;
    v165[5] = v100;
    v148 = v87;
    v139 = [v87 bottomAnchor];
    v138 = [v161 topAnchor];
    v137 = [v139 constraintEqualToAnchor:v138];
    v165[6] = v137;
    v135 = [v87 trailingAnchor];
    v136 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v134 = [v136 trailingAnchor];
    v132 = [v135 constraintEqualToAnchor:v134];
    v165[7] = v132;
    v131 = [v88 topAnchor];
    v130 = [(WFWidgetConfigurationCardHeaderView *)v14 topAnchor];
    v129 = [v131 constraintEqualToAnchor:v130];
    v165[8] = v129;
    v122 = v88;
    v127 = [v88 bottomAnchor];
    v128 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v126 = [v128 topAnchor];
    v125 = [v127 constraintEqualToAnchor:v126];
    v165[9] = v125;
    v124 = [v161 heightAnchor];
    v123 = [v124 constraintEqualToConstant:16.0];
    v165[10] = v123;
    v165[11] = v14->_bottomAreaCompensationSpacingConstraint;
    v120 = [v88 leadingAnchor];
    v121 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v119 = [v121 leadingAnchor];
    v118 = [v120 constraintEqualToAnchor:v119];
    v165[12] = v118;
    v116 = [v88 trailingAnchor];
    v117 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v115 = [v117 trailingAnchor];
    v114 = [v116 constraintEqualToAnchor:v115];
    v165[13] = v114;
    v103 = [v161 leadingAnchor];
    v104 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v105 = [v104 leadingAnchor];
    v106 = [v103 constraintEqualToAnchor:v105];
    v165[14] = v106;
    v107 = [v161 trailingAnchor];
    v108 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    v109 = [v108 trailingAnchor];
    v110 = [v107 constraintEqualToAnchor:v109];
    v165[15] = v110;
    v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:16];
    [v133 activateConstraints:v111];

    v12 = v159;
    v13 = v163;

    v11 = v160;
    v10 = v162;

    [(WFWidgetConfigurationCardHeaderView *)v14 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v112 = v14;
  }

  return v14;
}

- (WFWidgetConfigurationCardHeaderView)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 intent];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:0];
    v7 = [v5 _intents_bundleIdForLaunching];
    v8 = [v5 appIntentIdentifier];
    v9 = [v6 actionsForBundleIdentifier:v7 andActionIdentifier:v8 error:0];
    v10 = [v9 firstObject];

    v11 = [v10 attributionBundleIdentifier];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v5 _intents_bundleIdForDisplay];
    }

    v14 = v13;

    v15 = v5;
  }

  else
  {

    v14 = [v5 _intents_bundleIdForDisplay];
    v15 = 0;
  }

  v16 = [v4 remoteDeviceIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = [v4 remoteAppLocalizedName];
    if (v18)
    {
      v19 = v18;
      v20 = [v4 remoteAppIcon];

      if (v20)
      {
        v21 = [v4 remoteAppLocalizedName];
        v22 = [v4 remoteAppIcon];
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v23 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v14 allowPlaceholder:1 error:0];
  v21 = [v23 localizedName];
  v24 = MEMORY[0x1E69E0B58];
  v25 = [v4 appBundleIdentifier];
  v22 = [v24 applicationIconImageForBundleIdentifier:v25 format:2];

LABEL_14:
  if (([v4 resolvedWidgetConfigurationStyle] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v26 = 0;
  }

  else
  {
    v27 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:24.0];
    v28 = MEMORY[0x1E69DCAD8];
    v29 = [MEMORY[0x1E69DC888] lightGrayColor];
    [v28 configurationWithHierarchicalColor:v29];
    v49 = v14;
    v30 = self;
    v32 = v31 = v15;
    v33 = [v27 configurationByApplyingConfiguration:v32];

    v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v33];
    v35 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v35 setImage:v34];
    [v35 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    v26 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v35 primaryAction:0];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = v31;
    self = v30;
    v14 = v49;
  }

  v36 = [v4 widgetDisplayName];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v50 = v22;
    v39 = v21;
    v40 = v14;
    v41 = self;
    v42 = v15;
    v43 = [v5 _title];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = [v4 fallbackDisplayName];
    }

    v38 = v45;

    v15 = v42;
    self = v41;
    v14 = v40;
    v21 = v39;
    v22 = v50;
  }

  v46 = [v22 platformImage];
  v47 = [(WFWidgetConfigurationCardHeaderView *)self initWithIcon:v46 closeButton:v26 title:v38 subtitle:v21];

  return v47;
}

@end