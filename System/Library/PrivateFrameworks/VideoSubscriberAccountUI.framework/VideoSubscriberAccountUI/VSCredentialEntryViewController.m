@interface VSCredentialEntryViewController
@end

@implementation VSCredentialEntryViewController

void __62__VSCredentialEntryViewController_iOS_initWithNibName_bundle___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v7 object];
    v5 = [v4 text];
    v6 = [WeakRetained _specifierForTextField:v4];
    if (v6)
    {
      [WeakRetained _setText:v5 forSpecifier:v6];
    }
  }
}

void __62__VSCredentialEntryViewController_iOS_initWithNibName_bundle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v6 = v2;
  v5 = [v6 viewModel];
  [v6 preferredLogoSize];
  [v6 vs_updateViewModel:v5 withUserInterfaceStyle:v4 andPreferredLogoSize:?];
}

void __86__VSCredentialEntryViewController_iOS_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pickerButtonSpecifier];
  v3 = [*(a1 + 32) pickerTitle];
  [v2 setName:v3];

  v4 = *(a1 + 32);
  v5 = [v4 pickerButtonSpecifier];
  [v4 reloadSpecifier:v5];

  v6 = *(a1 + 32);
  v7 = [v6 pickerSpecifier];
  [v6 reloadSpecifier:v7];
}

@end