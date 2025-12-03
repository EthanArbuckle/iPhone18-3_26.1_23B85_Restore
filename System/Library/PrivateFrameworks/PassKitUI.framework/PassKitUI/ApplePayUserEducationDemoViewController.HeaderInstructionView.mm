@interface ApplePayUserEducationDemoViewController.HeaderInstructionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView)initWithCoder:(id)coder;
- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ApplePayUserEducationDemoViewController.HeaderInstructionView

- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ApplePayUserEducationDemoViewController.HeaderInstructionView();
  v2 = v7.receiver;
  [(ApplePayUserEducationDemoViewController.HeaderInstructionView *)&v7 layoutSubviews];
  [v2 bounds];
  sub_1BD565D58(0, v3, v4, v5, v6);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1BD565D58(1, 0.0, 0.0, width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end