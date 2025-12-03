@interface AirplayAndSettingsControlsView
- (_TtC9SeymourUI30AirplayAndSettingsControlsView)initWithCoder:(id)coder;
- (_TtC9SeymourUI30AirplayAndSettingsControlsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AirplayAndSettingsControlsView

- (_TtC9SeymourUI30AirplayAndSettingsControlsView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings);
  *v4 = 0;
  v4[1] = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AirplayAndSettingsControlsView();
  v2 = v4.receiver;
  [(AirplayAndSettingsControlsView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (_TtC9SeymourUI30AirplayAndSettingsControlsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end