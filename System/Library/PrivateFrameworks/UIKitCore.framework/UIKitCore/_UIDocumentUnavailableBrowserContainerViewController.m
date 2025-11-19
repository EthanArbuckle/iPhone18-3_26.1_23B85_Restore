@interface _UIDocumentUnavailableBrowserContainerViewController
- (_UIDocumentUnavailableBrowserContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation _UIDocumentUnavailableBrowserContainerViewController

- (_UIDocumentUnavailableBrowserContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIDocumentUnavailableBrowserContainerViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(UIViewController *)v4 setDefinesPresentationContext:1];
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc_init(_UITouchPassthroughView);
  [(UIViewController *)self setView:v3];
}

@end