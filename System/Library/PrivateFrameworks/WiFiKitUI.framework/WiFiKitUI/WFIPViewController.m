@interface WFIPViewController
- (WFIPViewController)initWithAddresses:(id)a3 prefixLengths:(id)a4;
- (WFIPViewController)initWithAddresses:(id)a3 prefixLengths:(id)a4 appearanceProxy:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation WFIPViewController

- (WFIPViewController)initWithAddresses:(id)a3 prefixLengths:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[WFAppearanceProxy defaultAppearanceProxy];
  v9 = [(WFIPViewController *)self initWithAddresses:v7 prefixLengths:v6 appearanceProxy:v8];

  return v9;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WFIPViewController;
  [(WFIPViewController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocSettingsIPV6AddressesTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFIPViewController *)self setTitle:v4];

  v5 = *MEMORY[0x277D76F30];
  v6 = [(WFIPViewController *)self tableView];
  [v6 setRowHeight:v5];

  v7 = [(WFIPViewController *)self tableView];
  [v7 setEstimatedRowHeight:44.0];

  v8 = [(WFIPViewController *)self tableView];
  [v8 setEstimatedSectionHeaderHeight:0.0];

  v9 = [(WFIPViewController *)self tableView];
  [v9 setEstimatedSectionFooterHeight:0.0];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    v10 = [(WFIPViewController *)self tableView];
    [v10 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFIPViewController *)self addresses:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  v7 = [(WFIPViewController *)self addresses];
  v8 = [v7 objectAtIndex:{objc_msgSend(v5, "row")}];

  v9 = [(WFIPViewController *)self prefixes];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(WFIPViewController *)self prefixes];
    v12 = [v11 objectAtIndex:{objc_msgSend(v5, "row")}];
    v13 = [v10 stringWithFormat:@"%@/%@", v8, v12];
  }

  else
  {
    v13 = v8;
  }

  v14 = [v6 textLabel];
  [v14 setText:v13];

  v15 = [MEMORY[0x277D75348] defaultTextColor];
  v16 = [v6 textLabel];
  [v16 setTextColor:v15];

  [v6 setSelectionStyle:0];
  v17 = [v6 textLabel];
  [v17 setNumberOfLines:0];

  v18 = [(WFIPViewController *)self appearanceProxy];
  v19 = [v18 cellTextLabelFont];

  if (v19)
  {
    v20 = [(WFIPViewController *)self appearanceProxy];
    v21 = [v20 cellTextLabelFont];
    v22 = [v6 textLabel];
    [v22 setFont:v21];
  }

  return v6;
}

- (WFIPViewController)initWithAddresses:(id)a3 prefixLengths:(id)a4 appearanceProxy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v12)
  {
    v17.receiver = self;
    v17.super_class = WFIPViewController;
    v13 = -[WFIPViewController initWithStyle:](&v17, sel_initWithStyle_, [v11 tableViewStyle]);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_addresses, a3);
      objc_storeStrong(&v14->_prefixes, a4);
      v15 = v11;
      self = v14->_appearanceProxy;
      v14->_appearanceProxy = v15;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end