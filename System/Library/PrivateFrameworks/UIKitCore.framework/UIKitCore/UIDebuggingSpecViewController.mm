@interface UIDebuggingSpecViewController
- (BOOL)startMediaBrowserFromViewController:(id)controller;
- (CGPoint)origin;
- (UIDebuggingSpecViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)gotDeleteGesture:(id)gesture;
- (void)gotPanGesture:(id)gesture;
- (void)hideImage;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)prepareForMediaBrowser;
- (void)viewDidLoad;
@end

@implementation UIDebuggingSpecViewController

- (UIDebuggingSpecViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v17.receiver = self;
  v17.super_class = UIDebuggingSpecViewController;
  v4 = [(UIViewController *)&v17 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    navigationItem = [(UIViewController *)v4 navigationItem];
    v7 = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:2 target:v5 action:sel_prepareForMediaBrowser];
    [navigationItem setRightBarButtonItem:v7];
    array = [MEMORY[0x1E695DF70] array];
    specImages = v5->_specImages;
    v5->_specImages = array;

    v10 = objc_alloc_init(UICollectionViewFlowLayout);
    flowLayout = v5->_flowLayout;
    v5->_flowLayout = v10;

    [(UICollectionViewFlowLayout *)v5->_flowLayout setItemSize:50.0, 50.0];
    v12 = [UICollectionView alloc];
    v13 = [(UICollectionView *)v12 initWithFrame:v5->_flowLayout collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    collectionView = v5->_collectionView;
    v5->_collectionView = v13;

    [(UICollectionView *)v5->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"specCell"];
    v15 = +[UIColor whiteColor];
    [(UICollectionView *)v5->_collectionView setBackgroundColor:v15];

    [(UICollectionView *)v5->_collectionView setDataSource:v5];
    [(UICollectionView *)v5->_collectionView setDelegate:v5];
  }

  return v5;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = UIDebuggingSpecViewController;
  [(UIViewController *)&v23 viewDidLoad];
  view = [(UIViewController *)self view];
  [view frame];
  v5 = v4;
  [(UICollectionViewFlowLayout *)self->_flowLayout minimumInteritemSpacing];
  v7 = (v5 + v6 * -4.0) / 3.0;

  [(UICollectionViewFlowLayout *)self->_flowLayout setItemSize:v7, v7];
  collectionView = [(UIDebuggingSpecViewController *)self collectionView];
  [collectionView setAutoresizingMask:18];

  view2 = [(UIViewController *)self view];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  collectionView2 = [(UIDebuggingSpecViewController *)self collectionView];
  [collectionView2 setFrame:{v11, v13, v15, v17}];

  view3 = [(UIViewController *)self view];
  collectionView3 = [(UIDebuggingSpecViewController *)self collectionView];
  [view3 addSubview:collectionView3];

  v21 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_gotDeleteGesture_];
  [(UILongPressGestureRecognizer *)v21 setMinimumPressDuration:0.5];
  collectionView4 = [(UIDebuggingSpecViewController *)self collectionView];
  [collectionView4 addGestureRecognizer:v21];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(UIDebuggingSpecViewController *)self specImages:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"specCell" forIndexPath:pathCopy];
  v8 = [UIImageView alloc];
  specImages = [(UIDebuggingSpecViewController *)self specImages];
  v10 = [pathCopy row];

  v11 = [specImages objectAtIndexedSubscript:v10];
  v12 = [(UIImageView *)v8 initWithImage:v11];

  [v7 bounds];
  [(UIImageView *)v12 setFrame:?];
  [(UIImageView *)v12 setContentMode:2];
  [(UIView *)v12 setClipsToBounds:1];
  contentView = [v7 contentView];
  [contentView addSubview:v12];

  [(UIView *)v12 setAutoresizingMask:18];

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [UIImageView alloc];
  view = [(UIViewController *)self view];
  window = [view window];
  [window frame];
  v26 = [(UIImageView *)v6 initWithFrame:?];

  specImages = [(UIDebuggingSpecViewController *)self specImages];
  v10 = [pathCopy row];

  v11 = [specImages objectAtIndexedSubscript:v10];
  [(UIImageView *)v26 setImage:v11];

  v12 = [UIView alloc];
  view2 = [(UIViewController *)self view];
  window2 = [view2 window];
  [window2 frame];
  v15 = [(UIView *)v12 initWithFrame:?];

  [(UIView *)v15 addSubview:v26];
  v16 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_gotPanGesture_];
  [(UIView *)v15 addGestureRecognizer:v16];
  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_hideImage];
  [(UITapGestureRecognizer *)v17 setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)v17 setNumberOfTapsRequired:2];
  [(UIView *)v15 addGestureRecognizer:v17];
  [(UIDebuggingSpecViewController *)self setSpec:v15];
  v18 = +[UIDebuggingInformationOverlay overlay];
  [v18 setTouchCaptureEnabled:1];

  v19 = +[UIDebuggingInformationOverlay overlay];
  rootViewController = [v19 rootViewController];
  view3 = [rootViewController view];
  spec = [(UIDebuggingSpecViewController *)self spec];
  [view3 addSubview:spec];

  v23 = +[UIDebuggingInformationOverlay overlay];
  overlayViewController = [v23 overlayViewController];

  containerView = [overlayViewController containerView];
  [containerView setHidden:1];
}

