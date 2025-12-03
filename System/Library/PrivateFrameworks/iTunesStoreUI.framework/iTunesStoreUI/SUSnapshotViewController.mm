@interface SUSnapshotViewController
- (SUSnapshotViewController)initWithOriginal:(id)original;
- (id)_snapshotOfView:(id)view;
- (int64_t)_currentOrientation;
- (void)_startActivityIndicator;
- (void)_stopActivityIndicator;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SUSnapshotViewController

- (SUSnapshotViewController)initWithOriginal:(id)original
{
  originalCopy = original;
  v13.receiver = self;
  v13.super_class = SUSnapshotViewController;
  v6 = [(SUSnapshotViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_originalOrientation = [(SUSnapshotViewController *)v6 _currentOrientation];
    objc_storeStrong(&v7->_originalViewController, original);
    title = [originalCopy title];
    [(SUSnapshotViewController *)v7 setTitle:title];

    navigationItem = [(SUSnapshotViewController *)v7 navigationItem];
    navigationItem2 = [originalCopy navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [navigationItem setRightBarButtonItem:rightBarButtonItem];
  }

  return v7;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v13 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:2];
  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v3;

  view = [(SUSnapshotViewController *)self view];
  [view addSubview:self->_activityIndicatorView];

  originalViewController = [(SUSnapshotViewController *)self originalViewController];
  view2 = [originalViewController view];
  v8 = [(SUSnapshotViewController *)self _snapshotOfView:view2];

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  imageView = self->_imageView;
  self->_imageView = v9;

  view3 = [(SUSnapshotViewController *)self view];
  [view3 setUserInteractionEnabled:0];

  view4 = [(SUSnapshotViewController *)self view];
  [view4 addSubview:self->_imageView];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v7 viewWillLayoutSubviews];
  activityIndicatorView = [(SUSnapshotViewController *)self activityIndicatorView];
  view = [(SUSnapshotViewController *)self view];
  [view center];
  [activityIndicatorView setCenter:?];

  imageView = [(SUSnapshotViewController *)self imageView];
  view2 = [(UIViewController *)self->_originalViewController view];
  [view2 bounds];
  [imageView setFrame:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v7 viewWillAppear:appear];
  _currentOrientation = [(SUSnapshotViewController *)self _currentOrientation];
  if ((_currentOrientation - 1) > 1)
  {
    if ((_currentOrientation - 3) > 1 || ([(SUSnapshotViewController *)self originalOrientation]- 3) > 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    imageView = [(SUSnapshotViewController *)self imageView];
    [imageView setHidden:0];

    [(SUSnapshotViewController *)self _stopActivityIndicator];
    return;
  }

  if (([(SUSnapshotViewController *)self originalOrientation]- 1) < 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  imageView2 = [(SUSnapshotViewController *)self imageView];
  [imageView2 setHidden:1];

  [(SUSnapshotViewController *)self _startActivityIndicator];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v4 viewDidDisappear:disappear];
  [(SUSnapshotViewController *)self _stopActivityIndicator];
}

- (int64_t)_currentOrientation
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  statusBarOrientation = [mEMORY[0x1E69DC668] statusBarOrientation];

  return statusBarOrientation;
}

- (id)_snapshotOfView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v14 = v13;
  v18.width = v9;
  v18.height = v11;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v14);

  [viewCopy drawViewHierarchyInRect:1 afterScreenUpdates:{v5, v7, v9, v11}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (void)_startActivityIndicator
{
  activityIndicatorView = [(SUSnapshotViewController *)self activityIndicatorView];
  [activityIndicatorView startAnimating];

  activityIndicatorView2 = [(SUSnapshotViewController *)self activityIndicatorView];
  [activityIndicatorView2 setHidden:0];
}

- (void)_stopActivityIndicator
{
  activityIndicatorView = [(SUSnapshotViewController *)self activityIndicatorView];
  [activityIndicatorView stopAnimating];

  activityIndicatorView2 = [(SUSnapshotViewController *)self activityIndicatorView];
  [activityIndicatorView2 setHidden:1];
}

@end