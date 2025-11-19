@interface OFUICircularPagingViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (OFUICircularPagingView)circularPagingView;
- (OFUICircularPagingViewController)init;
- (OFUICircularPagingViewController)initWithCoder:(id)a3;
- (OFUICircularPagingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)commonInit;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)loadView;
- (void)setCircularPagingView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillUnload;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
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

- (OFUICircularPagingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = OFUICircularPagingViewController;
  v4 = [(OFUIViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(OFUICircularPagingViewController *)v4 commonInit];
  }

  return v5;
}

- (OFUICircularPagingViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OFUICircularPagingViewController;
  v3 = [(OFUIViewController *)&v6 initWithCoder:a3];
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
    v4 = [(OFUICircularPagingViewController *)self circularPagingView];
    if (!v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUICircularPagingView.", objc_msgSend(v5, "stringWithFormat:", @"-[%@ %@]", v7, NSStringFromSelector(a2)), -[OFUICircularPagingViewController nibName](self, "nibName")}];
    }

    if (![(OFUICircularPagingView *)v4 delegate])
    {
      [(OFUICircularPagingView *)v4 setDelegate:self];
    }

    [(OFUICircularPagingView *)v4 setCircularPagingViewController:self];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v4 viewWillAppear:a3];
  [[(OFUICircularPagingViewController *)self circularPagingView] reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:a3];
}

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v3 willMoveToParentViewController:a3];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  return [(OFUICircularPagingViewController *)&v4 shouldAutorotateToInterfaceOrientation:a3];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v4 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v5.receiver = self;
  v5.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v5 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  [[(OFUICircularPagingViewController *)self circularPagingView] willAnimateRotation];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = OFUICircularPagingViewController;
  [(OFUICircularPagingViewController *)&v4 didRotateFromInterfaceOrientation:a3];
  [[(OFUICircularPagingViewController *)self circularPagingView] didRotate];
}

- (OFUICircularPagingView)circularPagingView
{
  v2 = [(OFUICircularPagingViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)setCircularPagingView:(id)a3
{
  v5 = [(OFUICircularPagingViewController *)self circularPagingView];
  if (v5 != a3)
  {
    v6 = v5;
    if ([(OFUICircularPagingView *)v5 delegate]== self)
    {
      [(OFUICircularPagingView *)v6 setDelegate:0];
    }

    [(OFUICircularPagingViewController *)self setView:a3];
    if (![a3 delegate])
    {

      [a3 setDelegate:self];
    }
  }
}

@end