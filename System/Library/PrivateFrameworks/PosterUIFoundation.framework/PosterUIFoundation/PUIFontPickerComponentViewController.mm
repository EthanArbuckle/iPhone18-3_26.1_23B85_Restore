@interface PUIFontPickerComponentViewController
+ (id)defaultFontIdentifiersForRole:(id)role titleString:(id)string;
+ (id)defaultItemsForRole:(id)role text:(id)text;
- (BOOL)_shouldShowWeightSlider;
- (PUIFontPickerComponentViewController)initWithItems:(id)items selectedItem:(id)item role:(id)role titleString:(id)string;
- (PUIFontPickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)configureFontPickerViewIfNecessary;
- (id)contentStringForFont:(id)font locale:(id)locale;
- (id)contentStringNumberFormatter;
- (void)_updateWeightSliderVisibility;
- (void)filterFontViewsByLocale;
- (void)fontSliderDidUpdateWeight:(id)weight;
- (void)loadView;
- (void)setFontWeight:(double)weight;
- (void)setLocale:(id)locale;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PUIFontPickerComponentViewController

+ (id)defaultFontIdentifiersForRole:(id)role titleString:(id)string
{
  v14[4] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([role isEqual:*MEMORY[0x1E69C5218]])
  {
    v14[0] = @"PRTimeFontIdentifierSFPro";
    v14[1] = @"PRTimeFontIdentifierSFRounded";
    v14[2] = @"PRTimeFontIdentifierNewYorkAlpha";
    v14[3] = @"PRTimeFontIdentifierSFCondensed";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    if ([stringCopy length])
    {
      v7 = [getPRIncomingCallFontsProviderClass() timeFontIdentifiersForText:stringCopy availableFonts:v6];
    }

    else
    {
      v7 = [v6 copy];
    }

    v10 = v7;
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v13[0] = @"PRTimeFontIdentifierSoft";
      v13[1] = @"PRTimeFontIdentifierRounded";
      v13[2] = @"PRTimeFontIdentifierStencil";
      v13[3] = @"PRTimeFontIdentifierNewYork";
      v13[4] = @"PRTimeFontIdentifierSlab";
      v13[5] = @"PRTimeFontIdentifierRail";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v13;
    }

    else
    {
      v12[0] = @"PRTimeFontIdentifierSoft";
      v12[1] = @"PRTimeFontIdentifierRounded";
      v12[2] = @"PRTimeFontIdentifierStencil";
      v12[3] = @"PRTimeFontIdentifierNewYork";
      v12[4] = @"PRTimeFontIdentifierSlab";
      v12[5] = @"PRTimeFontIdentifierRail";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v12;
    }

    v10 = [v8 arrayWithObjects:v9 count:6];
  }

  return v10;
}

+ (id)defaultItemsForRole:(id)role text:(id)text
{
  v4 = [self defaultFontIdentifiersForRole:role titleString:text];
  v5 = [v4 bs_map:&__block_literal_global_21];

  return v5;
}

PUIFontPickerItem *__65__PUIFontPickerComponentViewController_defaultItemsForRole_text___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PUIFont alloc] initWithFontIdentifier:v2];

  v4 = [[PUIFontPickerItem alloc] initWithFont:v3 systemItem:1];

  return v4;
}

- (PUIFontPickerComponentViewController)initWithItems:(id)items selectedItem:(id)item role:(id)role titleString:(id)string
{
  itemsCopy = items;
  itemCopy = item;
  roleCopy = role;
  stringCopy = string;
  v21.receiver = self;
  v21.super_class = PUIFontPickerComponentViewController;
  v14 = [(PUIFontPickerComponentViewController *)&v21 init];
  if (v14)
  {
    v15 = [itemsCopy copy];
    items = v14->_items;
    v14->_items = v15;

    firstObject = itemCopy;
    if (!itemCopy)
    {
      firstObject = [itemsCopy firstObject];
    }

    objc_storeStrong(&v14->_selectedItem, firstObject);
    if (!itemCopy)
    {
    }

    objc_storeStrong(&v14->_role, role);
    objc_storeStrong(&v14->_titleString, string);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    locale = v14->_locale;
    v14->_locale = currentLocale;

    v14->_fontSize = 50.0;
  }

  return v14;
}

