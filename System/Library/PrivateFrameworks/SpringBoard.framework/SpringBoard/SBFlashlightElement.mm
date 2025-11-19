@interface SBFlashlightElement
- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4;
- (BOOL)overridesConcentricPaddingForView:(id)a3 inLayoutMode:(int64_t)a4;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (NSString)elementIdentifier;
- (SBFlashlightElement)initWithStyle:(unint64_t)a3 state:(unint64_t)a4;
- (id)_textColorForState:(unint64_t)a3;
- (id)_titleColorForStyle:(unint64_t)a3;
- (id)_titleTextForStyle:(unint64_t)a3;
- (id)_trailingTextForState:(unint64_t)a3;
- (void)_configureCustomViewsIfNecessary;
- (void)_layoutHuggingObstructionForLabel:(id)a3 x:(double)a4 width:(double)a5 maxLabelHeight:(double)a6;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation SBFlashlightElement

- (SBFlashlightElement)initWithStyle:(unint64_t)a3 state:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v8 = objc_alloc(MEMORY[0x277D67DE8]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 initWithPackageName:@"Flashlight-Leading-D83" inBundle:v9];

  [v10 setIntrinsicPackageSize:{36.6666667, 36.6666667}];
  v11 = @"OFF";
  if (a4 == 1)
  {
    v11 = @"ON";
  }

  if (a4 == 2)
  {
    v12 = @"unavailable";
  }

  else
  {
    v12 = v11;
  }

  [v10 setState:v12 animated:0];
  [v7 setLeadingContentViewProvider:v10];
  objc_storeStrong(&self->_leadingPackageViewProvider, v10);
  v13 = objc_alloc(MEMORY[0x277D67E58]);
  v14 = [(SBFlashlightElement *)self _trailingTextForState:a4];
  v15 = [v13 initWithText:v14 style:4];

  v16 = [(SBFlashlightElement *)self _textColorForState:a4];
  [v15 setContentColor:v16];

  [v7 setTrailingContentViewProvider:v15];
  objc_storeStrong(&self->_trailingTextProvider, v15);
  self->_style = a3;
  self->_state = a4;
  v23.receiver = self;
  v23.super_class = SBFlashlightElement;
  v17 = [(SBSystemApertureProvidedContentElement *)&v23 initWithIdentifier:self contentProvider:v7];
  v18 = v17;
  if (v17)
  {
    [(SBSystemApertureProvidedContentElement *)v17 setMinimumSupportedLayoutMode:1];
    [(SBSystemApertureProvidedContentElement *)v18 setMaximumSupportedLayoutMode:3];
    [(SBSystemApertureProvidedContentElement *)v18 setPreferredLayoutMode:2];
    v19 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
    [v19 sensorRegionSize];
    v18->_sensorObstructionHeight = v20;
    [v19 minimumExpandedSize];
    v18->_expandedHeight = v21;
  }

  return v18;
}

- (void)setState:(unint64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = @"OFF";
    if (a3 == 1)
    {
      v5 = @"ON";
    }

    if (a3 == 2)
    {
      v5 = @"unavailable";
    }

    v6 = v5;
    v7 = [(SBFlashlightElement *)self leadingPackageViewProvider];
    [v7 setState:v6 animated:1];

    v8 = [(SBFlashlightElement *)self expandedLeadingPackageButton];
    [v8 setState:v6 animated:1];

    v9 = [(SBFlashlightElement *)self trailingTextProvider];
    v10 = [(SBFlashlightElement *)self _trailingTextForState:a3];
    v11 = [(SBFlashlightElement *)self _textColorForState:a3];
    [v9 swapInText:v10 textColor:v11];
    v12 = [(SBFlashlightElement *)self expandedTrailingLabel];
    [v12 setText:v10];
    [v12 setTextColor:v11];
    if ([(SBSystemApertureProvidedContentElement *)self layoutMode]== 3)
    {
      v13 = [v12 superview];
      if (v13)
      {
        [(SBFlashlightElement *)self layoutHostContainerViewDidLayoutSubviews:v13];
      }
    }

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = @"SBSystemApertureNotificationUserInfoElementKey";
    v17[0] = self;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v14 postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v15];
  }
}

- (NSString)elementIdentifier
{
  if (self->_style)
  {
    return @"Flashlight Unavailable";
  }

  else
  {
    return @"Flashlight";
  }
}

- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4
{
  leadingPackageViewProvider = self->_leadingPackageViewProvider;
  v5 = a3;
  v6 = [(SBUISystemApertureCAPackageContentProvider *)leadingPackageViewProvider providedView];

  return v6 == v5;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  top = result.top;
  if (a3 == 3)
  {
    trailing = a5.trailing;
    leading = a5.leading;
    v9 = [(SBSystemApertureProvidedContentElement *)self layoutHost:result.top];
    [v9 edgeOutsetsForSize:{1.79769313e308, self->_expandedHeight}];
    bottom = v10;

    result.leading = leading;
    result.trailing = trailing;
  }

  else
  {
    bottom = result.bottom;
  }

  v12 = top;
  v13 = bottom;
  result.bottom = v13;
  result.top = v12;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3
{
  v44 = a3;
  v4 = [(SBSystemApertureProvidedContentElement *)self layoutMode];
  v5 = [(SBFlashlightElement *)self expandedLeadingPackageButton];
  v6 = v5;
  v7 = 1.0;
  if (v4 == 3)
  {
    v8 = [v5 superview];

    if (v8)
    {
      v9 = [v44 effectiveUserInterfaceLayoutDirection];
      [v44 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v44 traitCollection];
      [v18 displayScale];

      v19 = [(SBFlashlightElement *)self expandedLeadingPackageButton];
      [v19 intrinsicContentSize];
      v21 = v20;

      v46.origin.x = v11;
      v43 = v13;
      v46.origin.y = v13;
      v46.size.width = v15;
      v46.size.height = v17;
      CGRectGetHeight(v46);
      UIRoundToScale();
      v23 = v22;
      if (v9 == 1)
      {
        v47.origin.x = v11;
        v47.size.width = v15;
        v47.origin.y = v13;
        v47.size.height = v17;
        CGRectGetWidth(v47);
      }

      BSPointRoundForScale();
      [v6 setFrame:?];
      v24 = [(SBFlashlightElement *)self expandedTrailingLabel];
      v25 = v23 + v21 + v23;
      v48.origin.x = v11;
      v48.origin.y = v13;
      v48.size.width = v15;
      v48.size.height = v17;
      CGRectGetHeight(v48);
      v26 = v11;
      v27 = [v24 font];
      [v27 lineHeight];
      UIFloorToScale();
      v29 = v28;

      v49.origin.x = v11;
      v49.origin.y = v13;
      v49.size.width = v15;
      v49.size.height = v17;
      rect_16 = v25;
      v30 = CGRectGetWidth(v49) - v23 - v29 - v25;
      rect = v26;
      v50.origin.x = v26;
      v50.origin.y = v13;
      v50.size.width = v15;
      v50.size.height = v17;
      v31 = CGRectGetHeight(v50) - self->_sensorObstructionHeight + -12.0;
      [v24 sizeThatFits:{v30, v31}];
      BSSizeCeilForScale();
      if (v30 - v32 <= 0.0)
      {
        v33 = v30;
      }

      else
      {
        v33 = v32;
      }

      v7 = 0.0;
      if (v30 - v32 <= 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v30 - v32;
      }

      if (v9 != 1)
      {
        v51.origin.x = rect;
        v51.size.width = v15;
        v51.origin.y = v43;
        v51.size.height = v17;
        v29 = CGRectGetWidth(v51) - v33 - v29;
      }

      [(SBFlashlightElement *)self _layoutHuggingObstructionForLabel:v24 x:v29 width:v33 maxLabelHeight:v31];
      v35 = [(SBFlashlightElement *)self expandedTitleLabel];
      v36 = v23 + v33 + v29;
      if (v9 != 1)
      {
        v36 = rect_16;
      }

      [(SBFlashlightElement *)self _layoutHuggingObstructionForLabel:v35 x:v36 width:v34 maxLabelHeight:v31];
    }

    else
    {
      v7 = 0.0;
    }
  }

  v37 = [(SBFlashlightElement *)self leadingPackageViewProvider];
  v38 = [v37 providedView];
  [v38 setAlpha:v7];

  v39 = [(SBFlashlightElement *)self trailingTextProvider];
  v40 = [v39 providedView];
  [v40 setAlpha:v7];
}

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  if ([(SBSystemApertureProvidedContentElement *)self layoutMode]== 3)
  {
    [(SBFlashlightElement *)self _configureCustomViewsIfNecessary];
    v11 = [(SBFlashlightElement *)self expandedLeadingPackageButton];
    [v9 addSubview:v11];

    v12 = [(SBFlashlightElement *)self expandedTitleLabel];
    [v9 addSubview:v12];

    v13 = [(SBFlashlightElement *)self expandedTrailingLabel];
    [v9 addSubview:v13];
  }

  v14.receiver = self;
  v14.super_class = SBFlashlightElement;
  [(SBSystemApertureProvidedContentElement *)&v14 contentProviderWillTransitionToSize:v9 inContainerView:v10 transitionCoordinator:width, height];
}

