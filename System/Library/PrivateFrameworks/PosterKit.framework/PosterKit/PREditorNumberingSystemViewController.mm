@interface PREditorNumberingSystemViewController
- (CGSize)cellSize;
- (NSLocale)displayLocale;
- (PREditorNumberingSystemViewController)initWithSelectedNumberingSystem:(id)a3 selectedFont:(id)a4;
- (PREditorNumberingSystemViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)baseContentStringForLocale:(id)a3;
- (id)contentStringForFont:(id)a3 locale:(id)a4;
- (id)displayFont;
- (id)localeWithNumberingSystem:(id)a3;
- (void)didSelectNumberingSystem:(id)a3;
- (void)setFont:(id)a3;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PREditorNumberingSystemViewController

- (PREditorNumberingSystemViewController)initWithSelectedNumberingSystem:(id)a3 selectedFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PREditorNumberingSystemViewController *)self init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 copy];
    }

    else
    {
      self = PRSystemNumberingSystem();
      v9 = [(PREditorNumberingSystemViewController *)self copy];
    }

    objc_storeStrong(&v8->_selectedNumberingSystem, v9);
    if (!v6)
    {

      v9 = self;
    }

    v10 = v7;
    if (!v7)
    {
      v10 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    }

    objc_storeStrong(&v8->_font, v10);
    if (!v7)
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
  v77 = [(PREditorNumberingSystemViewController *)self selectedNumberingSystem];
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

        v6 = [*(*(&v83 + 1) + 8 * i) intValue];
        v7 = PRNumberingSystemStringForType(v6);
        v8 = [(PREditorNumberingSystemViewController *)self localeWithNumberingSystem:v7];
        v9 = PRNumberingSystemDisplayNameForType(v6);
        v10 = [(PREditorNumberingSystemViewController *)self font];
        v11 = [(PREditorNumberingSystemViewController *)self contentStringForFont:v10 locale:v8];

        v12 = objc_alloc_init(PREditingPickerLabeledCellView);
        v13 = [(PREditingPickerLabeledCellView *)v12 contentLabel];
        [v13 setAttributedText:v11];

        v14 = [(PREditingPickerLabeledCellView *)v12 nameLabel];
        [v14 setText:v9];

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
        if ([v16 isEqualToString:v77])
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

  v24 = [MEMORY[0x1E695DF70] array];
  if (v23)
  {
    v25 = 0;
    for (j = 0; j != v23; ++j)
    {
      v27 = [MEMORY[0x1E695DF70] array];
      v28 = v25;
      v29 = 3;
      do
      {
        if ([v78 count] <= v28)
        {
          break;
        }

        v30 = [v78 objectAtIndexedSubscript:v28];
        [v27 addObject:v30];

        ++v28;
        --v29;
      }

      while (v29);
      v31 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v27];
      [v31 setAxis:0];
      [v31 setDistribution:1];
      [v31 setAlignment:1];
      [v31 setSpacing:0.0];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v24 addObject:v31];

      v25 += 3;
    }
  }

  v32 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v32 setScrollEnabled:1];
  [v32 setAlwaysBounceHorizontal:0];
  [v32 setShowsVerticalScrollIndicator:0];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [(PREditorNumberingSystemViewController *)self view];
  [v33 addSubview:v32];

  v53 = MEMORY[0x1E696ACD8];
  v71 = [v32 leadingAnchor];
  v75 = [(PREditorNumberingSystemViewController *)self view];
  v69 = [v75 leadingAnchor];
  v67 = [v71 constraintEqualToAnchor:v69 constant:23.0];
  v90[0] = v67;
  v61 = [v32 trailingAnchor];
  v65 = [(PREditorNumberingSystemViewController *)self view];
  v63 = [v65 trailingAnchor];
  v59 = [v61 constraintEqualToAnchor:v63 constant:-23.0];
  v90[1] = v59;
  v55 = [v32 bottomAnchor];
  v57 = [(PREditorNumberingSystemViewController *)self view];
  v34 = [v57 bottomAnchor];
  v35 = [v55 constraintEqualToAnchor:v34];
  v90[2] = v35;
  v36 = [v32 topAnchor];
  v37 = [(PREditorNumberingSystemViewController *)self view];
  v38 = [v37 topAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  v90[3] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  [v53 activateConstraints:v40];

  v41 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v24];
  [v41 setAxis:1];
  [v41 setAlignment:0];
  [v41 setSpacing:24.0];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v32 addSubview:v41];
  v48 = MEMORY[0x1E696ACD8];
  v72 = [v41 leadingAnchor];
  v76 = [v32 contentLayoutGuide];
  v70 = [v76 leadingAnchor];
  v68 = [v72 constraintEqualToAnchor:v70];
  v89[0] = v68;
  v64 = [v41 trailingAnchor];
  v66 = [v32 contentLayoutGuide];
  v62 = [v66 trailingAnchor];
  v60 = [v64 constraintEqualToAnchor:v62];
  v89[1] = v60;
  v56 = [v41 bottomAnchor];
  v58 = [v32 contentLayoutGuide];
  v54 = [v58 bottomAnchor];
  v52 = [v56 constraintEqualToAnchor:v54];
  v89[2] = v52;
  v49 = [v41 topAnchor];
  v51 = [v32 contentLayoutGuide];
  v50 = [v51 topAnchor];
  v42 = [v49 constraintEqualToAnchor:v50];
  v89[3] = v42;
  v43 = [v41 widthAnchor];
  v44 = [v32 frameLayoutGuide];
  v45 = [v44 widthAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
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
  v3 = [(PREditorNumberingSystemViewController *)self view];
  [v3 bounds];
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

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v7 userInterfaceIdiom] != 1;

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
  v3 = [(PREditorNumberingSystemViewController *)self isUsingSmallerSizing];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(PREditorNumberingSystemViewController *)self widthCellConstraints];
  [v4 deactivateConstraints:v5];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(PREditorNumberingSystemViewController *)self heightCellConstraints];
  [v6 deactivateConstraints:v7];

  if (v3)
  {
    v8 = 86.0;
  }

  else
  {
    v8 = 89.0;
  }

  if (v3)
  {
    v9 = 88.0;
  }

  else
  {
    v9 = 90.0;
  }

  v45 = [MEMORY[0x1E695DF70] array];
  v44 = [MEMORY[0x1E695DF70] array];
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
        v14 = [v12 contentLabel];
        v15 = [(PREditorNumberingSystemViewController *)self localeWithNumberingSystem:v13];
        v16 = [(PREditorNumberingSystemViewController *)self font];
        v17 = [(PREditorNumberingSystemViewController *)self contentStringForFont:v16 locale:v15];

        [v14 setAttributedText:v17];
        v18 = [v12 widthAnchor];
        v19 = [v18 constraintEqualToConstant:v8];
        [v45 addObject:v19];

        v20 = [v12 heightAnchor];
        v21 = [v20 constraintEqualToConstant:v9];
        [v44 addObject:v21];

        ++v10;
      }

      v46 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v46);
  }

  v22 = [v45 copy];
  widthCellConstraints = self->_widthCellConstraints;
  self->_widthCellConstraints = v22;

  v24 = [v44 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v24;

  [MEMORY[0x1E696ACD8] activateConstraints:v45];
  [MEMORY[0x1E696ACD8] activateConstraints:v44];
  if ([(PREditorNumberingSystemViewController *)self isViewLoaded])
  {
    v26 = [(PREditorNumberingSystemViewController *)self view];
    [v26 bounds];
    v28 = v27;

    if (self->_configuredViewWidth != v28)
    {
      v29 = v28 + v8 * -3.0;
      v30 = [(PREditorNumberingSystemViewController *)self stackViewLeadingConstraint];
      [v30 constant];
      v32 = v31;
      v33 = [(PREditorNumberingSystemViewController *)self stackViewTrailingConstraint];
      [v33 constant];
      v35 = v32 - v34;

      if (v29 >= v35)
      {
        v36 = 23.0;
      }

      else
      {
        v36 = v29 * 0.5;
      }

      v37 = [(PREditorNumberingSystemViewController *)self stackViewLeadingConstraint];
      v38 = v37;
      if (v36 >= 0.0)
      {
        v39 = v36;
      }

      else
      {
        v39 = 0.0;
      }

      [v37 setConstant:v39];

      v40 = [(PREditorNumberingSystemViewController *)self stackViewTrailingConstraint];
      [v40 setConstant:{fmin(-v36, 0.0)}];

      self->_configuredViewWidth = v28;
    }
  }
}

