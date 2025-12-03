@interface SXQuickLookPreviewViewController
- (SXQuickLookPreviewViewController)initWithFile:(id)file transitionContext:(id)context;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (void)viewDidLoad;
@end

@implementation SXQuickLookPreviewViewController

- (SXQuickLookPreviewViewController)initWithFile:(id)file transitionContext:(id)context
{
  fileCopy = file;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SXQuickLookPreviewViewController;
  v9 = [(QLPreviewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, file);
    objc_storeStrong(&v10->_transitionContext, context);
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

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  v4 = [(SXQuickLookPreviewViewController *)self transitionContext:controller];
  originView = [v4 originView];

  return originView;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = objc_alloc(MEMORY[0x1E697A0B8]);
  file = [(SXQuickLookPreviewViewController *)self file];
  fileURL = [file fileURL];
  v8 = [v5 initWithFileAtURL:fileURL];

  file2 = [(SXQuickLookPreviewViewController *)self file];
  shareURL = [file2 shareURL];
  [v8 setCanonicalWebPageURL:shareURL];

  return v8;
}

@end