@interface ObjectManipulationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (ObjectManipulationDelegate)refreshDelegate;
- (ObjectManipulationViewController)initWithCustomizationGroups:(id)groups;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadCustomizations;
- (void)didToggleSwitch:(id)switch;
- (void)dismissKeyboard:(id)keyboard;
- (void)keyboardWillShow:(id)show;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateWithCustomizationGroups:(id)groups;
- (void)viewDidLoad;
@end

@implementation ObjectManipulationViewController

- (ObjectManipulationViewController)initWithCustomizationGroups:(id)groups
{
  v30 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v28.receiver = self;
  v28.super_class = ObjectManipulationViewController;
  v5 = [(ObjectManipulationViewController *)&v28 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v21 = groupsCopy;
    [(ObjectManipulationViewController *)v5 setCustomizationGroups:groupsCopy];
    v7 = objc_opt_new();
    [(ObjectManipulationViewController *)v6 setSectionHeaders:v7];

    v23 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(ObjectManipulationViewController *)v6 customizationGroups];
    v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          name = [v12 name];
          [(ObjectManipulationViewController *)v6 sectionHeaders];
          v15 = v14 = v6;
          customizations = [v12 customizations];
          firstObject = [customizations firstObject];
          identifier = [firstObject identifier];
          [v15 setObject:name forKeyedSubscript:identifier];

          v6 = v14;
          customizations2 = [v12 customizations];
          [v23 addObjectsFromArray:customizations2];
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    [(ObjectManipulationViewController *)v6 setCustomizations:v23];
    groupsCopy = v21;
  }

  return v6;
}

