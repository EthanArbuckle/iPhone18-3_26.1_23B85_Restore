@interface SXQuickLookPreviewViewController
- (SXQuickLookPreviewViewController)initWithFile:(id)a3 transitionContext:(id)a4;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (void)viewDidLoad;
@end

@implementation SXQuickLookPreviewViewController

- (SXQuickLookPreviewViewController)initWithFile:(id)a3 transitionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXQuickLookPreviewViewController;
  v9 = [(QLPreviewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, a3);
    objc_storeStrong(&v10->_transitionContext, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SXQuickLookPreviewViewController;
  [(QLPreviewController *)&v3 viewDidLoad];
  [(QLPreviewController *)self setDelegate:self];
  [(QLPreviewController *)self setDataSource:self];
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  v4 = [(SXQuickLookPreviewViewController *)self transitionContext:a3];
  v5 = [v4 originView];

  return v5;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = objc_alloc(MEMORY[0x1E697A0B8]);
  v6 = [(SXQuickLookPreviewViewController *)self file];
  v7 = [v6 fileURL];
  v8 = [v5 initWithFileAtURL:v7];

  v9 = [(SXQuickLookPreviewViewController *)self file];
  v10 = [v9 shareURL];
  [v8 setCanonicalWebPageURL:v10];

  return v8;
}

@end