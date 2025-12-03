@interface OFUICircularPagingViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (OFUICircularPagingView)circularPagingView;
- (OFUICircularPagingViewController)init;
- (OFUICircularPagingViewController)initWithCoder:(id)coder;
- (OFUICircularPagingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)commonInit;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)setCircularPagingView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillUnload;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willMoveToParentViewController:(id)controller;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation OFUICircularPagingViewController

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v2 commonInit];
}

- (OFUICircularPagingViewController)init
{
  v5.receiver = self;
  v5.super_class = OFUICircularPagingViewController;
  v2 = [(OFUIViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OFUICircularPagingViewController *)v2 commonInit];
  }

  return v3;
}

- (OFUICircularPagingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = OFUICircularPagingViewController;
  v4 = [(OFUIViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(OFUICircularPagingViewController *)v4 commonInit];
  }

  return v5;
}

- (OFUICircularPagingViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUICircularPagingViewController;
  v3 = [(OFUIViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUICircularPagingViewController *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  circularPagingView = self->_circularPagingView;
  if (circularPagingView)
  {

    self->_circularPagingView = 0;
  }

  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  if ([(OFUICircularPagingViewController *)self nibName])
  {
    v10.receiver = self;
    v10.super_class = OFUICircularPagingViewController;
    [(OFUIViewController *)&v10 loadView];
    circularPagingView = [(OFUICircularPagingViewController *)self circularPagingView];
    if (!circularPagingView)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUICircularPagingView.", objc_msgSend(v5, "stringWithFormat:", @"-[%@ %@]", v7, NSStringFromSelector(a2)), -[OFUICircularPagingViewController nibName](self, "nibName")}];
    }

    if (![(OFUICircularPagingView *)circularPagingView delegate])
    {
      [(OFUICircularPagingView *)circularPagingView setDelegate:self];
    }

    [(OFUICircularPagingView *)circularPagingView setCircularPagingViewController:self];
  }

  else
  {
    v8 = objc_alloc([objc_opt_class() gridViewClass]);
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v9 = [v8 initWithFrame:?];
    [v9 setAutoresizingMask:18];
    [v9 setDelegate:self];
    [(OFUICircularPagingViewController *)self setView:v9];
    [v9 setCircularPagingViewController:self];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewDidLoad];
  [[(OFUICircularPagingViewController *)self circularPagingView] reloadData];
}

- (void)viewWillUnload
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v3 viewWillUnload];
  [[(OFUICircularPagingViewController *)self circularPagingView] setDelegate:0];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v2 viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v4 viewWillAppear:appear];
  [[(OFUICircularPagingViewController *)self circularPagingView] reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:disappear];
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v3 willMoveToParentViewController:controller];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  return [(OFUICircularPagingViewController *)&v4 shouldAutorotateToInterfaceOrientation:orientation];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v4 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v5.receiver = self;
  v5.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v5 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  [[(OFUICircularPagingViewController *)self circularPagingView] willAnimateRotation];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v4 didRotateFromInterfaceOrientation:orientation];
  [[(OFUICircularPagingViewController *)self circularPagingView] didRotate];
}

- (OFUICircularPagingView)circularPagingView
{
  view = [(OFUICircularPagingViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return view;
  }

  else
  {
    return 0;
  }
}

- (void)setCircularPagingView:(id)view
{
  circularPagingView = [(OFUICircularPagingViewController *)self circularPagingView];
  if (circularPagingView != view)
  {
    v6 = circularPagingView;
    if ([(OFUICircularPagingView *)circularPagingView delegate]== self)
    {
      [(OFUICircularPagingView *)v6 setDelegate:0];
    }

    [(OFUICircularPagingViewController *)self setView:view];
    if (![view delegate])
    {

      [view setDelegate:self];
    }
  }
}

@end