- (void)viewDidLoad
{
  v75.receiver = self;
  v75.super_class = ObjectManipulationViewController;
  [(ObjectManipulationViewController *)&v75 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    navigationItem = [(ObjectManipulationViewController *)self navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceEnabled:1];

    v6 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v6 configureWithTransparentBackground];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [v6 setShadowColor:separatorColor];

    navigationItem2 = [(ObjectManipulationViewController *)self navigationItem];
    [navigationItem2 setScrollEdgeAppearance:v6];

    v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v9 configureWithDefaultBackground];
    separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
    [v9 setShadowColor:separatorColor2];

    navigationItem3 = [(ObjectManipulationViewController *)self navigationItem];
    [navigationItem3 setStandardAppearance:v9];

    navigationItem4 = [(ObjectManipulationViewController *)self navigationItem];
    [navigationItem4 _setManualScrollEdgeAppearanceProgress:1.0];
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(ObjectManipulationViewController *)self view];
  [view setBackgroundColor:clearColor];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    v17 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v17];
    [(ObjectManipulationViewController *)self setBackgroundView:v18];
    backgroundView = [(ObjectManipulationViewController *)self backgroundView];
    [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(ObjectManipulationViewController *)self view];
    backgroundView2 = [(ObjectManipulationViewController *)self backgroundView];
    [view2 addSubview:backgroundView2];
  }

  v22 = objc_alloc(MEMORY[0x1E69DD020]);
  view3 = [(ObjectManipulationViewController *)self view];
  [view3 bounds];
  v24 = [v22 initWithFrame:2 style:?];
  [(ObjectManipulationViewController *)self setTableView:v24];

  tableView = [(ObjectManipulationViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(ObjectManipulationViewController *)self tableView];
  [tableView2 setBackgroundColor:0];

  tableView3 = [(ObjectManipulationViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(ObjectManipulationViewController *)self tableView];
  [tableView4 setDataSource:self];

  view4 = [(ObjectManipulationViewController *)self view];
  tableView5 = [(ObjectManipulationViewController *)self tableView];
  [view4 addSubview:tableView5];

  tableView6 = [(ObjectManipulationViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"textFieldCell"];

  v32 = objc_opt_new();
  backgroundView3 = [(ObjectManipulationViewController *)self backgroundView];

  if (backgroundView3)
  {
    backgroundView4 = [(ObjectManipulationViewController *)self backgroundView];
    leadingAnchor = [backgroundView4 leadingAnchor];
    view5 = [(ObjectManipulationViewController *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v32 addObject:v38];

    backgroundView5 = [(ObjectManipulationViewController *)self backgroundView];
    trailingAnchor = [backgroundView5 trailingAnchor];
    view6 = [(ObjectManipulationViewController *)self view];
    trailingAnchor2 = [view6 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v32 addObject:v43];

    backgroundView6 = [(ObjectManipulationViewController *)self backgroundView];
    topAnchor = [backgroundView6 topAnchor];
    view7 = [(ObjectManipulationViewController *)self view];
    topAnchor2 = [view7 topAnchor];
    v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v32 addObject:v48];

    backgroundView7 = [(ObjectManipulationViewController *)self backgroundView];
    bottomAnchor = [backgroundView7 bottomAnchor];
    view8 = [(ObjectManipulationViewController *)self view];
    bottomAnchor2 = [view8 bottomAnchor];
    v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v32 addObject:v53];
  }

  tableView7 = [(ObjectManipulationViewController *)self tableView];
  widthAnchor = [tableView7 widthAnchor];
  view9 = [(ObjectManipulationViewController *)self view];
  widthAnchor2 = [view9 widthAnchor];
  v58 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v32 addObject:v58];

  tableView8 = [(ObjectManipulationViewController *)self tableView];
  heightAnchor = [tableView8 heightAnchor];
  view10 = [(ObjectManipulationViewController *)self view];
  heightAnchor2 = [view10 heightAnchor];
  v63 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v32 addObject:v63];

  tableView9 = [(ObjectManipulationViewController *)self tableView];
  centerYAnchor = [tableView9 centerYAnchor];
  view11 = [(ObjectManipulationViewController *)self view];
  centerYAnchor2 = [view11 centerYAnchor];
  v68 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v32 addObject:v68];

  tableView10 = [(ObjectManipulationViewController *)self tableView];
  centerXAnchor = [tableView10 centerXAnchor];
  view12 = [(ObjectManipulationViewController *)self view];
  centerXAnchor2 = [view12 centerXAnchor];
  v73 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v32 addObject:v73];

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
  tableView11 = [(ObjectManipulationViewController *)self tableView];
  [tableView11 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  customizations = [(ObjectManipulationViewController *)self customizations];
  v5 = [customizations count];

  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (itemPreviewViewController)
  {
    return v5 + 1;
  }

  else
  {
    return v5;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (!section && itemPreviewViewController)
  {
    return 1;
  }

  itemPreviewViewController2 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v9 = section - (itemPreviewViewController2 != 0);

  customizations = [(ObjectManipulationViewController *)self customizations];
  v11 = [customizations objectAtIndexedSubscript:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _optionTitles = [v11 _optionTitles];
    v7 = [_optionTitles count];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        return isKindOfClass & 1;
      }
    }

    v7 = 1;
  }

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (section || (v7 = 0.0, !itemPreviewViewController))
  {
    itemPreviewViewController2 = [(ObjectManipulationViewController *)self itemPreviewViewController];
    v9 = section - (itemPreviewViewController2 != 0);

    customizations = [(ObjectManipulationViewController *)self customizations];
    v11 = [customizations objectAtIndexedSubscript:v9];

    sectionHeaders = [(ObjectManipulationViewController *)self sectionHeaders];
    identifier = [v11 identifier];
    v14 = [sectionHeaders objectForKeyedSubscript:identifier];

    if (v14)
    {
      v7 = *MEMORY[0x1E69DE3D0];
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v7 = section - (itemPreviewViewController != 0);

  if ((v7 & 0x8000000000000000) != 0 || (-[ObjectManipulationViewController customizations](self, "customizations"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v14 = 0;
  }

  else
  {
    customizations = [(ObjectManipulationViewController *)self customizations];
    v11 = [customizations objectAtIndexedSubscript:v7];

    sectionHeaders = [(ObjectManipulationViewController *)self sectionHeaders];
    identifier = [v11 identifier];
    v14 = [sectionHeaders objectForKeyedSubscript:identifier];
  }

  return v14;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (section || !itemPreviewViewController)
  {
    itemPreviewViewController2 = [(ObjectManipulationViewController *)self itemPreviewViewController];
    v9 = section - (itemPreviewViewController2 != 0);

    customizations = [(ObjectManipulationViewController *)self customizations];
    v11 = [customizations objectAtIndexedSubscript:v9];

    footerText = [v11 footerText];
  }

  else
  {
    footerText = 0;
  }

  return footerText;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (itemPreviewViewController && (v7 = itemPreviewViewController, v8 = [pathCopy section], v7, !v8))
  {
    v9 = 350.0;
  }

  else
  {
    v9 = *MEMORY[0x1E69DE3D0];
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (itemPreviewViewController)
  {
    v9 = itemPreviewViewController;
    section = [pathCopy section];

    if (!section)
    {
      v15 = [viewCopy dequeueReusableCellWithIdentifier:@"customCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"customCell"];
      }

      itemPreviewViewController2 = [(ObjectManipulationViewController *)self itemPreviewViewController];
      view = [itemPreviewViewController2 view];
      contentView = [v15 contentView];
      [contentView bounds];
      [view setFrame:?];
      [view setAutoresizingMask:18];
      subviews = [contentView subviews];
      [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

      [contentView addSubview:view];
      goto LABEL_25;
    }
  }

  itemPreviewViewController3 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v12 = [pathCopy section] - (itemPreviewViewController3 != 0);

  customizations = [(ObjectManipulationViewController *)self customizations];
  itemPreviewViewController2 = [customizations objectAtIndexedSubscript:v12];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      itemPreviewViewController2 = itemPreviewViewController2;
      v15 = [viewCopy dequeueReusableCellWithIdentifier:@"pickerCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"pickerCell"];
      }

      secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      contentView2 = [v15 contentView];
      [contentView2 setBackgroundColor:secondarySystemGroupedBackgroundColor];

      secondarySystemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [v15 setBackgroundColor:secondarySystemGroupedBackgroundColor2];

      _optionTitles = [itemPreviewViewController2 _optionTitles];
      v28 = [_optionTitles objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      textLabel = [v15 textLabel];
      [textLabel setText:v28];

      textLabel2 = [v15 textLabel];
      [textLabel2 setNumberOfLines:0];

      v31 = [pathCopy row];
      selectedOptionIndex = [itemPreviewViewController2 selectedOptionIndex];

      if (v31 == selectedOptionIndex)
      {
        v33 = 3;
      }

      else
      {
        v33 = 0;
      }

      v34 = v15;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [viewCopy dequeueReusableCellWithIdentifier:@"customCell"];
        if (!v15)
        {
          v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"customCell"];
        }

        secondarySystemGroupedBackgroundColor3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
        contentView3 = [v15 contentView];
        [contentView3 setBackgroundColor:secondarySystemGroupedBackgroundColor3];

        secondarySystemGroupedBackgroundColor4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
        [v15 setBackgroundColor:secondarySystemGroupedBackgroundColor4];

        title = [itemPreviewViewController2 title];
        textLabel3 = [v15 textLabel];
        [textLabel3 setText:title];

        view = [v15 textLabel];
        [view setNumberOfLines:0];
        goto LABEL_25;
      }

      itemPreviewViewController2 = itemPreviewViewController2;
      v15 = [viewCopy dequeueReusableCellWithIdentifier:@"textFieldCell"];
      textField = [v15 textField];

      if (!textField)
      {
        v38 = objc_alloc(MEMORY[0x1E69DD0B0]);
        v39 = [v38 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v40 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [v39 setFont:v40];

        [v39 setAdjustsFontForContentSizeCategory:1];
        [v39 setAdjustsFontSizeToFitWidth:1];
        [v39 setClearButtonMode:1];
        [v15 setTextField:v39];
      }

      textField2 = [v15 textField];
      [textField2 setDelegate:self];

      text = [itemPreviewViewController2 text];
      textField3 = [v15 textField];
      [textField3 setText:text];

      placeholder = [itemPreviewViewController2 placeholder];

      textField4 = [v15 textField];
      [textField4 setPlaceholder:placeholder];

      textField5 = [v15 textField];
      [textField5 setReturnKeyType:9];

      [v15 setSelectionStyle:0];
      secondarySystemGroupedBackgroundColor5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      contentView4 = [v15 contentView];
      [contentView4 setBackgroundColor:secondarySystemGroupedBackgroundColor5];

      secondarySystemGroupedBackgroundColor6 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [v15 setBackgroundColor:secondarySystemGroupedBackgroundColor6];

      v34 = v15;
      v33 = 0;
    }

    [v34 setAccessoryType:v33];
    goto LABEL_26;
  }

  v15 = [viewCopy dequeueReusableCellWithIdentifier:@"switchCell"];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"switchCell"];
    [v15 setSelectionStyle:0];
    v16 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v16 addTarget:self action:sel_didToggleSwitch_ forControlEvents:4096];
    [v15 setAccessoryView:v16];
  }

  secondarySystemGroupedBackgroundColor7 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  contentView5 = [v15 contentView];
  [contentView5 setBackgroundColor:secondarySystemGroupedBackgroundColor7];

  secondarySystemGroupedBackgroundColor8 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v15 setBackgroundColor:secondarySystemGroupedBackgroundColor8];

  title2 = [itemPreviewViewController2 title];
  textLabel4 = [v15 textLabel];
  [textLabel4 setText:title2];

  textLabel5 = [v15 textLabel];
  [textLabel5 setNumberOfLines:0];

  view = [v15 accessoryView];
  [view setOn:{objc_msgSend(itemPreviewViewController2, "value")}];
  [view setEnabled:{objc_msgSend(itemPreviewViewController2, "enabled")}];
