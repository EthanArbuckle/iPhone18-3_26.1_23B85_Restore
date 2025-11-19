@interface HighlightsOverlayView
- (NSArray)automationElements;
- (_TtC22UserNotificationsUIKit21HighlightsOverlayView)initWithFrame:(CGRect)a3;
- (void)backlightChanged;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation HighlightsOverlayView

- (void)didMoveToWindow
{
  v2 = self;
  sub_21E8DD21C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21E8DD5FC();
}

- (void)backlightChanged
{
  v4 = self;
  v2 = [(HighlightsOverlayView *)v4 traitCollection];
  v3 = [v2 _backlightLuminance];

  *(&v4->super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectDisabledForAOD) = v3 != 2;
  sub_21E8DDBD8();
}

- (_TtC22UserNotificationsUIKit21HighlightsOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)automationElements
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7580);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E948170;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backgroundContainer);
  v5 = sub_21E796644(0, &qword_280D03C48);
  *(v3 + 56) = v5;
  *(v3 + 32) = v4;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView);
  v7 = sub_21E92A6E8();
  *(v3 + 64) = v6;
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer);
  *(v3 + 120) = v5;
  *(v3 + 88) = v7;
  *(v3 + 96) = v8;
  v9 = v4;
  v10 = v6;
  v11 = v8;
  v12 = sub_21E92A518();

  return v12;
}

@end