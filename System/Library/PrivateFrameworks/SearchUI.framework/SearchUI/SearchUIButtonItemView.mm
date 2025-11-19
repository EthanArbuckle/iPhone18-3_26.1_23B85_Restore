@interface SearchUIButtonItemView
- (BOOL)useHierarchicalColorRendering;
- (CGSize)iconBackgroundViewSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SearchUIButtonItemView)init;
- (SearchUIButtonItemViewDelegate)delegate;
- (UIFont)defaultButtonFont;
- (double)buttonAnimationOutDelay;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (double)minimumIconPadding;
- (double)spacingBetweenImageAndText;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)createContentView;
- (id)resolvedButtonFont;
- (id)resolvedIconFont;
- (int64_t)symbolScale;
- (void)animateIconInToSFImage:(id)a3;
- (void)animateIconOutToSFImage:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonAppearance:(id)a3;
- (void)setButtonFont:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setIconFont:(id)a3;
- (void)setIsCompact:(BOOL)a3;
- (void)setSfImage:(id)a3 animateTransition:(BOOL)a4 symbolTransition:(id)a5;
- (void)tlk_updateForAppearance:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionIconToSFImage:(id)a3;
- (void)updateFonts;
- (void)updateProminences;
@end

@implementation SearchUIButtonItemView

- (SearchUIButtonItemView)init
{
  v3 = [objc_opt_class() buttonWithType:1];

  if (v3)
  {
    v4 = [(SearchUIButtonItemView *)v3 createContentView];
    [(SearchUIButtonItemView *)v3 setButtonContentBoxView:v4];

    v5 = [(SearchUIButtonItemView *)v3 buttonContentBoxView];
    [v5 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

    [(SearchUIButtonItemView *)v3 setAllowsAnimation:1];
    v6 = objc_opt_new();
    [(SearchUIButtonItemView *)v3 setImage:v6 forState:0];

    v7 = [(SearchUIButtonItemView *)v3 imageView];
    v8 = [(SearchUIButtonItemView *)v3 buttonContentBoxView];
    [v7 addSubview:v8];

    v9 = [(SearchUIButtonItemView *)v3 imageView];
    v10 = [v9 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v3];
    [(SearchUIButtonItemView *)v3 setContextPreviewInteraction:v11];
    [(SearchUIButtonItemView *)v3 addInteraction:v11];
    v12 = [(SearchUIButtonItemView *)v3 layer];
    [v12 setAllowsGroupOpacity:0];

    v13 = [(SearchUIButtonItemView *)v3 buttonContentBoxView];
    [SearchUIAutoLayout fillContainerWithView:v13];
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
  v11 = [(SearchUIButtonItemView *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SearchUIButtonItemView *)self backgroundView];
  [(SearchUIButtonItemView *)self cornerRadius];
  v14 = v13;
  v15 = [(SearchUIButtonItemView *)self useContinuousCorners];
  v16 = *MEMORY[0x1E69796E0];
  if (v15)
  {
    v17 = *MEMORY[0x1E69796E8];
  }

  else
  {
    v17 = *MEMORY[0x1E69796E0];
  }

  [v12 tlks_setCornerRadius:v17 withStyle:v14];

  v18 = [(SearchUIButtonItemView *)self iconBackgroundView];
  [(SearchUIButtonItemView *)self iconBackgroundViewSize];
  [v18 tlks_setCornerRadius:v16 withStyle:v19 * 0.5];
}

- (id)createContentView
{
  v38[2] = *MEMORY[0x1E69E9840];
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    v3 = objc_opt_new();
    [(SearchUIButtonItemView *)self setBackgroundView:v3];
  }

  v4 = [(SearchUIButtonItemView *)self drawsBackgroundPlatter]|| [(SearchUIButtonItemView *)self drawsIconBackgroundPlatter];
  v5 = objc_opt_new();
  [(SearchUIButtonItemView *)self setIconView:v5];

  v6 = [(SearchUIButtonItemView *)self iconView];
  [v6 setUseButtonColoring:1];

  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 6;
  }

  v8 = [(SearchUIButtonItemView *)self iconView];
  [v8 setSymbolWeight:v7];

  v9 = [(SearchUIButtonItemView *)self iconView];
  [v9 setHidden:1];

  v10 = [(SearchUIButtonItemView *)self iconView];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v10];

  v11 = [(SearchUIButtonItemView *)self iconView];
  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter]&& ![(SearchUIButtonItemView *)self shouldAvoidBackgroundView])
  {
    v12 = objc_opt_new();
    [(SearchUIButtonItemView *)self setIconBackgroundView:v12];

    v13 = objc_alloc(MEMORY[0x1E698B718]);
    v14 = [(SearchUIButtonItemView *)self iconBackgroundView];
    v38[0] = v14;
    v15 = [(SearchUIButtonItemView *)self iconView];
    v38[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v17 = [v13 initWithArrangedSubviews:v16];

    v18 = [(SearchUIButtonItemView *)self iconView];
    [v17 setAlignment:3 forView:v18 inAxis:0];

    v19 = [(SearchUIButtonItemView *)self iconView];
    [v17 setAlignment:3 forView:v19 inAxis:1];

    [(SearchUIButtonItemView *)self setIconBoxView:v17];
    v20 = [(SearchUIButtonItemView *)self iconBoxView];

    v11 = v20;
  }

  v21 = objc_opt_new();
  [(SearchUIButtonItemView *)self setTlkTitleLabel:v21];

  v22 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v22 setUseButtonColoring:1];

  if (v4)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  v24 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v24 setNumberOfLines:v23];

  v25 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v25 setHidden:1];

  if (v4)
  {
    v37[0] = v11;
    v26 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    v37[1] = v26;
    v27 = v37;
  }

  else
  {
    v26 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    v36[0] = v26;
    v36[1] = v11;
    v27 = v36;
  }

  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  v29 = [objc_alloc(MEMORY[0x1E698B730]) initWithArrangedSubviews:v28];
  [v29 setAlignment:3];
  [v29 setLayoutMarginsRelativeArrangement:v4];
  [v29 setAxis:{-[SearchUIButtonItemView drawsIconBackgroundPlatter](self, "drawsIconBackgroundPlatter")}];
  [(SearchUIButtonItemView *)self setImageViewAndLabelStackView:v29];
  [(SearchUIButtonItemView *)self updateProminences];
  [(SearchUIButtonItemView *)self setIsCompact:0];
  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    v30 = [(SearchUIButtonItemView *)self backgroundView];
    v35 = v30;
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

