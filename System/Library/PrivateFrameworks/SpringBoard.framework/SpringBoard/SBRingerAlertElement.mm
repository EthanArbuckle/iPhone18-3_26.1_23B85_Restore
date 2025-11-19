@interface SBRingerAlertElement
- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4;
- (BOOL)overridesConcentricPaddingForView:(id)a3 inLayoutMode:(int64_t)a4;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (SBRingerAlertElement)initWithSource:(unint64_t)a3 ringerSilent:(BOOL)a4 forPreviewing:(BOOL)a5;
- (SBRingerAlertElementDelegate)delegate;
- (UIColor)keyColor;
- (id)_bellImageForRingerSilent:(BOOL)a3;
- (id)_colorForRingerSilent:(BOOL)a3;
- (id)_containedVolumeSliderViewWithSize:(CGSize)a3 layoutAxis:(int64_t)a4;
- (id)_leadingContentViewProviderForVolume;
- (id)_minimalContentForSource:(unint64_t)a3 visualStyle:(unint64_t)a4 ringerSilent:(BOOL)a5;
- (id)_ringerPackageNameForVisualStyle:(unint64_t)a3 minimal:(BOOL)a4;
- (id)_textForRingerSilent:(BOOL)a3;
- (id)alertHost;
- (void)_getRingerPackageSizesForVisualStyle:(unint64_t)a3 ringerSilent:(BOOL)a4 leadingSize:(CGSize *)a5 minimalSize:(CGSize *)a6;
- (void)_setRingerSilent:(BOOL)a3 skipUpdate:(BOOL)a4;
- (void)_shakeRingerBell;
- (void)_updateStateWithTransitionType:(unint64_t)a3;
- (void)_updateVolumeSliderAnimated:(BOOL)a3;
- (void)nudgeUp:(BOOL)a3;
- (void)presentForMuteChange:(BOOL)a3;
- (void)setVolume:(float)a3 animated:(BOOL)a4 forKeyPress:(BOOL)a5;
@end

@implementation SBRingerAlertElement

- (SBRingerAlertElement)initWithSource:(unint64_t)a3 ringerSilent:(BOOL)a4 forPreviewing:(BOOL)a5
{
  v5 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v9 = (SBUIHasHIDRingerButton() & 1) != 0 || _os_feature_enabled_impl();
  v10 = v9;
  v11 = [SBRingerAlertElement _ringerPackageNameForVisualStyle:"_ringerPackageNameForVisualStyle:minimal:" minimal:?];
  v12 = objc_alloc(MEMORY[0x277D67DE8]);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = v11;
  v14 = [v12 initWithPackageName:v11 inBundle:v13];

  v15 = objc_alloc(MEMORY[0x277D67E58]);
  v16 = [(SBRingerAlertElement *)self _textForRingerSilent:v5];
  v17 = [v15 initWithText:v16 style:4];

  v18 = [(SBRingerAlertElement *)self _colorForRingerSilent:v5];
  [v17 setContentColor:v18];

  v31 = [(SBRingerAlertElement *)self _leadingContentViewProviderForVolume];
  v19 = [(SBRingerAlertElement *)self _containedVolumeSliderViewWithSize:0 layoutAxis:82.0, 5.0];
  v20 = [v19 subviews];
  v21 = [v20 bs_firstObjectOfClass:objc_opt_class()];

  objc_storeStrong(&self->_sliderView, v21);
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    CGAffineTransformMakeScale(&v33, -1.0, 1.0);
    [v21 setTransform:&v33];
  }

  v30 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v19];
  v22 = v14;
  v23 = v17;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v23 = v30;
    v22 = v31;
  }

  [v8 setLeadingContentViewProvider:v22];
  [v8 setTrailingContentViewProvider:v23];