- (id)contentStringNumberFormatter
{
  if (contentStringNumberFormatter___once != -1)
  {
    [PUIFontPickerComponentViewController contentStringNumberFormatter];
  }

  v3 = contentStringNumberFormatter_numberFormatter;
  locale = [(PUIFontPickerComponentViewController *)self locale];
  [v3 setLocale:locale];

  v5 = contentStringNumberFormatter_numberFormatter;

  return v5;
}

uint64_t __68__PUIFontPickerComponentViewController_contentStringNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = contentStringNumberFormatter_numberFormatter;
  contentStringNumberFormatter_numberFormatter = v0;

  v2 = contentStringNumberFormatter_numberFormatter;

  return [v2 setNumberStyle:1];
}

- (id)contentStringForFont:(id)font locale:(id)locale
{
  v27[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  localeCopy = locale;
  v8 = fontCopy;
  role = [(PUIFontPickerComponentViewController *)self role];
  v10 = [role isEqualToString:*MEMORY[0x1E69C5218]];

  if (v10)
  {
    v11 = [getPRIncomingCallFontsProviderClass() sampleStringForFont:v8 displayingText:self->_titleString];
    contentStringNumberFormatter = v12;

    v14 = contentStringNumberFormatter;
  }

  else
  {
    contentStringNumberFormatter = [(PUIFontPickerComponentViewController *)self contentStringNumberFormatter];
    v11 = [contentStringNumberFormatter stringFromNumber:&unk_1F1C92928];
    v14 = v8;
  }

  v15 = [v14 fontWithSize:self->_fontSize];
  v16 = MEMORY[0x1E695DF90];
  v26 = *MEMORY[0x1E69DB648];
  v27[0] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v18 = [v16 dictionaryWithDictionary:v17];

  v19 = MEMORY[0x1E695DF58];
  localeIdentifier = [localeCopy localeIdentifier];
  v21 = [v19 componentsFromLocaleIdentifier:localeIdentifier];
  v22 = [v21 objectForKeyedSubscript:@"numbers"];

  if (PUINumberingSystemTypeRequiresLanguageTagging(v22))
  {
    v23 = PUINumberingTypeSystemLanguageTag(v22);
    [v18 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v18];

  return v24;
}

- (void)loadView
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  configureFontPickerViewIfNecessary = [(PUIFontPickerComponentViewController *)self configureFontPickerViewIfNecessary];
  v5 = objc_alloc_init(PUIStyleFontWeightSlider);
  fontWeightSlider = self->_fontWeightSlider;
  self->_fontWeightSlider = &v5->super;

  [(UISlider *)self->_fontWeightSlider addTarget:self action:sel_fontSliderDidUpdateWeight_ forControlEvents:4096];
  [(UISlider *)self->_fontWeightSlider setHidden:[(PUIFontPickerComponentViewController *)self _shouldShowWeightSlider]^ 1];
  v7 = self->_fontWeightSlider;
  _shouldShowWeightSlider = [(PUIFontPickerComponentViewController *)self _shouldShowWeightSlider];
  v9 = 0.0;
  if (_shouldShowWeightSlider)
  {
    v9 = 1.0;
  }

  [(UISlider *)v7 setAlpha:v9];
  v10 = self->_fontWeightSlider;
  [(PUIFontPickerComponentViewController *)self fontWeight];
  *&v11 = v11;
  [(UISlider *)v10 setValue:v11];
  [(UISlider *)self->_fontWeightSlider setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = MEMORY[0x1E695DF70];
  v45[0] = self->_fontWeightSlider;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v14 = [v12 arrayWithArray:v13];

  if (configureFontPickerViewIfNecessary)
  {
    [v3 addSubview:configureFontPickerViewIfNecessary];
    [v14 insertObject:configureFontPickerViewIfNecessary atIndex:0];
  }

  v41 = v14;
  v15 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v14];
  [v15 setAxis:1];
  [v15 setAlignment:3];
  [v15 setSpacing:16.0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v15];
  v33 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v15 leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v38;
  trailingAnchor = [v15 trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v35;
  topAnchor = [v15 topAnchor];
  topAnchor2 = [v3 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[2] = v31;
  bottomAnchor = [v15 bottomAnchor];
  v42 = v3;
  bottomAnchor2 = [v3 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v16;
  widthAnchor = [(UISlider *)self->_fontWeightSlider widthAnchor];
  widthAnchor2 = [v15 widthAnchor];
  v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-72.0];
  v44[4] = v19;
  heightAnchor = [(UISlider *)self->_fontWeightSlider heightAnchor];
  v21 = [heightAnchor constraintEqualToConstant:34.0];
  v44[5] = v21;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:6];
  v23 = v22 = configureFontPickerViewIfNecessary;
  [v33 activateConstraints:v23];

  if (v22)
  {
    v24 = MEMORY[0x1E696ACD8];
    widthAnchor3 = [v22 widthAnchor];
    widthAnchor4 = [v15 widthAnchor];
    v27 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v43 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    [v24 activateConstraints:v28];
  }

  [(PUIFontPickerComponentViewController *)self updateLayoutForCurrentSize];
  [(PUIFontPickerComponentViewController *)self filterFontViewsByLocale];
  [(PUIFontPickerComponentViewController *)self setView:v42];
}

- (id)configureFontPickerViewIfNecessary
{
  v58 = *MEMORY[0x1E69E9840];
  items = [(PUIFontPickerComponentViewController *)self items];
  v4 = [items count];

  if (v4 > 1)
  {
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    items2 = [(PUIFontPickerComponentViewController *)self items];
    v7 = [items2 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v7)
    {
      v8 = *v52;
      obj = items2;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v52 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v51 + 1) + 8 * i);
          font = [v10 font];
          v12 = [font effectiveFontForRole:self->_role ignoringWeight:1];
          v13 = [v12 fontWithSize:self->_fontSize];

          locale = [(PUIFontPickerComponentViewController *)self locale];
          v15 = [(PUIFontPickerComponentViewController *)self contentStringForFont:v13 locale:locale];

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
          role = [(PUIFontPickerComponentViewController *)self role];
          v20 = objc_alloc_init([PUIStyleFontPickerButton fontPickerButtonClassForRole:role]);

          [v20 configureWithAttributedString:v15];
          objc_initWeak(&from, v20);
          v21 = MEMORY[0x1E69DC628];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __74__PUIFontPickerComponentViewController_configureFontPickerViewIfNecessary__block_invoke;
          v48[3] = &unk_1E7855718;
          objc_copyWeak(&v49, &location);
          objc_copyWeak(&v50, &from);
          v48[4] = v10;
          v22 = [v21 actionWithHandler:v48];
          [v20 addAction:v22 forControlEvents:0x2000];
          if (BSEqualObjects())
          {
            [v20 setSelected:1];
            [(PUIFontPickerComponentViewController *)self setSelectedCellView:v20];
          }

          [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v46 addObject:v20];

          objc_destroyWeak(&v50);
          objc_destroyWeak(&v49);
          objc_destroyWeak(&from);
        }

        items2 = obj;
        v7 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v7);
    }

    [(PUIFontPickerComponentViewController *)self setCellViews:v46];
    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:v46];
    v24 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
    [v24 setAxis:0];
    [v24 setAlignment:1];
    [v24 setSpacing:20.0];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = array;
    v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v5 setContentInset:{0.0, 36.0, 0.0, 36.0}];
    [v5 setShowsVerticalScrollIndicator:0];
    [v5 setShowsHorizontalScrollIndicator:0];
    [v5 setClipsToBounds:0];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v24];
    if ([v24 effectiveUserInterfaceLayoutDirection] == 1)
    {
      CGAffineTransformMakeRotation(&from, 3.14159265);
      [v24 setTransform:{&from, array}];
      CGAffineTransformMakeRotation(&from, 3.14159265);
      [v5 setTransform:&from];
    }

    v36 = MEMORY[0x1E696ACD8];
    obja = [v24 leadingAnchor];
    leadingAnchor = [v5 leadingAnchor];
    v42 = [obja constraintEqualToAnchor:leadingAnchor];
    v56[0] = v42;
    trailingAnchor = [v24 trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[1] = v39;
    topAnchor = [v24 topAnchor];
    topAnchor2 = [v5 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[2] = v25;
    bottomAnchor = [v24 bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[3] = v28;
    heightAnchor = [v24 heightAnchor];
    heightAnchor2 = [v5 heightAnchor];
    v31 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v56[4] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:5];
    [v36 activateConstraints:v32];

    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
    self->_largestItemHeight = 0.0;
  }

  return v5;
}

