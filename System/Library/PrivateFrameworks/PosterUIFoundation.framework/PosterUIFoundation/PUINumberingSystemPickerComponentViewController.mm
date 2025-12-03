@interface PUINumberingSystemPickerComponentViewController
- (CGSize)cellSize;
- (NSLocale)displayLocale;
- (PUINumberingSystemPickerComponentViewController)initWithNumberingSystem:(id)system font:(id)font;
- (PUINumberingSystemPickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)baseContentStringForLocale:(id)locale;
- (id)contentStringForFont:(id)font locale:(id)locale;
- (id)displayFont;
- (void)didSelectNumberingSystem:(id)system;
- (void)setFont:(id)font;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUINumberingSystemPickerComponentViewController

- (PUINumberingSystemPickerComponentViewController)initWithNumberingSystem:(id)system font:(id)font
{
  systemCopy = system;
  fontCopy = font;
  v13.receiver = self;
  v13.super_class = PUINumberingSystemPickerComponentViewController;
  v8 = [(PUINumberingSystemPickerComponentViewController *)&v13 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [systemCopy copy];
    v10 = v9;
    if (!v9)
    {
      v10 = +[PUINumberingSystem systemDefaultNumberingSystem];
    }

    objc_storeStrong(&v8->_selectedNumberingSystem, v10);
    if (!v9)
    {
    }

    v11 = fontCopy;
    if (!fontCopy)
    {
      v11 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    }

    objc_storeStrong(&v8->_font, v11);
    if (!fontCopy)
    {
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v67 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = PUINumberingSystemPickerComponentViewController;
  [(PUINumberingSystemPickerComponentViewController *)&v64 viewDidLoad];
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[PUINumberingSystem supportedNumberingSystemTypes];
  selectedNumberingSystem = [(PUINumberingSystemPickerComponentViewController *)self selectedNumberingSystem];
  objc_initWeak(&location, self);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v4)
  {
    v51 = *v60;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [[PUINumberingSystem alloc] initWithNumberingSystemType:*(*(&v59 + 1) + 8 * i)];
        locale = [(PUINumberingSystem *)v6 locale];
        localizedDisplayName = [(PUINumberingSystem *)v6 localizedDisplayName];
        font = [(PUINumberingSystemPickerComponentViewController *)self font];
        v10 = [(PUINumberingSystemPickerComponentViewController *)self contentStringForFont:font locale:locale];

        v11 = objc_alloc_init(PUIStylePickerLabeledButton);
        contentLabel = [(PUIStylePickerLabeledButton *)v11 contentLabel];
        [contentLabel setAttributedText:v10];

        nameLabel = [(PUIStylePickerLabeledButton *)v11 nameLabel];
        [nameLabel setText:localizedDisplayName];

        v14 = MEMORY[0x1E69DC628];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __62__PUINumberingSystemPickerComponentViewController_viewDidLoad__block_invoke;
        v55[3] = &unk_1E78560F0;
        objc_copyWeak(&v58, &location);
        v15 = v6;
        v56 = v15;
        v16 = v11;
        v57 = v16;
        v17 = [v14 actionWithHandler:v55];
        [(PUIStylePickerLabeledButton *)v16 addAction:v17 forControlEvents:0x2000];
        if ([(PUINumberingSystem *)v15 isEqual:selectedNumberingSystem])
        {
          [(PUIStylePickerLabeledButton *)v16 setSelected:1];
          [(PUINumberingSystemPickerComponentViewController *)self setSelectedSymbolView:v16];
        }

        [(PUIStylePickerLabeledButton *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v54 addObject:v16];
        largestItemHeight = self->_largestItemHeight;
        [v10 size];
        if (largestItemHeight >= v19)
        {
          v20 = largestItemHeight;
        }

        else
        {
          v20 = v19;
        }

        self->_largestItemHeight = v20;

        objc_destroyWeak(&v58);
      }

      v4 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v4);
  }

  [(PUINumberingSystemPickerComponentViewController *)self setSymbolViews:v54];
  v21 = [v54 count];
  if (0xAAAAAAAAAAAAAAABLL * [v54 count] <= 0x5555555555555555)
  {
    v22 = v21 / 3;
  }

  else
  {
    v22 = v21 / 3 + 1;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (v22)
  {
    v24 = 0;
    for (j = 0; j != v22; ++j)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v27 = v24;
      v28 = 3;
      do
      {
        if ([v54 count] <= v27)
        {
          break;
        }

        v29 = [v54 objectAtIndexedSubscript:v27];
        [array2 addObject:v29];

        ++v27;
        --v28;
      }

      while (v28);
      v30 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array2];
      [v30 setAxis:0];
      [v30 setDistribution:1];
      [v30 setAlignment:1];
      [v30 setSpacing:0.0];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      [array addObject:v30];

      v24 += 3;
    }
  }

  v31 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  [v31 setAxis:1];
  [v31 setSpacing:24.0];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PUINumberingSystemPickerComponentViewController *)self view];
  [view addSubview:v31];

  v40 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v31 leadingAnchor];
  view2 = [(PUINumberingSystemPickerComponentViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:23.0];
  v65[0] = v48;
  trailingAnchor = [v31 trailingAnchor];
  view3 = [(PUINumberingSystemPickerComponentViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-23.0];
  v65[1] = v44;
  bottomAnchor = [v31 bottomAnchor];
  view4 = [(PUINumberingSystemPickerComponentViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v65[2] = v34;
  topAnchor = [v31 topAnchor];
  view5 = [(PUINumberingSystemPickerComponentViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65[3] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
  [v40 activateConstraints:v39];

  [(PUINumberingSystemPickerComponentViewController *)self updateLayoutForCurrentSize];
  objc_destroyWeak(&location);
}

void __62__PUINumberingSystemPickerComponentViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSelectedNumberingSystem:*(a1 + 32)];
  v2 = [WeakRetained selectedSymbolView];
  [v2 setSelected:0];

  [WeakRetained setSelectedSymbolView:*(a1 + 40)];
  [*(a1 + 40) setSelected:1];
  [WeakRetained didSelectNumberingSystem:*(a1 + 32)];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUINumberingSystemPickerComponentViewController;
  [(PUINumberingSystemPickerComponentViewController *)&v8 viewDidLayoutSubviews];
  view = [(PUINumberingSystemPickerComponentViewController *)self view];
  [view bounds];
  v5 = v4;

  if (v5 > 375.0)
  {
    v6 = 0;
    if ([(PUINumberingSystemPickerComponentViewController *)self isUsingSmallerSizing])
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

  if (v6 == [(PUINumberingSystemPickerComponentViewController *)self isUsingSmallerSizing])
  {
    goto LABEL_5;
  }

LABEL_6:
  [(PUINumberingSystemPickerComponentViewController *)self setUsingSmallerSizing:v6];
  [(PUINumberingSystemPickerComponentViewController *)self updateLayoutForCurrentSize];
}

- (void)updateLayoutForCurrentSize
{
  v54 = *MEMORY[0x1E69E9840];
  isUsingSmallerSizing = [(PUINumberingSystemPickerComponentViewController *)self isUsingSmallerSizing];
  v4 = MEMORY[0x1E696ACD8];
  widthCellConstraints = [(PUINumberingSystemPickerComponentViewController *)self widthCellConstraints];
  [v4 deactivateConstraints:widthCellConstraints];

  v6 = MEMORY[0x1E696ACD8];
  heightCellConstraints = [(PUINumberingSystemPickerComponentViewController *)self heightCellConstraints];
  [v6 deactivateConstraints:heightCellConstraints];

  if (isUsingSmallerSizing)
  {
    v8 = 86.0;
  }

  else
  {
    v8 = 89.0;
  }

  if (isUsingSmallerSizing)
  {
    v9 = 88.0;
  }

  else
  {
    v9 = 90.0;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  font = [(PUINumberingSystemPickerComponentViewController *)self font];
  v10 = +[PUINumberingSystem supportedNumberingSystemTypes];
  array3 = [v10 array];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(PUINumberingSystemPickerComponentViewController *)self symbolViews];
  v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v48)
  {
    v11 = 0;
    v43 = *v50;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [array3 objectAtIndexedSubscript:v11];
        v15 = [[PUINumberingSystem alloc] initWithNumberingSystemType:v14];
        contentLabel = [v13 contentLabel];
        locale = [(PUINumberingSystem *)v15 locale];
        v18 = [(PUINumberingSystemPickerComponentViewController *)self contentStringForFont:font locale:locale];

        [contentLabel setAttributedText:v18];
        widthAnchor = [v13 widthAnchor];
        v20 = [widthAnchor constraintEqualToConstant:v8];
        [array addObject:v20];

        heightAnchor = [v13 heightAnchor];
        v22 = [heightAnchor constraintEqualToConstant:v9];
        [array2 addObject:v22];

        v11 += 2;
      }

      v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v48);
  }

  v23 = [array copy];
  widthCellConstraints = self->_widthCellConstraints;
  self->_widthCellConstraints = v23;

  v25 = [array2 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v25;

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array2];
  if ([(PUINumberingSystemPickerComponentViewController *)self isViewLoaded])
  {
    view = [(PUINumberingSystemPickerComponentViewController *)self view];
    [view bounds];
    v29 = v28;

    if (self->_configuredViewWidth != v29)
    {
      v30 = v29 + v8 * -3.0;
      stackViewLeadingConstraint = [(PUINumberingSystemPickerComponentViewController *)self stackViewLeadingConstraint];
      [stackViewLeadingConstraint constant];
      v33 = v32;
      stackViewTrailingConstraint = [(PUINumberingSystemPickerComponentViewController *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint constant];
      v36 = v33 - v35;

      if (v30 >= v36)
      {
        v37 = 23.0;
      }

      else
      {
        v37 = v30 * 0.5;
      }

      stackViewLeadingConstraint2 = [(PUINumberingSystemPickerComponentViewController *)self stackViewLeadingConstraint];
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

      stackViewTrailingConstraint2 = [(PUINumberingSystemPickerComponentViewController *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint2 setConstant:{fmin(-v37, 0.0)}];

      self->_configuredViewWidth = v29;
    }
  }
}

- (id)baseContentStringForLocale:(id)locale
{
  v3 = MEMORY[0x1E696ADA0];
  localeCopy = locale;
  v5 = objc_alloc_init(v3);
  [v5 setNumberStyle:1];
  [v5 setLocale:localeCopy];

  v6 = [v5 stringFromNumber:&unk_1F1C929A0];

  return v6;
}

- (id)contentStringForFont:(id)font locale:(id)locale
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUINumberingSystemPickerComponentViewController *)self baseContentStringForLocale:locale];
  selectedNumberingSystem = [(PUINumberingSystemPickerComponentViewController *)self selectedNumberingSystem];
  v7 = selectedNumberingSystem;
  if (selectedNumberingSystem)
  {
    v8 = selectedNumberingSystem;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  font = [(PUINumberingSystemPickerComponentViewController *)self font];
  v11 = [PUINumberingSystem numberingSystemDisplayFontForFont:font];

  v12 = MEMORY[0x1E695DF90];
  v21 = *MEMORY[0x1E69DB648];
  v22[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v14 = [v12 dictionaryWithDictionary:v13];

  type = [v9 type];
  v16 = PUINumberingSystemTypeRequiresLanguageTagging(type);

  if (v16)
  {
    type2 = [v9 type];
    v18 = PUINumberingTypeSystemLanguageTag(type2);
    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v14];

  return v19;
}

- (void)setFont:(id)font
{
  v33 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v21 = fontCopy;
    objc_storeStrong(&self->_font, font);
    displayFont = [(PUINumberingSystemPickerComponentViewController *)self displayFont];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(PUINumberingSystemPickerComponentViewController *)self symbolViews];
    v6 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = *v27;
      v23 = *MEMORY[0x1E69DB648];
      v8 = *MEMORY[0x1E696A518];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          contentLabel = [v10 contentLabel];
          attributedText = [contentLabel attributedText];
          v13 = MEMORY[0x1E695DF90];
          v30 = v23;
          v31 = displayFont;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v15 = [v13 dictionaryWithDictionary:v14];

          v16 = [attributedText attributesAtIndex:0 effectiveRange:0];
          v17 = [v16 objectForKeyedSubscript:v8];

          if (v17 && [v17 length])
          {
            [v15 setObject:v17 forKeyedSubscript:v8];
          }

          v18 = objc_alloc(MEMORY[0x1E696AAB0]);
          string = [attributedText string];
          v20 = [v18 initWithString:string attributes:v15];

          [contentLabel setAttributedText:v20];
          [v10 invalidateIntrinsicContentSize];
        }

        v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v7);
    }

    fontCopy = v21;
  }
}

