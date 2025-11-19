@interface MastheadView
- (_TtC8StocksUI12MastheadView)initWithCoder:(id)a3;
@end

@implementation MastheadView

- (_TtC8StocksUI12MastheadView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI12MastheadView_dateLabel;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end