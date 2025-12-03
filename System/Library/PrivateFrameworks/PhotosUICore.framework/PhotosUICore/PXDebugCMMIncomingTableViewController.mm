@interface PXDebugCMMIncomingTableViewController
- (PXDebugCMMIncomingTableViewController)initWithDataSourceManager:(id)manager;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)viewDidLoad;
@end

@implementation PXDebugCMMIncomingTableViewController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXDataSourceManagerObservationContext == context)
  {
    v27 = v8;
    v28 = v7;
    v29 = v5;
    v30 = v6;
    v10 = [(PXDebugCMMIncomingTableViewController *)self tableView:observable];
    dataSource = [(PXDebugCMMIncomingTableViewController *)self dataSource];
    dataSourceManager = [(PXDebugCMMIncomingTableViewController *)self dataSourceManager];
    dataSource2 = [dataSourceManager dataSource];

    dataSourceManager2 = [(PXDebugCMMIncomingTableViewController *)self dataSourceManager];
    changeHistory = [dataSourceManager2 changeHistory];
    v16 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(dataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource2, "identifier")}];

    if ([v16 count] == 1)
    {
      firstObject = [v16 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v18 = [firstObject itemChangesInSection:0];
    v19 = v18;
    if (v18 && [v18 hasIncrementalChanges])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __70__PXDebugCMMIncomingTableViewController_observable_didChange_context___block_invoke;
      v23[3] = &unk_1E7744F50;
      v23[4] = self;
      v24 = dataSource2;
      v25 = v19;
      v26 = v10;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __70__PXDebugCMMIncomingTableViewController_observable_didChange_context___block_invoke_2;
      v20[3] = &unk_1E7749628;
      v21 = v25;
      v22 = v26;
      [v22 performBatchUpdates:v23 completion:v20];
    }

    else
    {
      [(PXDebugCMMIncomingTableViewController *)self setDataSource:dataSource2];
      [v10 reloadData];
    }
  }
}

void __70__PXDebugCMMIncomingTableViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDataSource:*(a1 + 40)];
  v7 = [*(a1 + 48) removedIndexes];
  if ([v7 count])
  {
    v2 = *(a1 + 56);
    v3 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v7 inSection:0];
    [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:100];
  }

  v4 = [*(a1 + 48) insertedIndexes];
  if ([v4 count])
  {
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v4 inSection:0];
    [v5 insertRowsAtIndexPaths:v6 withRowAnimation:100];
  }
}

void __70__PXDebugCMMIncomingTableViewController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) changedIndexes];
  if ([v4 count])
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v4 inSection:0];
    [v2 reloadRowsAtIndexPaths:v3 withRowAnimation:100];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  [view dequeueReusableCellWithIdentifier:@"PXDebugCMMIncomingTableViewCellReuseIdentifier" forIndexPath:path];
  objc_claimAutoreleasedReturnValue();
  [(PXDebugCMMIncomingTableViewController *)self dataSource];
  objc_claimAutoreleasedReturnValue();
  [(PXDebugCMMIncomingTableViewController *)self dataSource];
  [objc_claimAutoreleasedReturnValue() identifier];
  PXSimpleIndexPathFromIndexPath();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  dataSource = [(PXDebugCMMIncomingTableViewController *)self dataSource];
  v6 = [dataSource numberOfItemsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  dataSource = [(PXDebugCMMIncomingTableViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  return numberOfSections;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXDebugCMMIncomingTableViewController;
  [(PXDebugCMMIncomingTableViewController *)&v5 viewDidLoad];
  tableView = [(PXDebugCMMIncomingTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PXDebugCMMIncomingTableViewCellReuseIdentifier"];

  px_extendedTraitCollection = [(PXDebugCMMIncomingTableViewController *)self px_extendedTraitCollection];
  [px_extendedTraitCollection registerChangeObserver:self context:PXExtendedTraitCollectionObservationContext_61744];
}

- (PXDebugCMMIncomingTableViewController)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PXDebugCMMIncomingTableViewController;
  v6 = [(PXDebugCMMIncomingTableViewController *)&v11 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManager, manager);
    [(PXSectionedDataSourceManager *)v7->_dataSourceManager registerChangeObserver:v7 context:PXDataSourceManagerObservationContext];
    dataSource = [managerCopy dataSource];
    dataSource = v7->_dataSource;
    v7->_dataSource = dataSource;

    [(PXDebugCMMIncomingTableViewController *)v7 px_enableExtendedTraitCollection];
  }

  return v7;
}

@end