@interface SBPowerAlertElement
- (BOOL)dodgeSensorAreaOnIntrinsicContentSize;
- (BOOL)handleElementViewEvent:(int64_t)event;
- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (SBPowerAlertElement)initWithIdentifier:(id)identifier style:(unint64_t)style batteryPercentage:(double)percentage lowPowerModeEnabled:(BOOL)enabled action:(id)action;
- (double)_batteryFillWidthForBatteryPercentage:(double)percentage;
- (double)_primaryTextFontSize;
- (double)_trailingViewWidth;
- (double)customEdgeSpacing;
- (double)horizontalSpacingBetweenLeadingAndCenter;
- (double)horizontalSpacingBetweenTrailingAndCenter;
- (double)preferredAlertingDuration:(double)result;
- (double)verticalItemSpacing;
- (double)verticalSpacingBetweenPrimaryAndSecondary;
- (id)_secondaryTextColorForStyle;
- (id)_secondaryTextForStyle;
- (void)_extendDismissalTimer;
- (void)_updateBatteryContent;
- (void)_updateBatteryIconFillAreaForPackageView:(id)view withBatteryPercentage:(double)percentage;
- (void)_updateLowPowerMode;
- (void)_updateMinimalViewToState:(id)state withDelay:(BOOL)delay;
- (void)dealloc;
- (void)setBatteryPercentage:(double)percentage;
@end

@implementation SBPowerAlertElement

- (SBPowerAlertElement)initWithIdentifier:(id)identifier style:(unint64_t)style batteryPercentage:(double)percentage lowPowerModeEnabled:(BOOL)enabled action:(id)action
{
  v112[8] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  actionCopy = action;
  v12 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v100 = identifierCopy;
  if (style)
  {
    obj = 0;
    if (style == 1)
    {
      v98 = 1;
      v13 = 76.0;
      v14 = 108.0;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle localizedStringForKey:@"CHARGING_COMPACT" value:&stru_283094718 table:@"SpringBoard"];

    [v15 setText:v17];
    text = [v15 text];
    [v15 setAccessibilityLabel:text];

    v19 = [MEMORY[0x277D74300] sbui_systemAperturePreferredFontForTextStyle:4];
    [v15 setFont:v19];

    obj = v15;
    v20 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v15];
    [v12 setLeadingContentViewProvider:v20];
  }

  [(SBPowerAlertElement *)self _trailingViewWidth];
  v14 = v21;
  v98 = 0;
  v13 = 37.333;
