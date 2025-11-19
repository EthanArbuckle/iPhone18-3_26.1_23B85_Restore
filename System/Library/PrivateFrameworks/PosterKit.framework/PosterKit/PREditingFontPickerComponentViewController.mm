@interface PREditingFontPickerComponentViewController
+ (id)defaultFontIdentifiersForRole:(id)a3 titleString:(id)a4;
+ (id)defaultItemsForRole:(id)a3 titleString:(id)a4;
- (BOOL)_shouldShowWeightSlider;
- (PREditingFontPickerComponentViewController)initWithItems:(id)a3 selectedItem:(id)a4 role:(id)a5 titleString:(id)a6;
- (PREditingFontPickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)configureFontPickerViewIfNecessary;
- (id)contentStringForFont:(id)a3 locale:(id)a4;
- (id)contentStringNumberFormatter;
- (void)_updateWeightSliderVisibility;
- (void)filterFontViewsByLocale;
- (void)fontSliderDidUpdateWeight:(id)a3;
- (void)loadView;
- (void)setFontWeight:(double)a3;
- (void)setLocale:(id)a3;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingFontPickerComponentViewController

+ (id)defaultFontIdentifiersForRole:(id)a3 titleString:(id)a4
{
  v15[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([a3 isEqual:@"PRPosterRoleIncomingCall"])
  {
    v15[0] = @"PRTimeFontIdentifierSFPro";
    v15[1] = @"PRTimeFontIdentifierSFRounded";
    v15[2] = @"PRTimeFontIdentifierNewYorkAlpha";
    v15[3] = @"PRTimeFontIdentifierSFCondensed";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
    if ([v5 length])
    {
      v7 = [PRIncomingCallFontsProvider timeFontIdentifiersForText:v5 availableFonts:v6];
    }

    else
    {
      v7 = [v6 copy];
    }

    v11 = v7;
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v14[0] = @"PRTimeFontIdentifierSoft";
      v14[1] = @"PRTimeFontIdentifierRounded";
      v14[2] = @"PRTimeFontIdentifierStencil";
      v14[3] = @"PRTimeFontIdentifierNewYork";
      v14[4] = @"PRTimeFontIdentifierSlab";
      v14[5] = @"PRTimeFontIdentifierRail";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v14;
      v10 = 6;
    }

    else
    {
      v13[0] = @"PRTimeFontIdentifierSoft";
      v13[1] = @"PRTimeFontIdentifierSoftLight";
      v13[2] = @"PRTimeFontIdentifierRounded";
      v13[3] = @"PRTimeFontIdentifierStencil";
      v13[4] = @"PRTimeFontIdentifierNewYork";
      v13[5] = @"PRTimeFontIdentifierNewYorkHeavy";
      v13[6] = @"PRTimeFontIdentifierSlab";
      v13[7] = @"PRTimeFontIdentifierRail";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v13;
      v10 = 8;
    }

    v11 = [v8 arrayWithObjects:v9 count:v10];
  }

  return v11;
}

+ (id)defaultItemsForRole:(id)a3 titleString:(id)a4
{
  v4 = [a1 defaultFontIdentifiersForRole:a3 titleString:a4];
  v5 = [v4 bs_map:&__block_literal_global_33];

  return v5;
}

PREditingFontPickerItem *__78__PREditingFontPickerComponentViewController_defaultItemsForRole_titleString___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v2];

  v4 = [[PREditingFontPickerItem alloc] initWithFontConfiguration:v3 systemItem:1];

  return v4;
}

- (PREditingFontPickerComponentViewController)initWithItems:(id)a3 selectedItem:(id)a4 role:(id)a5 titleString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PREditingFontPickerComponentViewController;
  v14 = [(PREditingFontPickerComponentViewController *)&v21 init];
  if (v14)
  {
    v15 = [v10 copy];
    items = v14->_items;
    v14->_items = v15;

    v17 = v11;
    if (!v11)
    {
      v17 = [v10 firstObject];
    }

    objc_storeStrong(&v14->_selectedItem, v17);
    if (!v11)
    {
    }

    objc_storeStrong(&v14->_role, a5);
    objc_storeStrong(&v14->_titleString, a6);
    v18 = [MEMORY[0x1E695DF58] currentLocale];
    locale = v14->_locale;
    v14->_locale = v18;

    v14->_fontSize = 50.0;
  }

  return v14;
}

