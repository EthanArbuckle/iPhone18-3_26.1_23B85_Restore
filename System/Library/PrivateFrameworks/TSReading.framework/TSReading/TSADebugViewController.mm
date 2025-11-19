@interface TSADebugViewController
- (TSADebugViewController)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)showIt:(id)a3;
- (void)toggleVisible:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TSADebugViewController

- (TSADebugViewController)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSADebugViewController;
  v4 = [(TSADebugViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = a3;
    v4->_debugTableViewController = [[TSADebugTableViewController alloc] initWithParent:v4];
  }

  [(TSADebugViewController *)v5 view];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSADebugViewController;
  [(TSKPopoverBasedViewController *)&v3 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = TSADebugViewController;
  [(TSADebugViewController *)&v4 loadView];
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 230.0, 375.0}];
  [v3 addSubview:{-[TSADebugTableViewController tableView](self->_debugTableViewController, "tableView")}];
  [(TSADebugViewController *)self setView:v3];
}

- (void)toggleVisible:(id)a3
{
  if ([(TSKPopoverBasedViewController *)self isVisible])
  {

    [(TSADebugViewController *)self hideIt:a3];
  }

  else
  {

    [(TSADebugViewController *)self showIt:a3];
  }
}

- (void)showIt:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    [objc_msgSend(TSUDynamicCast() "rightApplicationToolbarItems")];
    objc_opt_class();
    v4 = TSUDynamicCast();
    objc_opt_class();
    v5 = TSUDynamicCast();
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v4)
    {
      delegate = self->_delegate;

      [(TSKPopoverBasedViewController *)self presentModallyFromBarItem:v4 viewController:delegate];
    }

    else
    {
      if (v5)
      {
        [v5 bounds];
        v8 = self->_delegate;
        v9 = self;
        v10 = v5;
      }

      else
      {
        v11 = v6;
        if (!v6)
        {
          return;
        }

        [v6 bounds];
        v8 = self->_delegate;
        v9 = self;
        v10 = v11;
      }

      [(TSKPopoverBasedViewController *)v9 presentModallyFromRect:v10 inView:v8 viewController:?];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TSADebugViewController;
  [(TSKPopoverBasedViewController *)&v5 viewWillAppear:?];
  [(TSADebugTableViewController *)self->_debugTableViewController viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(TSADebugTableViewController *)self->_debugTableViewController viewDidDisappear:?];
  v5.receiver = self;
  v5.super_class = TSADebugViewController;
  [(TSKPopoverBasedViewController *)&v5 viewDidDisappear:v3];
}

@end