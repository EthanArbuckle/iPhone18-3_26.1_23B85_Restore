@interface WLCompletedViewController
- (WLCompletedViewController)initWithWelcomeController:(id)a3 context:(id)a4 imported:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_continueTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WLCompletedViewController

- (WLCompletedViewController)initWithWelcomeController:(id)a3 context:(id)a4 imported:(BOOL)a5
{
  v38 = a3;
  v8 = a4;
  v9 = WLLocalizedString();
  v10 = [v8 album];
  v11 = [v10 importErrorCount];

  v12 = [v8 image];
  if ([v12 importErrorCount])
  {
    v13 = 1;
  }

  else
  {
    v14 = [v8 video];
    v13 = [v14 importErrorCount] != 0;
  }

  v15 = [v8 voiceMemo];
  v16 = [v15 importErrorCount];

  v17 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"COMPLETED_DESCRIPTION"];
  v18 = WLLocalizedString();

  if (v11)
  {
    v19 = WLLocalizedString();
    v20 = [v18 stringByAppendingFormat:@"\n\n%@", v19];

    v21 = @" ";
    v18 = v20;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = @"\n\n";
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  if (v16)
  {
LABEL_17:
    v24 = WLLocalizedString();
    v25 = [v18 stringByAppendingFormat:@"%@%@", v21, v24];

    v18 = v25;
    goto LABEL_18;
  }

LABEL_9:
  if (v16)
  {
    v22 = 0;
  }

  else
  {
    v22 = v13;
  }

  if (v22)
  {
    goto LABEL_17;
  }

  if (v16 && !v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  v26 = MEMORY[0x277D755B8];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v26 imageNamed:@"MoveToiOS" inBundle:v27];
  v39.receiver = self;
  v39.super_class = WLCompletedViewController;
  v29 = [(OBTableWelcomeController *)&v39 initWithTitle:v9 detailText:v18 icon:v28 adoptTableViewScrollView:1];

  if (v29)
  {
    objc_storeStrong(&v29->_welcomeController, a3);
    if ([v8 isEnabled])
    {
      v30 = [WLDetailItem items:v8];
      items = v29->_items;
      v29->_items = v30;
    }

    v32 = [MEMORY[0x277D37618] boldButton];
    v33 = WLLocalizedString();
    [v32 setTitle:v33 forState:0];

    [v32 addTarget:v29 action:sel__continueTapped_ forControlEvents:64];
    v34 = [(WLCompletedViewController *)v29 buttonTray];
    [v34 addButton:v32];

    v35 = [(OBBaseWelcomeController *)v29 navigationItem];
    [v35 setTitle:&stru_2882D7420];

    v36 = [(OBBaseWelcomeController *)v29 navigationItem];
    [v36 setHidesBackButton:1 animated:0];
  }

  return v29;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WLCompletedViewController;
  [(OBTableWelcomeController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"WLCompletedViewCell"];

  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDataSource:self];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setDelegate:self];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_continueTapped:(id)a3
{
  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    continueHandler[2]();
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WLCompletedViewCell" forIndexPath:v6];
  items = self->_items;
  v9 = [v6 row];

  v10 = [(NSArray *)items objectAtIndexedSubscript:v9];
  [v7 setItem:v10];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  items = self->_items;
  v8 = [v6 row];

  v11 = [(NSArray *)items objectAtIndexedSubscript:v8];
  if ([v11 showDetailDisclosureButton])
  {
    v9 = [[WLDetailWarningViewController alloc] initWithWLDetailItem:v11];
    v10 = [(WLCompletedViewController *)self navigationController];
    [v10 pushViewController:v9 animated:1];
  }
}

@end