@interface PMSafariAutoFillStrongPasswordIntroductionViewController
+ (BOOL)shouldShowICloudKeychainSyncingView;
+ (BOOL)shouldShowStrongPasswordSavedView;
- (CGSize)contentSize;
- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithCoder:(id)a3;
- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PMSafariAutoFillStrongPasswordIntroductionViewControllerDelegate)delegate;
- (void)loadView;
- (void)setDelegate:(id)a3;
- (void)setMode:(int64_t)a3;
@end

@implementation PMSafariAutoFillStrongPasswordIntroductionViewController

+ (BOOL)shouldShowStrongPasswordSavedView
{
  v2 = [objc_opt_self() isPasswordsAppInstalled];
  if (v2)
  {
    LOBYTE(v2) = PMOnboardingHasShownStrongPasswordSavedView() ^ 1;
  }

  return v2;
}

+ (BOOL)shouldShowICloudKeychainSyncingView
{
  v2 = [objc_opt_self() pm_defaults];
  v3 = [v2 BOOLForKey_];

  if (v3)
  {
    return 0;
  }

  else
  {
    return PMOnboardingIsICloudKeychainSyncingEnabled() ^ 1;
  }
}

- (CGSize)contentSize
{
  v2 = self;
  v3 = [(PMSafariAutoFillStrongPasswordIntroductionViewController *)v2 view];
  if (v3)
  {
    v6 = v3;
    [v3 intrinsicContentSize];
    v8 = v7;
    v10 = v9;

    v4 = v8;
    v5 = v10;
  }

  else
  {
    __break(1u);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setMode:(int64_t)a3
{
  v4 = self;
  sub_21C995CEC(a3);
}

- (PMSafariAutoFillStrongPasswordIntroductionViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21C995E40();
}

- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  PMSafariAutoFillStrongPasswordIntroductionViewController.loadView()();
}

- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end