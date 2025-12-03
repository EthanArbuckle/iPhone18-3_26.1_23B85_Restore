@interface SearchUIButtonItemView
- (BOOL)useHierarchicalColorRendering;
- (CGSize)iconBackgroundViewSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SearchUIButtonItemView)init;
- (SearchUIButtonItemViewDelegate)delegate;
- (UIFont)defaultButtonFont;
- (double)buttonAnimationOutDelay;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (double)minimumIconPadding;
- (double)spacingBetweenImageAndText;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)createContentView;
- (id)resolvedButtonFont;
- (id)resolvedIconFont;
- (int64_t)symbolScale;
- (void)animateIconInToSFImage:(id)image;
- (void)animateIconOutToSFImage:(id)image;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonAppearance:(id)appearance;
- (void)setButtonFont:(id)font;
- (void)setButtonTitle:(id)title;
- (void)setEnabled:(BOOL)enabled;
- (void)setIconFont:(id)font;
- (void)setIsCompact:(BOOL)compact;
- (void)setSfImage:(id)image animateTransition:(BOOL)transition symbolTransition:(id)symbolTransition;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionIconToSFImage:(id)image;
- (void)updateFonts;
- (void)updateProminences;
@end

@implementation SearchUIButtonItemView

- (SearchUIButtonItemView)init
{
  v3 = [objc_opt_class() buttonWithType:1];

  if (v3)
  {
    createContentView = [(SearchUIButtonItemView *)v3 createContentView];
    [(SearchUIButtonItemView *)v3 setButtonContentBoxView:createContentView];

    buttonContentBoxView = [(SearchUIButtonItemView *)v3 buttonContentBoxView];
    [buttonContentBoxView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

    [(SearchUIButtonItemView *)v3 setAllowsAnimation:1];
    v6 = objc_opt_new();
    [(SearchUIButtonItemView *)v3 setImage:v6 forState:0];

    imageView = [(SearchUIButtonItemView *)v3 imageView];
    buttonContentBoxView2 = [(SearchUIButtonItemView *)v3 buttonContentBoxView];
    [imageView addSubview:buttonContentBoxView2];

    imageView2 = [(SearchUIButtonItemView *)v3 imageView];
    layer = [imageView2 layer];
    [layer setAllowsGroupOpacity:0];

    v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v3];
    [(SearchUIButtonItemView *)v3 setContextPreviewInteraction:v11];
    [(SearchUIButtonItemView *)v3 addInteraction:v11];
    layer2 = [(SearchUIButtonItemView *)v3 layer];
    [layer2 setAllowsGroupOpacity:0];

    buttonContentBoxView3 = [(SearchUIButtonItemView *)v3 buttonContentBoxView];
    [SearchUIAutoLayout fillContainerWithView:buttonContentBoxView3];
  }

  return v3;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v20 layoutSubviews];
  [(SearchUIButtonItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(SearchUIButtonItemView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];

  backgroundView = [(SearchUIButtonItemView *)self backgroundView];
  [(SearchUIButtonItemView *)self cornerRadius];
  v14 = v13;
  useContinuousCorners = [(SearchUIButtonItemView *)self useContinuousCorners];
  v16 = *MEMORY[0x1E69796E0];
  if (useContinuousCorners)
  {
    v17 = *MEMORY[0x1E69796E8];
  }

  else
  {
    v17 = *MEMORY[0x1E69796E0];
  }

  [backgroundView tlks_setCornerRadius:v17 withStyle:v14];

  iconBackgroundView = [(SearchUIButtonItemView *)self iconBackgroundView];
  [(SearchUIButtonItemView *)self iconBackgroundViewSize];
  [iconBackgroundView tlks_setCornerRadius:v16 withStyle:v19 * 0.5];
}

- (id)createContentView
{
  v38[2] = *MEMORY[0x1E69E9840];
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    v3 = objc_opt_new();
    [(SearchUIButtonItemView *)self setBackgroundView:v3];
  }

  drawsIconBackgroundPlatter = [(SearchUIButtonItemView *)self drawsBackgroundPlatter]|| [(SearchUIButtonItemView *)self drawsIconBackgroundPlatter];
  v5 = objc_opt_new();
  [(SearchUIButtonItemView *)self setIconView:v5];

  iconView = [(SearchUIButtonItemView *)self iconView];
  [iconView setUseButtonColoring:1];

  if (drawsIconBackgroundPlatter)
  {
    v7 = 4;
  }

  else
  {
    v7 = 6;
  }

  iconView2 = [(SearchUIButtonItemView *)self iconView];
  [iconView2 setSymbolWeight:v7];

  iconView3 = [(SearchUIButtonItemView *)self iconView];
  [iconView3 setHidden:1];

  iconView4 = [(SearchUIButtonItemView *)self iconView];
  [SearchUIAutoLayout requireIntrinsicSizeForView:iconView4];

  iconView5 = [(SearchUIButtonItemView *)self iconView];
  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter]&& ![(SearchUIButtonItemView *)self shouldAvoidBackgroundView])
  {
    v12 = objc_opt_new();
    [(SearchUIButtonItemView *)self setIconBackgroundView:v12];

    v13 = objc_alloc(MEMORY[0x1E698B718]);
    iconBackgroundView = [(SearchUIButtonItemView *)self iconBackgroundView];
    v38[0] = iconBackgroundView;
    iconView6 = [(SearchUIButtonItemView *)self iconView];
    v38[1] = iconView6;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v17 = [v13 initWithArrangedSubviews:v16];

    iconView7 = [(SearchUIButtonItemView *)self iconView];
    [v17 setAlignment:3 forView:iconView7 inAxis:0];

    iconView8 = [(SearchUIButtonItemView *)self iconView];
    [v17 setAlignment:3 forView:iconView8 inAxis:1];

    [(SearchUIButtonItemView *)self setIconBoxView:v17];
    iconBoxView = [(SearchUIButtonItemView *)self iconBoxView];

    iconView5 = iconBoxView;
  }

  v21 = objc_opt_new();
  [(SearchUIButtonItemView *)self setTlkTitleLabel:v21];

  tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel setUseButtonColoring:1];

  if (drawsIconBackgroundPlatter)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  tlkTitleLabel2 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel2 setNumberOfLines:v23];

  tlkTitleLabel3 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel3 setHidden:1];

  if (drawsIconBackgroundPlatter)
  {
    v37[0] = iconView5;
    tlkTitleLabel4 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    v37[1] = tlkTitleLabel4;
    v27 = v37;
  }

  else
  {
    tlkTitleLabel4 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    v36[0] = tlkTitleLabel4;
    v36[1] = iconView5;
    v27 = v36;
  }

  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  v29 = [objc_alloc(MEMORY[0x1E698B730]) initWithArrangedSubviews:v28];
  [v29 setAlignment:3];
  [v29 setLayoutMarginsRelativeArrangement:drawsIconBackgroundPlatter];
  [v29 setAxis:{-[SearchUIButtonItemView drawsIconBackgroundPlatter](self, "drawsIconBackgroundPlatter")}];
  [(SearchUIButtonItemView *)self setImageViewAndLabelStackView:v29];
  [(SearchUIButtonItemView *)self updateProminences];
  [(SearchUIButtonItemView *)self setIsCompact:0];
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    backgroundView = [(SearchUIButtonItemView *)self backgroundView];
    v35 = backgroundView;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v32 = [v31 arrayByAddingObject:v29];
  }

  else
  {
    v32 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v29];
  }

  v33 = [objc_alloc(MEMORY[0x1E698B718]) initWithArrangedSubviews:v32];
  [v33 setAlignment:3 forView:v29 inAxis:0];
  [v33 setAlignment:3 forView:v29 inAxis:1];

  return v33;
}

