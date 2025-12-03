@interface WLTipsListViewController
- (WLTipsListViewController)initWithItems;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)userInterfaceStyleDidChange;
- (void)viewDidLoad;
@end

@implementation WLTipsListViewController

- (WLTipsListViewController)initWithItems
{
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"TIPS_TITLE"];
  v4 = WLLocalizedString();

  v5 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"TIPS_DESCRIPTION"];
  v6 = WLLocalizedString();

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v9 = @"ipad";
  if (!userInterfaceIdiom)
  {
    v9 = @"iphone";
  }

  v10 = v9;

  v16.receiver = self;
  v16.super_class = WLTipsListViewController;
  v11 = [(OBTableWelcomeController *)&v16 initWithTitle:v4 detailText:v6 symbolName:v10 adoptTableViewScrollView:1];

  if (v11)
  {
    v12 = +[WLTips tips];
    tips = v11->_tips;
    v11->_tips = v12;

    v14 = objc_alloc_init(_TtC12WelcomeKitUI6Signal);
    [(Signal *)v14 send];
  }

  return v11;
}

- (void)viewDidLoad
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WLTipsListViewController;
  [(OBTableWelcomeController *)&v15 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WLTipsListViewCell"];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView2 setBackgroundColor:clearColor];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDelegate:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_opt_self();
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [(WLTipsListViewController *)self registerForTraitChanges:v12 withAction:sel_userInterfaceStyleDidChange];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userInterfaceStyleDidChange
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WLTipsListViewCell" forIndexPath:pathCopy];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v7 setBackgroundColor:systemBackgroundColor];

  [v7 setAccessoryType:1];
  imageView = [v7 imageView];
  systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
  [imageView setBackgroundColor:systemLightGrayColor];

  tips = self->_tips;
  v12 = [pathCopy row];

  v13 = [(NSArray *)tips objectAtIndexedSubscript:v12];
  view = [(WLTipsListViewController *)self view];
  window = [view window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v19 = MEMORY[0x277D755B8];
  thumbnail = [v13 thumbnail];
  v21 = thumbnail;
  if (userInterfaceStyle == 2)
  {
    [thumbnail dark];
  }

  else
  {
    [thumbnail light];
  }
  v22 = ;
  localFile = [v22 localFile];
  v24 = [v19 imageNamed:localFile];

  [valueCellConfiguration setImage:v24];
  imageProperties = [valueCellConfiguration imageProperties];
  [imageProperties setMaximumSize:{100.0, 100.0}];

  title = [v13 title];
  [valueCellConfiguration setText:title];

  v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textProperties = [valueCellConfiguration textProperties];
  [textProperties setFont:v27];

  desc = [v13 desc];
  [valueCellConfiguration setSecondaryText:desc];

  v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v30];

  [v7 setContentConfiguration:valueCellConfiguration];

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setUserInteractionEnabled:0];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  tips = self->_tips;
  v8 = [pathCopy row];

  v11 = [(NSArray *)tips objectAtIndexedSubscript:v8];
  v9 = [[WLTipsViewController alloc] initWithTips:v11];
  navigationController = [(WLTipsListViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:1];
}

@end