- (id)contentStringNumberFormatter
{
  if (contentStringNumberFormatter___once != -1)
  {
    [PREditingFontPickerComponentViewController contentStringNumberFormatter];
  }

  v3 = contentStringNumberFormatter_numberFormatter;
  v4 = [(PREditingFontPickerComponentViewController *)self locale];
  [v3 setLocale:v4];

  v5 = contentStringNumberFormatter_numberFormatter;

  return v5;
}

uint64_t __74__PREditingFontPickerComponentViewController_contentStringNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = contentStringNumberFormatter_numberFormatter;
  contentStringNumberFormatter_numberFormatter = v0;

  v2 = contentStringNumberFormatter_numberFormatter;

  return [v2 setNumberStyle:1];
}

- (id)contentStringForFont:(id)a3 locale:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(PREditingFontPickerComponentViewController *)self role];
  v10 = [v9 isEqualToString:@"PRPosterRoleIncomingCall"];

  if (v10)
  {
    v11 = [PRIncomingCallFontsProvider sampleStringForFont:v8 displayingText:self->_titleString];
    v13 = v12;

    v14 = v13;
  }

  else
  {
    v13 = [(PREditingFontPickerComponentViewController *)self contentStringNumberFormatter];
    v11 = [v13 stringFromNumber:&unk_1F1C6B968];
    v14 = v8;
  }

  v15 = [v14 fontWithSize:self->_fontSize];
  v16 = MEMORY[0x1E695DF90];
  v26 = *MEMORY[0x1E69DB648];
  v27[0] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v18 = [v16 dictionaryWithDictionary:v17];

  v19 = MEMORY[0x1E695DF58];
  v20 = [v7 localeIdentifier];
  v21 = [v19 componentsFromLocaleIdentifier:v20];
  v22 = [v21 objectForKeyedSubscript:@"numbers"];

  if (PRTimeNumberingSystemRequiresLanguageTagging(v22))
  {
    v23 = PRTimeNumberingSystemLanguageTag(v22);
    [v18 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v18];

  return v24;
}