LABEL_6:
  v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v14, v13}];
  v23 = objc_alloc(MEMORY[0x277CF0D48]);
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v107 = v12;
  selfCopy = self;
  styleCopy = style;
  v101 = v22;
  if (style)
  {
    v25 = [v23 initWithPackageName:@"lpm-asset-v1" inBundle:v24];

    [v25 setState:@"lowbattery"];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v110, -1.0, 1.0);
      [v25 setTransform:&v110];
    }

    [v22 addSubview:v25];
    v26 = MEMORY[0x277CCAAD0];
    widthAnchor = [v25 widthAnchor];
    v28 = [widthAnchor constraintEqualToConstant:87.0];
    v111[0] = v28;
    heightAnchor = [v25 heightAnchor];
    v102 = [heightAnchor constraintEqualToConstant:57.0];
    v111[1] = v102;
    leadingAnchor = [v25 leadingAnchor];
    leadingAnchor2 = [v22 leadingAnchor];
    v96 = leadingAnchor;
    v93 = [leadingAnchor constraintEqualToAnchor:?];
    v111[2] = v93;
    trailingAnchor = [v25 trailingAnchor];
    trailingAnchor2 = [v22 trailingAnchor];
    centerYAnchor4 = trailingAnchor;
    v90 = [trailingAnchor constraintEqualToAnchor:?];
    v111[3] = v90;
    topAnchor = [v25 topAnchor];
    topAnchor2 = [v22 topAnchor];
    trailingAnchor5 = topAnchor;
    widthAnchor2 = [topAnchor constraintEqualToAnchor:?];
    v111[4] = widthAnchor2;
    bottomAnchor = [v25 bottomAnchor];
    bottomAnchor2 = [v22 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v111[5] = v36;
    widthAnchor3 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:6];
    [v26 activateConstraints:widthAnchor3];
    v104 = 0;
    v105 = 0;
    v38 = selfCopy;
  }

  else
  {
    v39 = [v23 initWithPackageName:@"Battery-D73" inBundle:v24];

    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      CGAffineTransformMakeScale(&v110, -1.0, 1.0);
      [v39 setTransform:&v110];
    }

    [v22 addSubview:v39];
    v40 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 addSubview:v40];
    v85 = MEMORY[0x277CCAAD0];
    centerYAnchor = [v40 centerYAnchor];
    centerYAnchor2 = [v22 centerYAnchor];
    v82 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v112[0] = v82;
    v104 = v40;
    trailingAnchor3 = [v40 trailingAnchor];
    [v39 leadingAnchor];
    v96 = v102 = trailingAnchor3;
    leadingAnchor2 = [trailingAnchor3 constraintEqualToAnchor:-2.0 constant:?];
    v112[1] = leadingAnchor2;
    centerYAnchor3 = [v39 centerYAnchor];
    centerYAnchor4 = [v22 centerYAnchor];
    v93 = centerYAnchor3;
    trailingAnchor2 = [centerYAnchor3 constraintEqualToAnchor:?];
    v112[2] = trailingAnchor2;
    trailingAnchor4 = [v39 trailingAnchor];
    trailingAnchor5 = [v22 trailingAnchor];
    v90 = trailingAnchor4;
    topAnchor2 = [trailingAnchor4 constraintEqualToAnchor:?];
    v112[3] = topAnchor2;
    widthAnchor2 = [v39 widthAnchor];
    bottomAnchor = [widthAnchor2 constraintEqualToConstant:42.0];
    v112[4] = bottomAnchor;
    v105 = v39;
    bottomAnchor2 = [v39 heightAnchor];
    [bottomAnchor2 constraintEqualToConstant:21.0];
    v36 = v44 = v22;
    v112[5] = v36;
    widthAnchor3 = [v44 widthAnchor];
    v38 = selfCopy;
    [(SBPowerAlertElement *)selfCopy _trailingViewWidth];
    v45 = [widthAnchor3 constraintEqualToConstant:?];
    v112[6] = v45;
    heightAnchor2 = [v44 heightAnchor];
    v47 = [heightAnchor2 constraintEqualToConstant:37.333];
    v112[7] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:8];
    [v85 activateConstraints:v48];

    heightAnchor = v82;
    widthAnchor = centerYAnchor;

    v28 = centerYAnchor2;
    v25 = 0;
  }

  v49 = v101;
  v50 = v107;
  v97 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v101];
  [v107 setTrailingContentViewProvider:?];
  v51 = objc_alloc(MEMORY[0x277CF0D48]);
  v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v53 = [v51 initWithPackageName:@"Battery-Minimal-D73" inBundle:v52];

  v103 = v53;
  v95 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v53];
  [v107 setMinimalContentViewProvider:?];
  if (v98)
  {
    v54 = MEMORY[0x277CCACA8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v56 = [mainBundle2 localizedStringForKey:@"BATTERY_PERCENTAGE" value:&stru_283094718 table:@"SpringBoard"];
    v57 = SBApp;
    v58 = [MEMORY[0x277CCABB0] numberWithDouble:percentage];
    v59 = [v57 formattedPercentStringForNumber:v58];
    v60 = [v54 stringWithFormat:v56, v59];

    v61 = objc_alloc(MEMORY[0x277D67E58]);
    v62 = MEMORY[0x277D74300];
    [(SBPowerAlertElement *)selfCopy _primaryTextFontSize];
    v63 = *MEMORY[0x277D74410];
    v64 = [v62 systemFontOfSize:? weight:?];
    v65 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    v66 = [v61 initWithText:v60 style:0 font:v64 textColor:v65];

    [v66 setNumberOfLines:0];
    [v107 setPrimaryContentViewProvider:v66];
    v67 = objc_alloc(MEMORY[0x277D67E58]);
    _secondaryTextForStyle = [(SBPowerAlertElement *)selfCopy _secondaryTextForStyle];
    v69 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:v63];
    v70 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.42];
    v71 = [v67 initWithText:_secondaryTextForStyle style:3 font:v69 textColor:v70];

    v50 = v107;
    v72 = selfCopy;

    _secondaryTextColorForStyle = [(SBPowerAlertElement *)selfCopy _secondaryTextColorForStyle];
    [v71 setContentColor:_secondaryTextColorForStyle];

    v49 = v101;
    [v71 setNumberOfLines:0];
    [v107 setSecondaryContentViewProvider:v71];
  }

  else
  {
    v72 = v38;
    v71 = 0;
  }

  v109.receiver = v72;
  v109.super_class = SBPowerAlertElement;
  v74 = [(SBSystemApertureProvidedContentElement *)&v109 initWithIdentifier:v100 contentProvider:v50];
  v75 = v74;
  if (v74)
  {
    v76 = v49;
    v74->_style = styleCopy;
    v74->_batteryPercentage = percentage;
    v74->_lowPowerModeEnabled = enabled;
    objc_storeStrong(&v74->_leadingLabel, obj);
    objc_storeStrong(&v75->_trailingBatteryLabel, v104);
    objc_storeStrong(&v75->_trailingBatteryIconPackageView, v105);
    objc_storeStrong(&v75->_trailingLowBatteryStyleIconPackageView, v25);
    objc_storeStrong(&v75->_minimalBatteryIconPackageView, v103);
    objc_storeStrong(&v75->_secondaryContent, v71);
    [(SBPowerAlertElement *)v75 setAction:actionCopy];
    if (v75->_style == 1)
    {
      v77 = 3;
      [(SBSystemApertureProvidedContentElement *)v75 setMinimumSupportedLayoutMode:3];
      v78 = 3;
    }

    else
    {
      [(SBSystemApertureProvidedContentElement *)v75 setMinimumSupportedLayoutMode:-1];
      actionContentViewProvider = [v50 actionContentViewProvider];
      v78 = 2;
      if (actionContentViewProvider)
      {
        v77 = 3;
      }

      else
      {
        v77 = 2;
      }
    }

    [(SBSystemApertureProvidedContentElement *)v75 setMaximumSupportedLayoutMode:v77];
    [(SBSystemApertureProvidedContentElement *)v75 setPreferredLayoutMode:v78];
    [(SBPowerAlertElement *)v75 _updateBatteryContent];
    v49 = v76;
    if (v75->_style == 1)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v75 selector:sel__updateLowPowerMode name:*MEMORY[0x277CCA5E8] object:0];
    }
  }

  return v75;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;

  v5.receiver = self;
  v5.super_class = SBPowerAlertElement;
  [(SBPowerAlertElement *)&v5 dealloc];
}

