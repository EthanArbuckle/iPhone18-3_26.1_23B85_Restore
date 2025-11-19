@interface ApplePayUserEducationDemoViewController.SpringBoardBlurView
- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView)initWithCoder:(id)a3;
- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ApplePayUserEducationDemoViewController.SpringBoardBlurView

- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel) = 0;
  v4 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_wallpaperView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(PKBackdropView) init];
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ApplePayUserEducationDemoViewController.SpringBoardBlurView();
  v2 = v5.receiver;
  [(ApplePayUserEducationDemoViewController.SpringBoardBlurView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_wallpaperView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView];
  [v2 bounds];
  [v4 setFrame_];
}

- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end