- (void)setIsCompact:(BOOL)compact
{
  self->_isCompact = compact;
  buttonTitle = [(SearchUIButtonItemView *)self buttonTitle];
  [(SearchUIButtonItemView *)self setButtonTitle:buttonTitle];

  symbolScale = [(SearchUIButtonItemView *)self symbolScale];
  iconView = [(SearchUIButtonItemView *)self iconView];
  [iconView setSymbolScale:symbolScale];

  [(SearchUIButtonItemView *)self updateFonts];

  [(SearchUIButtonItemView *)self invalidateIntrinsicContentSize];
}

- (UIFont)defaultButtonFont
{
  v2 = MEMORY[0x1E69D9138];
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v4 = MEMORY[0x1E69DDD28];
  if (!isMacOS)
  {
    v4 = MEMORY[0x1E69DDD80];
  }

  v5 = *v4;
  v6 = *MEMORY[0x1E69DB980];

  return [v2 cachedFontForTextStyle:v5 isShort:0 fontWeight:v6];
}

- (void)setIconFont:(id)font
{
  objc_storeStrong(&self->_iconFont, font);

  [(SearchUIButtonItemView *)self updateFonts];
}

- (void)setButtonFont:(id)font
{
  objc_storeStrong(&self->_buttonFont, font);

  [(SearchUIButtonItemView *)self updateFonts];
}

