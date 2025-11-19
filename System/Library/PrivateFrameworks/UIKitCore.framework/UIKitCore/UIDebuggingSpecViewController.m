@interface UIDebuggingSpecViewController
- (BOOL)startMediaBrowserFromViewController:(id)a3;
- (CGPoint)origin;
- (UIDebuggingSpecViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)gotDeleteGesture:(id)a3;
- (void)gotPanGesture:(id)a3;
- (void)hideImage;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)prepareForMediaBrowser;
- (void)viewDidLoad;
@end

@implementation UIDebuggingSpecViewController

- (UIDebuggingSpecViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v17.receiver = self;
  v17.super_class = UIDebuggingSpecViewController;
  v4 = [(UIViewController *)&v17 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIViewController *)v4 navigationItem];
    v7 = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:2 target:v5 action:sel_prepareForMediaBrowser];
    [v6 setRightBarButtonItem:v7];
    v8 = [MEMORY[0x1E695DF70] array];
    specImages = v5->_specImages;
    v5->_specImages = v8;

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
  v3 = [(UIViewController *)self view];
  [v3 frame];
  v5 = v4;
  [(UICollectionViewFlowLayout *)self->_flowLayout minimumInteritemSpacing];
  v7 = (v5 + v6 * -4.0) / 3.0;

  [(UICollectionViewFlowLayout *)self->_flowLayout setItemSize:v7, v7];
  v8 = [(UIDebuggingSpecViewController *)self collectionView];
  [v8 setAutoresizingMask:18];

  v9 = [(UIViewController *)self view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UIDebuggingSpecViewController *)self collectionView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(UIViewController *)self view];
  v20 = [(UIDebuggingSpecViewController *)self collectionView];
  [v19 addSubview:v20];

  v21 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_gotDeleteGesture_];
  [(UILongPressGestureRecognizer *)v21 setMinimumPressDuration:0.5];
  v22 = [(UIDebuggingSpecViewController *)self collectionView];
  [v22 addGestureRecognizer:v21];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(UIDebuggingSpecViewController *)self specImages:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"specCell" forIndexPath:v6];
  v8 = [UIImageView alloc];
  v9 = [(UIDebuggingSpecViewController *)self specImages];
  v10 = [v6 row];

  v11 = [v9 objectAtIndexedSubscript:v10];
  v12 = [(UIImageView *)v8 initWithImage:v11];

  [v7 bounds];
  [(UIImageView *)v12 setFrame:?];
  [(UIImageView *)v12 setContentMode:2];
  [(UIView *)v12 setClipsToBounds:1];
  v13 = [v7 contentView];
  [v13 addSubview:v12];

  [(UIView *)v12 setAutoresizingMask:18];

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [UIImageView alloc];
  v7 = [(UIViewController *)self view];
  v8 = [v7 window];
  [v8 frame];
  v26 = [(UIImageView *)v6 initWithFrame:?];

  v9 = [(UIDebuggingSpecViewController *)self specImages];
  v10 = [v5 row];

  v11 = [v9 objectAtIndexedSubscript:v10];
  [(UIImageView *)v26 setImage:v11];

  v12 = [UIView alloc];
  v13 = [(UIViewController *)self view];
  v14 = [v13 window];
  [v14 frame];
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
  v20 = [v19 rootViewController];
  v21 = [v20 view];
  v22 = [(UIDebuggingSpecViewController *)self spec];
  [v21 addSubview:v22];

  v23 = +[UIDebuggingInformationOverlay overlay];
  v24 = [v23 overlayViewController];

  v25 = [v24 containerView];
  [v25 setHidden:1];
}

- (void)gotDeleteGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(UIDebuggingSpecViewController *)self collectionView];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(UIDebuggingSpecViewController *)self collectionView];
    v11 = [v10 indexPathForItemAtPoint:{v7, v9}];

    if (v11)
    {
      v12 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __50__UIDebuggingSpecViewController_gotDeleteGesture___block_invoke;
      v17 = &unk_1E711D8D0;
      v18 = self;
      v19 = v11;
      v13 = [UIAlertAction actionWithTitle:@"Remove" style:2 handler:&v14];
      [v12 addAction:{v13, v14, v15, v16, v17, v18}];
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

- (void)gotPanGesture:(id)a3
{
  v27 = a3;
  if ([v27 state] == 1)
  {
    v4 = [(UIDebuggingSpecViewController *)self spec];
    v5 = [v4 subviews];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 layer];
    [v7 opacity];
    [(UIDebuggingSpecViewController *)self setOriginalOpacity:v8];

    [v27 locationInView:0];
    [(UIDebuggingSpecViewController *)self setOrigin:?];
    goto LABEL_13;
  }

  if ([v27 state] == 2)
  {
    [v27 locationInView:0];
    v10 = v9;
    [(UIDebuggingSpecViewController *)self origin];
    v12 = v10 - v11;
    [(UIDebuggingSpecViewController *)self originalOpacity];
    v14 = v13 + v12 / -200.0;
    if (v12 > 0.0)
    {
      v15 = v14;
      v16 = [(UIDebuggingSpecViewController *)self spec];
      v17 = [v16 subviews];
      v18 = [v17 objectAtIndexedSubscript:0];
      v19 = [v18 layer];
      *&v20 = v15;
      [v19 setOpacity:v20];

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
    v22 = [(UIDebuggingSpecViewController *)self spec];
    v23 = [v22 subviews];
    v24 = [v23 objectAtIndexedSubscript:0];
    v25 = [v24 layer];
    *&v26 = v21;
    [v25 setOpacity:v26];
  }

  else if ([v27 state] == 4 || objc_msgSend(v27, "state") == 5)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (void)hideImage
{
  v3 = [(UIDebuggingSpecViewController *)self spec];
  [v3 removeFromSuperview];

  [(UIDebuggingSpecViewController *)self setSpec:0];
  v4 = +[UIDebuggingInformationOverlay overlay];
  [v4 setTouchCaptureEnabled:0];

  v5 = +[UIDebuggingInformationOverlay overlay];
  v6 = [v5 overlayViewController];
  v7 = [v6 containerView];

  v8 = [v7 layer];
  [v8 setOpacity:0.0];

  [v7 setHidden:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__UIDebuggingSpecViewController_hideImage__block_invoke;
  v10[3] = &unk_1E70F3590;
  v11 = v7;
  v9 = v7;
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

- (BOOL)startMediaBrowserFromViewController:(id)a3
{
  v4 = a3;
  v5 = [UIImagePickerController isSourceTypeAvailable:2];
  if (v5)
  {
    v6 = objc_alloc_init(UIImagePickerController);
    [(UIImagePickerController *)v6 setSourceType:2];
    [(UIImagePickerController *)v6 setAllowsEditing:0];
    [(UINavigationController *)v6 setDelegate:self];
    [v4 presentViewController:v6 animated:1 completion:0];
  }

  return v5;
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v5 = a4;
  v6 = [(UIDebuggingSpecViewController *)self specImages];
  v7 = [v5 objectForKeyedSubscript:@"UIImagePickerControllerOriginalImage"];

  [v6 addObject:v7];
  v8 = [(UIDebuggingSpecViewController *)self collectionView];
  [v8 reloadData];

  [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = +[UIDebuggingInformationOverlay overlay];
  [v9 setTouchCaptureEnabled:0];
}

- (void)imagePickerControllerDidCancel:(id)a3
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