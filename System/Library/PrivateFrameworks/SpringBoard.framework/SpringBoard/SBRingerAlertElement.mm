@interface SBRingerAlertElement
- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode;
- (BOOL)overridesConcentricPaddingForView:(id)view inLayoutMode:(int64_t)mode;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (SBRingerAlertElement)initWithSource:(unint64_t)source ringerSilent:(BOOL)silent forPreviewing:(BOOL)previewing;
- (SBRingerAlertElementDelegate)delegate;
- (UIColor)keyColor;
- (id)_bellImageForRingerSilent:(BOOL)silent;
- (id)_colorForRingerSilent:(BOOL)silent;
- (id)_containedVolumeSliderViewWithSize:(CGSize)size layoutAxis:(int64_t)axis;
- (id)_leadingContentViewProviderForVolume;
- (id)_minimalContentForSource:(unint64_t)source visualStyle:(unint64_t)style ringerSilent:(BOOL)silent;
- (id)_ringerPackageNameForVisualStyle:(unint64_t)style minimal:(BOOL)minimal;
- (id)_textForRingerSilent:(BOOL)silent;
- (id)alertHost;
- (void)_getRingerPackageSizesForVisualStyle:(unint64_t)style ringerSilent:(BOOL)silent leadingSize:(CGSize *)size minimalSize:(CGSize *)minimalSize;
- (void)_setRingerSilent:(BOOL)silent skipUpdate:(BOOL)update;
- (void)_shakeRingerBell;
- (void)_updateStateWithTransitionType:(unint64_t)type;
- (void)_updateVolumeSliderAnimated:(BOOL)animated;
- (void)nudgeUp:(BOOL)up;
- (void)presentForMuteChange:(BOOL)change;
- (void)setVolume:(float)volume animated:(BOOL)animated forKeyPress:(BOOL)press;
@end

@implementation SBRingerAlertElement

- (SBRingerAlertElement)initWithSource:(unint64_t)source ringerSilent:(BOOL)silent forPreviewing:(BOOL)previewing
{
  silentCopy = silent;
  v8 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v9 = (SBUIHasHIDRingerButton() & 1) != 0 || _os_feature_enabled_impl();
  v10 = v9;
  v11 = [SBRingerAlertElement _ringerPackageNameForVisualStyle:"_ringerPackageNameForVisualStyle:minimal:" minimal:?];
  v12 = objc_alloc(MEMORY[0x277D67DE8]);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = v11;
  v14 = [v12 initWithPackageName:v11 inBundle:v13];

  v15 = objc_alloc(MEMORY[0x277D67E58]);
  v16 = [(SBRingerAlertElement *)self _textForRingerSilent:silentCopy];
  v17 = [v15 initWithText:v16 style:4];

  v18 = [(SBRingerAlertElement *)self _colorForRingerSilent:silentCopy];
  [v17 setContentColor:v18];

  _leadingContentViewProviderForVolume = [(SBRingerAlertElement *)self _leadingContentViewProviderForVolume];
  v19 = [(SBRingerAlertElement *)self _containedVolumeSliderViewWithSize:0 layoutAxis:82.0, 5.0];
  subviews = [v19 subviews];
  v21 = [subviews bs_firstObjectOfClass:objc_opt_class()];

  objc_storeStrong(&self->_sliderView, v21);
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    CGAffineTransformMakeScale(&v33, -1.0, 1.0);
    [v21 setTransform:&v33];
  }

  v30 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v19];
  v22 = v14;
  v23 = v17;
  if (source)
  {
    if (source != 1)
    {
      goto LABEL_11;
    }

    v23 = v30;
    v22 = _leadingContentViewProviderForVolume;
  }

  [v8 setLeadingContentViewProvider:v22];
  [v8 setTrailingContentViewProvider:v23];
