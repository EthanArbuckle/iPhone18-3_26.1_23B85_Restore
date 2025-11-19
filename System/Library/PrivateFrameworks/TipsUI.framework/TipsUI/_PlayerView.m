@interface _PlayerView
+ (Class)layerClass;
- (_TtC6TipsUI11_PlayerView)initWithCoder:(id)a3;
- (_TtC6TipsUI11_PlayerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _PlayerView

- (_TtC6TipsUI11_PlayerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6TipsUI11_PlayerView_player) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for _PlayerView();
  return [(_PlayerView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC6TipsUI11_PlayerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_220B5EE34();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _PlayerView();
  v2 = v4.receiver;
  [(_PlayerView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setBounds_];
}

@end