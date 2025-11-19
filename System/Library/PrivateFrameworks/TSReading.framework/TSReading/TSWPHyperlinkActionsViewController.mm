@interface TSWPHyperlinkActionsViewController
- (TSWPHyperlinkActionsViewController)initWithHyperlink:(id)a3 readOnly:(BOOL)a4;
- (id)hyperlinkSettingsViewController;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TSWPHyperlinkActionsViewController

- (TSWPHyperlinkActionsViewController)initWithHyperlink:(id)a3 readOnly:(BOOL)a4
{
  v6 = [(TSWPHyperlinkActionsViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_readOnly = a4;
    [(TSWPHyperlinkActionsViewController *)v6 setHyperlink:a3];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPHyperlinkActionsViewController;
  [(TSWPHyperlinkActionsViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = +[TSWPHyperlinkUIController defaultTableView];
  [v3 setDataSource:self];
  [v3 setDelegate:self];
  [(TSWPHyperlinkActionsViewController *)self setView:v3];
  [(TSWPHyperlinkActionsViewController *)self setEdgesForExtendedLayout:0];
  [TSKPopoverBasedViewController preferredContentSizeForTableView:v3];

  [(TSWPHyperlinkActionsViewController *)self setPreferredContentSize:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v18.receiver = self;
  v18.super_class = TSWPHyperlinkActionsViewController;
  [(TSWPHyperlinkActionsViewController *)&v18 viewWillAppear:?];
  objc_opt_class();
  [objc_msgSend(+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  v5 = TSUDynamicCast();
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [v5 performSelector:sel_hyperlinkUICustomStringForURLString_ withObject:{objc_msgSend(+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController, "sharedHyperlinkUIController"), "stringForURL")}]) == 0)
  {
    v6 = [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  }

  [-[TSWPHyperlinkActionsViewController view](self "view")];
  v8 = v7;
  if ([-[TSWPHyperlinkActionsViewController navigationItem](self "navigationItem")])
  {
    [objc_msgSend(-[TSWPHyperlinkActionsViewController navigationItem](self "navigationItem")];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = v8 + -20.0;
    v10 = 0.0;
    v16 = 35.0;
    v12 = 0.0;
  }

  [-[TSWPHyperlinkActionsViewController navigationItem](self "navigationItem")];
  [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  v17.receiver = self;
  v17.super_class = TSWPHyperlinkActionsViewController;
  [(TSWPHyperlinkActionsViewController *)&v17 viewWillAppear:v3];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_readOnly)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [(NSString *)[(NSURL *)[(TSWPHyperlinkField *)[(TSWPHyperlinkActionsViewController *)self hyperlink] url] scheme] isEqualToString:@"mailto"];
  v6 = [a4 section];
  v7 = [a4 row];
  v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  if (!(v6 | v7))
  {
    v9 = TSWPBundle();
    if (v5)
    {
      v10 = @"New Message";
    }

    else
    {
      v10 = @"Open";
    }

    goto LABEL_8;
  }

  if (!v6 && v7 == 1)
  {
    v9 = TSWPBundle();
    v10 = @"Copy";
LABEL_8:
    [objc_msgSend(v8 "textLabel")];
    [objc_msgSend(v8 "textLabel")];
    goto LABEL_9;
  }

  if (v6 == 1)
  {
    [objc_msgSend(v8 "textLabel")];
    [v8 setAccessoryType:1];
  }

LABEL_9:
  [TSKPopoverBasedViewController configureTableViewCell:v8];
  return v8;
}

- (id)hyperlinkSettingsViewController
{
  result = self->_hyperlinkSettingsViewController;
  if (!result)
  {
    result = [[TSWPHyperlinkSettingsViewController alloc] initWithHyperlink:[(TSWPHyperlinkActionsViewController *)self hyperlink] readOnly:self->_readOnly];
    self->_hyperlinkSettingsViewController = result;
  }

  return result;
}

@end