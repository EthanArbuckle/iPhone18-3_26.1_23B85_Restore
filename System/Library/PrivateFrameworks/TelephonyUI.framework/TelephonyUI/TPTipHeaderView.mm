@interface TPTipHeaderView
- (_TtC11TelephonyUI15TPTipHeaderView)initWithCoder:(id)a3;
- (_TtC11TelephonyUI15TPTipHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation TPTipHeaderView

- (_TtC11TelephonyUI15TPTipHeaderView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_separatorEdgeInset);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  v3[1] = v4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_bottomSeparatorView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_hostingView) = 0;
  result = sub_1B48E6B64();
  __break(1u);
  return result;
}

- (_TtC11TelephonyUI15TPTipHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end