- (void)_updateLowPowerMode
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  self->_lowPowerModeEnabled = isLowPowerModeEnabled;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SBPowerAlertElement__updateLowPowerMode__block_invoke;
  v5[3] = &unk_2783A8C68;
  objc_copyWeak(&v6, &location);
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__SBPowerAlertElement__updateLowPowerMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBatteryContent];
}

- (BOOL)handleElementViewEvent:(int64_t)event
{
  action = self->_action;
  if (!action)
  {
    return 0;
  }

  result = 0;
  if (event <= 3 && self->_style == 1)
  {
    action[2](action, a2);
    alertHost = [(SBAlertProvidedContentElement *)self alertHost];
    alertAssertion = [alertHost alertAssertion];
    [alertAssertion setAutomaticallyInvalidatable:0];

    [(SBPowerAlertElement *)self _extendDismissalTimer];
    return 1;
  }

  return result;
}

- (void)_extendDismissalTimer
{
  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;

  if (!self->_dismissalTimer)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277CBEBB8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SBPowerAlertElement__extendDismissalTimer__block_invoke;
    v7[3] = &unk_2783AA438;
    objc_copyWeak(&v8, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:3.0];
    v6 = self->_dismissalTimer;
    self->_dismissalTimer = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __44__SBPowerAlertElement__extendDismissalTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained alertHost];
  v5 = [v4 alertAssertion];
  [v5 invalidateWithReason:@"Low battery alert user interaction"];

  [v3 invalidate];
  [WeakRetained setDismissalTimer:0];
}

- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode
{
  concentricCopy = concentric;
  leadingLabel = [(SBPowerAlertElement *)self leadingLabel];

  return leadingLabel != concentricCopy;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  v11.receiver = self;
  v11.super_class = SBPowerAlertElement;
  [(SBSystemApertureProvidedContentElement *)&v11 preferredEdgeOutsetsForLayoutMode:outsets.top suggestedOutsets:outsets.leading maximumOutsets:outsets.bottom, outsets.trailing, maximumOutsets.top, maximumOutsets.leading, maximumOutsets.bottom, maximumOutsets.trailing];
  if (v7 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (mode == 2)
  {
    v7 = v10;
    v9 = v10;
  }

  result.trailing = v9;
  result.bottom = v8;
  result.leading = v7;
  result.top = v6;
  return result;
}

- (double)preferredAlertingDuration:(double)result
{
  if (self->_style == 1 && result < 6.0)
  {
    return 6.0;
  }

  return result;
}

- (BOOL)dodgeSensorAreaOnIntrinsicContentSize
{
  if (self->_style == 1)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBPowerAlertElement;
  return [(SBSystemApertureProvidedContentElement *)&v5 dodgeSensorAreaOnIntrinsicContentSize];
}

- (double)horizontalSpacingBetweenLeadingAndCenter
{
  result = 24.0;
  if (self->_style != 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBPowerAlertElement;
    [(SBSystemApertureProvidedContentElement *)&v5 horizontalSpacingBetweenLeadingAndCenter];
  }

  return result;
}

- (double)horizontalSpacingBetweenTrailingAndCenter
{
  result = 0.0;
  if (self->_style != 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBPowerAlertElement;
    [(SBSystemApertureProvidedContentElement *)&v5 horizontalSpacingBetweenTrailingAndCenter];
  }

  return result;
}

- (double)verticalItemSpacing
{
  result = 14.0;
  if (self->_style != 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBPowerAlertElement;
    [(SBSystemApertureProvidedContentElement *)&v5 verticalItemSpacing];
  }

  return result;
}

- (double)verticalSpacingBetweenPrimaryAndSecondary
{
  if (self->_style == 1)
  {
    v3 = SBHScreenTypeForCurrentDevice() - 21;
    if (v3 >= 0xA)
    {
      v5 = SBLogStatusBarish();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(SBPowerAlertElement *)v5 verticalSpacingBetweenPrimaryAndSecondary:v6];
      }

      [(SBSystemApertureProvidedContentElement *)&v14 verticalSpacingBetweenPrimaryAndSecondary:v13.receiver];
    }

    else
    {
      return dbl_21F8A63E0[v3];
    }
  }

  else
  {
    [(SBSystemApertureProvidedContentElement *)&v13 verticalSpacingBetweenPrimaryAndSecondary:self];
  }

  return result;
}

- (double)customEdgeSpacing
{
  result = 16.0;
  if (self->_style != 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBPowerAlertElement;
    [(SBSystemApertureProvidedContentElement *)&v5 customEdgeSpacing];
  }

  return result;
}

- (void)setBatteryPercentage:(double)percentage
{
  if (self->_batteryPercentage != percentage)
  {
    self->_batteryPercentage = percentage;
    [(SBPowerAlertElement *)self _updateBatteryContent];
  }
}

