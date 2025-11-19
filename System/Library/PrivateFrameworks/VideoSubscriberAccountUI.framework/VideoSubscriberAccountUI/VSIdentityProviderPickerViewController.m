@interface VSIdentityProviderPickerViewController
@end

@implementation VSIdentityProviderPickerViewController

void __60__VSIdentityProviderPickerViewController_iOS_initWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 fontCenter];
  v3 = [v2 traitCollection];

  [v4 setTraitCollection:v3];
}

uint64_t __89__VSIdentityProviderPickerViewController_iOS_dismissSearchControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 selectedIdentityProvider];
  [v2 _performSelectionForIdentityProvider:v3];

  [*(a1 + 32) setSelectedIdentityProvider:0];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __57__VSIdentityProviderPickerViewController_iOS_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"\n\n"];
  }

  [*(a1 + 32) appendString:v5];
}

void __79__VSIdentityProviderPickerViewController_iOS_handleSignInActionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBarDelegate];
  [v2 clearText];

  [*(a1 + 32) setAdditionalProvidersMode:5];
  v3 = [*(a1 + 32) tableView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__VSIdentityProviderPickerViewController_iOS_handleSignInActionWithCompletion___block_invoke_2;
  v4[3] = &unk_279E19698;
  v5 = *(a1 + 40);
  [v3 vs_scrollToTopAnimated:1 completion:v4];
}

@end