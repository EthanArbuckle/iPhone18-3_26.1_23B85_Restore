@interface OFUIPagingViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (OFUIPagingView)pagingView;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)loadView;
- (void)setPagingView:(id)a3;
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

@implementation OFUIPagingViewController

- (void)dealloc
{
  pagingView = self->_pagingView;
  if (pagingView)
  {

    self->_pagingView = 0;
  }

  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  if ([(OFUIPagingViewController *)self nibName])
  {
    v10.receiver = self;
    v10.super_class = OFUIPagingViewController;
    [(OFUIViewController *)&v10 loadView];
    v4 = [(OFUIPagingViewController *)self pagingView];
    if (!v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUIPagingView.", objc_msgSend(v5, "stringWithFormat:", @"-[%@ %@]", v7, NSStringFromSelector(a2)), -[OFUIPagingViewController nibName](self, "nibName")}];
    }

    if (![(OFUIPagingView *)v4 delegate])
    {
      [(OFUIPagingView *)v4 setDelegate:self];
    }

    [(OFUIPagingView *)v4 setPagingViewController:self];
  }

  else
  {
    v8 = objc_alloc([objc_opt_class() pagingViewClass]);
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v9 = [v8 initWithFrame:?];
    [v9 setAutoresizingMask:18];
    [v9 setDelegate:self];
    [(OFUIPagingViewController *)self setView:v9];
    [v9 setPagingViewController:self];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewDidLoad];
  [[(OFUIPagingViewController *)self pagingView] reloadData];
}

- (void)viewWillUnload
{
  v2.receiver = self;
  v2.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v2 viewWillUnload];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v2 viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v4 viewWillAppear:a3];
  [[(OFUIPagingViewController *)self pagingView] reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:a3];
}

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v3 willMoveToParentViewController:a3];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v4 didMoveToParentViewController:a3];
  [[(OFUIPagingViewController *)self pagingView] configurePages];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  return [(OFUIPagingViewController *)&v4 shouldAutorotateToInterfaceOrientation:a3];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v4 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v5.receiver = self;
  v5.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v5 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  [[(OFUIPagingViewController *)self pagingView] willAnimateRotation];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v4 didRotateFromInterfaceOrientation:a3];
  [[(OFUIPagingViewController *)self pagingView] didRotate];
}

- (OFUIPagingView)pagingView
{
  v2 = [(OFUIPagingViewController *)self view];
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

- (void)setPagingView:(id)a3
{
  v5 = [(OFUIPagingViewController *)self pagingView];
  if (v5 != a3)
  {
    v6 = v5;
    if ([(OFUIPagingView *)v5 delegate]== self)
    {
      [(OFUIPagingView *)v6 setDelegate:0];
    }

    [(OFUIPagingViewController *)self setView:a3];
    if (![a3 delegate])
    {

      [a3 setDelegate:self];
    }
  }
}

@end