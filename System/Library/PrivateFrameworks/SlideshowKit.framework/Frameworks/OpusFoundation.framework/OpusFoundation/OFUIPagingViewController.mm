@interface OFUIPagingViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (OFUIPagingView)pagingView;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)setPagingView:(id)view;
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
    pagingView = [(OFUIPagingViewController *)self pagingView];
    if (!pagingView)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUIPagingView.", objc_msgSend(v5, "stringWithFormat:", @"-[%@ %@]", v7, NSStringFromSelector(a2)), -[OFUIPagingViewController nibName](self, "nibName")}];
    }

    if (![(OFUIPagingView *)pagingView delegate])
    {
      [(OFUIPagingView *)pagingView setDelegate:self];
    }

    [(OFUIPagingView *)pagingView setPagingViewController:self];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v4 viewWillAppear:appear];
  [[(OFUIPagingViewController *)self pagingView] reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:disappear];
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v3 willMoveToParentViewController:controller];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v4 didMoveToParentViewController:controller];
  [[(OFUIPagingViewController *)self pagingView] configurePages];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  return [(OFUIPagingViewController *)&v4 shouldAutorotateToInterfaceOrientation:orientation];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v4 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v5.receiver = self;
  v5.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v5 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  [[(OFUIPagingViewController *)self pagingView] willAnimateRotation];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = OFUIPagingViewController;
  [(OFUIPagingViewController *)&v4 didRotateFromInterfaceOrientation:orientation];
  [[(OFUIPagingViewController *)self pagingView] didRotate];
}

- (OFUIPagingView)pagingView
{
  view = [(OFUIPagingViewController *)self view];
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

- (void)setPagingView:(id)view
{
  pagingView = [(OFUIPagingViewController *)self pagingView];
  if (pagingView != view)
  {
    v6 = pagingView;
    if ([(OFUIPagingView *)pagingView delegate]== self)
    {
      [(OFUIPagingView *)v6 setDelegate:0];
    }

    [(OFUIPagingViewController *)self setView:view];
    if (![view delegate])
    {

      [view setDelegate:self];
    }
  }
}

@end