- (void)loadView
{
  v47[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PREditingFontPickerComponentViewController *)self configureFontPickerViewIfNecessary];
  v6 = objc_alloc_init(MEMORY[0x1E69C5640]);
  fontWeightSlider = self->_fontWeightSlider;
  self->_fontWeightSlider = v6;

  [(UISlider *)self->_fontWeightSlider addTarget:self action:sel_fontSliderDidUpdateWeight_ forControlEvents:4096];
  [(UISlider *)self->_fontWeightSlider setHidden:[(PREditingFontPickerComponentViewController *)self _shouldShowWeightSlider]^ 1];
  v8 = self->_fontWeightSlider;
  v9 = [(PREditingFontPickerComponentViewController *)self _shouldShowWeightSlider];
  v10 = 0.0;
  if (v9)
  {
    v10 = 1.0;
  }

  [(UISlider *)v8 setAlpha:v10];
  v11 = self->_fontWeightSlider;
  [(PREditingFontPickerComponentViewController *)self fontWeight];
  *&v12 = v12;
  [(UISlider *)v11 setValue:v12];
  [(UISlider *)self->_fontWeightSlider setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x1E695DF70];
  v47[0] = self->_fontWeightSlider;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v15 = [v13 arrayWithArray:v14];

  if (v5)
  {
    [v3 addSubview:v5];
    [v15 insertObject:v5 atIndex:0];
  }

  v43 = v15;
  v16 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v15];
  [v16 setAxis:1];
  [v16 setAlignment:3];
  [v16 setSpacing:16.0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  [v16 setBackgroundColor:v17];

  [v3 addSubview:v16];
  v35 = MEMORY[0x1E696ACD8];
  v42 = [v16 leadingAnchor];
  v41 = [v3 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v46[0] = v40;
  v39 = [v16 trailingAnchor];
  v38 = [v3 trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v46[1] = v37;
  v36 = [v16 topAnchor];
  v34 = [v3 topAnchor];
  v33 = [v36 constraintEqualToAnchor:v34];
  v46[2] = v33;
  v32 = [v16 bottomAnchor];
  v44 = v3;
  v31 = [v3 bottomAnchor];
  v18 = [v32 constraintEqualToAnchor:v31];
  v46[3] = v18;
  v19 = [(UISlider *)self->_fontWeightSlider widthAnchor];
  v20 = [v16 widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-72.0];
  v46[4] = v21;
  v22 = [(UISlider *)self->_fontWeightSlider heightAnchor];
  v23 = [v22 constraintEqualToConstant:34.0];
  v46[5] = v23;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:6];
  v25 = v24 = v5;
  [v35 activateConstraints:v25];

  if (v24)
  {
    v26 = MEMORY[0x1E696ACD8];
    v27 = [v24 widthAnchor];
    v28 = [v16 widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v45 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    [v26 activateConstraints:v30];
  }

  [(PREditingFontPickerComponentViewController *)self updateLayoutForCurrentSize];
  [(PREditingFontPickerComponentViewController *)self filterFontViewsByLocale];
  [(PREditingFontPickerComponentViewController *)self setView:v44];
}

- (id)configureFontPickerViewIfNecessary
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = [(PREditingFontPickerComponentViewController *)self items];
  v4 = [v3 count];

  if (v4 > 1)
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = [(PREditingFontPickerComponentViewController *)self items];
    v7 = [v6 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v7)
    {
      v8 = *v56;
      obj = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v56 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v55 + 1) + 8 * i);
          v11 = [v10 fontConfiguration];
          v12 = [v11 effectiveFontForRole:self->_role ignoringWeight:1];
          v13 = [v12 fontWithSize:self->_fontSize];

          v14 = [(PREditingFontPickerComponentViewController *)self locale];
          v15 = [(PREditingFontPickerComponentViewController *)self contentStringForFont:v13 locale:v14];

          largestItemHeight = self->_largestItemHeight;
          [v15 size];
          if (largestItemHeight >= v17)
          {
            v18 = largestItemHeight;
          }

          else
          {
            v18 = v17;
          }

          self->_largestItemHeight = v18;
          v19 = [(PREditingFontPickerComponentViewController *)self role];
          v20 = objc_alloc_init([PREditingFontPickerCellView fontPickerCellViewClassForRole:v19]);

          [v20 configureWithAttributedString:v15];
          v21 = [MEMORY[0x1E69DC888] clearColor];
          [v20 setBackgroundColor:v21];

          v22 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
          [v20 setBorderColor:v22];

          objc_initWeak(&from, v20);
          v23 = MEMORY[0x1E69DC628];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __80__PREditingFontPickerComponentViewController_configureFontPickerViewIfNecessary__block_invoke;
          v52[3] = &unk_1E7844D50;
          objc_copyWeak(&v53, &location);
          objc_copyWeak(&v54, &from);
          v52[4] = v10;
          v24 = [v23 actionWithHandler:v52];
          [v20 addAction:v24 forControlEvents:0x2000];
          if (BSEqualObjects())
          {
            [v20 setSelected:1];
            [(PREditingFontPickerComponentViewController *)self setSelectedCellView:v20];
          }

          [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v50 addObject:v20];

          objc_destroyWeak(&v54);
          objc_destroyWeak(&v53);
          objc_destroyWeak(&from);
        }

        v6 = obj;
        v7 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v7);
    }

    [(PREditingFontPickerComponentViewController *)self setCellViews:v50];
    v25 = [MEMORY[0x1E695DF70] array];
    [v25 addObjectsFromArray:v50];
    v26 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v25];
    [v26 setAxis:0];
    [v26 setAlignment:1];
    [v26 setSpacing:20.0];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [MEMORY[0x1E69DC888] clearColor];
    [v26 setBackgroundColor:v27];
    v38 = v25;

    v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v5 setContentInset:{0.0, 36.0, 0.0, 36.0}];
    [v5 setShowsVerticalScrollIndicator:0];
    [v5 setShowsHorizontalScrollIndicator:0];
    [v5 setClipsToBounds:0];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v26];
    v28 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v28];

    if ([v26 effectiveUserInterfaceLayoutDirection] == 1)
    {
      CGAffineTransformMakeRotation(&from, 3.14159265);
      [v26 setTransform:{&from, v25}];
      CGAffineTransformMakeRotation(&from, 3.14159265);
      [v5 setTransform:&from];
    }

    v40 = MEMORY[0x1E696ACD8];
    obja = [v26 leadingAnchor];
    v47 = [v5 leadingAnchor];
    v46 = [obja constraintEqualToAnchor:v47];
    v60[0] = v46;
    v45 = [v26 trailingAnchor];
    v44 = [v5 trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v60[1] = v43;
    v42 = [v26 topAnchor];
    v41 = [v5 topAnchor];
    v29 = [v42 constraintEqualToAnchor:v41];
    v60[2] = v29;
    v30 = [v26 bottomAnchor];
    v31 = [v5 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v60[3] = v32;
    v33 = [v26 heightAnchor];
    v34 = [v5 heightAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v60[4] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:5];
    [v40 activateConstraints:v36];

    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
    self->_largestItemHeight = 0.0;
  }

  return v5;
}

