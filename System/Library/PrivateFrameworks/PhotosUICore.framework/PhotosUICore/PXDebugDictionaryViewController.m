@interface PXDebugDictionaryViewController
- (PXDebugDictionaryViewController)initWithDebugDictionary:(id)a3;
- (id)_flattenDictionary:(id)a3;
- (id)_sanitizedTextForTitle:(id)a3 value:(id)a4;
- (id)segmentedTitles;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_switchLogsAction:(id)a3;
- (void)_updateWithSegmentedTitle:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXDebugDictionaryViewController

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(PXDebugDictionaryViewController *)self sectionTitles];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"KeywordsCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"KeywordsCell"];
  }

  v9 = -[PXDebugDictionaryViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", v7, [v6 section]);

  v10 = [(PXDebugDictionaryViewController *)self tableContent];
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  v14 = [(PXDebugDictionaryViewController *)self _sanitizedTextForTitle:v9 value:v13];
  v15 = [v8 textLabel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 setAttributedText:v14];
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v14];

    [v15 setText:v16];
    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    [v15 setFont:v17];

    v14 = v16;
  }

  [v15 setNumberOfLines:0];
  [v15 sizeToFit];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(PXDebugDictionaryViewController *)self sectionTitles];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [(PXDebugDictionaryViewController *)self tableContent];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PXDebugDictionaryViewController *)self sectionTitles];
  v4 = [v3 count];

  return v4;
}

- (id)_sanitizedTextForTitle:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = [a3 lowercaseString];
  v7 = [v6 isEqualToString:@"location"];

  v8 = v5;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      if ([(__CFString *)v9 count]< 2)
      {
        v8 = @"Invalid location";
      }

      else
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = [(__CFString *)v9 objectAtIndexedSubscript:0];
        v12 = [(__CFString *)v9 objectAtIndexedSubscript:1];
        v8 = [v10 stringWithFormat:@"(%@, %@)", v11, v12];

        v9 = v11;
      }
    }

    else
    {
      v8 = @"Invalid location";
    }
  }

  return v8;
}

- (id)_flattenDictionary:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PXDebugDictionaryViewController__flattenDictionary___block_invoke;
  v8[3] = &unk_1E7749C38;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __54__PXDebugDictionaryViewController__flattenDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [*(a1 + 32) addObject:v4];
}

- (void)_updateWithSegmentedTitle:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSDictionary *)self->_debugDictionary objectForKeyedSubscript:v4];
  v32[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [(PXDebugDictionaryViewController *)self setSectionTitles:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v4;
    v7 = [v5 allKeys];
    [(PXDebugDictionaryViewController *)self setSectionTitles:v7];

    v19 = v5;
    v8 = [v5 mutableCopy];
    v9 = [v8 allKeys];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v22;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(PXDebugDictionaryViewController *)self _flattenDictionary:v15];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_12;
          }

          v30 = v15;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        }

        v17 = v16;
        [v8 setObject:v16 forKeyedSubscript:v14];

LABEL_12:
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (!v11)
      {
LABEL_14:

        v5 = v19;
        v4 = v20;
        goto LABEL_18;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v4;
    v29 = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

  else
  {
    v25 = v5;
    v26 = v4;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v27 = v18;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

LABEL_18:
  [(PXDebugDictionaryViewController *)self setTableContent:v8];
}

- (void)_switchLogsAction:(id)a3
{
  v8 = [(PXDebugDictionaryViewController *)self segmentedTitles];
  v4 = [(PXDebugDictionaryViewController *)self segmentedControl];
  v5 = [v4 selectedSegmentIndex];

  v6 = [v8 objectAtIndexedSubscript:v5];
  [(PXDebugDictionaryViewController *)self _updateWithSegmentedTitle:v6];
  v7 = [(PXDebugDictionaryViewController *)self tableView];
  [v7 reloadData];
}

- (id)segmentedTitles
{
  [(NSDictionary *)self->_debugDictionary allKeys];
  objc_claimAutoreleasedReturnValue();
  PXFilter();
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = PXDebugDictionaryViewController;
  [(PXDebugDictionaryViewController *)&v27 viewDidLoad];
  v3 = [(PXDebugDictionaryViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v5 = [(PXDebugDictionaryViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(PXDebugDictionaryViewController *)self segmentedTitles];
  v7 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v6];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v7;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel__switchLogsAction_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
  v9 = [(PXDebugDictionaryViewController *)self view];
  [v9 addSubview:self->_segmentedControl];

  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v11 = [(PXDebugDictionaryViewController *)self view];
  [v11 addSubview:v10];

  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  v13 = [(PXDebugDictionaryViewController *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 topAnchor];
  v16 = [v12 constraintEqualToAnchor:v15 constant:10.0];
  [v16 setActive:1];

  v17 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr.isa, self->_segmentedControl, v10, 0);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_segmentedControl(<=44)]-10-[contentView]-0-|" options:0 metrics:0 views:v17];
  [v18 addObjectsFromArray:v19];

  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_segmentedControl]-|" options:0 metrics:0 views:v17];
  [v18 addObjectsFromArray:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v17];
  [v18 addObjectsFromArray:v21];

  [MEMORY[0x1E696ACD8] activateConstraints:v18];
  v22 = objc_alloc(MEMORY[0x1E69DD020]);
  [v10 frame];
  v23 = [v22 initWithFrame:1 style:?];
  tableView = self->_tableView;
  self->_tableView = v23;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsSelection:0];
  [v10 addSubview:self->_tableView];
  v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Close" style:2 target:self action:sel__closeAction_];
  v26 = [(PXDebugDictionaryViewController *)self navigationItem];
  [v26 setLeftBarButtonItem:v25];

  [(PXDebugDictionaryViewController *)self _switchLogsAction:0];
}

- (PXDebugDictionaryViewController)initWithDebugDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXDebugDictionaryViewController;
  v6 = [(PXDebugDictionaryViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugDictionary, a3);
    v8 = [v5 objectForKey:@"PXDiagnosticsTitle"];
    [(PXDebugDictionaryViewController *)v7 setTitle:v8];
  }

  return v7;
}

@end