LABEL_11:
  v24 = [(SBRingerAlertElement *)self _minimalContentForSource:source visualStyle:v10 ringerSilent:silentCopy];
  [v8 setMinimalContentViewProvider:v24];
  v32.receiver = self;
  v32.super_class = SBRingerAlertElement;
  v25 = [(SBSystemApertureProvidedContentElement *)&v32 initWithIdentifier:self contentProvider:v8];
  v26 = v25;
  if (v25)
  {
    v25->_source = source;
    v25->_visualStyle = v10;
    objc_storeStrong(&v25->_contentProvider, v8);
    v26->_activatedForPreviewing = previewing;
    objc_storeStrong(&v26->_leadingRingerContentViewProvider, v14);
    objc_storeStrong(&v26->_minimalContentViewProvider, v24);
    objc_storeStrong(&v26->_trailingTextContentViewProvider, v17);
    [(SBSystemApertureProvidedContentElement *)v26 setMinimumSupportedLayoutMode:-1];
    [(SBSystemApertureProvidedContentElement *)v26 setMaximumSupportedLayoutMode:2];
    [(SBSystemApertureProvidedContentElement *)v26 setPreferredLayoutMode:2];
    [(SBRingerAlertElement *)v26 _setRingerSilent:silentCopy skipUpdate:1];
    [(SBRingerAlertElement *)v26 _updateStateWithTransitionType:silentCopy ^ 1];
  }

  return v26;
}

- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode
{
  concentricCopy = concentric;
  leadingRingerContentViewProvider = [(SBRingerAlertElement *)self leadingRingerContentViewProvider];
  providedView = [leadingRingerContentViewProvider providedView];
  minimalRingerContentViewProvider = [(SBRingerAlertElement *)self minimalRingerContentViewProvider];
  providedView2 = [minimalRingerContentViewProvider providedView];

  v11 = providedView == concentricCopy || providedView2 == concentricCopy;
  return v11;
}

- (UIColor)keyColor
{
  isRingerSilent = [(SBRingerAlertElement *)self isRingerSilent];
  if ([(SBRingerAlertElement *)self source])
  {
    v4 = 0;
  }

  else
  {
    v4 = isRingerSilent;
  }

  return [(SBRingerAlertElement *)self _colorForRingerSilent:v4];
}

- (BOOL)overridesConcentricPaddingForView:(id)view inLayoutMode:(int64_t)mode
{
  viewCopy = view;
  v7 = [(SBRingerAlertElement *)self visualStyle]== 1;
  LOBYTE(mode) = [(SBRingerAlertElement *)self isProvidedViewConcentric:viewCopy inLayoutMode:mode];

  return v7 & mode;
}

- (void)_setRingerSilent:(BOOL)silent skipUpdate:(BOOL)update
{
  v16 = *MEMORY[0x277D85DE8];
  ringerSilent = self->_ringerSilent;
  if (ringerSilent != silent)
  {
    silentCopy = silent;
    self->_ringerSilent = silent;
    v8 = SBLogRingerHUD();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = silentCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBRingerAlertElement setRingerSilent: %{BOOL}d", buf, 8u);
    }

    self->_lastEventIsAVolumeChange = 0;
    if (!update)
    {
      if (ringerSilent)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      [(SBRingerAlertElement *)self _updateStateWithTransitionType:v9];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = @"SBSystemApertureNotificationUserInfoElementKey";
    selfCopy = self;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v12 count:1];
    [defaultCenter postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v11];
  }
}

- (void)setVolume:(float)volume animated:(BOOL)animated forKeyPress:(BOOL)press
{
  pressCopy = press;
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  v9 = SBLogRingerHUD();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    volumeCopy = volume;
    v13 = 1024;
    v14 = animatedCopy;
    v15 = 1024;
    v16 = pressCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBRingerAlertElement setVolume:%.2f animated:%{BOOL}d forKeyPress:%{BOOL}d", &v11, 0x18u);
  }

  delegate = [(SBRingerAlertElement *)self delegate];
  [delegate ringerAlertElementWantsToResetAutomaticInvalidationTimer:self];
  if (pressCopy)
  {
    self->_lastEventIsAVolumeChange = 1;
  }

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_volume = volume;
    [(SBRingerAlertElement *)self _updateVolumeSliderAnimated:animatedCopy];
  }
}

- (void)presentForMuteChange:(BOOL)change
{
  [(SBRingerAlertElement *)self _updateVolumeSliderAnimated:0];
  delegate = [(SBRingerAlertElement *)self delegate];
  [delegate ringerAlertElementWantsToBePresented:self];
  [delegate ringerAlertElementWantsToResetAutomaticInvalidationTimer:self];
}

