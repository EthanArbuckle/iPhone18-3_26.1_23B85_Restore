@interface WLQRCodeListViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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

  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDataSource:self];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDelegate:self];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WLQRCodeListViewCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WLQRCodeListViewCell"];
    [v7 setAccessoryType:1];
    v8 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v7 setBackgroundColor:v8];
  }

  v9 = -[NSArray objectAtIndex:](self->_qrcodes, "objectAtIndex:", [v6 row]);
  v10 = [v7 textLabel];
  v11 = [v9 name];
  [v10 setText:v11];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  qrcodes = self->_qrcodes;
  v8 = [v6 row];

  v18 = [(NSArray *)qrcodes objectAtIndex:v8];
  v9 = [v18 title];
  v10 = MEMORY[0x277CCACA8];
  v11 = WLLocalizedString();
  v12 = [v18 name];
  v13 = [v10 stringWithFormat:v11, v12];

  v14 = [[WLQRCodeViewController alloc] initWithTitle:v9 detailText:v13 symbolName:@"qrcode"];
  [(WLQRCodeViewController *)v14 setQrcode:v18];
  v15 = [(WLQRCodeListViewController *)self navigationController];
  [v15 pushViewController:v14 animated:1];

  v16 = [MEMORY[0x277D7B8D0] sharedInstance];
  v17 = [v18 code];
  [v16 didLoadAndroidStore:v17 selected:1 canceled:0 inAttempts:self->_attempts];

  ++self->_attempts;
}

@end