- (id)resolvedIconFont
{
  iconFont = [(SearchUIButtonItemView *)self iconFont];
  v4 = iconFont;
  if (iconFont)
  {
    v5 = iconFont;
  }

  else
  {
    buttonFont = [(SearchUIButtonItemView *)self buttonFont];
    v7 = buttonFont;
    if (buttonFont)
    {
      v5 = buttonFont;
    }

    else
    {
      defaultIconFont = [(SearchUIButtonItemView *)self defaultIconFont];
      v9 = defaultIconFont;
      if (defaultIconFont)
      {
        defaultButtonFont = defaultIconFont;
      }

      else
      {
        defaultButtonFont = [(SearchUIButtonItemView *)self defaultButtonFont];
      }

      v5 = defaultButtonFont;
    }
  }

  return v5;
}

- (id)resolvedButtonFont
{
  buttonFont = [(SearchUIButtonItemView *)self buttonFont];
  v4 = buttonFont;
  if (buttonFont)
  {
    defaultButtonFont = buttonFont;
  }

  else
  {
    defaultButtonFont = [(SearchUIButtonItemView *)self defaultButtonFont];
  }

  v6 = defaultButtonFont;

  return v6;
}

- (void)updateFonts
{
  resolvedButtonFont = [(SearchUIButtonItemView *)self resolvedButtonFont];
  resolvedIconFont = [(SearchUIButtonItemView *)self resolvedIconFont];
  iconView = [(SearchUIButtonItemView *)self iconView];
  [iconView setSymbolFont:resolvedIconFont];

  tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel setFont:resolvedButtonFont];

  [(SearchUIButtonItemView *)self horizontalPadding];
  v7 = v6;
  [MEMORY[0x1E69D91A8] scaledValueForValue:resolvedButtonFont withFont:self view:?];
  v9 = v8;
  [MEMORY[0x1E69D91A8] scaledValueForValue:resolvedButtonFont withFont:self view:v7];
  v11 = v10;
  imageViewAndLabelStackView = [(SearchUIButtonItemView *)self imageViewAndLabelStackView];
  [imageViewAndLabelStackView setLayoutMargins:{0.0, v9, 0.0, v11}];

  v13 = MEMORY[0x1E69D91A8];
  [(SearchUIButtonItemView *)self spacingBetweenImageAndText];
  [v13 scaledValueForValue:resolvedButtonFont withFont:self view:?];
  v15 = v14;
  imageViewAndLabelStackView2 = [(SearchUIButtonItemView *)self imageViewAndLabelStackView];
  [imageViewAndLabelStackView2 setSpacing:v15];

  iconBackgroundView = [(SearchUIButtonItemView *)self iconBackgroundView];
  [(SearchUIButtonItemView *)self iconBackgroundViewSize];
  [iconBackgroundView setLayoutSize:? withContentPriority:?];
}

- (int64_t)symbolScale
{
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    return 2;
  }

  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    return 2;
  }

  return 1;
}

- (double)spacingBetweenImageAndText
{
  drawsBackgroundPlatter = [(SearchUIButtonItemView *)self drawsBackgroundPlatter];
  result = 2.0;
  if (drawsBackgroundPlatter)
  {
    isMacOS = [MEMORY[0x1E69D9240] isMacOS];
    result = 6.0;
    if (isMacOS)
    {
      return 3.0;
    }
  }

  return result;
}

- (double)minimumIconPadding
{
  isCompact = [(SearchUIButtonItemView *)self isCompact];
  result = 4.0;
  if (isCompact)
  {
    return 2.0;
  }

  return result;
}

