@interface UIFindNavigatorViewController
@end

@implementation UIFindNavigatorViewController

id __45___UIFindNavigatorViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1080) parentInteraction];
  v3 = [v2 optionsMenuProvider];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 1080) parentInteraction];
    v5 = [v4 optionsMenuProvider];
    v6 = [*(*(a1 + 32) + 1040) suggestedFindMenuItems];
    v7 = (v5)[2](v5, v6);
  }

  else
  {
    v4 = [*(*(a1 + 32) + 1040) suggestedFindMenuItems];
    v7 = [UIMenu menuWithChildren:v4];
  }

  return v7;
}

@end