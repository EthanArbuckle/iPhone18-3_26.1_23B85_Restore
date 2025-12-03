@interface _UIContextMenuActionsOnlyViewController
- (CGSize)preferredContentSize;
- (_UIContextMenuActionsOnlyViewController)initWithTargetedPreview:(id)preview;
- (void)viewDidLoad;
@end

@implementation _UIContextMenuActionsOnlyViewController

- (_UIContextMenuActionsOnlyViewController)initWithTargetedPreview:(id)preview
{
  previewCopy = preview;
  v8.receiver = self;
  v8.super_class = _UIContextMenuActionsOnlyViewController;
  v5 = [(UIViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuActionsOnlyViewController *)v5 setSourcePreview:previewCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _UIContextMenuActionsOnlyViewController;
  [(UIViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];
}

- (CGSize)preferredContentSize
{
  sourcePreview = [(_UIContextMenuActionsOnlyViewController *)self sourcePreview];
  target = [sourcePreview target];

  memset(&v17[1], 0, sizeof(CGAffineTransform));
  if (target)
  {
    [target transform];
  }

  memset(v17, 0, 48);
  container = [target container];
  container2 = [target container];
  window = [container2 window];
  _UIGetTransformBetweenViews(container, window, 1, v17);

  t1 = v17[1];
  memset(&v16, 0, sizeof(v16));
  t2 = v17[0];
  CGAffineTransformConcat(&v16, &t1, &t2);
  t2 = v16;
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformDecompose(&t1, &t2);
  CGAffineTransformMakeScale(&t2, t1.a, t1.b);
  v16 = t2;
  sourcePreview2 = [(_UIContextMenuActionsOnlyViewController *)self sourcePreview];
  [sourcePreview2 size];
  v13 = vaddq_f64(vmulq_n_f64(*&v16.a, v9), vmulq_n_f64(*&v16.c, v10));

  v12 = v13.f64[1];
  v11 = v13.f64[0];
  result.height = v12;
  result.width = v11;
  return result;
}

@end