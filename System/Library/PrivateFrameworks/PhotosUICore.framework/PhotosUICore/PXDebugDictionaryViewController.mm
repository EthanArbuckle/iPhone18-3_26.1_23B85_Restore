@interface PXDebugDictionaryViewController
- (PXDebugDictionaryViewController)initWithDebugDictionary:(id)dictionary;
- (id)_flattenDictionary:(id)dictionary;
- (id)_sanitizedTextForTitle:(id)title value:(id)value;
- (id)segmentedTitles;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_switchLogsAction:(id)action;
- (void)_updateWithSegmentedTitle:(id)title;
- (void)viewDidLoad;
@end

@implementation PXDebugDictionaryViewController

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sectionTitles = [(PXDebugDictionaryViewController *)self sectionTitles];
  v6 = [sectionTitles objectAtIndexedSubscript:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"KeywordsCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"KeywordsCell"];
  }

  v9 = -[PXDebugDictionaryViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", viewCopy, [pathCopy section]);

  tableContent = [(PXDebugDictionaryViewController *)self tableContent];
  v11 = [tableContent objectForKeyedSubscript:v9];
  v12 = [pathCopy row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  v14 = [(PXDebugDictionaryViewController *)self _sanitizedTextForTitle:v9 value:v13];
  textLabel = [v8 textLabel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [textLabel setAttributedText:v14];
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v14];

    [textLabel setText:v16];
    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    [textLabel setFont:v17];

    v14 = v16;
  }

  [textLabel setNumberOfLines:0];
  [textLabel sizeToFit];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sectionTitles = [(PXDebugDictionaryViewController *)self sectionTitles];
  v7 = [sectionTitles objectAtIndexedSubscript:section];

  tableContent = [(PXDebugDictionaryViewController *)self tableContent];
  v9 = [tableContent objectForKeyedSubscript:v7];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sectionTitles = [(PXDebugDictionaryViewController *)self sectionTitles];
  v4 = [sectionTitles count];

  return v4;
}

- (id)_sanitizedTextForTitle:(id)title value:(id)value
{
  valueCopy = value;
  lowercaseString = [title lowercaseString];
  v7 = [lowercaseString isEqualToString:@"location"];

  v8 = valueCopy;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = valueCopy;
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

- (id)_flattenDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E695DF70];
  dictionaryCopy = dictionary;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PXDebugDictionaryViewController__flattenDictionary___block_invoke;
  v8[3] = &unk_1E7749C38;
  v6 = v5;
  v9 = v6;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __54__PXDebugDictionaryViewController__flattenDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [*(a1 + 32) addObject:v4];
}

- (void)_updateWithSegmentedTitle:(id)title
{
  v32[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v5 = [(NSDictionary *)self->_debugDictionary objectForKeyedSubscript:titleCopy];
  v32[0] = titleCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [(PXDebugDictionaryViewController *)self setSectionTitles:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = titleCopy;
    allKeys = [v5 allKeys];
    [(PXDebugDictionaryViewController *)self setSectionTitles:allKeys];

    v19 = v5;
    v8 = [v5 mutableCopy];
    allKeys2 = [v8 allKeys];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [allKeys2 countByEnumeratingWithState:&v21 objects:v31 count:16];
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
          objc_enumerationMutation(allKeys2);
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

      v11 = [allKeys2 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (!v11)
      {
LABEL_14:

        v5 = v19;
        titleCopy = v20;
        goto LABEL_18;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = titleCopy;
    v29 = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

  else
  {
    v25 = v5;
    v26 = titleCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v27 = v18;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

LABEL_18:
  [(PXDebugDictionaryViewController *)self setTableContent:v8];
}

- (void)_switchLogsAction:(id)action
{
  segmentedTitles = [(PXDebugDictionaryViewController *)self segmentedTitles];
  segmentedControl = [(PXDebugDictionaryViewController *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  v6 = [segmentedTitles objectAtIndexedSubscript:selectedSegmentIndex];
  [(PXDebugDictionaryViewController *)self _updateWithSegmentedTitle:v6];
  tableView = [(PXDebugDictionaryViewController *)self tableView];
  [tableView reloadData];
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
  view = [(PXDebugDictionaryViewController *)self view];
  [view setAutoresizingMask:18];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  view2 = [(PXDebugDictionaryViewController *)self view];
  [view2 setBackgroundColor:systemGroupedBackgroundColor];

  segmentedTitles = [(PXDebugDictionaryViewController *)self segmentedTitles];
  v7 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:segmentedTitles];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v7;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel__switchLogsAction_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
  view3 = [(PXDebugDictionaryViewController *)self view];
  [view3 addSubview:self->_segmentedControl];

  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  view4 = [(PXDebugDictionaryViewController *)self view];
  [view4 addSubview:v10];

  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  view5 = [(PXDebugDictionaryViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v16 setActive:1];

  v17 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr.isa, self->_segmentedControl, v10, 0);
  array = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_segmentedControl(<=44)]-10-[contentView]-0-|" options:0 metrics:0 views:v17];
  [array addObjectsFromArray:v19];

  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_segmentedControl]-|" options:0 metrics:0 views:v17];
  [array addObjectsFromArray:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v17];
  [array addObjectsFromArray:v21];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
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
  navigationItem = [(PXDebugDictionaryViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v25];

  [(PXDebugDictionaryViewController *)self _switchLogsAction:0];
}

- (PXDebugDictionaryViewController)initWithDebugDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PXDebugDictionaryViewController;
  v6 = [(PXDebugDictionaryViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugDictionary, dictionary);
    v8 = [dictionaryCopy objectForKey:@"PXDiagnosticsTitle"];
    [(PXDebugDictionaryViewController *)v7 setTitle:v8];
  }

  return v7;
}

@end