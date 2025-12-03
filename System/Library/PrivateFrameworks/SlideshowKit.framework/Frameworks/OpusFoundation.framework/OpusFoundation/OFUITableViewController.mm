@interface OFUITableViewController
- (OFUITableViewController)initWithCoder:(id)coder;
- (OFUITableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillUnload;
@end

@implementation OFUITableViewController

- (OFUITableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = OFUITableViewController;
  v4 = [(OFUITableViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(OFUITableViewController *)v4 commonInit];
  }

  return v5;
}

- (OFUITableViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUITableViewController;
  v3 = [(OFUITableViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUITableViewController *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v2 viewDidLoad];
}

- (void)viewWillUnload
{
  v2.receiver = self;
  v2.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v2 viewWillUnload];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v2 viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v3 viewWillAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUITableViewController;
  [(OFUITableViewController *)&v3 viewWillDisappear:disappear];
}

@end