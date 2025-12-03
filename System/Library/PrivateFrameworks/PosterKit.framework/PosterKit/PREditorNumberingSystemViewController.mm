@interface PREditorNumberingSystemViewController
- (CGSize)cellSize;
- (NSLocale)displayLocale;
- (PREditorNumberingSystemViewController)initWithSelectedNumberingSystem:(id)system selectedFont:(id)font;
- (PREditorNumberingSystemViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)baseContentStringForLocale:(id)locale;
- (id)contentStringForFont:(id)font locale:(id)locale;
- (id)displayFont;
- (id)localeWithNumberingSystem:(id)system;
- (void)didSelectNumberingSystem:(id)system;
- (void)setFont:(id)font;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PREditorNumberingSystemViewController

- (PREditorNumberingSystemViewController)initWithSelectedNumberingSystem:(id)system selectedFont:(id)font
{
  systemCopy = system;
  fontCopy = font;
  v8 = [(PREditorNumberingSystemViewController *)self init];
  if (v8)
  {
    if (systemCopy)
    {
      selfCopy = [systemCopy copy];
    }

    else
    {
      self = PRSystemNumberingSystem();
      selfCopy = [(PREditorNumberingSystemViewController *)self copy];
    }

    objc_storeStrong(&v8->_selectedNumberingSystem, selfCopy);
    if (!systemCopy)
    {

      selfCopy = self;
    }

    v10 = fontCopy;
    if (!fontCopy)
    {
      v10 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    }

    objc_storeStrong(&v8->_font, v10);
    if (!fontCopy)
    {
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v92 = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = PREditorNumberingSystemViewController;
  [(PREditorNumberingSystemViewController *)&v88 viewDidLoad];
  v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = PRAllNumberingSystems();
  selectedNumberingSystem = [(PREditorNumberingSystemViewController *)self selectedNumberingSystem];
  objc_initWeak(&location, self);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v4)
  {
    v74 = *v84;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v84 != v74)
        {
          objc_enumerationMutation(obj);
        }

        intValue = [*(*(&v83 + 1) + 8 * i) intValue];
        v7 = PRNumberingSystemStringForType(intValue);
        v8 = [(PREditorNumberingSystemViewController *)self localeWithNumberingSystem:v7];
        v9 = PRNumberingSystemDisplayNameForType(intValue);
        font = [(PREditorNumberingSystemViewController *)self font];
        v11 = [(PREditorNumberingSystemViewController *)self contentStringForFont:font locale:v8];

        v12 = objc_alloc_init(PREditingPickerLabeledCellView);
        contentLabel = [(PREditingPickerLabeledCellView *)v12 contentLabel];
        [contentLabel setAttributedText:v11];

        nameLabel = [(PREditingPickerLabeledCellView *)v12 nameLabel];
        [nameLabel setText:v9];

        v15 = MEMORY[0x1E69DC628];
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __52__PREditorNumberingSystemViewController_viewDidLoad__block_invoke;
        v79[3] = &unk_1E7843AA8;
        objc_copyWeak(&v82, &location);
        v16 = v7;
        v80 = v16;
        v17 = v12;
        v81 = v17;
        v18 = [v15 actionWithHandler:v79];
        [(PREditingPickerLabeledCellView *)v17 addAction:v18 forControlEvents:0x2000];
        if ([v16 isEqualToString:selectedNumberingSystem])
        {
          [(PREditingPickerLabeledCellView *)v17 setSelected:1];
          [(PREditorNumberingSystemViewController *)self setSelectedCellView:v17];
        }

        [(PREditingPickerLabeledCellView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v78 addObject:v17];
        largestItemHeight = self->_largestItemHeight;
        [v11 size];
        if (largestItemHeight >= v20)
        {
          v21 = largestItemHeight;
        }

        else
        {
          v21 = v20;
        }

        self->_largestItemHeight = v21;

        objc_destroyWeak(&v82);
      }

      v4 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v4);
  }

  [(PREditorNumberingSystemViewController *)self setCellViews:v78];
  v22 = [v78 count];
  if (0xAAAAAAAAAAAAAAABLL * [v78 count] <= 0x5555555555555555)
  {
    v23 = v22 / 3;
  }

  else
  {
    v23 = v22 / 3 + 1;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (v23)
  {
    v25 = 0;
    for (j = 0; j != v23; ++j)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v28 = v25;
      v29 = 3;
      do
      {
        if ([v78 count] <= v28)
        {
          break;
        }

        v30 = [v78 objectAtIndexedSubscript:v28];
        [array2 addObject:v30];

        ++v28;
        --v29;
      }

      while (v29);
      v31 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array2];
      [v31 setAxis:0];
      [v31 setDistribution:1];
      [v31 setAlignment:1];
      [v31 setSpacing:0.0];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      [array addObject:v31];

      v25 += 3;
    }
  }

  v32 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v32 setScrollEnabled:1];
  [v32 setAlwaysBounceHorizontal:0];
  [v32 setShowsVerticalScrollIndicator:0];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PREditorNumberingSystemViewController *)self view];
  [view addSubview:v32];

  v53 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v32 leadingAnchor];
  view2 = [(PREditorNumberingSystemViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:23.0];
  v90[0] = v67;
  trailingAnchor = [v32 trailingAnchor];
  view3 = [(PREditorNumberingSystemViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-23.0];
  v90[1] = v59;
  bottomAnchor = [v32 bottomAnchor];
  view4 = [(PREditorNumberingSystemViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v90[2] = v35;
  topAnchor = [v32 topAnchor];
  view5 = [(PREditorNumberingSystemViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v90[3] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  [v53 activateConstraints:v40];

  v41 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  [v41 setAxis:1];
  [v41 setAlignment:0];
  [v41 setSpacing:24.0];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v32 addSubview:v41];
  v48 = MEMORY[0x1E696ACD8];
  leadingAnchor3 = [v41 leadingAnchor];
  contentLayoutGuide = [v32 contentLayoutGuide];
  leadingAnchor4 = [contentLayoutGuide leadingAnchor];
  v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v89[0] = v68;
  trailingAnchor3 = [v41 trailingAnchor];
  contentLayoutGuide2 = [v32 contentLayoutGuide];
  trailingAnchor4 = [contentLayoutGuide2 trailingAnchor];
  v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v89[1] = v60;
  bottomAnchor3 = [v41 bottomAnchor];
  contentLayoutGuide3 = [v32 contentLayoutGuide];
  bottomAnchor4 = [contentLayoutGuide3 bottomAnchor];
  v52 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v89[2] = v52;
  topAnchor3 = [v41 topAnchor];
  contentLayoutGuide4 = [v32 contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide4 topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v89[3] = v42;
  widthAnchor = [v41 widthAnchor];
  frameLayoutGuide = [v32 frameLayoutGuide];
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v46 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v89[4] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
  [v48 activateConstraints:v47];

  [(PREditorNumberingSystemViewController *)self updateLayoutForCurrentSize];
  objc_destroyWeak(&location);
}

void __52__PREditorNumberingSystemViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSelectedNumberingSystem:*(a1 + 32)];
  v2 = [WeakRetained selectedCellView];
  [v2 setSelected:0];

  [WeakRetained setSelectedCellView:*(a1 + 40)];
  [*(a1 + 40) setSelected:1];
  [WeakRetained didSelectNumberingSystem:*(a1 + 32)];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PREditorNumberingSystemViewController;
  [(PREditorNumberingSystemViewController *)&v8 viewDidLayoutSubviews];
  view = [(PREditorNumberingSystemViewController *)self view];
  [view bounds];
  v5 = v4;

  if (v5 > 375.0)
  {
    v6 = 0;
    if ([(PREditorNumberingSystemViewController *)self isUsingSmallerSizing])
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

  if (v6 == [(PREditorNumberingSystemViewController *)self isUsingSmallerSizing])
  {
    goto LABEL_5;
  }

LABEL_6:
  [(PREditorNumberingSystemViewController *)self setUsingSmallerSizing:v6];
  [(PREditorNumberingSystemViewController *)self updateLayoutForCurrentSize];
}

- (void)updateLayoutForCurrentSize
{
  v52 = *MEMORY[0x1E69E9840];
  isUsingSmallerSizing = [(PREditorNumberingSystemViewController *)self isUsingSmallerSizing];
  v4 = MEMORY[0x1E696ACD8];
  widthCellConstraints = [(PREditorNumberingSystemViewController *)self widthCellConstraints];
  [v4 deactivateConstraints:widthCellConstraints];

  v6 = MEMORY[0x1E696ACD8];
  heightCellConstraints = [(PREditorNumberingSystemViewController *)self heightCellConstraints];
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
  v43 = PRAllNumberingSystemStrings();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(PREditorNumberingSystemViewController *)self cellViews];
  v46 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v46)
  {
    v10 = 0;
    v42 = *v48;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = [v43 objectAtIndexedSubscript:v10];
        contentLabel = [v12 contentLabel];
        v15 = [(PREditorNumberingSystemViewController *)self localeWithNumberingSystem:v13];
        font = [(PREditorNumberingSystemViewController *)self font];
        v17 = [(PREditorNumberingSystemViewController *)self contentStringForFont:font locale:v15];

        [contentLabel setAttributedText:v17];
        widthAnchor = [v12 widthAnchor];
        v19 = [widthAnchor constraintEqualToConstant:v8];
        [array addObject:v19];

        heightAnchor = [v12 heightAnchor];
        v21 = [heightAnchor constraintEqualToConstant:v9];
        [array2 addObject:v21];

        ++v10;
      }

      v46 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v46);
  }

  v22 = [array copy];
  widthCellConstraints = self->_widthCellConstraints;
  self->_widthCellConstraints = v22;

  v24 = [array2 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v24;

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array2];
  if ([(PREditorNumberingSystemViewController *)self isViewLoaded])
  {
    view = [(PREditorNumberingSystemViewController *)self view];
    [view bounds];
    v28 = v27;

    if (self->_configuredViewWidth != v28)
    {
      v29 = v28 + v8 * -3.0;
      stackViewLeadingConstraint = [(PREditorNumberingSystemViewController *)self stackViewLeadingConstraint];
      [stackViewLeadingConstraint constant];
      v32 = v31;
      stackViewTrailingConstraint = [(PREditorNumberingSystemViewController *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint constant];
      v35 = v32 - v34;

      if (v29 >= v35)
      {
        v36 = 23.0;
      }

      else
      {
        v36 = v29 * 0.5;
      }

      stackViewLeadingConstraint2 = [(PREditorNumberingSystemViewController *)self stackViewLeadingConstraint];
      v38 = stackViewLeadingConstraint2;
      if (v36 >= 0.0)
      {
        v39 = v36;
      }

      else
      {
        v39 = 0.0;
      }

      [stackViewLeadingConstraint2 setConstant:v39];

      stackViewTrailingConstraint2 = [(PREditorNumberingSystemViewController *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint2 setConstant:{fmin(-v36, 0.0)}];

      self->_configuredViewWidth = v28;
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

  v6 = [v5 stringFromNumber:&unk_1F1C6B7E8];

  return v6;
}

- (id)contentStringForFont:(id)font locale:(id)locale
{
  v21[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  fontCopy = font;
  v8 = [(PREditorNumberingSystemViewController *)self baseContentStringForLocale:localeCopy];
  v9 = PRNumberingSystemDisplayFontForFont(fontCopy);

  v10 = MEMORY[0x1E695DF90];
  v20 = *MEMORY[0x1E69DB648];
  v21[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v12 = [v10 dictionaryWithDictionary:v11];

  v13 = MEMORY[0x1E695DF58];
  localeIdentifier = [localeCopy localeIdentifier];

  v15 = [v13 componentsFromLocaleIdentifier:localeIdentifier];
  v16 = [v15 objectForKeyedSubscript:@"numbers"];

  if (PRTimeNumberingSystemRequiresLanguageTagging(v16))
  {
    v17 = PRTimeNumberingSystemLanguageTag(v16);
    [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v12];

  return v18;
}

- (void)setFont:(id)font
{
  v33 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v21 = fontCopy;
    objc_storeStrong(&self->_font, font);
    displayFont = [(PREditorNumberingSystemViewController *)self displayFont];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(PREditorNumberingSystemViewController *)self cellViews];
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
  v3 = PRAllNumberingSystems();
  if ((-[PREditorNumberingSystemViewController isViewLoaded](self, "isViewLoaded") & 1) == 0 && [v3 count])
  {
    isUsingSmallerSizing = [(PREditorNumberingSystemViewController *)self isUsingSmallerSizing];
    v5 = 64.0;
    if (isUsingSmallerSizing)
    {
      v5 = 62.0;
    }

    self->_largestItemHeight = v5;
  }

  v6 = [v3 count] / 3uLL;
  if (0xAAAAAAAAAAAAAAABLL * [v3 count] <= 0x5555555555555555)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = (v7 - 1) * 20.0 + v7 * self->_largestItemHeight + 30.0;

  return v8;
}

- (id)displayFont
{
  font = [(PREditorNumberingSystemViewController *)self font];
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
  selectedNumberingSystem = [(PREditorNumberingSystemViewController *)self selectedNumberingSystem];
  v4 = [(PREditorNumberingSystemViewController *)self localeWithNumberingSystem:selectedNumberingSystem];

  return v4;
}

- (id)localeWithNumberingSystem:(id)system
{
  v3 = MEMORY[0x1E695DF58];
  systemCopy = system;
  currentLocale = [v3 currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v7 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:localeIdentifier];
  v8 = [v7 mutableCopy];

  [v8 setObject:systemCopy forKey:@"numbers"];
  v9 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v8];
  v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];

  return v10;
}

- (void)didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  delegate = [(PREditorNumberingSystemViewController *)self delegate];
  [delegate numberingSystemViewController:self didSelectNumberingSystem:systemCopy];
}

- (PREditorNumberingSystemViewControllerDelegate)delegate
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