- (id)baseContentStringForLocale:(id)a3
{
  v3 = MEMORY[0x1E696ADA0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setNumberStyle:1];
  [v5 setLocale:v4];

  v6 = [v5 stringFromNumber:&unk_1F1C6B7E8];

  return v6;
}

- (id)contentStringForFont:(id)a3 locale:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PREditorNumberingSystemViewController *)self baseContentStringForLocale:v6];
  v9 = PRNumberingSystemDisplayFontForFont(v7);

  v10 = MEMORY[0x1E695DF90];
  v20 = *MEMORY[0x1E69DB648];
  v21[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v12 = [v10 dictionaryWithDictionary:v11];

  v13 = MEMORY[0x1E695DF58];
  v14 = [v6 localeIdentifier];

  v15 = [v13 componentsFromLocaleIdentifier:v14];
  v16 = [v15 objectForKeyedSubscript:@"numbers"];

  if (PRTimeNumberingSystemRequiresLanguageTagging(v16))
  {
    v17 = PRTimeNumberingSystemLanguageTag(v16);
    [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v12];

  return v18;
}

- (void)setFont:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_font != v5)
  {
    v21 = v5;
    objc_storeStrong(&self->_font, a3);
    v25 = [(PREditorNumberingSystemViewController *)self displayFont];
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
          v11 = [v10 contentLabel];
          v12 = [v11 attributedText];
          v13 = MEMORY[0x1E695DF90];
          v30 = v23;
          v31 = v25;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v15 = [v13 dictionaryWithDictionary:v14];

          v16 = [v12 attributesAtIndex:0 effectiveRange:0];
          v17 = [v16 objectForKeyedSubscript:v8];

          if (v17 && [v17 length])
          {
            [v15 setObject:v17 forKeyedSubscript:v8];
          }

          v18 = objc_alloc(MEMORY[0x1E696AAB0]);
          v19 = [v12 string];
          v20 = [v18 initWithString:v19 attributes:v15];

          [v11 setAttributedText:v20];
          [v10 invalidateIntrinsicContentSize];
        }

        v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v7);
    }

    v5 = v21;
  }
}

- (double)estimatedHeight
{
  v3 = PRAllNumberingSystems();
  if ((-[PREditorNumberingSystemViewController isViewLoaded](self, "isViewLoaded") & 1) == 0 && [v3 count])
  {
    v4 = [(PREditorNumberingSystemViewController *)self isUsingSmallerSizing];
    v5 = 64.0;
    if (v4)
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
  v2 = [(PREditorNumberingSystemViewController *)self font];
  v3 = v2;
  if (v2)
  {
    [v2 fontWithSize:56.0];
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
  v3 = [(PREditorNumberingSystemViewController *)self selectedNumberingSystem];
  v4 = [(PREditorNumberingSystemViewController *)self localeWithNumberingSystem:v3];

  return v4;
}

- (id)localeWithNumberingSystem:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 currentLocale];
  v6 = [v5 localeIdentifier];

  v7 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v6];
  v8 = [v7 mutableCopy];

  [v8 setObject:v4 forKey:@"numbers"];
  v9 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v8];
  v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];

  return v10;
}

- (void)didSelectNumberingSystem:(id)a3
{
  v4 = a3;
  v5 = [(PREditorNumberingSystemViewController *)self delegate];
  [v5 numberingSystemViewController:self didSelectNumberingSystem:v4];
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