void __80__PREditingFontPickerComponentViewController_configureFontPickerViewIfNecessary__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained selectedItem];
  v4 = a1[4];

  if (v3 == v4)
  {
    v5 = [a1[4] fontConfiguration];
    v6 = [WeakRetained role];
    v7 = [v5 effectiveFontForRole:v6 ignoringWeight:1];

    v8 = [v7 pr_variantWeightRange];
    v10 = v9;
    v11 = [a1[4] fontConfiguration];
    [v11 weight];
    v13 = (v12 - v8) / (v10 - v8);

    [WeakRetained setFontWeight:v13];
  }

  [WeakRetained setSelectedItem:a1[4]];
  v14 = [WeakRetained selectedCellView];
  [v14 setSelected:0];

  [WeakRetained setSelectedCellView:v2];
  [v2 setSelected:1];
  v15 = [WeakRetained delegate];
  [v15 fontPickerComponentViewController:WeakRetained didSelectItem:a1[4]];

  [WeakRetained _updateWeightSliderVisibility];
}

- (void)setFontWeight:(double)a3
{
  if (self->_fontWeight != a3)
  {
    self->_fontWeight = a3;
    *&a3 = a3;
    [(UISlider *)self->_fontWeightSlider setValue:a3];
  }
}

- (void)fontSliderDidUpdateWeight:(id)a3
{
  v4 = a3;
  [v4 value];
  self->_fontWeight = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v4 value];
  v7 = v6;

  [WeakRetained fontPickerComponentViewController:self didChangeFontWeight:v7];
}

- (BOOL)_shouldShowWeightSlider
{
  v3 = [(PREditingFontPickerComponentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PREditingFontPickerComponentViewController *)self delegate];
  v6 = [v5 fontPickerComponentViewControllerShouldShowWeightSliderForSelectedFont:self];

  return v6;
}

- (void)_updateWeightSliderVisibility
{
  v3 = [(PREditingFontPickerComponentViewController *)self _shouldShowWeightSlider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PREditingFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke;
  v11[3] = &unk_1E78437A0;
  v11[4] = self;
  v12 = v3;
  v4 = MEMORY[0x1AC574C60](v11);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PREditingFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke_2;
  v9[3] = &unk_1E78437A0;
  v9[4] = self;
  v10 = v3;
  v5 = MEMORY[0x1AC574C60](v9);
  if (v3)
  {
    v4[2](v4);
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:0 animations:0.15 completion:0.3];
  }

  else
  {
    v6 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__PREditingFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke_3;
    v7[3] = &unk_1E7844D78;
    v8 = v4;
    [v6 animateWithDuration:v5 animations:v7 completion:0.15];
  }
}

void __75__PREditingFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fontWeightSlider];
  [v2 setHidden:(*(a1 + 40) & 1) == 0];

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 fontPickerComponentViewControllerDidChangeHeight:*(a1 + 32)];
  }
}

void __75__PREditingFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fontWeightSlider];
  v4 = v2;
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

