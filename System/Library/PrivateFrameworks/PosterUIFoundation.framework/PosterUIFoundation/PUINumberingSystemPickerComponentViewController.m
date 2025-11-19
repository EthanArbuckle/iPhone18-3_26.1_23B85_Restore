@interface PUINumberingSystemPickerComponentViewController
- (CGSize)cellSize;
- (NSLocale)displayLocale;
- (PUINumberingSystemPickerComponentViewController)initWithNumberingSystem:(id)a3 font:(id)a4;
- (PUINumberingSystemPickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)baseContentStringForLocale:(id)a3;
- (id)contentStringForFont:(id)a3 locale:(id)a4;
- (id)displayFont;
- (void)didSelectNumberingSystem:(id)a3;
- (void)setFont:(id)a3;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUINumberingSystemPickerComponentViewController

- (PUINumberingSystemPickerComponentViewController)initWithNumberingSystem:(id)a3 font:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PUINumberingSystemPickerComponentViewController;
  v8 = [(PUINumberingSystemPickerComponentViewController *)&v13 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v9;
    if (!v9)
    {
      v10 = +[PUINumberingSystem systemDefaultNumberingSystem];
    }

    objc_storeStrong(&v8->_selectedNumberingSystem, v10);
    if (!v9)
    {
    }

    v11 = v7;
    if (!v7)
    {
      v11 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    }

    objc_storeStrong(&v8->_font, v11);
    if (!v7)
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
  v53 = [(PUINumberingSystemPickerComponentViewController *)self selectedNumberingSystem];
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
        v7 = [(PUINumberingSystem *)v6 locale];
        v8 = [(PUINumberingSystem *)v6 localizedDisplayName];
        v9 = [(PUINumberingSystemPickerComponentViewController *)self font];
        v10 = [(PUINumberingSystemPickerComponentViewController *)self contentStringForFont:v9 locale:v7];

        v11 = objc_alloc_init(PUIStylePickerLabeledButton);
        v12 = [(PUIStylePickerLabeledButton *)v11 contentLabel];
        [v12 setAttributedText:v10];

        v13 = [(PUIStylePickerLabeledButton *)v11 nameLabel];
        [v13 setText:v8];

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
        if ([(PUINumberingSystem *)v15 isEqual:v53])
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

  v23 = [MEMORY[0x1E695DF70] array];
  if (v22)
  {
    v24 = 0;
    for (j = 0; j != v22; ++j)
    {
      v26 = [MEMORY[0x1E695DF70] array];
      v27 = v24;
      v28 = 3;
      do
      {
        if ([v54 count] <= v27)
        {
          break;
        }

        v29 = [v54 objectAtIndexedSubscript:v27];
        [v26 addObject:v29];

        ++v27;
        --v28;
      }

      while (v28);
      v30 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v26];
      [v30 setAxis:0];
      [v30 setDistribution:1];
      [v30 setAlignment:1];
      [v30 setSpacing:0.0];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v23 addObject:v30];

      v24 += 3;
    }
  }

  v31 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v23];
  [v31 setAxis:1];
  [v31 setSpacing:24.0];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(PUINumberingSystemPickerComponentViewController *)self view];
  [v32 addSubview:v31];

  v40 = MEMORY[0x1E696ACD8];
  v33 = [v31 leadingAnchor];
  v52 = [(PUINumberingSystemPickerComponentViewController *)self view];
  v49 = [v52 leadingAnchor];
  v48 = [v33 constraintEqualToAnchor:v49 constant:23.0];
  v65[0] = v48;
  v45 = [v31 trailingAnchor];
  v47 = [(PUINumberingSystemPickerComponentViewController *)self view];
  v46 = [v47 trailingAnchor];
  v44 = [v45 constraintEqualToAnchor:v46 constant:-23.0];
  v65[1] = v44;
  v42 = [v31 bottomAnchor];
  v43 = [(PUINumberingSystemPickerComponentViewController *)self view];
  v41 = [v43 bottomAnchor];
  v34 = [v42 constraintEqualToAnchor:v41];
  v65[2] = v34;
  v35 = [v31 topAnchor];
  v36 = [(PUINumberingSystemPickerComponentViewController *)self view];
  v37 = [v36 topAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
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
  v3 = [(PUINumberingSystemPickerComponentViewController *)self view];
  [v3 bounds];
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

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v7 userInterfaceIdiom] != 1;

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
  v3 = [(PUINumberingSystemPickerComponentViewController *)self isUsingSmallerSizing];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(PUINumberingSystemPickerComponentViewController *)self widthCellConstraints];
  [v4 deactivateConstraints:v5];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(PUINumberingSystemPickerComponentViewController *)self heightCellConstraints];
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

  v47 = [MEMORY[0x1E695DF70] array];
  v46 = [MEMORY[0x1E695DF70] array];
  v45 = [(PUINumberingSystemPickerComponentViewController *)self font];
  v10 = +[PUINumberingSystem supportedNumberingSystemTypes];
  v44 = [v10 array];

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
        v14 = [v44 objectAtIndexedSubscript:v11];
        v15 = [[PUINumberingSystem alloc] initWithNumberingSystemType:v14];
        v16 = [v13 contentLabel];
        v17 = [(PUINumberingSystem *)v15 locale];
        v18 = [(PUINumberingSystemPickerComponentViewController *)self contentStringForFont:v45 locale:v17];

        [v16 setAttributedText:v18];
        v19 = [v13 widthAnchor];
        v20 = [v19 constraintEqualToConstant:v8];
        [v47 addObject:v20];

        v21 = [v13 heightAnchor];
        v22 = [v21 constraintEqualToConstant:v9];
        [v46 addObject:v22];

        v11 += 2;
      }

      v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v48);
  }

  v23 = [v47 copy];
  widthCellConstraints = self->_widthCellConstraints;
  self->_widthCellConstraints = v23;

  v25 = [v46 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v25;

  [MEMORY[0x1E696ACD8] activateConstraints:v47];
  [MEMORY[0x1E696ACD8] activateConstraints:v46];
  if ([(PUINumberingSystemPickerComponentViewController *)self isViewLoaded])
  {
    v27 = [(PUINumberingSystemPickerComponentViewController *)self view];
    [v27 bounds];
    v29 = v28;

    if (self->_configuredViewWidth != v29)
    {
      v30 = v29 + v8 * -3.0;
      v31 = [(PUINumberingSystemPickerComponentViewController *)self stackViewLeadingConstraint];
      [v31 constant];
      v33 = v32;
      v34 = [(PUINumberingSystemPickerComponentViewController *)self stackViewTrailingConstraint];
      [v34 constant];
      v36 = v33 - v35;

      if (v30 >= v36)
      {
        v37 = 23.0;
      }

      else
      {
        v37 = v30 * 0.5;
      }

      v38 = [(PUINumberingSystemPickerComponentViewController *)self stackViewLeadingConstraint];
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

      v41 = [(PUINumberingSystemPickerComponentViewController *)self stackViewTrailingConstraint];
      [v41 setConstant:{fmin(-v37, 0.0)}];

      self->_configuredViewWidth = v29;
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

  v6 = [v5 stringFromNumber:&unk_1F1C929A0];

  return v6;
}

- (id)contentStringForFont:(id)a3 locale:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUINumberingSystemPickerComponentViewController *)self baseContentStringForLocale:a4];
  v6 = [(PUINumberingSystemPickerComponentViewController *)self selectedNumberingSystem];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [(PUINumberingSystemPickerComponentViewController *)self font];
  v11 = [PUINumberingSystem numberingSystemDisplayFontForFont:v10];

  v12 = MEMORY[0x1E695DF90];
  v21 = *MEMORY[0x1E69DB648];
  v22[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v14 = [v12 dictionaryWithDictionary:v13];

  v15 = [v9 type];
  v16 = PUINumberingSystemTypeRequiresLanguageTagging(v15);

  if (v16)
  {
    v17 = [v9 type];
    v18 = PUINumberingTypeSystemLanguageTag(v17);
    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v14];

  return v19;
}

