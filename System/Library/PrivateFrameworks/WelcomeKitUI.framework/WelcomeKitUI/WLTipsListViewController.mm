@interface WLTipsListViewController
- (WLTipsListViewController)initWithItems;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];
  v9 = @"ipad";
  if (!v8)
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

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"WLTipsListViewCell"];

  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDataSource:self];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setDelegate:self];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_opt_self();
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [(WLTipsListViewController *)self registerForTraitChanges:v12 withAction:sel_userInterfaceStyleDidChange];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userInterfaceStyleDidChange
{
  v2 = [(OBTableWelcomeController *)self tableView];
  [v2 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WLTipsListViewCell" forIndexPath:v6];
  v8 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v7 setBackgroundColor:v8];

  [v7 setAccessoryType:1];
  v9 = [v7 imageView];
  v10 = [MEMORY[0x277D75348] systemLightGrayColor];
  [v9 setBackgroundColor:v10];

  tips = self->_tips;
  v12 = [v6 row];

  v13 = [(NSArray *)tips objectAtIndexedSubscript:v12];
  v14 = [(WLTipsListViewController *)self view];
  v15 = [v14 window];
  v16 = [v15 traitCollection];
  v17 = [v16 userInterfaceStyle];

  v18 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v19 = MEMORY[0x277D755B8];
  v20 = [v13 thumbnail];
  v21 = v20;
  if (v17 == 2)
  {
    [v20 dark];
  }

  else
  {
    [v20 light];
  }
  v22 = ;
  v23 = [v22 localFile];
  v24 = [v19 imageNamed:v23];

  [v18 setImage:v24];
  v25 = [v18 imageProperties];
  [v25 setMaximumSize:{100.0, 100.0}];

  v26 = [v13 title];
  [v18 setText:v26];

  v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v28 = [v18 textProperties];
  [v28 setFont:v27];

  v29 = [v13 desc];
  [v18 setSecondaryText:v29];

  v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v31 = [v18 secondaryTextProperties];
  [v31 setFont:v30];

  [v7 setContentConfiguration:v18];

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setUserInteractionEnabled:0];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  tips = self->_tips;
  v8 = [v6 row];

  v11 = [(NSArray *)tips objectAtIndexedSubscript:v8];
  v9 = [[WLTipsViewController alloc] initWithTips:v11];
  v10 = [(WLTipsListViewController *)self navigationController];
  [v10 pushViewController:v9 animated:1];
}

@end