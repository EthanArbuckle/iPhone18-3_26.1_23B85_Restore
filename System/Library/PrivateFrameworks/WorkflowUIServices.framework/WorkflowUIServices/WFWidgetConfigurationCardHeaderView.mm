@interface WFWidgetConfigurationCardHeaderView
- (WFWidgetConfigurationCardHeaderView)initWithIcon:(id)icon closeButton:(id)button title:(id)title subtitle:(id)subtitle;
- (WFWidgetConfigurationCardHeaderView)initWithRequest:(id)request;
- (WFWidgetConfigurationCardHeaderViewDelegate)delegate;
- (void)close;
- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)spacing;
- (void)traitCollectionDidChange:(id)change;
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
  delegate = [(WFWidgetConfigurationCardHeaderView *)self delegate];
  [delegate widgetConfigurationCardHeaderViewDidRequestToClose:self];
}

- (void)updateIconBorderColor
{
  traitCollection = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    SRGB = CGColorCreateSRGB(0.874509811, 0.874509811, 0.894117653, 1.0);
    v6 = MEMORY[0x1E69798C0];
  }

  else
  {
    SRGB = CGColorCreateSRGB(0.247058824, 0.247058824, 0.247058824, 1.0);
    v6 = MEMORY[0x1E6979C30];
  }

  blendedBorderView = [(WFWidgetConfigurationCardHeaderView *)self blendedBorderView];
  layer = [blendedBorderView layer];
  [layer setBorderColor:SRGB];

  CFRelease(SRGB);
  v9 = *v6;
  blendedBorderView2 = [(WFWidgetConfigurationCardHeaderView *)self blendedBorderView];
  layer2 = [blendedBorderView2 layer];
  [layer2 setCompositingFilter:v9];
}

- (void)updateIconBorderWidth
{
  traitCollection = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;
  if (v4 <= 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    traitCollection2 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
    [traitCollection2 displayScale];
    v7 = 1.0 / v6;
  }

  blendedBorderView = [(WFWidgetConfigurationCardHeaderView *)self blendedBorderView];
  layer = [blendedBorderView layer];
  [layer setBorderWidth:v7];

  if (v5 > 0.0)
  {
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = WFWidgetConfigurationCardHeaderView;
  [(WFWidgetConfigurationCardHeaderView *)&v21 traitCollectionDidChange:changeCopy];
  traitCollection = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    v8 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD40]];
    traitCollection2 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
    [v8 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:1.0];
    v11 = v10;
    labelsStackView = [(WFWidgetConfigurationCardHeaderView *)self labelsStackView];
    [labelsStackView setSpacing:v11];
  }

  traitCollection3 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection3 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(WFWidgetConfigurationCardHeaderView *)self updateIconBorderColor];
  }

  traitCollection4 = [(WFWidgetConfigurationCardHeaderView *)self traitCollection];
  [traitCollection4 displayScale];
  v18 = v17;
  [changeCopy displayScale];
  v20 = v19;

  if (v18 != v20)
  {
    [(WFWidgetConfigurationCardHeaderView *)self updateIconBorderWidth];
  }
}

- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)spacing
{
  self->_widgetDescriptionTallScriptCompensatedSpacing = spacing;
  bottomAreaCompensationSpacingConstraint = [(WFWidgetConfigurationCardHeaderView *)self bottomAreaCompensationSpacingConstraint];
  [bottomAreaCompensationSpacingConstraint setConstant:spacing];
}