- (void)nudgeUp:(BOOL)up
{
  if (up)
  {
    if ((BSFloatIsOne() & 1) == 0)
    {
      return;
    }

    v4 = 0.0625;
  }

  else
  {
    if (!BSFloatLessThanOrEqualToFloat())
    {
      return;
    }

    v4 = -0.0625;
  }

  self->_overshoot = self->_overshoot + v4;

  [(SBRingerAlertElement *)self _updateVolumeSliderAnimated:1];
}

- (void)_updateVolumeSliderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_overshoot + self->_volume;
  v6 = v5;
  [(SBRingerVolumeSliderView *)self->_sliderView setValue:v5 animated:?];
  minimalSliderView = self->_minimalSliderView;

  [(SBRingerVolumeSliderView *)minimalSliderView setValue:animatedCopy animated:v6];
}

- (void)_updateStateWithTransitionType:(unint64_t)type
{
  source = [(SBRingerAlertElement *)self source];
  if (source != 1)
  {
    if (source)
    {
      return;
    }

    layoutHost = [(SBSystemApertureProvidedContentElement *)self layoutHost];
    isRingerSilent = [(SBRingerAlertElement *)self isRingerSilent];
    visualStyle = [(SBRingerAlertElement *)self visualStyle];
    leadingRingerContentViewProvider = [(SBRingerAlertElement *)self leadingRingerContentViewProvider];
    minimalRingerContentViewProvider = [(SBRingerAlertElement *)self minimalRingerContentViewProvider];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke;
    v29[3] = &unk_2783AB438;
    v29[4] = self;
    v32 = visualStyle;
    v33 = isRingerSilent;
    v11 = leadingRingerContentViewProvider;
    v30 = v11;
    v12 = minimalRingerContentViewProvider;
    v31 = v12;
    v13 = MEMORY[0x223D6F7F0](v29);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke_2;
    v26[3] = &unk_2783C21D8;
    v14 = v11;
    v27 = v14;
    v15 = v12;
    v28 = v15;
    v16 = MEMORY[0x223D6F7F0](v26);
    v17 = v16;
    if (type > 1)
    {
      if (type == 2)
      {
        v19 = (v16 + 16);
        (*(v16 + 16))(v16, @"ringer", 0);
        [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.18];
        (*v19)(v17, @"silent", 1);
      }

      else if (type == 3)
      {
        (*(v16 + 16))(v16, @"ringer", 1);
        [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.18];
        [layoutHost preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
        [(SBRingerAlertElement *)self _shakeRingerBell];
      }
    }

    else
    {
      if (!type)
      {
        (*(v16 + 16))(v16, @"silent", 0);
        v13[2](v13);
LABEL_18:

        return;
      }

      if (type == 1)
      {
        (*(v16 + 16))(v16, @"ringer", 0);
        v13[2](v13);
        if (![(SBRingerAlertElement *)self isActivatedForPreviewing])
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke_3;
          block[3] = &unk_2783A98A0;
          block[4] = self;
          v25 = v17;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        goto LABEL_18;
      }
    }

    v20 = [(SBRingerAlertElement *)self _textForRingerSilent:isRingerSilent];
    v21 = [(SBRingerAlertElement *)self _colorForRingerSilent:isRingerSilent];
    trailingTextContentViewProvider = [(SBRingerAlertElement *)self trailingTextContentViewProvider];
    [trailingTextContentViewProvider swapInText:v20 textColor:v21];

    goto LABEL_18;
  }

  _leadingContentViewProviderForVolume = [(SBRingerAlertElement *)self _leadingContentViewProviderForVolume];
  contentProvider = [(SBRingerAlertElement *)self contentProvider];
  [contentProvider setLeadingContentViewProvider:_leadingContentViewProviderForVolume];
}

uint64_t __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke(uint64_t a1)
{
  v5 = 0.0;
  v6 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  [*(a1 + 32) _getRingerPackageSizesForVisualStyle:*(a1 + 56) ringerSilent:*(a1 + 64) leadingSize:&v5 minimalSize:&v3];
  [*(a1 + 40) setIntrinsicPackageSize:{v5, v6}];
  return [*(a1 + 48) setIntrinsicPackageSize:{v3, v4}];
}

void __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setState:v6 animated:a3];
  [*(a1 + 40) setState:v6 animated:a3];
}

