@interface PXDebugMemoriesViewController
- (PXDebugMemoriesViewController)initWithMemory:(id)memory memoryInfo:(id)info;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_sendByEmailAction:(id)action;
- (void)_switchLogsAction:(id)action;
- (void)viewDidLoad;
@end

@implementation PXDebugMemoriesViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"KeywordsCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"KeywordsCell"];
  }

  v9 = -[PXDebugMemoriesViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", viewCopy, [pathCopy section]);

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

  textLabel2 = [v8 textLabel];
  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  [textLabel2 setFont:v21];

  textLabel3 = [v8 textLabel];
  [textLabel3 setNumberOfLines:0];

  textLabel4 = [v8 textLabel];
  [textLabel4 sizeToFit];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PXDebugMemoriesViewController *)self tableView:view titleForHeaderInSection:section];
  v6 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)_sendByEmailAction:(id)action
{
  v19 = *MEMORY[0x1E69E9840];
  if ([getMFMailComposeViewControllerClass_83739() canSendMail])
  {
    title = [(PXDebugMemoriesViewController *)self title];
    v5 = [@"PhotosGraph " stringByAppendingString:title];

    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:@"photos-memories-feedback@group.apple.com"];
    v7 = objc_alloc_init(getMFMailComposeViewControllerClass_83739());
    [v7 setMailComposeDelegate:self];
    [v7 setSubject:v5];
    [v7 setToRecipients:v6];
    v8 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:self->_sourceMemory];
    if (v8)
    {
      v16 = 0;
      v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v16];
      v10 = v16;
      if (v9)
      {
        [v7 addAttachmentData:v9 mimeType:@"application/x-plist" fileName:@"results.plist"];
      }

      if (v10)
      {
        v11 = MEMORY[0x1E696AEC0];
        localizedDescription = [v10 localizedDescription];
        v13 = [v11 stringWithFormat:@"Cannot attach results.plist: %@.", localizedDescription];

        v14 = v13;
        v15 = PLUIGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v14;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v14 = &stru_1F1741150;
LABEL_13:
    [v7 setMessageBody:v14 isHTML:0];
    [(PXDebugMemoriesViewController *)self presentViewController:v7 animated:1 completion:0];

    goto LABEL_14;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "ERROR: Looks like email is not setup on this system.", buf, 2u);
  }

LABEL_14:
}

- (void)_switchLogsAction:(id)action
{
  selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v11 = 0;
  v12 = 0;
  [PXMemoriesRelatedDiagnosticsHelper generateSectionTitles:&v12 andTableContent:&v11 forIndex:selectedSegmentIndex sourceMemory:self->_sourceMemory sourceDictionary:self->_sourceDictionary];
  v5 = v12;
  v6 = v11;
  sectionTitles = self->_sectionTitles;
  self->_sectionTitles = v5;
  v8 = v5;

  tableContent = self->_tableContent;
  self->_tableContent = v6;
  v10 = v6;

  [(UITableView *)self->_tableView reloadData];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = PXDebugMemoriesViewController;
  [(PXDebugMemoriesViewController *)&v30 viewDidLoad];
  view = [(PXDebugMemoriesViewController *)self view];
  [view setAutoresizingMask:18];

  view2 = [(PXDebugMemoriesViewController *)self view];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [view2 setBackgroundColor:systemGroupedBackgroundColor];

  v6 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F1910618];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v6;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel__switchLogsAction_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
  view3 = [(PXDebugMemoriesViewController *)self view];
  [view3 addSubview:self->_segmentedControl];

  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  view4 = [(PXDebugMemoriesViewController *)self view];
  [view4 addSubview:v9];

  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  view5 = [(PXDebugMemoriesViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v15 setActive:1];

  v16 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr.isa, self->_segmentedControl, v9, 0);
  view6 = [(PXDebugMemoriesViewController *)self view];
  v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_segmentedControl(<=44)]-10-[contentView]-0-|" options:0 metrics:0 views:v16];
  [view6 addConstraints:v18];

  view7 = [(PXDebugMemoriesViewController *)self view];
  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_segmentedControl]-|" options:0 metrics:0 views:v16];
  [view7 addConstraints:v20];

  view8 = [(PXDebugMemoriesViewController *)self view];
  v22 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v16];
  [view8 addConstraints:v22];

  v23 = objc_alloc(MEMORY[0x1E69DD020]);
  [v9 frame];
  v24 = [v23 initWithFrame:1 style:?];
  tableView = self->_tableView;
  self->_tableView = v24;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsSelection:0];
  [v9 addSubview:self->_tableView];
  v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Close" style:2 target:self action:sel__closeAction_];
  navigationItem = [(PXDebugMemoriesViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v26];

  v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:7 target:self action:sel__sendByEmailAction_];
  navigationItem2 = [(PXDebugMemoriesViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v28];

  [(PXDebugMemoriesViewController *)self _switchLogsAction:0];
}

- (PXDebugMemoriesViewController)initWithMemory:(id)memory memoryInfo:(id)info
{
  memoryCopy = memory;
  v16.receiver = self;
  v16.super_class = PXDebugMemoriesViewController;
  v7 = [(PXDebugMemoriesViewController *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(PXDebugMemoriesViewController *)v7 setTitle:@"Memory Debug"];
    objc_storeStrong(&v8->_sourceMemory, memory);
    photosGraphProperties = [memoryCopy photosGraphProperties];
    if (!photosGraphProperties)
    {
      photosGraphProperties = [(PXDebugMemoriesViewController *)v8 _debugDictionary];
    }

    localIdentifier = [(PHMemory *)v8->_sourceMemory localIdentifier];
    photosGraphVersion = [(PHMemory *)v8->_sourceMemory photosGraphVersion];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v13 = [PXMemoriesRelatedDiagnosticsHelper preprocessDictionary:photosGraphProperties forMemoryWithLocalIdentifier:localIdentifier algorithmsVersion:photosGraphVersion inPhotoLibrary:px_deprecated_appPhotoLibrary];
    sourceDictionary = v8->_sourceDictionary;
    v8->_sourceDictionary = v13;
  }

  return v8;
}

@end