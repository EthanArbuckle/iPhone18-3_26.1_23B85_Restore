@interface LoadingViewController
- (LoadingViewController)initWithWebClip:(id)clip orientation:(int64_t)orientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation LoadingViewController

- (LoadingViewController)initWithWebClip:(id)clip orientation:(int64_t)orientation
{
  clipCopy = clip;
  v7 = [(LoadingViewController *)self initWithNibName:0 bundle:0];
  [(LoadingViewController *)v7 setModalPresentationStyle:5];
  [(LoadingViewController *)v7 setModalPresentationCapturesStatusBarAppearance:1];
  [(LoadingViewController *)v7 setModalTransitionStyle:2];
  v7->_orientation = orientation;
  [clipCopy webClipStatusBarStyle];
  v7->_preferredStatusBarStyle = UIStatusBarStyleFromUIWebClipStatusBarStyle();
  v8 = [clipCopy getStartupImage:v7->_orientation];

  if ([v8 sf_isLaunchImageSizedForOrientation:v7->_orientation includesStatusBar:&v7->_imageIsFullScreen])
  {
    objc_storeStrong(&v7->_image, v8);
  }

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self->_orientation - 1;
  if (v2 > 3)
  {
    return 30;
  }

  else
  {
    return qword_272C1B970[v2];
  }
}

- (void)loadView
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 setBackgroundColor:systemBackgroundColor];
  [(LoadingViewController *)self setView:v3];
  if (self->_image)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = self->_imageView;
    self->_imageView = v4;

    [(UIImageView *)self->_imageView setImage:self->_image];
    [v3 addSubview:self->_imageView];
  }

  if (!self->_imageIsFullScreen)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    statusBarView = self->_statusBarView;
    self->_statusBarView = v6;

    if ([(LoadingViewController *)self preferredStatusBarStyle])
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UIView *)self->_statusBarView setBackgroundColor:blackColor];
    }

    else
    {
      [(UIView *)self->_statusBarView setBackgroundColor:systemBackgroundColor];
    }

    [v3 addSubview:self->_statusBarView];
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = LoadingViewController;
  [(LoadingViewController *)&v17 viewDidLayoutSubviews];
  view = [(LoadingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*MEMORY[0x277D76620] statusBarHeightForOrientation:self->_orientation];
  v13 = v12;
  view2 = [(LoadingViewController *)self view];
  [view2 frame];
  v15 = 0.0;
  [(UIView *)self->_statusBarView setFrame:0.0, 0.0, CGRectGetWidth(v18), v13];

  if (self->_imageIsFullScreen)
  {
    v15 = v5;
  }

  else
  {
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    Width = CGRectGetWidth(v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    v11 = CGRectGetHeight(v20) - v13;
    v9 = Width;
    v7 = v13;
  }

  [(UIImageView *)self->_imageView setFrame:v15, v7, v9, v11];
}

@end