@interface ObjectManipulationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (ObjectManipulationDelegate)refreshDelegate;
- (ObjectManipulationViewController)initWithCustomizationGroups:(id)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadCustomizations;
- (void)didToggleSwitch:(id)a3;
- (void)dismissKeyboard:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateWithCustomizationGroups:(id)a3;
- (void)viewDidLoad;
@end

@implementation ObjectManipulationViewController

- (ObjectManipulationViewController)initWithCustomizationGroups:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ObjectManipulationViewController;
  v5 = [(ObjectManipulationViewController *)&v28 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v21 = v4;
    [(ObjectManipulationViewController *)v5 setCustomizationGroups:v4];
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
          v13 = [v12 name];
          [(ObjectManipulationViewController *)v6 sectionHeaders];
          v15 = v14 = v6;
          v16 = [v12 customizations];
          v17 = [v16 firstObject];
          v18 = [v17 identifier];
          [v15 setObject:v13 forKeyedSubscript:v18];

          v6 = v14;
          v19 = [v12 customizations];
          [v23 addObjectsFromArray:v19];
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    [(ObjectManipulationViewController *)v6 setCustomizations:v23];
    v4 = v21;
  }

  return v6;
}

- (void)viewDidLoad
{
  v75.receiver = self;
  v75.super_class = ObjectManipulationViewController;
  [(ObjectManipulationViewController *)&v75 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v5 = [(ObjectManipulationViewController *)self navigationItem];
    [v5 _setManualScrollEdgeAppearanceEnabled:1];

    v6 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v6 configureWithTransparentBackground];
    v7 = [MEMORY[0x1E69DC888] separatorColor];
    [v6 setShadowColor:v7];

    v8 = [(ObjectManipulationViewController *)self navigationItem];
    [v8 setScrollEdgeAppearance:v6];

    v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v9 configureWithDefaultBackground];
    v10 = [MEMORY[0x1E69DC888] separatorColor];
    [v9 setShadowColor:v10];

    v11 = [(ObjectManipulationViewController *)self navigationItem];
    [v11 setStandardAppearance:v9];

    v12 = [(ObjectManipulationViewController *)self navigationItem];
    [v12 _setManualScrollEdgeAppearanceProgress:1.0];
  }

  v13 = [MEMORY[0x1E69DC888] clearColor];
  v14 = [(ObjectManipulationViewController *)self view];
  [v14 setBackgroundColor:v13];

  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 != 6)
  {
    v17 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v17];
    [(ObjectManipulationViewController *)self setBackgroundView:v18];
    v19 = [(ObjectManipulationViewController *)self backgroundView];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [(ObjectManipulationViewController *)self view];
    v21 = [(ObjectManipulationViewController *)self backgroundView];
    [v20 addSubview:v21];
  }

  v22 = objc_alloc(MEMORY[0x1E69DD020]);
  v23 = [(ObjectManipulationViewController *)self view];
  [v23 bounds];
  v24 = [v22 initWithFrame:2 style:?];
  [(ObjectManipulationViewController *)self setTableView:v24];

  v25 = [(ObjectManipulationViewController *)self tableView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(ObjectManipulationViewController *)self tableView];
  [v26 setBackgroundColor:0];

  v27 = [(ObjectManipulationViewController *)self tableView];
  [v27 setDelegate:self];

  v28 = [(ObjectManipulationViewController *)self tableView];
  [v28 setDataSource:self];

  v29 = [(ObjectManipulationViewController *)self view];
  v30 = [(ObjectManipulationViewController *)self tableView];
  [v29 addSubview:v30];

  v31 = [(ObjectManipulationViewController *)self tableView];
  [v31 registerClass:objc_opt_class() forCellReuseIdentifier:@"textFieldCell"];

  v32 = objc_opt_new();
  v33 = [(ObjectManipulationViewController *)self backgroundView];

  if (v33)
  {
    v34 = [(ObjectManipulationViewController *)self backgroundView];
    v35 = [v34 leadingAnchor];
    v36 = [(ObjectManipulationViewController *)self view];
    v37 = [v36 leadingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    [v32 addObject:v38];

    v39 = [(ObjectManipulationViewController *)self backgroundView];
    v40 = [v39 trailingAnchor];
    v41 = [(ObjectManipulationViewController *)self view];
    v42 = [v41 trailingAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    [v32 addObject:v43];

    v44 = [(ObjectManipulationViewController *)self backgroundView];
    v45 = [v44 topAnchor];
    v46 = [(ObjectManipulationViewController *)self view];
    v47 = [v46 topAnchor];
    v48 = [v45 constraintEqualToAnchor:v47];
    [v32 addObject:v48];

    v49 = [(ObjectManipulationViewController *)self backgroundView];
    v50 = [v49 bottomAnchor];
    v51 = [(ObjectManipulationViewController *)self view];
    v52 = [v51 bottomAnchor];
    v53 = [v50 constraintEqualToAnchor:v52];
    [v32 addObject:v53];
  }

  v54 = [(ObjectManipulationViewController *)self tableView];
  v55 = [v54 widthAnchor];
  v56 = [(ObjectManipulationViewController *)self view];
  v57 = [v56 widthAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v32 addObject:v58];

  v59 = [(ObjectManipulationViewController *)self tableView];
  v60 = [v59 heightAnchor];
  v61 = [(ObjectManipulationViewController *)self view];
  v62 = [v61 heightAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];
  [v32 addObject:v63];

  v64 = [(ObjectManipulationViewController *)self tableView];
  v65 = [v64 centerYAnchor];
  v66 = [(ObjectManipulationViewController *)self view];
  v67 = [v66 centerYAnchor];
  v68 = [v65 constraintEqualToAnchor:v67];
  [v32 addObject:v68];

  v69 = [(ObjectManipulationViewController *)self tableView];
  v70 = [v69 centerXAnchor];
  v71 = [(ObjectManipulationViewController *)self view];
  v72 = [v71 centerXAnchor];
  v73 = [v70 constraintEqualToAnchor:v72];
  [v32 addObject:v73];

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
  v74 = [(ObjectManipulationViewController *)self tableView];
  [v74 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(ObjectManipulationViewController *)self customizations];
  v5 = [v4 count];

  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (v6)
  {
    return v5 + 1;
  }

  else
  {
    return v5;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (!a4 && v6)
  {
    return 1;
  }

  v8 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v9 = a4 - (v8 != 0);

  v10 = [(ObjectManipulationViewController *)self customizations];
  v11 = [v10 objectAtIndexedSubscript:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 _optionTitles];
    v7 = [v12 count];
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (a4 || (v7 = 0.0, !v6))
  {
    v8 = [(ObjectManipulationViewController *)self itemPreviewViewController];
    v9 = a4 - (v8 != 0);

    v10 = [(ObjectManipulationViewController *)self customizations];
    v11 = [v10 objectAtIndexedSubscript:v9];

    v12 = [(ObjectManipulationViewController *)self sectionHeaders];
    v13 = [v11 identifier];
    v14 = [v12 objectForKeyedSubscript:v13];

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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v7 = a4 - (v6 != 0);

  if ((v7 & 0x8000000000000000) != 0 || (-[ObjectManipulationViewController customizations](self, "customizations"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v14 = 0;
  }

  else
  {
    v10 = [(ObjectManipulationViewController *)self customizations];
    v11 = [v10 objectAtIndexedSubscript:v7];

    v12 = [(ObjectManipulationViewController *)self sectionHeaders];
    v13 = [v11 identifier];
    v14 = [v12 objectForKeyedSubscript:v13];
  }

  return v14;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];

  if (a4 || !v6)
  {
    v8 = [(ObjectManipulationViewController *)self itemPreviewViewController];
    v9 = a4 - (v8 != 0);

    v10 = [(ObjectManipulationViewController *)self customizations];
    v11 = [v10 objectAtIndexedSubscript:v9];

    v7 = [v11 footerText];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (v6 && (v7 = v6, v8 = [v5 section], v7, !v8))
  {
    v9 = 350.0;
  }

  else
  {
    v9 = *MEMORY[0x1E69DE3D0];
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 section];

    if (!v10)
    {
      v15 = [v6 dequeueReusableCellWithIdentifier:@"customCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"customCell"];
      }

      v14 = [(ObjectManipulationViewController *)self itemPreviewViewController];
      v23 = [v14 view];
      v35 = [v15 contentView];
      [v35 bounds];
      [v23 setFrame:?];
      [v23 setAutoresizingMask:18];
      v36 = [v35 subviews];
      [v36 makeObjectsPerformSelector:sel_removeFromSuperview];

      [v35 addSubview:v23];
      goto LABEL_25;
    }
  }

  v11 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v12 = [v7 section] - (v11 != 0);

  v13 = [(ObjectManipulationViewController *)self customizations];
  v14 = [v13 objectAtIndexedSubscript:v12];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v14;
      v15 = [v6 dequeueReusableCellWithIdentifier:@"pickerCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"pickerCell"];
      }

      v24 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      v25 = [v15 contentView];
      [v25 setBackgroundColor:v24];

      v26 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [v15 setBackgroundColor:v26];

      v27 = [v14 _optionTitles];
      v28 = [v27 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
      v29 = [v15 textLabel];
      [v29 setText:v28];

      v30 = [v15 textLabel];
      [v30 setNumberOfLines:0];

      v31 = [v7 row];
      v32 = [v14 selectedOptionIndex];

      if (v31 == v32)
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
        v15 = [v6 dequeueReusableCellWithIdentifier:@"customCell"];
        if (!v15)
        {
          v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"customCell"];
        }

        v50 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
        v51 = [v15 contentView];
        [v51 setBackgroundColor:v50];

        v52 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
        [v15 setBackgroundColor:v52];

        v53 = [v14 title];
        v54 = [v15 textLabel];
        [v54 setText:v53];

        v23 = [v15 textLabel];
        [v23 setNumberOfLines:0];
        goto LABEL_25;
      }

      v14 = v14;
      v15 = [v6 dequeueReusableCellWithIdentifier:@"textFieldCell"];
      v37 = [v15 textField];

      if (!v37)
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

      v41 = [v15 textField];
      [v41 setDelegate:self];

      v42 = [v14 text];
      v43 = [v15 textField];
      [v43 setText:v42];

      v44 = [v14 placeholder];

      v45 = [v15 textField];
      [v45 setPlaceholder:v44];

      v46 = [v15 textField];
      [v46 setReturnKeyType:9];

      [v15 setSelectionStyle:0];
      v47 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      v48 = [v15 contentView];
      [v48 setBackgroundColor:v47];

      v49 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [v15 setBackgroundColor:v49];

      v34 = v15;
      v33 = 0;
    }

    [v34 setAccessoryType:v33];
    goto LABEL_26;
  }

  v15 = [v6 dequeueReusableCellWithIdentifier:@"switchCell"];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"switchCell"];
    [v15 setSelectionStyle:0];
    v16 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v16 addTarget:self action:sel_didToggleSwitch_ forControlEvents:4096];
    [v15 setAccessoryView:v16];
  }

  v17 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v18 = [v15 contentView];
  [v18 setBackgroundColor:v17];

  v19 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v15 setBackgroundColor:v19];

  v20 = [v14 title];
  v21 = [v15 textLabel];
  [v21 setText:v20];

  v22 = [v15 textLabel];
  [v22 setNumberOfLines:0];

  v23 = [v15 accessoryView];
  [v23 setOn:{objc_msgSend(v14, "value")}];
  [v23 setEnabled:{objc_msgSend(v14, "enabled")}];
