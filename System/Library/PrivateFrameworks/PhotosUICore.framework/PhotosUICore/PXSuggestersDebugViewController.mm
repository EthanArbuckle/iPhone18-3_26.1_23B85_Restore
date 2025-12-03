@interface PXSuggestersDebugViewController
- (PXSuggestersDebugViewController)initWithOptions:(id)options;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_fetchSuggesters;
- (void)configureCell:(id)cell withItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXSuggestersDebugViewController

- (void)_fetchSuggesters
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978AE8];
  options = self->_options;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v3 availableSuggestionTypeInfosWithOptions:options photoLibrary:px_deprecated_appPhotoLibrary];

  allValues = [v6 allValues];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [allValues sortedArrayUsingDescriptors:v9];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [PXSuggestersDebugCollectionItem alloc];
        v19 = [(PXSuggestersDebugCollectionItem *)v18 initWithSuggesterInfo:v17, v21];
        [(NSArray *)v11 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  items = self->_items;
  self->_items = v11;
}

- (void)configureCell:(id)cell withItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  name = [itemCopy name];
  v8 = [name stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [textLabel setText:v8];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  detailTextLabel = [cellCopy detailTextLabel];

  v11 = [itemCopy description];

  [detailTextLabel setText:v11];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [detailTextLabel setTextColor:labelColor2];

  [detailTextLabel sizeToFit];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SuggestersDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SuggestersDebugTableViewCellIdentifier"];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setNumberOfLines:2];

    detailTextLabel2 = [v7 detailTextLabel];
    [detailTextLabel2 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [pathCopy row]);
  [(PXSuggestersDebugViewController *)self configureCell:v7 withItem:v10];

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [path row]);
  v5 = [v4 description];
  v6 = [v5 rangeOfString:@"\n"];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 44.0;
  }

  else
  {
    v7 = 66.0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [path row]);
  v5 = [PXSuggesterDebugViewController alloc];
  name = [v10 name];
  info = [v10 info];
  v8 = [(PXSuggesterDebugViewController *)v5 initWithName:name options:info];

  navigationController = [(PXSuggestersDebugViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PXSuggestersDebugViewController;
  [(PXSuggestersDebugViewController *)&v6 viewDidLoad];
  navigationItem = [(PXSuggestersDebugViewController *)self navigationItem];
  [navigationItem setTitle:@"Suggesters"];

  navigationController = [(PXSuggestersDebugViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];

  tableView = [(PXSuggestersDebugViewController *)self tableView];
  [tableView setEstimatedRowHeight:44.0];

  [(PXSuggestersDebugViewController *)self _fetchSuggesters];
}

- (PXSuggestersDebugViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = PXSuggestersDebugViewController;
  v6 = [(PXSuggestersDebugViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
  }

  return v7;
}

@end