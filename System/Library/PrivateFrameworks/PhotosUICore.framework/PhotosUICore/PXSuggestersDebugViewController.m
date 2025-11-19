@interface PXSuggestersDebugViewController
- (PXSuggestersDebugViewController)initWithOptions:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_fetchSuggesters;
- (void)configureCell:(id)a3 withItem:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXSuggestersDebugViewController

- (void)_fetchSuggesters
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978AE8];
  options = self->_options;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v3 availableSuggestionTypeInfosWithOptions:options photoLibrary:v5];

  v7 = [v6 allValues];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [v7 sortedArrayUsingDescriptors:v9];

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

- (void)configureCell:(id)a3 withItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13 = [v6 textLabel];
  v7 = [v5 name];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [v13 setText:v8];
  v9 = [MEMORY[0x1E69DC888] labelColor];
  [v13 setTextColor:v9];

  v10 = [v6 detailTextLabel];

  v11 = [v5 description];

  [v10 setText:v11];
  v12 = [MEMORY[0x1E69DC888] labelColor];
  [v10 setTextColor:v12];

  [v10 sizeToFit];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SuggestersDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SuggestersDebugTableViewCellIdentifier"];
    v8 = [v7 detailTextLabel];
    [v8 setNumberOfLines:2];

    v9 = [v7 detailTextLabel];
    [v9 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [v6 row]);
  [(PXSuggestersDebugViewController *)self configureCell:v7 withItem:v10];

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [a4 row]);
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [PXSuggesterDebugViewController alloc];
  v6 = [v10 name];
  v7 = [v10 info];
  v8 = [(PXSuggesterDebugViewController *)v5 initWithName:v6 options:v7];

  v9 = [(PXSuggestersDebugViewController *)self navigationController];
  [v9 pushViewController:v8 animated:1];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PXSuggestersDebugViewController;
  [(PXSuggestersDebugViewController *)&v6 viewDidLoad];
  v3 = [(PXSuggestersDebugViewController *)self navigationItem];
  [v3 setTitle:@"Suggesters"];

  v4 = [(PXSuggestersDebugViewController *)self navigationController];
  [v4 setToolbarHidden:0 animated:1];

  v5 = [(PXSuggestersDebugViewController *)self tableView];
  [v5 setEstimatedRowHeight:44.0];

  [(PXSuggestersDebugViewController *)self _fetchSuggesters];
}

- (PXSuggestersDebugViewController)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXSuggestersDebugViewController;
  v6 = [(PXSuggestersDebugViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

@end