LABEL_25:

LABEL_26:

  return v15;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v7 = [a3 cellForRowAtIndexPath:a4];
  v4 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  v5 = [v7 contentView];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  [v7 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v7 = [a3 cellForRowAtIndexPath:a4];
  v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v5 = [v7 contentView];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (!v8 || (v9 = v8, v10 = [v7 section], v9, v10))
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    v11 = [(ObjectManipulationViewController *)self itemPreviewViewController];
    v12 = [v7 section] - (v11 != 0);

    v13 = [(ObjectManipulationViewController *)self customizations];
    v14 = [v13 objectAtIndexedSubscript:v12];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 _setSelectedOptionIndex:{objc_msgSend(v7, "row")}];
          [(ObjectManipulationViewController *)self _reloadCustomizations];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v15 _handler];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __70__ObjectManipulationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
            v17[3] = &unk_1E71F9510;
            v17[4] = self;
            (v16)[2](v16, v15, v17);
          }
        }
      }
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  if (v6)
  {
    v7 = [v5 section] != 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)didToggleSwitch:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  [v4 center];
  v7 = v6;
  v9 = v8;

  v10 = [(ObjectManipulationViewController *)self tableView];
  [v5 convertPoint:v10 toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  v15 = [(ObjectManipulationViewController *)self tableView];
  v20 = [v15 indexPathForRowAtPoint:{v12, v14}];

  v16 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v17 = [v20 section] - (v16 != 0);

  v18 = [(ObjectManipulationViewController *)self customizations];
  v19 = [v18 objectAtIndexedSubscript:v17];

  [v19 _setValue:{objc_msgSend(v19, "value") ^ 1}];
  [(ObjectManipulationViewController *)self _reloadCustomizations];
}