- (CGSize)iconBackgroundViewSize
{
  if ([(SearchUIButtonItemView *)self isCompact])
  {
    +[SearchUISuggestionImageUtilities maximumSize];
    v4 = v3;
  }

  else
  {
    resolvedIconFont = [(SearchUIButtonItemView *)self resolvedIconFont];
    [resolvedIconFont pointSize];
    v4 = v6 * 2.4;
  }

  v7 = v4;
  v8 = v4;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIButtonItemView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIButtonItemView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIButtonItemView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v3 didMoveToWindow];
  [(SearchUIButtonItemView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v30.receiver = self;
  v30.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v30 tlk_updateForAppearance:appearanceCopy];
  buttonAppearance = [(SearchUIButtonItemView *)self buttonAppearance];
  tintColor = [buttonAppearance tintColor];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  if (tintColor)
  {
    v7 = [objc_alloc(objc_msgSend(tintColor "searchUI_colorGeneratorClass"))];
    isDark = [appearanceCopy isDark];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __50__SearchUIButtonItemView_tlk_updateForAppearance___block_invoke;
    v23[3] = &unk_1E85B3180;
    v23[4] = &v24;
    [v7 generateUIColorsIsDark:isDark completionHandler:v23];
  }

  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    v9 = v25[5];
    backgroundView = [(SearchUIButtonItemView *)self backgroundView];
    [backgroundView setColor:v9];
  }

  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    v11 = v25[5];
    iconBackgroundView = [(SearchUIButtonItemView *)self iconBackgroundView];
    [iconBackgroundView setColor:v11];
  }

  if (([(SearchUIButtonItemView *)self drawsBackgroundPlatter]|| [(SearchUIButtonItemView *)self drawsIconBackgroundPlatter]) && ![(SearchUIButtonItemView *)self useHierarchicalColorRendering])
  {
    tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [tlkTitleLabel setTextColor:0];

    iconView = [(SearchUIButtonItemView *)self iconView];
    [iconView setOverrideColor:0];

    if (v25[5])
    {
      v19 = [SearchUIBackgroundColorUtilities backgroundColorPrefersWhiteForegroundText:?];
      buttonContentBoxView2 = [MEMORY[0x1E69D9108] appearanceWithVibrancyEnabled:1 isDark:v19];
      buttonContentBoxView = [(SearchUIButtonItemView *)self buttonContentBoxView];
      [buttonContentBoxView2 overrideAppearanceForView:buttonContentBoxView];
    }

    else
    {
      v22 = MEMORY[0x1E69D9108];
      buttonContentBoxView2 = [(SearchUIButtonItemView *)self buttonContentBoxView];
      [v22 disableAppearanceOverrideForView:buttonContentBoxView2];
    }

    [(SearchUIButtonItemView *)self updateProminences];
  }

  else
  {
    v13 = v25[5];
    tlkTitleLabel2 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [tlkTitleLabel2 setTextColor:v13];

    v15 = v25[5];
    iconView2 = [(SearchUIButtonItemView *)self iconView];
    [iconView2 setOverrideColor:v15];
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __50__SearchUIButtonItemView_tlk_updateForAppearance___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 firstObject];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (([appearanceCopy isEqual:self->_buttonAppearance] & 1) == 0)
  {
    objc_storeStrong(&self->_buttonAppearance, appearance);
    useHierarchicalColorRendering = [(SearchUIButtonItemView *)self useHierarchicalColorRendering];
    backgroundView = [(SearchUIButtonItemView *)self backgroundView];
    [backgroundView setUseHierarchicalColorRendering:useHierarchicalColorRendering];

    useHierarchicalColorRendering2 = [(SearchUIButtonItemView *)self useHierarchicalColorRendering];
    iconBackgroundView = [(SearchUIButtonItemView *)self iconBackgroundView];
    [iconBackgroundView setUseHierarchicalColorRendering:useHierarchicalColorRendering2];

    [(SearchUIButtonItemView *)self tlk_updateWithCurrentAppearance];
  }
}

- (BOOL)useHierarchicalColorRendering
{
  buttonAppearance = [(SearchUIButtonItemView *)self buttonAppearance];
  v3 = buttonAppearance;
  if (buttonAppearance)
  {
    v4 = [buttonAppearance renderingMode] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v4 setEnabled:enabled];
  [(SearchUIButtonItemView *)self updateProminences];
}

