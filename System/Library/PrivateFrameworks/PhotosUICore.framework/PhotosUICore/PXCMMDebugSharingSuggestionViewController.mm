@interface PXCMMDebugSharingSuggestionViewController
+ (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index sourceSuggestion:(id)suggestion sourceDictionary:(id)dictionary;
- (PXCMMDebugSharingSuggestionViewController)initWithSharingSuggestion:(id)suggestion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_sendByEmailAction:(id)action;
- (void)_switchLogsAction:(id)action;
- (void)viewDidLoad;
@end

@implementation PXCMMDebugSharingSuggestionViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"KeywordsCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"KeywordsCell"];
  }

  v9 = -[PXCMMDebugSharingSuggestionViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", viewCopy, [pathCopy section]);

  v10 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v9];
  v11 = [pathCopy row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  lowercaseString = [v9 lowercaseString];
  LODWORD(v11) = [lowercaseString isEqualToString:@"location"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
      if ([v14 count] < 2)
      {
        v18 = @"Invalid location";
      }

      else
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v14 objectAtIndexedSubscript:0];
        v17 = [v14 objectAtIndexedSubscript:1];
        v18 = [v15 stringWithFormat:@"(%@, %@)", v16, v17];

        v14 = v16;
      }
    }

    else
    {
      v18 = @"Invalid location";
    }

    v12 = v18;
  }

  textLabel = [v8 textLabel];
  [textLabel setText:v12];
  v20 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  [textLabel setFont:v20];

  [textLabel setNumberOfLines:0];
  [textLabel sizeToFit];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PXCMMDebugSharingSuggestionViewController *)self tableView:view titleForHeaderInSection:section];
  v6 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)_sendByEmailAction:(id)action
{
  v18 = *MEMORY[0x1E69E9840];
  if ([getMFMailComposeViewControllerClass_255265() canSendMail])
  {
    title = [(PXCMMDebugSharingSuggestionViewController *)self title];
    v5 = [@"PhotosGraph " stringByAppendingString:title];

    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:@"photos-memories-feedback@group.apple.com"];
    v7 = objc_alloc_init(getMFMailComposeViewControllerClass_255265());
    [v7 setMailComposeDelegate:self];
    [v7 setSubject:v5];
    [v7 setToRecipients:v6];
    v8 = self->_sourceDictionary;
    if (v8)
    {
      v15 = 0;
      v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v15];
      v10 = v15;
      if (v9)
      {
        [v7 addAttachmentData:v9 mimeType:@"application/x-plist" fileName:@"results.plist"];
      }

      if (v10)
      {
        v11 = MEMORY[0x1E696AEC0];
        localizedDescription = [v10 localizedDescription];
        v13 = [v11 stringWithFormat:@"Cannot attach results.plist: %@.", localizedDescription];

        v14 = PLSharingGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Failed to attach results: %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v13 = &stru_1F1741150;
LABEL_13:
    [v7 setMessageBody:v13 isHTML:0];
    [(PXCMMDebugSharingSuggestionViewController *)self presentViewController:v7 animated:1 completion:0];

    goto LABEL_14;
  }

  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Diagnostics: Looks like email is not setup on this system.", buf, 2u);
  }

LABEL_14:
}

