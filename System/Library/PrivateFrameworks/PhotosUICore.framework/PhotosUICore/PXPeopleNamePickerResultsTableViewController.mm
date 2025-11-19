@interface PXPeopleNamePickerResultsTableViewController
- (BOOL)hasResults;
- (PXPeopleNamePickerResultsTableViewController)initWithCoder:(id)a3;
- (PXPeopleNamePickerResultsTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)a3;
- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)a3 person:(id)a4 face:(id)a5;
- (id)contactAtIndexPath:(id)a3;
- (id)personAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)updateItemsForSearchString:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXPeopleNamePickerResultsTableViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v10 = [v9 objectAtIndex:{objc_msgSend(v8, "row")}];

  v11 = [v10 contact];
  v12 = [v10 person];
  v13 = v12;
  if (v11)
  {
    v14 = [v7 dequeueReusableCellWithIdentifier:@"PXPeopleNamePickerContactCellReuseID" forIndexPath:v8];
    v15 = [v14 subtitleLabel];
    v16 = [v10 subtitle];
    [v15 setAttributedText:v16];

    v17 = [v14 contactAvatarView];
    [v17 setContact:v11];
  }

  else
  {
    if (!v12)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:139 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v14 = [v7 dequeueReusableCellWithIdentifier:@"PXPeopleNamePickerPersonCellReuseID" forIndexPath:v8];
    [v14 setPerson:v13];
  }

  v18 = [v14 titleLabel];
  v19 = [v10 title];
  [v18 setAttributedText:v19];

  v20 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v14 setBackgroundColor:v20];

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PXPeopleNamePickerResultsTableViewController *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (id)personAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v6 = [v4 row];

  v7 = [v5 objectAtIndex:v6];

  v8 = [v7 person];

  return v8;
}

- (id)contactAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v6 = [v4 row];

  v7 = [v5 objectAtIndex:v6];

  v8 = [v7 contact];

  return v8;
}

- (BOOL)hasResults
{
  v2 = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v3 = [v2 count];

  return v3 > 0;
}

- (void)updateItemsForSearchString:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleNamePickerResultsTableViewController *)self person];
  if (v5)
  {
    [(PXPeopleNamePickerResultsTableViewController *)self person];
  }

  else
  {
    [(PXPeopleNamePickerResultsTableViewController *)self face];
  }
  v6 = ;
  v13 = [v6 photoLibrary];

  v7 = [(PXPeopleNamePickerResultsTableViewController *)self person];
  if (v7)
  {
    [(PXPeopleNamePickerResultsTableViewController *)self person];
  }

  else
  {
    [(PXPeopleNamePickerResultsTableViewController *)self face];
  }
  v8 = ;
  v9 = [v8 detectionType];

  v10 = [PXPeopleNamingUtilities itemsFor:v4 photoLibrary:v13 detectionType:v9];

  v11 = [v10 mutableCopy];
  [(PXPeopleNamePickerResultsTableViewController *)self setItems:v11];
  v12 = [(PXPeopleNamePickerResultsTableViewController *)self tableView];
  [v12 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PXPeopleNamePickerResultsTableViewController;
  [(PXPeopleNamePickerResultsTableViewController *)&v6 viewDidLoad];
  v3 = [(PXPeopleNamePickerResultsTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXPeopleNamePickerPersonCellReuseID"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXPeopleNamePickerContactCellReuseID"];
  [v3 setRowHeight:64.0];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setTableFooterView:v5];
}

- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXPeopleNamePickerResultsTableViewController initWithStyle:]"}];

  abort();
}

- (PXPeopleNamePickerResultsTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXPeopleNamePickerResultsTableViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPeopleNamePickerResultsTableViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:60 description:{@"%s is not available as initializer", "-[PXPeopleNamePickerResultsTableViewController initWithCoder:]"}];

  abort();
}

- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)a3 person:(id)a4 face:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PXPeopleNamePickerResultsTableViewController;
  v11 = [(PXPeopleNamePickerResultsTableViewController *)&v15 initWithStyle:a3];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v11->_items;
    v11->_items = v12;

    objc_storeStrong(&v11->_person, a4);
    objc_storeStrong(&v11->_face, a5);
  }

  return v11;
}

@end