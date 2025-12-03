@interface TSADebugViewController
- (TSADebugViewController)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)loadView;
- (void)showIt:(id)it;
- (void)toggleVisible:(id)visible;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSADebugViewController

- (TSADebugViewController)initWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = TSADebugViewController;
  v4 = [(TSADebugViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = delegate;
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

- (void)toggleVisible:(id)visible
{
  if ([(TSKPopoverBasedViewController *)self isVisible])
  {

    [(TSADebugViewController *)self hideIt:visible];
  }

  else
  {

    [(TSADebugViewController *)self showIt:visible];
  }
}

- (void)showIt:(id)it
{
  if (it)
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
        selfCopy2 = self;
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
        selfCopy2 = self;
        v10 = v11;
      }

      [(TSKPopoverBasedViewController *)selfCopy2 presentModallyFromRect:v10 inView:v8 viewController:?];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = TSADebugViewController;
  [(TSKPopoverBasedViewController *)&v5 viewWillAppear:?];
  [(TSADebugTableViewController *)self->_debugTableViewController viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(TSADebugTableViewController *)self->_debugTableViewController viewDidDisappear:?];
  v5.receiver = self;
  v5.super_class = TSADebugViewController;
  [(TSKPopoverBasedViewController *)&v5 viewDidDisappear:disappearCopy];
}

@end