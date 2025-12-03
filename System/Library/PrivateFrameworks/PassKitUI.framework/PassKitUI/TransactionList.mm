@interface TransactionList
- (_TtC9PassKitUI15TransactionList)init;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
- (void)transactionsChanged:(id)changed;
@end

@implementation TransactionList

- (void)transactionsChanged:(id)changed
{
  sub_1BD0E5E8C(0, &qword_1EBD4AB10);
  sub_1BE052744();
  selfCopy = self;
  sub_1BD568A84();

  sub_1BD568E5C();
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD56AB24(*&state & 0x101);
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI15TransactionList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end