- (void)updateProminences
{
  buttonProminence = [(SearchUIButtonItemView *)self buttonProminence];
  if (!buttonProminence)
  {
    buttonAppearance = [(SearchUIButtonItemView *)self buttonAppearance];
    tintColor = [buttonAppearance tintColor];
    if (tintColor || ![(SearchUIButtonItemView *)self isEnabled])
    {
      buttonProminence = 0;
    }

    else if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
    {
      buttonProminence = 1;
    }

    else if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
    {
      buttonProminence = 1;
    }

    else
    {
      buttonProminence = 2;
    }
  }

  tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel setProminence:buttonProminence];

  iconView = [(SearchUIButtonItemView *)self iconView];
  [iconView setProminence:buttonProminence];
}

- (void)setSfImage:(id)image animateTransition:(BOOL)transition symbolTransition:(id)symbolTransition
{
  transitionCopy = transition;
  imageCopy = image;
  if (self->_sfImage == imageCopy)
  {
    goto LABEL_17;
  }

  v25 = imageCopy;
  objc_storeStrong(&self->_sfImage, image);
  symbolTransitionCopy = symbolTransition;
  v11 = [SearchUIImage imageWithSFImage:v25];
  sfImage = [v11 sfImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  iconView = [(SearchUIButtonItemView *)self iconView];
  [iconView setAlignment:v13];

  iconView2 = [(SearchUIButtonItemView *)self iconView];
  [iconView2 setTransition:symbolTransitionCopy];

  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    delegate = [(SearchUIButtonItemView *)self delegate];
    supportsContextMenuConfiguration = [delegate supportsContextMenuConfiguration];
    if (v11 && transitionCopy && !supportsContextMenuConfiguration)
    {
      iconView3 = [(SearchUIButtonItemView *)self iconView];
      currentImage = [iconView3 currentImage];

      if (currentImage)
      {
        [(SearchUIButtonItemView *)self transitionIconToSFImage:v11];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  iconView4 = [(SearchUIButtonItemView *)self iconView];
  [iconView4 updateWithImage:v11 animateTransition:0];

LABEL_13:
  iconView5 = [(SearchUIButtonItemView *)self iconView];
  [iconView5 setHidden:v11 == 0];

  if (v11)
  {
    window = [(SearchUIButtonItemView *)self window];

    if (!window)
    {
      iconView6 = [(SearchUIButtonItemView *)self iconView];
      v24 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
      [iconView6 tlk_updateForAppearance:v24];
    }
  }

  imageCopy = v25;
LABEL_17:
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  objc_storeStrong(&self->_buttonTitle, title);
  tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel setText:titleCopy];

  if ([titleCopy length])
  {
    v6 = [(SearchUIButtonItemView *)self drawsTitle]^ 1;
  }

  else
  {
    v6 = 1;
  }

  tlkTitleLabel2 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [tlkTitleLabel2 setHidden:v6];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  buttonContentBoxView = [(SearchUIButtonItemView *)self buttonContentBoxView];
  [buttonContentBoxView effectiveLayoutSizeFittingSize:{width, height}];
  v8 = v7;
  v10 = v9;

  [(SearchUIButtonItemView *)self verticalPaddingFontMultipler];
  if (v11 != 0.0)
  {
    tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [tlkTitleLabel intrinsicContentSize];
    v14 = v13;
    [(SearchUIButtonItemView *)self verticalPaddingFontMultipler];
    v10 = v14 * v15;
  }

  v16 = v8;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(SearchUIButtonItemView *)self delegate:interaction];
  supportsContextMenuConfiguration = [v5 supportsContextMenuConfiguration];

  if (supportsContextMenuConfiguration)
  {
    delegate = [(SearchUIButtonItemView *)self delegate];
    previewCommandHandler = [delegate previewCommandHandler];
    [(SearchUIButtonItemView *)self setCommandHandler:previewCommandHandler];

    delegate2 = [(SearchUIButtonItemView *)self delegate];
    customPreviewMenu = [delegate2 customPreviewMenu];

    if (!customPreviewMenu || (v14[0] = MEMORY[0x1E69E9820], v14[1] = 3221225472, v14[2] = __80__SearchUIButtonItemView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke, v14[3] = &unk_1E85B31A8, v14[4] = self, [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v14], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      commandHandler = [(SearchUIButtonItemView *)self commandHandler];
      v11 = [SearchUICollectionPeekDelegate menuConfigurationForCommandHandler:commandHandler];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __80__SearchUIButtonItemView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  v2 = [v1 customPreviewMenu];

  return v2;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v6 = objc_opt_new();
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    iconBackgroundView = [(SearchUIButtonItemView *)self iconBackgroundView];
    [iconBackgroundView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    iconBoxView = [(SearchUIButtonItemView *)self iconBoxView];
    [(SearchUIButtonItemView *)self convertRect:iconBoxView fromView:v10, v12, v14, v16];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v19, v21, v23, v25}];
  }

  else
  {
    drawsBackgroundPlatter = [(SearchUIButtonItemView *)self drawsBackgroundPlatter];
    [(SearchUIButtonItemView *)self bounds];
    v32 = -0.0;
    if (!drawsBackgroundPlatter)
    {
      v32 = -5.0;
    }

    v43 = CGRectInset(*&v28, v32, v32);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
    {
      [(SearchUIButtonItemView *)self cornerRadius];
      v38 = v37;
    }

    else
    {
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v38 = CGRectGetHeight(v44) * 0.1;
    }

    if ([(SearchUIButtonItemView *)self useContinuousCorners])
    {
      [MEMORY[0x1E69DC728] _bezierPathWithPillRect:x cornerRadius:{y, width, height, v38}];
    }

    else
    {
      [MEMORY[0x1E69DC728] _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v38}];
    }
    v26 = ;
  }

  v39 = v26;
  [v6 setVisiblePath:v26];

  v40 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v6];

  return v40;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  commandHandler = [(SearchUIButtonItemView *)self commandHandler];
  [SearchUICollectionPeekDelegate contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:commandHandler animator:animatorCopy];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v12.receiver = self;
  v12.super_class = SearchUIButtonItemView;
  interactionCopy = interaction;
  [(SearchUIButtonItemView *)&v12 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configuration animator:animatorCopy];
  v10 = [(SearchUIButtonItemView *)self contextPreviewInteraction:v12.receiver];

  if (v10 == interactionCopy)
  {
    commandHandler = [(SearchUIButtonItemView *)self commandHandler];
    [SearchUICollectionPeekDelegate contextMenuInteractionWillDisplayMenuForCommandHandler:commandHandler animator:animatorCopy];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v12.receiver = self;
  v12.super_class = SearchUIButtonItemView;
  interactionCopy = interaction;
  [(SearchUIButtonItemView *)&v12 contextMenuInteraction:interactionCopy willEndForConfiguration:configuration animator:animatorCopy];
  v10 = [(SearchUIButtonItemView *)self contextPreviewInteraction:v12.receiver];

  if (v10 == interactionCopy)
  {
    commandHandler = [(SearchUIButtonItemView *)self commandHandler];
    [SearchUICollectionPeekDelegate contextMenuInteractionWillEndForCommandHandler:commandHandler animator:animatorCopy];
  }

  [(SearchUIButtonItemView *)self setCommandHandler:0];
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter]|| [(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    v7.receiver = self;
    v7.super_class = SearchUIButtonItemView;
    [(SearchUIButtonItemView *)&v7 effectiveFirstBaselineOffsetFromTop];
  }

  else
  {
    tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [tlkTitleLabel effectiveFirstBaselineOffsetFromTop];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)effectiveBaselineOffsetFromBottom
{
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter]|| [(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    v7.receiver = self;
    v7.super_class = SearchUIButtonItemView;
    [(SearchUIButtonItemView *)&v7 effectiveBaselineOffsetFromBottom];
  }

  else
  {
    tlkTitleLabel = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [tlkTitleLabel effectiveBaselineOffsetFromBottom];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)buttonAnimationOutDelay
{
  v2 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonSelection];
  [v2 perceptualDuration];
  v4 = v3 * 0.5;

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v10 touchesBegan:began withEvent:event];
  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    delegate = [(SearchUIButtonItemView *)self delegate];
    supportsContextMenuConfiguration = [delegate supportsContextMenuConfiguration];

    if ((supportsContextMenuConfiguration & 1) == 0)
    {
      v7 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonSelection];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__SearchUIButtonItemView_touchesBegan_withEvent___block_invoke;
      v9[3] = &unk_1E85B24C8;
      v9[4] = self;
      v8 = [_TtC8SearchUI16SearchUIAnimator animateWith:v7 animations:v9 completion:0];
      [(SearchUIButtonItemView *)self setSelectionAnimator:v8];
    }
  }
}

