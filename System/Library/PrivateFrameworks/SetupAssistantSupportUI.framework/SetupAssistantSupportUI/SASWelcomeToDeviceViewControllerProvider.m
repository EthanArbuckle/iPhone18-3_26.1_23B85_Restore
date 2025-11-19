@interface SASWelcomeToDeviceViewControllerProvider
- (SASWelcomeToDeviceViewControllerProvider)init;
- (SASWelcomeToDeviceViewControllerProvider)initWithText:(id)a3 finalTextColor:(id)a4 onAnimationCompleteHandler:(id)a5;
- (UIViewController)viewController;
- (void)setViewController:(id)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation SASWelcomeToDeviceViewControllerProvider

- (UIViewController)viewController
{
  v3 = OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setViewController:(id)a3
{
  v5 = OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (SASWelcomeToDeviceViewControllerProvider)initWithText:(id)a3 finalTextColor:(id)a4 onAnimationCompleteHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_265AA7570();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v6 = sub_265A66BB8;
  }

  else
  {
    v10 = 0;
  }

  v11 = a4;
  v12 = sub_265A66994(v7, v9, v11, v6, v10);
  sub_265A56D6C(v6);

  return v12;
}

- (void)startAnimation
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewModel) + 664);
  v3 = self;
  v2();
}

- (void)stopAnimation
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewModel) + 696);
  v3 = self;
  v2();
}

- (SASWelcomeToDeviceViewControllerProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end