uint64_t __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _shakeRingerBell];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_textForRingerSilent:(BOOL)silent
{
  silentCopy = silent;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (silentCopy)
  {
    v6 = @"RINGER_COMPACT_OFF";
  }

  else
  {
    v6 = @"RINGER_COMPACT_ON";
  }

  v7 = [mainBundle localizedStringForKey:v6 value:&stru_283094718 table:@"SpringBoard"];

  return v7;
}

- (id)_colorForRingerSilent:(BOOL)silent
{
  if (silent)
  {
    [MEMORY[0x277D75348] colorWithRed:0.996078431 green:0.266666667 blue:0.160784314 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }
  v3 = ;

  return v3;
}

- (void)_shakeRingerBell
{
  if ([(SBSystemApertureProvidedContentElement *)self layoutMode]!= 1)
  {
    v3 = +[SBSystemApertureDomain rootSettings];
    shakeRingerBell = [v3 shakeRingerBell];

    if (shakeRingerBell)
    {
      elementHost = [(SBSystemApertureProvidedContentElement *)self elementHost];
      [elementHost elementRequestsNegativeResponse:self];
    }
  }
}

- (id)_leadingContentViewProviderForVolume
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [(SBRingerAlertElement *)self _bellImageForRingerSilent:[(SBRingerAlertElement *)self isRingerSilent]];
  v3 = [objc_alloc(MEMORY[0x277D67E20]) initWithImage:v2];
  v4 = objc_alloc(MEMORY[0x277D67E58]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"RINGER_VOLUME" value:&stru_283094718 table:@"SpringBoard"];
  v7 = [v4 initWithText:v6 style:4];

  contentColor = [v7 contentColor];
  [v3 setContentColor:contentColor];

  v9 = objc_alloc(MEMORY[0x277D67E50]);
  v13[0] = v3;
  v13[1] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v9 initWithContentViewProviders:v10];

  [v11 setContentDistribution:0];
  [v11 setContentSpacing:8.0];

  return v11;
}

- (id)_minimalContentForSource:(unint64_t)source visualStyle:(unint64_t)style ringerSilent:(BOOL)silent
{
  v52[9] = *MEMORY[0x277D85DE8];
  if (source == 1)
  {
    style = [(SBRingerAlertElement *)self _bellImageForRingerSilent:silent, style];
    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:style];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [v10 setTintColor:systemWhiteColor];

    v12 = [(SBRingerAlertElement *)self _containedVolumeSliderViewWithSize:1 layoutAxis:6.0, 42.0];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    subviews = [v12 subviews];
    v14 = [subviews bs_firstObjectOfClass:objc_opt_class()];
    minimalSliderView = self->_minimalSliderView;
    self->_minimalSliderView = v14;

    v16 = objc_alloc(MEMORY[0x277D75D18]);
    v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v12];
    [v17 addSubview:v10];
    [v12 bounds];
    v19 = v18;
    v21 = v20;
    v40 = MEMORY[0x277CCAAD0];
    widthAnchor = [v12 widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:v19];
    v52[0] = v49;
    heightAnchor = [v12 heightAnchor];
    v47 = [heightAnchor constraintEqualToConstant:v21];
    v52[1] = v47;
    topAnchor = [v12 topAnchor];
    topAnchor2 = [v17 topAnchor];
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[2] = v44;
    centerXAnchor = [v12 centerXAnchor];
    centerXAnchor2 = [v17 centerXAnchor];
    v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v52[3] = v41;
    topAnchor3 = [v10 topAnchor];
    bottomAnchor = [v12 bottomAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
    v52[4] = v36;
    centerXAnchor3 = [v10 centerXAnchor];
    centerXAnchor4 = [v17 centerXAnchor];
    v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v52[5] = v33;
    bottomAnchor2 = [v10 bottomAnchor];
    bottomAnchor3 = [v17 bottomAnchor];
    v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v52[6] = v22;
    leadingAnchor = [v17 leadingAnchor];
    v39 = v10;
    leadingAnchor2 = [v10 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[7] = v25;
    trailingAnchor = [v17 trailingAnchor];
    trailingAnchor2 = [v10 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[8] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:9];
    [v40 activateConstraints:v29];

    v5 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v17];
  }

  else if (!source)
  {
    silent = [(SBRingerAlertElement *)self _ringerPackageNameForVisualStyle:style minimal:1, silent];
    v8 = objc_alloc(MEMORY[0x277D67DE8]);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v8 initWithPackageName:silent inBundle:v9];

    objc_storeStrong(&self->_minimalRingerContentViewProvider, v5);
  }

  return v5;
}

