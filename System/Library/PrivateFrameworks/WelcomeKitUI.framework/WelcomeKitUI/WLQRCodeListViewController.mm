@interface WLQRCodeListViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WLQRCodeListViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = WLQRCodeListViewController;
  [(OBTableWelcomeController *)&v10 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView setBackgroundColor:clearColor];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WLQRCodeListViewCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WLQRCodeListViewCell"];
    [v7 setAccessoryType:1];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v7 setBackgroundColor:secondarySystemBackgroundColor];
  }

  v9 = -[NSArray objectAtIndex:](self->_qrcodes, "objectAtIndex:", [pathCopy row]);
  textLabel = [v7 textLabel];
  name = [v9 name];
  [textLabel setText:name];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  qrcodes = self->_qrcodes;
  v8 = [pathCopy row];

  v18 = [(NSArray *)qrcodes objectAtIndex:v8];
  title = [v18 title];
  v10 = MEMORY[0x277CCACA8];
  v11 = WLLocalizedString();
  name = [v18 name];
  v13 = [v10 stringWithFormat:v11, name];

  v14 = [[WLQRCodeViewController alloc] initWithTitle:title detailText:v13 symbolName:@"qrcode"];
  [(WLQRCodeViewController *)v14 setQrcode:v18];
  navigationController = [(WLQRCodeListViewController *)self navigationController];
  [navigationController pushViewController:v14 animated:1];

  mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
  code = [v18 code];
  [mEMORY[0x277D7B8D0] didLoadAndroidStore:code selected:1 canceled:0 inAttempts:self->_attempts];

  ++self->_attempts;
}

@end