- (void)setIsCompact:(BOOL)a3
{
  self->_isCompact = a3;
  v4 = [(SearchUIButtonItemView *)self buttonTitle];
  [(SearchUIButtonItemView *)self setButtonTitle:v4];

  v5 = [(SearchUIButtonItemView *)self symbolScale];
  v6 = [(SearchUIButtonItemView *)self iconView];
  [v6 setSymbolScale:v5];

  [(SearchUIButtonItemView *)self updateFonts];

  [(SearchUIButtonItemView *)self invalidateIntrinsicContentSize];
}

- (UIFont)defaultButtonFont
{
  v2 = MEMORY[0x1E69D9138];
  v3 = [MEMORY[0x1E69D9240] isMacOS];
  v4 = MEMORY[0x1E69DDD28];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DDD80];
  }

  v5 = *v4;
  v6 = *MEMORY[0x1E69DB980];

  return [v2 cachedFontForTextStyle:v5 isShort:0 fontWeight:v6];
}

- (void)setIconFont:(id)a3
{
  objc_storeStrong(&self->_iconFont, a3);

  [(SearchUIButtonItemView *)self updateFonts];
}

- (void)setButtonFont:(id)a3
{
  objc_storeStrong(&self->_buttonFont, a3);

  [(SearchUIButtonItemView *)self updateFonts];
}

- (id)resolvedIconFont
{
  v3 = [(SearchUIButtonItemView *)self iconFont];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchUIButtonItemView *)self buttonFont];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(SearchUIButtonItemView *)self defaultIconFont];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(SearchUIButtonItemView *)self defaultButtonFont];
      }

      v5 = v10;
    }
  }

  return v5;
}

- (id)resolvedButtonFont
{
  v3 = [(SearchUIButtonItemView *)self buttonFont];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SearchUIButtonItemView *)self defaultButtonFont];
  }

  v6 = v5;

  return v6;
}

