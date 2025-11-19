@interface PKTransitTicketDetailViewController
- (PKTransitTicketDetailDataSource)dataSource;
- (PKTransitTicketDetailViewController)initWithTransitTicketDetailDataSource:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_applyDefaultStaticStylingToCell:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKTransitTicketDetailViewController

- (PKTransitTicketDetailViewController)initWithTransitTicketDetailDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKTransitTicketDetailViewController;
  v5 = [(PKTransitTicketDetailViewController *)&v8 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PKTransitTicketDetailViewController;
  [(PKTransitTicketDetailViewController *)&v2 viewDidLoad];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(PKTransitTicketDetailViewController *)self dataSource];
  v6 = [v5 titleForLeg:a4];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PKTransitTicketDetailViewController *)self dataSource];
  v4 = [v3 numberOfLegs];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKTransitTicketDetailViewController *)self dataSource];
  v6 = [v5 transitTicketDetailNumberOfRowsForLeg:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKTransitTicketDetailCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKTransitTicketDetailCell"];
  }

  [(PKTransitTicketDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
  v8 = [v7 textLabel];
  v9 = [(PKTransitTicketDetailViewController *)self dataSource];
  v10 = [v9 transitTicketDetailTitleForRow:objc_msgSend(v6 leg:{"row"), objc_msgSend(v6, "section")}];
  [v8 setText:v10];

  v11 = [v7 textLabel];
  v12 = v11;
  if (self->_primaryTextColor)
  {
    [v11 setTextColor:?];
  }

  else
  {
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [v12 setTextColor:v13];
  }

  v14 = [v7 detailTextLabel];
  v15 = [(PKTransitTicketDetailViewController *)self dataSource];
  v16 = [v15 transitTicketDetailValueForRow:objc_msgSend(v6 leg:{"row"), objc_msgSend(v6, "section")}];
  [v14 setText:v16];

  v17 = [v7 detailTextLabel];
  v18 = v17;
  if (self->_secondaryTextColor)
  {
    [v17 setTextColor:?];
  }

  else
  {
    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:v19];
  }

  [v7 setSelectionStyle:0];

  return v7;
}

- (void)_applyDefaultStaticStylingToCell:(id)a3
{
  v5 = a3;
  v3 = [v5 textLabel];
  [v3 setText:0];

  v4 = [v5 detailTextLabel];
  [v4 setText:0];

  [v5 setSelectionStyle:0];
}

- (PKTransitTicketDetailDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end