uint64_t __49__SearchUIButtonItemView_touchesBegan_withEvent___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.8, 0.8);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v10 touchesCancelled:cancelled withEvent:event];
  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    delegate = [(SearchUIButtonItemView *)self delegate];
    supportsContextMenuConfiguration = [delegate supportsContextMenuConfiguration];

    if ((supportsContextMenuConfiguration & 1) == 0)
    {
      v7 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonSelectionCancel];
      [(SearchUIButtonItemView *)self buttonAnimationOutDelay];
      [v7 setDelay:?];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__SearchUIButtonItemView_touchesCancelled_withEvent___block_invoke;
      v9[3] = &unk_1E85B24C8;
      v9[4] = self;
      v8 = [_TtC8SearchUI16SearchUIAnimator animateWith:v7 animations:v9 completion:0];
    }
  }
}

uint64_t __53__SearchUIButtonItemView_touchesCancelled_withEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v10 touchesEnded:ended withEvent:event];
  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    delegate = [(SearchUIButtonItemView *)self delegate];
    supportsContextMenuConfiguration = [delegate supportsContextMenuConfiguration];

    if ((supportsContextMenuConfiguration & 1) == 0)
    {
      v7 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonSelection];
      [(SearchUIButtonItemView *)self buttonAnimationOutDelay];
      [v7 setDelay:?];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__SearchUIButtonItemView_touchesEnded_withEvent___block_invoke;
      v9[3] = &unk_1E85B24C8;
      v9[4] = self;
      v8 = [_TtC8SearchUI16SearchUIAnimator animateWith:v7 animations:v9 completion:0];
    }
  }
}

