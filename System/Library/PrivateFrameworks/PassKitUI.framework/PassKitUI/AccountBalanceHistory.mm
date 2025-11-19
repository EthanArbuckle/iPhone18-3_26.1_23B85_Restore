@interface AccountBalanceHistory
- (_TtC9PassKitUI21AccountBalanceHistory)init;
- (void)accountChanged:(id)a3;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
@end

@implementation AccountBalanceHistory

- (void)accountChanged:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD0E3720(a3);
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1BD0E5EE4(*&a4 & 0x101);
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI21AccountBalanceHistory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end