LABEL_11:
  v24 = [(SBRingerAlertElement *)self _minimalContentForSource:a3 visualStyle:v10 ringerSilent:v5];
  [v8 setMinimalContentViewProvider:v24];
  v32.receiver = self;
  v32.super_class = SBRingerAlertElement;
  v25 = [(SBSystemApertureProvidedContentElement *)&v32 initWithIdentifier:self contentProvider:v8];
  v26 = v25;
  if (v25)
  {
    v25->_source = a3;
    v25->_visualStyle = v10;
    objc_storeStrong(&v25->_contentProvider, v8);
    v26->_activatedForPreviewing = a5;
    objc_storeStrong(&v26->_leadingRingerContentViewProvider, v14);
    objc_storeStrong(&v26->_minimalContentViewProvider, v24);
    objc_storeStrong(&v26->_trailingTextContentViewProvider, v17);
    [(SBSystemApertureProvidedContentElement *)v26 setMinimumSupportedLayoutMode:-1];
    [(SBSystemApertureProvidedContentElement *)v26 setMaximumSupportedLayoutMode:2];
    [(SBSystemApertureProvidedContentElement *)v26 setPreferredLayoutMode:2];
    [(SBRingerAlertElement *)v26 _setRingerSilent:v5 skipUpdate:1];
    [(SBRingerAlertElement *)v26 _updateStateWithTransitionType:v5 ^ 1];
  }

  return v26;
}

- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4
{
  v5 = a3;
  v6 = [(SBRingerAlertElement *)self leadingRingerContentViewProvider];
  v7 = [v6 providedView];
  v8 = [(SBRingerAlertElement *)self minimalRingerContentViewProvider];
  v9 = [v8 providedView];

  v11 = v7 == v5 || v9 == v5;
  return v11;
}

- (UIColor)keyColor
{
  v3 = [(SBRingerAlertElement *)self isRingerSilent];
  if ([(SBRingerAlertElement *)self source])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return [(SBRingerAlertElement *)self _colorForRingerSilent:v4];
}

- (BOOL)overridesConcentricPaddingForView:(id)a3 inLayoutMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBRingerAlertElement *)self visualStyle]== 1;
  LOBYTE(a4) = [(SBRingerAlertElement *)self isProvidedViewConcentric:v6 inLayoutMode:a4];

  return v7 & a4;
}

- (void)_setRingerSilent:(BOOL)a3 skipUpdate:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  ringerSilent = self->_ringerSilent;
  if (ringerSilent != a3)
  {
    v6 = a3;
    self->_ringerSilent = a3;
    v8 = SBLogRingerHUD();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBRingerAlertElement setRingerSilent: %{BOOL}d", buf, 8u);
    }

    self->_lastEventIsAVolumeChange = 0;
    if (!a4)
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

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = @"SBSystemApertureNotificationUserInfoElementKey";
    v13 = self;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v10 postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v11];
  }
}

- (void)setVolume:(float)a3 animated:(BOOL)a4 forKeyPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v9 = SBLogRingerHUD();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    v12 = a3;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBRingerAlertElement setVolume:%.2f animated:%{BOOL}d forKeyPress:%{BOOL}d", &v11, 0x18u);
  }

  v10 = [(SBRingerAlertElement *)self delegate];
  [v10 ringerAlertElementWantsToResetAutomaticInvalidationTimer:self];
  if (v5)
  {
    self->_lastEventIsAVolumeChange = 1;
  }

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_volume = a3;
    [(SBRingerAlertElement *)self _updateVolumeSliderAnimated:v6];
  }
}

- (void)presentForMuteChange:(BOOL)a3
{
  [(SBRingerAlertElement *)self _updateVolumeSliderAnimated:0];
  v4 = [(SBRingerAlertElement *)self delegate];
  [v4 ringerAlertElementWantsToBePresented:self];
  [v4 ringerAlertElementWantsToResetAutomaticInvalidationTimer:self];
}

- (void)nudgeUp:(BOOL)a3
{
  if (a3)
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

- (void)_updateVolumeSliderAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_overshoot + self->_volume;
  v6 = v5;
  [(SBRingerVolumeSliderView *)self->_sliderView setValue:v5 animated:?];
  minimalSliderView = self->_minimalSliderView;

  [(SBRingerVolumeSliderView *)minimalSliderView setValue:v3 animated:v6];
}