uint64_t __49__SearchUIButtonItemView_touchesEnded_withEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)transitionIconToSFImage:(id)image
{
  imageCopy = image;
  [(SearchUIButtonItemView *)self buttonAnimationOutDelay];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SearchUIButtonItemView_transitionIconToSFImage___block_invoke;
  v8[3] = &unk_1E85B2540;
  v8[4] = self;
  v9 = imageCopy;
  v7 = imageCopy;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v8);
}

void __50__SearchUIButtonItemView_transitionIconToSFImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) animateIconOutToSFImage:*(a1 + 40)];
  v2 = dispatch_time(0, 100000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SearchUIButtonItemView_transitionIconToSFImage___block_invoke_2;
  v4[3] = &unk_1E85B2540;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v4);
}

- (void)animateIconOutToSFImage:(id)image
{
  v25[3] = *MEMORY[0x1E69E9840];
  transitionIconView = [(SearchUIButtonItemView *)self transitionIconView];
  if (!transitionIconView)
  {
    transitionIconView = objc_opt_new();
    [(SearchUIButtonItemView *)self setTransitionIconView:transitionIconView];
    [transitionIconView setUseButtonColoring:1];
    [SearchUIAutoLayout requireIntrinsicSizeForView:transitionIconView];
  }

  [transitionIconView setHidden:0];
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    v5 = 4;
  }

  else if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    v5 = 4;
  }

  else
  {
    v5 = 6;
  }

  [transitionIconView setSymbolWeight:v5];
  iconView = [(SearchUIButtonItemView *)self iconView];
  currentImage = [iconView currentImage];
  [transitionIconView updateWithImage:currentImage];

  iconView2 = [(SearchUIButtonItemView *)self iconView];
  [iconView2 frame];
  [transitionIconView setFrame:?];

  imageView = [transitionIconView imageView];
  layer = [imageView layer];
  [layer setOpacity:0.0];

  transitionIconView2 = [(SearchUIButtonItemView *)self transitionIconView];
  imageView2 = [transitionIconView2 imageView];
  [SearchUIUtilities applyGaussianBlurToView:imageView2 withRadius:6.0];

  imageViewAndLabelStackView = [(SearchUIButtonItemView *)self imageViewAndLabelStackView];
  transitionIconView3 = [(SearchUIButtonItemView *)self transitionIconView];
  [imageViewAndLabelStackView addSubview:transitionIconView3];

  v15 = [_TtC8SearchUI27SearchUIBasicLayerAnimation blurFrom:0.0 to:6.0];
  v16 = [_TtC8SearchUI27SearchUIBasicLayerAnimation opacityFrom:1.0 to:0.0, v15];
  v25[1] = v16;
  v17 = [_TtC8SearchUI27SearchUIBasicLayerAnimation scaleFrom:1.0 to:0.5];
  v25[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

  v19 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonSelection];
  imageView3 = [transitionIconView imageView];
  layer2 = [imageView3 layer];
  [_TtC8SearchUI16SearchUIAnimator animateWithLayer:layer2 with:v19 key:@"disappearAnimation" animations:v18 delegate:self];

  iconView3 = [(SearchUIButtonItemView *)self iconView];
  imageView4 = [iconView3 imageView];
  layer3 = [imageView4 layer];
  [layer3 setOpacity:0.0];
}