- (void)gotDeleteGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    collectionView = [(UIDebuggingSpecViewController *)self collectionView];
    [gestureCopy locationInView:collectionView];
    v7 = v6;
    v9 = v8;

    collectionView2 = [(UIDebuggingSpecViewController *)self collectionView];
    v11 = [collectionView2 indexPathForItemAtPoint:{v7, v9}];

    if (v11)
    {
      v12 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __50__UIDebuggingSpecViewController_gotDeleteGesture___block_invoke;
      v17 = &unk_1E711D8D0;
      selfCopy = self;
      v19 = v11;
      v13 = [UIAlertAction actionWithTitle:@"Remove" style:2 handler:&v14];
      [v12 addAction:{v13, v14, v15, v16, v17, selfCopy}];
      [(UIViewController *)self presentViewController:v12 animated:1 completion:0];
    }
  }
}

void __50__UIDebuggingSpecViewController_gotDeleteGesture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specImages];
  [v2 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];

  v3 = [*(a1 + 32) collectionView];
  [v3 reloadData];
}

- (void)gotPanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    spec = [(UIDebuggingSpecViewController *)self spec];
    subviews = [spec subviews];
    v6 = [subviews objectAtIndexedSubscript:0];
    layer = [v6 layer];
    [layer opacity];
    [(UIDebuggingSpecViewController *)self setOriginalOpacity:v8];

    [gestureCopy locationInView:0];
    [(UIDebuggingSpecViewController *)self setOrigin:?];
    goto LABEL_13;
  }

  if ([gestureCopy state] == 2)
  {
    [gestureCopy locationInView:0];
    v10 = v9;
    [(UIDebuggingSpecViewController *)self origin];
    v12 = v10 - v11;
    [(UIDebuggingSpecViewController *)self originalOpacity];
    v14 = v13 + v12 / -200.0;
    if (v12 > 0.0)
    {
      v15 = v14;
      spec2 = [(UIDebuggingSpecViewController *)self spec];
      subviews2 = [spec2 subviews];
      v18 = [subviews2 objectAtIndexedSubscript:0];
      layer2 = [v18 layer];
      *&v20 = v15;
      [layer2 setOpacity:v20];

      if (v12 <= 250.0)
      {
        goto LABEL_13;
      }

LABEL_9:
      [(UIDebuggingSpecViewController *)self hideImage];
      goto LABEL_13;
    }

    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    v21 = v14;
    spec3 = [(UIDebuggingSpecViewController *)self spec];
    subviews3 = [spec3 subviews];
    v24 = [subviews3 objectAtIndexedSubscript:0];
    layer3 = [v24 layer];
    *&v26 = v21;
    [layer3 setOpacity:v26];
  }

  else if ([gestureCopy state] == 4 || objc_msgSend(gestureCopy, "state") == 5)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (void)hideImage
{
  spec = [(UIDebuggingSpecViewController *)self spec];
  [spec removeFromSuperview];

  [(UIDebuggingSpecViewController *)self setSpec:0];
  v4 = +[UIDebuggingInformationOverlay overlay];
  [v4 setTouchCaptureEnabled:0];

  v5 = +[UIDebuggingInformationOverlay overlay];
  overlayViewController = [v5 overlayViewController];
  containerView = [overlayViewController containerView];

  layer = [containerView layer];
  [layer setOpacity:0.0];

  [containerView setHidden:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__UIDebuggingSpecViewController_hideImage__block_invoke;
  v10[3] = &unk_1E70F3590;
  v11 = containerView;
  v9 = containerView;
  [UIView animateWithDuration:v10 animations:0.2];
}

void __42__UIDebuggingSpecViewController_hideImage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

- (void)prepareForMediaBrowser
{
  v3 = +[UIDebuggingInformationOverlay overlay];
  [v3 setTouchCaptureEnabled:1];

  [(UIDebuggingSpecViewController *)self startMediaBrowserFromViewController:self];
}

- (BOOL)startMediaBrowserFromViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [UIImagePickerController isSourceTypeAvailable:2];
  if (v5)
  {
    v6 = objc_alloc_init(UIImagePickerController);
    [(UIImagePickerController *)v6 setSourceType:2];
    [(UIImagePickerController *)v6 setAllowsEditing:0];
    [(UINavigationController *)v6 setDelegate:self];
    [controllerCopy presentViewController:v6 animated:1 completion:0];
  }

  return v5;
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  specImages = [(UIDebuggingSpecViewController *)self specImages];
  v7 = [infoCopy objectForKeyedSubscript:@"UIImagePickerControllerOriginalImage"];

  [specImages addObject:v7];
  collectionView = [(UIDebuggingSpecViewController *)self collectionView];
  [collectionView reloadData];

  [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = +[UIDebuggingInformationOverlay overlay];
  [v9 setTouchCaptureEnabled:0];
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = +[UIDebuggingInformationOverlay overlay];
  [v3 setTouchCaptureEnabled:0];
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end