@interface NCInternalSettingsButtonView
- (CGSize)sizeThatFits:(CGSize)result;
- (NCInternalSettingsButtonView)initWithCoder:(id)a3;
- (NCInternalSettingsButtonView)initWithFrame:(CGRect)a3;
- (NCInternalSettingsButtonViewDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation NCInternalSettingsButtonView

- (NCInternalSettingsButtonViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NCInternalSettingsButtonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NCInternalSettingsButtonView_isDeviceAuthenticated) = 0;
  *(self + OBJC_IVAR___NCInternalSettingsButtonView_hostingController) = 0;
  v9.receiver = self;
  v9.super_class = NCInternalSettingsButtonView;
  return [(NCInternalSettingsButtonView *)&v9 initWithFrame:x, y, width, height];
}

- (NCInternalSettingsButtonView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NCInternalSettingsButtonView_isDeviceAuthenticated) = 0;
  *(self + OBJC_IVAR___NCInternalSettingsButtonView_hostingController) = 0;
  result = sub_21E92A988();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(self + OBJC_IVAR___NCInternalSettingsButtonView_hostingController);
  if (v3)
  {
    height = result.height;
    width = result.width;
    v6 = self;
    v7 = [v3 view];
    if (v7)
    {
      v8 = v7;
      [v7 sizeThatFits_];
      v10 = v9;
      v12 = v11;

      result.width = v10;
      result.height = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  NCInternalSettingsButtonView.layoutSubviews()();
}

@end