- (void)_reloadCustomizations
{
  v3 = [(ObjectManipulationViewController *)self refreshDelegate];
  [v3 requestRefreshedCustomizationGroupForObjectManipulationViewController:self];
}

- (void)updateWithCustomizationGroups:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ObjectManipulationViewController *)self customizationGroups];

  if (v5 != v4)
  {
    v20 = v4;
    [(ObjectManipulationViewController *)self setCustomizationGroups:v4];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = self;
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
          v13 = [v12 name];
          v14 = [v12 customizations];
          v15 = [v14 firstObject];
          v16 = [v15 identifier];
          [v6 setObject:v13 forKeyedSubscript:v16];

          v17 = [v12 customizations];
          [v7 addObjectsFromArray:v17];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [(ObjectManipulationViewController *)v19 setCustomizations:v7];
    [(ObjectManipulationViewController *)v19 setSectionHeaders:v6];
    v18 = [(ObjectManipulationViewController *)v19 tableView];
    [v18 reloadData];

    v4 = v20;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v4 = [(ObjectManipulationViewController *)self tableView];
    if (v4 == v13)
    {
      v5 = dyld_program_sdk_at_least();

      if (!v5)
      {
        goto LABEL_8;
      }

      v6 = [(ObjectManipulationViewController *)self navigationController];
      v7 = [v6 navigationBar];
      [v7 frame];
      v9 = v8;

      [v13 contentOffset];
      v10 = 0.0;
      if (v11 > -v9)
      {
        [v13 contentOffset];
        v10 = fmin((v9 + v12) * 10.0, 100.0) / 100.0;
      }

      v4 = [(ObjectManipulationViewController *)self navigationItem];
      [v4 _setManualScrollEdgeAppearanceProgress:v10];
    }
  }

