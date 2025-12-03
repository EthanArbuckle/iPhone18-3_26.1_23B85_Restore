@interface TTRStepViewController
- (_TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleBack;
@end

@implementation TTRStepViewController

- (void)handleBack
{
  selfCopy = self;
  navigationController = [(TTRStepViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (_TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end