LABEL_25:

LABEL_26:

  return v15;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  v7 = [view cellForRowAtIndexPath:path];
  tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:tableCellDefaultSelectionTintColor];

  tableCellDefaultSelectionTintColor2 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  [v7 setBackgroundColor:tableCellDefaultSelectionTintColor2];
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  v7 = [view cellForRowAtIndexPath:path];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  secondarySystemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:secondarySystemGroupedBackgroundColor2];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (!itemPreviewViewController || (v9 = itemPreviewViewController, v10 = [pathCopy section], v9, v10))
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    itemPreviewViewController2 = [(ObjectManipulationViewController *)self itemPreviewViewController];
    v12 = [pathCopy section] - (itemPreviewViewController2 != 0);

    customizations = [(ObjectManipulationViewController *)self customizations];
    v14 = [customizations objectAtIndexedSubscript:v12];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 _setSelectedOptionIndex:{objc_msgSend(pathCopy, "row")}];
          [(ObjectManipulationViewController *)self _reloadCustomizations];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            _handler = [v15 _handler];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __70__ObjectManipulationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
            v17[3] = &unk_1E71F9510;
            v17[4] = self;
            (_handler)[2](_handler, v15, v17);
          }
        }
      }
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (itemPreviewViewController)
  {
    v7 = [pathCopy section] != 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)didToggleSwitch:(id)switch
{
  switchCopy = switch;
  superview = [switchCopy superview];
  [switchCopy center];
  v7 = v6;
  v9 = v8;

  tableView = [(ObjectManipulationViewController *)self tableView];
  [superview convertPoint:tableView toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  tableView2 = [(ObjectManipulationViewController *)self tableView];
  v20 = [tableView2 indexPathForRowAtPoint:{v12, v14}];

  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v17 = [v20 section] - (itemPreviewViewController != 0);

  customizations = [(ObjectManipulationViewController *)self customizations];
  v19 = [customizations objectAtIndexedSubscript:v17];

  [v19 _setValue:{objc_msgSend(v19, "value") ^ 1}];
  [(ObjectManipulationViewController *)self _reloadCustomizations];
}

- (void)_reloadCustomizations
{
  refreshDelegate = [(ObjectManipulationViewController *)self refreshDelegate];
  [refreshDelegate requestRefreshedCustomizationGroupForObjectManipulationViewController:self];
}

- (void)updateWithCustomizationGroups:(id)groups
{
  v27 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  customizationGroups = [(ObjectManipulationViewController *)self customizationGroups];

  if (customizationGroups != groupsCopy)
  {
    v20 = groupsCopy;
    [(ObjectManipulationViewController *)self setCustomizationGroups:groupsCopy];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    selfCopy = self;
    obj = [(ObjectManipulationViewController *)self customizationGroups];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          name = [v12 name];
          customizations = [v12 customizations];
          firstObject = [customizations firstObject];
          identifier = [firstObject identifier];
          [v6 setObject:name forKeyedSubscript:identifier];

          customizations2 = [v12 customizations];
          [v7 addObjectsFromArray:customizations2];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [(ObjectManipulationViewController *)selfCopy setCustomizations:v7];
    [(ObjectManipulationViewController *)selfCopy setSectionHeaders:v6];
    tableView = [(ObjectManipulationViewController *)selfCopy tableView];
    [tableView reloadData];

    groupsCopy = v20;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    tableView = [(ObjectManipulationViewController *)self tableView];
    if (tableView == scrollCopy)
    {
      v5 = dyld_program_sdk_at_least();

      if (!v5)
      {
        goto LABEL_8;
      }

      navigationController = [(ObjectManipulationViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      v9 = v8;

      [scrollCopy contentOffset];
      v10 = 0.0;
      if (v11 > -v9)
      {
        [scrollCopy contentOffset];
        v10 = fmin((v9 + v12) * 10.0, 100.0) / 100.0;
      }

      tableView = [(ObjectManipulationViewController *)self navigationItem];
      [tableView _setManualScrollEdgeAppearanceProgress:v10];
    }
  }

LABEL_8:
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  superview = [editingCopy superview];
  [editingCopy center];
  v6 = v5;
  v8 = v7;
  tableView = [(ObjectManipulationViewController *)self tableView];
  [superview convertPoint:tableView toView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  tableView2 = [(ObjectManipulationViewController *)self tableView];
  v15 = [tableView2 indexPathForRowAtPoint:{v11, v13}];

  itemPreviewViewController = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v17 = [v15 section] - (itemPreviewViewController != 0);

  customizations = [(ObjectManipulationViewController *)self customizations];
  v19 = [customizations objectAtIndexedSubscript:v17];

  text = [editingCopy text];
  [v19 _setText:text];

  [(ObjectManipulationViewController *)self _reloadCustomizations];
}

- (void)dismissKeyboard:(id)keyboard
{
  view = [(ObjectManipulationViewController *)self view];
  [view endEditing:1];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  if (userInfo)
  {
    v8 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"UIKeyboardBoundsUserInfoKey"];
    [v5 CGRectValue];
    v7 = v6;

    [(UITableView *)self->_tableView setContentInset:0.0, 0.0, v7, 0.0];
    userInfo = v8;
  }
}

- (ObjectManipulationDelegate)refreshDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshDelegate);

  return WeakRetained;
}

@end