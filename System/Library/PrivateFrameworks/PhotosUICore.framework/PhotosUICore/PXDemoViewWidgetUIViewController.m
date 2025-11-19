@interface PXDemoViewWidgetUIViewController
- (PXDemoViewWidgetUIViewController)init;
- (void)viewDidLoad;
@end

@implementation PXDemoViewWidgetUIViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PXDemoViewWidgetUIViewController;
  [(PXDemoViewWidgetUIViewController *)&v6 viewDidLoad];
  v3 = [(PXDemoViewWidgetUIViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] purpleColor];
  [v3 setBackgroundColor:v4];

  [(UIViewController *)self px_enableBarAppearance];
  v5 = [(UIViewController *)self px_barAppearance];
  [v5 performChangesWithAnimationOptions:0 changes:&__block_literal_global_163794];
}

void __47__PXDemoViewWidgetUIViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPrefersStatusBarVisible:1];
  [v2 setPrefersNavigationBarVisible:1];
  [v2 setPrefersToolbarVisible:0];
  [v2 setPrefersTabBarVisible:0];
}

- (PXDemoViewWidgetUIViewController)init
{
  v3.receiver = self;
  v3.super_class = PXDemoViewWidgetUIViewController;
  return [(PXDemoViewWidgetUIViewController *)&v3 init];
}

@end