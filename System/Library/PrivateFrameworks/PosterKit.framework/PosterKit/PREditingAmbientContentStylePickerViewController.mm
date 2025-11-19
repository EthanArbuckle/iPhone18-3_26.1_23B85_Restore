@interface PREditingAmbientContentStylePickerViewController
- (PREditingAmbientContentStylePickerViewController)initWithContentStylePickerConfiguration:(id)a3 width:(double)a4 changeHandler:(id)a5;
- (PREditingAmbientContentStylePickerViewControllerDelegate)delegate;
- (void)didSelectStyle:(id)a3;
- (void)didTapContentStyleItemView:(id)a3;
- (void)loadView;
- (void)scrollToSelectedItemAnimated:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PREditingAmbientContentStylePickerViewController

- (PREditingAmbientContentStylePickerViewController)initWithContentStylePickerConfiguration:(id)a3 width:(double)a4 changeHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PREditingAmbientContentStylePickerViewController;
  v11 = [(PREditingAmbientContentStylePickerViewController *)&v19 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stylePickerConfiguration, a3);
    v13 = [v10 copy];
    changeHandler = v12->_changeHandler;
    v12->_changeHandler = v13;

    [(PREditingAmbientContentStylePickerViewController *)v12 setPreferredContentSize:a4, 84.0];
    v15 = [v9 prompt];
    if (v15)
    {
      [(PREditingAmbientContentStylePickerViewController *)v12 setTitle:v15];
    }

    else
    {
      v16 = PRBundle();
      v17 = [v16 localizedStringForKey:@"EDIT_COLOR_PICKER_DEFAULT_PROMPT" value:&stru_1F1C13D90 table:@"PosterKit"];
      [(PREditingAmbientContentStylePickerViewController *)v12 setTitle:v17];
    }
  }

  return v12;
}

- (void)loadView
{
  v58 = *MEMORY[0x1E69E9840];
  v49 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v3 setContentInset:{20.0, 20.0, 20.0, 20.0}];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = v3;
  objc_storeStrong(&self->_scrollView, v3);
  v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v4 setAxis:0];
  [v4 setAlignment:1];
  [v4 setSpacing:14.0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v4;
  objc_storeStrong(&self->_stackView, v4);
  v6 = [(PREditingAmbientContentStylePickerViewController *)self stylePickerConfiguration];
  v7 = [v6 selectedStyle];
  v47 = v6;
  v8 = [v6 stylePalette];
  v9 = [v8 styles];

  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
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
        v15 = [(PREditingAmbientContentStylePickerViewController *)self delegate];
        v16 = [v15 coordinatorForContentStyle:v14 forAmbientStylePicker:self];

        if (!v16)
        {
          v17 = [[PREditingPosterContentStyleCoordinator alloc] initWithInitialStyle:v14 suggested:0];
          if (!v17)
          {
            goto LABEL_13;
          }

          v16 = v17;
        }

        [v51 addObject:v16];
        v18 = [[PREditingContentStyleItemView alloc] initWithContentStyleCoordinator:v16];
        if (v7 && [v14 isEqual:v7])
        {
          [(PRSelectableEditingItemView *)v18 setSelected:1];
          objc_storeStrong(&self->_selectedItemView, v18);
        }

        v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapContentStyleItemView_];
        [(PREditingContentStyleItemView *)v18 addGestureRecognizer:v19];
        [v5 addArrangedSubview:v18];

LABEL_13:
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v11);
  }

  [v48 addSubview:v5];
  [v49 addSubview:v48];
  v36 = MEMORY[0x1E696ACD8];
  v46 = [v5 leadingAnchor];
  v45 = [v48 leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v56[0] = v44;
  v43 = [v5 trailingAnchor];
  v42 = [v48 trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v56[1] = v41;
  v26 = v5;
  v40 = [v5 topAnchor];
  v39 = [v48 topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v56[2] = v38;
  v37 = [v5 bottomAnchor];
  v35 = [v48 bottomAnchor];
  v34 = [v37 constraintEqualToAnchor:v35];
  v56[3] = v34;
  v33 = [v49 leadingAnchor];
  v32 = [v48 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v56[4] = v31;
  v30 = [v49 trailingAnchor];
  v29 = [v48 trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v56[5] = v28;
  v27 = [v49 topAnchor];
  v20 = [v48 topAnchor];
  v21 = [v27 constraintEqualToAnchor:v20];
  v56[6] = v21;
  v22 = [v49 bottomAnchor];
  v23 = [v48 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v56[7] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:8];
  [v36 activateConstraints:v25];

  [(PREditingAmbientContentStylePickerViewController *)self setView:v49];
}

- (void)didTapContentStyleItemView:(id)a3
{
  v7 = [a3 view];
  v4 = [v7 contentStyleCoordinator];
  v5 = [v4 style];

  [(PREditingAmbientContentStylePickerViewController *)self didSelectStyle:v5];
  v6 = [(PREditingAmbientContentStylePickerViewController *)self selectedItemView];
  [v6 setSelected:0];

  [v7 setSelected:1];
  [(PREditingAmbientContentStylePickerViewController *)self setSelectedItemView:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientContentStylePickerViewController;
  [(PREditingAmbientContentStylePickerViewController *)&v4 viewWillAppear:a3];
  [(PREditingAmbientContentStylePickerViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientContentStylePickerViewController;
  [(PREditingAmbientContentStylePickerViewController *)&v4 viewDidLayoutSubviews];
  if ([(PREditingAmbientContentStylePickerViewController *)self needsScrollToSelectedItem])
  {
    v3 = [(PREditingAmbientContentStylePickerViewController *)self stackView];
    [v3 layoutIfNeeded];

    [(PREditingAmbientContentStylePickerViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingAmbientContentStylePickerViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)didSelectStyle:(id)a3
{
  v4 = a3;
  v5 = [(PREditingAmbientContentStylePickerViewController *)self changeHandler];
  v5[2](v5, v4);
}

- (void)scrollToSelectedItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v18 = [(PREditingAmbientContentStylePickerViewController *)self selectedItemView];
  v7 = [(PREditingAmbientContentStylePickerViewController *)self scrollView];
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

  v17 = [(PREditingAmbientContentStylePickerViewController *)self scrollView];
  [v17 setContentOffset:v3 animated:{v16, v6}];
}

- (PREditingAmbientContentStylePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end