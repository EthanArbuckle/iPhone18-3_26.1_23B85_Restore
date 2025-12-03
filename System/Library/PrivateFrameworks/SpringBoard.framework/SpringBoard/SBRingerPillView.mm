@interface SBRingerPillView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBRingerPillView)initWithActivatedForPreviewing:(BOOL)previewing;
- (id)_subtitleLabelColor;
- (id)_titleLabelColor;
- (id)_visibleViewsForState:(unint64_t)state;
- (void)_setGlyphTintColor:(id)color animationDuration:(double)duration;
- (void)_updateGlyphWithStaticColor:(id)color animationSettings:(id)settings;
- (void)layoutSubviews;
- (void)setState:(unint64_t)state;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBRingerPillView

- (SBRingerPillView)initWithActivatedForPreviewing:(BOOL)previewing
{
  previewingCopy = previewing;
  v82 = *MEMORY[0x277D85DE8];
  v80.receiver = self;
  v80.super_class = SBRingerPillView;
  v4 = [(SBRingerPillView *)&v80 init];
  v5 = v4;
  if (v4)
  {
    v4->_activatedForPreviewing = previewingCopy;
    if (previewingCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(SBRingerPillView *)v4 setOverrideUserInterfaceStyle:v6];
    v77 = 1065353216;
    v78 = xmmword_21F8A5800;
    v79 = 0x4039000000000000;
    v7 = [objc_alloc(MEMORY[0x277D26728]) initWithShadowAttributes:&v77 maskCornerRadius:25.0];
    shadowView = v5->_shadowView;
    v5->_shadowView = v7;

    [(SBRingerPillView *)v5 addSubview:v5->_shadowView];
    v9 = [MEMORY[0x277D26718] materialViewWithRecipe:54 options:8];
    materialView = v5->_materialView;
    v5->_materialView = v9;

    [(MTMaterialView *)v5->_materialView _setContinuousCornerRadius:25.0];
    [(SBRingerPillView *)v5 addSubview:v5->_materialView];
    v11 = [(MTMaterialView *)v5->_materialView visualStylingProviderForCategory:2];
    stylingProvider = v5->_stylingProvider;
    v5->_stylingProvider = v11;

    v13 = objc_alloc(MEMORY[0x277CF0D48]);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v13 initWithPackageName:@"Mute" inBundle:v14];
    glyphView = v5->_glyphView;
    v5->_glyphView = v15;

    [(SBRingerPillView *)v5 addSubview:v5->_glyphView];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v17 = v5;
    publishedObjectNames = [(BSUICAPackageView *)v5->_glyphView publishedObjectNames];
    v19 = [publishedObjectNames countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (!v19)
    {
      v72 = 0;
      v21 = 0;
      goto LABEL_26;
    }

    v20 = v19;
    v72 = 0;
    v21 = 0;
    v22 = *v74;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(publishedObjectNames);
        }

        v24 = *(*(&v73 + 1) + 8 * i);
        if ([v24 hasSuffix:@"-tint-shape"])
        {
          v25 = [(BSUICAPackageView *)v17->_glyphView publishedObjectWithName:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v21;
            if (!v21)
            {
              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v21 = v26;
LABEL_20:
            [v26 addObject:v25];
          }
        }

        else
        {
          if (![v24 hasSuffix:@"-tint-bg"])
          {
            continue;
          }

          v25 = [(BSUICAPackageView *)v17->_glyphView publishedObjectWithName:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v72;
            if (!v72)
            {
              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v72 = v26;
            goto LABEL_20;
          }
        }
      }

      v20 = [publishedObjectNames countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (!v20)
      {
LABEL_26:

        v27 = [v72 copy];
        v5 = v17;
        glyphTintBackgroundLayers = v17->_glyphTintBackgroundLayers;
        v17->_glyphTintBackgroundLayers = v27;

        v29 = [v21 copy];
        glyphTintShapeLayers = v17->_glyphTintShapeLayers;
        v17->_glyphTintShapeLayers = v29;

        _titleLabelColor = [(SBRingerPillView *)v17 _titleLabelColor];
        v32 = objc_alloc_init(MEMORY[0x277D756B8]);
        silentModeLabel = v5->_silentModeLabel;
        v5->_silentModeLabel = v32;

        v34 = v5->_silentModeLabel;
        defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
        v36 = *MEMORY[0x277D76968];
        v37 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:4];
        [(UILabel *)v34 setFont:v37];

        [(UILabel *)v5->_silentModeLabel setTextColor:_titleLabelColor];
        v38 = v5->_silentModeLabel;
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v40 = [mainBundle localizedStringForKey:@"RINGER_SILENT" value:&stru_283094718 table:@"SpringBoard"];
        [(UILabel *)v38 setText:v40];

        [(SBRingerPillView *)v5 addSubview:v5->_silentModeLabel];
        v41 = objc_alloc_init(MEMORY[0x277D756B8]);
        ringerLabel = v5->_ringerLabel;
        v5->_ringerLabel = v41;

        v43 = v5->_ringerLabel;
        defaultFontProvider2 = [MEMORY[0x277CF0D60] defaultFontProvider];
        v45 = [defaultFontProvider2 preferredFontForTextStyle:v36 hiFontStyle:4];
        [(UILabel *)v43 setFont:v45];

        [(UILabel *)v5->_ringerLabel setTextColor:_titleLabelColor];
        v46 = v5->_ringerLabel;
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v48 = [mainBundle2 localizedStringForKey:@"RINGER_VOLUME" value:&stru_283094718 table:?];
        [(UILabel *)v46 setText:v48];

        [(SBRingerPillView *)v5 addSubview:v5->_ringerLabel];
        v49 = objc_alloc_init(MEMORY[0x277D756B8]);
        onLabel = v5->_onLabel;
        v5->_onLabel = v49;

        v51 = v5->_onLabel;
        defaultFontProvider3 = [MEMORY[0x277CF0D60] defaultFontProvider];
        v53 = [defaultFontProvider3 preferredFontForTextStyle:v36 hiFontStyle:4];
        [(UILabel *)v51 setFont:v53];

        v54 = v5->_onLabel;
        _subtitleLabelColor = [(SBRingerPillView *)v5 _subtitleLabelColor];
        [(UILabel *)v54 setTextColor:_subtitleLabelColor];

        v56 = v5->_onLabel;
        mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
        v58 = [mainBundle3 localizedStringForKey:@"RINGER_ON" value:&stru_283094718 table:@"SpringBoard"];
        [(UILabel *)v56 setText:v58];

        [(SBRingerPillView *)v5 addSubview:v5->_onLabel];
        v59 = objc_alloc_init(MEMORY[0x277D756B8]);
        offLabel = v5->_offLabel;
        v5->_offLabel = v59;

        v61 = v5->_offLabel;
        defaultFontProvider4 = [MEMORY[0x277CF0D60] defaultFontProvider];
        v63 = [defaultFontProvider4 preferredFontForTextStyle:v36 hiFontStyle:4];
        [(UILabel *)v61 setFont:v63];

        v64 = v5->_offLabel;
        _subtitleLabelColor2 = [(SBRingerPillView *)v5 _subtitleLabelColor];
        [(UILabel *)v64 setTextColor:_subtitleLabelColor2];

        v66 = v5->_offLabel;
        mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
        v68 = [mainBundle4 localizedStringForKey:@"RINGER_OFF" value:&stru_283094718 table:@"SpringBoard"];
        [(UILabel *)v66 setText:v68];

        [(SBRingerPillView *)v5 addSubview:v5->_offLabel];
        v69 = objc_alloc_init(SBRingerVolumeSliderView);
        slider = v5->_slider;
        v5->_slider = v69;

        [(SBRingerVolumeSliderView *)v5->_slider setValue:0.7];
        [(SBRingerPillView *)v5 addSubview:v5->_slider];

        return v5;
      }
    }
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v24 = *MEMORY[0x277D85DE8];
  ringerLabel = self->_ringerLabel;
  v22[0] = self->_silentModeLabel;
  v22[1] = ringerLabel;
  onLabel = self->_onLabel;
  offLabel = self->_offLabel;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22[2] = onLabel;
  v22[3] = offLabel;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{4, 0}];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * i) sizeThatFits:{width, height}];
        if (v14 >= v12)
        {
          v12 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
    v15 = v12 + 100.0;
  }

  else
  {
    v15 = 100.0;
  }

  v16 = fmax(v15, 196.0);
  v17 = 50.0;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v110 = *MEMORY[0x277D85DE8];
  v104.receiver = self;
  v104.super_class = SBRingerPillView;
  [(SBRingerPillView *)&v104 layoutSubviews];
  [(SBRingerPillView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  traitCollection = [(SBRingerPillView *)self traitCollection];
  [traitCollection displayScale];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  ringerLabel = self->_ringerLabel;
  v108[0] = self->_silentModeLabel;
  v108[1] = ringerLabel;
  offLabel = self->_offLabel;
  v108[2] = self->_onLabel;
  v108[3] = offLabel;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:4];
  v15 = [v14 countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v101;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v101 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v100 + 1) + 8 * i) sizeToFit];
      }

      v16 = [v14 countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v16);
  }

  [(SBRingerVolumeSliderView *)self->_slider setSize:v8 + -100.0 + 2.0, 5.0];
  [(BSUICAPackageView *)self->_glyphView setSize:35.0, 35.0];
  systemRedColor = 0;
  state = self->_state;
  v90 = v6;
  v91 = v4;
  v88 = v10;
  v89 = v8;
  if (state <= 2)
  {
    if (state == 1)
    {
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      v21 = @"silent";
      v87 = 0.25;
      goto LABEL_19;
    }

    if (state == 2)
    {
      systemRedColor = [(SBRingerPillView *)self _titleLabelColor];
      v21 = @"ringer";
      v87 = 0.2155;
      goto LABEL_19;
    }

LABEL_15:
    v21 = 0;
    v22 = 0.0;
    goto LABEL_18;
  }

  if (state == 3)
  {
    systemRedColor = [(SBRingerPillView *)self _titleLabelColor];
    v21 = @"ringer";
    v22 = 0.2155;
    goto LABEL_18;
  }

  if (state != 4)
  {
    goto LABEL_15;
  }

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v21 = @"silent";
  v22 = 0.25;
