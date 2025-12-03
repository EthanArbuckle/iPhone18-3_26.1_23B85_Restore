@interface SessionPlatterSeparatorView
- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithCoder:(id)coder;
- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SessionPlatterSeparatorView

- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI27SessionPlatterSeparatorView_separatorView;
  initWithFrame_ = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.11];
  [initWithFrame_ setBackgroundColor_];

  *(&self->super.super.super.isa + v4) = initWithFrame_;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SessionPlatterSeparatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end