LABEL_8:
}

- (void)textFieldDidEndEditing:(id)a3
{
  v21 = a3;
  v4 = [v21 superview];
  [v21 center];
  v6 = v5;
  v8 = v7;
  v9 = [(ObjectManipulationViewController *)self tableView];
  [v4 convertPoint:v9 toView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = [(ObjectManipulationViewController *)self tableView];
  v15 = [v14 indexPathForRowAtPoint:{v11, v13}];

  v16 = [(ObjectManipulationViewController *)self itemPreviewViewController];
  v17 = [v15 section] - (v16 != 0);

  v18 = [(ObjectManipulationViewController *)self customizations];
  v19 = [v18 objectAtIndexedSubscript:v17];

  v20 = [v21 text];
  [v19 _setText:v20];

  [(ObjectManipulationViewController *)self _reloadCustomizations];
}

- (void)dismissKeyboard:(id)a3
{
  v3 = [(ObjectManipulationViewController *)self view];
  [v3 endEditing:1];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:@"UIKeyboardBoundsUserInfoKey"];
    [v5 CGRectValue];
    v7 = v6;

    [(UITableView *)self->_tableView setContentInset:0.0, 0.0, v7, 0.0];
    v4 = v8;
  }
}

- (ObjectManipulationDelegate)refreshDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshDelegate);

  return WeakRetained;
}

@end