@interface UINoDefinitionViewController
@end

@implementation UINoDefinitionViewController

void __44___UINoDefinitionViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained navigationController];
    v3 = [[_UIRemoteDictionaryViewController alloc] initWithStyle:0];
    [v2 pushViewController:v3 animated:1];

    WeakRetained = v4;
  }
}

@end