- (void)updateFonts
{
  v18 = [(SearchUIButtonItemView *)self resolvedButtonFont];
  v3 = [(SearchUIButtonItemView *)self resolvedIconFont];
  v4 = [(SearchUIButtonItemView *)self iconView];
  [v4 setSymbolFont:v3];

  v5 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v5 setFont:v18];

  [(SearchUIButtonItemView *)self horizontalPadding];
  v7 = v6;
  [MEMORY[0x1E69D91A8] scaledValueForValue:v18 withFont:self view:?];
  v9 = v8;
  [MEMORY[0x1E69D91A8] scaledValueForValue:v18 withFont:self view:v7];
  v11 = v10;
  v12 = [(SearchUIButtonItemView *)self imageViewAndLabelStackView];
  [v12 setLayoutMargins:{0.0, v9, 0.0, v11}];

  v13 = MEMORY[0x1E69D91A8];
  [(SearchUIButtonItemView *)self spacingBetweenImageAndText];
  [v13 scaledValueForValue:v18 withFont:self view:?];
  v15 = v14;
  v16 = [(SearchUIButtonItemView *)self imageViewAndLabelStackView];
  [v16 setSpacing:v15];

  v17 = [(SearchUIButtonItemView *)self iconBackgroundView];
  [(SearchUIButtonItemView *)self iconBackgroundViewSize];
  [v17 setLayoutSize:? withContentPriority:?];
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
  v2 = [(SearchUIButtonItemView *)self drawsBackgroundPlatter];
  result = 2.0;
  if (v2)
  {
    v4 = [MEMORY[0x1E69D9240] isMacOS];
    result = 6.0;
    if (v4)
    {
      return 3.0;
    }
  }

  return result;
}

- (double)minimumIconPadding
{
  v2 = [(SearchUIButtonItemView *)self isCompact];
  result = 4.0;
  if (v2)
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
    v5 = [(SearchUIButtonItemView *)self resolvedIconFont];
    [v5 pointSize];
    v4 = v6 * 2.4;
  }

  v7 = v4;
  v8 = v4;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUIButtonItemView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUIButtonItemView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUIButtonItemView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
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

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v30 tlk_updateForAppearance:v4];
  v5 = [(SearchUIButtonItemView *)self buttonAppearance];
  v6 = [v5 tintColor];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  if (v6)
  {
    v7 = [objc_alloc(objc_msgSend(v6 "searchUI_colorGeneratorClass"))];
    v8 = [v4 isDark];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __50__SearchUIButtonItemView_tlk_updateForAppearance___block_invoke;
    v23[3] = &unk_1E85B3180;
    v23[4] = &v24;
    [v7 generateUIColorsIsDark:v8 completionHandler:v23];
  }

  if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
  {
    v9 = v25[5];
    v10 = [(SearchUIButtonItemView *)self backgroundView];
    [v10 setColor:v9];
  }

  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    v11 = v25[5];
    v12 = [(SearchUIButtonItemView *)self iconBackgroundView];
    [v12 setColor:v11];
  }

  if (([(SearchUIButtonItemView *)self drawsBackgroundPlatter]|| [(SearchUIButtonItemView *)self drawsIconBackgroundPlatter]) && ![(SearchUIButtonItemView *)self useHierarchicalColorRendering])
  {
    v17 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [v17 setTextColor:0];

    v18 = [(SearchUIButtonItemView *)self iconView];
    [v18 setOverrideColor:0];

    if (v25[5])
    {
      v19 = [SearchUIBackgroundColorUtilities backgroundColorPrefersWhiteForegroundText:?];
      v20 = [MEMORY[0x1E69D9108] appearanceWithVibrancyEnabled:1 isDark:v19];
      v21 = [(SearchUIButtonItemView *)self buttonContentBoxView];
      [v20 overrideAppearanceForView:v21];
    }

    else
    {
      v22 = MEMORY[0x1E69D9108];
      v20 = [(SearchUIButtonItemView *)self buttonContentBoxView];
      [v22 disableAppearanceOverrideForView:v20];
    }

    [(SearchUIButtonItemView *)self updateProminences];
  }

  else
  {
    v13 = v25[5];
    v14 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [v14 setTextColor:v13];

    v15 = v25[5];
    v16 = [(SearchUIButtonItemView *)self iconView];
    [v16 setOverrideColor:v15];
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __50__SearchUIButtonItemView_tlk_updateForAppearance___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 firstObject];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setButtonAppearance:(id)a3
{
  v9 = a3;
  if (([v9 isEqual:self->_buttonAppearance] & 1) == 0)
  {
    objc_storeStrong(&self->_buttonAppearance, a3);
    v5 = [(SearchUIButtonItemView *)self useHierarchicalColorRendering];
    v6 = [(SearchUIButtonItemView *)self backgroundView];
    [v6 setUseHierarchicalColorRendering:v5];

    v7 = [(SearchUIButtonItemView *)self useHierarchicalColorRendering];
    v8 = [(SearchUIButtonItemView *)self iconBackgroundView];
    [v8 setUseHierarchicalColorRendering:v7];

    [(SearchUIButtonItemView *)self tlk_updateWithCurrentAppearance];
  }
}

