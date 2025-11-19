@interface CACCustomCommandApplicationViewController
- (CACCustomCommandApplicationViewController)init;
- (CACCustomCommandApplicationViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setApplicationIdentifiersToNames:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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

- (void)setApplicationIdentifiersToNames:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_applicationIdentifiersToNames != v5)
  {
    objc_storeStrong(&self->_applicationIdentifiersToNames, a3);
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSDictionary count](v5, "count") + 1}];
    [v6 addObject:@"com.apple.speech.SystemWideScope"];
    v7 = [(NSDictionary *)v5 allKeys];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __78__CACCustomCommandApplicationViewController_setApplicationIdentifiersToNames___block_invoke;
    v24[3] = &unk_279CEB718;
    v8 = v5;
    v25 = v8;
    v9 = [v7 sortedArrayUsingComparator:v24];

    [v6 addObjectsFromArray:v9];
    [(CACCustomCommandApplicationViewController *)self setSortedIdentifiers:v6];
    v10 = MEMORY[0x277CBEB18];
    v11 = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
    v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

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
  v3 = [(CACCustomCommandApplicationViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"ApplicationCell"];

  v4 = [(CACCustomCommandApplicationViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"AnyCell"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = [(CACCustomCommandApplicationViewController *)self sortedNames];
  v5 = [v4 count] - 1;

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = @"ApplicationCell";
  }

  else
  {
    v8 = @"AnyCell";
  }

  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [v6 section];
  v11 = [v6 row];
  if (v10)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(CACCustomCommandApplicationViewController *)self sortedNames];
  v14 = [v13 objectAtIndexedSubscript:v12];
  v15 = [v9 textLabel];
  [v15 setText:v14];

  v16 = [(CACCustomCommandApplicationViewController *)self commandItem];
  v17 = [v16 customScope];
  v18 = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
  v19 = [v18 objectAtIndexedSubscript:v12];
  if ([v17 isEqualToString:v19])
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v9 setAccessoryType:v20];

  if ([v6 section])
  {
    v21 = MEMORY[0x277D755B8];
    v22 = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
    v23 = [v22 objectAtIndexedSubscript:v12];
    v24 = [MEMORY[0x277D759A0] mainScreen];
    [v24 scale];
    v25 = [v21 _applicationIconImageForBundleIdentifier:v23 format:0 scale:?];

    v26 = [v9 imageView];
    [v26 setImage:v25];

    v27 = [v9 imageView];
    v28 = [v27 layer];
    [v28 setMasksToBounds:1];

    v29 = [v9 imageView];
    v30 = [v29 layer];
    [v30 setCornerRadius:5.0];
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 section];
  v7 = [v5 row];
  if (v6)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(CACCustomCommandApplicationViewController *)self sortedIdentifiers];
  v10 = [v9 objectAtIndexedSubscript:v8];
  v11 = [(CACCustomCommandApplicationViewController *)self commandItem];
  [v11 setCustomScope:v10];

  v12 = [(CACCustomCommandApplicationViewController *)self tableView];
  v13 = [v12 cellForRowAtIndexPath:v5];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(CACCustomCommandApplicationViewController *)self tableView];
  v15 = [v14 visibleCells];

  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v15);
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
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v22 = [(CACCustomCommandApplicationViewController *)self tableView];
  [v22 deselectRowAtIndexPath:v5 animated:1];

  v23 = [(CACCustomCommandApplicationViewController *)self delegate];
  [v23 didUpdateCommandItemForApplicationViewController:self];
}

- (CACCustomCommandApplicationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end