- (double)estimatedHeight
{
  v3 = +[PUINumberingSystem supportedNumberingSystemTypes];
  array = [v3 array];

  if ((-[PUINumberingSystemPickerComponentViewController isViewLoaded](self, "isViewLoaded") & 1) == 0 && [array count])
  {
    isUsingSmallerSizing = [(PUINumberingSystemPickerComponentViewController *)self isUsingSmallerSizing];
    v6 = 64.0;
    if (isUsingSmallerSizing)
    {
      v6 = 62.0;
    }

    self->_largestItemHeight = v6;
  }

  v7 = [array count] / 3uLL;
  if (0xAAAAAAAAAAAAAAABLL * [array count] <= 0x5555555555555555)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = (v8 - 1) * 20.0 + v8 * self->_largestItemHeight + 30.0;

  return v9;
}

- (id)displayFont
{
  font = [(PUINumberingSystemPickerComponentViewController *)self font];
  v3 = font;
  if (font)
  {
    [font fontWithSize:56.0];
  }

  else
  {
    [MEMORY[0x1E69DB878] systemFontOfSize:56.0];
  }
  v4 = ;

  return v4;
}

- (NSLocale)displayLocale
{
  selectedNumberingSystem = [(PUINumberingSystemPickerComponentViewController *)self selectedNumberingSystem];
  locale = [selectedNumberingSystem locale];

  return locale;
}

- (void)didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  delegate = [(PUINumberingSystemPickerComponentViewController *)self delegate];
  [delegate numberingSystemPickerViewController:self didSelectNumberingSystem:systemCopy];
}

- (PUINumberingSystemPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end