@interface PMSafariAutoFillStrongPasswordIntroductionViewController
+ (BOOL)shouldShowICloudKeychainSyncingView;
+ (BOOL)shouldShowStrongPasswordSavedView;
- (CGSize)contentSize;
- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithCoder:(id)coder;
- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PMSafariAutoFillStrongPasswordIntroductionViewControllerDelegate)delegate;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)setMode:(int64_t)mode;
@end

@implementation PMSafariAutoFillStrongPasswordIntroductionViewController

+ (BOOL)shouldShowStrongPasswordSavedView
{
  isPasswordsAppInstalled = [objc_opt_self() isPasswordsAppInstalled];
  if (isPasswordsAppInstalled)
  {
    LOBYTE(isPasswordsAppInstalled) = PMOnboardingHasShownStrongPasswordSavedView() ^ 1;
  }

  return isPasswordsAppInstalled;
}

+ (BOOL)shouldShowICloudKeychainSyncingView
{
  pm_defaults = [objc_opt_self() pm_defaults];
  bOOLForKey_ = [pm_defaults BOOLForKey_];

  if (bOOLForKey_)
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
  selfCopy = self;
  view = [(PMSafariAutoFillStrongPasswordIntroductionViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view intrinsicContentSize];
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

- (void)setMode:(int64_t)mode
{
  selfCopy = self;
  sub_21C995CEC(mode);
}

- (PMSafariAutoFillStrongPasswordIntroductionViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21C995E40();
}

- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PMSafariAutoFillStrongPasswordIntroductionViewController.loadView()();
}

- (PMSafariAutoFillStrongPasswordIntroductionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end