@interface SearchUIPrivacyDetailsViewController
- (SearchUIPrivacyDetailsViewController)init;
- (SearchUIPrivacyDetailsViewController)initWithBundleIdentifier:(id)identifier;
@end

@implementation SearchUIPrivacyDetailsViewController

- (SearchUIPrivacyDetailsViewController)init
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v5 = [SearchUIUtilities bundleIdentifierForApp:22];
  v6 = [bundleIdentifier isEqualToString:v5];

  if (v6)
  {
    v7 = @"com.apple.onboarding.translate";
  }

  else
  {
    v7 = @"com.apple.onboarding.sirisuggestions";
  }

  v8 = [(SearchUIPrivacyDetailsViewController *)self initWithBundleIdentifier:v7];

  return v8;
}

- (SearchUIPrivacyDetailsViewController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getOBPrivacySplashControllerClass_softClass;
  v17 = getOBPrivacySplashControllerClass_softClass;
  if (!getOBPrivacySplashControllerClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getOBPrivacySplashControllerClass_block_invoke;
    v13[3] = &unk_1E85B2928;
    v13[4] = &v14;
    __getOBPrivacySplashControllerClass_block_invoke(v13);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [v5 splashPageWithBundleIdentifier:identifierCopy];
  v12.receiver = self;
  v12.super_class = SearchUIPrivacyDetailsViewController;
  v8 = [(SearchUIPrivacyDetailsViewController *)&v12 initWithRootViewController:v7];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v8 action:sel_dismiss];
    navigationItem = [v7 navigationItem];
    [navigationItem setRightBarButtonItem:v9];

    [(SearchUIPrivacyDetailsViewController *)v8 setModalPresentationStyle:2];
  }

  return v8;
}

@end