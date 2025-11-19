@interface PXDebugCMMIncomingTableViewController
- (PXDebugCMMIncomingTableViewController)initWithDataSourceManager:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)viewDidLoad;
@end

@implementation PXDebugCMMIncomingTableViewController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXDataSourceManagerObservationContext == a5)
  {
    v27 = v8;
    v28 = v7;
    v29 = v5;
    v30 = v6;
    v10 = [(PXDebugCMMIncomingTableViewController *)self tableView:a3];
    v11 = [(PXDebugCMMIncomingTableViewController *)self dataSource];
    v12 = [(PXDebugCMMIncomingTableViewController *)self dataSourceManager];
    v13 = [v12 dataSource];

    v14 = [(PXDebugCMMIncomingTableViewController *)self dataSourceManager];
    v15 = [v14 changeHistory];
    v16 = [v15 changeDetailsFromDataSourceIdentifier:objc_msgSend(v11 toDataSourceIdentifier:{"identifier"), objc_msgSend(v13, "identifier")}];

    if ([v16 count] == 1)
    {
      v17 = [v16 firstObject];
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 itemChangesInSection:0];
    v19 = v18;
    if (v18 && [v18 hasIncrementalChanges])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __70__PXDebugCMMIncomingTableViewController_observable_didChange_context___block_invoke;
      v23[3] = &unk_1E7744F50;
      v23[4] = self;
      v24 = v13;
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
      [(PXDebugCMMIncomingTableViewController *)self setDataSource:v13];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  [a3 dequeueReusableCellWithIdentifier:@"PXDebugCMMIncomingTableViewCellReuseIdentifier" forIndexPath:a4];
  objc_claimAutoreleasedReturnValue();
  [(PXDebugCMMIncomingTableViewController *)self dataSource];
  objc_claimAutoreleasedReturnValue();
  [(PXDebugCMMIncomingTableViewController *)self dataSource];
  [objc_claimAutoreleasedReturnValue() identifier];
  PXSimpleIndexPathFromIndexPath();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PXDebugCMMIncomingTableViewController *)self dataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PXDebugCMMIncomingTableViewController *)self dataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXDebugCMMIncomingTableViewController;
  [(PXDebugCMMIncomingTableViewController *)&v5 viewDidLoad];
  v3 = [(PXDebugCMMIncomingTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXDebugCMMIncomingTableViewCellReuseIdentifier"];

  v4 = [(PXDebugCMMIncomingTableViewController *)self px_extendedTraitCollection];
  [v4 registerChangeObserver:self context:PXExtendedTraitCollectionObservationContext_61744];
}

- (PXDebugCMMIncomingTableViewController)initWithDataSourceManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXDebugCMMIncomingTableViewController;
  v6 = [(PXDebugCMMIncomingTableViewController *)&v11 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManager, a3);
    [(PXSectionedDataSourceManager *)v7->_dataSourceManager registerChangeObserver:v7 context:PXDataSourceManagerObservationContext];
    v8 = [v5 dataSource];
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;

    [(PXDebugCMMIncomingTableViewController *)v7 px_enableExtendedTraitCollection];
  }

  return v7;
}

@end