- (BOOL)overridesConcentricPaddingForView:(id)a3 inLayoutMode:(int64_t)a4
{
  leadingPackageViewProvider = self->_leadingPackageViewProvider;
  v5 = a3;
  v6 = [(SBUISystemApertureCAPackageContentProvider *)leadingPackageViewProvider providedView];

  return v6 == v5;
}

- (id)_trailingTextForState:(unint64_t)a3
{
  if (!a3)
  {
    v3 = @"FLASHLIGHT_OFF";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = @"FLASHLIGHT_ON";
LABEL_5:
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_283094718 table:@"SpringBoard"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_textColorForState:(unint64_t)a3
{
  if (a3 == 2)
  {
LABEL_4:
    self = [MEMORY[0x277D75348] sbui_inactiveColor];
    goto LABEL_6;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  self = [MEMORY[0x277D75348] colorWithRed:0.835294118 green:0.823529412 blue:1.0 alpha:1.0];
LABEL_6:

  return self;
}

- (id)_titleTextForStyle:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = @"FLASHLIGHT_UNAVAILABLE_TITLE";
  }

  else
  {
    v4 = @"FLASHLIGHT_TITLE";
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v5 localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];

LABEL_6:

  return v3;
}

- (id)_titleColorForStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    self = [MEMORY[0x277D75348] sbui_inactiveColor];
  }

  else if (!a3)
  {
    self = [MEMORY[0x277D75348] whiteColor];
  }

  return self;
}

- (void)_configureCustomViewsIfNecessary
{
  if (!self->_expandedLeadingPackageButton)
  {
    state = self->_state;
    style = self->_style;
    v5 = objc_alloc(MEMORY[0x277D67DE8]);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v5 initWithPackageName:@"Flashlight-Leading-Expanded-D83" inBundle:v6];

    [v7 setIntrinsicPackageSize:{73.3333333, 73.3333333}];
    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x277D67DE0]);
    v9 = @"OFF";
    if (state == 1)
    {
      v9 = @"ON";
    }

    if (state == 2)
    {
      v9 = @"unavailable";
    }

    v10 = v9;
    v11 = MEMORY[0x277D750C8];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __55__SBFlashlightElement__configureCustomViewsIfNecessary__block_invoke;
    v33 = &unk_2783ADB30;
    objc_copyWeak(&v34, &location);
    v12 = [v11 actionWithHandler:&v30];
    v13 = [v8 initWithPackageProvider:v7 state:v10 primaryAction:{v12, v30, v31, v32, v33}];

    objc_storeStrong(&self->_expandedLeadingPackageButton, v13);
    v14 = MEMORY[0x277D75C80];
    v15 = SBUISystemApertureDefaultContentSizeCategory();
    v16 = [v14 traitCollectionWithPreferredContentSizeCategory:v15];

    v17 = [MEMORY[0x277D74300] sbui_systemAperturePreferredFontForTextStyle:0 compatibleWithTraitCollection:v16];
    v18 = objc_alloc(MEMORY[0x277D756B8]);
    v19 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 8);
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v22 = *(MEMORY[0x277CBF3A0] + 24);
    v23 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], v20, v21, v22}];
    v24 = [(SBFlashlightElement *)self _titleTextForStyle:style];
    [v23 setText:v24];

    v25 = [(SBFlashlightElement *)self _titleColorForStyle:style];
    [v23 setTextColor:v25];

    [v23 setFont:v17];
    objc_storeStrong(&self->_expandedTitleLabel, v23);
    v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v19, v20, v21, v22}];
    v27 = [(SBFlashlightElement *)self _trailingTextForState:state];
    [(UILabel *)v26 setText:v27];

    v28 = [(SBFlashlightElement *)self _textColorForState:state];
    [(UILabel *)v26 setTextColor:v28];

    [(UILabel *)v26 setFont:v17];
    expandedTrailingLabel = self->_expandedTrailingLabel;
    self->_expandedTrailingLabel = v26;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

void __55__SBFlashlightElement__configureCustomViewsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleExpandedLeadingButtonAction];
}

- (void)_layoutHuggingObstructionForLabel:(id)a3 x:(double)a4 width:(double)a5 maxLabelHeight:(double)a6
{
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = a3;
  [v11 setFrame:{a4, v9, a5, a6}];
  v10 = [v11 traitCollection];
  [v10 displayScale];

  [v11 _tightBoundingRectOfFirstLine];
  UICeilToScale();
  BSRectRoundForScale();
  [v11 setFrame:?];
}

@end