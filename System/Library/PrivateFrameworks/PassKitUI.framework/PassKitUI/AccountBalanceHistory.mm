@interface AccountBalanceHistory
- (_TtC9PassKitUI21AccountBalanceHistory)init;
- (void)accountChanged:(id)changed;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
@end

@implementation AccountBalanceHistory

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BD0E3720(changed);
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD0E5EE4(*&state & 0x101);
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI21AccountBalanceHistory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end