void __74__PUIFontPickerComponentViewController_configureFontPickerViewIfNecessary__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained selectedItem];
  v4 = a1[4];

  if (v3 == v4)
  {
    v5 = [a1[4] font];
    v6 = [WeakRetained role];
    v7 = [v5 effectiveFontForRole:v6 ignoringWeight:1];

    v8 = [v7 pui_variantWeightRange];
    v10 = v9;
    v11 = [a1[4] font];
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

- (void)setFontWeight:(double)weight
{
  if (self->_fontWeight != weight)
  {
    self->_fontWeight = weight;
    *&weight = weight;
    [(UISlider *)self->_fontWeightSlider setValue:weight];
  }
}

- (void)fontSliderDidUpdateWeight:(id)weight
{
  weightCopy = weight;
  [weightCopy value];
  self->_fontWeight = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [weightCopy value];
  v7 = v6;

  [WeakRetained fontPickerComponentViewController:self didChangeFontWeight:v7];
}

- (BOOL)_shouldShowWeightSlider
{
  delegate = [(PUIFontPickerComponentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PUIFontPickerComponentViewController *)self delegate];
  v6 = [delegate2 fontPickerComponentViewControllerShouldShowWeightSliderForSelectedFont:self];

  return v6;
}

- (void)_updateWeightSliderVisibility
{
  _shouldShowWeightSlider = [(PUIFontPickerComponentViewController *)self _shouldShowWeightSlider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PUIFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke;
  v11[3] = &unk_1E7855740;
  v11[4] = self;
  v12 = _shouldShowWeightSlider;
  v4 = MEMORY[0x1AC5769F0](v11);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PUIFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke_2;
  v9[3] = &unk_1E7855740;
  v9[4] = self;
  v10 = _shouldShowWeightSlider;
  v5 = MEMORY[0x1AC5769F0](v9);
  if (_shouldShowWeightSlider)
  {
    v4[2](v4);
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:0 animations:0.15 completion:0.3];
  }

  else
  {
    v6 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PUIFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke_3;
    v7[3] = &unk_1E7855768;
    v8 = v4;
    [v6 animateWithDuration:v5 animations:v7 completion:0.15];
  }
}

void __69__PUIFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke(uint64_t a1)
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

void __69__PUIFontPickerComponentViewController__updateWeightSliderVisibility__block_invoke_2(uint64_t a1)
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
  isUsingSmallerSizing = [(PUIFontPickerComponentViewController *)self isUsingSmallerSizing];
  v4 = MEMORY[0x1E696ACD8];
  widthCellConstraints = [(PUIFontPickerComponentViewController *)self widthCellConstraints];
  [v4 deactivateConstraints:widthCellConstraints];

  v6 = MEMORY[0x1E696ACD8];
  heightCellConstraints = [(PUIFontPickerComponentViewController *)self heightCellConstraints];
  [v6 deactivateConstraints:heightCellConstraints];

  v8 = 52.0;
  if (isUsingSmallerSizing)
  {
    v8 = 50.0;
  }

  self->_fontSize = v8;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  cellViews = [(PUIFontPickerComponentViewController *)self cellViews];
  v10 = [cellViews countByEnumeratingWithState:&v44 objects:v48 count:16];
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
          objc_enumerationMutation(cellViews);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        contentFont = [v14 contentFont];
        locale = [(PUIFontPickerComponentViewController *)self locale];
        v17 = [(PUIFontPickerComponentViewController *)self contentStringForFont:contentFont locale:locale];

        [v14 configureWithAttributedString:v17];
        [v14 setUsingSmallerSizing:isUsingSmallerSizing];
        widthCellConstraint = [v14 widthCellConstraint];
        [array addObject:widthCellConstraint];

        heightCellConstraint = [v14 heightCellConstraint];
        [array2 addObject:heightCellConstraint];
      }

      v11 = [cellViews countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  v20 = [array copy];
  widthCellConstraints = self->_widthCellConstraints;
  self->_widthCellConstraints = v20;

  v22 = [array2 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v22;

  if ([(PUIFontPickerComponentViewController *)self isViewLoaded])
  {
    view = [(PUIFontPickerComponentViewController *)self view];
    [view bounds];
    v26 = v25;

    if (self->_configuredViewWidth != v26)
    {
      role = [(PUIFontPickerComponentViewController *)self role];
      v28 = [PUIStyleFontPickerButton fontPickerButtonClassForRole:role];

      [(objc_class *)v28 defaultFontPickerButtonSizeUsingSmallerSizing:isUsingSmallerSizing];
      v30 = v26 - v29;
      stackViewLeadingConstraint = [(PUIFontPickerComponentViewController *)self stackViewLeadingConstraint];
      [stackViewLeadingConstraint constant];
      v33 = v32;
      stackViewTrailingConstraint = [(PUIFontPickerComponentViewController *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint constant];
      v36 = v33 - v35;

      if (v30 >= v36)
      {
        v37 = 36.0;
      }

      else
      {
        v37 = v30 * 0.5;
      }

      stackViewLeadingConstraint2 = [(PUIFontPickerComponentViewController *)self stackViewLeadingConstraint];
      v39 = stackViewLeadingConstraint2;
      if (v37 >= 0.0)
      {
        v40 = v37;
      }

      else
      {
        v40 = 0.0;
      }

      [stackViewLeadingConstraint2 setConstant:v40];

      stackViewTrailingConstraint2 = [(PUIFontPickerComponentViewController *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint2 setConstant:{fmin(-v37, 0.0)}];

      self->_configuredViewWidth = v26;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUIFontPickerComponentViewController;
  [(PUIFontPickerComponentViewController *)&v8 viewDidLayoutSubviews];
  view = [(PUIFontPickerComponentViewController *)self view];
  [view bounds];
  v5 = v4;

  if (v5 > 375.0)
  {
    LOBYTE(v6) = 0;
    if ([(PUIFontPickerComponentViewController *)self isUsingSmallerSizing])
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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [currentDevice userInterfaceIdiom] != 1;

  if (((v6 ^ [(PUIFontPickerComponentViewController *)self isUsingSmallerSizing]) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  self->_usingSmallerSizing = v6;
  [(PUIFontPickerComponentViewController *)self updateLayoutForCurrentSize];
}

- (void)setLocale:(id)locale
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if (self->_locale != localeCopy)
  {
    objc_storeStrong(&self->_locale, locale);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    cellViews = [(PUIFontPickerComponentViewController *)self cellViews];
    v7 = [cellViews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(cellViews);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          contentFont = [v11 contentFont];
          locale = [(PUIFontPickerComponentViewController *)self locale];
          v14 = [(PUIFontPickerComponentViewController *)self contentStringForFont:contentFont locale:locale];

          [v11 configureWithAttributedString:v14];
          [v11 invalidateIntrinsicContentSize];
        }

        v8 = [cellViews countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(PUIFontPickerComponentViewController *)self filterFontViewsByLocale];
  }
}

- (void)filterFontViewsByLocale
{
  v25 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_role isEqualToString:*MEMORY[0x1E69C5218]])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(PUIFontPickerComponentViewController *)self cellViews];
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
          contentFont = [v8 contentFont];
          locale = [(PUIFontPickerComponentViewController *)self locale];
          v11 = [(PUIFontPickerComponentViewController *)self contentStringForFont:contentFont locale:locale];
          string = [v11 string];

          contentFont2 = [v8 contentFont];
          fontDescriptor = [contentFont2 fontDescriptor];
          v15 = [fontDescriptor objectForKey:v6];

          if ([string length])
          {
            v16 = 0;
            do
            {
              v17 = [v15 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v16)}];
              if ((v17 & 1) == 0)
              {
                break;
              }

              ++v16;
            }

            while (v16 < [string length]);
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
  if (([(PUIFontPickerComponentViewController *)self isViewLoaded]& 1) == 0 && [(NSArray *)self->_items count]>= 2)
  {
    isUsingSmallerSizing = [(PUIFontPickerComponentViewController *)self isUsingSmallerSizing];
    v4 = 64.0;
    if (isUsingSmallerSizing)
    {
      v4 = 62.0;
    }

    self->_largestItemHeight = v4;
  }

  largestItemHeight = self->_largestItemHeight;
  if ([(PUIFontPickerComponentViewController *)self isViewLoaded]&& [(PUIFontPickerComponentViewController *)self _shouldShowWeightSlider])
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

- (PUIFontPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end