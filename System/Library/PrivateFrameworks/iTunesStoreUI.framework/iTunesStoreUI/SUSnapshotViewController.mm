@interface SUSnapshotViewController
- (SUSnapshotViewController)initWithOriginal:(id)a3;
- (id)_snapshotOfView:(id)a3;
- (int64_t)_currentOrientation;
- (void)_startActivityIndicator;
- (void)_stopActivityIndicator;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SUSnapshotViewController

- (SUSnapshotViewController)initWithOriginal:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SUSnapshotViewController;
  v6 = [(SUSnapshotViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_originalOrientation = [(SUSnapshotViewController *)v6 _currentOrientation];
    objc_storeStrong(&v7->_originalViewController, a3);
    v8 = [v5 title];
    [(SUSnapshotViewController *)v7 setTitle:v8];

    v9 = [(SUSnapshotViewController *)v7 navigationItem];
    v10 = [v5 navigationItem];
    v11 = [v10 rightBarButtonItem];
    [v9 setRightBarButtonItem:v11];
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

  v5 = [(SUSnapshotViewController *)self view];
  [v5 addSubview:self->_activityIndicatorView];

  v6 = [(SUSnapshotViewController *)self originalViewController];
  v7 = [v6 view];
  v8 = [(SUSnapshotViewController *)self _snapshotOfView:v7];

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  imageView = self->_imageView;
  self->_imageView = v9;

  v11 = [(SUSnapshotViewController *)self view];
  [v11 setUserInteractionEnabled:0];

  v12 = [(SUSnapshotViewController *)self view];
  [v12 addSubview:self->_imageView];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(SUSnapshotViewController *)self activityIndicatorView];
  v4 = [(SUSnapshotViewController *)self view];
  [v4 center];
  [v3 setCenter:?];

  v5 = [(SUSnapshotViewController *)self imageView];
  v6 = [(UIViewController *)self->_originalViewController view];
  [v6 bounds];
  [v5 setFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v7 viewWillAppear:a3];
  v4 = [(SUSnapshotViewController *)self _currentOrientation];
  if ((v4 - 1) > 1)
  {
    if ((v4 - 3) > 1 || ([(SUSnapshotViewController *)self originalOrientation]- 3) > 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = [(SUSnapshotViewController *)self imageView];
    [v5 setHidden:0];

    [(SUSnapshotViewController *)self _stopActivityIndicator];
    return;
  }

  if (([(SUSnapshotViewController *)self originalOrientation]- 1) < 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = [(SUSnapshotViewController *)self imageView];
  [v6 setHidden:1];

  [(SUSnapshotViewController *)self _startActivityIndicator];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUSnapshotViewController;
  [(SUSnapshotViewController *)&v4 viewDidDisappear:a3];
  [(SUSnapshotViewController *)self _stopActivityIndicator];
}

- (int64_t)_currentOrientation
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 statusBarOrientation];

  return v3;
}

- (id)_snapshotOfView:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v12 scale];
  v14 = v13;
  v18.width = v9;
  v18.height = v11;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v14);

  [v3 drawViewHierarchyInRect:1 afterScreenUpdates:{v5, v7, v9, v11}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (void)_startActivityIndicator
{
  v3 = [(SUSnapshotViewController *)self activityIndicatorView];
  [v3 startAnimating];

  v4 = [(SUSnapshotViewController *)self activityIndicatorView];
  [v4 setHidden:0];
}

- (void)_stopActivityIndicator
{
  v3 = [(SUSnapshotViewController *)self activityIndicatorView];
  [v3 stopAnimating];

  v4 = [(SUSnapshotViewController *)self activityIndicatorView];
  [v4 setHidden:1];
}

@end