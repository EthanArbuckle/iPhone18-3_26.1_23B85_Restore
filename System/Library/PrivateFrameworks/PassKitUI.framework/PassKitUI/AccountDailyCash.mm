@interface AccountDailyCash
- (_TtC9PassKitUI16AccountDailyCash)init;
- (void)transactionsChanged:(id)changed;
@end

@implementation AccountDailyCash

- (void)transactionsChanged:(id)changed
{
  if (changed)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    sub_1BE052744();
  }

  selfCopy = self;
  sub_1BD599F00();
}

- (_TtC9PassKitUI16AccountDailyCash)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end