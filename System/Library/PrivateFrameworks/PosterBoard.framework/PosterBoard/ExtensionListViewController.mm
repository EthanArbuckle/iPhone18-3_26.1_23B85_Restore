@interface ExtensionListViewController
- (ExtensionListViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)_loadExtensions;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ExtensionListViewController

- (ExtensionListViewController)init
{
  v3.receiver = self;
  v3.super_class = ExtensionListViewController;
  return [(ExtensionListViewController *)&v3 init];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ExtensionListViewController;
  [(ExtensionListViewController *)&v5 viewDidLoad];
  tableView = [(ExtensionListViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"extension"];

  v4 = objc_opt_new();
  [v4 addTarget:self action:sel__loadExtensions forControlEvents:4096];
  [(ExtensionListViewController *)self setRefreshControl:v4];
  [(ExtensionListViewController *)self _loadExtensions];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ExtensionListViewController;
  [(ExtensionListViewController *)&v3 viewWillAppear:appear];
}

- (void)_loadExtensions
{
  if (MEMORY[0x21CEF7340]("[ExtensionListViewController _loadExtensions]", a2))
  {
    v3 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:@"com.apple.posterkit.provider"];
    v4 = dispatch_get_global_queue(33, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__ExtensionListViewController__loadExtensions__block_invoke;
    v6[3] = &unk_2782C58B0;
    v7 = v3;
    selfCopy = self;
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

void __46__ExtensionListViewController__loadExtensions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC5E00] executeQuery:*(a1 + 32)];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_1];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ExtensionListViewController__loadExtensions__block_invoke_3;
  v5[3] = &unk_2782C58B0;
  v5[4] = *(a1 + 40);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __46__ExtensionListViewController__loadExtensions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 compare:v6];
  return v7;
}

void __46__ExtensionListViewController__loadExtensions__block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 1040);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) extensionItemActivationStyle];
  v8 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__ExtensionListViewController__loadExtensions__block_invoke_4;
  v15[3] = &__block_descriptor_40_e30__16__0___EXExtensionIdentity_8l;
  v15[4] = v7;
  v9 = [v8 bs_map:v15];
  v10 = *(a1 + 32);
  v11 = *(v10 + 1040);
  *(v10 + 1040) = v9;

  v12 = [*(a1 + 32) tableView];
  [v12 reloadData];

  v13 = dispatch_time(0, 800000000);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__ExtensionListViewController__loadExtensions__block_invoke_5;
  v14[3] = &unk_2782C5888;
  v14[4] = *(a1 + 32);
  dispatch_after(v13, MEMORY[0x277D85CD0], v14);
}

void __46__ExtensionListViewController__loadExtensions__block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) refreshControl];
  [v1 endRefreshing];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"extension" forIndexPath:pathCopy];
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  extensions = self->_extensions;
  v10 = [pathCopy row];

  v11 = [(NSArray *)extensions objectAtIndex:v10];
  name = [v11 name];
  [defaultContentConfiguration setText:name];

  [v7 setContentConfiguration:defaultContentConfiguration];

  return v7;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v19[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndex:](self->_extensions, "objectAtIndex:", [pathCopy row]);
  if ([v8 wasEverActivated] && (v9 = MEMORY[0x277D753C0], v15[0] = MEMORY[0x277D85DD0], v15[1] = 3221225472, v15[2] = __92__ExtensionListViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke, v15[3] = &unk_2782C6DB0, v16 = v8, v17 = viewCopy, v18 = pathCopy, objc_msgSend(v9, "contextualActionWithStyle:title:handler:", 1, @"Invalidate", v15), v10 = objc_claimAutoreleasedReturnValue(), v18, v17, v16, v10))
  {
    v11 = MEMORY[0x277D75AD8];
    v19[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v13 = [v11 configurationWithActions:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __92__ExtensionListViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a4;
  [v5 invalidate];
  v7 = a1[5];
  v9[0] = a1[6];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

  v6[2](v6, 1);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndex:](self->_extensions, "objectAtIndex:", [pathCopy row]);
  activate = [v8 activate];
  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [activate setDelegate:self];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__ExtensionListViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v14[3] = &unk_2782C58B0;
  v15 = viewCopy;
  v16 = pathCopy;
  v12 = pathCopy;
  v13 = viewCopy;
  [(ExtensionListViewController *)self presentViewController:activate animated:1 completion:v14];
}

void __65__ExtensionListViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deselectRowAtIndexPath:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 reloadRowsAtIndexPaths:v3 withRowAnimation:100];
}

@end