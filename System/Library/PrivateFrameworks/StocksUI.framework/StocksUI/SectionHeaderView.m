@interface SectionHeaderView
- (_TtC8StocksUI17SectionHeaderView)initWithCoder:(id)a3;
@end

@implementation SectionHeaderView

- (_TtC8StocksUI17SectionHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8StocksUI17SectionHeaderView_backgroundView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI17SectionHeaderView_titleLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end