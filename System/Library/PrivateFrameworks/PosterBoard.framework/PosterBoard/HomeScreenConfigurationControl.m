@interface HomeScreenConfigurationControl
- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithCoder:(id)a3;
- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPreviewContentView:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation HomeScreenConfigurationControl

- (void)setPreviewContentView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView) = a3;
  v5 = a3;
  v6 = self;
  sub_21B62AC3C(v4);
}

- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset) = 0;
  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21B62B2F8();
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for HomeScreenConfigurationControl();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(HomeScreenConfigurationControl *)&v9 isSelected];
  v8.receiver = v6;
  v8.super_class = v5;
  [(HomeScreenConfigurationControl *)&v8 setSelected:v3];
  sub_21B62B6E8(v7);
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_21B62BAB4(a3);
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_21B62BCA8(a3);
}

- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end