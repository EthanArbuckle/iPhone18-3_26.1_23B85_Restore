@interface WLCompletedViewController
- (WLCompletedViewController)initWithWelcomeController:(id)controller context:(id)context imported:(BOOL)imported;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_continueTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WLCompletedViewController

- (WLCompletedViewController)initWithWelcomeController:(id)controller context:(id)context imported:(BOOL)imported
{
  controllerCopy = controller;
  contextCopy = context;
  v9 = WLLocalizedString();
  album = [contextCopy album];
  importErrorCount = [album importErrorCount];

  image = [contextCopy image];
  if ([image importErrorCount])
  {
    v13 = 1;
  }

  else
  {
    video = [contextCopy video];
    v13 = [video importErrorCount] != 0;
  }

  voiceMemo = [contextCopy voiceMemo];
  importErrorCount2 = [voiceMemo importErrorCount];

  v17 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"COMPLETED_DESCRIPTION"];
  v18 = WLLocalizedString();

  if (importErrorCount)
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

  if (importErrorCount2)
  {
LABEL_17:
    v24 = WLLocalizedString();
    v25 = [v18 stringByAppendingFormat:@"%@%@", v21, v24];

    v18 = v25;
    goto LABEL_18;
  }

LABEL_9:
  if (importErrorCount2)
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

  if (importErrorCount2 && !v13)
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
    objc_storeStrong(&v29->_welcomeController, controller);
    if ([contextCopy isEnabled])
    {
      v30 = [WLDetailItem items:contextCopy];
      items = v29->_items;
      v29->_items = v30;
    }

    boldButton = [MEMORY[0x277D37618] boldButton];
    v33 = WLLocalizedString();
    [boldButton setTitle:v33 forState:0];

    [boldButton addTarget:v29 action:sel__continueTapped_ forControlEvents:64];
    buttonTray = [(WLCompletedViewController *)v29 buttonTray];
    [buttonTray addButton:boldButton];

    navigationItem = [(OBBaseWelcomeController *)v29 navigationItem];
    [navigationItem setTitle:&stru_2882D7420];

    navigationItem2 = [(OBBaseWelcomeController *)v29 navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
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

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WLCompletedViewCell"];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView2 setBackgroundColor:clearColor];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDelegate:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_continueTapped:(id)tapped
{
  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    continueHandler[2]();
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WLCompletedViewCell" forIndexPath:pathCopy];
  items = self->_items;
  v9 = [pathCopy row];

  v10 = [(NSArray *)items objectAtIndexedSubscript:v9];
  [v7 setItem:v10];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  items = self->_items;
  v8 = [pathCopy row];

  v11 = [(NSArray *)items objectAtIndexedSubscript:v8];
  if ([v11 showDetailDisclosureButton])
  {
    v9 = [[WLDetailWarningViewController alloc] initWithWLDetailItem:v11];
    navigationController = [(WLCompletedViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }
}

@end