- (void)_updateBatteryContent
{
  v60[1] = *MEMORY[0x277D85DE8];
  [(SBPowerAlertElement *)self batteryPercentage];
  v4 = v3;
  trailingBatteryIconPackageView = [(SBPowerAlertElement *)self trailingBatteryIconPackageView];
  trailingLowBatteryStyleIconPackageView = [(SBPowerAlertElement *)self trailingLowBatteryStyleIconPackageView];
  [(SBPowerAlertElement *)self _updateBatteryIconFillAreaForPackageView:trailingBatteryIconPackageView withBatteryPercentage:v4];
  minimalBatteryIconPackageView = [(SBPowerAlertElement *)self minimalBatteryIconPackageView];
  [(SBPowerAlertElement *)self _updateBatteryIconFillAreaForPackageView:v4 withBatteryPercentage:?];
  style = [(SBPowerAlertElement *)self style];
  isLowPowerModeEnabled = [(SBPowerAlertElement *)self isLowPowerModeEnabled];
  secondaryContent = [(SBPowerAlertElement *)self secondaryContent];
  _secondaryTextForStyle = [(SBPowerAlertElement *)self _secondaryTextForStyle];
  [secondaryContent setText:_secondaryTextForStyle];

  secondaryContent2 = [(SBPowerAlertElement *)self secondaryContent];
  _secondaryTextColorForStyle = [(SBPowerAlertElement *)self _secondaryTextColorForStyle];
  [secondaryContent2 setContentColor:_secondaryTextColorForStyle];

  [MEMORY[0x277D75A78] lowBatteryLevel];
  v13 = BSFloatLessThanOrEqualToFloat();
  if (isLowPowerModeEnabled)
  {
    v14 = [MEMORY[0x277D75348] colorWithRed:0.992156863 green:0.811764706 blue:0.345098039 alpha:1.0];
    v15 = @"yellow";
    v16 = @"lpm";
    goto LABEL_15;
  }

  if (style)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  if (v17 == 1)
  {
    v14 = [MEMORY[0x277D75348] colorWithRed:0.988235294 green:0.145098039 blue:0.231372549 alpha:1.0];
    v15 = @"red";
LABEL_13:
    v16 = @"lowbattery";
    goto LABEL_15;
  }

  if (style == 1)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v14 = [MEMORY[0x277D75348] colorWithRed:0.988235294 green:0.145098039 blue:0.231372549 alpha:1.0];
    v15 = @"red-low";
    goto LABEL_13;
  }

  v14 = [MEMORY[0x277D75348] colorWithRed:0.333333333 green:1.0 blue:0.670588235 alpha:1.0];
  v16 = 0;
  v15 = @"green";
LABEL_15:
  [trailingLowBatteryStyleIconPackageView setState:v16 animated:{1, trailingLowBatteryStyleIconPackageView}];
  v51 = trailingBatteryIconPackageView;
  [trailingBatteryIconPackageView setState:v15 animated:1];
  [(SBPowerAlertElement *)self _updateMinimalViewToState:v15 withDelay:style == 0];
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_keyColor, v14);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v59 = @"SBSystemApertureNotificationUserInfoElementKey";
    v60[0] = self;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    [defaultCenter postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v20];
  }

  trailingBatteryLabel = [(SBPowerAlertElement *)self trailingBatteryLabel];
  [trailingBatteryLabel setTextColor:v14];
  v22 = SBApp;
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v24 = [v22 formattedPercentStringForNumber:v23];

  v25 = objc_alloc(MEMORY[0x277CCAB48]);
  v57 = *MEMORY[0x277D740A8];
  v26 = v57;
  v27 = [MEMORY[0x277D74300] sbui_systemAperturePreferredFontForTextStyle:5];
  v58 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v29 = [v25 initWithString:v24 attributes:v28];

  v30 = objc_alloc(MEMORY[0x277CCA898]);
  v55 = v26;
  v31 = [MEMORY[0x277D74300] sbui_systemAperturePreferredFontForTextStyle:6];
  v56 = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v33 = [v30 initWithString:@"%" attributes:v32];

  v34 = [v24 rangeOfString:@"%"];
  if (v34 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = v34;
    [v29 replaceCharactersInRange:v34 withAttributedString:{v35, v33}];
    v37 = objc_alloc(MEMORY[0x277CCA898]);
    v53 = v26;
    v38 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
    v54 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v40 = [v37 initWithString:@" " attributes:v39];

    [v29 insertAttributedString:v40 atIndex:v36];
  }

  [trailingBatteryLabel setAttributedText:v29];
  accessibilityLabel = [v29 accessibilityLabel];
  [trailingBatteryLabel setAccessibilityLabel:accessibilityLabel];

  v42 = [minimalBatteryIconPackageView publishedObjectWithName:@"battery percentage"];
  v43 = objc_opt_class();
  v44 = v42;
  if (v43)
  {
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;

  v47 = [MEMORY[0x277CCABB0] numberWithDouble:round(v4 * 100.0)];
  v48 = [SBApp formattedDecimalStringForNumber:v47];
  [v46 setString:v48];
  v49 = [MEMORY[0x277D74300] sbui_systemAperturePreferredFontForTextStyle:5];
  [v46 setFont:v49];
}

