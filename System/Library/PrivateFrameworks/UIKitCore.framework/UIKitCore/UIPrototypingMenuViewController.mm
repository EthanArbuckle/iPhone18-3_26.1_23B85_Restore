@interface UIPrototypingMenuViewController
@end

@implementation UIPrototypingMenuViewController

void __51___UIPrototypingMenuViewController__resetSettings___block_invoke(uint64_t a1)
{
  v2 = +[_UIPrototypingSettingsManager sharedManager];
  [v2 deleteAllStoredSettings];

  v3 = *(a1 + 32);
  v4 = *(v3 + 992);
  *(v3 + 992) = 0;

  v5 = [*(a1 + 32) tableView];
  [v5 reloadData];
}

@end