- (BOOL)useHierarchicalColorRendering
{
  v2 = [(SearchUIButtonItemView *)self buttonAppearance];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 renderingMode] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v4 setEnabled:a3];
  [(SearchUIButtonItemView *)self updateProminences];
}

- (void)updateProminences
{
  v3 = [(SearchUIButtonItemView *)self buttonProminence];
  if (!v3)
  {
    v4 = [(SearchUIButtonItemView *)self buttonAppearance];
    v5 = [v4 tintColor];
    if (v5 || ![(SearchUIButtonItemView *)self isEnabled])
    {
      v3 = 0;
    }

    else if ([(SearchUIButtonItemView *)self drawsBackgroundPlatter])
    {
      v3 = 1;
    }

    else if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  v6 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v6 setProminence:v3];

  v7 = [(SearchUIButtonItemView *)self iconView];
  [v7 setProminence:v3];
}

- (void)setSfImage:(id)a3 animateTransition:(BOOL)a4 symbolTransition:(id)a5
{
  v6 = a4;
  v9 = a3;
  if (self->_sfImage == v9)
  {
    goto LABEL_17;
  }

  v25 = v9;
  objc_storeStrong(&self->_sfImage, a3);
  v10 = a5;
  v11 = [SearchUIImage imageWithSFImage:v25];
  v12 = [v11 sfImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SearchUIButtonItemView *)self iconView];
  [v14 setAlignment:v13];

  v15 = [(SearchUIButtonItemView *)self iconView];
  [v15 setTransition:v10];

  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    v16 = [(SearchUIButtonItemView *)self delegate];
    v17 = [v16 supportsContextMenuConfiguration];
    if (v11 && v6 && !v17)
    {
      v18 = [(SearchUIButtonItemView *)self iconView];
      v19 = [v18 currentImage];

      if (v19)
      {
        [(SearchUIButtonItemView *)self transitionIconToSFImage:v11];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v20 = [(SearchUIButtonItemView *)self iconView];
  [v20 updateWithImage:v11 animateTransition:0];

LABEL_13:
  v21 = [(SearchUIButtonItemView *)self iconView];
  [v21 setHidden:v11 == 0];

  if (v11)
  {
    v22 = [(SearchUIButtonItemView *)self window];

    if (!v22)
    {
      v23 = [(SearchUIButtonItemView *)self iconView];
      v24 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
      [v23 tlk_updateForAppearance:v24];
    }
  }

  v9 = v25;
LABEL_17:
}

- (void)setButtonTitle:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_buttonTitle, a3);
  v5 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v5 setText:v8];

  if ([v8 length])
  {
    v6 = [(SearchUIButtonItemView *)self drawsTitle]^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(SearchUIButtonItemView *)self tlkTitleLabel];
  [v7 setHidden:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SearchUIButtonItemView *)self buttonContentBoxView];
  [v6 effectiveLayoutSizeFittingSize:{width, height}];
  v8 = v7;
  v10 = v9;

  [(SearchUIButtonItemView *)self verticalPaddingFontMultipler];
  if (v11 != 0.0)
  {
    v12 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [v12 intrinsicContentSize];
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = [(SearchUIButtonItemView *)self delegate:a3];
  v6 = [v5 supportsContextMenuConfiguration];

  if (v6)
  {
    v7 = [(SearchUIButtonItemView *)self delegate];
    v8 = [v7 previewCommandHandler];
    [(SearchUIButtonItemView *)self setCommandHandler:v8];

    v9 = [(SearchUIButtonItemView *)self delegate];
    v10 = [v9 customPreviewMenu];

    if (!v10 || (v14[0] = MEMORY[0x1E69E9820], v14[1] = 3221225472, v14[2] = __80__SearchUIButtonItemView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke, v14[3] = &unk_1E85B31A8, v14[4] = self, [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v14], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = [(SearchUIButtonItemView *)self commandHandler];
      v11 = [SearchUICollectionPeekDelegate menuConfigurationForCommandHandler:v12];
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  if ([(SearchUIButtonItemView *)self drawsIconBackgroundPlatter])
  {
    v8 = [(SearchUIButtonItemView *)self iconBackgroundView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(SearchUIButtonItemView *)self iconBoxView];
    [(SearchUIButtonItemView *)self convertRect:v17 fromView:v10, v12, v14, v16];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v19, v21, v23, v25}];
  }

  else
  {
    v27 = [(SearchUIButtonItemView *)self drawsBackgroundPlatter];
    [(SearchUIButtonItemView *)self bounds];
    v32 = -0.0;
    if (!v27)
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

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [(SearchUIButtonItemView *)self commandHandler];
  [SearchUICollectionPeekDelegate contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:v7 animator:v6];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = SearchUIButtonItemView;
  v9 = a3;
  [(SearchUIButtonItemView *)&v12 contextMenuInteraction:v9 willDisplayMenuForConfiguration:a4 animator:v8];
  v10 = [(SearchUIButtonItemView *)self contextPreviewInteraction:v12.receiver];

  if (v10 == v9)
  {
    v11 = [(SearchUIButtonItemView *)self commandHandler];
    [SearchUICollectionPeekDelegate contextMenuInteractionWillDisplayMenuForCommandHandler:v11 animator:v8];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = SearchUIButtonItemView;
  v9 = a3;
  [(SearchUIButtonItemView *)&v12 contextMenuInteraction:v9 willEndForConfiguration:a4 animator:v8];
  v10 = [(SearchUIButtonItemView *)self contextPreviewInteraction:v12.receiver];

  if (v10 == v9)
  {
    v11 = [(SearchUIButtonItemView *)self commandHandler];
    [SearchUICollectionPeekDelegate contextMenuInteractionWillEndForCommandHandler:v11 animator:v8];
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
    v4 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [v4 effectiveFirstBaselineOffsetFromTop];
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
    v4 = [(SearchUIButtonItemView *)self tlkTitleLabel];
    [v4 effectiveBaselineOffsetFromBottom];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v10 touchesBegan:a3 withEvent:a4];
  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    v5 = [(SearchUIButtonItemView *)self delegate];
    v6 = [v5 supportsContextMenuConfiguration];

    if ((v6 & 1) == 0)
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v10 touchesCancelled:a3 withEvent:a4];
  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    v5 = [(SearchUIButtonItemView *)self delegate];
    v6 = [v5 supportsContextMenuConfiguration];

    if ((v6 & 1) == 0)
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUIButtonItemView;
  [(SearchUIButtonItemView *)&v10 touchesEnded:a3 withEvent:a4];
  if ([(SearchUIButtonItemView *)self allowsAnimation])
  {
    v5 = [(SearchUIButtonItemView *)self delegate];
    v6 = [v5 supportsContextMenuConfiguration];

    if ((v6 & 1) == 0)
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

- (void)transitionIconToSFImage:(id)a3
{
  v4 = a3;
  [(SearchUIButtonItemView *)self buttonAnimationOutDelay];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SearchUIButtonItemView_transitionIconToSFImage___block_invoke;
  v8[3] = &unk_1E85B2540;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
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

- (void)animateIconOutToSFImage:(id)a3
{
  v25[3] = *MEMORY[0x1E69E9840];
  v4 = [(SearchUIButtonItemView *)self transitionIconView];
  if (!v4)
  {
    v4 = objc_opt_new();
    [(SearchUIButtonItemView *)self setTransitionIconView:v4];
    [v4 setUseButtonColoring:1];
    [SearchUIAutoLayout requireIntrinsicSizeForView:v4];
  }

  [v4 setHidden:0];
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

  [v4 setSymbolWeight:v5];
  v6 = [(SearchUIButtonItemView *)self iconView];
  v7 = [v6 currentImage];
  [v4 updateWithImage:v7];

  v8 = [(SearchUIButtonItemView *)self iconView];
  [v8 frame];
  [v4 setFrame:?];

  v9 = [v4 imageView];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];

  v11 = [(SearchUIButtonItemView *)self transitionIconView];
  v12 = [v11 imageView];
  [SearchUIUtilities applyGaussianBlurToView:v12 withRadius:6.0];

  v13 = [(SearchUIButtonItemView *)self imageViewAndLabelStackView];
  v14 = [(SearchUIButtonItemView *)self transitionIconView];
  [v13 addSubview:v14];

  v15 = [_TtC8SearchUI27SearchUIBasicLayerAnimation blurFrom:0.0 to:6.0];
  v16 = [_TtC8SearchUI27SearchUIBasicLayerAnimation opacityFrom:1.0 to:0.0, v15];
  v25[1] = v16;
  v17 = [_TtC8SearchUI27SearchUIBasicLayerAnimation scaleFrom:1.0 to:0.5];
  v25[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

  v19 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonSelection];
  v20 = [v4 imageView];
  v21 = [v20 layer];
  [_TtC8SearchUI16SearchUIAnimator animateWithLayer:v21 with:v19 key:@"disappearAnimation" animations:v18 delegate:self];

  v22 = [(SearchUIButtonItemView *)self iconView];
  v23 = [v22 imageView];
  v24 = [v23 layer];
  [v24 setOpacity:0.0];
}

- (void)animateIconInToSFImage:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUIButtonItemView *)self iconView];
  v6 = [v5 imageView];
  v7 = [v6 layer];
  LODWORD(v8) = 1.0;
  [v7 setOpacity:v8];

  v9 = [(SearchUIButtonItemView *)self iconView];
  v10 = [v9 imageView];
  [SearchUIUtilities applyGaussianBlurToView:v10 withRadius:0.0];

  v11 = [(SearchUIButtonItemView *)self iconView];
  [v11 updateWithImage:v4 animateTransition:0];

  v12 = [_TtC8SearchUI27SearchUIBasicLayerAnimation blurFrom:6.0 to:0.0];
  v13 = [_TtC8SearchUI27SearchUIBasicLayerAnimation opacityFrom:0.0 to:1.0, v12];
  v20[1] = v13;
  v14 = [_TtC8SearchUI27SearchUIBasicLayerAnimation scaleFrom:0.5 to:1.0];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

  v16 = +[_TtC8SearchUI31SearchUISpringAnimationSettings buttonIconAppear];
  v17 = [(SearchUIButtonItemView *)self iconView];
  v18 = [v17 imageView];
  v19 = [v18 layer];
  [_TtC8SearchUI16SearchUIAnimator animateWithLayer:v19 with:v16 key:@"appearAnimation" animations:v15 delegate:self];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v23 = a3;
  [MEMORY[0x1E6979518] begin];
  v5 = [(SearchUIButtonItemView *)self transitionIconView];
  v6 = [v5 imageView];
  v7 = [v6 layer];
  v8 = [v7 animationForKey:@"disappearAnimation"];

  if (v8 == v23)
  {
    v19 = [(SearchUIButtonItemView *)self transitionIconView];
    [v19 setHidden:1];
  }

  else
  {
    v9 = [(SearchUIButtonItemView *)self iconView];
    v10 = [v9 imageView];
    v11 = [v10 layer];
    v12 = [v11 animationForKey:@"appearAnimation"];

    if (v12 != v23)
    {
      goto LABEL_6;
    }

    v13 = [(SearchUIButtonItemView *)self iconView];
    v14 = [v13 imageView];
    v15 = [v14 layer];
    [v15 removeAllAnimations];

    v16 = [(SearchUIButtonItemView *)self iconView];
    v17 = [v16 imageView];
    v18 = [v17 layer];
    [v18 setFilters:MEMORY[0x1E695E0F0]];

    v19 = [(SearchUIButtonItemView *)self iconView];
    v20 = [v19 imageView];
    v21 = [v20 layer];
    LODWORD(v22) = 1.0;
    [v21 setOpacity:v22];
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