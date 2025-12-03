@interface NCInternalSettingsButtonView
- (CGSize)sizeThatFits:(CGSize)result;
- (NCInternalSettingsButtonView)initWithCoder:(id)coder;
- (NCInternalSettingsButtonView)initWithFrame:(CGRect)frame;
- (NCInternalSettingsButtonViewDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation NCInternalSettingsButtonView

- (NCInternalSettingsButtonViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NCInternalSettingsButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NCInternalSettingsButtonView_isDeviceAuthenticated) = 0;
  *(self + OBJC_IVAR___NCInternalSettingsButtonView_hostingController) = 0;
  v9.receiver = self;
  v9.super_class = NCInternalSettingsButtonView;
  return [(NCInternalSettingsButtonView *)&v9 initWithFrame:x, y, width, height];
}

- (NCInternalSettingsButtonView)initWithCoder:(id)coder
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
    selfCopy = self;
    view = [v3 view];
    if (view)
    {
      v8 = view;
      [view sizeThatFits_];
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
  selfCopy = self;
  NCInternalSettingsButtonView.layoutSubviews()();
}

@end