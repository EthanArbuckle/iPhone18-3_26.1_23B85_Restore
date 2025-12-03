@interface CACCustomCommandApplicationViewController
- (CACCustomCommandApplicationViewController)init;
- (CACCustomCommandApplicationViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setApplicationIdentifiersToNames:(id)names;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CACCustomCommandApplicationViewController

- (CACCustomCommandApplicationViewController)init
{
  v2 = [(CACCustomCommandApplicationViewController *)self initWithStyle:2];
  if (v2)
  {
    v3 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Application"];
    [(CACCustomCommandApplicationViewController *)v2 setTitle:v3];
  }

  return v2;
}

- (void)setApplicationIdentifiersToNames:(id)names
{
  v27 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if (self->_applicationIdentifiersToNames != namesCopy)
  {
    objc_storeStrong(&self->_applicationIdentifiersToNames, names);
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSDictionary count](namesCopy, "count") + 1}];
    [v6 addObject:@"com.apple.speech.SystemWideScope"];
    allKeys = [(NSDictionary *)namesCopy allKeys];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __78__CACCustomCommandApplicationViewController_setApplicationIdentifiersToNames___block_invoke;
    v24[3] = &unk_279CEB718;
    v8 = namesCopy;
    v25 = v8;
    v9 = [allKeys sortedArrayUsingComparator:v24];

    [v6 addObjectsFromArray:v9];
    [(CACCustomCommandApplicationViewController *)self setSortedIdentifiers:v6];
    v10 = MEMORY[0x277CBEB18];
    sortedIdentifiers = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
    v12 = [v10 arrayWithCapacity:{objc_msgSend(sortedIdentifiers, "count")}];

    v13 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.AnyApplication"];
    [v12 addObject:v13];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(NSDictionary *)v8 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v18), v20];
          [v12 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v16);
    }

    [(CACCustomCommandApplicationViewController *)self setSortedNames:v12];
  }
}

uint64_t __78__CACCustomCommandApplicationViewController_setApplicationIdentifiersToNames___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CACCustomCommandApplicationViewController;
  [(CACCustomCommandApplicationViewController *)&v5 viewDidLoad];
  tableView = [(CACCustomCommandApplicationViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ApplicationCell"];

  tableView2 = [(CACCustomCommandApplicationViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"AnyCell"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  sortedNames = [(CACCustomCommandApplicationViewController *)self sortedNames];
  v5 = [sortedNames count] - 1;

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = @"ApplicationCell";
  }

  else
  {
    v8 = @"AnyCell";
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  section = [pathCopy section];
  v11 = [pathCopy row];
  if (section)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  sortedNames = [(CACCustomCommandApplicationViewController *)self sortedNames];
  v14 = [sortedNames objectAtIndexedSubscript:v12];
  textLabel = [v9 textLabel];
  [textLabel setText:v14];

  commandItem = [(CACCustomCommandApplicationViewController *)self commandItem];
  customScope = [commandItem customScope];
  sortedIdentifiers = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
  v19 = [sortedIdentifiers objectAtIndexedSubscript:v12];
  if ([customScope isEqualToString:v19])
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v9 setAccessoryType:v20];

  if ([pathCopy section])
  {
    v21 = MEMORY[0x277D755B8];
    sortedIdentifiers2 = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
    v23 = [sortedIdentifiers2 objectAtIndexedSubscript:v12];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v25 = [v21 _applicationIconImageForBundleIdentifier:v23 format:0 scale:?];

    imageView = [v9 imageView];
    [imageView setImage:v25];

    imageView2 = [v9 imageView];
    layer = [imageView2 layer];
    [layer setMasksToBounds:1];

    imageView3 = [v9 imageView];
    layer2 = [imageView3 layer];
    [layer2 setCornerRadius:5.0];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  section = [pathCopy section];
  v7 = [pathCopy row];
  if (section)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  sortedIdentifiers = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
  v10 = [sortedIdentifiers objectAtIndexedSubscript:v8];
  commandItem = [(CACCustomCommandApplicationViewController *)self commandItem];
  [commandItem setCustomScope:v10];

  tableView = [(CACCustomCommandApplicationViewController *)self tableView];
  v13 = [tableView cellForRowAtIndexPath:pathCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  tableView2 = [(CACCustomCommandApplicationViewController *)self tableView];
  visibleCells = [tableView2 visibleCells];

  v16 = [visibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(visibleCells);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if (v20 == v13)
        {
          v21 = 3;
        }

        else
        {
          v21 = 0;
        }

        [v20 setAccessoryType:v21];
        ++v19;
      }

      while (v17 != v19);
      v17 = [visibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  tableView3 = [(CACCustomCommandApplicationViewController *)self tableView];
  [tableView3 deselectRowAtIndexPath:pathCopy animated:1];

  delegate = [(CACCustomCommandApplicationViewController *)self delegate];
  [delegate didUpdateCommandItemForApplicationViewController:self];
}

- (CACCustomCommandApplicationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end