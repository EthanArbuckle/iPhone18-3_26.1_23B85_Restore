@interface TransactionList
- (_TtC9PassKitUI15TransactionList)init;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)transactionsChanged:(id)a3;
@end

@implementation TransactionList

- (void)transactionsChanged:(id)a3
{
  sub_1BD0E5E8C(0, &qword_1EBD4AB10);
  sub_1BE052744();
  v4 = self;
  sub_1BD568A84();

  sub_1BD568E5C();
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1BD56AB24(*&a4 & 0x101);
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI15TransactionList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end