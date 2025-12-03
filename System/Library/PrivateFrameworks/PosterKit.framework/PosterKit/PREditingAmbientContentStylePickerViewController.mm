@interface PREditingAmbientContentStylePickerViewController
- (PREditingAmbientContentStylePickerViewController)initWithContentStylePickerConfiguration:(id)configuration width:(double)width changeHandler:(id)handler;
- (PREditingAmbientContentStylePickerViewControllerDelegate)delegate;
- (void)didSelectStyle:(id)style;
- (void)didTapContentStyleItemView:(id)view;
- (void)loadView;
- (void)scrollToSelectedItemAnimated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PREditingAmbientContentStylePickerViewController

- (PREditingAmbientContentStylePickerViewController)initWithContentStylePickerConfiguration:(id)configuration width:(double)width changeHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = PREditingAmbientContentStylePickerViewController;
  v11 = [(PREditingAmbientContentStylePickerViewController *)&v19 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stylePickerConfiguration, configuration);
    v13 = [handlerCopy copy];
    changeHandler = v12->_changeHandler;
    v12->_changeHandler = v13;

    [(PREditingAmbientContentStylePickerViewController *)v12 setPreferredContentSize:width, 84.0];
    prompt = [configurationCopy prompt];
    if (prompt)
    {
      [(PREditingAmbientContentStylePickerViewController *)v12 setTitle:prompt];
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
  stylePickerConfiguration = [(PREditingAmbientContentStylePickerViewController *)self stylePickerConfiguration];
  selectedStyle = [stylePickerConfiguration selectedStyle];
  v47 = stylePickerConfiguration;
  stylePalette = [stylePickerConfiguration stylePalette];
  styles = [stylePalette styles];

  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(styles, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = styles;
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
        delegate = [(PREditingAmbientContentStylePickerViewController *)self delegate];
        v16 = [delegate coordinatorForContentStyle:v14 forAmbientStylePicker:self];

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
        if (selectedStyle && [v14 isEqual:selectedStyle])
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
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [v48 leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[0] = v44;
  trailingAnchor = [v5 trailingAnchor];
  trailingAnchor2 = [v48 trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v56[1] = v41;
  v26 = v5;
  topAnchor = [v5 topAnchor];
  topAnchor2 = [v48 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[2] = v38;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [v48 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v56[3] = v34;
  leadingAnchor3 = [v49 leadingAnchor];
  leadingAnchor4 = [v48 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56[4] = v31;
  trailingAnchor3 = [v49 trailingAnchor];
  trailingAnchor4 = [v48 trailingAnchor];
  v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[5] = v28;
  topAnchor3 = [v49 topAnchor];
  topAnchor4 = [v48 topAnchor];
  v21 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v56[6] = v21;
  bottomAnchor3 = [v49 bottomAnchor];
  bottomAnchor4 = [v48 bottomAnchor];
  v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v56[7] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:8];
  [v36 activateConstraints:v25];

  [(PREditingAmbientContentStylePickerViewController *)self setView:v49];
}

- (void)didTapContentStyleItemView:(id)view
{
  view = [view view];
  contentStyleCoordinator = [view contentStyleCoordinator];
  style = [contentStyleCoordinator style];

  [(PREditingAmbientContentStylePickerViewController *)self didSelectStyle:style];
  selectedItemView = [(PREditingAmbientContentStylePickerViewController *)self selectedItemView];
  [selectedItemView setSelected:0];

  [view setSelected:1];
  [(PREditingAmbientContentStylePickerViewController *)self setSelectedItemView:view];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientContentStylePickerViewController;
  [(PREditingAmbientContentStylePickerViewController *)&v4 viewWillAppear:appear];
  [(PREditingAmbientContentStylePickerViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientContentStylePickerViewController;
  [(PREditingAmbientContentStylePickerViewController *)&v4 viewDidLayoutSubviews];
  if ([(PREditingAmbientContentStylePickerViewController *)self needsScrollToSelectedItem])
  {
    stackView = [(PREditingAmbientContentStylePickerViewController *)self stackView];
    [stackView layoutIfNeeded];

    [(PREditingAmbientContentStylePickerViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingAmbientContentStylePickerViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)didSelectStyle:(id)style
{
  styleCopy = style;
  changeHandler = [(PREditingAmbientContentStylePickerViewController *)self changeHandler];
  changeHandler[2](changeHandler, styleCopy);
}

- (void)scrollToSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  selectedItemView = [(PREditingAmbientContentStylePickerViewController *)self selectedItemView];
  scrollView = [(PREditingAmbientContentStylePickerViewController *)self scrollView];
  [scrollView bounds];
  if (selectedItemView)
  {
    v9 = v8;
    [selectedItemView frame];
    v11 = v10;
    [selectedItemView bounds];
    v13 = v11 + (v9 - v12) * -0.5;
    [scrollView contentSize];
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

  scrollView2 = [(PREditingAmbientContentStylePickerViewController *)self scrollView];
  [scrollView2 setContentOffset:animatedCopy animated:{v16, v6}];
}

- (PREditingAmbientContentStylePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end