- (WFWidgetConfigurationCardHeaderView)initWithIcon:(id)icon closeButton:(id)button title:(id)title subtitle:(id)subtitle
{
  v167[2] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  buttonCopy = button;
  titleCopy = title;
  subtitleCopy = subtitle;
  v164.receiver = self;
  v164.super_class = WFWidgetConfigurationCardHeaderView;
  v14 = [(WFWidgetConfigurationCardHeaderView *)&v164 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v14)
  {
    v162 = iconCopy;
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:iconCopy];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148829696;
    [v15 setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1148829696;
    [v15 setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148829696;
    [v15 setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148829696;
    [v15 setContentCompressionResistancePriority:1 forAxis:v19];
    v163 = subtitleCopy;
    v20 = objc_alloc(MEMORY[0x1E69DD250]);
    [v15 bounds];
    v21 = [v20 initWithFrame:?];
    blendedBorderView = v14->_blendedBorderView;
    v14->_blendedBorderView = v21;

    blendedBorderView = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    [blendedBorderView setAutoresizingMask:18];

    traitCollection = [(WFWidgetConfigurationCardHeaderView *)v14 traitCollection];
    [traitCollection displayScale];
    v26 = 1.0 / v25;
    blendedBorderView2 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    layer = [blendedBorderView2 layer];
    [layer setBorderWidth:v26];

    v29 = *MEMORY[0x1E69796E8];
    blendedBorderView3 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    layer2 = [blendedBorderView3 layer];
    [layer2 setCornerCurve:v29];

    v32 = *MEMORY[0x1E69E0FE0] * 36.0;
    blendedBorderView4 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    layer3 = [blendedBorderView4 layer];
    [layer3 setCornerRadius:v32];

    [(WFWidgetConfigurationCardHeaderView *)v14 updateIconBorderColor];
    [(WFWidgetConfigurationCardHeaderView *)v14 updateIconBorderWidth];
    blendedBorderView5 = [(WFWidgetConfigurationCardHeaderView *)v14 blendedBorderView];
    [v15 addSubview:blendedBorderView5];

    v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v14->_titleLabel;
    v14->_titleLabel = v36;

    titleLabel = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    v159 = titleCopy;
    [titleLabel2 setText:titleCopy];

    v40 = *MEMORY[0x1E69DDD00];
    v41 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD00]];
    v42 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v40 weight:*MEMORY[0x1E69DB980]];
    v43 = [v41 scaledFontForFont:v42];
    [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    v44 = v160 = buttonCopy;
    [v44 setFont:v43];

    titleLabel3 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [titleLabel3 setAdjustsFontForContentSizeCategory:1];

    v46 = [titleCopy length] == 0;
    titleLabel4 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [titleLabel4 setHidden:v46];

    v48 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v14->_subtitleLabel;
    v14->_subtitleLabel = v48;

    subtitleLabel = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleLabel2 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [subtitleLabel2 setText:v163];

    v52 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    subtitleLabel3 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [subtitleLabel3 setFont:v52];

    subtitleLabel4 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [subtitleLabel4 setAdjustsFontForContentSizeCategory:1];

    v55 = [v163 length] == 0;
    subtitleLabel5 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [subtitleLabel5 setHidden:v55];

    v57 = *MEMORY[0x1E69DDC30];
    titleLabel5 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    [titleLabel5 setMaximumContentSizeCategory:v57];

    subtitleLabel6 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    [subtitleLabel6 setMaximumContentSizeCategory:v57];

    v60 = objc_alloc(MEMORY[0x1E69DCF90]);
    titleLabel6 = [(WFWidgetConfigurationCardHeaderView *)v14 titleLabel];
    v167[0] = titleLabel6;
    subtitleLabel7 = [(WFWidgetConfigurationCardHeaderView *)v14 subtitleLabel];
    v167[1] = subtitleLabel7;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:2];
    v64 = [v60 initWithArrangedSubviews:v63];
    labelsStackView = v14->_labelsStackView;
    v14->_labelsStackView = v64;

    labelsStackView = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];

    labelsStackView2 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [labelsStackView2 setAxis:1];

    labelsStackView3 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [labelsStackView3 setAlignment:1];

    labelsStackView4 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    [labelsStackView4 setSpacing:1.0];

    v70 = objc_alloc(MEMORY[0x1E69DCF90]);
    v71 = v15;
    v166[0] = v15;
    labelsStackView5 = [(WFWidgetConfigurationCardHeaderView *)v14 labelsStackView];
    v166[1] = labelsStackView5;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:2];
    v74 = [v70 initWithArrangedSubviews:v73];

    v75 = v74;
    [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v74 setSpacing:10.0];
    [v74 setAlignment:3];
    v158 = v74;
    [v74 setDistribution:0];
    objc_storeStrong(&v14->_closeButton, button);
    closeButton = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v77) = 1148829696;
    [closeButton setContentCompressionResistancePriority:0 forAxis:v77];

    closeButton2 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v79) = 1148829696;
    [closeButton2 setContentCompressionResistancePriority:1 forAxis:v79];

    closeButton3 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v81) = 1148829696;
    [closeButton3 setContentHuggingPriority:0 forAxis:v81];

    closeButton4 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    LODWORD(v83) = 1148829696;
    [closeButton4 setContentHuggingPriority:1 forAxis:v83];

    closeButton5 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    [closeButton5 addTarget:v14 action:sel_close forControlEvents:0x2000];

    v85 = MEMORY[0x1E695DEC8];
    closeButton6 = [(WFWidgetConfigurationCardHeaderView *)v14 closeButton];
    v157 = [v85 arrayWithObjects:{v75, closeButton6, 0}];

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
    bottomAnchor = [v161 bottomAnchor];
    bottomAnchor2 = [(WFWidgetConfigurationCardHeaderView *)v14 bottomAnchor];
    [(WFWidgetConfigurationCardHeaderView *)v14 widgetDescriptionTallScriptCompensatedSpacing];
    v91 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
    bottomAreaCompensationSpacingConstraint = v14->_bottomAreaCompensationSpacingConstraint;
    v14->_bottomAreaCompensationSpacingConstraint = v91;

    topAnchor = [v87 topAnchor];
    layoutMarginsGuide = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v96 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-1.0];

    leadingAnchor = [v87 leadingAnchor];
    layoutMarginsGuide2 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    v150 = v96;
    LODWORD(v101) = 1144750080;
    [v96 setPriority:v101];
    v149 = v100;
    LODWORD(v102) = 1144750080;
    [v100 setPriority:v102];
    v133 = MEMORY[0x1E696ACD8];
    widthAnchor = [v71 widthAnchor];
    v154 = [widthAnchor constraintEqualToConstant:36.0];
    v165[0] = v154;
    heightAnchor = [v71 heightAnchor];
    widthAnchor2 = [v71 widthAnchor];
    v151 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v165[1] = v151;
    v155 = v71;
    topAnchor3 = [v71 topAnchor];
    layoutMarginsGuide3 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide3 topAnchor];
    v144 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v165[2] = v144;
    leadingAnchor3 = [v71 leadingAnchor];
    layoutMarginsGuide4 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    v140 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v165[3] = v140;
    v165[4] = v96;
    v165[5] = v100;
    v148 = v87;
    bottomAnchor3 = [v87 bottomAnchor];
    topAnchor5 = [v161 topAnchor];
    v137 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
    v165[6] = v137;
    trailingAnchor = [v87 trailingAnchor];
    layoutMarginsGuide5 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide5 trailingAnchor];
    v132 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v165[7] = v132;
    topAnchor6 = [v88 topAnchor];
    topAnchor7 = [(WFWidgetConfigurationCardHeaderView *)v14 topAnchor];
    v129 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v165[8] = v129;
    v122 = v88;
    bottomAnchor4 = [v88 bottomAnchor];
    layoutMarginsGuide6 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    topAnchor8 = [layoutMarginsGuide6 topAnchor];
    v125 = [bottomAnchor4 constraintEqualToAnchor:topAnchor8];
    v165[9] = v125;
    heightAnchor2 = [v161 heightAnchor];
    v123 = [heightAnchor2 constraintEqualToConstant:16.0];
    v165[10] = v123;
    v165[11] = v14->_bottomAreaCompensationSpacingConstraint;
    leadingAnchor5 = [v88 leadingAnchor];
    layoutMarginsGuide7 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide7 leadingAnchor];
    v118 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v165[12] = v118;
    trailingAnchor3 = [v88 trailingAnchor];
    layoutMarginsGuide8 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide8 trailingAnchor];
    v114 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v165[13] = v114;
    leadingAnchor7 = [v161 leadingAnchor];
    layoutMarginsGuide9 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    leadingAnchor8 = [layoutMarginsGuide9 leadingAnchor];
    v106 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v165[14] = v106;
    trailingAnchor5 = [v161 trailingAnchor];
    layoutMarginsGuide10 = [(WFWidgetConfigurationCardHeaderView *)v14 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide10 trailingAnchor];
    v110 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v165[15] = v110;
    v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:16];
    [v133 activateConstraints:v111];

    titleCopy = v159;
    subtitleCopy = v163;

    buttonCopy = v160;
    iconCopy = v162;

    [(WFWidgetConfigurationCardHeaderView *)v14 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v112 = v14;
  }

  return v14;
}

