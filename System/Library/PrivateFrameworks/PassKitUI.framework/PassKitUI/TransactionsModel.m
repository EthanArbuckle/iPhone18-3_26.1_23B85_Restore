@interface TransactionsModel
- (_TtC9PassKitUI17TransactionsModel)init;
- (void)accountDidUpdate;
- (void)passSettingsDidChangeWithNotification:(id)a3;
- (void)transactionsChanged:(id)a3;
@end

@implementation TransactionsModel

- (void)transactionsChanged:(id)a3
{
  if (a3)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v7.value._rawValue = v4;
  TransactionsModel.transactionsChanged(_:)(v7);
}

- (void)accountDidUpdate
{
  v2 = self;
  sub_1BD96A114();
}

- (void)passSettingsDidChangeWithNotification:(id)a3
{
  v4 = sub_1BE04A2E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  v9 = self;
  sub_1BD96A684();

  (*(v5 + 8))(v8, v4);
}

- (_TtC9PassKitUI17TransactionsModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end