- (id)_containedVolumeSliderViewWithSize:(CGSize)size layoutAxis:(int64_t)axis
{
  v5 = [SBRingerVolumeSliderView alloc];
  BSRectWithSize();
  v6 = [(SBRingerVolumeSliderView *)v5 initWithFrame:?];
  [(SBRingerVolumeSliderView *)v6 setStyle:1];
  [(SBRingerVolumeSliderView *)v6 setLayoutAxis:axis];
  [(SBRingerVolumeSliderView *)v6 setRoundedStyle:1];
  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v7 addSubview:v6];
  [(SBRingerVolumeSliderView *)v6 bounds];
  [v7 setFrame:?];
  [v7 center];
  v9 = v8;
  v11 = v10;
  superview = [v7 superview];
  [v7 convertPoint:superview toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  [(SBRingerVolumeSliderView *)v6 setCenter:v14, v16];

  return v7;
}

- (id)_bellImageForRingerSilent:(BOOL)silent
{
  v3 = @"bell.fill";
  if (silent)
  {
    v3 = @"bell.slash.fill";
  }

  v4 = MEMORY[0x277D755D0];
  v5 = MEMORY[0x277D74300];
  v6 = v3;
  v7 = [v5 sbui_systemAperturePreferredFontForTextStyle:4];
  v8 = [v4 configurationWithFont:v7];

  v9 = [MEMORY[0x277D755B8] systemImageNamed:v6 withConfiguration:v8];

  return v9;
}

- (id)_ringerPackageNameForVisualStyle:(unint64_t)style minimal:(BOOL)minimal
{
  if (style == 1)
  {
    v6 = @"Ringer-Leading-D83";
  }

  else if (style)
  {
    v6 = 0;
  }

  else
  {
    v5 = @"Ringer-Leading-D73";
    if (minimal)
    {
      v5 = @"Ringer-Minimal-D73";
    }

    v6 = v5;
  }

  return v6;
}

- (void)_getRingerPackageSizesForVisualStyle:(unint64_t)style ringerSilent:(BOOL)silent leadingSize:(CGSize *)size minimalSize:(CGSize *)minimalSize
{
  if (style == 1)
  {
    v10 = vdupq_n_s64(0x4042555555555555uLL);
    v8 = 36.6666667;
    v7 = 36.6666667;
  }

  else if (style)
  {
    v10 = 0;
    v8 = 0.0;
    v7 = 0.0;
  }

  else
  {
    if (silent)
    {
      v6 = 52.42;
    }

    else
    {
      v6 = 21.58;
    }

    v7 = 25.2;
    v8 = 49.32;
    if (!silent)
    {
      v8 = 25.2;
    }

    v9 = &qword_21F8A58A8;
    v10 = vld1q_dup_f64(v9);
    v10.width = v6;
  }

  *size = v10;
  minimalSize->width = v7;
  minimalSize->height = v8;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  v11.receiver = self;
  v11.super_class = SBRingerAlertElement;
  [(SBSystemApertureProvidedContentElement *)&v11 preferredEdgeOutsetsForLayoutMode:outsets.top suggestedOutsets:outsets.leading maximumOutsets:outsets.bottom, outsets.trailing, maximumOutsets.top, maximumOutsets.leading, maximumOutsets.bottom, maximumOutsets.trailing];
  if (v7 <= v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  if (mode == 2)
  {
    v9 = v10;
    v7 = v10;
  }

  result.trailing = v9;
  result.bottom = v8;
  result.leading = v7;
  result.top = v6;
  return result;
}

- (id)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

- (SBRingerAlertElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end