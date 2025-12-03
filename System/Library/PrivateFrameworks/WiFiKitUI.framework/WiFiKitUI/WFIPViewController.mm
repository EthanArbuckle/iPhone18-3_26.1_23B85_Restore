@interface WFIPViewController
- (WFIPViewController)initWithAddresses:(id)addresses prefixLengths:(id)lengths;
- (WFIPViewController)initWithAddresses:(id)addresses prefixLengths:(id)lengths appearanceProxy:(id)proxy;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation WFIPViewController

- (WFIPViewController)initWithAddresses:(id)addresses prefixLengths:(id)lengths
{
  lengthsCopy = lengths;
  addressesCopy = addresses;
  v8 = +[WFAppearanceProxy defaultAppearanceProxy];
  v9 = [(WFIPViewController *)self initWithAddresses:addressesCopy prefixLengths:lengthsCopy appearanceProxy:v8];

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
  tableView = [(WFIPViewController *)self tableView];
  [tableView setRowHeight:v5];

  tableView2 = [(WFIPViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  tableView3 = [(WFIPViewController *)self tableView];
  [tableView3 setEstimatedSectionHeaderHeight:0.0];

  tableView4 = [(WFIPViewController *)self tableView];
  [tableView4 setEstimatedSectionFooterHeight:0.0];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    tableView5 = [(WFIPViewController *)self tableView];
    [tableView5 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFIPViewController *)self addresses:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  addresses = [(WFIPViewController *)self addresses];
  v8 = [addresses objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  prefixes = [(WFIPViewController *)self prefixes];

  if (prefixes)
  {
    v10 = MEMORY[0x277CCACA8];
    prefixes2 = [(WFIPViewController *)self prefixes];
    v12 = [prefixes2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v13 = [v10 stringWithFormat:@"%@/%@", v8, v12];
  }

  else
  {
    v13 = v8;
  }

  textLabel = [v6 textLabel];
  [textLabel setText:v13];

  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
  textLabel2 = [v6 textLabel];
  [textLabel2 setTextColor:defaultTextColor];

  [v6 setSelectionStyle:0];
  textLabel3 = [v6 textLabel];
  [textLabel3 setNumberOfLines:0];

  appearanceProxy = [(WFIPViewController *)self appearanceProxy];
  cellTextLabelFont = [appearanceProxy cellTextLabelFont];

  if (cellTextLabelFont)
  {
    appearanceProxy2 = [(WFIPViewController *)self appearanceProxy];
    cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
    textLabel4 = [v6 textLabel];
    [textLabel4 setFont:cellTextLabelFont2];
  }

  return v6;
}

- (WFIPViewController)initWithAddresses:(id)addresses prefixLengths:(id)lengths appearanceProxy:(id)proxy
{
  addressesCopy = addresses;
  lengthsCopy = lengths;
  proxyCopy = proxy;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v12)
  {
    v17.receiver = self;
    v17.super_class = WFIPViewController;
    v13 = -[WFIPViewController initWithStyle:](&v17, sel_initWithStyle_, [proxyCopy tableViewStyle]);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_addresses, addresses);
      objc_storeStrong(&v14->_prefixes, lengths);
      v15 = proxyCopy;
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