- (void)_updateStateWithTransitionType:(unint64_t)a3
{
  v5 = [(SBRingerAlertElement *)self source];
  if (v5 != 1)
  {
    if (v5)
    {
      return;
    }

    v6 = [(SBSystemApertureProvidedContentElement *)self layoutHost];
    v7 = [(SBRingerAlertElement *)self isRingerSilent];
    v8 = [(SBRingerAlertElement *)self visualStyle];
    v9 = [(SBRingerAlertElement *)self leadingRingerContentViewProvider];
    v10 = [(SBRingerAlertElement *)self minimalRingerContentViewProvider];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55__SBRingerAlertElement__updateStateWithTransitionType___block_invoke;
    v29[3] = &unk_2783AB438;
    v29[4] = self;
    v32 = v8;
    v33 = v7;
    v11 = v9;
    v30 = v11;
    v12 = v10;
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
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v19 = (v16 + 16);
        (*(v16 + 16))(v16, @"ringer", 0);
        [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.18];
        (*v19)(v17, @"silent", 1);
      }

      else if (a3 == 3)
      {
        (*(v16 + 16))(v16, @"ringer", 1);
        [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.18];
        [v6 preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
        [(SBRingerAlertElement *)self _shakeRingerBell];
      }
    }

    else
    {
      if (!a3)
      {
        (*(v16 + 16))(v16, @"silent", 0);
        v13[2](v13);
LABEL_18:

        return;
      }

      if (a3 == 1)
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

    v20 = [(SBRingerAlertElement *)self _textForRingerSilent:v7];
    v21 = [(SBRingerAlertElement *)self _colorForRingerSilent:v7];
    v22 = [(SBRingerAlertElement *)self trailingTextContentViewProvider];
    [v22 swapInText:v20 textColor:v21];

    goto LABEL_18;
  }

  v23 = [(SBRingerAlertElement *)self _leadingContentViewProviderForVolume];
  v18 = [(SBRingerAlertElement *)self contentProvider];
  [v18 setLeadingContentViewProvider:v23];
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

- (id)_textForRingerSilent:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"RINGER_COMPACT_OFF";
  }

  else
  {
    v6 = @"RINGER_COMPACT_ON";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_283094718 table:@"SpringBoard"];

  return v7;
}

- (id)_colorForRingerSilent:(BOOL)a3
{
  if (a3)
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
    v4 = [v3 shakeRingerBell];

    if (v4)
    {
      v5 = [(SBSystemApertureProvidedContentElement *)self elementHost];
      [v5 elementRequestsNegativeResponse:self];
    }
  }
}

- (id)_leadingContentViewProviderForVolume
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [(SBRingerAlertElement *)self _bellImageForRingerSilent:[(SBRingerAlertElement *)self isRingerSilent]];
  v3 = [objc_alloc(MEMORY[0x277D67E20]) initWithImage:v2];
  v4 = objc_alloc(MEMORY[0x277D67E58]);
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"RINGER_VOLUME" value:&stru_283094718 table:@"SpringBoard"];
  v7 = [v4 initWithText:v6 style:4];

  v8 = [v7 contentColor];
  [v3 setContentColor:v8];

  v9 = objc_alloc(MEMORY[0x277D67E50]);
  v13[0] = v3;
  v13[1] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v9 initWithContentViewProviders:v10];

  [v11 setContentDistribution:0];
  [v11 setContentSpacing:8.0];

  return v11;
}