- (WFWidgetConfigurationCardHeaderView)initWithRequest:(id)request
{
  requestCopy = request;
  intent = [requestCopy intent];
  if (intent && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:0];
    _intents_bundleIdForLaunching = [intent _intents_bundleIdForLaunching];
    appIntentIdentifier = [intent appIntentIdentifier];
    v9 = [v6 actionsForBundleIdentifier:_intents_bundleIdForLaunching andActionIdentifier:appIntentIdentifier error:0];
    firstObject = [v9 firstObject];

    attributionBundleIdentifier = [firstObject attributionBundleIdentifier];
    v12 = attributionBundleIdentifier;
    if (attributionBundleIdentifier)
    {
      _intents_bundleIdForDisplay = attributionBundleIdentifier;
    }

    else
    {
      _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];
    }

    _intents_bundleIdForDisplay2 = _intents_bundleIdForDisplay;

    v15 = intent;
  }

  else
  {

    _intents_bundleIdForDisplay2 = [intent _intents_bundleIdForDisplay];
    v15 = 0;
  }

  remoteDeviceIdentifier = [requestCopy remoteDeviceIdentifier];
  if (remoteDeviceIdentifier)
  {
    v17 = remoteDeviceIdentifier;
    remoteAppLocalizedName = [requestCopy remoteAppLocalizedName];
    if (remoteAppLocalizedName)
    {
      v19 = remoteAppLocalizedName;
      remoteAppIcon = [requestCopy remoteAppIcon];

      if (remoteAppIcon)
      {
        remoteAppLocalizedName2 = [requestCopy remoteAppLocalizedName];
        remoteAppIcon2 = [requestCopy remoteAppIcon];
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v23 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:_intents_bundleIdForDisplay2 allowPlaceholder:1 error:0];
  remoteAppLocalizedName2 = [v23 localizedName];
  v24 = MEMORY[0x1E69E0B58];
  appBundleIdentifier = [requestCopy appBundleIdentifier];
  remoteAppIcon2 = [v24 applicationIconImageForBundleIdentifier:appBundleIdentifier format:2];

LABEL_14:
  if (([requestCopy resolvedWidgetConfigurationStyle] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v26 = 0;
  }

  else
  {
    v27 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:24.0];
    v28 = MEMORY[0x1E69DCAD8];
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [v28 configurationWithHierarchicalColor:lightGrayColor];
    v49 = _intents_bundleIdForDisplay2;
    selfCopy = self;
    v32 = v31 = v15;
    v33 = [v27 configurationByApplyingConfiguration:v32];

    v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v33];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setImage:v34];
    [plainButtonConfiguration setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    v26 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = v31;
    self = selfCopy;
    _intents_bundleIdForDisplay2 = v49;
  }

  widgetDisplayName = [requestCopy widgetDisplayName];
  v37 = widgetDisplayName;
  if (widgetDisplayName)
  {
    v38 = widgetDisplayName;
  }

  else
  {
    v50 = remoteAppIcon2;
    v39 = remoteAppLocalizedName2;
    v40 = _intents_bundleIdForDisplay2;
    selfCopy2 = self;
    v42 = v15;
    _title = [intent _title];
    v44 = _title;
    if (_title)
    {
      fallbackDisplayName = _title;
    }

    else
    {
      fallbackDisplayName = [requestCopy fallbackDisplayName];
    }

    v38 = fallbackDisplayName;

    v15 = v42;
    self = selfCopy2;
    _intents_bundleIdForDisplay2 = v40;
    remoteAppLocalizedName2 = v39;
    remoteAppIcon2 = v50;
  }

  platformImage = [remoteAppIcon2 platformImage];
  v47 = [(WFWidgetConfigurationCardHeaderView *)self initWithIcon:platformImage closeButton:v26 title:v38 subtitle:remoteAppLocalizedName2];

  return v47;
}

@end