- (void)animateIconInToSFImage:(id)image
{
  v20[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  iconView = [(SearchUIButtonItemView *)self iconView];
  imageView = [iconView imageView];
  layer = [imageView layer];
  LODWORD(v8) = 1.0;
  [layer setOpacity:v8];

  iconView2 = [(SearchUIButtonItemView *)self iconView];
  imageView2 = [iconView2 imageView];
  [SearchUIUtilities applyGaussianBlurToView:imageView2 withRadius:0.0];

  iconView3 = [(SearchUIButtonItemView *)self iconView];
  [iconView3 updateWithImage:imageCopy animateTransition:0];

  v12 = [_TtC8SearchUI27SearchUIBasicLayerAnimation blurFrom:6.0 to:0.0];
  v13 = [_TtC8SearchUI27SearchUIBasicLayerAnimation opacityFrom:0.0 to:1.0, v12];
  v20[1] = v13;
  v14 = [_TtC8SearchUI27SearchUIBasicLayerAnimation scaleFrom:0.5 to:1.0];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

  v16 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonIconAppear];
  iconView4 = [(SearchUIButtonItemView *)self iconView];
  imageView3 = [iconView4 imageView];
  layer2 = [imageView3 layer];
  [_TtC8SearchUI16SearchUIAnimator animateWithLayer:layer2 with:v16 key:@"appearAnimation" animations:v15 delegate:self];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  [MEMORY[0x1E6979518] begin];
  transitionIconView = [(SearchUIButtonItemView *)self transitionIconView];
  imageView = [transitionIconView imageView];
  layer = [imageView layer];
  v8 = [layer animationForKey:@"disappearAnimation"];

  if (v8 == stopCopy)
  {
    transitionIconView2 = [(SearchUIButtonItemView *)self transitionIconView];
    [transitionIconView2 setHidden:1];
  }

  else
  {
    iconView = [(SearchUIButtonItemView *)self iconView];
    imageView2 = [iconView imageView];
    layer2 = [imageView2 layer];
    v12 = [layer2 animationForKey:@"appearAnimation"];

    if (v12 != stopCopy)
    {
      goto LABEL_6;
    }

    iconView2 = [(SearchUIButtonItemView *)self iconView];
    imageView3 = [iconView2 imageView];
    layer3 = [imageView3 layer];
    [layer3 removeAllAnimations];

    iconView3 = [(SearchUIButtonItemView *)self iconView];
    imageView4 = [iconView3 imageView];
    layer4 = [imageView4 layer];
    [layer4 setFilters:MEMORY[0x1E695E0F0]];

    transitionIconView2 = [(SearchUIButtonItemView *)self iconView];
    imageView5 = [transitionIconView2 imageView];
    layer5 = [imageView5 layer];
    LODWORD(v22) = 1.0;
    [layer5 setOpacity:v22];
  }

LABEL_6:
  [MEMORY[0x1E6979518] commit];
}

- (SearchUIButtonItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end