- (id)_minimalContentForSource:(unint64_t)a3 visualStyle:(unint64_t)a4 ringerSilent:(BOOL)a5
{
  v52[9] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v51 = [(SBRingerAlertElement *)self _bellImageForRingerSilent:a5, a4];
    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v51];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x277D75348] systemWhiteColor];
    [v10 setTintColor:v11];

    v12 = [(SBRingerAlertElement *)self _containedVolumeSliderViewWithSize:1 layoutAxis:6.0, 42.0];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v12 subviews];
    v14 = [v13 bs_firstObjectOfClass:objc_opt_class()];
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
    v50 = [v12 widthAnchor];
    v49 = [v50 constraintEqualToConstant:v19];
    v52[0] = v49;
    v48 = [v12 heightAnchor];
    v47 = [v48 constraintEqualToConstant:v21];
    v52[1] = v47;
    v46 = [v12 topAnchor];
    v45 = [v17 topAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v52[2] = v44;
    v43 = [v12 centerXAnchor];
    v42 = [v17 centerXAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v52[3] = v41;
    v38 = [v10 topAnchor];
    v37 = [v12 bottomAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:3.0];
    v52[4] = v36;
    v35 = [v10 centerXAnchor];
    v34 = [v17 centerXAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v52[5] = v33;
    v32 = [v10 bottomAnchor];
    v31 = [v17 bottomAnchor];
    v22 = [v32 constraintEqualToAnchor:v31];
    v52[6] = v22;
    v23 = [v17 leadingAnchor];
    v39 = v10;
    v24 = [v10 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v52[7] = v25;
    v26 = [v17 trailingAnchor];
    v27 = [v10 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v52[8] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:9];
    [v40 activateConstraints:v29];

    v5 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v17];
  }

  else if (!a3)
  {
    v7 = [(SBRingerAlertElement *)self _ringerPackageNameForVisualStyle:a4 minimal:1, a5];
    v8 = objc_alloc(MEMORY[0x277D67DE8]);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v8 initWithPackageName:v7 inBundle:v9];

    objc_storeStrong(&self->_minimalRingerContentViewProvider, v5);
  }

  return v5;
}

- (id)_containedVolumeSliderViewWithSize:(CGSize)a3 layoutAxis:(int64_t)a4
{
  v5 = [SBRingerVolumeSliderView alloc];
  BSRectWithSize();
  v6 = [(SBRingerVolumeSliderView *)v5 initWithFrame:?];
  [(SBRingerVolumeSliderView *)v6 setStyle:1];
  [(SBRingerVolumeSliderView *)v6 setLayoutAxis:a4];
  [(SBRingerVolumeSliderView *)v6 setRoundedStyle:1];
  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v7 addSubview:v6];
  [(SBRingerVolumeSliderView *)v6 bounds];
  [v7 setFrame:?];
  [v7 center];
  v9 = v8;
  v11 = v10;
  v12 = [v7 superview];
  [v7 convertPoint:v12 toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  [(SBRingerVolumeSliderView *)v6 setCenter:v14, v16];

  return v7;
}

- (id)_bellImageForRingerSilent:(BOOL)a3
{
  v3 = @"bell.fill";
  if (a3)
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

- (id)_ringerPackageNameForVisualStyle:(unint64_t)a3 minimal:(BOOL)a4
{
  if (a3 == 1)
  {
    v6 = @"Ringer-Leading-D83";
  }

  else if (a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = @"Ringer-Leading-D73";
    if (a4)
    {
      v5 = @"Ringer-Minimal-D73";
    }

    v6 = v5;
  }

  return v6;
}

- (void)_getRingerPackageSizesForVisualStyle:(unint64_t)a3 ringerSilent:(BOOL)a4 leadingSize:(CGSize *)a5 minimalSize:(CGSize *)a6
{
  if (a3 == 1)
  {
    v10 = vdupq_n_s64(0x4042555555555555uLL);
    v8 = 36.6666667;
    v7 = 36.6666667;
  }

  else if (a3)
  {
    v10 = 0;
    v8 = 0.0;
    v7 = 0.0;
  }

  else
  {
    if (a4)
    {
      v6 = 52.42;
    }

    else
    {
      v6 = 21.58;
    }

    v7 = 25.2;
    v8 = 49.32;
    if (!a4)
    {
      v8 = 25.2;
    }

    v9 = &qword_21F8A58A8;
    v10 = vld1q_dup_f64(v9);
    v10.width = v6;
  }

  *a5 = v10;
  a6->width = v7;
  a6->height = v8;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  v11.receiver = self;
  v11.super_class = SBRingerAlertElement;
  [(SBSystemApertureProvidedContentElement *)&v11 preferredEdgeOutsetsForLayoutMode:a4.top suggestedOutsets:a4.leading maximumOutsets:a4.bottom, a4.trailing, a5.top, a5.leading, a5.bottom, a5.trailing];
  if (v7 <= v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  if (a3 == 2)
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