LABEL_18:
  v87 = v22;
LABEL_19:
  [(UILabel *)self->_silentModeLabel frame];
  UIRectCenteredAboutPointScale();
  v85 = v24;
  v86 = v23;
  v83 = v26;
  v84 = v25;
  [(UILabel *)self->_ringerLabel frame];
  UIRectCenteredAboutPointScale();
  v81 = v28;
  v82 = v27;
  v79 = v30;
  v80 = v29;
  [(UILabel *)self->_onLabel frame];
  UIRectCenteredAboutPointScale();
  v77 = v32;
  v78 = v31;
  v75 = v34;
  v76 = v33;
  [(UILabel *)self->_offLabel frame];
  UIRectCenteredAboutPointScale();
  v73 = v36;
  v74 = v35;
  v71 = v38;
  v72 = v37;
  [(SBRingerVolumeSliderView *)self->_slider frame];
  UIRectCenteredAboutPointScale();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [(BSUICAPackageView *)self->_glyphView frame];
  UIRectCenteredAboutPointScale();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [(UILabel *)self->_silentModeLabel setFrame:v86, v85, v84, v83];
  [(UILabel *)self->_ringerLabel setFrame:v82, v81, v80, v79];
  [(UILabel *)self->_onLabel setFrame:v78, v77, v76, v75];
  [(UILabel *)self->_offLabel setFrame:v74, v73, v72, v71];
  [(SBRingerVolumeSliderView *)self->_slider setFrame:v40, v42, v44, v46];
  [(BSUICAPackageView *)self->_glyphView setFrame:v48, v50, v52, v54];
  [(MTMaterialView *)self->_materialView setFrame:v91, v90, v89, v88];
  shadowView = self->_shadowView;
  [(MTShadowView *)shadowView frameWithContentWithFrame:v91, v90, v89, v88];
  [(MTShadowView *)shadowView setFrame:?];
  [(SBRingerPillView *)self _setGlyphTintColor:systemRedColor animationDuration:v87];
  [(BSUICAPackageView *)self->_glyphView setState:v21];
  v56 = self->_ringerLabel;
  silentModeLabel = self->_silentModeLabel;
  v107[0] = self->_glyphView;
  v107[1] = v56;
  onLabel = self->_onLabel;
  v59 = self->_offLabel;
  v107[2] = silentModeLabel;
  v107[3] = onLabel;
  slider = self->_slider;
  v107[4] = v59;
  v107[5] = slider;
  [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:6];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v61 = v99 = 0u;
  v62 = [v61 countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v97;
    do
    {
      for (j = 0; j != v63; ++j)
      {
        if (*v97 != v64)
        {
          objc_enumerationMutation(v61);
        }

        [*(*(&v96 + 1) + 8 * j) setAlpha:0.0];
      }

      v63 = [v61 countByEnumeratingWithState:&v96 objects:v106 count:16];
    }

    while (v63);
  }

  v66 = [(SBRingerPillView *)self _visibleViewsForState:self->_state];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v67 = [v66 countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v93;
    do
    {
      for (k = 0; k != v68; ++k)
      {
        if (*v93 != v69)
        {
          objc_enumerationMutation(v66);
        }

        [*(*(&v92 + 1) + 8 * k) setAlpha:1.0];
      }

      v68 = [v66 countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v68);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = SBRingerPillView;
  [(SBRingerPillView *)&v8 traitCollectionDidChange:change];
  glyphTintColor = self->_glyphTintColor;
  if (glyphTintColor)
  {
    traitCollection = [(SBRingerPillView *)self traitCollection];
    v6 = [(UIColor *)glyphTintColor resolvedColorWithTraitCollection:traitCollection];
    _currentAnimationSettings = [MEMORY[0x277D75D18] _currentAnimationSettings];
    [(SBRingerPillView *)self _updateGlyphWithStaticColor:v6 animationSettings:_currentAnimationSettings];
  }
}

- (id)_visibleViewsForState:(unint64_t)state
{
  v3 = 0;
  v11[3] = *MEMORY[0x277D85DE8];
  if (state > 2)
  {
    if (state == 3)
    {
      ringerLabel = self->_ringerLabel;
      v4 = &OBJC_IVAR___SBRingerPillView__slider;
      p_ringerLabel = &ringerLabel;
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_11;
      }

      v8 = self->_ringerLabel;
      v4 = &OBJC_IVAR___SBRingerPillView__slider;
      p_ringerLabel = &v8;
    }
  }

  else if (state == 1)
  {
    v11[0] = self->_onLabel;
    v4 = &OBJC_IVAR___SBRingerPillView__silentModeLabel;
    p_ringerLabel = v11;
  }

  else
  {
    if (state != 2)
    {
      goto LABEL_11;
    }

    offLabel = self->_offLabel;
    v4 = &OBJC_IVAR___SBRingerPillView__silentModeLabel;
    p_ringerLabel = &offLabel;
  }

  glyphView = self->_glyphView;
  p_ringerLabel[1] = *(&self->super.super.super.isa + *v4);
  p_ringerLabel[2] = glyphView;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
LABEL_11:

  return v3;
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(SBRingerPillView *)self setNeedsLayout];
  }
}

