@interface PREditingAmbientColorPickerViewController
- (PREditingAmbientColorPickerViewController)initWithColorPickerConfiguration:(id)a3 width:(double)a4 changeHandler:(id)a5;
- (void)didSelectColorItem:(id)a3;
- (void)didTapColorItemView:(id)a3;
- (void)loadView;
- (void)scrollToSelectedItemAnimated:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PREditingAmbientColorPickerViewController

- (PREditingAmbientColorPickerViewController)initWithColorPickerConfiguration:(id)a3 width:(double)a4 changeHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PREditingAmbientColorPickerViewController;
  v11 = [(PREditingAmbientColorPickerViewController *)&v19 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_colorPickerConfiguration, a3);
    v13 = [v10 copy];
    changeHandler = v12->_changeHandler;
    v12->_changeHandler = v13;

    [(PREditingAmbientColorPickerViewController *)v12 setPreferredContentSize:a4, 64.0];
    v15 = [v9 prompt];
    if (v15)
    {
      [(PREditingAmbientColorPickerViewController *)v12 setTitle:v15];
    }

    else
    {
      v16 = PRBundle();
      v17 = [v16 localizedStringForKey:@"EDIT_COLOR_PICKER_DEFAULT_PROMPT" value:&stru_1F1C13D90 table:@"PosterKit"];
      [(PREditingAmbientColorPickerViewController *)v12 setTitle:v17];
    }
  }

  return v12;
}

- (void)loadView
{
  v58 = *MEMORY[0x1E69E9840];
  v46 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v3 setContentInset:{0.0, 20.0, 20.0, 20.0}];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  v45 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v4 setAxis:0];
  [v4 setAlignment:1];
  [v4 setSpacing:14.0];
  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = self;
  v6 = [(PREditingAmbientColorPickerViewController *)self colorPickerConfiguration];
  v51 = [v6 selectedColor];
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v6 context];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = v6;
  v8 = [v6 colorPalette];
  v9 = [v8 colors];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      v13 = 0;
      do
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * v13);
        v15 = [[PREditorColorPickerConstantColor alloc] initWithColor:v14 initialVariation:0.0];
        v16 = [[PREditingColorItem alloc] initWithPickerColor:v15 variation:v7 context:0.0];
        v17 = [[PREditingColorItemView alloc] initWithColorItem:v16];
        if (v51 && [v14 isEquivalentToColor:v51])
        {
          [(PRSelectableEditingItemView *)v17 setSelected:1];
        }

        [v49 addObject:v17];
        v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v50 action:sel_didTapColorItemView_];
        [(PREditingColorItemView *)v17 addGestureRecognizer:v18];
        [v5 addArrangedSubview:v17];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v11);
  }

  [v45 addSubview:v5];
  [v46 addSubview:v45];
  v34 = MEMORY[0x1E696ACD8];
  obja = [v5 leadingAnchor];
  v43 = [v45 leadingAnchor];
  v42 = [obja constraintEqualToAnchor:v43];
  v56[0] = v42;
  v41 = [v5 trailingAnchor];
  v40 = [v45 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v56[1] = v39;
  v38 = [v5 topAnchor];
  v37 = [v45 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v56[2] = v36;
  v35 = [v5 bottomAnchor];
  v33 = [v45 bottomAnchor];
  v32 = [v35 constraintEqualToAnchor:v33];
  v56[3] = v32;
  v31 = [v46 leadingAnchor];
  v30 = [v45 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v56[4] = v29;
  v28 = [v46 trailingAnchor];
  v27 = [v45 trailingAnchor];
  v19 = [v28 constraintEqualToAnchor:v27];
  v56[5] = v19;
  v20 = [v46 topAnchor];
  v21 = [v45 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v56[6] = v22;
  v23 = [v46 bottomAnchor];
  v24 = [v45 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v56[7] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:8];
  [v34 activateConstraints:v26];

  [(PREditingAmbientColorPickerViewController *)v50 setView:v46];
}

- (void)didTapColorItemView:(id)a3
{
  v6 = [a3 view];
  v4 = [v6 colorItem];
  [(PREditingAmbientColorPickerViewController *)self didSelectColorItem:v4];
  v5 = [(PREditingAmbientColorPickerViewController *)self selectedItemView];
  [v5 setSelected:0];

  [v6 setSelected:1];
  [(PREditingAmbientColorPickerViewController *)self setSelectedItemView:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientColorPickerViewController;
  [(PREditingAmbientColorPickerViewController *)&v4 viewWillAppear:a3];
  [(PREditingAmbientColorPickerViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientColorPickerViewController;
  [(PREditingAmbientColorPickerViewController *)&v4 viewDidLayoutSubviews];
  if ([(PREditingAmbientColorPickerViewController *)self needsScrollToSelectedItem])
  {
    v3 = [(PREditingAmbientColorPickerViewController *)self stackView];
    [v3 layoutIfNeeded];

    [(PREditingAmbientColorPickerViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingAmbientColorPickerViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)didSelectColorItem:(id)a3
{
  v4 = [a3 color];
  v6 = [v4 color];

  v5 = [(PREditingAmbientColorPickerViewController *)self changeHandler];
  (v5)[2](v5, v6);
}

- (void)scrollToSelectedItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v18 = [(PREditingAmbientColorPickerViewController *)self selectedItemView];
  v7 = [(PREditingAmbientColorPickerViewController *)self scrollView];
  [v7 bounds];
  if (v18)
  {
    v9 = v8;
    [v18 frame];
    v11 = v10;
    [v18 bounds];
    v13 = v11 + (v9 - v12) * -0.5;
    [v7 contentSize];
    v15 = v14 - (v9 + -20.0);
    if (v15 >= v13)
    {
      v15 = v13;
    }

    v16 = fmax(v15, -20.0);
  }

  else
  {
    v16 = *v5;
  }

  v17 = [(PREditingAmbientColorPickerViewController *)self scrollView];
  [v17 setContentOffset:v3 animated:{v16, v6}];
}

@end