- (void)_updateBatteryIconFillAreaForPackageView:(id)view withBatteryPercentage:(double)percentage
{
  v6 = [view publishedObjectWithName:@"Fill"];
  v7 = objc_opt_class();
  v17 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v17;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(SBPowerAlertElement *)self _batteryFillWidthForBatteryPercentage:percentage];
  [v9 setBounds:{v11, v13, v16, v15}];
}

- (double)_batteryFillWidthForBatteryPercentage:(double)percentage
{
  IsOne = BSFloatIsOne();
  result = percentage * 81.0 + 9.0;
  if (IsOne)
  {
    return 105.0;
  }

  return result;
}

- (double)_trailingViewWidth
{
  v2 = SBHScreenTypeForCurrentDevice() - 21;
  if (v2 < 0xA)
  {
    return dbl_21F8A6430[v2];
  }

  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(SBPowerAlertElement *)v4 verticalSpacingBetweenPrimaryAndSecondary:v5];
  }

  return 0.0;
}

- (void)_updateMinimalViewToState:(id)state withDelay:(BOOL)delay
{
  delayCopy = delay;
  stateCopy = state;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SBPowerAlertElement__updateMinimalViewToState_withDelay___block_invoke;
  v11[3] = &unk_2783A92D8;
  v11[4] = self;
  v12 = stateCopy;
  v7 = stateCopy;
  v8 = MEMORY[0x223D6F7F0](v11);
  v9 = v8;
  if (delayCopy)
  {
    v10 = dispatch_time(0, 500000000);
    dispatch_after(v10, MEMORY[0x277D85CD0], v9);
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

void __59__SBPowerAlertElement__updateMinimalViewToState_withDelay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) minimalBatteryIconPackageView];
  [v2 setState:*(a1 + 40) animated:1];
}

- (double)_primaryTextFontSize
{
  v2 = SBHScreenTypeForCurrentDevice() - 21;
  if (v2 < 0xA)
  {
    return dbl_21F8A6480[v2];
  }

  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(SBPowerAlertElement *)v4 verticalSpacingBetweenPrimaryAndSecondary:v5];
  }

  return 0.0;
}

- (id)_secondaryTextForStyle
{
  if (self->_lowPowerModeEnabled)
  {
    v2 = @"LOW_BATT_SUBTITLE_LOW_POWER_MODE_ENABLED";
  }

  else
  {
    v2 = @"LOW_BATT_SUBTITLE_LOW_POWER_MODE_DISABLED";
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = v2;
  mainBundle = [v3 mainBundle];
  v6 = [mainBundle localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];

  return v6;
}

- (id)_secondaryTextColorForStyle
{
  if (self->_lowPowerModeEnabled)
  {
    [MEMORY[0x277D75348] colorWithRed:0.992156863 green:0.776470588 blue:0.262745098 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.42 alpha:1.0];
  }
  v2 = ;

  return v2;
}

@end