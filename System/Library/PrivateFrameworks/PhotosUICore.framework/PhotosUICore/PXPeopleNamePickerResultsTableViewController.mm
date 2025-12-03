@interface PXPeopleNamePickerResultsTableViewController
- (BOOL)hasResults;
- (PXPeopleNamePickerResultsTableViewController)initWithCoder:(id)coder;
- (PXPeopleNamePickerResultsTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)style;
- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)style person:(id)person face:(id)face;
- (id)contactAtIndexPath:(id)path;
- (id)personAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)updateItemsForSearchString:(id)string;
- (void)viewDidLoad;
@end

@implementation PXPeopleNamePickerResultsTableViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  items = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v10 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  contact = [v10 contact];
  person = [v10 person];
  v13 = person;
  if (contact)
  {
    v14 = [viewCopy dequeueReusableCellWithIdentifier:@"PXPeopleNamePickerContactCellReuseID" forIndexPath:pathCopy];
    subtitleLabel = [v14 subtitleLabel];
    subtitle = [v10 subtitle];
    [subtitleLabel setAttributedText:subtitle];

    contactAvatarView = [v14 contactAvatarView];
    [contactAvatarView setContact:contact];
  }

  else
  {
    if (!person)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:139 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v14 = [viewCopy dequeueReusableCellWithIdentifier:@"PXPeopleNamePickerPersonCellReuseID" forIndexPath:pathCopy];
    [v14 setPerson:v13];
  }

  titleLabel = [v14 titleLabel];
  title = [v10 title];
  [titleLabel setAttributedText:title];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v14 setBackgroundColor:systemBackgroundColor];

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PXPeopleNamePickerResultsTableViewController *)self items:view];
  v5 = [v4 count];

  return v5;
}

- (id)personAtIndexPath:(id)path
{
  pathCopy = path;
  items = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v6 = [pathCopy row];

  v7 = [items objectAtIndex:v6];

  person = [v7 person];

  return person;
}

- (id)contactAtIndexPath:(id)path
{
  pathCopy = path;
  items = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v6 = [pathCopy row];

  v7 = [items objectAtIndex:v6];

  contact = [v7 contact];

  return contact;
}

- (BOOL)hasResults
{
  items = [(PXPeopleNamePickerResultsTableViewController *)self items];
  v3 = [items count];

  return v3 > 0;
}

- (void)updateItemsForSearchString:(id)string
{
  stringCopy = string;
  person = [(PXPeopleNamePickerResultsTableViewController *)self person];
  if (person)
  {
    [(PXPeopleNamePickerResultsTableViewController *)self person];
  }

  else
  {
    [(PXPeopleNamePickerResultsTableViewController *)self face];
  }
  v6 = ;
  photoLibrary = [v6 photoLibrary];

  person2 = [(PXPeopleNamePickerResultsTableViewController *)self person];
  if (person2)
  {
    [(PXPeopleNamePickerResultsTableViewController *)self person];
  }

  else
  {
    [(PXPeopleNamePickerResultsTableViewController *)self face];
  }
  v8 = ;
  detectionType = [v8 detectionType];

  v10 = [PXPeopleNamingUtilities itemsFor:stringCopy photoLibrary:photoLibrary detectionType:detectionType];

  v11 = [v10 mutableCopy];
  [(PXPeopleNamePickerResultsTableViewController *)self setItems:v11];
  tableView = [(PXPeopleNamePickerResultsTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PXPeopleNamePickerResultsTableViewController;
  [(PXPeopleNamePickerResultsTableViewController *)&v6 viewDidLoad];
  tableView = [(PXPeopleNamePickerResultsTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PXPeopleNamePickerPersonCellReuseID"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PXPeopleNamePickerContactCellReuseID"];
  [tableView setRowHeight:64.0];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [tableView setTableFooterView:v5];
}

- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXPeopleNamePickerResultsTableViewController initWithStyle:]"}];

  abort();
}

- (PXPeopleNamePickerResultsTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXPeopleNamePickerResultsTableViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPeopleNamePickerResultsTableViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerResultsTableViewController.m" lineNumber:60 description:{@"%s is not available as initializer", "-[PXPeopleNamePickerResultsTableViewController initWithCoder:]"}];

  abort();
}

- (PXPeopleNamePickerResultsTableViewController)initWithStyle:(int64_t)style person:(id)person face:(id)face
{
  personCopy = person;
  faceCopy = face;
  v15.receiver = self;
  v15.super_class = PXPeopleNamePickerResultsTableViewController;
  v11 = [(PXPeopleNamePickerResultsTableViewController *)&v15 initWithStyle:style];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v11->_items;
    v11->_items = v12;

    objc_storeStrong(&v11->_person, person);
    objc_storeStrong(&v11->_face, face);
  }

  return v11;
}

@end