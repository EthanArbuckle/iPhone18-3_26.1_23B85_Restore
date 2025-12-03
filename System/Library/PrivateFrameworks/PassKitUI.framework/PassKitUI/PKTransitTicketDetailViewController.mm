@interface PKTransitTicketDetailViewController
- (PKTransitTicketDetailDataSource)dataSource;
- (PKTransitTicketDetailViewController)initWithTransitTicketDetailDataSource:(id)source;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_applyDefaultStaticStylingToCell:(id)cell;
- (void)viewDidLoad;
@end

@implementation PKTransitTicketDetailViewController

- (PKTransitTicketDetailViewController)initWithTransitTicketDetailDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = PKTransitTicketDetailViewController;
  v5 = [(PKTransitTicketDetailViewController *)&v8 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PKTransitTicketDetailViewController;
  [(PKTransitTicketDetailViewController *)&v2 viewDidLoad];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  dataSource = [(PKTransitTicketDetailViewController *)self dataSource];
  v6 = [dataSource titleForLeg:section];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  dataSource = [(PKTransitTicketDetailViewController *)self dataSource];
  numberOfLegs = [dataSource numberOfLegs];

  return numberOfLegs;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  dataSource = [(PKTransitTicketDetailViewController *)self dataSource];
  v6 = [dataSource transitTicketDetailNumberOfRowsForLeg:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKTransitTicketDetailCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKTransitTicketDetailCell"];
  }

  [(PKTransitTicketDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
  textLabel = [v7 textLabel];
  dataSource = [(PKTransitTicketDetailViewController *)self dataSource];
  v10 = [dataSource transitTicketDetailTitleForRow:objc_msgSend(pathCopy leg:{"row"), objc_msgSend(pathCopy, "section")}];
  [textLabel setText:v10];

  textLabel2 = [v7 textLabel];
  v12 = textLabel2;
  if (self->_primaryTextColor)
  {
    [textLabel2 setTextColor:?];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v12 setTextColor:labelColor];
  }

  detailTextLabel = [v7 detailTextLabel];
  dataSource2 = [(PKTransitTicketDetailViewController *)self dataSource];
  v16 = [dataSource2 transitTicketDetailValueForRow:objc_msgSend(pathCopy leg:{"row"), objc_msgSend(pathCopy, "section")}];
  [detailTextLabel setText:v16];

  detailTextLabel2 = [v7 detailTextLabel];
  v18 = detailTextLabel2;
  if (self->_secondaryTextColor)
  {
    [detailTextLabel2 setTextColor:?];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:secondaryLabelColor];
  }

  [v7 setSelectionStyle:0];

  return v7;
}

- (void)_applyDefaultStaticStylingToCell:(id)cell
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  [textLabel setText:0];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:0];

  [cellCopy setSelectionStyle:0];
}

- (PKTransitTicketDetailDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end