@interface SessionPlatterSeparatorView
- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithCoder:(id)a3;
- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation SessionPlatterSeparatorView

- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9SeymourUI27SessionPlatterSeparatorView_separatorView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.11];
  [v5 setBackgroundColor_];

  *(&self->super.super.super.isa + v4) = v5;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end