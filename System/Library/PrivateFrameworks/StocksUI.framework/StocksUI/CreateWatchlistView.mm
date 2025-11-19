@interface CreateWatchlistView
- (_TtC8StocksUI19CreateWatchlistView)initWithCoder:(id)a3;
@end

@implementation CreateWatchlistView

- (_TtC8StocksUI19CreateWatchlistView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_onTap;
  sub_22049D9F4();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_newWatchlistButton;
  *(&self->super.super.super.isa + v6) = [objc_opt_self() buttonWithType_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end