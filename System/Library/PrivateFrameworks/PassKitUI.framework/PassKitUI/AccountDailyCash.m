@interface AccountDailyCash
- (_TtC9PassKitUI16AccountDailyCash)init;
- (void)transactionsChanged:(id)a3;
@end

@implementation AccountDailyCash

- (void)transactionsChanged:(id)a3
{
  if (a3)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    sub_1BE052744();
  }

  v4 = self;
  sub_1BD599F00();
}

- (_TtC9PassKitUI16AccountDailyCash)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end