- (void)setFont:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_font != v5)
  {
    v21 = v5;
    objc_storeStrong(&self->_font, a3);
    v25 = [(PUINumberingSystemPickerComponentViewController *)self displayFont];
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
  v3 = +[PUINumberingSystem supportedNumberingSystemTypes];
  v4 = [v3 array];

  if ((-[PUINumberingSystemPickerComponentViewController isViewLoaded](self, "isViewLoaded") & 1) == 0 && [v4 count])
  {
    v5 = [(PUINumberingSystemPickerComponentViewController *)self isUsingSmallerSizing];
    v6 = 64.0;
    if (v5)
    {
      v6 = 62.0;
    }

    self->_largestItemHeight = v6;
  }

  v7 = [v4 count] / 3uLL;
  if (0xAAAAAAAAAAAAAAABLL * [v4 count] <= 0x5555555555555555)
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
  v2 = [(PUINumberingSystemPickerComponentViewController *)self font];
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
  v2 = [(PUINumberingSystemPickerComponentViewController *)self selectedNumberingSystem];
  v3 = [v2 locale];

  return v3;
}

- (void)didSelectNumberingSystem:(id)a3
{
  v4 = a3;
  v5 = [(PUINumberingSystemPickerComponentViewController *)self delegate];
  [v5 numberingSystemPickerViewController:self didSelectNumberingSystem:v4];
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