@interface PREditingAmbientColorPickerViewController
- (PREditingAmbientColorPickerViewController)initWithColorPickerConfiguration:(id)configuration width:(double)width changeHandler:(id)handler;
- (void)didSelectColorItem:(id)item;
- (void)didTapColorItemView:(id)view;
- (void)loadView;
- (void)scrollToSelectedItemAnimated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PREditingAmbientColorPickerViewController

- (PREditingAmbientColorPickerViewController)initWithColorPickerConfiguration:(id)configuration width:(double)width changeHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = PREditingAmbientColorPickerViewController;
  v11 = [(PREditingAmbientColorPickerViewController *)&v19 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_colorPickerConfiguration, configuration);
    v13 = [handlerCopy copy];
    changeHandler = v12->_changeHandler;
    v12->_changeHandler = v13;

    [(PREditingAmbientColorPickerViewController *)v12 setPreferredContentSize:width, 64.0];
    prompt = [configurationCopy prompt];
    if (prompt)
    {
      [(PREditingAmbientColorPickerViewController *)v12 setTitle:prompt];
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
  selfCopy = self;
  colorPickerConfiguration = [(PREditingAmbientColorPickerViewController *)self colorPickerConfiguration];
  selectedColor = [colorPickerConfiguration selectedColor];
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = [colorPickerConfiguration context];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = colorPickerConfiguration;
  colorPalette = [colorPickerConfiguration colorPalette];
  colors = [colorPalette colors];

  obj = colors;
  v10 = [colors countByEnumeratingWithState:&v52 objects:v57 count:16];
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
        v16 = [[PREditingColorItem alloc] initWithPickerColor:v15 variation:context context:0.0];
        v17 = [[PREditingColorItemView alloc] initWithColorItem:v16];
        if (selectedColor && [v14 isEquivalentToColor:selectedColor])
        {
          [(PRSelectableEditingItemView *)v17 setSelected:1];
        }

        [v49 addObject:v17];
        v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:selfCopy action:sel_didTapColorItemView_];
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
  leadingAnchor = [v45 leadingAnchor];
  v42 = [obja constraintEqualToAnchor:leadingAnchor];
  v56[0] = v42;
  trailingAnchor = [v5 trailingAnchor];
  trailingAnchor2 = [v45 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v56[1] = v39;
  topAnchor = [v5 topAnchor];
  topAnchor2 = [v45 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[2] = v36;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [v45 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v56[3] = v32;
  leadingAnchor2 = [v46 leadingAnchor];
  leadingAnchor3 = [v45 leadingAnchor];
  v29 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v56[4] = v29;
  trailingAnchor3 = [v46 trailingAnchor];
  trailingAnchor4 = [v45 trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[5] = v19;
  topAnchor3 = [v46 topAnchor];
  topAnchor4 = [v45 topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v56[6] = v22;
  bottomAnchor3 = [v46 bottomAnchor];
  bottomAnchor4 = [v45 bottomAnchor];
  v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v56[7] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:8];
  [v34 activateConstraints:v26];

  [(PREditingAmbientColorPickerViewController *)selfCopy setView:v46];
}

- (void)didTapColorItemView:(id)view
{
  view = [view view];
  colorItem = [view colorItem];
  [(PREditingAmbientColorPickerViewController *)self didSelectColorItem:colorItem];
  selectedItemView = [(PREditingAmbientColorPickerViewController *)self selectedItemView];
  [selectedItemView setSelected:0];

  [view setSelected:1];
  [(PREditingAmbientColorPickerViewController *)self setSelectedItemView:view];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientColorPickerViewController;
  [(PREditingAmbientColorPickerViewController *)&v4 viewWillAppear:appear];
  [(PREditingAmbientColorPickerViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditingAmbientColorPickerViewController;
  [(PREditingAmbientColorPickerViewController *)&v4 viewDidLayoutSubviews];
  if ([(PREditingAmbientColorPickerViewController *)self needsScrollToSelectedItem])
  {
    stackView = [(PREditingAmbientColorPickerViewController *)self stackView];
    [stackView layoutIfNeeded];

    [(PREditingAmbientColorPickerViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingAmbientColorPickerViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)didSelectColorItem:(id)item
{
  color = [item color];
  v4Color = [color color];

  changeHandler = [(PREditingAmbientColorPickerViewController *)self changeHandler];
  (changeHandler)[2](changeHandler, v4Color);
}

- (void)scrollToSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  selectedItemView = [(PREditingAmbientColorPickerViewController *)self selectedItemView];
  scrollView = [(PREditingAmbientColorPickerViewController *)self scrollView];
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

  scrollView2 = [(PREditingAmbientColorPickerViewController *)self scrollView];
  [scrollView2 setContentOffset:animatedCopy animated:{v16, v6}];
}

@end