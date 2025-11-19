@interface VUISplitViewController
- (void)viewDidLoad;
@end

@implementation VUISplitViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = VUISplitViewController;
  [(VUISplitViewController *)&v6 viewDidLoad];
  v3 = objc_opt_new();
  [(VUISplitViewController *)self setViewController:v3 forColumn:0];

  v4 = objc_opt_new();
  [(VUISplitViewController *)self setViewController:v4 forColumn:2];

  v5 = objc_opt_new();
  [(VUISplitViewController *)self setViewController:v5 forColumn:3];

  [(VUISplitViewController *)self setPreferredDisplayMode:1];
  [(VUISplitViewController *)self setDisplayModeButtonVisibility:1];
}

@end