- (void)_switchLogsAction:(id)action
{
  segmentedControl = [(PXCMMDebugSharingSuggestionViewController *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  v13 = 0;
  v14 = 0;
  sourceSuggestion = [(PXCMMDebugSharingSuggestionViewController *)self sourceSuggestion];
  [PXCMMDebugSharingSuggestionViewController generateSectionTitles:&v14 andTableContent:&v13 forIndex:selectedSegmentIndex sourceSuggestion:sourceSuggestion sourceDictionary:self->_sourceDictionary];
  v7 = v14;
  v8 = v13;

  sectionTitles = self->_sectionTitles;
  self->_sectionTitles = v7;
  v10 = v7;

  tableContent = self->_tableContent;
  self->_tableContent = v8;

  tableView = [(PXCMMDebugSharingSuggestionViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PXCMMDebugSharingSuggestionViewController;
  [(PXCMMDebugSharingSuggestionViewController *)&v21 viewDidLoad];
  view = [(PXCMMDebugSharingSuggestionViewController *)self view];
  [view setAutoresizingMask:18];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F1911AA0];
  [v5 addTarget:self action:sel__switchLogsAction_ forControlEvents:4096];
  [v5 setSelectedSegmentIndex:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXCMMDebugSharingSuggestionViewController *)self setSegmentedControl:v5];
  [view addSubview:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v6];
  topAnchor = [v5 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v10 setActive:1];

  v11 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr_1.isa, v5, v6, 0);
  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[segmentedControl(<=44)]-10-[contentView]-0-|" options:0 metrics:0 views:v11];
  [view addConstraints:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[segmentedControl]-|" options:0 metrics:0 views:v11];
  [view addConstraints:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v11];
  [view addConstraints:v14];

  v15 = objc_alloc(MEMORY[0x1E69DD020]);
  [v6 frame];
  v16 = [v15 initWithFrame:1 style:?];
  [v16 setAutoresizingMask:18];
  [v16 setDataSource:self];
  [v16 setAllowsSelection:0];
  [v6 addSubview:v16];
  [(PXCMMDebugSharingSuggestionViewController *)self setTableView:v16];
  v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Close" style:2 target:self action:sel__closeAction_];
  navigationItem = [(PXCMMDebugSharingSuggestionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v17];

  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:7 target:self action:sel__sendByEmailAction_];
  navigationItem2 = [(PXCMMDebugSharingSuggestionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v19];

  [(PXCMMDebugSharingSuggestionViewController *)self _switchLogsAction:0];
}

- (PXCMMDebugSharingSuggestionViewController)initWithSharingSuggestion:(id)suggestion
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v18.receiver = self;
  v18.super_class = PXCMMDebugSharingSuggestionViewController;
  v6 = [(PXCMMDebugSharingSuggestionViewController *)&v18 init];
  v7 = v6;
  if (v6)
  {
    [(PXCMMDebugSharingSuggestionViewController *)v6 setTitle:@"Suggestion Debug"];
    objc_storeStrong(&v7->_sourceSuggestion, suggestion);
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    localIdentifier = [suggestionCopy localIdentifier];
    v17 = 0;
    v10 = [px_deprecated_appPhotoLibrary sharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:localIdentifier error:&v17];
    v11 = v17;
    sourceDictionary = v7->_sourceDictionary;
    v7->_sourceDictionary = v10;

    if (!v7->_sourceDictionary)
    {
      v13 = PLSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = suggestionCopy;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Failed to retrieve debug information for asset collection %@", buf, 0xCu);
      }

      _debugDictionary = [(PXCMMDebugSharingSuggestionViewController *)v7 _debugDictionary];
      v15 = v7->_sourceDictionary;
      v7->_sourceDictionary = _debugDictionary;
    }
  }

  return v7;
}

+ (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index sourceSuggestion:(id)suggestion sourceDictionary:(id)dictionary
{
  v36[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  dictionaryCopy = dictionary;
  v13 = dictionaryCopy;
  if (titles)
  {
    v14 = content == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (!v14)
  {
    switch(index)
    {
      case 2:
        v17 = [dictionaryCopy objectForKeyedSubscript:@"content"];
        v21 = objc_opt_new();
        v22 = objc_opt_new();
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke_3;
        v26[3] = &unk_1E774BCD8;
        v27 = v21;
        v28 = v22;
        v19 = v22;
        v18 = v21;
        [v17 enumerateKeysAndObjectsUsingBlock:v26];
        v23 = v18;
        *titles = v18;
        v24 = v19;
        *content = v19;

        goto LABEL_14;
      case 1:
        v20 = objc_opt_new();
        v17 = [v13 objectForKeyedSubscript:@"people"];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke_2;
        v29[3] = &unk_1E774BC88;
        v30 = v20;
        v18 = v20;
        [v17 enumerateKeysAndObjectsUsingBlock:v29];
        *titles = &unk_1F1911AD0;
        v33 = &stru_1F1741150;
        v34 = v18;
        *content = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v19 = v30;
        goto LABEL_14;
      case 0:
        v16 = objc_opt_new();
        v17 = [v13 objectForKeyedSubscript:@"info"];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke;
        v31[3] = &unk_1E774BC88;
        v32 = v16;
        v18 = v16;
        [v17 enumerateKeysAndObjectsUsingBlock:v31];
        *titles = &unk_1F1911AB8;
        v35 = &stru_1F1741150;
        v36[0] = v18;
        *content = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v19 = v32;
LABEL_14:

        break;
    }
  }

  return v15;
}

void __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] %@", a2, a3];
  [*(a1 + 32) addObject:v4];
}

void __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - Number of sources: %lu", v5, objc_msgSend(v7, "count")];
    [*(a1 + 32) addObject:?];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t• %@", *(*(&v16 + 1) + 8 * v12)];
          [*(a1 + 32) addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] %@", v5, v6];
    [*(a1 + 32) addObject:v14];
  }
}

void __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 addObject:v7];
  v8 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __126__PXCMMDebugSharingSuggestionViewController_generateSectionTitles_andTableContent_forIndex_sourceSuggestion_sourceDictionary___block_invoke_4;
  v10[3] = &unk_1E774BCB0;
  v11 = v8;
  v9 = v8;
  [v5 enumerateObjectsUsingBlock:v10];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
}

@end