- (void)updateLayoutForCurrentSize
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(PREditingFontPickerComponentViewController *)self isUsingSmallerSizing];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(PREditingFontPickerComponentViewController *)self widthCellConstraints];
  [v4 deactivateConstraints:v5];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(PREditingFontPickerComponentViewController *)self heightCellConstraints];
  [v6 deactivateConstraints:v7];

  v8 = 52.0;
  if (v3)
  {
    v8 = 50.0;
  }

  self->_fontSize = v8;
  v43 = [MEMORY[0x1E695DF70] array];
  v42 = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [(PREditingFontPickerComponentViewController *)self cellViews];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = [v14 contentFont];
        v16 = [(PREditingFontPickerComponentViewController *)self locale];
        v17 = [(PREditingFontPickerComponentViewController *)self contentStringForFont:v15 locale:v16];

        [v14 configureWithAttributedString:v17];
        [v14 setUsingSmallerSizing:v3];
        v18 = [v14 widthCellConstraint];
        [v43 addObject:v18];

        v19 = [v14 heightCellConstraint];
        [v42 addObject:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  v20 = [v43 copy];
  widthCellConstraints = self->_widthCellConstraints;
  self->_widthCellConstraints = v20;

  v22 = [v42 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v22;

  if ([(PREditingFontPickerComponentViewController *)self isViewLoaded])
  {
    v24 = [(PREditingFontPickerComponentViewController *)self view];
    [v24 bounds];
    v26 = v25;

    if (self->_configuredViewWidth != v26)
    {
      v27 = [(PREditingFontPickerComponentViewController *)self role];
      v28 = [PREditingFontPickerCellView fontPickerCellViewClassForRole:v27];

      [(objc_class *)v28 defaultCellSizeUsingSmallerSizing:v3];
      v30 = v26 - v29;
      v31 = [(PREditingFontPickerComponentViewController *)self stackViewLeadingConstraint];
      [v31 constant];
      v33 = v32;
      v34 = [(PREditingFontPickerComponentViewController *)self stackViewTrailingConstraint];
      [v34 constant];
      v36 = v33 - v35;

      if (v30 >= v36)
      {
        v37 = 36.0;
      }

      else
      {
        v37 = v30 * 0.5;
      }

      v38 = [(PREditingFontPickerComponentViewController *)self stackViewLeadingConstraint];
      v39 = v38;
      if (v37 >= 0.0)
      {
        v40 = v37;
      }

      else
      {
        v40 = 0.0;
      }

      [v38 setConstant:v40];

      v41 = [(PREditingFontPickerComponentViewController *)self stackViewTrailingConstraint];
      [v41 setConstant:{fmin(-v37, 0.0)}];

      self->_configuredViewWidth = v26;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PREditingFontPickerComponentViewController;
  [(PREditingFontPickerComponentViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(PREditingFontPickerComponentViewController *)self view];
  [v3 bounds];
  v5 = v4;

  if (v5 > 375.0)
  {
    LOBYTE(v6) = 0;
    if ([(PREditingFontPickerComponentViewController *)self isUsingSmallerSizing])
    {
      goto LABEL_6;
    }

LABEL_5:
    if (self->_configuredViewWidth == v5)
    {
      return;
    }

    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v7 userInterfaceIdiom] != 1;

  if (((v6 ^ [(PREditingFontPickerComponentViewController *)self isUsingSmallerSizing]) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  self->_usingSmallerSizing = v6;
  [(PREditingFontPickerComponentViewController *)self updateLayoutForCurrentSize];
}

- (void)setLocale:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_locale != v5)
  {
    objc_storeStrong(&self->_locale, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(PREditingFontPickerComponentViewController *)self cellViews];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 contentFont];
          v13 = [(PREditingFontPickerComponentViewController *)self locale];
          v14 = [(PREditingFontPickerComponentViewController *)self contentStringForFont:v12 locale:v13];

          [v11 configureWithAttributedString:v14];
          [v11 invalidateIntrinsicContentSize];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(PREditingFontPickerComponentViewController *)self filterFontViewsByLocale];
  }
}

- (void)filterFontViewsByLocale
{
  v25 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_role isEqualToString:@"PRPosterRoleIncomingCall"])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(PREditingFontPickerComponentViewController *)self cellViews];
    v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v19 = *v21;
      v6 = *MEMORY[0x1E69DB898];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [v8 contentFont];
          v10 = [(PREditingFontPickerComponentViewController *)self locale];
          v11 = [(PREditingFontPickerComponentViewController *)self contentStringForFont:v9 locale:v10];
          v12 = [v11 string];

          v13 = [v8 contentFont];
          v14 = [v13 fontDescriptor];
          v15 = [v14 objectForKey:v6];

          if ([v12 length])
          {
            v16 = 0;
            do
            {
              v17 = [v15 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", v16)}];
              if ((v17 & 1) == 0)
              {
                break;
              }

              ++v16;
            }

            while (v16 < [v12 length]);
          }

          else
          {
            v17 = 1;
          }

          [v8 setHidden:v17 ^ 1u];
          if (((v17 ^ 1) & 1) == 0 && !v5)
          {
            v5 = v8;
          }

          if (((v17 | [v8 isSelected] ^ 1) & 1) == 0)
          {
            [v5 sendActionsForControlEvents:0x2000];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }
}

- (double)estimatedHeight
{
  if (([(PREditingFontPickerComponentViewController *)self isViewLoaded]& 1) == 0 && [(NSArray *)self->_items count]>= 2)
  {
    v3 = [(PREditingFontPickerComponentViewController *)self isUsingSmallerSizing];
    v4 = 64.0;
    if (v3)
    {
      v4 = 62.0;
    }

    self->_largestItemHeight = v4;
  }

  largestItemHeight = self->_largestItemHeight;
  if ([(PREditingFontPickerComponentViewController *)self isViewLoaded]&& [(PREditingFontPickerComponentViewController *)self _shouldShowWeightSlider])
  {
    if ([(NSArray *)self->_items count]> 1)
    {
      largestItemHeight = largestItemHeight + 16.0;
    }

    [(UISlider *)self->_fontWeightSlider bounds];
    return largestItemHeight + v6;
  }

  return largestItemHeight;
}

- (PREditingFontPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end