- (void)_setGlyphTintColor:(id)color animationDuration:(double)duration
{
  colorCopy = color;
  glyphTintColor = self->_glyphTintColor;
  if (glyphTintColor != colorCopy)
  {
    v16 = colorCopy;
    v9 = [(UIColor *)glyphTintColor isEqual:colorCopy];
    colorCopy = v16;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_glyphTintColor, color);
      v10 = MEMORY[0x277CF0B70];
      v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
      v12 = [v10 settingsWithDuration:v11 timingFunction:duration];

      v13 = self->_glyphTintColor;
      traitCollection = [(SBRingerPillView *)self traitCollection];
      v15 = [(UIColor *)v13 resolvedColorWithTraitCollection:traitCollection];
      [(SBRingerPillView *)self _updateGlyphWithStaticColor:v15 animationSettings:v12];

      colorCopy = v16;
    }
  }
}

- (void)_updateGlyphWithStaticColor:(id)color animationSettings:(id)settings
{
  v41 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  settingsCopy = settings;
  v29 = settingsCopy;
  if (settingsCopy)
  {
    v8 = [MEMORY[0x277CF0D38] factoryWithSettings:settingsCopy];
  }

  else
  {
    v8 = 0;
  }

  v30 = colorCopy;
  cGColor = [colorCopy CGColor];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  v12 = self->_glyphTintShapeLayers;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v8 _basicAnimationForView:0 withKeyPath:@"fillColor"];
        v19 = v18;
        if (v18)
        {
          [v18 setToValue:cGColor];
          [v17 addAnimation:v19 forKey:uUIDString];
        }

        [v17 setFillColor:cGColor];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = selfCopy->_glyphTintBackgroundLayers;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * j);
        v26 = [v8 _basicAnimationForView:0 withKeyPath:@"backgroundColor"];
        v27 = v26;
        if (v26)
        {
          [v26 setToValue:cGColor];
          [v25 addAnimation:v27 forKey:uUIDString];
        }

        [v25 setBackgroundColor:cGColor];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }
}

- (id)_titleLabelColor
{
  if (self->_activatedForPreviewing)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

- (id)_subtitleLabelColor
{
  if (self->_activatedForPreviewing)
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }
  v2 = ;

  return v2;
}

@end