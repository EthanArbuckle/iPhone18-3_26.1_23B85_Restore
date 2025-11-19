@interface CustomSizeMeasurer
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewServiceP33_D29EB792D2B5D2C81136FF4F45BEA45D18CustomSizeMeasurer)init;
@end

@implementation CustomSizeMeasurer

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_100007B0C(v10, width, height);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewServiceP33_D29EB792D2B5D2C81136FF4F45BEA45D18CustomSizeMeasurer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end